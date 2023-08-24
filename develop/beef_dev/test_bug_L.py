# -*- coding: utf-8 -*-
"""
Created on Wed May 31 13:54:59 2023

@author: oyvinpet
"""

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
#Two sections (´deck_section´ and ´column_section´) are created with different section properties using ´fe.Section´. Furthermore, a Rayleigh damping with coefficients 
 # is defined in a dictionary.

# Node matrix
A=1e-5
L=100
dx=L/200
dx=20

# Deck section
beam_section_params = dict(
    A=A,
    m=1000,
    I_z=1e0,
    I_y=1e0,
    E=210e9,
    J=1e-6,
    poisson=0.3
    )

beam_section = fe.Section(**beam_section_params, name='Beam section')


# Mid
x=np.arange(-L/2,L/2+dx,dx)
y=x*0
z=x*0

nodenumber_mid=np.arange(1,len(x)+1)+int(15e3)
node_matrix_main = np.column_stack((nodenumber_mid,x,y,z))

# Element matrices
element_matrix_main = np.column_stack((nodenumber_mid[:-1],nodenumber_mid[:-1],nodenumber_mid[1:]))

sections1 = [beam_section]*element_matrix_main.shape[0]

# Section
sections_main = [beam_section]*element_matrix_main.shape[0]

# Part
part_main = fe.Part(node_matrix_main, element_matrix_main, sections_main,include_linear_kg=True)



# Define constraints
constraints = [fe.Constraint([nodenumber_mid[0],nodenumber_mid[-1]], dofs=[0,1,2,3], node_type='beam3d')]

# Define assembly
assembly = fe.Assembly([part_main], constraints=constraints,include_linear_kg=True)

#sc, __ = assembly.plot(node_labels=True, element_labels=False)
#sc

force_nodelabels=node_matrix_main[:,0]

amplitudes = np.ones((len(force_nodelabels),1))*-1e3
forces_dead = [fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes]),t=[0,1])] 

forces=[forces_dead[0]]
#forces_ramp=interp1()

# Create analysis: linear static
analysis_lin = fe.Analysis(assembly, forces=forces,dt=1)
u_lin=analysis_lin.run_lin_static(print_progress=False, return_results=True)


L=analysis_lin.eldef.L
Linv=analysis_lin.Linv

test_I=Linv@L


ured=np.array([   5,  6,  7,  8,  9, 10, 11, 12, 17,18])


ufull_test=L@ured

ufull=np.array([0,1,2,3,   4,  5,  6,  7,  8,  9, 10, 11, 12, 13,14,15,16, 17])+1.0


ured_test=Linv@ufull

Linv2=np.linalg.pinv(L)

ured_test2=Linv2@ufull_test


#%%

# B_sub=np.atleast_2d(B[4,:])


# L_test=null(B_sub)
# 
#%%

from scipy.linalg import null_space as null

B_test1=np.array([[0,0,1,-1],[1,0,0,0]])
# B_test1=np.array([[1,0,0,0]])
# B_test1=np.array([[0,0,0,1]])
# B_test1=np.array([[0,0,1,-1]])


from beef.general import null_rational

L_test3=null_rational(B_test1)

Linv_test3=np.linalg.pinv(L_test3)

ured=np.array([[20,30]]).T
ufull=np.array([[0,20,30,30]]).T

ured_test=Linv_test3@ufull
ufull_test=L_test3@ured_test

uu=L_test3@Linv_test3@ufull


