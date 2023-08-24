# -*- coding: utf-8 -*-
"""
Created on 

@author: OWP
"""
    
#%%

import numpy as np
import putools
from abaqustools import gen
from .mesh import *

#%%

def cablegeometry(fid,meta,geo,cable):
   
    cablemesh=mesh_node_el()
    
#%% Mesh size of size spans

    # if cable.N_element is not given, then find number of elements from mesh size
    if np.isnan(cable.N_element):
            
        dx=geo.x_tower_south-geo.dx_tower_anch_south    -   geo.x_tower_south+geo.dx_pullback_south
        dy=geo.dy_cable_anch_south/2    -   geo.dy_cable_top_south/2
        dz=geo.z_anch_south     -   geo.z_cable_top_south
    
        L_sidespan_south=np.sqrt(dx**2+dy**2+dz**2)
        N_el_sidespan_south=np.ceil(L_sidespan_south/cable.meshsize_approx).astype(int)
    
        dx=geo.x_tower_north-geo.dx_tower_anch_north    -   geo.x_tower_north+geo.dx_pullback_north
        dy=geo.dy_cable_anch_north/2    -    geo.dy_cable_top_north/2
        dz=geo.z_anch_north    -    geo.z_cable_top_north
        
        L_sidespan_north=np.sqrt(dx**2+dy**2+dz**2) 
        N_el_sidespan_north=np.ceil(L_sidespan_north/cable.meshsize_approx).astype(int)
    
    else:
        N_el_sidespan_south=cable.N_element
        N_el_sidespan_north=cable.N_element

#%% Geometry sidespan

    x_sidespan_south=np.linspace(geo.x_tower_south-geo.dx_tower_anch_south,geo.x_tower_south+geo.dx_pullback_south,N_el_sidespan_south+1)
    y_sidespan_south=-np.linspace(geo.dy_cable_anch_south/2,geo.dy_cable_top_south/2,N_el_sidespan_south+1)
    z_sidespan_south=np.linspace(geo.z_anch_south,geo.z_cable_top_south,N_el_sidespan_south+1)
    
    x_sidespan_north=np.linspace(geo.x_tower_north+geo.dx_pullback_north,geo.x_tower_north+geo.dx_tower_anch_south,N_el_sidespan_north+1)
    y_sidespan_north=-np.linspace(geo.dy_cable_top_north/2,geo.dy_cable_anch_north/2,N_el_sidespan_north+1)
    z_sidespan_north=np.linspace(geo.z_cable_top_north,geo.z_anch_north,N_el_sidespan_north+1)

#%% Geometry span

    # Add hangers until exceeding limit dx_endpiece_max
    x_hanger=np.array([0.0])
    for k in np.arange(1000):
       
       if np.abs(x_hanger[-1]-geo.L_bridgedeck/2)>geo.dx_endpiece_max:
           x_hanger=np.hstack((x_hanger[0]-geo.dx_hanger , x_hanger , x_hanger[-1]+geo.dx_hanger))
       else:
          meta.bridgedeck.dx_endpiece=geo.L_bridgedeck/2-x_hanger[-1]
          break
      
    # Adjustment of hanger nodes due to deflection in x-direction
    # Nodes are moved by polynomial function shift
    if np.isnan(cable.polycoeff_hanger_adjust).any():
        x_hanger_eff=x_hanger
    else:
        x_hat=x_hanger/(geo.L_bridgedeck/2) # axis from -1 to 1 along bridge deck
        dx_hanger_eff=np.polyval(cable.polycoeff_hanger_adjust,x_hat)
        x_hanger_eff=x_hanger-dx_hanger_eff
    
    x_mainspan=np.hstack((x_sidespan_south[-1] , x_hanger_eff , x_sidespan_north[0]))

    # Parabolic
    geo.z_cable_midspan_eff=geo.z_cable_midspan+geo.dz_cable_deflection
    
    abc_coeff=np.polyfit([x_mainspan[0],0,x_mainspan[-1]],[geo.z_cable_top_south,geo.z_cable_midspan_eff,geo.z_cable_top_north],2)
    z_mainspan=np.polyval(abc_coeff,x_mainspan)
    
    abc_coeff=np.polyfit([x_mainspan[0],0,x_mainspan[-1]],[-geo.dy_cable_top_south/2,-geo.dy_cable_midspan/2,-geo.dy_cable_top_north/2],2)
    y_mainspan=np.polyval(abc_coeff,x_mainspan)

#%% Assemble

    x_east=np.hstack((x_sidespan_south,x_mainspan[1:-1],x_sidespan_north))
    y_east=np.hstack((y_sidespan_south,y_mainspan[1:-1],y_sidespan_north))
    z_east=np.hstack((z_sidespan_south,z_mainspan[1:-1],z_sidespan_north))
    
    x_west=x_east
    y_west=-y_east
    z_west=z_east

#%% Nodes and elements

    nodenum_east=cable.nodenum_base[0]+np.arange(1,len(x_east)+1).astype(int)
    elnum_east=cable.elnum_base[0]+np.arange(1,len(x_east)).astype(int)
    
    nodenum_west=cable.nodenum_base[1]+np.arange(1,len(x_west)+1).astype(int)
    elnum_west=cable.elnum_base[1]+np.arange(1,len(x_west)).astype(int)
    
    cablemesh.addnode(np.column_stack((nodenum_east,x_east,y_east,z_east)),'Cable_main_east')
    cablemesh.addel(np.column_stack((elnum_east,nodenum_east[:-1],nodenum_east[1:])),'Cable_main_east',cable.eltype)
    
    cablemesh.addnode(np.column_stack((nodenum_west,x_west,y_west,z_west)),'Cable_main_west')
    cablemesh.addel(np.column_stack((elnum_west,nodenum_west[:-1],nodenum_west[1:])),'Cable_main_west',cable.eltype)
    
#%% Sets

    # Node set anchorage
    cablemesh.addnset(np.array([nodenum_east[0],nodenum_east[-1],nodenum_west[0],nodenum_west[-1]]),'Cable_main_anchorage')

    # Elset cable
    cablemesh.addelset(['Cable_main_east' , 'Cable_main_west'],'Cable_main')
    
    # Node set mainspan
    idx_main_east=np.arange(len(x_mainspan))-1+len(x_sidespan_south)
    idx_main_west=idx_main_east
    
    cablemesh.addnset(np.hstack((nodenum_east[idx_main_east],nodenum_west[idx_main_west])),'Cable_main_span')
    
    # El set mainspan
    cablemesh.addelset(np.hstack((elnum_east[idx_main_east[:-1]],elnum_west[idx_main_west[:-1]])),'Cable_main_span')

    
    # Node set cable top
    meta.cable.nodenum_top=[]
    
    cablemesh.addnset(nodenum_east[idx_main_east[0]],'Cable_main_top_south_east')
    meta.cable.nodenum_top.append(cablemesh.node_set[-1])
    
    cablemesh.addnset(nodenum_west[idx_main_west[0]],'Cable_main_top_south_west')
    meta.cable.nodenum_top.append(cablemesh.node_set[-1])

    cablemesh.addnset(nodenum_east[idx_main_east[-1]],'Cable_main_top_north_east')
    meta.cable.nodenum_top.append(cablemesh.node_set[-1])
    
    cablemesh.addnset(nodenum_west[idx_main_west[-1]],'Cable_main_top_north_west')
    meta.cable.nodenum_top.append(cablemesh.node_set[-1])
    
    cablemesh.addnset(['Cable_main_top_south_east' , 'Cable_main_top_south_west' , 'Cable_main_top_north_east' , 'Cable_main_top_north_west'],'Cable_main_top')

#%% Meta

    meta.cable.nodenum_hanger_east=nodenum_east[idx_main_east[1:-1]]
    meta.cable.nodenum_hanger_west=nodenum_west[idx_main_west[1:-1]]
    
    meta.x_hanger=x_hanger

#%% Temp support

    if cable.tempsupport==True:
        
        elnum_tempsupport=510e3+np.arange(1,cable.N_tempsupport+1)
        
        n_hanger_space=np.floor(len(x_hanger)/(cable.N_tempsupport+1)).astype(int)
        
        if np.mod(cable.N_tempsupport,2)!=1:
            cable.N_tempsupport
            raise Exception('***** Number of temp cable support must be odd')
        
        n_per_side=(cable.N_tempsupport-1)/2
        ind_temp=np.arange(1,n_per_side+1)*n_hanger_space
        idx_tempsupport=np.hstack((-np.flip(ind_temp),0,ind_temp))+(len(x_hanger)+1)/2
        idx_tempsupport=idx_tempsupport.astype('int')
        
        cablemesh.addel(np.column_stack((elnum_tempsupport,meta.cable.nodenum_hanger_east[idx_tempsupport],meta.cable.nodenum_hanger_west[idx_tempsupport])),'CABLE_TEMPSUPPORT','B31')
    

#%% Return if only mesh is needed without writing to file

    if fid is None:
        return (meta,cablemesh)
    
#%% Section

    cablemesh.generate(fid)
    
    gen.beamgeneralsection(fid,'Cable_main',cable.cs.rho,[cable.cs.A , cable.cs.I11 , cable.cs.I12 , cable.cs.I22 , cable.cs.It],cable.normaldir,[cable.cs.E,cable.cs.G])
    
    gen.nonstructuralmass(fid, 'Cable_main', 'MASS PER LENGTH', cable.nsmass)
    
    if cable.tempsupport==True:
        gen.beamgeneralsection(fid,'CABLE_TEMPSUPPORT',0,[0.01 , .01 , 0 , .01 , .01],[1,0,0],[210e9,81e9])
        #gen.release(fid,'CABLE_TEMPSUPPORT',['S1' , 'S2'],'M1')
        
#%% 

    return (meta,cablemesh)
