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
app.use_app('jupyter_rfb')

import matplotlib.pyplot as plt

# Node matrix

# Deck section
cable_section_params = dict(
    A=cable.cs.A,
    m=cable.cs.rho*cable.cs.A+cable.nsmass,
    I_y=cable.cs.I11*1e1,
    I_z=cable.cs.I22*1e1,
    E=cable.cs.E,
    J=cable.cs.It,
    poisson=0.3
    )

cable_section = fe.Section(**cable_section_params, name='Cable section')

# Merge
node_matrix_main=np.copy(cablemesh.node_matrix[0])
node_matrix_main[:,2]=0
# node_matrix_main[:,3]=0
# node_matrix_main=np.copy(node_matrix_main[30:135,:])


element_matrix_main=np.copy(cablemesh.el_matrix[0])
# element_matrix_main=np.copy(element_matrix_main[30:134,:])

# Section
sections_main = [cable_section]*element_matrix_main.shape[0]

# Part
part_main = fe.Part(node_matrix_main, element_matrix_main, sections_main,include_linear_kg=True)

# Define constraints

index_top1=cablemesh.node_set_name.index('Cable_main_top_south_east')
index_top2=cablemesh.node_set_name.index('Cable_main_top_north_east')

master_nodes_top = [int(cablemesh.node_set[index_top1]),int(cablemesh.node_set[index_top2])]
master_nodes_anch=[int(node_matrix_main[0,0]),int(node_matrix_main[-1,0])]
master_nodes_y=node_matrix_main[:,0]

constraints_top = [fe.Constraint(master_nodes_top, dofs=[0,1,2,3], node_type='beam3d')]
constraints_anch = [fe.Constraint(master_nodes_anch, dofs=[0,1,2,3], node_type='beam3d')]
constraints_y = [fe.Constraint(master_nodes_y, dofs=[1], node_type='beam3d')]

constraints =  constraints_top+constraints_anch

# Define assembly
assembly = fe.Assembly([part_main], constraints=constraints,include_linear_kg=True)

#sc, __ = assembly.plot(node_labels=True, element_labels=False)
#sc

force_cable_dead=[]

for k in np.arange(np.shape(element_matrix_main)[0]):
    
    node1=element_matrix_main[k,1]
    node2=element_matrix_main[k,2]
    
    idx1=np.where(node_matrix_main[:,0]==node1)[0]
    idx2=np.where(node_matrix_main[:,0]==node2)[0]
    
    coord1=node_matrix_main[idx1,1:]
    coord2=node_matrix_main[idx2,1:]
    L=np.linalg.norm(coord1-coord2)
    
    loadmag=cable_section_params['m']*L*9.81/2
    
    forces_dead = fe.Force([node1,node2], 2, [-loadmag,-loadmag])
    force_cable_dead.append(forces_dead)

# force_bridgedeck_dead=[]

# for k in np.arange(master_nodes_top[0],master_nodes_top[0]+1,1):
    
#     node1=element_matrix_main[k,1]
#     node2=element_matrix_main[k,2]
    
#     idx1=np.where(node_matrix_main[:,0]==node1)[0]
#     idx2=np.where(node_matrix_main[:,0]==node2)[0]
    
#     coord1=node_matrix_main[idx1,1:]
#     coord2=node_matrix_main[idx2,1:]
#     dx=np.abs(coord1[0,0]-coord2[0,0])
    
#     loadmag=bridgedeck.cs.m*9.81*dx/2
    
#     forces_dead = [fe.Force([node1,node2], 2, [-loadmag,-loadmag])]
#     force_bridgedeck_dead.append(forces_dead)


# loadmag_dead=0.3*7850*9.81*20
# force_nodelabels_dead=node_matrix_main[:,0]
# force_cable_dead = [fe.Force(force_nodelabels_dead, 2, -loadmag_dead)] 

forces_1=force_cable_dead

t=10.0**np.arange(-6,0+1,1)

tol=dict(u=1e-3,r=100)

analysis_nl = fe.Analysis(assembly, forces=forces_1,t=t,tol=tol,itmax=100)

import putools

# t0=putools.timing.tic()

u_nl=analysis_nl.run_static(print_progress=True, return_results=True)

# analysis_lin = fe.Analysis(assembly, forces=forces_1,dt=1)
# u_lin=analysis_lin.run_lin_static(print_progress=True, return_results=True)

# putools.timing.toc(t0)

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
