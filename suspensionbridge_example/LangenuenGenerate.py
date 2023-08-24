# -*- coding: utf-8 -*-
"""
Created on Fri Dec 23 12:36:35 2022

@author: oyvinpet
"""

#%%

import sys

sys.path.append('C:/Cloud/OD_OWP/Work/Python/Github')

# import abaqustools
from bridgemod import suspensionbridge

from abaqustools import odbexport

#%%

UserParameterFolder=r'C:\Cloud\OD_OWP\Work\Python\Github\bridgemod\suspensionbridge_example'
UserParameterFileName='LangenuenParameters.py'

suspensionbridge.model.buildinput(UserParameterFileName,UserParameterFolder,IterateDeflection=False)


#%%

folder_odb='C:/Cloud\OD_OWP/Work/Python/Github/bridgemod/suspensionbridge_example/langenuen'
name_odb='Langenuen_test'
folder_save=folder_odb
folder_python='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/odbexport'

odbexport.export.modal(folder_odb,name_odb,folder_save,folder_python)


