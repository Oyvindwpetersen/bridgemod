# -*- coding: utf-8 -*-
"""
Created on Tue Jun  6 13:02:45 2023

@author: oyvinpet
"""


#def estimatecabledeflectionsub(meta,cable,bridgedeck,geo,cableonly=False):
    
# geo.dx_pullback_south=np.array(-0.8)
# geo.dx_pullback_north=np.array(0.8)

(meta_,cablemesh_temp)=cablegeometry(None,meta,geo,cable)

NodeMatrix_east=cablemesh_temp.node_matrix[0]
NodeMatrix_east[:,2]=-5

ElMatrix_east=cablemesh_temp.el_matrix[0]
# A=cable.cs.A
# rho=cable.cs.rho
# m_ns=cable.nsmass
# I=cable.cs.I11
Nodenumber_top=[10031 ,10135]
Nodenumber_anch=[10001, 10165]

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
# A=2.21e-01
# L=1310
# dx=20
# z_tow=1.87453e+002
# sag=1.20664e+002
# L_span=1.71204e+002
# z_anch=1.02760e+002

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
sections_main = [cable_section]*ElMatrix_east.shape[0]

# Part
part_main = fe.Part(NodeMatrix_east, ElMatrix_east, sections_main,include_linear_kg=True)

# Define constraints
constraints_top = [fe.Constraint(Nodenumber_top[0:2], dofs=[1,2], node_type='beam3d')]
constraints_anch = [fe.Constraint(Nodenumber_anch[0:2], dofs=[0,1,2,3], node_type='beam3d')]

constraints =  constraints_top+constraints_anch

# Define assembly
assembly = fe.Assembly([part_main], constraints=constraints,include_linear_kg=True)

#%%

# nodes_all=[part_main.elements[k].nodelabels for k in range(len(part_main.elements))]
# nodes_all=[val for sublist in nodes_all for val in sublist]
# force_nodelabels=np.unique(nodes_all)

# amplitudes=np.zeros((len(force_nodelabels),1))

# for k in range(len(part_main.elements)):

#     g=-9.81
#     m=part_main.elements[k].section.m
#     L=part_main.elements[k].L
#     G=g*m*L
    
#     nodelabels=part_main.elements[k].nodelabels
#     idx1=np.where(force_nodelabels==nodelabels[0])[0][0]
#     idx2=np.where(force_nodelabels==nodelabels[1])[0][0]
    
#     amplitudes[idx1]=amplitudes[idx1]+G/2
#     amplitudes[idx2]=amplitudes[idx2]+G/2
    
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
    
force_nodelabels,amplitudes=gravityload(part_main)

    #%%
tol=dict(u=1e-6,r=1e-2)

# Step 1
forces_cable = fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes,amplitudes]),t=[0,1,2])

forces_step1=[forces_cable]
t_step1=10.0**np.arange(-6,0+1,1)

analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t_step1,tol=tol,itmax=100)

u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)


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
    # u_plot=u_step1

    # x0=NodeMatrix_east[:,1]
    # z0=NodeMatrix_east[:,3]

    # # import matplotlib.pyplot as plt
       
    # ind_x=[np.arange(0,len(u_plot),6)+0]
    # ind_y=[np.arange(0,len(u_plot),6)+1]
    # ind_z=[np.arange(0,len(u_plot),6)+2]

    # du1=u_plot[ind_x,-1].flatten()
    # du2=u_plot[ind_y,-1].flatten()
    # du3=u_plot[ind_z,-1].flatten()

    # plt.figure()

    # plt.plot(du1)
    # plt.plot(du2)
    # plt.plot(du3)
    # plt.show()

    # plt.figure()
    # plt.plot(x0,z0)
    # plt.plot(x0+du1,z0+du3)
    # plt.show()
