# -*- coding: utf-8 -*-
"""
Created on Wed Dec  1 11:39:19 2021

@author: OWP
"""

#%%

import os
import numpy as np
import h5py
import datetime

from ypstruct import *

from .cable import *
from .tower import *

import putools

# from ..fem_corot.NonLinearSolver import *
# from ..fem_corot.ProcessModel import *
# from ..fem_corot.Assembly import *
# from ..fem_corot.Corot import *

from abaqustools import odbexport
from abaqustools import abq


def estimatepullbackforce(tower,geo,abaqus):

#%%  Function to run pullback of towers to estimate the force neccessary to reach the desired dx

    # Simulations are non-linear so this is just an approximation
    # One can always check the final abaqus model

#%%  Estimate approx pullback force based on cantilever model, tapered cross section

    L_num=geo.z_tower_top_south-geo.z_tower_base_south
    E_num=tower.cs.E;
    
    h_base=np.interp(geo.z_tower_base_south,tower.cs.z_vec,tower.cs.h_vec)
    b_base=np.interp(geo.z_tower_base_south,tower.cs.z_vec,tower.cs.b_vec)
    t_base=np.interp(geo.z_tower_base_south,tower.cs.z_vec,tower.cs.t_vec)
    
    h_top=np.interp(geo.z_tower_top_south,tower.cs.z_vec,tower.cs.h_vec)
    b_top=np.interp(geo.z_tower_top_south,tower.cs.z_vec,tower.cs.b_vec)
    t_top=np.interp(geo.z_tower_top_south,tower.cs.z_vec,tower.cs.t_vec)
    
    I_base=1/12*(h_base**3*b_base-(h_base-2*t_base)**3*(b_base-2*t_base))
    
    I_top=1/12*(h_top**3*b_top-(h_top-2*t_top)**3*(b_top-2*t_top))
    
    if np.abs(I_base/I_top-1)<1e-3:
        I_base=1.001*I_top
        
    K_est=K_cantilever(L_num,I_base,I_top,E_num)

    delta=abs(geo.dx_pullback_south)
    F=delta*K_est

    #%%  Assume 30% reduction due to nonlinear effects (not sure why?)

    UnitLoadSouth=-F*0.7
    UnitLoadNorth=F*0.7

    #%%  Abaqus info
    
    c=datetime.datetime.now().isoformat()
    c=c[:-7]
    c=c.replace(':','_')
    
    foldername_export=abaqus.foldername_export
    abaqus=struct()
    
    abaqus.foldername='C:\\Temp'
    abaqus.inputname='SB_TempJob_' + c
    abaqus.jobname=abaqus.inputname
    abaqus.partname='PartTower'
    abaqus.assemblyname='AssemblyTower'
    abaqus.runjob=True
    abaqus.cmd='abaqus'
    abaqus.cpus=np.array(4)
    abaqus.restart=False
    abaqus.halt_error=True
    abaqus.foldername_export=foldername_export
    
    #%%  Open file

    InputFileName=abaqus.foldername + '\\' + abaqus.inputname + '.inp'
    
    fid=open(InputFileName,'w')
    
    #%%  Materials

    gen.comment(fid,'MATERIALS',False)

    gen.material(fid,'CONCRETE',tower.cs.E,tower.cs.v,tower.cs.rho)

    #%%  Part

    gen.part(fid,abaqus.partname)

    #%%  Tower

    meta=struct()
    meta.tower=struct()
    meta.crossbeamlow=struct()
    meta.bearing=struct()
    
    [meta,towermesh]=towergeometry(fid,meta,geo,tower)

    #%%  Part, instance, assembly

    gen.partend(fid)

    gen.comment(fid,'ASSEMBLY',False)

    gen.assembly(fid,abaqus.assemblyname)

    gen.instance(fid,abaqus.partname,abaqus.partname)

    gen.instanceend(fid)

    gen.assemblyend(fid)

    #%%  Step

    gen.step(fid,'NLGEO=YES, NAME=STEP0','')
    gen.static(fid,['1e-2, 1, 1e-6, 1'])

    gen.cload(fid,'NEW',['Tower_top_south_east','Tower_top_south_west'],1,UnitLoadSouth,abaqus.partname)
    gen.cload(fid,'NEW',['Tower_top_north_east','Tower_top_north_west'],1,UnitLoadNorth,abaqus.partname)
    
    gen.gravload(fid,'new',[''],9.81)
    
    gen.boundary(fid,'new','Tower_base',[1,6,0],abaqus.partname)

    gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
    gen.fieldoutput(fid,'ELEMENT',['SF'],'','FREQUENCY=100')
    
    gen.stepend(fid)
    
    #%%  Close file

    fid.close()

    #%%  Run job

    # Check input file for duplicate node/element numbers
    abq.checkduplicate(InputFileName)
    
    # Run
    if abaqus.runjob==True:
        abq.runjob(abaqus.foldername,abaqus.inputname,abaqus.jobname,abaqus.cmd,abaqus.cpus,True,True)

    #%%  Export data

    foldername_odb=abaqus.foldername
    jobname=abaqus.jobname
    folder_save=foldername_odb
    folder_python=foldername_export
    
    odbexport.export.static(foldername_odb,jobname,folder_save,folder_python)
    odbexport.export.deletefiles(foldername_odb,jobname,['.com' , '.dat' , '.msg' , '.prt' , '.sim' , '.sta' ])
    
    #%%
    
    hf_name=folder_save+ '\\' + jobname + '_exportstatic' + '.h5'

    hf=h5py.File(hf_name, 'r')
    
    u=np.array(hf['u'])
    u_label=hf['u_label'].asstr()[()].tolist()
    
    NodeSouth=towermesh.node_matrix[0][-1,0]
    Index=putools.num.listindex(u_label, str(int(NodeSouth)) + '_U1')[0]
    u_south=u[Index]
    
    NodeNorth=towermesh.node_matrix[2][-1,0]
    Index=putools.num.listindex(u_label, str(int(NodeNorth)) + '_U1')[0]
    u_north=u[Index]
        
    K_south=UnitLoadSouth/u_south
    K_north=UnitLoadNorth/u_north

    F_pullback_south=K_south*geo.dx_pullback_south
    F_pullback_north=K_north*geo.dx_pullback_north

    putools.txt.starprint([ 'F_pullback_south=' + putools.num.num2stre(F_pullback_south) + ' N' ,  'F_pullback_north=' + putools.num.num2stre(F_pullback_north) + ' N'])

    return F_pullback_south,F_pullback_north,K_south,K_north,K_est

#%% 
def K_cantilever(L,I_0,I_end,E):
    
        
    K_val=(2*(E*I_0**3 - 3*E*I_0**2*I_end + 3*E*I_0*I_end**2 - E*I_end**3)) / (I_0**2*L**3 + 3*I_end**2*L**3 + 2*I_end**2*L**3*np.log(I_0*L) - 2*I_end**2*L**3*np.log(I_end*L) - 4*I_0*I_end*L**3)

    return K_val