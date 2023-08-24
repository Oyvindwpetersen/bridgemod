# -*- coding: utf-8 -*-
"""
Created on Fri Apr 14 18:53:16 2023

@author: oyvinpet
"""

#%%

import numpy as np
import putools

def block_diag_rep(A,r):

    m,n = A.shape
    out = np.zeros((r,m,r,n), dtype=A.dtype)
    diag = np.einsum('ijik->ijk',out)
    diag[:] = A
    
    return out.reshape(-1,n*r)

def blkdiag(mat, n):
    return np.kron(np.eye(n), mat)



A=np.random.randn(3,3)

t0=putools.timing.tic()

for k in np.arange(10000):
    B1=blkdiag(A,4)
    
putools.timing.toc(t0)

t0=putools.timing.tic()

for k in np.arange(10000):
    B2=block_diag_rep(A,4)
    
putools.timing.toc(t0)

############

K11=np.random.randn(2,4)
K12=np.random.randn(2,4)
K13=np.random.randn(2,4)
K14=np.random.randn(2,6)
K21=np.random.randn(3,4)
K22=np.random.randn(3,4)
K23=np.random.randn(3,4)
K24=np.random.randn(3,6)
K31=np.random.randn(3,4)
K32=np.random.randn(3,4)
K33=np.random.randn(3,4)
K34=np.random.randn(3,6)
K41=np.random.randn(5,4)
K42=np.random.randn(5,4)
K43=np.random.randn(5,4)
K44=np.random.randn(5,6)

t0=putools.timing.tic()

for k in np.arange(10000):
    
      kg = np.block([[K11, K12, K13, K14], 
                       [K21, K22, K23, K24], 
                       [K31, K32, K33, K34], 
                       [K41, K42, K43, K44]])
putools.timing.toc(t0)

def block_fast2(mat_list): #:List[List[numpy.ndarray]]
    
    if type(mat_list[0]) is not list:
        mat_list = [mat_list]
    
    n_col=[i.shape[1] for i in mat_list[0]]
    n_row=[mat_list[j][0].shape[0] for j in range(len(mat_list))]
    
    mat_out = np.zeros((sum(n_row), sum(n_col)))

    row_offset = 0
    for k in np.arange(len(n_row)):
        col_offset=0

        for j in np.arange(len(n_col)):
            mat_out[row_offset:row_offset+n_row[k],col_offset:col_offset+n_col[j]]=mat_list[k][j]
            col_offset += n_col[j]
            
        row_offset += n_row[k]
            

    return mat_out
    

    
t0=putools.timing.tic()

for k in np.arange(10000):
    
      kg2 = block_fast([[K11, K12, K13, K14], 
                       [K21, K22, K23, K24], 
                       [K31, K32, K33, K34], 
                       [K41, K42, K43, K44]])
putools.timing.toc(t0)




t0=putools.timing.tic()

for k in np.arange(10000):
    
      bb=[[K11, K12, K13, K14], 
                       [K21, K22, K23, K24], 
                       [K31, K32, K33, K34], 
                       [K41, K42, K43, K44]]
      
      
      kg3=np.array([l[0] for l in bb])


putools.timing.toc(t0)


y_true = np.asarray(bb)