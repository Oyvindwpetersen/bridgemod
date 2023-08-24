# -*- coding: mbcs -*-
#
# Abaqus/Viewer Release 2017 replay file
# Internal Version: 2016_09_27-23.54.59 126836
# Run by oyvinpet on Sun Jun 04 21:55:35 2023
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(0.0, 0.0), width=307.999969482422, 
    height=173.0)
session.viewports['Viewport: 1'].makeCurrent()
session.viewports['Viewport: 1'].maximize()
from viewerModules import *
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
o2 = session.openOdb(name='TestCable.odb')
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/develop/beef/TestCable.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       4
#: Number of Node Sets:          6
#: Number of Steps:              2
session.viewports['Viewport: 1'].setValues(displayedObject=o2)
import sys
sys.path.insert(15, r'c:/Users/oyvinpet/abaqus_plugins/ModelViewPlugin')
import ModelView
import ModelView
ModelView.ModelViewFunc(render_beams='Off', deflection=50, scalefactor=1, 
    step=-1, x_in_or_out='In')
