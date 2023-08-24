# -*- coding: utf-8 -*-
"""
Created on Tue Jun  6 13:02:45 2023

@author: oyvinpet
"""




import sys
import numpy as np

sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')

# import abaqustools
from abaqustools import suspensionbridge

from abaqustools import odbexport

#%%

UserParameterFolder=r'C:\Cloud\OD_OWP\Work\Python\Github\abaqustools\suspensionbridge_example'
UserParameterFileName='LangenuenParameters.py'

#suspensionbridge.model.buildinput(UserParameterFileName,UserParameterFolder,IterateDeflection=False)

UserParameterFile=UserParameterFolder + '\\' + UserParameterFileName


from  abaqustools.suspensionbridge import processpar
from  abaqustools.suspensionbridge import cablegeometry


(abaqus,bearing,bridgedeck,cable,geo,hanger,modal,sadle,step,tower)=processpar(UserParameterFile)

from ypstruct import*
meta=struct()
meta.bridgedeck=struct()
meta.cable=struct()
meta.bearing=struct()
meta.crossbeamlow=struct()
meta.tower=struct()
    
#def estimatecabledeflectionsub(meta,cable,bridgedeck,geo,cableonly=False):
    
# geo.dx_pullback_south=np.array(-0.8)
# geo.dx_pullback_north=np.array(0.8)

(meta_,cablemesh_temp)=cablegeometry(None,meta,geo,cable)

NodeMatrix_east=cablemesh_temp.node_matrix[0]
NodeMatrix_east[:,2]=-5

NodeMatrix_west=cablemesh_temp.node_matrix[1]
NodeMatrix_west[:,2]=5

ElMatrix_east=cablemesh_temp.el_matrix[0]
ElMatrix_west=cablemesh_temp.el_matrix[1]


ElMatrix=np.vstack((ElMatrix_east,ElMatrix_west))
NodeMatrix=np.vstack((NodeMatrix_east,NodeMatrix_west))
Nodenumber_top=[10031 ,10135 , 20031 ,20135]
Nodenumber_anch=[10001, 10165 , 20001, 20165]

# ElMatrix=np.vstack((ElMatrix_west))
# NodeMatrix=np.vstack((NodeMatrix_west))
# Nodenumber_top=[20031 ,20135]
# Nodenumber_anch=[20001, 20165]

# ElMatrix=np.vstack((ElMatrix_east))
# NodeMatrix=np.vstack((NodeMatrix_east))
# Nodenumber_top=[10031 ,10135]
# Nodenumber_anch=[10001, 10165]


import sys

sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')
sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github/beefp')

from beef import fe
import beef
from beef.newmark import factors as newmark_factors, factors_from_alpha

import numpy as np

from vispy import app, gloo
#app.use_app('jupyter_rfb')

import matplotlib.pyplot as plt
#Two sections (´deck_section´ and ´column_section´) are created with different section properties using ´fe.Section´. Furthermore, a Rayleigh damping with coefficients 
 # is defined in a dictionary.

# Node matrix

# Deck section
cable_section_params = dict(
A=cable.cs.A,
m=cable.cs.rho*cable.cs.A+cable.nsmass,
I_y=cable.cs.I11,
I_z=cable.cs.I22,
E=cable.cs.E,
J=cable.cs.It,
poisson=0.3
)

cable_section = fe.Section(**cable_section_params, name='Cable section')

# Section
sections_cable = [cable_section]*ElMatrix.shape[0]

# Part
part_cable = fe.Part(NodeMatrix, ElMatrix, sections_cable,include_linear_kg=True)

# Define constraints
constraints_top = [fe.Constraint(Nodenumber_top, dofs=[1,2], node_type='beam3d')]
constraints_anch = [fe.Constraint(Nodenumber_anch, dofs=[0,1,2,3], node_type='beam3d')]

constraints =  constraints_top+constraints_anch

# Define assembly
assembly = fe.Assembly([part_cable], constraints=constraints,include_linear_kg=True)

#%%

def gravityload(part_obj,g=-9.81):

    # Create gravity load amplitudes for a part

    # Create a vector with all node labels in this part
    nodes_all=[part_obj.elements[k].nodelabels for k in range(len(part_obj.elements))]
    nodes_all=[val for sublist in nodes_all for val in sublist]
    force_nodelabels=np.unique(nodes_all)
    
    
    # Assign gravity loads
    amplitudes=np.zeros((len(force_nodelabels),1))
    
    for k in range(len(part_obj.elements)):
        
        m=part_obj.elements[k].section.m
        L=part_obj.elements[k].L
        
        # G is the load in N
        G=g*m*L
        
        # Find index of these two nodes
        nodelabels=part_obj.elements[k].nodelabels
        idx1=np.where(force_nodelabels==nodelabels[0])[0][0]
        idx2=np.where(force_nodelabels==nodelabels[1])[0][0]
        
        # Assign half of the load in each node
        amplitudes[idx1]=amplitudes[idx1]+G/2
        amplitudes[idx2]=amplitudes[idx2]+G/2
    
    
    return force_nodelabels,amplitudes
    
force_nodelabels,amplitudes=gravityload(part_cable)

#%%

tol=dict(u=1e-6,r=1e-2)

# Step 1
forces_cable = fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes,amplitudes]),t=[0,1,2])

forces_step1=[forces_cable]
t_step1=10.0**np.arange(-5,0+1,1)

analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t_step1,tol=tol,itmax=100)

# u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)

# analysis_nl_step1.eldef.elements
# analysis_nl_step1.eldef.elements[200].N/1e8


#%%

def addN(t):
    
     Nlist=[0.5e8]*328
     return Nlist

analysis_lin_step1 = fe.Analysis(assembly, forces=forces_step1,t=[1.0],tol=tol,itmax=100,prescribed_N=addN)


u_step1a=analysis_lin_step1.run_lin_static(print_progress=False, return_results=True)


analysis_lin_step1.eldef.elements[60].N/1e8






tol=dict(u=1e-6,r=1e-2)

# Step 1
forces_cable = fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes,amplitudes]),t=[0,1,2])

forces_step1=[forces_cable]
t_step1a=1

analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=[1.0],tol=tol,itmax=100,u0=u_step1a[:,-1])

u_step1b=analysis_nl_step1.run_static(print_progress=False, return_results=True)

analysis_nl_step1.eldef.elements[-1].N/1e8
analysis_nl_step1.eldef.elements[-1].Qz/1e8

    # force_nodelabels_deck=nodenum_east[idx_main_east]

    # loadmag_deck=8800*9.81*20*0.5
    # amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck

    # # Step 2
    # forces_deck = fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck]),t=[1,2])
    # forces_step2=[forces_cable,forces_deck]

    # u0_step2=u_step1[:,-1]

    # t_step2=10.0**np.arange(-3,0+1,1)+1

    # analysis_nl_step2 = fe.Analysis(assembly, forces=forces_step2,t=t_step2,tol=tol,itmax=100,u0=u0_step2)

    # u_step2=analysis_nl_step2.run_static(print_progress=False, return_results=True)

#%%
u_plot=u_step1b[:,-1]-u_step1a[:,-1]

x0=NodeMatrix[:,1]
z0=NodeMatrix[:,3]

# import matplotlib.pyplot as plt
       
ind_x=[np.arange(0,len(u_plot),6)+0]
ind_y=[np.arange(0,len(u_plot),6)+1]
ind_z=[np.arange(0,len(u_plot),6)+2]

du1=u_plot[ind_x].flatten()
du2=u_plot[ind_y].flatten()
du3=u_plot[ind_z].flatten()

plt.figure()

plt.plot(du1)
plt.plot(du2)
plt.plot(du3)
plt.show()

plt.figure()
plt.plot(x0,z0)
plt.plot(x0+du1,z0+du3)
plt.show()