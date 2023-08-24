# -*- coding: utf-8 -*-
"""
Created on Tue May 30 14:20:11 2023

@author: oyvinpet
"""

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

# Node matrix
A=1e-5
L=10
dx=5
dx2=2.5

# Deck section
beam_section_params = dict(
    A=A,
    m=1000,
    I_z=1e-6,
    I_y=1e-6,
    E=210e9,
    J=1e-6,
    poisson=0.3
    )

beam_section = fe.Section(**beam_section_params, name='Beam section')

# Beam
x=np.arange(0,L+dx,dx)
y=x*0
z=x*0

nodenumber_beam=np.arange(1,len(x)+1)+int(4e3)
node_matrix_main = np.column_stack((nodenumber_beam,x,y,z))
element_matrix_main = np.column_stack((nodenumber_beam[:-1],nodenumber_beam[:-1],nodenumber_beam[1:]))

# Col
z=np.arange(0,L/2+dx2,dx2)
x=np.ones(np.shape(z))*L
y=x*0

nodenumber_col=np.arange(1,len(x)+1)+int(3e3)
node_matrix_col = np.column_stack((nodenumber_col,x,y,z))
element_matrix_col = np.column_stack((nodenumber_col[:-1],nodenumber_col[:-1],nodenumber_col[1:]))


# Section
sections_main = [beam_section]*element_matrix_main.shape[0]
sections_col = [beam_section]*element_matrix_col.shape[0]

# Part
part_main = fe.Part(node_matrix_main, element_matrix_main, sections_main,include_linear_kg=True)
part_col = fe.Part(node_matrix_col, element_matrix_col, sections_col,include_linear_kg=True)


# Define constraints
constraints_anch_beam = [fe.Constraint([nodenumber_beam[0]], dofs=[0,1,2,3,4,5], node_type='beam3d')]
constraints_anch_col = [fe.Constraint([nodenumber_col[-1]], dofs=[0,1,2,3,4,5], node_type='beam3d')]
constraints_connect = [fe.Constraint([nodenumber_beam[-1]], slave_nodes=[nodenumber_col[0]], dofs=[0,1,2,3,4,5], node_type='beam3d')]


constraints =  constraints_anch_beam+constraints_anch_col+constraints_connect

# Define assembly
assembly = fe.Assembly([part_main,part_col], constraints=constraints,include_linear_kg=True)
# assembly.plot(node_labels=True, element_labels=False)

force_nodelabels_dead=node_matrix_main[:,0]
t=10.0**np.arange(-3,0+1,1)

amplitudes = np.ones((len(force_nodelabels_dead),1))*-3e4
forces_dead = [fe.Force(force_nodelabels_dead, 2, np.hstack([amplitudes*0, amplitudes]),t=[0,1])] 

forces=[forces_dead[0]]

# Create analysis: linear static
# analysis_lin = fe.Analysis(assembly, forces=forces,dt=1)
# u_lin=analysis_lin.run_lin_static(print_progress=False, return_results=True)


# pl = analysis_lin.eldef.plot(node_labels=False, element_labels=False, plot_nodes=True, plot_states=['undeformed', 'deformed'], show=False)
# pl.view_xy()
# pl.show()



#%%

tol=dict(u=1e-6,r=100)

analysis_nl = fe.Analysis(assembly, forces=forces,t=t,tol=tol,itmax=100)

import putools

t0=putools.timing.tic()

u_nl=analysis_nl.run_static(print_progress=False, return_results=True)

putools.timing.toc(t0)

#sc, __ = analysis_nl.eldef.plot(plot_nodes=True,plot_deformed=True)
#s
pl = analysis_nl.eldef.plot(node_labels=True, element_labels=True, plot_nodes=True, plot_states=['undeformed', 'deformed'], show=False)
pl.view_xy()
pl.show()

#%%

# amplitudes_1 = np.ones((len(force_nodelabels_dead),1))*-1e3
# amplitudes_2 = np.ones((len(force_nodelabels_dead),1))*-5e2

# # Step 1
# forces_1 = fe.Force(force_nodelabels_dead, 2, np.hstack([amplitudes_1*0, amplitudes_1]),t=[0,1])
# forces_step1=[forces_1]
# analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t,tol=tol,itmax=100)

# u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)


# # Step 2
# forces_1 = fe.Force(force_nodelabels_dead, 2, np.hstack([amplitudes_1, amplitudes_1]),t=[1-1,2-1])
# forces_2 = fe.Force(force_nodelabels_dead, 2, np.hstack([amplitudes_2*0, amplitudes_2*0]),t=[1-1,2-1])
# forces_step2=[forces_1,forces_2]

# u0_step2=u_step1[:,-1]

# t2=10.0**np.arange(-9,0+1,1)+1-1

# analysis_nl_step2 = fe.Analysis(assembly, forces=forces_step2,t=t2,tol=tol,itmax=20,u0=u0_step2)

# u_step2=analysis_nl_step2.run_static(print_progress=False, return_results=True)

# import putools

# t0=putools.timing.tic()

# u_nl=analysis_nl.run_static(print_progress=False, return_results=True)

# putools.timing.toc(t0)


