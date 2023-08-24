# -*- coding: utf-8 -*-
"""
Created on Wed Apr 12 09:19:42 2023

@author: oyvinpet
"""


#%%


import sys

sys.path.append('C:\Cloud\OD_OWP\Work\Python\Github\abaqustools\suspensionbridge')

import os
import numpy as np

from ypstruct import *

#%%

# Node matrix
L=1000
dx=20
sag=100
x=np.arange(-L/2,L/2+dx,dx)
y=np.zeros(np.shape(x))
z=4*sag*x**2/L**2

nodenumber=np.arange(1,len(x)+1)
node_matrix1 = np.column_stack((nodenumber,x,y,z))


element_matrix1 = np.column_stack((nodenumber[:-1],nodenumber[:-1],nodenumber[1:]))

#%%

import numpy as np
import time

import putools
from abaqustools import gen
from abaqustools import abq


#%%

abaqus=struct()
abaqus.partname='cablepart'
abaqus.foldername=r'C:\Cloud\OD_OWP\Work\Python\Github\abaqustools\develop\testcable'
abaqus.inputname='model_cable'
abaqus.assemblyname='cableass'
abaqus.cmd=''
abaqus.jobname='model_cable'
abaqus.cpus=4

InputFileName=abaqus.foldername + '\\' + abaqus.inputname + '.inp'

fid=open(InputFileName,'w')

#%%  Part
    
gen.part(fid,abaqus.partname)

#%%  Cable Main

gen.comment(fid,'CABLE',True)

gen.node(fid,node_matrix1,'mainnode')

gen.element(fid,element_matrix1,'B31','mainel')

gen.nset(fid,'nodetop',[node_matrix1[0,0] , node_matrix1[-1,0]])
gen.nset(fid,'nodeall',node_matrix1[:,0])

gen.beamgeneralsection(fid,'mainel',0,[0.6,1e-3,0,1e-3,1e-3],[0,1,0],[210e9,80e9])

#%%  Part, instance, assembly
    
gen.partend(fid)

gen.comment(fid,'ASSEMBLY',True)

gen.assembly(fid,abaqus.assemblyname)

gen.instance(fid,abaqus.partname,abaqus.partname)

gen.instanceend(fid)

gen.assemblyend(fid)

#%%  Step

Time_step='1e-3, 1, 1e-9, 1'

gen.step(fid)

gen.static(fid,Time_step)

gen.cload(fid,'NEW',['CABLEPART.NODEALL'],3,-94200)

gen.boundary(fid,'new','NODETOP',[1,4,0],abaqus.partname)

gen.fieldoutput(fid,'NODE',['U' , 'RF' , 'COORD'],'','FREQUENCY=100')
gen.fieldoutput(fid,'ELEMENT',['SF'],'','FREQUENCY=100')

gen.stepend(fid)

#%%  Close file

fid.close()

LogicCompleted=abq.runjob(abaqus.foldername,abaqus.inputname,abaqus.jobname,abaqus.cmd,abaqus.cpus,True,True)



