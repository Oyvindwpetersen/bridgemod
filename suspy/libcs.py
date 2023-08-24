# -*- coding: utf-8 -*-
"""
Created on 

@author: OWP
"""
    
#%%

import numpy as np

def recthollow(h,b,tf,tw):

    # 
    #
    #  ____ b,tf
    #  |   |
    #  |   | h,tw
    #  |   |
    #  |___|
    # 
    
    A=h*b-(h-tf*2)*(b-tw*2)
    Iy=1/12*( h**3*b - (h-tf*2)**3*(b-tw*2) )
    Iz=1/12*( h*b**3 - (h-tf*2)*(b-tw*2)**3 )
    It=(2*tw*tf*(b-tw)**2*(h-tf)**2) / ( b*tw+h*tf-tf**2-tw**2)
    
    return A,Iy,Iz,It


def rect(h,b):
    
    A=h*b
    Iy=1/12*h**3*b
    Iz=1/12*h*b**3

    d=max(h,b)
    e=min(h,b)
    
    beta=1/3-0.21*e/d*(1-1/12*(e/d)**4)
    
    It=beta*e**3*d
    
    return A,Iy,Iz,It


def circle(d):

    A=1/4*np.pi*d**2
    Iy=1/64*np.pi*d**4
    Iz=1/64*np.pi*d**4
    It=1/32*np.pi*d**4

    return A,Iy,Iz,It
    
def pipe(dy,di):

    if dy<di:
        print('dy must be bigger than di')
        dy=np.nan
        di=np.nan

    A=1/4*np.pi*(dy**2-di**2)
    Iy=1/64*np.pi*(dy**4-di**4)
    Iz=1/64*np.pi*(dy**4-di**4)
    It=1/32*np.pi*(dy**4-di**4)

    return A,Iy,Iz,It
    
