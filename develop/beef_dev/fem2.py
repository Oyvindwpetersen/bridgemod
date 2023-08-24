import sys

sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')
sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github/beefp')


from beef import fe
import beef
from beef.newmark import factors as newmark_factors, factors_from_alpha

import numpy as np

from vispy import app, gloo
#app.use_app('jupyter_rfb')

import vispy
vispy.use('PyQt5')


import matplotlib.pyplot as plt
#Two sections (´deck_section´ and ´column_section´) are created with different section properties using ´fe.Section´. Furthermore, a Rayleigh damping with coefficients 
 # is defined in a dictionary.

# Deck section
deck_section_params = dict(
    A=10,
    m=5000,
    I_z=1e-2,
    I_y=1e-2,
    E=210e9,
    J=1e-2,
    poisson=0.3
    )

deck_section = fe.Section(**deck_section_params, name='Deck beam section')

# Column section
column_section_params = dict(
    A=10,
    m=5000,
    I_z=1e-2,
    I_y=1e-1,
    J=1e-2,
    E=210e9,
    poisson=0.3
    )

column_section = fe.Section(**column_section_params, name='Column beam section')

rayleigh=dict(mass=1e-3, stiffness=1e-3)
# Furthermore, the geometry and mesh of the system is made and stacked in traditional formats for node and element matrices.

# Define geometry and mesh
x = np.linspace(0,100,20)
y = x*0
z = x*0
deck_nodelabels = np.arange(1,21)

# Node matrix: deck
node_matrix1 = np.vstack([deck_nodelabels, x, y, z]).T

# Node matrix: columns
x1,y1 = x[7], y[7]
x2,y2 = x[12], y[12]
node_matrix2 = np.array([[101, x1, y1, -30],
                         [102, x1, y1, -20],
                         [103, x1, y1, -10],
                         [104, x1, y1, 0],
                         [201, x2, y2, -30],
                         [202, x2, y2, -20],
                         [203, x2, y2, -10],
                         [204, x2, y2, 0]
                        ])

# Element matrices
element_matrix1 = np.vstack([deck_nodelabels[:-1], deck_nodelabels[:-1], deck_nodelabels[1:]]).T
element_matrix2 = np.array([[101, 101, 102],
                            [102, 102, 103],
                            [103, 103, 104],
                            [201, 201, 202],
                            [202, 202, 203],
                            [203, 203, 204]]) 

sections1 = [deck_section]*element_matrix1.shape[0]
sections2 = [column_section]*element_matrix2.shape[0]
#A part for the deck and a part for the set of columns are created. Then, constraints tieing the top nodes of the columns with the deck, fixing the bottom of the columns and supporting the ends of the deck translational are created. They are then placed in an assembly together with the constraints.

# Define two parts
part1 = fe.Part(node_matrix1, element_matrix1, sections1)
part2 = fe.Part(node_matrix2, element_matrix2, sections2)

# Define constraints
master_nodes = [8,13]
slave_nodes = [104,204] 

constraints_tie = [fe.Constraint(master_nodes, slave_nodes=slave_nodes, dofs='all', node_type='beam3d')] 
constraints_fix = [fe.Constraint([101, 201], dofs='all', node_type='beam3d')]
constraints_simplysupported = [fe.Constraint([1, 20], dofs='trans', node_type='beam3d')]

constraints = constraints_tie + constraints_fix + constraints_simplysupported

# Define assembly
assembly = fe.Assembly([part1, part2], constraints=constraints)


sc, __ = assembly.plot(node_labels=True, element_labels=False)
sc


# Create analysis: linear static
forces = [fe.Force(deck_nodelabels, 1, 1000e3)] # 1000 kN laterally on all nodes
analysis = fe.Analysis(assembly, forces=forces)
u=analysis.run_lin_static(print_progress=True, return_results=True)

sc, __ = analysis.eldef.plot(overlay_deformed=True, plot_nodes=False)
sc

#%%


import matplotlib.pyplot as plt
   
ind=[np.arange(0,len(u),6)+5]

uplot=u[ind,-1]

plt.figure()
plt.plot(uplot[0])
plt.show()


