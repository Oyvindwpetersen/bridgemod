# -*- coding: utf-8 -*-
"""
Created on Tue Apr 11 10:02:12 2023

@author: oyvinpet
"""
# -*- coding: utf-8 -*-
"""
Created on 

@author: OWP
"""
    
#%%

import sys

sys.path.append(r'C:\Cloud\OD_OWP\Work\Python\Github\abaqustools')
sys.path.append(r'C:\Cloud\OD_OWP\Work\Python\Github')

import numpy as np
import putools
from abaqustools import gen,abq

#%%

A=0.221
I=1e-6
It=1e-6
rho=7850
m_ns=180

L_bridgedeck=1310

N_el_sidespan_south=20
N_el_sidespan_north=20
x_tower_south=-L_bridgedeck/2
x_tower_north=L_bridgedeck/2

z_anch_south=1.02760e+002
z_anch_north=1.02760e+002

dx_tower_anch_south=1.71204e+002
dx_tower_anch_north=1.71204e+002

dy_cable_top_south=7.25*2
dy_cable_top_north=dy_cable_top_south

dy_cable_midspan=7.25*2

dy_cable_anch_south=8.66000*2
dy_cable_anch_north=dy_cable_anch_south

dx_endpiece_max=20
dx_hanger=20


z_cable_top_south=1.87500e+002
z_cable_top_north=1.87500e+002
z_cable_midspan=7.67400e1
dz_cable_deflection=0

dx_pullback_south=0
dx_pullback_north=0


nodenum_base=[1000,2000]
elnum_base=[1000,2000]

#%%

A=0.37
I=108e-6
It=217e-6
rho=7850
m_ns=50

L_bridgedeck=1236.6

N_el_sidespan_south=30
N_el_sidespan_north=30
x_tower_south=-L_bridgedeck/2
x_tower_north=L_bridgedeck/2

z_anch_south=48
z_anch_north=z_anch_south

dx_tower_anch_south=902.5-L_bridgedeck/2
dx_tower_anch_north=dx_tower_anch_south

dy_cable_top_south=30
dy_cable_top_north=dy_cable_top_south

dy_cable_midspan=30

dy_cable_anch_south=8.66000*2
dy_cable_anch_north=dy_cable_anch_south

dx_endpiece_max=20
dx_hanger=12/2


z_cable_top_south=206.1
z_cable_top_north=z_cable_top_south
z_cable_midspan=98
dz_cable_deflection=0

dx_pullback_south=0
dx_pullback_north=0


nodenum_base=[1000,2000]
elnum_base=[1000,2000]

#%% Geometry sidespan

x_sidespan_south=np.linspace(x_tower_south-dx_tower_anch_south,x_tower_south+dx_pullback_south,N_el_sidespan_south+1)
y_sidespan_south=-np.linspace(dy_cable_anch_south/2,dy_cable_top_south/2,N_el_sidespan_south+1)
z_sidespan_south=np.linspace(z_anch_south,z_cable_top_south,N_el_sidespan_south+1)
    
x_sidespan_north=np.linspace(x_tower_north+dx_pullback_north,x_tower_north+dx_tower_anch_south,N_el_sidespan_north+1)
y_sidespan_north=-np.linspace(dy_cable_top_north/2,dy_cable_anch_north/2,N_el_sidespan_north+1)
z_sidespan_north=np.linspace(z_cable_top_north,z_anch_north,N_el_sidespan_north+1)

#%% Geometry span

    # Add hangers until exceeding limit dx_endpiece_max
x_hanger=np.array([0.0])
for k in np.arange(1000):
       
    if np.abs(x_hanger[-1]-L_bridgedeck/2)>dx_endpiece_max:
        x_hanger=np.hstack((x_hanger[0]-dx_hanger , x_hanger , x_hanger[-1]+dx_hanger))
        
    # Adjustment of hanger nodes due to deflection in x-direction
    # Nodes are moved by polynomial function shift
x_hanger_eff=x_hanger
    
x_mainspan=np.hstack((x_sidespan_south[-1] , x_hanger_eff , x_sidespan_north[0]))

    # Parabolic
z_cable_midspan_eff=z_cable_midspan+dz_cable_deflection
    
abc_coeff=np.polyfit([x_mainspan[0],0,x_mainspan[-1]],[z_cable_top_south,z_cable_midspan_eff,z_cable_top_north],2)
z_mainspan=np.polyval(abc_coeff,x_mainspan)
    
abc_coeff=np.polyfit([x_mainspan[0],0,x_mainspan[-1]],[-dy_cable_top_south/2,-dy_cable_midspan/2,-dy_cable_top_north/2],2)
y_mainspan=np.polyval(abc_coeff,x_mainspan)

#%% Assemble

x_east=np.hstack((x_sidespan_south,x_mainspan[1:-1],x_sidespan_north))
y_east=np.hstack((y_sidespan_south,y_mainspan[1:-1],y_sidespan_north))
z_east=np.hstack((z_sidespan_south,z_mainspan[1:-1],z_sidespan_north))
    
x_west=x_east
y_west=-y_east
z_west=z_east

#%% Nodes and elements

nodenum_east=nodenum_base[0]+np.arange(1,len(x_east)+1).astype(int)
elnum_east=elnum_base[0]+np.arange(1,len(x_east)).astype(int)
    
nodenum_west=nodenum_base[1]+np.arange(1,len(x_west)+1).astype(int)
elnum_west=elnum_base[1]+np.arange(1,len(x_west)).astype(int)

NodeMatrix_east=np.column_stack((nodenum_east,x_east,y_east,z_east))
ElMatrix_east=np.column_stack((elnum_east,nodenum_east[:-1],nodenum_east[1:]))

NodeMatrix_west=np.column_stack((nodenum_west,x_west,y_west,z_west))
ElMatrix_west=np.column_stack((elnum_west,nodenum_west[:-1],nodenum_west[1:]))

#%% Sets

# Node set mainspan
idx_main_east=np.arange(len(x_mainspan))-1+len(x_sidespan_south)
idx_main_west=idx_main_east

InputFileName='TestCable.inp'

fid=open(InputFileName,'w')

gen.part(fid,'cablepart')

gen.node(fid,NodeMatrix_east,'Nodes_east')
gen.node(fid,NodeMatrix_west,'Nodes_west')

gen.element(fid,ElMatrix_east,'B31','Elements_east')
gen.element(fid,ElMatrix_west,'B31','Elements_west')


Nodenumber_top=[nodenum_east[idx_main_east[0]],nodenum_east[idx_main_east[-1]],nodenum_west[idx_main_west[0]] ,nodenum_west[idx_main_west[-1]]]
Nodenumber_anch= [nodenum_east[0],nodenum_east[-1],nodenum_west[0],nodenum_west[-1]]
Nodenumber_span=np.hstack((nodenum_east[idx_main_east],nodenum_west[idx_main_west]))

gen.nset(fid,'Anch',Nodenumber_anch)
gen.nset(fid,'Top',Nodenumber_top)
gen.nset(fid,'Span',Nodenumber_span)

gen.beamgeneralsection(fid,'Elements_east',rho,[A , I , 0 , I , It],[0,1,0],[210e9,81e9])
gen.beamgeneralsection(fid,'Elements_west',rho,[A , I , 0 , I , It],[0,1,0],[210e9,81e9])

gen.nonstructuralmass(fid, 'Elements_east', 'MASS PER LENGTH', m_ns)
gen.nonstructuralmass(fid, 'Elements_west', 'MASS PER LENGTH', m_ns)

gen.partend(fid)

gen.comment(fid,'ASSEMBLY',True)

gen.assembly(fid,'cableass')

gen.instance(fid,'cablepart','cablepart')

gen.instanceend(fid)

gen.assemblyend(fid)

gen.step(fid,'NLGEO=YES, NAME=STEP1','Static')

gen.static(fid,'1e-6, 1, 1e-9, 1')

gen.gravload(fid,'new',[''],9.81)

gen.boundary(fid,'new','ANCH',[1,4,0],'cablepart')
gen.boundary(fid,'new','TOP',[2,3,0],'cablepart')

gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
gen.fieldoutput(fid,'ELEMENT',['SF'],'','FREQUENCY=100')

gen.stepend(fid)

gen.step(fid,'NLGEO=YES, NAME=STEP2','Static')

gen.static(fid,'1e-3, 1, 1e-3, 1')

gen.cload(fid, 'MOD', 'Span', 3, -863280.0,partname='Cablepart')

gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
gen.fieldoutput(fid,'ELEMENT',['SF'],'','FREQUENCY=100')

gen.stepend(fid)

fid.close()

foldername=r'C:\Cloud\OD_OWP\Work\Python\Github\abaqustools\develop\beef'
inputname='TestCable'

# abq.runjob(foldername, inputname)

#%% 

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
    A=A,
    m=rho*A+m_ns,
    I_z=I,
    I_y=I,
    E=210e9,
    J=I,
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


assembly.plot(node_labels=True, element_labels=False)

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
    

#%%
tol=dict(u=1e-6,r=1e-2)

# Step 1
forces_cable = fe.Force(force_nodelabels, 2, np.hstack([amplitudes*0, amplitudes,amplitudes]),t=[0,1,2])

forces_step1=[forces_cable]
t_step1=10.0**np.arange(-6,0+1,1)

analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t_step1,tol=tol,itmax=100)

u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)


force_nodelabels_deck=nodenum_east[idx_main_east]

loadmag_deck=8800*9.81*20*0.5
amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck

# Step 2
forces_deck = fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck]),t=[1,2])
forces_step2=[forces_cable,forces_deck]

u0_step2=u_step1[:,-1]

t_step2=10.0**np.arange(-3,0+1,1)+1

analysis_nl_step2 = fe.Analysis(assembly, forces=forces_step2,t=t_step2,tol=tol,itmax=100,u0=u0_step2)

u_step2=analysis_nl_step2.run_static(print_progress=False, return_results=True)

#%%
u_plot=u_step1

x0=NodeMatrix_east[:,1]
z0=NodeMatrix_east[:,3]

# import matplotlib.pyplot as plt
   
ind_x=[np.arange(0,len(u_plot),6)+0]
ind_y=[np.arange(0,len(u_plot),6)+1]
ind_z=[np.arange(0,len(u_plot),6)+2]

du1=u_plot[ind_x,-1].flatten()
du2=u_plot[ind_y,-1].flatten()
du3=u_plot[ind_z,-1].flatten()

plt.figure()

plt.plot(du1)
plt.plot(du2)
plt.plot(du3)
plt.show()

plt.figure()
plt.plot(x0,z0)
plt.plot(x0+du1,z0+du3)
plt.show()

