# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2017 replay file
# Internal Version: 2016_09_27-23.54.59 126836
# Run by oyvinpet on Tue Aug 22 07:02:05 2023
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.20703, 1.20833), width=177.675, 
    height=119.867)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile(
    'C:/Cloud/OD_OWP/Work/Python/Github/bridgemod/suspensionbridge_example/langenuen/Langenuen_test_exportmodal.py', 
    __main__.__dict__)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/bridgemod/suspensionbridge_example/langenuen/Langenuen_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       142
#: Number of Node Sets:          47
#: Number of Steps:              5
#: Time displacement 4.3021113 s
#: Time nodecoord 0.0436371 s
#: Time elconn 0.2720424
print 'RT script done'
#: RT script done
