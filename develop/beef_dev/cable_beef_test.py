# -*- coding: utf-8 -*-
"""
Created on Tue Apr 11 10:02:12 2023

@author: oyvinpet
"""
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
A=2.21e-01
L=1310
dx=20
z_tow=1.87453e+002
sag=1.20664e+002
L_span=1.71204e+002
z_anch=1.02760e+002

# Deck section
cable_section_params = dict(
    A=A,
    m=1816,
    I_z=1e-6,
    I_y=1e-6,
    E=210e9,
    J=1e-6,
    poisson=0.3
    )

cable_section = fe.Section(**cable_section_params, name='Cable section')


# Mid
x=np.linspace(-L/2,L/2,int(np.ceil(L/dx)))
y=np.zeros(np.shape(x))
z=4*sag*x**2/L**2+z_tow-sag

nodenumber_mid=np.arange(1,len(x)+1)+int(15e3)
node_matrix_mid = np.column_stack((nodenumber_mid,x,y,z))

# Sides
x_side1=np.linspace(-L/2-L_span,-L/2,20)
z_side1=np.linspace(z_anch,z_tow,20)
y_side1=z_side1*0

x_side2=-np.flip(x_side1)
z_side2=np.flip(z_side1)
y_side2=y_side1

nodenumber_side1=np.arange(1,len(x_side1)+1).astype('int')+int(10e3)
nodenumber_side2=np.arange(1,len(x_side2)+1).astype('int')+int(20e3)

node_matrix_side1 = np.column_stack((nodenumber_side1,x_side1,y_side1,z_side1))
node_matrix_side2 = np.column_stack((nodenumber_side2,x_side2,y_side2,z_side2))

# Element matrices
element_matrix_mid = np.column_stack((nodenumber_mid[:-1],nodenumber_mid[:-1],nodenumber_mid[1:]))
element_matrix_side1 = np.column_stack((nodenumber_side1[:-1],nodenumber_side1[:-1],nodenumber_side1[1:]))
element_matrix_side2 = np.column_stack((nodenumber_side2[:-1],nodenumber_side2[:-1],nodenumber_side2[1:]))

sections1 = [cable_section]*element_matrix_mid.shape[0]
sections_side1 = [cable_section]*element_matrix_side1.shape[0]
sections_side2 = [cable_section]*element_matrix_side2.shape[0]

# Merge
node_matrix_main=np.vstack((node_matrix_side1[:-1,:],node_matrix_mid,node_matrix_side2[1:,:]))

element_matrix_side1[-1,2]=node_matrix_mid[0,0]
element_matrix_side2[0,1]=node_matrix_mid[-1,0]

element_matrix_main=np.vstack((element_matrix_side1,element_matrix_mid,element_matrix_side2))

# Section
sections_main = [cable_section]*element_matrix_main.shape[0]

# Part
part_main = fe.Part(node_matrix_main, element_matrix_main, sections_main,include_linear_kg=True)

# Define constraints
master_nodes_top = [nodenumber_mid[0],nodenumber_mid[-1]]

constraints_top = [fe.Constraint(master_nodes_top, dofs=[1,2,3], node_type='beam3d')]
constraints_anch = [fe.Constraint([nodenumber_side1[0],[nodenumber_side2[-1]]], dofs=[0,1,2,3], node_type='beam3d')]

constraints =  constraints_top+constraints_anch

# Define assembly
assembly = fe.Assembly([part_main], constraints=constraints,include_linear_kg=True)

#sc, __ = assembly.plot(node_labels=True, element_labels=False)
#sc

force_nodelabels_cable=node_matrix_main[:,0]
force_nodelabels_deck=nodenumber_mid

loadmag_dead=A*7850*9.81*dx
loadmag_deck=8000*9.81*dx/2

# Create analysis: linear static
#analysis_lin = fe.Analysis(assembly, forces=forces,dt=1)
#u_lin=analysis_lin.run_lin_static(print_progress=True, return_results=True)

force_nodelabels_cable=node_matrix_main[:,0]
t=10.0**np.arange(-3,0+1,1)

amplitudes_dead = np.ones((len(force_nodelabels_cable),1))*-loadmag_dead
amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck

forces_dead = [fe.Force(force_nodelabels_cable, 2, np.hstack([amplitudes_dead*0, amplitudes_dead]),t=[0,1])] 
forces_deck = [fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck]),t=[0,1])] 

forces=[forces_dead[0],forces_deck[0]]
forces=[forces_dead[0]]

t=10.0**np.arange(-1,0+1,1)
t=10.0**np.arange(-6,0+1,1)

tol=dict(u=1e-6,r=100)

analysis_nl = fe.Analysis(assembly, forces=forces,t=t,tol=tol,itmax=100)

import putools

t0=putools.timing.tic()

u_nl=analysis_nl.run_static(print_progress=False, return_results=True)

putools.timing.toc(t0)

#sc, __ = analysis_nl.eldef.plot(overlay_deformed=True, plot_nodes=False)
#sc

# min(u_nl[2::6,-1])


#%%

nodes_all=[part_main.elements[k].nodelabels for k in range(len(part_main.elements))]
nodes_all=[val for sublist in nodes_all for val in sublist]
force_nodelabels=np.unique(nodes_all)

amplitudes=np.zeros((len(force_nodelabels),1))

for k in range(len(part_main.elements)):

    g=-9.81
    m=part_main.elements[k].section.m
    L=part_main.elements[k].L
    G=g*m*L
    
    nodelabels=part_main.elements[k].nodelabels
    idx1=np.where(force_nodelabels==nodelabels[0])[0][0]
    idx2=np.where(force_nodelabels==nodelabels[1])[0][0]
    
    amplitudes[idx1]=amplitudes[idx1]+G/2
    amplitudes[idx2]=amplitudes[idx2]+G/2
    
    
# force_nodelabels_cable=node_matrix_main[:,0]

# amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck

# forces_dead = [fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes]),t=[0,1])] 
# forces_deck = [fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck]),t=[0,1])] 

#%%

# Step 1
forces_cable = fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes,amplitudes]),t=[0,1,2])
# forces_cable = fe.Force(force_nodelabels_cable, 2, np.hstack([amplitudes_dead*0, amplitudes_dead]),t=[0,1])

forces_step1=[forces_cable]
t_step1=10.0**np.arange(-6,0+1,1)

analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t_step1,tol=tol,itmax=100)

u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)



loadmag_deck=8800*9.81*dx*0.5
amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck


# Step 2
forces_deck = fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck]),t=[1,2])
forces_step2=[forces_cable,forces_deck]

u0_step2=u_step1[:,-1]


t_step2=10.0**np.arange(-3,0+1,1)+1
#t2=np.linspace(0,1,5)+1

analysis_nl_step2 = fe.Analysis(assembly, forces=forces_step2,t=t_step2,tol=tol,itmax=100,u0=u0_step2)

u_step2=analysis_nl_step2.run_static(print_progress=False, return_results=True)



#%%

x0=node_matrix_main[:,1]
z0=node_matrix_main[:,3]

# import matplotlib.pyplot as plt
   
ind_x=[np.arange(0,len(u_step1),6)+0]
ind_y=[np.arange(0,len(u_step1),6)+1]
ind_z=[np.arange(0,len(u_step1),6)+2]

du1=u_step1[ind_x,-1].flatten()
du2=u_step1[ind_y,-1].flatten()
du3=u_step1[ind_z,-1].flatten()

plt.figure()

plt.plot(du1)
plt.plot(du2)
plt.plot(du3)
plt.show()

plt.figure()
plt.plot(x0,z0)
plt.plot(x0+du1,z0+du3)
plt.show()

