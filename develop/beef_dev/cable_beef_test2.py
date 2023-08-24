# -*- coding: utf-8 -*-
"""
Created on Wed Apr 12 08:49:30 2023

@author: oyvinpet
"""

# -*- coding: utf-8 -*-
"""
Created on Wed Dec  1 11:39:19 2021

@author: OWP
"""

#%%


import sys

sys.path.append('C:\Cloud\OD_OWP\Work\Python\Github\abaqustools\suspensionbridge')

import os
import numpy as np

from ypstruct import *

import putools
from ElementNormal import *
from abaqustools.fem_corot.NonLinearSolver import *
from abaqustools.fem_corot.Assembly import *
from abaqustools.fem_corot.Corot import *
from abaqustools.fem_corot.ProcessModel import *

#from NonLinearSolver import *
#from fem_corot.Assembly import *
#from fem_corot.Corot import *
#from fem_corot.ProcessModel import *



#%%

# # Node matrix
# L=1000
# dx=20
# sag=100
# x=np.arange(-L/2,L/2+dx,dx)
# y=np.zeros(np.shape(x))
# z=4*sag*x**2/L**2

# nodenumber=np.arange(1,len(x)+1)
# node_matrix1 = np.column_stack((nodenumber,x,y,z))


# element_matrix1 = np.column_stack((nodenumber[:-1],nodenumber[:-1],nodenumber[1:]))



#%% 

    
    
NodeMatrix=node_matrix_main
ElementMatrix=element_matrix_main.astype(int)
    
for k in np.arange(np.shape(ElementMatrix)[0]):
    Index1=np.nonzero(NodeMatrix[:,0]==ElementMatrix[k,1])[0]
    Index2=np.nonzero(NodeMatrix[:,0]==ElementMatrix[k,2])[0]
    
    ElementMatrix[k,1]=Index1
    ElementMatrix[k,2]=Index2
        
    
ElementType=np.ones((len(ElementMatrix),1))
    
ElementMatrix=np.hstack((ElementMatrix,ElementType)).astype('int')
    
(e2mat,e3mat)=ElementNormal(ElementMatrix,NodeMatrix)
   
ModelInfo=struct()
ModelInfo.NodeMatrix=NodeMatrix
ModelInfo.ElementMatrix=ElementMatrix

ModelInfo.e2mat=e2mat

ModelInfo.A=[  0.3]
ModelInfo.Iz=[ 1e-6]
ModelInfo.Iy=[ 1e-6]
ModelInfo.It=[ 1e-6]
ModelInfo.E=[ 210e9]
ModelInfo.G=[ 80e9]
ModelInfo.rho=[ 7850]

ModelInfo.A=[ cable_section_params['A']]
ModelInfo.Iz=[  cable_section_params['I_z']]
ModelInfo.Iy=[ cable_section_params['I_y']]
ModelInfo.It=[ cable_section_params['J']]
ModelInfo.E=[ 210e9]
ModelInfo.G=[ 80e9]
ModelInfo.rho=[ 7850]

#%% 

# NodeNoTop=[nodenumber_mid[0] , nodenumber_mid[-1]]
# NodeNoAnch=[nodenumber_side1[0] , nodenumber_side2[-1]]

NodeNoTop=[10031 , 10135]
NodeNoAnch=[10001 , 10165]

ModelInfo.DofLabel= putools.num.genlabel(node_matrix_main[:,0],['U1' , 'U2' , 'U3', 'UR1', 'UR2', 'UR3']) 
ModelInfo.DofExclude= putools.num.genlabel(NodeNoTop,[ 'U2' , 'U3', 'UR1']) + putools.num.genlabel(NodeNoAnch,['U1' , 'U2' , 'U3', 'UR1']) 

ModelInfo=ProcessModel(ModelInfo)

#%%  

P_cable=np.zeros((len(ModelInfo.DofLabel)))

P_cable[2::6]=-loadmag_dead
#P_cable[2::6]=-0.6*7850*dx

P_loadstep=[None]*1
P_loadstep[0]=P_cable
    
#%% 
        
(r,r_step,Nx,KT,RHS)=NonLinearSolver(ModelInfo,P_loadstep,LoadIncrements=6,norm_tol=1e-8)


max(r[2::6])
min(r[2::6])*1e3
max(Nx)/1e4

#%% 



    

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

    