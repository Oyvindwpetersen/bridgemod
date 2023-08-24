# -*- coding: mbcs -*-
#
# Abaqus/Viewer Release 2017 replay file
# Internal Version: 2016_09_27-23.54.59 126836
# Run by oyvinpet on Mon Apr 10 11:42:58 2023
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(0.0, 0.0), width=307.999969482422, 
    height=138.716674804688)
session.viewports['Viewport: 1'].makeCurrent()
session.viewports['Viewport: 1'].maximize()
from viewerModules import *
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
o2 = session.openOdb(name='Sulafjorden_test.odb')
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].setValues(displayedObject=o2)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7863.23, 
    farPlane=10706.9, width=370.737, height=136.328, viewOffsetX=-48.9834, 
    viewOffsetY=127.827)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7812.31, 
    farPlane=10830.3, width=368.336, height=135.445, cameraPosition=(6258.37, 
    -6910.83, 358.441), cameraUpVector=(0.186642, 0.660554, 0.727209), 
    cameraTarget=(49.2637, -19.4594, -51.6547), viewOffsetX=-48.6662, 
    viewOffsetY=126.999)
session.viewports['Viewport: 1'].view.setValues(nearPlane=8346.6, 
    farPlane=10157.6, width=393.527, height=144.708, cameraPosition=(-3507.64, 
    -8555.17, 613.898), cameraUpVector=(0.588522, 0.180984, 0.787964), 
    cameraTarget=(13.3389, 10.2794, -55.3756), viewOffsetX=-51.9945, 
    viewOffsetY=135.685)
import sys
sys.path.insert(15, r'c:/Users/oyvinpet/abaqus_plugins/ModalViewPlugin')
import ModalView
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
session.viewports['Viewport: 1'].view.setValues(nearPlane=1665.8, 
    farPlane=5139.79, width=934.725, height=343.718, viewOffsetX=5.34497, 
    viewOffsetY=42.8663)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=10)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1592.07, 
    farPlane=5184.98, width=1213.62, height=446.275, viewOffsetX=46.8161, 
    viewOffsetY=31.7413)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=13 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=14 )
session.viewports['Viewport: 1'].view.setValues(nearPlane=1713.65, 
    farPlane=5059.67, width=634.519, height=233.326, viewOffsetX=33.6259, 
    viewOffsetY=-54.4684)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=13 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=10 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=9 )
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1789.58, 
    farPlane=4985.08, width=117.18, height=43.0896, viewOffsetX=-21.287, 
    viewOffsetY=-10.1315)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
#: 
#: Node: SUSPENSIONBRIDGE.12351
#:                                         1             2             3        Magnitude
#: Base coordinates:                  5.30015e-001,  2.29945e+001,  7.91812e+001,      -      
#: No deformed coordinates for current plot.
session.viewports['Viewport: 1'].view.setValues(nearPlane=1807.59, 
    farPlane=4967.09, width=72.3621, height=26.6091, viewOffsetX=-22.6201, 
    viewOffsetY=-8.20907)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='S', outputPosition=INTEGRATION_POINT, refinement=(INVARIANT, 
    'Mises'), )
session.viewports['Viewport: 1'].odbDisplay.display.setValues(
    plotState=CONTOURS_ON_DEF)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1278.78, 
    farPlane=5863.83, width=3297.49, height=1212.55, viewOffsetX=211.808, 
    viewOffsetY=-46.7937)
session.viewports['Viewport: 1'].odbDisplay.commonOptions.setValues(
    deformationScaling=AUTO)
#: 
#: Element: SUSPENSIONBRIDGE.3001002
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 20110, 12357
#:   S, Mises (Not averaged): NoValue
session.viewports['Viewport: 1'].view.setValues(nearPlane=1806.61, 
    farPlane=4968.07, width=69.3342, height=25.4956, viewOffsetX=-17.3547, 
    viewOffsetY=-10.3816)
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='SF', outputPosition=INTEGRATION_POINT, refinement=(
    COMPONENT, 'SF1'), )
#: 
#: Element: SUSPENSIONBRIDGE.3001002
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 20110, 12357
#:   SF, SF1 (Not averaged): 298126
#: 
#: Element: SUSPENSIONBRIDGE.20110
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 20110, 20111
#:   SF, SF1 (Not averaged): 4.32292e+08
#: 
#: Element: SUSPENSIONBRIDGE.90060
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 12357, 20111
#:   SF, SF1 (Not averaged): 2.2039e+06
#: 
#: Element: SUSPENSIONBRIDGE.3001004
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 20108, 12345
#:   SF, SF1 (Not averaged): 300850
#: 
#: Element: SUSPENSIONBRIDGE.90056
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 12333, 20107
#:   SF, SF1 (Not averaged): 2.35124e+06
session.viewports['Viewport: 1'].view.setValues(nearPlane=1792.29, 
    farPlane=4982.39, width=177.491, height=74.2291, viewOffsetX=3.05937, 
    viewOffsetY=-18.6952)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=5)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=7)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1186.47, 
    farPlane=5666.52, width=3378.3, height=1412.85, viewOffsetX=1059.16, 
    viewOffsetY=-10.3068)
session.viewports['Viewport: 1'].odbDisplay.commonOptions.setValues(
    deformationScaling=UNIFORM)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1653.99, 
    farPlane=5122.76, width=885.985, height=370.531, viewOffsetX=137.122, 
    viewOffsetY=-3.06794)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=8)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=9)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1793.83, 
    farPlane=4980.84, width=110.192, height=46.0839, viewOffsetX=-7.03819, 
    viewOffsetY=-10.8733)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=10)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=11)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1764.34, 
    farPlane=5010.35, width=130.391, height=54.5312, viewOffsetX=4.44465, 
    viewOffsetY=-4.00027)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=12)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=13)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=14)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1437.5, 
    farPlane=5335.81, width=2313.87, height=967.694, viewOffsetX=707.663, 
    viewOffsetY=11.6601)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=2 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=3 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=4 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=5 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=6 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=7 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=8 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=9 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=10 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=9 )
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1731.24, 
    farPlane=5043.43, width=361.296, height=151.099, viewOffsetX=-16.8489, 
    viewOffsetY=3.0359)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=8 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=9 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=10 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=100 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=99 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=98 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=97 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=96 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=95 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=94 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=93 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=92 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=91 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=90 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=89 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=88 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=87 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=86 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=85 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=0 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=1 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=2 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=3 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=4 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=5 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=6 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=7 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=8 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=9 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=10 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=13 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].view.setValues(nearPlane=1640.72, 
    farPlane=5133.96, width=1089, height=455.437, viewOffsetX=-146.132, 
    viewOffsetY=-59.9188)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=12 )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=11 )
session.viewports['Viewport: 1'].view.setValues(nearPlane=1770.87, 
    farPlane=5003.81, width=260.982, height=109.146, viewOffsetX=-32.5436, 
    viewOffsetY=-30.3384)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1613.21, 
    farPlane=5161.47, width=957.061, height=400.256, viewOffsetX=90.2531, 
    viewOffsetY=49.8758)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step=4, frame=10 )
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1779.4, 
    farPlane=4995.23, width=48.0479, height=20.0943, viewOffsetX=-719.787, 
    viewOffsetY=-207.334)
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.commonOptions.setValues(
    deformationScaling=AUTO)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1816.02, 
    farPlane=4958.67, width=18.2207, height=7.62017, viewOffsetX=-746.137, 
    viewOffsetY=-207.475)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.60000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Displacement (unscaled):           5.33751e-003, -3.39496e-004, -8.61668e-003,  1.01416e-002
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.60000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Displacement (unscaled):           5.33751e-003, -3.39496e-004, -8.61668e-003,  1.01416e-002
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401005, SUSPENSIONBRIDGE.401002
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000,  2.00000e+000,  2.00000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):     -2.29492e-001,  3.78895e-003,  7.28962e-001,  7.64242e-001
#: Deformed distance (scaled):       -2.29492e-001,  3.78895e-003,  7.28962e-001,  7.64242e-001
#: Relative displacement (unscaled): -2.29410e-001,  3.78889e-003, -1.27104e+000,  1.29158e+000
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=1814.07, 
    farPlane=4960.61, width=32.5528, height=13.614, viewOffsetX=-740.997, 
    viewOffsetY=-208.516)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=ON)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1811.76, 
    farPlane=4962.85, width=17.667, height=7.38857, viewOffsetX=-746.681, 
    viewOffsetY=-207.136)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1868.86, 
    farPlane=5367.01, width=18.2238, height=7.62144, cameraPosition=(-2886.36, 
    -2143.6, 609.487), cameraUpVector=(0.327227, 0.319479, 0.889301), 
    cameraTarget=(95.2944, 16.6753, 141.045), viewOffsetX=-770.214, 
    viewOffsetY=-213.664)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1590.85, 
    farPlane=5645.01, width=1717.71, height=718.368, viewOffsetX=-422.331, 
    viewOffsetY=-53.8903)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1446.47, 
    farPlane=6196.15, width=1561.82, height=653.174, cameraPosition=(-3695.93, 
    -1267.6, 574.128), cameraUpVector=(0.589102, -0.204373, 0.781787), 
    cameraTarget=(-147.29, -698.685, -353.217), viewOffsetX=-384.003, 
    viewOffsetY=-48.9996)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1522.21, 
    farPlane=6009.93, width=1643.59, height=687.374, cameraPosition=(-3995.74, 
    116.088, 727.966), cameraUpVector=(0.47503, -0.235054, 0.847995), 
    cameraTarget=(-641.635, -1264.14, -60.3348), viewOffsetX=-404.109, 
    viewOffsetY=-51.5652)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1444.23, 
    farPlane=6135, width=1559.39, height=652.159, cameraPosition=(-3633.81, 
    -1003.96, 1125.41), cameraUpVector=(0.622708, 0.116768, 0.773692), 
    cameraTarget=(-140.072, -774.506, -106.497), viewOffsetX=-383.406, 
    viewOffsetY=-48.9235)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1482.31, 
    farPlane=6269.36, width=1600.51, height=669.354, cameraPosition=(-3816.96, 
    -910.491, 752.909), cameraUpVector=(0.492423, 0.104334, 0.86408), 
    cameraTarget=(-163.29, -820.253, 105.619), viewOffsetX=-393.515, 
    viewOffsetY=-50.2134)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1734.54, 
    farPlane=6017.12, width=111.053, height=46.4438, viewOffsetX=-617.572, 
    viewOffsetY=-142.957)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1735.32, 
    farPlane=6016.34, width=111.103, height=46.4646, viewOffsetX=-578.988, 
    viewOffsetY=-121.191)
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: ODB: Sulafjorden_test.odb
#:    Number of nodes: 2815
#:    Number of elements: 3705
#:    Element types: B31 S4R SPRING2 
#: 
#: Element: SUSPENSIONBRIDGE.401005
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2001, 401002
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=1750.18, 
    farPlane=6001.48, width=30.7829, height=12.8739, viewOffsetX=-611.268, 
    viewOffsetY=-119.728)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1749.22, 
    farPlane=6002.44, width=30.7662, height=12.8668, viewOffsetX=-610.159, 
    viewOffsetY=-119.933)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1904.88, 
    farPlane=5211.59, width=33.5041, height=14.0119, cameraPosition=(-2723.84, 
    -2268.33, 515.406), cameraUpVector=(0.303729, 0.305143, 0.902572), 
    cameraTarget=(91.8439, 121.339, 144.09), viewOffsetX=-664.457, 
    viewOffsetY=-130.606)
#: 
#: Element: SUSPENSIONBRIDGE.401005
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2001, 401002
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=1909.46, 
    farPlane=5207.02, width=4.09721, height=1.71351, viewOffsetX=-674.625, 
    viewOffsetY=-131.762)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1909.5, 
    height=1.71355, viewOffsetX=-674.983, viewOffsetY=-132.103)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1908.21, 
    farPlane=5208.27, width=12.2983, height=5.14332, viewOffsetX=-672.908, 
    viewOffsetY=-132.361)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1899.06, 
    farPlane=5442.61, width=12.2394, height=5.11867, cameraPosition=(-3001.34, 
    -2114.09, 348.931), cameraUpVector=(0.209265, 0.292739, 0.933012), 
    cameraTarget=(66.6731, -25.129, 344.332), viewOffsetX=-669.683, 
    viewOffsetY=-131.726)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=1859.94, 
    farPlane=5481.79, width=289.82, height=121.207, viewOffsetX=-610.799, 
    viewOffsetY=-130.994)
session.viewports['Viewport: 1'].view.setValues(nearPlane=2169.13, 
    farPlane=3465.82, width=338.001, height=141.357, cameraPosition=(-1168.18, 
    -2632.21, 407.207), cameraUpVector=(0.508312, 0.402589, 0.761276), 
    cameraTarget=(-251.017, 868.942, -415.718), viewOffsetX=-712.34, 
    viewOffsetY=-152.771)
session.viewports['Viewport: 1'].view.setValues(nearPlane=22188.3, 
    farPlane=85119.4, width=248833, height=104065, cameraPosition=(-13730, 
    -50585.3, 11678.3), viewOffsetX=40119.4, viewOffsetY=18585.9)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=0)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.05606e+007, 
    farPlane=2.86575e+007, width=5.41596e+007, height=2.26503e+007, 
    cameraPosition=(-4.84593e+006, -1.84969e+007, 4.34737e+006), 
    viewOffsetX=1.30385e+007, viewOffsetY=2.18127e+006)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=1)
session.viewports['Viewport: 1'].view.fitView()
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6.09898e+008, 
    farPlane=1.32481e+009, width=2.52251e+009, height=1.05495e+009, 
    cameraPosition=(-2.39037e+008, -9.1249e+008, 2.14476e+008), 
    viewOffsetX=6.83178e+008, viewOffsetY=-6.65762e+007)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=OFF)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=ON)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BEARING', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.00308e+013, 
    farPlane=1.10844e+014, width=1.12955e+014, height=4.72392e+013, 
    cameraPosition=(-1.49342e+013, -5.70095e+013, 1.33998e+013), 
    viewOffsetX=4.07536e+013, viewOffsetY=5.26302e+012)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.replace(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=(' ALL ELEMENTS', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.49889e+015, 
    farPlane=1.82385e+016, width=4.44934e+016, height=1.86078e+016, 
    cameraPosition=(-3.17989e+015, -1.21388e+016, 2.85316e+015), 
    viewOffsetX=1.60508e+016, viewOffsetY=2.07565e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.5613e+015, 
    farPlane=1.8176e+016, width=4.48637e+016, height=1.87626e+016, 
    cameraPosition=(-4.47203e+015, -1.15944e+016, 3.34277e+015), 
    cameraUpVector=(0.76409, 0.250277, 0.594582), cameraTarget=(-154.845, 
    -199.1, -177.446), viewOffsetX=1.61844e+016, viewOffsetY=2.09292e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.6271e+015, 
    farPlane=1.81103e+016, width=4.52541e+016, height=1.89259e+016, 
    cameraPosition=(-4.47203e+015, -1.15944e+016, 3.34277e+015), 
    cameraUpVector=(0.452217, 0.42519, 0.784037), cameraTarget=(-153.799, 
    -50.9704, 337.74), viewOffsetX=1.63252e+016, viewOffsetY=2.11113e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.69647e+015, 
    farPlane=1.80409e+016, width=4.56657e+016, height=1.9098e+016, 
    cameraPosition=(-1.27262e+016, -1.57288e+015, 1.083e+015), cameraUpVector=(
    0.427371, -0.0843579, 0.900132), cameraTarget=(-928.491, -1046.21, 
    566.448), viewOffsetX=1.64737e+016, viewOffsetY=2.13033e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.76961e+015, 
    farPlane=1.79678e+016, width=4.60997e+016, height=1.92795e+016, 
    cameraPosition=(-5.8407e+015, 1.1447e+016, -6.75334e+014), cameraUpVector=(
    -0.05515, -0.351379, 0.934608), cameraTarget=(-2308.81, -738.341, 517.701), 
    viewOffsetX=1.66302e+016, viewOffsetY=2.15057e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.84672e+015, 
    farPlane=1.78907e+016, width=4.65572e+016, height=1.94709e+016, 
    cameraPosition=(9.06262e+014, 1.28142e+016, -7.60758e+014), 
    cameraUpVector=(-0.376463, -0.258567, 0.889617), cameraTarget=(-2631.74, 
    -162.512, 322.579), viewOffsetX=1.67952e+016, viewOffsetY=2.17191e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7.92801e+015, 
    farPlane=1.78094e+016, width=4.70396e+016, height=1.96726e+016, 
    cameraPosition=(8.27907e+015, 9.84663e+015, 3.23552e+014), cameraUpVector=(
    -0.567082, 0.0098656, 0.823603), cameraTarget=(-2532.82, 596.75, 178.817), 
    viewOffsetX=1.69692e+016, viewOffsetY=2.19441e+015)
#: 
#: Element: SUSPENSIONBRIDGE.2700
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2700, 2701
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2600
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2600, 2601
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.11804e+017, 
    farPlane=2.12253e+017, width=2.9338e+017, height=1.22696e+017, 
    cameraPosition=(1.04241e+017, 1.23978e+017, 4.07381e+015), 
    viewOffsetX=1.35075e+016, viewOffsetY=1.43018e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.11506e+017, 
    farPlane=2.12551e+017, width=2.92598e+017, height=1.22368e+017, 
    cameraPosition=(1.02781e+016, -1.0185e+017, -1.25596e+017), 
    cameraUpVector=(0.810122, 0.585705, 0.0255369), cameraTarget=(-1267.14, 
    1171.91, -509.273), viewOffsetX=1.34715e+016, viewOffsetY=1.42636e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.58957e+017, 
    farPlane=1.65101e+017, width=1.67071e+016, height=6.98714e+015, 
    viewOffsetX=7.07536e+015, viewOffsetY=2.12033e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.59135e+017, 
    farPlane=1.64924e+017, width=1.67258e+016, height=6.99495e+015, 
    cameraPosition=(8.03529e+015, -4.41514e+016, -1.5569e+017), 
    cameraUpVector=(0.794313, 0.561441, 0.232057), cameraTarget=(-1320.3, 
    1299.48, -18.0026), viewOffsetX=7.08327e+015, viewOffsetY=2.1227e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.59134e+017, 
    farPlane=1.64923e+017, width=1.67257e+016, height=6.99493e+015, 
    viewOffsetX=7.92686e+015, viewOffsetY=2.65511e+015)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.59134e+017, 
    farPlane=1.64923e+017, width=1.67257e+016, height=6.99494e+015, 
    viewOffsetX=1.94815e+015, viewOffsetY=1.58233e+014)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.59134e+017, 
    width=1.67258e+016, height=6.99495e+015, cameraPosition=(2.5305e+015, 
    6.3347e+016, -1.49111e+017), cameraUpVector=(0.816414, 0.286581, 0.501337), 
    cameraTarget=(-1284.49, 1052.48, 792.673), viewOffsetX=1.94815e+015, 
    viewOffsetY=1.58233e+014)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=OFF)
session.viewports['Viewport: 1'].view.fitView()
session.viewports['Viewport: 1'].view.setValues(nearPlane=5716.45, 
    farPlane=12184.2, width=6260.04, height=2618.04, cameraPosition=(-4005.43, 
    8126.41, -1018.07), cameraUpVector=(0.664047, -0.0783426, -0.743575), 
    cameraTarget=(-1027.93, 201.036, -1359.31))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6067.48, 
    farPlane=11833.2, width=5871.05, height=2455.35, viewOffsetX=82.2602, 
    viewOffsetY=-92.112)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6121.03, 
    farPlane=11779.6, width=5922.86, height=2477.02, viewOffsetX=1797.5, 
    viewOffsetY=-457.002)
#: 
#: Element: SUSPENSIONBRIDGE.2164
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2164, 2165
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2153
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2153, 2154
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2583
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2583, 2584
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2658
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2658, 2659
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2661
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2661, 2662
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2681
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2681, 2682
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.2690
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 2690, 2691
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=6156.55, 
    farPlane=11744.1, width=6050.13, height=2530.25, viewOffsetX=2227.87, 
    viewOffsetY=-335.775)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
session.viewports['Viewport: 1'].view.setValues(nearPlane=8443.61, 
    farPlane=9485.07, width=75.2787, height=31.4826, viewOffsetX=1003.16, 
    viewOffsetY=-1037.72)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=ON)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
session.viewports['Viewport: 1'].view.setValues(nearPlane=4384.15, 
    farPlane=13544.5, width=22806.1, height=9537.83, viewOffsetX=7510.74, 
    viewOffsetY=-951.16)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK', ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.remove(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK1_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
leaf = dgo.LeafFromElementSets(elementSets=('SUSPENSIONBRIDGE.BRIDGEDECK2_COG', 
    ))
session.viewports['Viewport: 1'].odbDisplay.displayGroup.add(leaf=leaf)
session.viewports['Viewport: 1'].view.setValues(nearPlane=3.96478e+011, 
    farPlane=7.9808e+011, width=3.01595e+012, height=1.26131e+012, 
    cameraPosition=(-2.09888e+011, 5.58669e+011, 2.40544e+010), 
    viewOffsetX=7.96134e+011, viewOffsetY=4.38099e+010)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].view.setValues(nearPlane=8279.58, 
    farPlane=10350.5, width=3772.5, height=1814.47, cameraPosition=(964.236, 
    -6333.86, 6965.49), cameraUpVector=(0.360681, 0.880424, 0.307837), 
    cameraTarget=(182.44, -105.912, 123.449))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6308.66, 
    farPlane=11959.3, width=2874.48, height=1382.54, cameraPosition=(-8734.3, 
    -1658.04, 2300.12), cameraUpVector=(0.534717, 0.114128, 0.837289), 
    cameraTarget=(151.225, -90.863, 108.434))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6833.52, 
    farPlane=11434.5, width=1042.26, height=501.3, viewOffsetX=64.1358, 
    viewOffsetY=-57.6277)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6845.94, 
    farPlane=11422.1, width=1044.16, height=502.211, viewOffsetX=93.2201, 
    viewOffsetY=38.4918)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7037.77, 
    farPlane=11230.2, width=75.5551, height=36.3399, viewOffsetX=-302.509, 
    viewOffsetY=-361.151)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7038.72, 
    farPlane=11229.3, width=75.5654, height=36.3449, viewOffsetX=-316.939, 
    viewOffsetY=-362.822)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7523.79, 
    farPlane=9005, width=80.773, height=38.8496, cameraPosition=(-3554.83, 
    -7455.66, 1244.01), cameraUpVector=(0.0769486, 0.421533, 0.903542), 
    cameraTarget=(-594.375, 1297.57, 333.645), viewOffsetX=-338.781, 
    viewOffsetY=-387.826)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7145.82, 
    farPlane=11062.3, width=76.7153, height=36.8979, cameraPosition=(-8373.79, 
    -3464.89, -904.03), cameraUpVector=(0.0297437, 0.323281, 0.945835), 
    cameraTarget=(-81.8785, 348, 804.256), viewOffsetX=-321.762, 
    viewOffsetY=-368.343)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7090.82, 
    farPlane=11370.1, width=76.1249, height=36.614, cameraPosition=(-9235.63, 
    82.0627, -337.573), cameraUpVector=(0.236796, -0.41732, 0.877366), 
    cameraTarget=(-3.14392, -603.059, 372.382), viewOffsetX=-319.286, 
    viewOffsetY=-365.508)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7070.92, 
    farPlane=11162.9, width=75.9113, height=36.5113, cameraPosition=(-8828.29, 
    1924.93, 1698.07), cameraUpVector=(0.395248, -0.357111, 0.846316), 
    cameraTarget=(-121.324, -879.453, 105.446), viewOffsetX=-318.39, 
    viewOffsetY=-364.482)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7216.36, 
    farPlane=9742.36, width=77.4728, height=37.2623, cameraPosition=(-5037.11, 
    -5025.53, 4868.38), cameraUpVector=(0.8275, 0.299627, 0.474834), 
    cameraTarget=(-176.997, 637.211, -656.556), viewOffsetX=-324.939, 
    viewOffsetY=-371.979)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7216.05, 
    farPlane=9742.67, width=77.4695, height=37.2607, cameraPosition=(-5051.34, 
    -4867.81, 5017.51), cameraUpVector=(0.589729, 0.584328, 0.557477), 
    cameraTarget=(-191.223, 794.926, -507.422), viewOffsetX=-324.925, 
    viewOffsetY=-371.963)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7036.82, 
    farPlane=11170, width=75.5454, height=36.3353, cameraPosition=(-8607.86, 
    -1569.91, 2732.57), cameraUpVector=(0.351852, 0.753688, 0.555117), 
    cameraTarget=(110.755, 347.374, 178.751), viewOffsetX=-316.855, 
    viewOffsetY=-362.725)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7037.21, 
    farPlane=11169.6, width=75.5497, height=36.3373, cameraPosition=(-8564.4, 
    -1887.46, 2642.54), cameraUpVector=(0.53337, 0.260706, 0.804704), 
    cameraTarget=(154.215, 29.8255, 88.722), viewOffsetX=-316.873, 
    viewOffsetY=-362.745)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7101.05, 
    farPlane=11314.9, width=76.2351, height=36.667, cameraPosition=(-9094.63, 
    1266.45, -810.037), cameraUpVector=(0.251178, 0.372999, 0.893186), 
    cameraTarget=(-106.57, -396.066, 821.809), viewOffsetX=-319.748, 
    viewOffsetY=-366.036)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7100.91, 
    farPlane=11315, width=76.2337, height=36.6663, cameraPosition=(-9109.3, 
    1118.04, -880.414), cameraUpVector=(0.186423, 0.105026, 0.97684), 
    cameraTarget=(-121.244, -544.477, 751.432), viewOffsetX=-319.742, 
    viewOffsetY=-366.029)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7109.71, 
    farPlane=11258, width=76.3282, height=36.7118, cameraPosition=(-8832.14, 
    -2387.74, -730.717), cameraUpVector=(0.166751, 0.0934463, 0.981561), 
    cameraTarget=(20.4473, 26.6044, 688.688), viewOffsetX=-320.138, 
    viewOffsetY=-366.483)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7082.61, 
    farPlane=11327, width=76.0374, height=36.5719, cameraPosition=(-9171.33, 
    789.485, 798.131), cameraUpVector=(0.369947, -0.0588265, 0.927188), 
    cameraTarget=(3.10907, -579.479, 388.752), viewOffsetX=-318.918, 
    viewOffsetY=-365.086)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7046.22, 
    farPlane=11363.4, width=275.445, height=132.481, viewOffsetX=-297.249, 
    viewOffsetY=-370.903)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7029.99, 
    farPlane=11395.5, width=274.81, height=132.176, cameraPosition=(-9170.93, 
    -484.395, 1027.46), cameraUpVector=(0.403629, -0.0314353, 0.914383), 
    cameraTarget=(87.0462, -361.282, 329.835), viewOffsetX=-296.565, 
    viewOffsetY=-370.049)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7030.09, 
    farPlane=11395.4, width=274.814, height=132.178, viewOffsetX=-286.173, 
    viewOffsetY=-344.035)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7079.62, 
    farPlane=11345.9, width=24.3803, height=11.7263, viewOffsetX=-337.938, 
    viewOffsetY=-359.95)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.commonOptions.setValues(
    deformationScaling=UNIFORM, uniformScaleFactor=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7071.53, 
    farPlane=11354, width=62.6071, height=30.1123, viewOffsetX=-325.794, 
    viewOffsetY=-366.486)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7078.22, 
    farPlane=11265.4, width=62.6664, height=30.1408, cameraPosition=(-8871.02, 
    -2112.9, 1190.46), cameraUpVector=(0.414673, 0.0773436, 0.906678), 
    cameraTarget=(134.268, -30.2083, 307.779), viewOffsetX=-326.102, 
    viewOffsetY=-366.833)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7240.05, 
    farPlane=10210, width=64.0991, height=30.8299, cameraPosition=(-6262.65, 
    -5763.22, 2234.69), cameraUpVector=(0.342333, 0.416957, 0.841995), 
    cameraTarget=(-109.645, 863.363, 127.377), viewOffsetX=-333.558, 
    viewOffsetY=-375.22)
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=7243.84, 
    farPlane=10206.2, width=49.5277, height=23.8214, viewOffsetX=-343.877, 
    viewOffsetY=-373.019)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7242.66, 
    farPlane=10207.3, width=49.5196, height=23.8176, viewOffsetX=-338.263, 
    viewOffsetY=-372.083)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7700.3, 
    farPlane=8319.69, width=52.6487, height=25.3225, cameraPosition=(-1969.84, 
    -7823.58, 414.624), cameraUpVector=(0.162645, 0.316608, 0.934509), 
    cameraTarget=(-797.186, 1387.1, 401.925), viewOffsetX=-359.637, 
    viewOffsetY=-395.594)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7247.31, 
    farPlane=10284, width=49.5515, height=23.8329, cameraPosition=(-6488.66, 
    -5722.82, 1775.17), cameraUpVector=(0.24474, 0.433302, 0.867382), 
    cameraTarget=(-124.408, 865.218, 256.628), viewOffsetX=-338.48, 
    viewOffsetY=-372.322)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7255.81, 
    farPlane=10275.5, width=9.33293, height=4.48888, viewOffsetX=-352.035, 
    viewOffsetY=-367.493)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7449.03, 
    farPlane=9583.8, width=9.58147, height=4.60842, cameraPosition=(-4936.85, 
    -7006.3, 184.185), cameraUpVector=(0.0308321, 0.320839, 0.946632), 
    cameraTarget=(-426.036, 1100.72, 559.111), viewOffsetX=-361.41, 
    viewOffsetY=-377.279)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7446.99, 
    farPlane=9585.83, width=20.8192, height=10.0135, viewOffsetX=-359.958, 
    viewOffsetY=-378.488)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=-356.165, 
    viewOffsetY=-379.921)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7444.39, 
    farPlane=9588.43, width=34.7243, height=16.7014, viewOffsetX=-355.237, 
    viewOffsetY=-381.373)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7443.79, 
    farPlane=9286.28, width=34.7214, height=16.7001, cameraPosition=(-4137.55, 
    -7126.79, 1886.55), cameraUpVector=(0.271653, 0.430204, 0.860888), 
    cameraTarget=(-421.8, 1202.59, 146.857), viewOffsetX=-355.208, 
    viewOffsetY=-381.342)
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Displacement (unscaled):          -7.26609e-005,  1.74818e-004,  5.67622e-005,  1.97644e-004
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Displacement (unscaled):          -1.32331e-004,  2.07375e-004,  5.66207e-005,  2.52432e-004
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101006, SUSPENSIONBRIDGE.401005
#:                                        1             2             3        Magnitude
#: Base distance:                     1.58691e-003, -2.79427e-004,  4.50000e+000,  4.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.58691e-003, -2.47002e-004,  4.50000e+000,  4.50000e+000
#: Deformed distance (scaled):        1.58691e-003, -2.47002e-004,  4.50000e+000,  4.50000e+000
#: Relative displacement (unscaled): -5.96700e-005,  3.25568e-005, -1.41488e-007,  6.79740e-005
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Displacement (unscaled):          -1.32331e-004,  2.07375e-004,  5.66207e-005,  2.52432e-004
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Displacement (unscaled):          -7.26609e-005,  1.74818e-004,  5.67622e-005,  1.97644e-004
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49871e+001,  5.14914e+001,      -      
#: Displacement (unscaled):          -7.26609e-005,  1.74818e-004,  5.67622e-005,  1.97644e-004
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49869e+001,  5.59914e+001,      -      
#: Displacement (unscaled):          -1.32331e-004,  2.07375e-004,  5.66207e-005,  2.52432e-004
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101006, SUSPENSIONBRIDGE.401005
#:                                        1             2             3        Magnitude
#: Base distance:                     1.58691e-003, -2.79427e-004,  4.50000e+000,  4.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.58691e-003, -2.47002e-004,  4.50000e+000,  4.50000e+000
#: Deformed distance (scaled):        1.58691e-003, -2.47002e-004,  4.50000e+000,  4.50000e+000
#: Relative displacement (unscaled): -5.96700e-005,  3.25568e-005, -1.41488e-007,  6.79740e-005
session.viewports['Viewport: 1'].view.setValues(nearPlane=7441.89, 
    farPlane=9288.19, width=41.6233, height=15.3957, viewOffsetX=-350.521, 
    viewOffsetY=-379.891)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=OFF)
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03215e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03215e+001,  5.14920e+001,      -      
#: Displacement (unscaled):          -5.20458e-005,  1.74092e-004,  2.78266e-005,  1.83823e-004
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=0)
#: 
#: Element: SUSPENSIONBRIDGE.401008
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101007, 401006
#:   Results: Integration Point values not available
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401006, SUSPENSIONBRIDGE.101007
#:                                        1             2             3        Magnitude
#: Base distance:                    -1.00000e+000, -1.78600e-001, -4.00000e+000,  4.12697e+000
#: No deformed coordinates for current plot.
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401006, SUSPENSIONBRIDGE.101007
#:                                        1             2             3        Magnitude
#: Base distance:                    -1.00000e+000, -1.78600e-001, -4.00000e+000,  4.12697e+000
#: No deformed coordinates for current plot.
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Displacement (unscaled):           3.73904e-003, -8.07379e-005, -7.97943e-003,  8.81240e-003
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Displacement (unscaled):           5.15590e-003, -2.01431e-004, -8.32853e-003,  9.79736e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101007, SUSPENSIONBRIDGE.401006
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  1.78600e-001,  4.00000e+000,  4.12697e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Deformed distance (scaled):        1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Relative displacement (unscaled):  1.41685e-003, -1.20693e-004, -3.49092e-004,  1.46421e-003
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Displacement (unscaled):           3.74214e-003, -5.95279e-005, -8.61640e-003,  9.39412e-003
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.60000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Displacement (unscaled):           5.33751e-003, -3.39496e-004, -8.61668e-003,  1.01416e-002
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101006, SUSPENSIONBRIDGE.401005
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000,  4.50000e+000,  4.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.58691e-003, -2.80380e-004,  4.50000e+000,  4.50000e+000
#: Deformed distance (scaled):        1.58691e-003, -2.80380e-004,  4.50000e+000,  4.50000e+000
#: Relative displacement (unscaled):  1.59537e-003, -2.79968e-004, -2.87779e-007,  1.61975e-003
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Displacement (unscaled):           3.74214e-003, -5.95279e-005, -8.61640e-003,  9.39412e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401002, SUSPENSIONBRIDGE.101006
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000, -6.50000e+000,  6.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      2.27905e-001, -3.50857e-003, -5.22896e+000,  5.23393e+000
#: Deformed distance (scaled):        2.27905e-001, -3.50857e-003, -5.22896e+000,  5.23393e+000
#: Relative displacement (unscaled):  2.27815e-001, -3.50892e-003,  1.27104e+000,  1.29130e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.2001, SUSPENSIONBRIDGE.401002
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000, -1.50000e+000,  1.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):     -4.55322e-002,  5.46646e-003, -1.49930e+000,  1.50000e+000
#: Deformed distance (scaled):       -4.55322e-002,  5.46646e-003, -1.49930e+000,  1.50000e+000
#: Relative displacement (unscaled): -4.55123e-002,  5.46599e-003,  7.00235e-004,  4.58447e-002
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.2001, SUSPENSIONBRIDGE.401002
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000, -1.50000e+000,  1.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):     -4.55322e-002,  5.46646e-003, -1.49930e+000,  1.50000e+000
#: Deformed distance (scaled):       -4.55322e-002,  5.46646e-003, -1.49930e+000,  1.50000e+000
#: Relative displacement (unscaled): -4.55123e-002,  5.46599e-003,  7.00235e-004,  4.58447e-002
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Displacement (unscaled):           3.74214e-003, -5.95279e-005, -8.61640e-003,  9.39412e-003
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.80000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Deformed coordinates (scaled):    -1.40022e+003,  1.49904e+001,  5.67203e+001,      -      
#: Displacement (unscaled):          -2.24073e-001,  3.44939e-003, -1.27965e+000,  1.29913e+000
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101006, SUSPENSIONBRIDGE.401002
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000,  6.50000e+000,  6.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):     -2.27905e-001,  3.50857e-003,  5.22896e+000,  5.23393e+000
#: Deformed distance (scaled):       -2.27905e-001,  3.50857e-003,  5.22896e+000,  5.23393e+000
#: Relative displacement (unscaled): -2.27815e-001,  3.50892e-003, -1.27104e+000,  1.29130e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82195e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82195e+001,      -      
#: Displacement (unscaled):          -1.78913e-001, -2.01672e-003, -1.28051e+000,  1.29295e+000
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.95000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Deformed coordinates (scaled):    -1.40018e+003,  1.49850e+001,  5.82196e+001,      -      
#: Displacement (unscaled):          -1.78560e-001, -2.01660e-003, -1.28035e+000,  1.29275e+000
#: 
#: Node: SUSPENSIONBRIDGE.5357
#:                                         1             2             3        Magnitude
#: Base coordinates:                  2.40000e+001,  0.00000e+000,  1.02954e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   2.45312e+001, -1.77708e-010,  7.81994e+001,      -      
#: Deformed coordinates (scaled):     2.45312e+001, -1.77708e-010,  7.81994e+001,      -      
#: Displacement (unscaled):           5.31197e-001, -1.77708e-010, -2.47550e+001,  2.47607e+001
session.viewports['Viewport: 1'].view.setValues(nearPlane=6646.47, 
    farPlane=10083.7, width=4573.94, height=1691.81, viewOffsetX=1408.12, 
    viewOffsetY=-410.678)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].view.setValues(nearPlane=8134.75, 
    farPlane=10410.5, width=4819.73, height=1782.73, cameraPosition=(422.703, 
    -4511.81, 8293.04), cameraUpVector=(-0.249205, 0.95755, 0.144897), 
    cameraTarget=(182.45, -105.886, 123.445))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6018.09, 
    farPlane=12158.9, width=3565.64, height=1318.86, cameraPosition=(-9089.13, 
    6.17955, 128.091), cameraUpVector=(0.338441, 0.443475, 0.829932), 
    cameraTarget=(195.169, -111.928, 134.363))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7146.24, 
    farPlane=11143.3, width=4234.06, height=1566.1, cameraPosition=(-4993.2, 
    -6837.98, 3656.89), cameraUpVector=(0.498406, 0.463912, 0.732378), 
    cameraTarget=(106.597, 36.0728, 58.0549))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6231.23, 
    farPlane=12007.3, width=3691.93, height=1365.58, cameraPosition=(-8679.47, 
    -2399.23, 1643.49), cameraUpVector=(0.45246, 0.189561, 0.871405), 
    cameraTarget=(163.142, -32.0151, 88.9394))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7050.28, 
    farPlane=11188.2, width=60.38, height=22.3335, viewOffsetX=-407.461, 
    viewOffsetY=-222.072)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7049.56, 
    farPlane=11188.9, width=60.3739, height=22.3312, viewOffsetX=-405.135, 
    viewOffsetY=-223.04)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7049.56, 
    farPlane=11188.9, width=60.3739, height=22.3312, cameraPosition=(-8680.4, 
    -2368.04, 1685.67), cameraUpVector=(0.429692, 0.268516, 0.862127), 
    cameraTarget=(162.208, -0.822866, 131.124), viewOffsetX=-405.135, 
    viewOffsetY=-223.04)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=-410.54, 
    viewOffsetY=-237.292)
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
#: 
#: Node: SUSPENSIONBRIDGE.401002
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40024e+003,  1.49904e+001,  5.60180e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39999e+003,  1.49866e+001,  5.72914e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401002, SUSPENSIONBRIDGE.401005
#:                                        1             2             3        Magnitude
#: Base distance:                     2.44995e-001, -3.87001e-003,  1.27341e+000,  1.29677e+000
#: No deformed coordinates for current plot.
session.viewports['Viewport: 1'].view.setValues(nearPlane=7052.54, 
    farPlane=11185.9, width=48.2718, height=17.8549, viewOffsetX=-409.629, 
    viewOffsetY=-232.586)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7237.32, 
    farPlane=10611.3, width=49.5366, height=18.3227, cameraPosition=(-6768.29, 
    -5520.01, 2038.32), cameraUpVector=(0.407819, 0.33516, 0.849324), 
    cameraTarget=(326.002, 129.423, 46.5843), viewOffsetX=-420.361, 
    viewOffsetY=-238.68)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7235.73, 
    farPlane=10612.9, width=52.8838, height=19.5607, viewOffsetX=-893.348, 
    viewOffsetY=-275.876)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7236.4, 
    farPlane=10612.2, width=52.8887, height=19.5625, viewOffsetX=-891.896, 
    viewOffsetY=-263.283)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Mass properties for Whole model:
#:   Area of shell faces (one side only):  8.97987e+004
#:   Area centroid of shell faces: -7.77842e-015, -3.31444e-015,  8.85399e+001
#:   Volume:  8.06951e+004
#:   Volume centroid:  1.44266e-015, -5.29519e-017,  2.04096e+002
#:   Mass:  2.00907e+008
#:   Center of mass: -4.74685e-015, -2.46659e-017,  2.04566e+002
#:   Moment of inertia about the origin (Ixx, Iyy, Izz, Ixy, Iyz, Izx):  1.09353e+013,  4.01947e+014,  3.91239e+014,  3.72529e-008, -1.05717e-006,  0.00000e+000
#:   Moment of inertia about the center of mass:  2.52793e+012,  3.93539e+014,  3.91239e+014,  3.72529e-008, -2.07090e-006, -1.95089e-004
#: 
#:   The selected elements contain sections unsupported for Mass/Volume/Area computations.
#:   These elements have been ignored.
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401006
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101005, 401004
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=7243.17, 
    farPlane=10605.4, width=17.7495, height=6.56522, viewOffsetX=-902.264, 
    viewOffsetY=-262.865)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7222.87, 
    farPlane=10625.7, width=113.561, height=42.004, viewOffsetX=-877.208, 
    viewOffsetY=-267.032)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
#: 
#: ODB: Sulafjorden_test.odb
#:    Number of nodes: 2815
#:    Number of elements: 3705
#:    Element types: B31 S4R SPRING2 
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=7241, 
    farPlane=10607.6, width=28.0139, height=10.3618, viewOffsetX=-898.961, 
    viewOffsetY=-263.827)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, DEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    DEFORMED, CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Deformed coordinates (scaled):    -1.40019e+003,  1.49850e+001,  5.75171e+001,      -      
#: Displacement (unscaled):          -1.93915e-001, -2.01633e-003, -1.28294e+000,  1.29751e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=7235.1, 
    farPlane=10613.5, width=63.2199, height=23.3839, viewOffsetX=-887.31, 
    viewOffsetY=-260.004)
session.viewports['Viewport: 1'].odbDisplay.basicOptions.setValues(
    renderBeamProfiles=ON)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7231.4, 
    farPlane=10617.1, width=54.265, height=20.0716, viewOffsetX=-884.378, 
    viewOffsetY=-262.946)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/langenuen/Langenuen_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/langenuen/Langenuen_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       142
#: Number of Node Sets:          47
#: Number of Steps:              5
session.viewports['Viewport: 1'].view.setValues(nearPlane=3154.08, 
    farPlane=4781.56, width=1038.89, height=384.265, viewOffsetX=-97.4825, 
    viewOffsetY=86.235)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=1, 
    X_in_or_out='In')
session.viewports['Viewport: 1'].view.setValues(nearPlane=2717.66, 
    farPlane=4106.94, width=76.6318, height=28.3447, viewOffsetX=-398.785, 
    viewOffsetY=-121.38)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.1001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -6.17500e+002,  0.00000e+000,  7.00000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -6.17663e+002, -2.57418e-002,  6.94642e+001,      -      
#: Deformed coordinates (scaled):    -6.17663e+002, -2.57418e-002,  6.94642e+001,      -      
#: Displacement (unscaled):          -1.63064e-001, -2.57418e-002, -5.35813e-001,  5.60667e-001
#: 
#: Node: SUSPENSIONBRIDGE.1159
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.20000e+001,  0.00000e+000,  8.41746e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.20001e+001,  1.10756e-002,  7.62519e+001,      -      
#: Deformed coordinates (scaled):     1.20001e+001,  1.10756e-002,  7.62519e+001,      -      
#: Displacement (unscaled):           6.23054e-005,  1.10756e-002, -7.92277e+000,  7.92278e+000
#: 
#: Node: SUSPENSIONBRIDGE.1156
#:                                         1             2             3        Magnitude
#: Base coordinates:                  0.00000e+000,  0.00000e+000,  8.41800e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   2.67154e-005,  1.10908e-002,  7.62538e+001,      -      
#: Deformed coordinates (scaled):     2.67154e-005,  1.10908e-002,  7.62538e+001,      -      
#: Displacement (unscaled):           2.67154e-005,  1.10908e-002, -7.92622e+000,  7.92623e+000
#: 
#: Node: SUSPENSIONBRIDGE.1153
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.20000e+001,  0.00000e+000,  8.41746e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.20000e+001,  1.10753e-002,  7.62519e+001,      -      
#: Deformed coordinates (scaled):    -1.20000e+001,  1.10753e-002,  7.62519e+001,      -      
#: Displacement (unscaled):          -8.87456e-006,  1.10753e-002, -7.92277e+000,  7.92278e+000
#: 
#: Node: SUSPENSIONBRIDGE.1114
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.68000e+002,  0.00000e+000,  8.31304e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.68004e+002,  8.15076e-003,  7.58593e+001,      -      
#: Deformed coordinates (scaled):    -1.68004e+002,  8.15076e-003,  7.58593e+001,      -      
#: Displacement (unscaled):          -4.09735e-003,  8.15076e-003, -7.27108e+000,  7.27108e+000
#: 
#: Node: SUSPENSIONBRIDGE.1063
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -3.72000e+002,  0.00000e+000,  7.90338e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -3.72039e+002, -2.84643e-003,  7.40980e+001,      -      
#: Deformed coordinates (scaled):    -3.72039e+002, -2.84643e-003,  7.40980e+001,      -      
#: Displacement (unscaled):          -3.91338e-002, -2.84643e-003, -4.93577e+000,  4.93592e+000
#: 
#: Node: SUSPENSIONBRIDGE.1042
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -4.56000e+002,  0.00000e+000,  7.64473e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -4.56070e+002, -9.65624e-003,  7.28699e+001,      -      
#: Deformed coordinates (scaled):    -4.56070e+002, -9.65624e-003,  7.28699e+001,      -      
#: Displacement (unscaled):          -7.00154e-002, -9.65624e-003, -3.57737e+000,  3.57807e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=2354.48, 
    farPlane=4470.12, width=1993.79, height=737.467, viewOffsetX=56.0041, 
    viewOffsetY=-114.233)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/langenuen/Langenuen_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=1, 
    X_in_or_out='In')
session.viewports['Viewport: 1'].view.setValues(nearPlane=1802.74, 
    farPlane=4971.94, width=78.5808, height=29.0656, viewOffsetX=-722.743, 
    viewOffsetY=-210.336)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=1813.55, 
    farPlane=4961.13, width=33.2059, height=12.2822, viewOffsetX=-743.54, 
    viewOffsetY=-208.237)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1812.76, 
    farPlane=4961.92, width=33.1914, height=12.2769, viewOffsetX=-740.663, 
    viewOffsetY=-207.476)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1958.46, 
    farPlane=5789.51, width=35.8592, height=13.2637, cameraPosition=(-3454.37, 
    -1737.87, 509.763), cameraUpVector=(0.219139, 0.369216, 0.903138), 
    cameraTarget=(-140.059, -70.1519, 407.024), viewOffsetX=-800.195, 
    viewOffsetY=-224.152)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1965.02, 
    farPlane=5782.95, width=0.220876, height=0.081698, viewOffsetX=-807.457, 
    viewOffsetY=-225.999)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].view.fitView()
session.viewports['Viewport: 1'].view.setValues(nearPlane=6656.99, 
    farPlane=11138.6, width=1637.98, height=605.858, cameraPosition=(-8031.1, 
    -3825.84, 468.942), cameraUpVector=(0.302322, 0.205606, 0.930767), 
    cameraTarget=(-85.8911, 172.089, 222.651))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6662.58, 
    farPlane=11133, width=1639.35, height=606.367, viewOffsetX=-144.71, 
    viewOffsetY=-163.491)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6683.02, 
    farPlane=10959.6, width=1644.38, height=608.227, cameraPosition=(-7357.94, 
    -4328.25, 2428.12), cameraUpVector=(0.559595, 0.160338, 0.813109), 
    cameraTarget=(-15.3803, 162.735, 172.381), viewOffsetX=-145.154, 
    viewOffsetY=-163.993)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6682.07, 
    farPlane=10960.6, width=1644.15, height=608.14, viewOffsetX=-238.433, 
    viewOffsetY=-398.508)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7003.14, 
    farPlane=10639.5, width=29.0243, height=10.7356, viewOffsetX=-462.527, 
    viewOffsetY=-478.368)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7003.51, 
    viewOffsetX=-465.626, viewOffsetY=-475.609)
#: 
#: Element: SUSPENSIONBRIDGE.401008
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101007, 401006
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401010
#:   Type: B31
#:   Material: STEEL
#:   Section: BEARINGPENDULUM.Section-ASSEMBLYSUSPENSIONBRIDGE_SUSPENSIONBRIDGE_BEARINGPENDULUM, Box Beam Section, a = 0.2, b = 0.2, t1 = 0.02, t2 = 0.02, t3 = 0.02, t4 = 0.02
#:   Connect: 401006, 401003
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.401007
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 101006, 401005
#:   Results: Integration Point values not available
#: 
#: Node: SUSPENSIONBRIDGE.101006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  1.49869e+001,  5.14914e+001,      -      
#: Displacement (unscaled):           3.74220e-003, -5.95344e-005, -8.61650e-003,  9.39424e-003
#: 
#: Node: SUSPENSIONBRIDGE.401005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.60000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Deformed coordinates (scaled):    -1.39999e+003,  1.49867e+001,  5.59914e+001,      -      
#: Displacement (unscaled):           5.33759e-003, -3.39535e-004, -8.61679e-003,  1.01417e-002
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101006, SUSPENSIONBRIDGE.401005
#:                                        1             2             3        Magnitude
#: Base distance:                     0.00000e+000,  0.00000e+000,  4.50000e+000,  4.50000e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.58691e-003, -2.80380e-004,  4.50000e+000,  4.50000e+000
#: Deformed distance (scaled):        1.58691e-003, -2.80380e-004,  4.50000e+000,  4.50000e+000
#: Relative displacement (unscaled):  1.59539e-003, -2.80001e-004, -2.87779e-007,  1.61978e-003
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Displacement (unscaled):           3.73909e-003, -8.07444e-005, -7.97953e-003,  8.81250e-003
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Displacement (unscaled):           5.15597e-003, -2.01440e-004, -8.32863e-003,  9.79748e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101007, SUSPENSIONBRIDGE.401006
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  1.78600e-001,  4.00000e+000,  4.12697e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Deformed distance (scaled):        1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Relative displacement (unscaled):  1.41688e-003, -1.20696e-004, -3.49098e-004,  1.46423e-003
#: 
#: Node: SUSPENSIONBRIDGE.101005
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  9.50000e+000,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  9.49996e+000,  5.14908e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  9.49996e+000,  5.14908e+001,      -      
#: Displacement (unscaled):           3.74427e-003, -3.77194e-005, -9.20683e-003,  9.93915e-003
#: 
#: Node: SUSPENSIONBRIDGE.401004
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  9.50000e+000,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  9.49976e+000,  5.54904e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  9.49976e+000,  5.54904e+001,      -      
#: Displacement (unscaled):           5.16171e-003, -2.41576e-004, -9.56146e-003,  1.08685e-002
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101005, SUSPENSIONBRIDGE.401004
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  0.00000e+000,  4.00000e+000,  4.12311e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.00134e+000, -2.03133e-004,  3.99965e+000,  4.12309e+000
#: Deformed distance (scaled):        1.00134e+000, -2.03133e-004,  3.99965e+000,  4.12309e+000
#: Relative displacement (unscaled):  1.41745e-003, -2.03857e-004, -3.54635e-004,  1.47529e-003
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=-465.333, 
    viewOffsetY=-477.185)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7082.6, 
    farPlane=10338, width=29.3536, height=10.8574, cameraPosition=(-6529.16, 
    -5476.91, 2007.41), cameraUpVector=(0.49788, 0.220243, 0.838814), 
    cameraTarget=(40.0762, 238.677, 177.754), viewOffsetX=-470.588, 
    viewOffsetY=-482.574)
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Displacement (unscaled):           3.73909e-003, -8.07444e-005, -7.97953e-003,  8.81250e-003
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Displacement (unscaled):           5.15597e-003, -2.01440e-004, -8.32863e-003,  9.79748e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101007, SUSPENSIONBRIDGE.401006
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  1.78600e-001,  4.00000e+000,  4.12697e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Deformed distance (scaled):        1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Relative displacement (unscaled):  1.41688e-003, -1.20696e-004, -3.49098e-004,  1.46423e-003
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Displacement (unscaled):           5.15597e-003, -2.01440e-004, -8.32863e-003,  9.79748e-003
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Displacement (unscaled):           3.73909e-003, -8.07444e-005, -7.97953e-003,  8.81250e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.401006, SUSPENSIONBRIDGE.101007
#:                                        1             2             3        Magnitude
#: Base distance:                    -1.00000e+000, -1.78600e-001, -4.00000e+000,  4.12697e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):     -1.00134e+000, -1.78478e-001, -3.99965e+000,  4.12696e+000
#: Deformed distance (scaled):       -1.00134e+000, -1.78478e-001, -3.99965e+000,  4.12696e+000
#: Relative displacement (unscaled): -1.41688e-003,  1.20696e-004,  3.49098e-004,  1.46423e-003
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Deformed coordinates (scaled):    -1.40000e+003,  2.03213e+001,  5.14920e+001,      -      
#: Displacement (unscaled):           3.73909e-003, -8.07444e-005, -7.97953e-003,  8.81250e-003
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Deformed coordinates (scaled):    -1.39899e+003,  2.04998e+001,  5.54917e+001,      -      
#: Displacement (unscaled):           5.15597e-003, -2.01440e-004, -8.32863e-003,  9.79748e-003
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101007, SUSPENSIONBRIDGE.401006
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  1.78600e-001,  4.00000e+000,  4.12697e+000
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed distance (unscaled):      1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Deformed distance (scaled):        1.00134e+000,  1.78478e-001,  3.99965e+000,  4.12696e+000
#: Relative displacement (unscaled):  1.41688e-003, -1.20696e-004, -3.49098e-004,  1.46423e-003
session.viewports['Viewport: 1'].view.setValues(nearPlane=7074.89, 
    farPlane=10345.7, width=63.7155, height=23.5672, viewOffsetX=-632.972, 
    viewOffsetY=-462.321)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
#: 
#: Node: SUSPENSIONBRIDGE.101007
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.03214e+001,  5.15000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Node: SUSPENSIONBRIDGE.401006
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39900e+003,  2.05000e+001,  5.55000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.101007, SUSPENSIONBRIDGE.401006
#:                                        1             2             3        Magnitude
#: Base distance:                     1.00000e+000,  1.78600e-001,  4.00000e+000,  4.12697e+000
#: No deformed coordinates for current plot.
session.viewports['Viewport: 1'].view.setValues(nearPlane=7108.41, 
    farPlane=10076.1, width=64.0174, height=23.6789, cameraPosition=(-5789.21, 
    -6000.48, 2279.21), cameraUpVector=(0.548751, 0.239578, 0.800921), 
    cameraTarget=(106.335, 295.938, 95.5983), viewOffsetX=-635.971, 
    viewOffsetY=-464.511)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=-652.03, 
    viewOffsetY=-476.144)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6973.51, 
    farPlane=10211, width=697.965, height=258.164, viewOffsetX=-711.823, 
    viewOffsetY=-510.511)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7153.57, 
    farPlane=9332.99, width=715.987, height=264.83, cameraPosition=(-3486.11, 
    -7092.42, 2548.56), cameraUpVector=(0.444999, 0.425771, 0.787842), 
    cameraTarget=(180.641, 636.635, 101.694), viewOffsetX=-730.203, 
    viewOffsetY=-523.692)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7150.22, 
    farPlane=9336.33, width=715.652, height=264.706, viewOffsetX=-755.13, 
    viewOffsetY=-591.205)
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(-3545.6, 
    -6999.83, 2751.86), cameraUpVector=(0.287492, 0.508109, 0.811895), 
    cameraTarget=(121.149, 729.221, 304.997))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6983.04, 
    farPlane=10239.8, width=698.919, height=258.517, cameraPosition=(-5695.03, 
    -6091, 2358.5), cameraUpVector=(0.444894, 0.327347, 0.833615), 
    cameraTarget=(274.951, 178.348, 303), viewOffsetX=-737.474, 
    viewOffsetY=-577.382)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7114.26, 
    farPlane=10108.6, width=52.952, height=19.586, viewOffsetX=-944.543, 
    viewOffsetY=-598.164)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7114.93, 
    farPlane=10107.9, width=52.957, height=19.5878, cameraPosition=(-5680.65, 
    -6133.83, 2269.63), cameraUpVector=(0.498565, 0.272706, 0.822839), 
    cameraTarget=(289.334, 135.515, 214.13), viewOffsetX=-944.632, 
    viewOffsetY=-598.22)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7226.59, 
    farPlane=9685.92, width=53.7881, height=19.8952, cameraPosition=(-4649.28, 
    -6945.44, 1487.16), cameraUpVector=(0.489425, 0.230283, 0.84109), 
    cameraTarget=(259.004, 362.021, 190.92), viewOffsetX=-959.457, 
    viewOffsetY=-607.609)
#: 
#: Node: SUSPENSIONBRIDGE.1001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -1.49870e+001,  5.88000e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Node: SUSPENSIONBRIDGE.1003
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39200e+003, -1.49870e+001,  5.93094e+001,      -      
#: No deformed coordinates for current plot.
#: 
#: Nodes for distance: SUSPENSIONBRIDGE.1001, SUSPENSIONBRIDGE.1003
#:                                        1             2             3        Magnitude
#: Base distance:                     8.00000e+000,  0.00000e+000,  5.09399e-001,  8.01620e+000
#: No deformed coordinates for current plot.
#: 
#: Element: SUSPENSIONBRIDGE.80001
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 11003, 10052
#:   Results: Integration Point values not available
#: 
#: Element: SUSPENSIONBRIDGE.80117
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 11699, 10168
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=7164.53, 
    farPlane=9747.98, width=343.107, height=126.909, viewOffsetX=846.413, 
    viewOffsetY=155.442)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7168.81, 
    farPlane=9743.71, width=343.311, height=126.984, viewOffsetX=878.089, 
    viewOffsetY=185.872)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7374.79, 
    farPlane=8387.26, width=353.175, height=130.633, cameraPosition=(-1451.1, 
    -7181.79, 3109.35), cameraUpVector=(0.417222, 0.573051, 0.705364), 
    cameraTarget=(-17.5297, 982.226, -125.496), viewOffsetX=903.319, 
    viewOffsetY=191.213)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7372.85, 
    farPlane=8389.21, width=353.082, height=130.599, viewOffsetX=1009.05, 
    viewOffsetY=233.061)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=1150.64, 
    viewOffsetY=286.549)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=1293.12, 
    viewOffsetY=315.076)
session.viewports['Viewport: 1'].view.setValues(viewOffsetX=1436.94, 
    viewOffsetY=386.393)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6318.35, 
    farPlane=9443.7, width=5966.33, height=2206.83, viewOffsetX=2276.56, 
    viewOffsetY=794.99)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6267.46, 
    farPlane=9494.59, width=5918.27, height=2189.06, viewOffsetX=1235.77, 
    viewOffsetY=-33.244)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6265.66, 
    farPlane=9496.39, width=5916.57, height=2188.43, cameraPosition=(-1519.08, 
    -7077.53, 3342.36), cameraUpVector=(0.223531, 0.624197, 0.748607), 
    cameraTarget=(-85.5072, 1086.49, 107.513), viewOffsetX=1235.42, 
    viewOffsetY=-33.2345)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5813.64, 
    farPlane=12034.2, width=5489.74, height=2030.55, cameraPosition=(-7699.22, 
    -4178.31, 1983.56), cameraUpVector=(0.525736, 0.0739738, 0.847425), 
    cameraTarget=(212.746, -478.347, 286.029), viewOffsetX=1146.29, 
    viewOffsetY=-30.8369)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5882.61, 
    farPlane=11965.2, width=5554.87, height=2054.64, cameraPosition=(-7703.93, 
    -4237.09, 1833.48), cameraUpVector=(0.57232, -0.0386265, 0.81912), 
    cameraTarget=(208.034, -537.127, 135.947), viewOffsetX=1159.89, 
    viewOffsetY=-31.2027)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6079.16, 
    farPlane=11064.6, width=5740.47, height=2123.29, cameraPosition=(-5435.18, 
    -6648.28, 649.171), cameraUpVector=(0.834525, -0.160486, 0.527079), 
    cameraTarget=(195.304, 142.157, -516.194), viewOffsetX=1198.64, 
    viewOffsetY=-32.2453)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6049.62, 
    farPlane=11094.2, width=5712.58, height=2112.98, cameraPosition=(-5611.29, 
    -6269.17, 2007.32), cameraUpVector=(0.0467045, 0.545872, 0.836566), 
    cameraTarget=(19.1913, 521.27, 841.957), viewOffsetX=1192.82, 
    viewOffsetY=-32.0886)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6048.58, 
    farPlane=11095.2, width=5711.6, height=2112.62, cameraPosition=(-5491.09, 
    -6398.14, 1836.59), cameraUpVector=(0.192912, 0.432245, 0.88088), 
    cameraTarget=(139.393, 392.301, 671.226), viewOffsetX=1192.61, 
    viewOffsetY=-32.0831)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6048.54, 
    farPlane=11095.3, width=5711.57, height=2112.61, cameraPosition=(-5336.4, 
    -6627.15, 1249.56), cameraUpVector=(0.571221, 0.107045, 0.813786), 
    cameraTarget=(294.08, 163.294, 84.2008), viewOffsetX=1192.6, 
    viewOffsetY=-32.0829)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6048.54, 
    farPlane=11095.3, width=5711.58, height=2112.61, cameraPosition=(-5343.12, 
    -6656.44, 1046.46), cameraUpVector=(0.673134, 0.00978469, 0.739456), 
    cameraTarget=(287.364, 134.007, -118.9), viewOffsetX=1192.6, 
    viewOffsetY=-32.0829)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6048.54, 
    farPlane=11095.3, width=5711.59, height=2112.61, cameraPosition=(-5351.89, 
    -6661.49, 974.632), cameraUpVector=(0.706099, -0.0229922, 0.70774), 
    cameraTarget=(278.592, 128.954, -190.728), viewOffsetX=1192.6, 
    viewOffsetY=-32.0829)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5843.67, 
    farPlane=11935, width=5518.14, height=2041.06, cameraPosition=(-7570.5, 
    -4278.18, 2171.86), cameraUpVector=(0.672741, -0.146809, 0.725166), 
    cameraTarget=(183.041, -576.995, -142.074), viewOffsetX=1152.21, 
    viewOffsetY=-30.9962)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6118.24, 
    farPlane=9667.54, width=5777.42, height=2136.96, cameraPosition=(-4135.25, 
    309.053, 7367.73), cameraUpVector=(0.0486591, -0.975438, -0.214833), 
    cameraTarget=(-2150.62, -766.577, -1238.94), viewOffsetX=1206.35, 
    viewOffsetY=-32.4526)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6082.21, 
    farPlane=9703.57, width=5743.4, height=2124.38, cameraPosition=(-3712.41, 
    -111.208, 7517.76), cameraUpVector=(0.501621, -0.855963, -0.125315), 
    cameraTarget=(-1727.78, -1186.84, -1088.91), viewOffsetX=1199.25, 
    viewOffsetY=-32.2615)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6298.81, 
    farPlane=10118.7, width=5947.94, height=2200.03, cameraPosition=(-3028.41, 
    7618.19, 764.687), cameraUpVector=(0.838261, -0.0312206, -0.544374), 
    cameraTarget=(67.2833, -719.763, 508.505), viewOffsetX=1241.96, 
    viewOffsetY=-33.4104)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6265.51, 
    farPlane=10152, width=5916.5, height=2188.4, cameraPosition=(-2943.28, 
    7667.66, 183.309), cameraUpVector=(0.513189, -0.142635, -0.846341), 
    cameraTarget=(152.41, -670.295, -72.8733), viewOffsetX=1235.39, 
    viewOffsetY=-33.2338)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6264.34, 
    farPlane=10153.2, width=5915.39, height=2187.99, cameraPosition=(-3526.4, 
    7480.62, -775.388), cameraUpVector=(-0.314016, -0.450076, -0.835958), 
    cameraTarget=(-430.71, -857.338, -1031.57), viewOffsetX=1235.16, 
    viewOffsetY=-33.2276)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5960.29, 
    farPlane=10457.3, width=8258.99, height=3054.85, viewOffsetX=1883.48, 
    viewOffsetY=-146.19)
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
#* RangeError: farPlane must be a Float > nearPlane
#* File "c:/Users/oyvinpet/abaqus_plugins/ModalViewPlugin\ModalView.py", line 
#* 35, in ModalViewFunc
#*     myViewport.view.setValues(farPlane=4101)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7824.58, 
    farPlane=10914.3, width=41.4559, height=15.3338, viewOffsetX=-863.014, 
    viewOffsetY=-293.969)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.110075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39718e+003,  2.34974e+001,  3.99832e+002,      -      
#: Deformed coordinates (scaled):    -1.39718e+003,  2.34974e+001,  3.99832e+002,      -      
#: Displacement (unscaled):           2.82454e+000, -2.55263e-003, -1.67890e-001,  2.82953e+000
#: 
#: Node: SUSPENSIONBRIDGE.20051
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40100e+003,  2.35000e+001,  4.00100e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39718e+003,  2.34991e+001,  3.99982e+002,      -      
#: Deformed coordinates (scaled):    -1.39718e+003,  2.34991e+001,  3.99982e+002,      -      
#: Displacement (unscaled):           3.82497e+000, -9.07064e-004, -1.17828e-001,  3.82678e+000
#: 
#: Node: SUSPENSIONBRIDGE.110075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39718e+003,  2.34974e+001,  3.99832e+002,      -      
#: Deformed coordinates (scaled):    -1.39718e+003,  2.34974e+001,  3.99832e+002,      -      
#: Displacement (unscaled):           2.82454e+000, -2.55263e-003, -1.67890e-001,  2.82953e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=7827.68, 
    farPlane=10911.2, width=30.566, height=11.3058, viewOffsetX=-872.433, 
    viewOffsetY=-290.058)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7590.24, 
    farPlane=11148.6, width=1150.53, height=425.56, viewOffsetX=-584.385, 
    viewOffsetY=-240.38)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP1', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.100075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.39718e+003, -2.34974e+001,  3.99832e+002,      -      
#: Deformed coordinates (scaled):    -1.39718e+003, -2.34974e+001,  3.99832e+002,      -      
#: Displacement (unscaled):           2.82454e+000,  2.55263e-003, -1.67890e-001,  2.82953e+000
#: 
#: Node: SUSPENSIONBRIDGE.210075
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003,  2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.39823e+003,  2.34978e+001,  3.99869e+002,      -      
#: Deformed coordinates (scaled):     1.39823e+003,  2.34978e+001,  3.99869e+002,      -      
#: Displacement (unscaled):          -1.77074e+000, -2.15288e-003, -1.31033e-001,  1.77559e+000
#: Warning: The output database 'C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb' disk file has changed.
#: 
#: The current plot operation has been canceled, re-open the file to view the results
session.viewports['Viewport: 1'].view.setValues(nearPlane=6822.67, 
    farPlane=11916.2, width=4812.81, height=1780.17, viewOffsetX=1321.98, 
    viewOffsetY=-174.38)
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
#* 0
#* File "c:/Users/oyvinpet/abaqus_plugins/ModalViewPlugin\ModalView.py", line 
#* 53, in ModalViewFunc
#*     lastFrame=modalStep.frames[-1]
session.viewports['Viewport: 1'].view.setValues(nearPlane=1295.32, 
    farPlane=5479.35, width=2743.63, height=1014.82, viewOffsetX=546.409, 
    viewOffsetY=-90.1184)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.110075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40009e+003,  2.34974e+001,  3.99847e+002,      -      
#: Deformed coordinates (scaled):    -1.40009e+003,  2.34974e+001,  3.99847e+002,      -      
#: Displacement (unscaled):          -8.85213e-002, -2.55348e-003, -1.53455e-001,  1.77175e-001
#: 
#: Node: SUSPENSIONBRIDGE.200075
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.40112e+003, -2.34978e+001,  3.99872e+002,      -      
#: Deformed coordinates (scaled):     1.40112e+003, -2.34978e+001,  3.99872e+002,      -      
#: Displacement (unscaled):           1.12249e+000,  2.15131e-003, -1.27831e-001,  1.12974e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=1728.15, 
    farPlane=5046.53, width=486.155, height=179.82, viewOffsetX=537.481, 
    viewOffsetY=271.969)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1722.92, 
    farPlane=5051.76, width=484.683, height=179.275, viewOffsetX=455.786, 
    viewOffsetY=171.413)
#: 
#: Node: SUSPENSIONBRIDGE.100075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40009e+003, -2.34974e+001,  3.99847e+002,      -      
#: Deformed coordinates (scaled):    -1.40009e+003, -2.34974e+001,  3.99847e+002,      -      
#: Displacement (unscaled):          -8.85213e-002,  2.55348e-003, -1.53455e-001,  1.77175e-001
session.viewports['Viewport: 1'].view.setValues(nearPlane=1165.82, 
    farPlane=5608.86, width=3369.08, height=1246.16, viewOffsetX=402.202, 
    viewOffsetY=408.989)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3')
#* No valid frames in the step
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2')
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3')
#* No valid frames in the step
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3')
#* No valid frames in the step
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4')
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7923.35, 
    farPlane=10637.2, width=4285, height=1736.41, cameraPosition=(1700.01, 
    -3287.96, 8713.18), cameraUpVector=(-0.833131, 0.553014, -0.0082608), 
    cameraTarget=(182.458, -105.869, 123.447))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7290.02, 
    farPlane=11172.6, width=3942.5, height=1597.61, cameraPosition=(-4033.68, 
    -6548.78, 5309.68), cameraUpVector=(0.352447, 0.725278, 0.591399), 
    cameraTarget=(185.4, -104.196, 125.193))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6289.22, 
    farPlane=11867.5, width=3401.26, height=1378.29, cameraPosition=(-8164.31, 
    -877.878, 4074.95), cameraUpVector=(0.63268, 0.435266, 0.640515), 
    cameraTarget=(209.437, -137.197, 132.378))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6611.04, 
    farPlane=11668.2, width=3575.31, height=1448.82, cameraPosition=(-7713.51, 
    -4810.67, 1155.57), cameraUpVector=(0.37174, 0.213704, 0.903405), 
    cameraTarget=(199.174, -47.6663, 198.838))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6655.47, 
    farPlane=11639.3, width=3599.35, height=1458.56, cameraPosition=(-7424.93, 
    -5163.49, 1579.9), cameraUpVector=(0.453552, 0.166785, 0.875485), 
    cameraTarget=(194.583, -42.0531, 192.087))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7341.42, 
    farPlane=10953.3, width=109.709, height=44.4571, viewOffsetX=-818.318, 
    viewOffsetY=-96.4677)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.110075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40009e+003,  2.34974e+001,  3.99847e+002,      -      
#: Deformed coordinates (scaled):    -1.40009e+003,  2.34974e+001,  3.99847e+002,      -      
#: Displacement (unscaled):          -9.16069e-002, -2.55311e-003, -1.53399e-001,  1.78689e-001
#: 
#: Node: SUSPENSIONBRIDGE.200075
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.39999e+003, -2.34978e+001,  3.99874e+002,      -      
#: Deformed coordinates (scaled):     1.39999e+003, -2.34978e+001,  3.99874e+002,      -      
#: Displacement (unscaled):          -5.18923e-003,  2.15204e-003, -1.25523e-001,  1.25648e-001
session.viewports['Viewport: 1'].view.setValues(nearPlane=5726.61, 
    farPlane=12568.2, width=8635.76, height=3499.46, viewOffsetX=1591.77, 
    viewOffsetY=765.474)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5670.15, 
    farPlane=12624.6, width=8550.62, height=3464.96, cameraPosition=(-7420.64, 
    -5185.89, 1520.8), cameraUpVector=(0.442105, 0.184441, 0.877795), 
    cameraTarget=(198.874, -64.4522, 132.988), viewOffsetX=1576.08, 
    viewOffsetY=757.928)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7314.3, 
    farPlane=10980.5, width=237.96, height=96.428, viewOffsetX=477.251, 
    viewOffsetY=107.29)
session.viewports['Viewport: 1'].view.setValues(nearPlane=9995.99, 
    farPlane=10984.1, width=325.205, height=131.782, cameraPosition=(2455.16, 
    -9483.03, 4040.65), cameraUpVector=(-0.0700994, 0.677292, 0.732367), 
    cameraTarget=(947.707, -1091.96, 362.358), viewOffsetX=652.23, 
    viewOffsetY=146.626)
session.viewports['Viewport: 1'].view.setValues(nearPlane=9613.31, 
    farPlane=13075.8, width=312.755, height=126.737, cameraPosition=(8836.74, 
    -6892.63, 2026.93), cameraUpVector=(-0.332312, 0.403213, 0.852636), 
    cameraTarget=(1776.13, -1149.57, 189.118), viewOffsetX=627.261, 
    viewOffsetY=141.013)
#: 
#: Node: SUSPENSIONBRIDGE.2701
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.40123e+003,  1.49850e+001,  5.75126e+001,      -      
#: Deformed coordinates (scaled):     1.40123e+003,  1.49850e+001,  5.75126e+001,      -      
#: Displacement (unscaled):           1.23397e+000, -2.01576e-003, -1.28743e+000,  1.78330e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=8416.6, 
    farPlane=14272.5, width=6695.55, height=2713.23, viewOffsetX=1302.08, 
    viewOffsetY=-21.3612)
session.viewports['Viewport: 1'].view.setValues(nearPlane=7764.34, 
    farPlane=11914.4, width=6176.67, height=2502.96, cameraPosition=(-2542.21, 
    -9504.58, 1100.59), cameraUpVector=(-0.153771, 0.531392, 0.833053), 
    cameraTarget=(537.254, -834.262, -146.378), viewOffsetX=1201.17, 
    viewOffsetY=-19.7058)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6212.46, 
    farPlane=12157.8, width=4942.12, height=2002.69, cameraPosition=(-7233.93, 
    -5618.18, 920.412), cameraUpVector=(0.455328, 0.071849, 0.88742), 
    cameraTarget=(202.445, -112.352, 146.752), viewOffsetX=961.089, 
    viewOffsetY=-15.7672)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6431.52, 
    farPlane=11938.7, width=5116.39, height=2073.31, viewOffsetX=130.418, 
    viewOffsetY=-371.563)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6504.56, 
    farPlane=11912, width=5174.5, height=2096.86, cameraPosition=(-6709.97, 
    -4850.28, 4243.99), cameraUpVector=(0.637415, 0.28821, 0.714589), 
    cameraTarget=(252.937, -39.9836, 424.141), viewOffsetX=131.899, 
    viewOffsetY=-375.783)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6068.73, 
    farPlane=12006.4, width=4827.8, height=1956.36, cameraPosition=(-8095.52, 
    -3692.94, 1783.21), cameraUpVector=(0.44835, 0.219479, 0.866494), 
    cameraTarget=(204.17, 112.711, 96.6286), viewOffsetX=123.061, 
    viewOffsetY=-350.604)
#: 
#: Node: SUSPENSIONBRIDGE.1001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40021e+003, -1.49850e+001,  5.74726e+001,      -      
#: Deformed coordinates (scaled):    -1.40021e+003, -1.49850e+001,  5.74726e+001,      -      
#: Displacement (unscaled):          -2.06523e-001,  2.01597e-003, -1.32741e+000,  1.34338e+000
#: 
#: Node: SUSPENSIONBRIDGE.10053
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.36800e+003, -2.35000e+001,  3.85506e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.36471e+003, -2.34772e+001,  3.83871e+002,      -      
#: Deformed coordinates (scaled):    -1.36471e+003, -2.34772e+001,  3.83871e+002,      -      
#: Displacement (unscaled):           3.29232e+000,  2.27817e-002, -1.63493e+000,  3.67598e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=6994.19, 
    farPlane=11081, width=485.63, height=196.791, viewOffsetX=-292.579, 
    viewOffsetY=82.3792)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7000.17, 
    farPlane=11075, width=486.045, height=196.959, viewOffsetX=-423.381, 
    viewOffsetY=-36.5849)
session.viewports['Viewport: 1'].view.setValues(session.views['Left'])
session.viewports['Viewport: 1'].view.setValues(session.views['Bottom'])
session.viewports['Viewport: 1'].view.setValues(nearPlane=7918.77, 
    farPlane=9105.9, width=2692.03, height=1090.89, viewOffsetX=-454.09, 
    viewOffsetY=49.9191)
session.viewports['Viewport: 1'].view.setProjection(projection=PARALLEL)
#: Warning: The output database 'C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb' disk file has changed.
#: 
#: The current plot operation has been canceled, re-open the file to view the results
session.viewports['Viewport: 1'].view.setValues(nearPlane=6125.25, 
    farPlane=10899.4, width=12620.6, height=5114.23, cameraPosition=(1016.51, 
    -8512.33, 221.542), cameraTarget=(1016.51, 0, 221.542))
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
#* 0
#* File "c:/Users/oyvinpet/abaqus_plugins/ModalViewPlugin\ModalView.py", line 
#* 53, in ModalViewFunc
#*     lastFrame=modalStep.frames[-1]
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=1781.77, 
    farPlane=4992.9, width=199.883, height=74.8408, cameraPosition=(-3031.02, 
    -1576.98, 995.027), cameraTarget=(-404.021, 865.024, 40.0276))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=9441.77, 
    farPlane=13140.9, width=1497.7, height=560.775, cameraPosition=(-7356.17, 
    -8026.19, 3325.83), cameraTarget=(865.019, -383.956, 337.159))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=8431.51, 
    farPlane=14151.2, width=9617.78, height=3601.12, cameraPosition=(-7294.93, 
    -7934.64, 3728.38), cameraTarget=(926.259, -292.409, 739.71))
session.viewports['Viewport: 1'].view.setValues(nearPlane=8985.78, 
    farPlane=14364.4, cameraPosition=(-4005.52, -9537.6, 5702.71), 
    cameraUpVector=(0.110081, 0.728665, 0.675965), cameraTarget=(831.774, 
    -246.365, 682.999))
session.viewports['Viewport: 1'].view.setValues(nearPlane=9787.73, 
    farPlane=13985.2, cameraPosition=(-845.033, -11089.1, 4506.24), 
    cameraUpVector=(-0.232885, 0.652181, 0.721405), cameraTarget=(847.851, 
    -254.257, 676.913))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(-845.033, 
    -11089.1, 4506.24), cameraUpVector=(0.0777399, 0.623603, 0.777867), 
    cameraTarget=(847.851, -254.257, 676.913))
session.viewports['Viewport: 1'].view.setValues(nearPlane=9462.97, 
    farPlane=15631.2, cameraPosition=(8223.99, -8703.31, 4014.33), 
    cameraUpVector=(-0.232805, 0.572937, 0.78584), cameraTarget=(1054.47, 
    -199.902, 665.706))
session.viewports['Viewport: 1'].view.setValues(nearPlane=10897.2, 
    farPlane=14197, width=1598.76, height=598.612, cameraPosition=(6872.71, 
    -9805.15, 4109.48), cameraTarget=(-296.808, -1301.74, 760.855))
session.odbs['C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb'].close(
    )
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].view.setValues(nearPlane=5647.86, 
    farPlane=9625.48, cameraPosition=(3994.59, -4455.07, 4959.97), 
    cameraUpVector=(-0.0912559, 0.913015, 0.397587), cameraTarget=(
    -0.000114441, -0.00114441, 215.05))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5992.65, 
    farPlane=9280.69, cameraPosition=(2584.9, -5279.95, 5089.38), 
    cameraUpVector=(-0.277095, 0.815515, 0.508088), cameraTarget=(0, 
    -0.00108337, 215.05))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(2584.9, 
    -5279.95, 5089.38), cameraUpVector=(-0.156604, 0.857642, 0.489823), 
    cameraTarget=(9.53674e-006, -0.00107384, 215.05))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5242.41, 
    farPlane=10030.9, cameraPosition=(5874.4, -4360.85, 2404.37), 
    cameraUpVector=(-0.350414, 0.50704, 0.787478), cameraTarget=(0.000106812, 
    -0.00110245, 215.05))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5923.11, 
    farPlane=9350.24, width=979.308, height=366.676, cameraPosition=(5399.57, 
    -4822.5, 2758.89), cameraTarget=(-474.826, -461.648, 569.565))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5738.01, 
    farPlane=9535.34, width=1963.79, height=735.289, cameraPosition=(5544.25, 
    -4652.08, 2710.13), cameraTarget=(-330.147, -291.231, 520.808))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3')
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.3333
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -7.20000e+001, -7.00000e+000,  1.02849e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -7.20051e+001, -6.99995e+000,  9.10832e+001,      -      
#: Deformed coordinates (scaled):    -7.20051e+001, -6.99995e+000,  9.10832e+001,      -      
#: Displacement (unscaled):          -5.05788e-003,  5.00246e-005, -1.17660e+001,  1.17660e+001
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(5863.81, 
    -4400.81, 2353.17), cameraTarget=(-10.586, -39.9652, 163.851))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6004.52, 
    farPlane=9322.55, cameraPosition=(5118.98, -5655.79, -520.725), 
    cameraUpVector=(0.143477, 0.478751, 0.866148), cameraTarget=(-10.5861, 
    -39.9653, 163.851))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5524.69, 
    farPlane=9761.63, cameraPosition=(7051.45, -2942.11, 420.405), 
    cameraUpVector=(-0.253185, 0.339558, 0.905868), cameraTarget=(-3.81054, 
    -30.4508, 167.151))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5797.87, 
    farPlane=9488.46, width=393.024, height=147.157, cameraPosition=(7061, 
    -2925.63, 343.685), cameraTarget=(5.74329, -13.9739, 90.4314))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5769.44, 
    farPlane=9491.01, cameraPosition=(7068.41, -2730.93, 1118.07), 
    cameraUpVector=(-0.347903, 0.35977, 0.865753), cameraTarget=(5.74959, 
    -13.8082, 91.0901))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5769.44, 
    farPlane=9491.01, cameraPosition=(7069.89, -2725.85, 1121.35), 
    cameraTarget=(7.22822, -8.72508, 94.37))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5697.49, 
    farPlane=9502.87, cameraPosition=(7097.95, -673.304, 2849.83), 
    cameraUpVector=(-0.599533, 0.372714, 0.708268), cameraTarget=(7.20453, 
    -10.4562, 92.9122))
#: 
#: Element: SUSPENSIONBRIDGE.3057
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 1333, 11333
#:   S, Mises (Not averaged): NoValue
session.viewports['Viewport: 1'].view.setValues(nearPlane=5748.01, 
    farPlane=9452.35, width=100.747, height=37.722, cameraPosition=(7091.79, 
    -672.857, 2865.78), cameraTarget=(1.04459, -10.0087, 108.863))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5716.46, 
    farPlane=9519.38, cameraPosition=(7411.35, -1099.11, 1595.75), 
    cameraUpVector=(-0.446497, 0.391743, 0.804474), cameraTarget=(-0.489462, 
    -7.96244, 114.96))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5716.47, 
    farPlane=9519.39, cameraPosition=(7412.15, -1108.04, 1585.19), 
    cameraTarget=(0.305632, -16.8958, 104.398))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5782.34, 
    farPlane=9486.24, cameraPosition=(7293.92, -2222.98, 604.116), 
    cameraUpVector=(-0.312764, 0.320999, 0.893945), cameraTarget=(0.596459, 
    -14.1533, 106.811))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(7293, -2229.15, 
    590.284), cameraTarget=(-0.327853, -20.3195, 92.9788))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5711.81, 
    farPlane=9556.78, width=568.008, height=212.676, cameraPosition=(7304.68, 
    -2182.26, 627.254), cameraTarget=(11.3512, 26.5672, 129.949))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5671.94, 
    farPlane=9597.68, cameraPosition=(7414.41, -1749.01, 730.607), 
    cameraUpVector=(-0.348543, 0.282773, 0.89362), cameraTarget=(11.317, 
    26.432, 129.917))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5662.51, 
    farPlane=9623.25, cameraPosition=(7544.96, -1222.45, 186.123), 
    cameraUpVector=(-0.323057, 0.131569, 0.937189), cameraTarget=(11.285, 
    26.3031, 130.05))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP2', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5658.74, 
    farPlane=9619.53, cameraPosition=(7514.68, -1350.42, 480.173), 
    cameraUpVector=(-0.353922, 0.154486, 0.922428), cameraTarget=(11.2604, 
    26.1992, 130.289))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5713.55, 
    farPlane=9536.36, cameraPosition=(7135.01, -2425.53, 1379.58), 
    cameraUpVector=(-0.385073, 0.353688, 0.852423), cameraTarget=(11.1382, 
    25.853, 130.579))
#: 
#: Element: SUSPENSIONBRIDGE.80060
#:   Type: B31
#:   Material: 
#:   Section: 
#:   Connect: 11357, 10111
#:   Results: Integration Point values not available
session.viewports['Viewport: 1'].view.setValues(nearPlane=5790.97, 
    farPlane=9458.94, width=138.219, height=51.7524, cameraPosition=(7133.28, 
    -2450.39, 1340.64), cameraTarget=(9.4118, 0.996298, 91.6402))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=1)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP3', frame=0)
#: Warning: The output database 'C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb' disk file has changed.
#: 
#: The current plot operation has been canceled, re-open the file to view the results
session.viewports['Viewport: 1'].view.setValues(nearPlane=7620.56, 
    farPlane=7698.92, width=231.558, height=86.7009, cameraPosition=(7140.73, 
    -2431.79, 1334.67), cameraTarget=(16.8583, 19.5932, 85.6676))
o1 = session.openOdb(
    name='C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb')
session.viewports['Viewport: 1'].setValues(displayedObject=o1)
#: Model: C:/Cloud/OD_OWP/Work/Python/Github/abaqustools/suspensionbridge_example/sulafjorden/Sulafjorden_test.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             1
#: Number of Element Sets:       243
#: Number of Node Sets:          86
#: Number of Steps:              5
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].odbDisplay.setPrimaryVariable(
    variableLabel='U', outputPosition=NODAL, refinement=(INVARIANT, 
    'Magnitude'), )
session.viewports['Viewport: 1'].view.setValues(nearPlane=5072.35, 
    farPlane=10200.9, cameraPosition=(6453.55, -1920.98, 3817.76), 
    cameraUpVector=(-0.530584, 0.622201, 0.575628), cameraTarget=(-0.00608444, 
    0.0188141, 215.01))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5702.72, 
    farPlane=9570.45, cameraPosition=(-3752.36, -4420.11, 5184.95), 
    cameraUpVector=(0.198141, 0.883934, 0.423557), cameraTarget=(0.0326996, 
    0.0284882, 215.005))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6531.82, 
    farPlane=8741.36, cameraPosition=(-533.057, -6777.77, 3692.87), 
    cameraUpVector=(0.398254, 0.667231, 0.629442), cameraTarget=(0.00653076, 
    0.0476074, 215.017))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6531.82, 
    farPlane=8741.36, cameraPosition=(-533.057, -6777.77, 3692.87), 
    cameraUpVector=(0.16588, 0.712411, 0.681875), cameraTarget=(0.00653839, 
    0.0476, 215.017))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7381.12, 
    farPlane=7892.07, width=82.4186, height=30.8595, cameraPosition=(-1906.34, 
    -6616.26, 3797.13), cameraTarget=(-1373.28, 161.552, 319.277))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
#: 
#: Node: SUSPENSIONBRIDGE.100075
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40098e+003, -2.34977e+001,  3.99841e+002,      -      
#: Deformed coordinates (scaled):    -1.40098e+003, -2.34977e+001,  3.99841e+002,      -      
#: Displacement (unscaled):          -9.79492e-001,  2.28205e-003, -1.58775e-001,  9.92280e-001
#: 
#: Node: SUSPENSIONBRIDGE.200075
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003, -2.35000e+001,  4.00000e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.40098e+003, -2.34977e+001,  3.99841e+002,      -      
#: Deformed coordinates (scaled):     1.40098e+003, -2.34977e+001,  3.99841e+002,      -      
#: Displacement (unscaled):           9.79492e-001,  2.28205e-003, -1.58775e-001,  9.92280e-001
session.viewports['Viewport: 1'].view.setValues(nearPlane=7322.11, 
    farPlane=7951.11, width=396.474, height=148.449, cameraPosition=(-515.119, 
    -6832.13, 3589.69), cameraTarget=(17.944, -54.3088, 111.833))
session.viewports['Viewport: 1'].view.setValues(nearPlane=6876.14, 
    farPlane=8485.1, cameraPosition=(-2720.62, -7076.11, 1453.56), 
    cameraUpVector=(0.233647, 0.439503, 0.867321), cameraTarget=(3.97952, 
    -70.7232, 104.662))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5789.7, 
    farPlane=9571.54, width=6478.28, height=2425.62, cameraPosition=(-1625.97, 
    -7463.81, 1651.1), cameraTarget=(1098.63, -458.427, 302.205))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5801.26, 
    farPlane=9559.97, cameraPosition=(-1623.2, -7470.63, 1621.32), 
    cameraUpVector=(0.255538, 0.430655, 0.865585), cameraTarget=(1101.4, 
    -465.241, 272.42))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4672.87, 
    farPlane=10744.1, cameraPosition=(-7436.45, -2342.64, -132.142), 
    cameraUpVector=(0.275141, 0.0164617, 0.961263), cameraTarget=(101.281, 
    -1211.73, 339.112))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4858.88, 
    farPlane=10557.2, cameraPosition=(-6294.06, -4612.14, 123.337), 
    cameraUpVector=(0.310979, 0.0812212, 0.94694), cameraTarget=(492.199, 
    -1113.61, 282.818))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4646.9, 
    farPlane=10616.9, cameraPosition=(7379.48, -896.867, 2284.61), 
    cameraUpVector=(-0.565042, -0.111747, 0.817459), cameraTarget=(166.698, 
    1028.56, 676.202))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4995.85, 
    farPlane=10177, cameraPosition=(4562.3, 4693.35, 4222.02), cameraUpVector=(
    -0.335792, -0.705621, 0.623974), cameraTarget=(-852.968, 584.966, 741.415))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4742.24, 
    farPlane=10500.9, cameraPosition=(6320.77, 3821.58, 2402.7), 
    cameraUpVector=(-0.176599, -0.712601, 0.678979), cameraTarget=(-471.995, 
    616.938, 1021.71))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4742.24, 
    farPlane=10500.9, cameraPosition=(6258.31, 4273.73, 1660.68), 
    cameraUpVector=(-0.482751, -0.143369, 0.863943), cameraTarget=(-534.454, 
    1069.09, 279.694))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5120.85, 
    farPlane=10202.7, cameraPosition=(6318.45, -4487.25, 597.162), 
    cameraUpVector=(-0.0156866, 0.583095, 0.812252), cameraTarget=(853.946, 
    792.642, -164.712))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4846.53, 
    farPlane=10410.8, cameraPosition=(5889.2, 5000.71, 546.281), 
    cameraUpVector=(-0.64214, 0.233455, 0.730175), cameraTarget=(-549.133, 
    992.384, -348.001))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5351.58, 
    farPlane=9895.28, cameraPosition=(3331.74, 6891.52, 1239.1), 
    cameraUpVector=(-0.464809, -0.247145, 0.850219), cameraTarget=(-999.121, 
    711.461, 69.0051))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(3328.85, 
    6887.56, 1270.71), cameraUpVector=(-0.445712, -0.261639, 0.856088), 
    cameraTarget=(-1002.01, 707.502, 100.611))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5351.58, 
    cameraPosition=(3346.05, 6806.78, 1633.68), cameraUpVector=(-0.213098, 
    -0.428783, 0.877915), cameraTarget=(-984.806, 626.723, 463.583))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5417.12, 
    farPlane=9755.98, cameraPosition=(2655.69, 6341.03, 3649.72), 
    cameraUpVector=(-0.533383, -0.511956, 0.673353), cameraTarget=(-1044.75, 
    641.452, 165.463))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(2628.7, 6188.7, 
    3927.56), cameraUpVector=(-0.330801, -0.650055, 0.684105), cameraTarget=(
    -1071.74, 489.123, 443.308))
session.viewports['Viewport: 1'].view.setValues(nearPlane=4887.6, 
    farPlane=10316.7, cameraPosition=(5267.13, 4847.34, 3032.08), 
    cameraUpVector=(-0.435955, -0.46298, 0.771746), cameraTarget=(-744.049, 
    851.913, 537.926))
#: 
#: Node: SUSPENSIONBRIDGE.2701
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.40065e+003,  1.49850e+001,  5.74763e+001,      -      
#: Deformed coordinates (scaled):     1.40065e+003,  1.49850e+001,  5.74763e+001,      -      
#: Displacement (unscaled):           6.46408e-001, -2.01302e-003, -1.32365e+000,  1.47306e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=6014.17, 
    farPlane=9190.15, width=97.7809, height=36.6115, cameraPosition=(5498.2, 
    4575.04, 2911.38), cameraTarget=(-512.978, 579.608, 417.23))
session.viewports['Viewport: 1'].view.setValues(nearPlane=8686.18, 
    farPlane=9011.04, cameraPosition=(-1913.01, 8744.32, -83.1465), 
    cameraUpVector=(0.317772, -0.300585, 0.89926), cameraTarget=(-1445.42, 
    1122.91, 34.8167))
session.viewports['Viewport: 1'].view.setValues(nearPlane=8136.63, 
    farPlane=11856.5, cameraPosition=(-9572.01, 585.821, 3108.65), 
    cameraUpVector=(0.645429, 0.0766249, 0.759967), cameraTarget=(-2431.95, 
    105.633, 442.668))
#: 
#: Node: SUSPENSIONBRIDGE.2001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003,  1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40065e+003,  1.49850e+001,  5.74763e+001,      -      
#: Deformed coordinates (scaled):    -1.40065e+003,  1.49850e+001,  5.74763e+001,      -      
#: Displacement (unscaled):          -6.46408e-001, -2.01302e-003, -1.32365e+000,  1.47306e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=7576.55, 
    farPlane=12416.6, width=3475.31, height=1301.24, cameraPosition=(-9511.77, 
    863.381, 3219.99), cameraTarget=(-2371.71, 383.193, 554.01))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7700.44, 
    farPlane=11684.5, cameraPosition=(-7733.99, -5869.47, 1388.95), 
    cameraUpVector=(0.263075, 0.387181, 0.883676), cameraTarget=(-2371.71, 
    -535.084, 335.966))
session.viewports['Viewport: 1'].view.setValues(width=3510.41, height=1314.38, 
    cameraPosition=(-7736.45, -5866.77, 1390.1), cameraTarget=(-2374.17, 
    -532.388, 337.112))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(-7512.74, 
    -6085.85, 1419.48), cameraTarget=(-2150.46, -751.46, 366.5))
session.viewports['Viewport: 1'].view.setValues(width=3475.31, height=1301.24, 
    cameraPosition=(-7512.52, -6086.37, 1417.96), cameraTarget=(-2150.24, 
    -751.978, 364.983))
session.viewports['Viewport: 1'].view.setValues(nearPlane=7630.19, 
    farPlane=11554.9, cameraPosition=(-7123.32, -5427.33, 3808.39), 
    cameraUpVector=(0.413943, 0.565073, 0.713683), cameraTarget=(-2077.15, 
    -639.285, 657.318))
#: 
#: Node: SUSPENSIONBRIDGE.1001
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.40000e+003, -1.49870e+001,  5.88000e+001,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.40065e+003, -1.49850e+001,  5.74763e+001,      -      
#: Deformed coordinates (scaled):    -1.40065e+003, -1.49850e+001,  5.74763e+001,      -      
#: Displacement (unscaled):          -6.46408e-001,  2.01304e-003, -1.32365e+000,  1.47306e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.25931e+013, 
    farPlane=1.2595e+013, width=5.83055e+009, height=1.99354e+009, 
    cameraPosition=(-8.32096e+012, -7.89711e+012, 5.19687e+012), cameraTarget=(
    9.75543e+008, -8.56384e+008, 2.59717e+008))
import ModalView
ModalView.ModalViewFunc(DoRenderBeamProfiles='No', deflection=50, 
    X_in_or_out='In')
#* RangeError: farPlane must be a Float > nearPlane
#* File "c:/Users/oyvinpet/abaqus_plugins/ModalViewPlugin\ModalView.py", line 
#* 35, in ModalViewFunc
#*     myViewport.view.setValues(farPlane=4101)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=0)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP4', frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=1.79708e+009, 
    farPlane=4.44757e+009, width=9.86637e+009, height=3.37345e+009, 
    cameraPosition=(-3.05254e+009, 1.30885e+009, -1.33449e+008), cameraTarget=(
    -7.51669e+008, -7.10966e+008, 4.79103e+008))
session.viewports['Viewport: 1'].view.fitView()
session.viewports['Viewport: 1'].view.setValues(nearPlane=5469.1, 
    farPlane=9804.21, cameraPosition=(-5765.94, 4924.46, -814.935), 
    cameraUpVector=(0.0489317, 0.0527207, 0.99741), cameraTarget=(-138.408, 
    -15.6599, 683.261))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5469.1, 
    cameraPosition=(-5523.12, 5092.13, -1174.14), cameraTarget=(104.408, 
    152.007, 324.057))
#: 
#: Node: SUSPENSIONBRIDGE.10167
#:                                         1             2             3        Magnitude
#: Base coordinates:                  1.36800e+003, -2.35000e+001,  3.85612e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):   1.36557e+003, -2.34775e+001,  3.84014e+002,      -      
#: Deformed coordinates (scaled):     1.36557e+003, -2.34775e+001,  3.84014e+002,      -      
#: Displacement (unscaled):          -2.42930e+000,  2.24959e-002, -1.59821e+000,  2.90797e+000
#: 
#: Node: SUSPENSIONBRIDGE.20052
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39200e+003,  2.35000e+001,  3.95262e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.38926e+003,  2.34921e+001,  3.94666e+002,      -      
#: Deformed coordinates (scaled):    -1.38926e+003,  2.34921e+001,  3.94666e+002,      -      
#: Displacement (unscaled):           2.74235e+000, -7.93222e-003, -5.95469e-001,  2.80626e+000
#: 
#: Node: SUSPENSIONBRIDGE.10052
#:                                         1             2             3        Magnitude
#: Base coordinates:                 -1.39200e+003, -2.35000e+001,  3.95262e+002,      -      
#: Scale:                             1.00000e+000,  1.00000e+000,  1.00000e+000,      -      
#: Deformed coordinates (unscaled):  -1.38926e+003, -2.34921e+001,  3.94666e+002,      -      
#: Deformed coordinates (scaled):    -1.38926e+003, -2.34921e+001,  3.94666e+002,      -      
#: Displacement (unscaled):           2.74235e+000,  7.93222e-003, -5.95469e-001,  2.80626e+000
session.viewports['Viewport: 1'].view.setValues(nearPlane=3810.77, 
    farPlane=11462.5, width=12619.2, height=4314.7, cameraPosition=(-7215.33, 
    3457.32, -208.455), cameraTarget=(-1587.8, -1482.8, 1289.74))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    UNDEFORMED, CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3893.38, 
    farPlane=11379.9, width=13784.4, height=4713.07, cameraPosition=(-8646.01, 
    2009.1, 390.109), cameraTarget=(-3018.48, -2931.03, 1888.31))
session.viewports['Viewport: 1'].odbDisplay.display.setValues(plotState=(
    CONTOURS_ON_DEF, ))
session.viewports['Viewport: 1'].view.setValues(nearPlane=5860.17, 
    farPlane=9413.14, width=1945.67, height=665.253, cameraPosition=(-6018.16, 
    4517.21, -1210.4), cameraTarget=(-390.629, -422.907, 287.798))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=1)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5465.96, 
    farPlane=9807.34, width=3815.87, height=1304.7, cameraPosition=(-5842.9, 
    4698.63, -1270.49), cameraTarget=(-215.378, -241.493, 227.712))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=2)
session.viewports['Viewport: 1'].odbDisplay.commonOptions.setValues(
    uniformScaleFactor=50)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5832.12, 
    farPlane=9441.19, width=1707.09, height=583.676, cameraPosition=(-5745.9, 
    4806.32, -1279.78), cameraTarget=(-118.372, -133.806, 218.422))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=3)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=4)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=5)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=6)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=7)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=8)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=9)
session.viewports['Viewport: 1'].view.setValues(nearPlane=5257.13, 
    farPlane=10016.2, width=4764.85, height=1629.17, cameraPosition=(-5976.06, 
    4605.07, -1078.81), cameraTarget=(-348.537, -335.052, 419.383))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=10)
session.viewports['Viewport: 1'].view.setValues(nearPlane=6029.32, 
    farPlane=9244.04, width=657.871, height=224.935, cameraPosition=(-5706.74, 
    4820.82, -1379.01), cameraTarget=(-79.2192, -119.3, 119.19))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=9)
session.viewports['Viewport: 1'].view.setValues(nearPlane=3972.76, 
    farPlane=11300.6, width=13123.6, height=4487.15, cameraPosition=(-6683.9, 
    3850.64, -907.675), cameraTarget=(-1056.38, -1089.48, 590.523))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3886.56, 
    farPlane=9096.12, cameraPosition=(-1485.74, 6423.67, -1531.26), 
    cameraUpVector=(-0.505671, 0.0474987, 0.861418), cameraTarget=(-2177.48, 
    -976.556, 222.756))
session.viewports['Viewport: 1'].view.setValues(nearPlane=1009.69, 
    farPlane=9404.56, cameraPosition=(4900.97, 1914.26, -512.877), 
    cameraUpVector=(-0.358597, 0.798212, 0.484011), cameraTarget=(-2568.45, 
    335.921, -325.758))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3839.49, 
    farPlane=9021.45, cameraPosition=(-1514.26, 6500.41, 1294.07), 
    cameraUpVector=(-0.470722, -0.322334, 0.821293), cameraTarget=(-2175.64, 
    -963.981, -176.937))
session.viewports['Viewport: 1'].view.setValues(nearPlane=934.898, 
    farPlane=9388.91, cameraPosition=(5057.07, 801.069, 1207.24), 
    cameraUpVector=(-0.34068, 0.141078, 0.929534), cameraTarget=(-2495.25, 
    660.016, 84.3052))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3019.29, 
    farPlane=7304.52, width=1276.6, height=436.488, cameraPosition=(5150.25, 
    178.397, 658.776), cameraTarget=(-2402.07, 37.3437, -464.159))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=10)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=11)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=12)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=13)
session.viewports['Viewport: 1'].view.setValues(nearPlane=2629.02, 
    farPlane=7694.8, width=3325.75, height=1137.12, cameraPosition=(5087.59, 
    304.922, 1064.29), cameraTarget=(-2464.73, 163.87, -58.6493))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2791.39, 
    farPlane=7660.23, cameraPosition=(4770.02, 2072.04, 999.63), 
    cameraUpVector=(-0.349933, 0.0209751, 0.93654), cameraTarget=(-2465.72, 
    -135.972, -43.0317))
session.viewports['Viewport: 1'].view.setValues(cameraPosition=(4924.84, 
    1697.42, 718.556), cameraTarget=(-2310.9, -510.588, -324.106))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=14)
session.viewports['Viewport: 1'].view.setValues(nearPlane=3319.61, 
    farPlane=7132, width=316.773, height=108.309, cameraPosition=(4961.9, 
    1543.21, 787.903), cameraTarget=(-2273.84, -664.796, -254.759))
session.animationController.setValues(animationType=NONE)
session.viewports['Viewport: 1'].view.setValues(nearPlane=3370.04, 
    farPlane=7083.28, width=117.705, height=40.2449, cameraPosition=(4967.72, 
    1520.8, 795.017), cameraTarget=(-2268.02, -687.211, -247.645))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3417.29, 
    farPlane=7071.4, cameraPosition=(4794.43, 1423.51, 1790.44), 
    cameraUpVector=(-0.483281, -0.0209448, 0.875214), cameraTarget=(-2215.5, 
    -663.439, -405.893))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2657.36, 
    farPlane=7831.33, width=5019.92, height=1716.38, cameraPosition=(4857.11, 
    1444.84, 1570.12), cameraTarget=(-2152.82, -642.106, -626.214))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2525.28, 
    farPlane=7936.76, cameraPosition=(4861.55, 875.426, 1937.77), 
    cameraUpVector=(-0.529719, -0.00930673, 0.848122), cameraTarget=(-2165.55, 
    -555.199, -687.416))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3366, 
    farPlane=7096.05, width=247.233, height=84.5322, cameraPosition=(4846.34, 
    989.5, 1916.31), cameraTarget=(-2180.76, -441.125, -708.872))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3368.79, 
    farPlane=7093.26, cameraPosition=(4857.4, 988.35, 1887.33), cameraTarget=(
    -2169.7, -442.275, -737.854))
session.viewports['Viewport: 1'].view.setValues(nearPlane=3401.95, 
    farPlane=7060.09, width=55.9982, height=19.1466, cameraPosition=(4855.53, 
    983.048, 1895.22), cameraTarget=(-2171.57, -447.577, -729.967))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=15)
session.viewports['Viewport: 1'].view.setValues(nearPlane=2851.69, 
    farPlane=7607.73, width=3378, height=1154.98, cameraPosition=(4753.56, 
    1377.18, 1953.4), cameraTarget=(-2273.54, -53.4497, -671.785))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2657.7, 
    farPlane=7664.98, cameraPosition=(5149.08, 180.212, 688.784), 
    cameraUpVector=(-0.339108, -0.166772, 0.925847), cameraTarget=(-2403.73, 
    228.735, -438.717))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2657.7, 
    cameraPosition=(5117.41, 467.122, 913.299), cameraTarget=(-2435.4, 515.645, 
    -214.202))
session.viewports['Viewport: 1'].view.setValues(nearPlane=2681.87, 
    farPlane=7473.97, cameraPosition=(4727.47, 1753.16, 821.494), 
    cameraUpVector=(-0.27369, -0.199355, 0.940931), cameraTarget=(-2368.23, 
    -880.025, -196.352))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=16)
session.animationController.setValues(animationType=HARMONIC, viewports=(
    'Viewport: 1', ))
session.animationController.play(duration=UNLIMITED)
session.viewports['Viewport: 1'].view.setValues(nearPlane=3194.12, 
    farPlane=6961.65, width=364.135, height=124.503, cameraPosition=(4724.08, 
    1789.46, 751.198), cameraTarget=(-2371.62, -843.728, -266.649))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=17)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=19)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=20)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=21)
session.viewports['Viewport: 1'].view.setValues(nearPlane=2712.36, 
    farPlane=7444.87, width=2926.43, height=1000.59, cameraPosition=(4567.19, 
    2089, 1070.03), cameraTarget=(-2528.51, -544.184, 52.1793))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=22)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=23)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=24)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=25)
session.viewports['Viewport: 1'].view.setValues(nearPlane=2986.23, 
    farPlane=7171.01, width=1663.46, height=568.761, cameraPosition=(4632.91, 
    1939.06, 999.775), cameraTarget=(-2462.79, -694.123, -18.0707))
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=27)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=26)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=28)
session.viewports['Viewport: 1'].odbDisplay.setFrame(step='STEP_MODAL', 
    frame=29)
