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