
# -*- coding: utf-8 -*-
"""
Created on 

@author: OWP
"""

#%%

import numpy as np
import time

import putools
from abaqustools import gen
from abaqustools import abq

from .bearing import *
from .bridgedeck import *
from .cable import *
from .clamp import *
#from .estimatecabledeflection import *
from .generateintro import *
from .hanger import *
from .model import *
from .mesh import *
from .processpar import *
from .retract import *
from .sadle import *
from .tower import *

#%%

def buildinput(UserParameterFileName,UserParameterFolder,IterateDeflection=False,UpdateGeometry=False):

#%%  User parameters

    UserParameterFile=UserParameterFolder + '\\' + UserParameterFileName

    (abaqus,bearing,bridgedeck,cable,geo,hanger,modal,sadle,step,tower)=processpar(UserParameterFile)

#%%  Generate some structures

    meta=struct()
    meta.bridgedeck=struct()
    meta.cable=struct()
    meta.bearing=struct()
    meta.crossbeamlow=struct()
    meta.tower=struct()
    
#%%  Estimate pullback force

    if np.isnan(tower.F_pullback_south) and np.isnan(tower.F_pullback_north):
        
        putools.txt.starprint(['Estimating force for retraction of towers'],1)
        (tower.F_pullback_south,tower.F_pullback_north,tower.K_south,tower.K_north,tower.K_est)=estimatepullbackforce(tower,geo,abaqus)

#%%  Estimate cable deflection

    if IterateDeflection==True:
        
        dummy=nan
        #putools.txt.starprint(['Estimating cable deflection'],1)
                
        #(cable,geo)=EstimateCableDeflectionMain(meta,cable,bridgedeck,tower,geo)
                
        #if 'K_south' in tower.fields():
            #tower.F_pullback_south=tower.K_south*geo.dx_pullback_south
            
        #if 'K_north' in tower.fields():
            #tower.F_pullback_north=tower.K_north*geo.dx_pullback_north
            
#%%  Open file

    InputFileName=abaqus.foldername + '\\' + abaqus.inputname + '.inp'
    
    fid=open(InputFileName,'w')
    
    generateintro(fid,abaqus,bearing,bridgedeck,cable,geo,hanger,modal,sadle,step,tower,time)

#%%  Materials
    gen.comment(fid,'MATERIALS',True)
    
    gen.material(fid,'CONCRETE',tower.cs.E,tower.cs.v,tower.cs.rho)
    gen.material(fid,'SOFT',1e-6,0.3,1e-12)
    gen.material(fid,'STEEL',210e9,0.3,7850)

#%%  Part
    
    gen.part(fid,abaqus.partname)

#%%  Cable Main

    gen.comment(fid,'CABLE',True)

    (meta,cablemesh)=cablegeometry(fid,meta,geo,cable)
    
#%%  Tower
    
    gen.comment(fid,'TOWER',True)
    
    (meta,towermesh)=towergeometry(fid,meta,geo,tower)
    
#%%  Sadle springs
    
    gen.comment(fid,'SADLE',True)
    
    (meta,sadlemesh)=sadlegeometry(fid,meta,geo,sadle)
    
#%%  Bridge deck
    
    gen.comment(fid,'BRIDGE DECK',True)
    
    (meta,bridgemesh)=bridgedeckgeometry(fid,meta,geo,bridgedeck)
    
#%%  Hanger
    
    gen.comment(fid,'HANGER',True)
    
    (meta,hangermesh)=hangergeometry(fid,meta,geo,hanger)
    
#%%  Bearings
    
    gen.comment(fid,'BEARINGS',True)
    
    (meta,bearingmesh)=bearinggeometry(fid,meta,geo,bearing)
    
#%%  Cable clamp
    
    if cable.clamp==True:
        
        gen.comment(fid,'CABLE CLAMP',True)
        
        (meta,clampmesh)=clampgeometry(fid,meta,cable)
    
#%%  Part, instance, assembly
    
    gen.partend(fid)
    
    gen.comment(fid,'ASSEMBLY',True)
    
    gen.assembly(fid,abaqus.assemblyname)
    
    gen.instance(fid,abaqus.partname,abaqus.partname)
    
    gen.instanceend(fid)
    
    gen.assemblyend(fid)
    
#%%  Step

    gen.step(fid,'NLGEO=YES, NAME=STEP1','Towers, retraction')
    
    if np.isnan(step.time[0]).any():
        Time_step='1e-3, 1, 1e-6, 1'
    else:
        Time_step=step.time[0]

    gen.static(fid,Time_step)
    
    gen.modelchange(fid,'REMOVE',['CABLE_MAIN' , 'SADLESPRING' , 'BRIDGEDECK' , 'HANGER' , 'BEARINGTOP' , 'BEARINGPENDULUM' , 'BEARINGSPRING'],abaqus.partname)
    
    if cable.tempsupport==True:
        gen.modelchange(fid,'REMOVE',['CABLE_TEMPSUPPORT'],abaqus.partname)
    
    if bridgedeck.shell==True:
        gen.modelchange(fid,'REMOVE',['Bridgedeck_shell'],abaqus.partname)
    
    if cable.clamp==True:
        gen.modelchange(fid,'REMOVE',['Cable_clamp'],abaqus.partname)    

    gen.cload(fid,'NEW',['Tower_top_south_east','Tower_top_south_west'],1,tower.F_pullback_south,abaqus.partname)
    gen.cload(fid,'NEW',['Tower_top_north_east','Tower_top_north_west'],1,tower.F_pullback_north,abaqus.partname)
    
    gen.gravload(fid,'new',[''],9.81)
    
    gen.boundary(fid,'new','Tower_base',[1,6,0],abaqus.partname)

    gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
    gen.fieldoutput(fid,'ELEMENT',['SF'],'','FREQUENCY=100')
    
    gen.stepend(fid)

#%%  Step

    gen.step(fid,'NLGEO=YES, NAME=STEP2','Add main cable, release retraction')

    if np.isnan(step.time[1]).any():
        Time_step='1e-8, 1, 1e-12, 1'
    else:
        Time_step=step.time[1]
            
    gen.static(fid,Time_step)
    
    gen.modelchange(fid,'ADD',['CABLE_MAIN' , 'SADLESPRING'],abaqus.partname)
    
    if cable.tempsupport==True:
        gen.modelchange(fid,'ADD',['CABLE_TEMPSUPPORT'],abaqus.partname)
        
    gen.cload(fid,'NEW',[],[],[])
    
    gen.gravload(fid,'new',[''],9.81)
    
    gen.boundary(fid,'new','Tower_base',[1,6,0],abaqus.partname)
    gen.boundary(fid,'new','Cable_main_anchorage',[1,4,0],abaqus.partname)
    
    gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
    gen.fieldoutput(fid,'ELEMENT',['SF' , 'S'],'','FREQUENCY=100')
    
    gen.stepend(fid)


#%%  Step

    gen.step(fid,'NLGEO=YES, NAME=STEP3','Add hangers and bridge deck, remove main cable temp supports')

    if np.isnan(step.time[2]).any():
        Time_step='1e-3, 1, 1e-9, 1'
    else:
        Time_step=step.time[2]
    
    gen.static(fid,Time_step)
    
    gen.modelchange(fid,'ADD',['BRIDGEDECK' , 'HANGER' , 'BEARINGTOP'],abaqus.partname)
    
    if cable.tempsupport==True:
        gen.modelchange(fid,'REMOVE',['CABLE_TEMPSUPPORT'],abaqus.partname)
       
    
    GravList=['TOWER','CABLE_MAIN','HANGER','BRIDGEDECK','BEARINGTOP','BEARINGLOW']
    gen.gravload(fid,'NEW',GravList,9.81,abaqus.partname)  
    
    gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
    gen.fieldoutput(fid,'ELEMENT',['SF' , 'S'],'','FREQUENCY=100')
    
    gen.stepend(fid)

#%%  Step

    gen.step(fid,'NLGEO=YES, NAME=STEP4','Add bearings at bridge deck ends')
    
    if np.isnan(step.time[3]).any():
        Time_step='1e-3, 1, 1e-9, 1'
    else:
        Time_step=step.time[3]
    
    gen.static(fid,Time_step)
    gen.modelchange(fid,'ADD',['BEARINGPENDULUM' , 'BEARINGSPRING'],abaqus.partname)
    
    if bridgedeck.shell==True:
        gen.modelchange(fid,'ADD',['Bridgedeck_shell'],abaqus.partname)

    if cable.clamp==True:
        gen.modelchange(fid,'ADD',['CABLE_CLAMP'],abaqus.partname)
        
        #eps=alpha*dT
        #sigma=E*eps=E*alpha*dT
        #F=A*sigma=A*E*alpha*dT
        
        temp_magnitude=-cable.F_clamp/(210e9*4e-3*1e-5)*2
        gen.temperature(fid,'MOD',['CABLE_CLAMP_TEMPERATURE'],temp_magnitude,abaqus.partname)
        
    gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
    gen.fieldoutput(fid,'ELEMENT',['SF' , 'S'],'','FREQUENCY=100')
    
    gen.stepend(fid)

#%%  Step

    gen.step(fid,'NAME=STEP_MODAL','')
    gen.frequency(fid,modal.N_modes,modal.normalization)
    
    gen.fieldoutput(fid,'NODE',['U' , 'COORD'],'','')
    gen.fieldoutput(fid,'ELEMENT',['SF'],'','')
    
    if abaqus.restart==True:
        gen.restart(fid,'WRITE')
    
    gen.stepend(fid)

#%%  Close file

    fid.close()

#%%  Run job
    
    # Check input file for duplicate node or element numbers
    abq.checkduplicate(InputFileName)
    
    LogicCompleted=False
    # Run
    if abaqus.runjob==True:
        LogicCompleted=abq.runjob(abaqus.foldername,abaqus.inputname,abaqus.jobname,abaqus.cmd,abaqus.cpus,True,True)

    return LogicCompleted




