# -*- coding: utf-8 -*-
"""
Created on Sat Aug 12 08:43:56 2023

@author: oyvinpet
"""

# -*- coding: utf-8 -*-
"""
Created on 

@author: OWP
"""
    
#%%

import sys
sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')

import numpy as np
import putools
import warnings

from ypstruct import * 

sys.path.append(r'C:/Cloud/OD_OWP/Work/Python/Github/beefp')

from tower import *

import beef
from beef import fe

from beef.newmark import factors as newmark_factors, factors_from_alpha

import numpy as np

from vispy import app, gloo
#app.use_app('jupyter_rfb')

import matplotlib.pyplot as plt


import bridgemod.suspensionbridge
from bridgemod.suspensionbridge import processpar


UserParameterFile=r'C:\Cloud\OD_OWP\Work\Python\Github\bridgemod\suspensionbridge_example\SulafjordenParameters.py'
abaqus,bearing,bridgedeck,cable,geo,hanger,modal,sadle,step,tower=processpar(UserParameterFile)

#%%  Generate some structures

meta=struct()
meta.bridgedeck=struct()
meta.cable=struct()
meta.bearing=struct()
meta.crossbeamlow=struct()
meta.tower=struct()

part_tower_leg,con_tower_ground,meta=towergeo(meta,geo,tower)




import beeftool

test=beeftool.PartCabinet(part_tower_leg,con_tower_ground)

test.activate_part('leg_south_east')
test.activate_part('leg_south_west')

test.print_dependency()
test.print_active()

test3=test.copy()
test3.remove_part('leg_south_west')
test3.activate_part('leg_south_east')

test3.print_active()

    
assembly = fe.Assembly(part_tower_leg, constraints=con_tower_ground,include_linear_kg=True)
    

   
force_nodelabels,amp=gravityload(part_tower_leg)
# Step 1

forces_1 = fe.Force(force_nodelabels, 2, np.hstack([amp*0, amp,amp]),t=[0,1,2])

t_step1=10.0**np.arange(-5,0+1,1)

tol=dict(u=1e-6,r=1e-2)

analysis_nl_step1 = fe.Analysis(assembly, forces=[forces_1],t=t_step1,tol=tol,itmax=100)

u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)
 
v_step1=analysis_nl_step1.run_lin_static(print_progress=False, return_results=True)


pl = analysis_nl_step1.eldef.plot(node_labels=False, element_labels=False, plot_nodes=True, plot_states=['undeformed', 'deformed'], show=False)
pl.view_xy()
pl.show()


# #%%
u_plot=u_step1[:,-1]
v_plot=v_step1[:,-1]


import matplotlib.pyplot as plt
       
ind_x=[np.arange(0,len(u_plot),6)+0]
ind_y=[np.arange(0,len(u_plot),6)+1]
ind_z=[np.arange(0,len(u_plot),6)+2]

du1=u_plot[ind_x].flatten()
du2=u_plot[ind_y].flatten()
du3=u_plot[ind_z].flatten()

dv1=v_plot[ind_x].flatten()
dv2=v_plot[ind_y].flatten()
dv3=v_plot[ind_z].flatten()

plt.figure()

plt.plot(du1,label='u1')
plt.plot(du2,label='u2')
plt.plot(du3,label='u3')

plt.plot(dv1,label='u1', linestyle='--')
plt.plot(dv2,label='u2', linestyle='--')
plt.plot(dv3,label='u3', linestyle='--')


# plt.legend()
#plt.show()

# plt.figure()
# plt.plot(x0,z0)
# plt.plot(x0+du1,z0+du3)
# plt.show()


