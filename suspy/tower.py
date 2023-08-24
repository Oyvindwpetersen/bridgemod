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
sys.path.append(r'C:/Cloud/OD_OWP/Work/Python/Github/beefp')


import numpy as np
import putools
import warnings

import beef
from beef import fe
from libcs import *
from beeftool import *


def towergeo(meta,geo,tower):

    #%%  Meshing elevation

    if not np.isnan(tower.N_element):
        
        z_south_east=np.linspace(geo.z_tower_base_south,geo.z_tower_top_south,tower.N_element+1)
        z_north_east=np.linspace(geo.z_tower_base_north,geo.z_tower_top_north,tower.N_element+1)
        
    else:
        
        z_south_east=np.arange(geo.z_tower_base_south,geo.z_tower_top_south,tower.meshsize)
        z_north_east=np.arange(geo.z_tower_base_south,geo.z_tower_top_north,tower.meshsize)
        
        # Add shorter element to reach top elevation
        if z_south_east[-1]!=geo.z_tower_top_south:
            z_south_east=np.append(z_south_east,geo.z_tower_top_south)
        
        if z_north_east[-1]!=geo.z_tower_top_north:
            z_north_east=np.append(z_north_east,geo.z_tower_top_north)        
        
        
    #%%  Nodes and elements

    x_south_east=np.ones(np.shape(z_south_east))*geo.x_tower_south
    y_south_east=np.interp(z_south_east,[geo.z_tower_base_south , geo.z_tower_top_south],[-geo.dy_tower_base_south/2 , -geo.dy_tower_top_south/2])

    x_south_west=x_south_east
    y_south_west=-y_south_east
    z_south_west=z_south_east

    x_north_east=np.ones(len(z_north_east))*geo.x_tower_north
    y_north_east=np.interp(z_north_east,[geo.z_tower_base_north , geo.z_tower_top_north],[-geo.dy_tower_base_north/2 , -geo.dy_tower_top_north/2])

    x_north_west=x_north_east
    y_north_west=-y_north_east
    z_north_west=z_north_east

    nodenum_south_east=tower.nodenum_base[0]+np.arange(1,len(x_south_east)+1).astype(int)
    nodenum_south_west=tower.nodenum_base[1]+np.arange(1,len(x_south_west)+1).astype(int)
    nodenum_north_east=tower.nodenum_base[2]+np.arange(1,len(x_north_east)+1).astype(int)
    nodenum_north_west=tower.nodenum_base[3]+np.arange(1,len(x_north_west)+1).astype(int)

    elnum_south_east=tower.elnum_base[0]+np.arange(1,len(x_south_east)).astype(int)
    elnum_south_west=tower.elnum_base[1]+np.arange(1,len(x_south_west)).astype(int)
    elnum_north_east=tower.elnum_base[2]+np.arange(1,len(x_north_east)).astype(int)
    elnum_north_west=tower.elnum_base[3]+np.arange(1,len(x_north_west)).astype(int)

    nodematrix_south_east=np.column_stack((nodenum_south_east,x_south_east,y_south_east,z_south_east))
    elmatrix_south_east=np.column_stack((elnum_south_east,nodenum_south_east[:-1],nodenum_south_east[1:]))

    nodematrix_south_west=np.column_stack((nodenum_south_west,x_south_west,y_south_west,z_south_west))
    elmatrix_south_west=np.column_stack((elnum_south_west,nodenum_south_west[:-1],nodenum_south_west[1:]))

    nodematrix_north_east=np.column_stack((nodenum_north_east,x_north_east,y_north_east,z_north_east))
    elmatrix_north_east=np.column_stack((elnum_north_east,nodenum_north_east[:-1],nodenum_north_east[1:]))

    nodematrix_north_west=np.column_stack((nodenum_north_west,x_north_west,y_north_west,z_north_west))
    elmatrix_north_west=np.column_stack((elnum_north_west,nodenum_north_west[:-1],nodenum_north_west[1:]))
    
    #%%  Nodes and elements

    sections_tower_leg=[None]*len(z_south_east)

    for k in np.arange(len(z_south_east)):
        
        h_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.h_vec)
        b_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.b_vec)
        t_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.t_vec)
        
        A,Iy,Iz,It=recthollow(h_interp,b_interp,t_interp,t_interp)
        
        # Tower section
        cable_section_params=dict(
        A=A,
        m=tower.cs.rho*A,
        I_y=Iy,
        I_z=Iz,
        E=tower.cs.E,
        J=It,
        poisson=0.3
        )
        
        sections_tower_leg[k]=fe.Section(**cable_section_params, name='Tower_section_' + str(k+1))

    # Section
    sections_tower=sections_tower_leg*4
    
    # Part
    part_tower_leg_south_east=fe.Part(nodematrix_south_east, elmatrix_south_east, sections_tower_leg,name='leg_south_east')
    part_tower_leg_south_west=fe.Part(nodematrix_south_west, elmatrix_south_west, sections_tower_leg,name='leg_south_west')
    part_tower_leg_north_east=fe.Part(nodematrix_north_east, elmatrix_north_east, sections_tower_leg,name='leg_north_east')
    part_tower_leg_north_west=fe.Part(nodematrix_north_west, elmatrix_north_west, sections_tower_leg,name='leg_north_west')

    part_tower_leg=[part_tower_leg_south_east,part_tower_leg_south_west,part_tower_leg_north_east,part_tower_leg_north_west]

    # Define constraints
    con_ground_south_east=fe.Constraint([nodenum_south_east[0]], dofs=[0,1,2,3,4,5], name='tower_ground_south_east')
    con_ground_south_west=fe.Constraint([nodenum_south_west[0]], dofs=[0,1,2,3,4,5], name='tower_ground_south_west')
    con_ground_north_east=fe.Constraint([nodenum_north_east[0]], dofs=[0,1,2,3,4,5], name='tower_ground_north_east')
    con_ground_north_west=fe.Constraint([nodenum_north_west[0]], dofs=[0,1,2,3,4,5], name='tower_ground_north_west')

    con_tower_ground=[con_ground_south_east,con_ground_south_west,con_ground_north_east,con_ground_north_west]
    
    # force_nodelabels1,amp1=gravityload(part_tower_leg_south_east)
    # force_nodelabels2,amp2=gravityload(part_tower_leg_south_west)
    # force_nodelabels3,amp3=gravityload(part_tower_leg_north_east)
    # force_nodelabels4,amp4=gravityload(part_tower_leg_north_west)
    
    # # Step 1
    # forces_1=fe.Force(force_nodelabels1, 2, np.hstack([amp1*0, amp1,amp1]),t=[0,1,2])
    # forces_2=fe.Force(force_nodelabels2, 2, np.hstack([amp2*0, amp2,amp2]),t=[0,1,2])
    # forces_3=fe.Force(force_nodelabels3, 2, np.hstack([amp3*0, amp3,amp3]),t=[0,1,2])
    # forces_4=fe.Force(force_nodelabels4, 2, np.hstack([amp4*0, amp4,amp4]),t=[0,1,2])

    # forces_step1=[forces_1,forces_2,forces_3,forces_4]
    
    
    meta.tower.nodenum_top=[nodenum_south_east[-1],nodenum_south_west[-1],nodenum_north_east[-1],nodenum_north_west[-1]]
    
    
    return part_tower_leg,con_tower_ground,meta
    
    #%%  Nodes and elements

    S_or_N=['SOUTH','NORTH']


    nodenum_crossbeam=[None]*(len(tower.z_crossbeam_south)+len(tower.z_crossbeam_north))
    
    for j in [0,1]:
    
        if j==0:
            z_crossbeam_all=tower.z_crossbeam_south
        elif j==1:
            z_crossbeam_all=tower.z_crossbeam_north
    
        for k in np.arange(len(z_crossbeam_all)):
            
            L_cc_towers=np.abs(np.interp(z_crossbeam_all[k],z_south_east,y_south_east))*2
            b_tower=np.interp(z_crossbeam_all[k],tower.cs.z_vec,tower.cs.b_vec)
            L_crossbeam=L_cc_towers-b_tower
            
            if L_crossbeam<0:
                warnings.warn('***** Cross-beam length smaller than 0.5 m. Set to 0.5 m.')
                L_crossbeam=0.5
            
            
            y_crossbeam=np.array([-L_crossbeam/2,-L_crossbeam/4,0,L_crossbeam/4,L_crossbeam/2])
            
            if k==0: # Crossbeam at bridge deck level
                if np.isnan(geo.gap):
                    y_crossbeam[2]=geo.y_bearing_box1
                else:
                    y_crossbeam[1]=geo.y_bearing_box1
                    y_crossbeam[3]=geo.y_bearing_box2
            
            # If y_crossbeam not sorted, pendulums are outside crossbeam (crashing with tower)
            logic_sort_warn=np.any(np.diff(y_crossbeam)<0)
            y_crossbeam=np.sort(y_crossbeam)
            
            if logic_sort_warn:
                    warnings.warn('***** Lower pendulum node appears to be outside crossbeam, consider moving inwards')
                
            if j==0:
                x_crossbeam=geo.x_tower_south*np.ones(np.shape(y_crossbeam))
            elif j==1:
                x_crossbeam=geo.x_tower_north*np.ones(np.shape(y_crossbeam))
            
            z_crossbeam=z_crossbeam_all[k]*np.ones(np.shape(y_crossbeam))
            
            # Assume this number is free
            nodenum_crossbeam=tower.nodenum_base[j*2]+1e3+1e2*k+np.arange(1,len(x_crossbeam)+1)
            
            nodenum_crossbeam
            
            towermesh.addnode(np.column_stack((nodenum_crossbeam,x_crossbeam,y_crossbeam,z_crossbeam)),'Tower_crossbeam_' + S_or_N[j] + '_' + str(k+1))
            towermesh.addel(np.column_stack((nodenum_crossbeam[0:-1],nodenum_crossbeam[:-1],nodenum_crossbeam[1:])),'Tower_crossbeam_' + S_or_N[j] + '_' + str(k+1),'B31')
            
            
            
            
            elset_crossbeam.append('Tower_crossbeam_' + S_or_N[j] + '_' + str(k+1))
            
            towermesh.addnset(nodenum_crossbeam[0],'Tower_crossbeam_' + S_or_N[j] + '_' + str(k+1) + '_start')
            towermesh.addnset(nodenum_crossbeam[-1],'Tower_crossbeam_' + S_or_N[j] + '_' + str(k+1) + '_end')
            
           # Meta to bearing
            if k==0:
                
                for n in np.arange(N_box):
                
                    if n==0:
                        meta.crossbeamlow.nodenum_bearing_box1[j]=nodenum_crossbeam[[1,2,3]]
                        meta.crossbeamlow.nodecoord_bearing_box1[j]=np.column_stack((x_crossbeam[[1,2,3]],y_crossbeam[[1,2,3]],z_crossbeam[[1,2,3]])).T
                    elif n==1:
                        meta.crossbeamlow.nodenum_bearing_box2[j]=nodenum_crossbeam[[4,5,6]]
                        meta.crossbeamlow.nodecoord_bearing_box2[j]=np.column_stack((x_crossbeam[[4,5,6]],y_crossbeam[[4,5,6]],z_crossbeam[[4,5,6]])).T
   
                        
            
    
    towermesh.addelset(elset_crossbeam,'Tower_crossbeam')
    towermesh.addelset(['Tower_leg' , 'Tower_crossbeam'],'Tower')

#%%  Generate

    towermesh.generate(fid)

#%%  Section

    if tower.cs.type.upper()=='BOX':

        for k in np.arange(len(elnum_north_east)):
            
            h_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.h_vec)
            b_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.b_vec)
            t_interp=np.interp(z_north_east[k],tower.cs.z_vec,tower.cs.t_vec)
            
            gen.beamsection(fid,'Tower_south_cs_' + str(k+1).zfill(3),'CONCRETE','BOX',[b_interp,h_interp,t_interp,t_interp,t_interp,t_interp],tower.normaldir)
            gen.beamsection(fid,'Tower_north_cs_' + str(k+1).zfill(3),'CONCRETE','BOX',[b_interp,h_interp,t_interp,t_interp,t_interp,t_interp],tower.normaldir)
            

    for k in np.arange(len(z_crossbeam_all)):
        elset=[ 'Tower_crossbeam_SOUTH' + '_' + str(k+1) , 'Tower_crossbeam_NORTH' + '_' + str(k+1)]
        gen.beamsection(fid,elset,'CONCRETE','BOX',[tower.b_crossbeam[k],tower.h_crossbeam[k],tower.t_crossbeam[k],tower.t_crossbeam[k],tower.t_crossbeam[k],tower.t_crossbeam[k]],[1,0,0])
