# -*- coding: utf-8 -*-
"""
Created on Wed Dec  1 11:39:19 2021

@author: OWP
"""

#%%

import os
import numpy as np

from ypstruct import *

from .cable import *

import putools


#%%

def estimatecabledeflectionmain(meta,cable,bridgedeck,tower,geo):

    cable.N_def_iter=3
    
    dx_pullback_south_iter=np.zeros(cable.N_def_iter)*np.nan
    dx_pullback_north_iter=np.zeros(cable.N_def_iter)*np.nan
    dz_cable_deflection_iter=np.zeros(cable.N_def_iter)*np.nan
    
    dx_pullback_south_initial=geo.dx_pullback_south
    dx_pullback_north_initial=geo.dx_pullback_north

    for iter in np.arange(cable.N_def_iter):
  
        (r_step,Nx,IndexSpan1_U1,IndexSpan2_U1,IndexSpan1_U2,IndexSpan2_U2,IndexSpan1_U3,IndexSpan2_U3,IndexSpan1TopSouth_U1,IndexSpan1TopNorth_U1)=EstimateCableDeflectionSub(meta,cable,bridgedeck,geo)
        
        geo.dx_pullback_south=-r_step[-1][IndexSpan1TopSouth_U1]
        geo.dx_pullback_north=-r_step[-1][IndexSpan1TopNorth_U1]
        geo.dz_cable_deflection=-np.min(r_step[-1][IndexSpan1_U3])
        
        dx_pullback_south_iter[iter]=geo.dx_pullback_south
        dx_pullback_north_iter[iter]=geo.dx_pullback_north
        dz_cable_deflection_iter[iter]=geo.dz_cable_deflection
        
        if not np.isnan(cable.cs.sigma_target):
            cable.cs.A=np.max(Nx)/(cable.cs.sigma_target)
    
    putools.txt.starprint([
    'Initial dz_cable_deflection=' + putools.num.num2strf(dz_cable_deflection_iter[0],3) + ' m' ,
    'Iterated dz_cable_deflection=' + putools.num.num2strf(dz_cable_deflection_iter[-1],3) + ' m'])

    putools.txt.starprint(['Initial dx_pullback_south=' + putools.num.num2strf(dx_pullback_south_initial,3) + ' m' ,
    'Iterated dx_pullback_south=' + putools.num.num2strf(dx_pullback_south_iter[-1],3) + ' m'])
    
    putools.txt.starprint(['Initial dx_pullback_north=' + putools.num.num2strf(dx_pullback_north_initial[0],3) + ' m' ,
    'Iterated dx_pullback_north=' + putools.num.num2strf(dx_pullback_north_iter,3) + ' m'])

    #%%  Displacement in x-dir

    U1_hanger=r_step[-1][IndexSpan1_U1[1:-1]]
    x_hat=meta.x_hanger/(geo.L_bridgedeck/2)
    cable.polycoeff_hanger_adjust=np.polyfit(x_hat,U1_hanger,3)

    #%%  Tower 

    geo.dx_pullback_south=dx_pullback_south_iter[-1]
    geo.dx_pullback_north=dx_pullback_north_iter[-1]
    
    # tower.F_pullback_south=geo.dx_pullback_south*tower.K_south
    # tower.F_pullback_north=geo.dx_pullback_north*tower.K_north
    
    #%%  Displacement of bridge deck
    
    dz_cog_midspan_deflection_initial=geo.dz_cog_midspan_deflection
    
    (r_step2,Nx,IndexSpan1_U1,IndexSpan2_U1,IndexSpan1_U2,IndexSpan2_U2,IndexSpan1_U3,IndexSpan2_U3,IndexSpan1TopSouth_U1,IndexSpan1TopNorth_U1)=EstimateCableDeflectionSub(meta,cable,bridgedeck,geo,cableonly=True)
   
    U3_temp1=dz_cable_deflection_iter[-1]-(-np.min(r_step2[0][IndexSpan1_U3]))

    geo.dz_cog_midspan_deflection=U3_temp1

    putools.txt.starprint(['Initial dz_cog_midspan_deflection=' + putools.num.num2strf(dz_cog_midspan_deflection_initial,3) + ' m' , 
    'Iterated dz_cog_midspan_deflection=' + putools.num.num2strf(geo.dz_cog_midspan_deflection,3) + ' m'])

    return (cable,geo)

#%% 

#def estimatecabledeflectionsub(meta,cable,bridgedeck,geo,cableonly=False):
    
    (meta_,cablemesh_temp)=cablegeometry(None,meta,geo,cable)
    
    
    # Debug
    cablemesh_temp.node_matrix[0][:,2]=-10
    cablemesh_temp.node_matrix[1][:,2]=10
    
    # Debug
    #node_matrix_cable=np.vstack((cablemesh_temp.node_matrix[0],cablemesh_temp.node_matrix[1]))
    node_matrix_cable=np.vstack((cablemesh_temp.node_matrix[0]))

    
    #el_matrix_cable=np.vstack((cablemesh_temp.el_matrix[0],cablemesh_temp.el_matrix[1]))
    el_matrix_cable=np.vstack((cablemesh_temp.el_matrix[0]))
    el_matrix_tempsupport=cablemesh_temp.el_matrix[2]
    
    #el_matrix=np.vstack((cablemesh_temp.el_matrix)).astype(int)

    
    import sys
    
    sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')
    sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github/beefp')
    
    from beef import fe
    import beef
    from beef.newmark import factors as newmark_factors, factors_from_alpha
    
    #import numpy as np
    
    #from vispy import app, gloo
    #app.use_app('jupyter_rfb')
    
    import matplotlib.pyplot as plt
    #Two sections (´deck_section´ and ´column_section´) are created with different section properties using ´fe.Section´. Furthermore, a Rayleigh damping with coefficients 
     # is defined in a dictionary.

    # Cable section
    cable_section_params = dict(
        A=cable.cs.A,
        m=cable.cs.rho*cable.cs.A+cable.nsmass,
        I_y=cable.cs.I11,
        I_z=cable.cs.I22,
        E=cable.cs.E,
        J=cable.cs.It,
        poisson=0.3
        )
    
    # Deck section
    cable_section_params = dict(
        A=0.2,
        m=1816,
        I_z=1e-6,
        I_y=1e-6,
        E=210e9,
        J=1e-6,
        poisson=0.3
        )
    
    
    cable_section = fe.Section(**cable_section_params, name='Cable section')
    
    # Temp support section
    tempsupport_section_params = dict(
        A=0.1,
        m=10,
        I_y=1,
        I_z=1,
        E=210e9,
        J=1,
        poisson=0.3
        )
    
    tempsupport_section = fe.Section(**tempsupport_section_params, name='Temp support section')
    
    # Section
    sections_cable = [cable_section]*el_matrix_cable.shape[0]
    #sections_tempsupport = [tempsupport_section]*el_matrix_tempsupport.shape[0]

    # Part
    part_cable = fe.Part(node_matrix_cable, el_matrix_cable, sections_cable,include_linear_kg=True)
    #part_tempsupport = fe.Part(node_matrix_cable, el_matrix_tempsupport, sections_tempsupport,include_linear_kg=True)

    # Define constraints
    
    TopNames=['Cable_main_top_south_east' , 'Cable_main_top_south_west', 'Cable_main_top_north_east', 'Cable_main_top_north_west']
    idx=[cablemesh_temp.node_set_name.index(s) for s in TopNames]
    NodesTop=[int(cablemesh_temp.node_set[idx[0]]) , int(cablemesh_temp.node_set[idx[1]]) , int(cablemesh_temp.node_set[idx[2]]) , int(cablemesh_temp.node_set[idx[3]]) ]    
    constraints_top = [fe.Constraint(NodesTop, dofs=[1,2], node_type='beam3d',name='Tower top')]
    
    TopNames=['Cable_main_top_south_east' , 'Cable_main_top_north_east']
    idx=[cablemesh_temp.node_set_name.index(s) for s in TopNames]
    NodesTop=[int(cablemesh_temp.node_set[idx[0]]) ,  int(cablemesh_temp.node_set[idx[1]]) ]    
    constraints_top = [fe.Constraint(NodesTop, dofs=[1,2], node_type='beam3d',name='Tower top')]
    
    AnchNames=['Cable_main_anchorage' ]
    idx=[cablemesh_temp.node_set_name.index(s) for s in AnchNames]
    
    NodesAnch=cablemesh_temp.node_set[idx[0]].astype(int)  
    NodesAnch=NodesAnch [0:2]
    constraints_anch = [fe.Constraint(NodesAnch, dofs=[0,1,2,3], node_type='beam3d',name='Cable anch')]
    
    constraints = constraints_top+constraints_anch
    
    NodesCon1=np.arange(10000,10031+1)
    consraints_new1 = [fe.Constraint(NodesCon1, dofs=[0,1,2,3], node_type='beam3d',name='Cable anch')]
    
    NodesCon2=np.arange(10135,10165+1)
    consraints_new1 = [fe.Constraint(NodesCon2, dofs=[0,1,2,3], node_type='beam3d',name='Cable anch')]
         
     
    constraints = consraints_new1+consraints_new1
    
    # Define assembly
    #assembly = fe.Assembly([part_cable,part_tempsupport], constraints=constraints,include_linear_kg=True)
    assembly = fe.Assembly([part_cable], constraints=constraints,include_linear_kg=True)
    
    sc, __ = assembly.plot(node_labels=True, element_labels=False)
    
    
    
    
    
    
#%%
    
    tol=dict(u=1e-9,r=1e-2)

    force_nodelabels_cable,amp_grav_cable=gravityload(part_cable)
    forces_cable = fe.Force(force_nodelabels_cable, 2, np.hstack([amp_grav_cable*0, amp_grav_cable]),t=[0,1])

    # Step 1
    
    forces_step1=[forces_cable]
    t_step1=10.0**np.arange(-6,0+1,1)
    
    analysis_nl_step1 = fe.Analysis(assembly, forces=forces_step1,t=t_step1,tol=tol,itmax=30)
    u_step1=analysis_nl_step1.run_static(print_progress=False, return_results=True)
    
    

    #force_nodelabels_deck,amp_grav_cable=gravityload(part_cable)
    
    
    force_nodelabels_deck=nodenum_east[idx_main_east]
    
    loadmag_deck=8800*9.81*20*0.5
    amplitudes_deck = np.ones((len(force_nodelabels_deck),1))*-loadmag_deck
    
    
    forces_deck = fe.Force(force_nodelabels_deck, 2, np.hstack([amplitudes_deck*0, amplitudes_deck,amplitudes_deck]),t=[1,2,10])

    

    
    sc, __ = assembly.plot(node_labels=True, element_labels=False)
    
    # Step 2
    forces_step2=[forces_cable,forces_deck]
    t_step2=10.0**np.arange(-3,0+1,1)+1
    
    u0_step2=u_step1[:,-1]
    
    analysis_nl_step2 = fe.Analysis(assembly, forces=forces_step2,t=t_step2,tol=tol,itmax=100,u0=u0_step2)
    
    u_step2=analysis_nl_step2.run_static(print_progress=False, return_results=True)
    
#%%  
    
    NodeNoSpan=cablemesh_temp.NodeSet[ putools.num.listindex(cablemesh_temp.NodeSetName,'Cable_main_span')[0] ]
    
#%% 
        
    (r,r_step,Nx,KT,RHS)=NonLinearSolver(ModelInfo,P_loadstep,LoadIncrements=6,norm_tol=1e-8)

#%% 
    
    NodeNoSpan1=NodeNoSpan[NodeNoSpan<15e3]
    NodeNoSpan2=NodeNoSpan[NodeNoSpan>15e3]
    
    IndexSpan1_U1=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan1,['U1']))
    IndexSpan2_U1=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan2,['U1']))
    
    IndexSpan1_U2=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan1,['U2']))
    IndexSpan2_U2=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan2,['U2']))
    
    IndexSpan1_U3=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan1,['U3']))
    IndexSpan2_U3=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoSpan2,['U3']))
    
    IndexSpan1TopSouth_U1=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoTop[0],['U1']))[0]
    IndexSpan1TopNorth_U1=putools.num.listindex(ModelInfo.DofLabel,putools.num.genlabel(NodeNoTop[2],['U1']))[0]
    
    return r_step,Nx,IndexSpan1_U1,IndexSpan2_U1,IndexSpan1_U2,IndexSpan2_U2,IndexSpan1_U3,IndexSpan2_U3,IndexSpan1TopSouth_U1,IndexSpan1TopNorth_U1
    
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
    
    
#%% 

    # import matplotlib.pyplot as plt
    
    # plt.figure()
    # plt.plot(r_step[0][IndexSpan1_U3])
    # plt.plot(r_step[1][IndexSpan1_U3])
    # plt.show()
    
    # plt.figure()
    # plt.plot(r_step[0][IndexSpan1_U2])
    # plt.plot(r_step[0][IndexSpan2_U2])
    # plt.show()
    
    # plt.figure()
    # plt.plot(r_step[0][IndexSpan1_U1])
    # plt.plot(r_step[1][IndexSpan1_U1])
    # plt.show()
    
    # plt.ylabel('some numbers')
    # plt.show()
    