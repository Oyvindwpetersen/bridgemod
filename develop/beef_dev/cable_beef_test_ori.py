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

# Deck section
cable_section_params = dict(
    A=0.3,
    m=1000,
    I_z=1e-6,
    I_y=1e-6,
    E=210e9,
    J=1e-6,
    poisson=0.3
    )

cable_section = fe.Section(**cable_section_params, name='Cable section')

# Node matrix
L=1300
dx=20
sag=100
L_span=172.0
z_anch=50+80
z_top=180

# L=1310
# dx=10
# sag=187.5-76.74000
# L_span=826.69000-655
# z_anch=102.76000 
# z_top=187.5

x=np.arange(-L/2,L/2+dx,dx)
y=np.zeros(np.shape(x))
z=4*sag*x**2/L**2+z_top-sag

nodenumber_mid=np.arange(1,len(x)+1).astype('int')+int(15e3)
node_matrix_mid = np.column_stack((nodenumber_mid,x,y,z))

x_side1=np.linspace(-L/2-L_span,-L/2,np.ceil(L_span/dx).astype('int'))
z_side1=np.linspace(z_anch,z_top,np.ceil(L_span/dx).astype('int'))
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
constraints_anch= [fe.Constraint([nodenumber_side1[0],[nodenumber_side2[-1]]], dofs=[0,1,2,3], node_type='beam3d')]

constraints =  constraints_top+constraints_anch #constraints_bind_side1+constraints_bind_side2

# Define assembly
assembly = fe.Assembly([part_main], constraints=constraints,include_linear_kg=True)

#sc, __ = assembly.plot(node_labels=True, element_labels=False)
#sc

#force_nodelabels=nodenumber
force_nodelabels_dead=node_matrix_main[:,0]
force_nodelabels_deck=nodenumber_mid

loadmag_dead=0.3*7850*9.81*dx
loadmag_deck=8000*9.81*dx/2

# Create analysis: linear static
#analysis_lin = fe.Analysis(assembly, forces=forces,dt=1)
#u_lin=analysis_lin.run_lin_static(print_progress=True, return_results=True)

forces_dead = [fe.Force(force_nodelabels_dead, 2, -loadmag_dead)] 
forces_deck = [fe.Force(force_nodelabels_deck, 2, -loadmag_deck)] 

forces=[forces_dead[0],forces_deck[0]]
#forces=[forces_dead[0]]

t=10.0**np.arange(-1,0+1,1)
t=10.0**np.arange(-10,0+1,1)

tol=dict(u=1e-3,r=100)

analysis_nl = fe.Analysis(assembly, forces=forces,t=t,tol=tol,itmax=100)

import putools

t0=putools.timing.tic()

u_nl=analysis_nl.run_static(print_progress=True, return_results=True)

putools.timing.toc(t0)

#sc, __ = analysis_nl.eldef.plot(overlay_deformed=True, plot_nodes=False)
#sc

min(u_nl[2::6,-1])



#%%

x0=node_matrix_main[:,1]
z0=node_matrix_main[:,3]

# import matplotlib.pyplot as plt
   
ind_x=[np.arange(0,len(u_nl),6)+0]
ind_y=[np.arange(0,len(u_nl),6)+1]
ind_z=[np.arange(0,len(u_nl),6)+2]

dx=u_nl[ind_x,-1].flatten()
dy=u_nl[ind_y,-1].flatten()
dz=u_nl[ind_z,-1].flatten()

plt.figure()

plt.plot(dx)
plt.plot(dy)
plt.plot(dz)
plt.show()

plt.figure()
plt.plot(x0,z0)
plt.plot(x0+dx,z0+dz)
plt.show()
