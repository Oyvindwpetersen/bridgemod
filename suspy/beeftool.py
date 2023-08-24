# -*- coding: utf-8 -*-
"""
Created on Fri Aug 11 19:24:02 2023

@author: oyvinpet
"""

import numpy as np
from copy import deepcopy
import putools

#%%

class PartCabinet:
    
    # Class to add and remove parts in analysis.
    # Constraints are automatically activated
    # 

    def __init__(self,parts,cons=None):
    
        # Ensure list
        if isinstance(parts,list)==False:
            parts=[parts]
            
        if isinstance(cons,list)==False:
            cons=[cons]

        # List of beef parts and constraints 
        self.parts=parts
        self.cons=cons
        
        # Create list of names
        self.name_parts=[self.parts[k].name for k in np.arange(len(self.parts))]
        self.name_cons=[self.cons[k].name for k in np.arange(len(self.cons))]
        
        # Check if duplicate names
        self.list_duplicates(self.name_parts)
        #self.list_duplicates(self.name_cons)
        
        # Map dependencies
        self.create_con_part_dependency()
        
        # Set to empty
        self.name_active_parts=[]
        self.name_active_cons=[]
        
        self.idx_active_parts=[]
        self.idx_active_cons=[]
        
        self.u0=[]

        
    def list_duplicates(self,seq):
        
        # Find duplicates in list
     
        seen = set()
        seen_add = seen.add
      
        # Adds all elements it doesn't know yet to seen and all other to seen_twice
        seen_twice = set( x for x in seq if x in seen or seen_add(x) )
      
        # Turn the set into a list (as requested)
        list_dup=list( seen_twice )
      
        if len(list_dup)>0:
            print('Duplicates:')
            for el in list_dup:
                print(el)
        else:
            print('No duplicates')
    
    
    def create_con_part_dependency(self):
        
        # Map which constraints are related to which parts
        
        self.dependency=[]
        for j in np.arange(len(self.cons)):
            
            master_node=self.cons[j].node_constraints[0].master_node
            slave_node=self.cons[j].node_constraints[0].slave_node
            
            # Set to 
            if slave_node is None:
                slave_node=-999999
                
            master_node=int(master_node)
            slave_node=int(slave_node)
            
            dep=[]            
            for k in np.arange(len(self.parts)):
                
                    part_node_labels=self.parts[k].get_node_labels()
            
                    if (master_node in part_node_labels) or (slave_node in part_node_labels):
                        dep.append(k)
            
            self.dependency.append(dep)
    
    def print_dependency(self):
        
        # Print dependencies among parts and constraints
        
        print('Dependencies:')
        for j in np.arange(len(self.cons)):
            print('***** Constraint: ' + self.name_cons[j])
            for k in np.arange(len(self.dependency[j])):
                print('Part: ' + self.name_parts[self.dependency[j][k]] )
                
    
    def activate_part(self,part_name_add):
        
        # Activate parts
        # Constraints will be updated automatically
        
        # Ensure list
        if isinstance(part_name_add,list)==False:
            part_name_add=[part_name_add]
        
        for k in np.arange(len(part_name_add)):
        
            # Find index among all parts
            try:
                idx=self.name_parts.index(part_name_add[k])        
            except:        
                raise Exception('Part not found: ' + part_name_add[k])
            
            if idx in self.idx_active_parts:
            
                # If already active, give error
                print('***** Part already active, cannot activate: ' + part_name_add[k] )
            else:
            
                # Add 
                self.idx_active_parts.append(idx)
                self.name_active_parts.append(part_name_add[k])
                
        self.update_con()
        
        
    def remove_part(self,part_name_remove):
        
        # Remove parts
        # Constraints will be updated automatically
        
        # Ensure list
        if isinstance(part_name_remove,list)==False:
            part_name_remove=[part_name_remove]  
            
        for k in np.arange(len(part_name_remove)):
        
            # Find index among all parts
            try:
                idx=self.name_parts.index(part_name_remove[k])        
            except:        
                raise Exception('Part not found: ' + part_name_remove[k])
            
            if idx not in self.idx_active_parts:
            
                # If already non-active, give error
                print('***** Part already non-active, cannot remove: ' + part_name_remove[k] )
            else:
            
                # Remove
                self.idx_active_parts.remove(idx)
                self.name_active_parts.remove(part_name_remove[k])
        
        self.update_con()
        
        
    def update_con(self):
                
        # Update active constraints related to active parts
        
        # Set to empty
        self.idx_active_cons=[]
        self.name_active_cons=[]
        
        for j in np.arange(len(self.cons)):
        
            # Index of required parts for this constraint
            idx_part_required=self.dependency[j]
                
            # Check if these are active
            isact=[False]*len(idx_part_required)
            
            
            for n in np.arange(len(idx_part_required)):
            
                if idx_part_required[n] in self.idx_active_parts:
                    isact[n]=True
            
            # If all active, then activate constraint
            if all(isact):
                self.idx_active_cons.append(j)
                self.name_active_cons.append(self.name_cons[j])
            
    
    def get_active(self):
        
        # Returns active parts and constraints for analysis
        
        active_parts = [self.parts[q] for q in self.idx_active_parts]
        active_cons = [self.cons[q] for q in self.idx_active_cons]
        
        return active_parts,active_cons
        
    def print_active(self):
    
        # Print active parts and constraints, mainly used for debugging
    
        print('***** Active parts:')
        for k in np.arange(len(self.name_active_parts)):
            print('***** ' + self.name_active_parts[k])
            
        print('***** Active constraints:')
        for j in np.arange(len(self.name_active_cons)):
            print('***** ' + self.name_active_cons[j])
            
    def copy(self):
        
        # Copy of class, used to separate steps
        
        mycopy=deepcopy(self)
        
        return mycopy
        
        
    def add_u0(self,u_act_in):
    
        # Add displacement vector for currently active parts 

        #self.u_act_in=u_act_in
        #self.idx_part_u_in=self.idx_active_parts
        
        # Node labels for all parts
        node_labels=[]
        for k in np.arange(len(self.parts)):
            node_labels.append(self.parts[self.parts[k]].get_node_labels())
        
        node_labels_all=np.sort(np.concatenate(node_labels,axis=0))  
        dof_label_all=putools.num.genlabel(node_labels_all,'all')
        
        if len(np.unique(node_labels_all)) != len(node_labels_all):
            print('***** Error: node labels not unique')
        
        # Node labels for ref parts 
        node_labels=[]
        for k in np.arange(len(self.idx_active_parts)):
            node_labels.append(self.parts[self.idx_active_parts[k]].get_node_labels())
        
        node_labels_ref=np.sort(np.concatenate(node_labels,axis=0))
        dof_label_ref=putools.num.genlabel(node_labels_ref,'all')
        
        # Index of currently active parts DOFs among all DOFs
        ind_ref=putools.num.listindex(dof_label_all,dof_label_ref)
        
        if len(dof_label_ref) != len(u_act_in):
            print('***** Error: length not correct')
            print('***** Length dof_label_ref: ' + str(len(dof_label_ref)))
            print('***** Length u_act_in: ' + str(len(u_act_in)))
            
        # Fill full vector with values
        u_full=np.zeros(len(dof_label_all))
        u_full.flat[ind_ref] = u_act_in

        # Assign to be used when returned out
        self.u_full=u_full
        self.dof_label_all=dof_label_all
        
    def get_u0(self):
        
        # Get displacement vector for currently active parts
        
        # Node labels for active parts
        node_labels=[]
        for k in np.arange(len(self.idx_active_parts)):
            node_labels.append(self.parts[self.idx_active_parts[k]].get_node_labels())
        
        node_labels_act=np.sort(np.concatenate(node_labels,axis=0))      
        dof_label_act=putools.num.genlabel(node_labels_act,'all')
        
        # Index of active parts DOFs among all DOFs
        ind_act=putools.num.listindex(self.dof_label_all,dof_label_act)
        
        u0_out=self.u_full[ind_act]    
        
        return u0_out
        
    
    def __str__(self):
        return f'List of  ({len(self.parts)} parts, {len(self.cons)} constraints)'

    def __repr__(self):
        return f'List of  ({len(self.parts)} parts, {len(self.cons)} constraints)'
    
            
#%%
     

def gravityload(part_obj,g=-9.81):

    # Create gravity load amplitudes for a part
    
    # If list of part, pass to separate function
    if isinstance(part_obj,list):
    
        force_nodelabels,amplitudes=gravityloadmulti(part_obj,g=g)
        return force_nodelabels,amplitudes
    
    # Create a vector with all node labels in this part
    nodes_all=[part_obj.elements[k].nodelabels for k in range(len(part_obj.elements))]
    nodes_all=[val for sublist in nodes_all for val in sublist]
    force_nodelabels=np.unique(nodes_all)
        
    # Assign gravity loads
    amplitudes=np.zeros((len(force_nodelabels),1))
    
    for k in range(len(part_obj.elements)):
        
        # Get linear mass and length
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
    
def gravityloadmulti(part_obj_list,g=-9.81):

    # Gravity load for list of parts
    
    force_nodelabels_list=[None]*len(part_obj_list)
    amplitudes_list=[None]*len(part_obj_list)
    
    for k in np.arange(len(part_obj_list)):
    
        force_nodelabels_list[k],amplitudes_list[k]=gravityload(part_obj_list[k])
    
    force_nodelabels=np.concatenate(force_nodelabels_list)
    amplitudes=np.vstack(amplitudes_list)
    
    return force_nodelabels,amplitudes