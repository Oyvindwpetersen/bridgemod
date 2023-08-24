1

   Abaqus 3DEXPERIENCE R2017x                                  Date 05-Jun-2023   Time 12:22:21
   For use by NTNU NORGES TEKNISK NATURVITENSKAPELIGE UNIVERSITET under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                1.000E-06
          AND A TOTAL TIME PERIOD OF                            1.00    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-09
          THE MAXIMUM TIME INCREMENT ALLOWED IS                 1.00    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

 CONVERGENCE TOLERANCE PARAMETERS FOR FORCE    
     CRITERION FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR DISP.    CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE FORCE                               1.000E-02
     AVERAGE FORCE     IS TIME AVERAGE FORCE    
     ALTERNATE CRIT. FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO FORCE     RELATIVE TO TIME AVRG. FORCE         1.000E-05
     CRITERION FOR RESIDUAL FORCE     WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR DISP.    CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL FORCE     FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO FORCE     REL. TO TIME AVRG. MAX. FORCE        1.000E-05
     CRITERION FOR ZERO DISP.    RELATIVE TO CHARACTERISTIC LENGTH     1.000E-08

 CONVERGENCE TOLERANCE PARAMETERS FOR MOMENT   
     CRITERION FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR ROTATION CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE MOMENT                              1.000E-02
     AVERAGE MOMENT    IS TIME AVERAGE MOMENT   
     ALTERNATE CRIT. FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO MOMENT    RELATIVE TO TIME AVRG. MOMENT        1.000E-05
     CRITERION FOR RESIDUAL MOMENT    WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR ROTATION CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL MOMENT    FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO MOMENT    REL. TO TIME AVRG. MAX. MOMENT       1.000E-05

     VOLUMETRIC STRAIN COMPATIBILITY TOLERANCE FOR HYBRID SOLIDS       1.000E-05
     AXIAL STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS             1.000E-05
     TRANS. SHEAR STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS      1.000E-05
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P>P0          5.000E-03
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P=0.0         0.100    
     CONTACT FORCE ERROR TOLERANCE FOR CONVERT SDI=YES                 1.00    
     DISPLACEMENT COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS           1.000E-05
     ROTATION COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS               1.000E-05

 EQUILIBRIUM WILL BE CHECKED FOR SEVERE DISCONTINUITY ITERATIONS

 TIME INCREMENTATION CONTROL PARAMETERS:
     FIRST EQUILIBRIUM ITERATION FOR CONSECUTIVE DIVERGENCE CHECK              4
     EQUILIBRIUM ITERATION AT WHICH LOG. CONVERGENCE RATE CHECK BEGINS         8
     EQUILIBRIUM ITERATION AFTER WHICH ALTERNATE RESIDUAL IS USED              9
     MAXIMUM EQUILIBRIUM ITERATIONS ALLOWED                                   16
     EQUILIBRIUM ITERATION COUNT FOR CUT-BACK IN NEXT INCREMENT               10
     MAXIMUM EQUILIB. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      4
     MAXIMUM ITERATIONS FOR SEVERE DISCONTINUITIES                            50
     MAXIMUM ATTEMPTS ALLOWED IN AN INCREMENT                                  5
     MAXIMUM DISCON. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      50
     MAXIMUM CONTACT AUGMENTATIONS FOR *SURFACE BEHAVIOR,AUGMENTED LAGRANGE   50
     CUT-BACK FACTOR AFTER DIVERGENCE                                 0.2500    
     CUT-BACK FACTOR FOR TOO SLOW CONVERGENCE                         0.5000    
     CUT-BACK FACTOR AFTER TOO MANY EQUILIBRIUM ITERATIONS            0.7500    
     CUT-BACK FACTOR AFTER TOO MANY SEVERE DISCONTINUITY ITERATIONS   0.2500    
     CUT-BACK FACTOR AFTER PROBLEMS IN ELEMENT ASSEMBLY               0.2500    
     INCREASE FACTOR AFTER TWO INCREMENTS THAT CONVERGE QUICKLY        1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED                       1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DYNAMICS)            1.250    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DIFFUSION)           2.000    
     MINIMUM TIME INCREMENT RATIO FOR EXTRAPOLATION TO OCCUR          0.1000    
     MAX. RATIO OF TIME INCREMENT TO STABILITY LIMIT                   1.000    
     FRACTION OF STABILITY LIMIT FOR NEW TIME INCREMENT               0.9500    
     TIME INCREMENT INCREASE FACTOR BEFORE A TIME POINT                1.000    
     GLOBAL STABILIZATION CONTROL IS NOT USED

          PRINT OF INCREMENT NUMBER, TIME, ETC., EVERY    1  INCREMENTS

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                     100

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      16.2    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     ELEMENT OPERATIONS WILL BE CARRIED OUT IN PARALLEL USING   4 PROCESSORS

     PARALLEL CONTACT TRACKING ENABLED


     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS
  
     ASYNCHRONOUS OUTPUT DATABASE FRAME FLUSH STARTED
  


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.000E-06
 
     INITIAL ELEMENT LOAD BALANCE
        COMPUTE NODE   1   PROCESS    NUMBER OF ELEMENTS
                              1            53
                              2            53
                              3            53
                              4            53

 ***WARNING: THERE ARE 2 UNCONNECTED REGIONS IN THE MODEL.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.180E+05   TIME AVG. FORCE       2.180E+05
 LARGEST RESIDUAL FORCE            -1.220E+06   AT NODE       1022   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.922       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -0.922       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      6.38       TIME AVG. MOMENT       6.38    
 LARGEST RESIDUAL MOMENT             1.73       AT NODE       1020   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.823E-02   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.823E-02   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       346.       TIME AVG. FORCE        346.    
 LARGEST RESIDUAL FORCE            -1.019E+05   AT NODE       1028   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.923       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.111E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      6.80       TIME AVG. MOMENT       6.80    
 LARGEST RESIDUAL MOMENT            1.879E-03   AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.823E-02   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.674E-03   AT NODE       1027   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 6 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             CABLEPART.1091 D.O.F. 3 RATIO = 11.1203E+09 .
 

 ***WARNING: SOLVER PROBLEM. NUMERICAL SINGULARITY WHEN PROCESSING NODE 
             CABLEPART.2091 D.O.F. 3 RATIO = 11.1203E+09 .

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.506E+04   TIME AVG. FORCE       1.506E+04
 LARGEST RESIDUAL FORCE             5.041E+05   AT NODE       1105   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.12       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -0.221       AT NODE       1101   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.35       TIME AVG. MOMENT       8.35    
 LARGEST RESIDUAL MOMENT            8.746E-02   AT NODE       1106   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.685E-02   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -8.623E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       169.       TIME AVG. FORCE        169.    
 LARGEST RESIDUAL FORCE            -3.890E+04   AT NODE       1028   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.12       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.958E-02   AT NODE       1028   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.10       TIME AVG. MOMENT       8.10    
 LARGEST RESIDUAL MOMENT           -1.421E-03   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.685E-02   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.072E-03   AT NODE       1027   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      8.129E+04   TIME AVG. FORCE       8.129E+04
 LARGEST RESIDUAL FORCE            -1.336E+06   AT NODE       1003   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.565       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        0.555       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      3.90       TIME AVG. MOMENT       3.90    
 LARGEST RESIDUAL MOMENT            0.455       AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.088E-02   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.596E-02   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     1 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.500E-07
 
     INITIAL ELEMENT LOAD BALANCE
        COMPUTE NODE   1   PROCESS    NUMBER OF ELEMENTS
                              1            53
                              2            53
                              3            53
                              4            53

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.364E+04   TIME AVG. FORCE       1.364E+04
 LARGEST RESIDUAL FORCE            -7.598E+04   AT NODE       1022   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.230       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -0.230       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.58       TIME AVG. MOMENT       1.58    
 LARGEST RESIDUAL MOMENT            0.108       AT NODE       1020   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      4.557E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     4.557E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.96       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE              87.8       AT NODE       1027   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.230       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.105E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.58       TIME AVG. MOMENT       1.58    
 LARGEST RESIDUAL MOMENT            3.119E-05   AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      4.557E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -6.829E-05   AT NODE       1028   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       497.       TIME AVG. FORCE        497.    
 LARGEST RESIDUAL FORCE            -2.196E+03   AT NODE       1024   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.833E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.32       TIME AVG. MOMENT       1.32    
 LARGEST RESIDUAL MOMENT           -5.733E-03   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.882E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     6.754E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       1.34       TIME AVG. FORCE        1.34    
 LARGEST RESIDUAL FORCE             -2.06       AT NODE       1028   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.513E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.32       TIME AVG. MOMENT       1.32    
 LARGEST RESIDUAL MOMENT            6.951E-07   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.882E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -9.505E-06   AT NODE       1081   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       7.02       TIME AVG. FORCE        7.02    
 LARGEST RESIDUAL FORCE              60.2       AT NODE       1026   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.224E-02   AT NODE       1054   DOF  2
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.31       TIME AVG. MOMENT       1.31    
 LARGEST RESIDUAL MOMENT           -2.471E-04   AT NODE       1041   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.885E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     8.527E-05   AT NODE       1027   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       1.32       TIME AVG. FORCE        1.32    
 LARGEST RESIDUAL FORCE            -2.291E-03   AT NODE       1081   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -5.500E-05   AT NODE       1054   DOF  2
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      1.31       TIME AVG. MOMENT       1.31    
 LARGEST RESIDUAL MOMENT            2.119E-07   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.885E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.099E-07   AT NODE       1028   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-07,  FRACTION OF STEP COMPLETED  2.500E-07
 STEP TIME COMPLETED       2.500E-07,  TOTAL TIME COMPLETED        2.500E-07


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.500E-07

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.586E+03   TIME AVG. FORCE       1.294E+03
 LARGEST RESIDUAL FORCE             4.740E+03   AT NODE       1084   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.138       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.639E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      2.39       TIME AVG. MOMENT       1.85    
 LARGEST RESIDUAL MOMENT           -9.748E-03   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.801E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.084E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       6.28       TIME AVG. FORCE        3.80    
 LARGEST RESIDUAL FORCE            -0.693       AT NODE       1029   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.138       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.812E-04   AT NODE       1032   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      2.48       TIME AVG. MOMENT       1.89    
 LARGEST RESIDUAL MOMENT            3.232E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.802E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.566E-06   AT NODE       1028   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       113.       TIME AVG. FORCE        57.3    
 LARGEST RESIDUAL FORCE             -182.       AT NODE       1026   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.146       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.772E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      2.48       TIME AVG. MOMENT       1.90    
 LARGEST RESIDUAL MOMENT           -6.591E-04   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.960E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.934E-04   AT NODE       1085   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       7.02       TIME AVG. FORCE        4.17    
 LARGEST RESIDUAL FORCE            -2.146E-03   AT NODE       1099   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.146       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.593E-05   AT NODE       1070   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      2.47       TIME AVG. MOMENT       1.89    
 LARGEST RESIDUAL MOMENT            8.349E-08   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.960E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.515E-07   AT NODE       1080   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-07,  FRACTION OF STEP COMPLETED  5.000E-07
 STEP TIME COMPLETED       5.000E-07,  TOTAL TIME COMPLETED        5.000E-07


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.500E-07

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       761.       TIME AVG. FORCE        256.    
 LARGEST RESIDUAL FORCE             1.666E+03   AT NODE       1085   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.112       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.423E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      3.32       TIME AVG. MOMENT       2.37    
 LARGEST RESIDUAL MOMENT            2.106E-03   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.295E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     6.647E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       10.6       TIME AVG. FORCE        6.30    
 LARGEST RESIDUAL FORCE             0.215       AT NODE       1080   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.112       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.030E-04   AT NODE       1078   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      3.35       TIME AVG. MOMENT       2.38    
 LARGEST RESIDUAL MOMENT            1.546E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.296E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     4.607E-06   AT NODE       1082   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       24.2       TIME AVG. FORCE        10.8    
 LARGEST RESIDUAL FORCE              29.2       AT NODE       1084   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.116       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.975E-03   AT NODE       1080   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      3.37       TIME AVG. MOMENT       2.39    
 LARGEST RESIDUAL MOMENT           -3.440E-05   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.370E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.454E-05   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       10.5       TIME AVG. FORCE        6.29    
 LARGEST RESIDUAL FORCE             1.304E-03   AT NODE       1019   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.116       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.087E-06   AT NODE       1077   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      3.37       TIME AVG. MOMENT       2.39    
 LARGEST RESIDUAL MOMENT            2.255E-08   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.370E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     7.351E-08   AT NODE       1082   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.750E-07

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-07,  FRACTION OF STEP COMPLETED  7.500E-07
 STEP TIME COMPLETED       7.500E-07,  TOTAL TIME COMPLETED        7.500E-07


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.750E-07

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.173E+03   TIME AVG. FORCE        298.    
 LARGEST RESIDUAL FORCE            -2.682E+03   AT NODE       1022   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.131       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.366E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      4.37       TIME AVG. MOMENT       2.88    
 LARGEST RESIDUAL MOMENT           -3.241E-03   AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.695E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -8.601E-04   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       15.8       TIME AVG. FORCE        8.68    
 LARGEST RESIDUAL FORCE            -0.316       AT NODE       1027   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.131       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.116E-04   AT NODE       1028   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      4.40       TIME AVG. MOMENT       2.89    
 LARGEST RESIDUAL MOMENT           -3.400E-06   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.696E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.199E-06   AT NODE       1025   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       43.3       TIME AVG. FORCE        15.5    
 LARGEST RESIDUAL FORCE             -61.0       AT NODE       1023   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.137       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.581E-03   AT NODE       1081   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      4.45       TIME AVG. MOMENT       2.90    
 LARGEST RESIDUAL MOMENT            8.302E-05   AT NODE       1020   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.813E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.172E-04   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       15.8       TIME AVG. FORCE        8.67    
 LARGEST RESIDUAL FORCE             1.346E-03   AT NODE       1095   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.137       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.832E-06   AT NODE       1030   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      4.45       TIME AVG. MOMENT       2.90    
 LARGEST RESIDUAL MOMENT            6.948E-08   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.813E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.012E-07   AT NODE       1025   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    5.625E-07

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.750E-07,  FRACTION OF STEP COMPLETED  1.125E-06
 STEP TIME COMPLETED       1.125E-06,  TOTAL TIME COMPLETED        1.125E-06


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.625E-07

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.506E+03   TIME AVG. FORCE        508.    
 LARGEST RESIDUAL FORCE             6.118E+03   AT NODE       1086   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.140       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.503E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      5.56       TIME AVG. MOMENT       3.43    
 LARGEST RESIDUAL MOMENT            6.771E-03   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.925E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.294E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       23.8       TIME AVG. FORCE        11.7    
 LARGEST RESIDUAL FORCE             0.399       AT NODE       1042   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.140       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.336E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      5.60       TIME AVG. MOMENT       3.44    
 LARGEST RESIDUAL MOMENT           -9.904E-06   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.926E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -8.609E-06   AT NODE       1046   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       101.       TIME AVG. FORCE        27.1    
 LARGEST RESIDUAL FORCE              180.       AT NODE       1085   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.151       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.085E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      5.68       TIME AVG. MOMENT       3.46    
 LARGEST RESIDUAL MOMENT           -1.870E-04   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.138E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.119E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       23.7       TIME AVG. FORCE        11.7    
 LARGEST RESIDUAL FORCE            -1.560E-03   AT NODE       1004   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.151       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.713E-05   AT NODE       1032   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      5.68       TIME AVG. MOMENT       3.46    
 LARGEST RESIDUAL MOMENT           -2.928E-07   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.138E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.525E-07   AT NODE       1025   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    8.437E-07

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.625E-07,  FRACTION OF STEP COMPLETED  1.687E-06
 STEP TIME COMPLETED       1.687E-06,  TOTAL TIME COMPLETED        1.687E-06


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  8.437E-07

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.509E+03   TIME AVG. FORCE        761.    
 LARGEST RESIDUAL FORCE             1.110E+04   AT NODE       1086   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.138       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.830E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      6.86       TIME AVG. MOMENT       4.02    
 LARGEST RESIDUAL MOMENT            1.129E-02   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.932E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.775E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       35.7       TIME AVG. FORCE        15.7    
 LARGEST RESIDUAL FORCE            -0.929       AT NODE       1069   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.138       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.411E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      6.84       TIME AVG. MOMENT       4.02    
 LARGEST RESIDUAL MOMENT           -2.392E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.933E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.285E-05   AT NODE       1065   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       217.       TIME AVG. FORCE        46.0    
 LARGEST RESIDUAL FORCE              430.       AT NODE       1086   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.156       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.719E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      7.02       TIME AVG. MOMENT       4.05    
 LARGEST RESIDUAL MOMENT           -3.676E-04   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.274E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.406E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       35.6       TIME AVG. FORCE        15.7    
 LARGEST RESIDUAL FORCE             1.925E-03   AT NODE       1103   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.156       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.909E-05   AT NODE       1070   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      7.02       TIME AVG. MOMENT       4.05    
 LARGEST RESIDUAL MOMENT            9.396E-07   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.274E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.124E-07   AT NODE       1083   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.266E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  8.437E-07,  FRACTION OF STEP COMPLETED  2.531E-06
 STEP TIME COMPLETED       2.531E-06,  TOTAL TIME COMPLETED        2.531E-06


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.266E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.767E+03   TIME AVG. FORCE        980.    
 LARGEST RESIDUAL FORCE             1.722E+04   AT NODE       1103   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.125       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        0.108       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.15       TIME AVG. MOMENT       4.64    
 LARGEST RESIDUAL MOMENT            1.474E-02   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.711E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.200E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       53.6       TIME AVG. FORCE        21.1    
 LARGEST RESIDUAL FORCE             -1.25       AT NODE       1072   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.125       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.226E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.21       TIME AVG. MOMENT       4.64    
 LARGEST RESIDUAL MOMENT            4.704E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.712E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.391E-05   AT NODE       1067   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       397.       TIME AVG. FORCE        70.2    
 LARGEST RESIDUAL FORCE              830.       AT NODE       1086   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.149       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.400E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.46       TIME AVG. MOMENT       4.68    
 LARGEST RESIDUAL MOMENT           -5.853E-04   AT NODE       1088   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.194E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -4.819E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       53.5       TIME AVG. FORCE        21.1    
 LARGEST RESIDUAL FORCE             1.533E-03   AT NODE       1012   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.149       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        7.133E-05   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      8.46       TIME AVG. MOMENT       4.68    
 LARGEST RESIDUAL MOMENT            2.319E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.194E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.392E-07   AT NODE       1042   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.898E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.266E-06,  FRACTION OF STEP COMPLETED  3.797E-06
 STEP TIME COMPLETED       3.797E-06,  TOTAL TIME COMPLETED        3.797E-06


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.898E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.327E+03   TIME AVG. FORCE       1.059E+03
 LARGEST RESIDUAL FORCE            -2.166E+04   AT NODE       1005   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.104       AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        0.120       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      9.42       TIME AVG. MOMENT       5.27    
 LARGEST RESIDUAL MOMENT           -1.504E-02   AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.332E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.458E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       80.5       TIME AVG. FORCE        28.5    
 LARGEST RESIDUAL FORCE             -2.33       AT NODE       1030   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.104       AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.823E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      9.53       TIME AVG. MOMENT       5.29    
 LARGEST RESIDUAL MOMENT            7.599E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.334E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.464E-05   AT NODE       1065   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       586.       TIME AVG. FORCE        91.6    
 LARGEST RESIDUAL FORCE            -1.288E+03   AT NODE       1005   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.134       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.946E-02   AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      9.76       TIME AVG. MOMENT       5.32    
 LARGEST RESIDUAL MOMENT            7.547E-04   AT NODE       1020   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.932E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.981E-04   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       80.3       TIME AVG. FORCE        28.5    
 LARGEST RESIDUAL FORCE            -1.416E-03   AT NODE       1099   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.134       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.192E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      9.76       TIME AVG. MOMENT       5.32    
 LARGEST RESIDUAL MOMENT            4.401E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.932E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.047E-07   AT NODE       1069   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    2.848E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.898E-06,  FRACTION OF STEP COMPLETED  5.695E-06
 STEP TIME COMPLETED       5.695E-06,  TOTAL TIME COMPLETED        5.695E-06


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.848E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.472E+03   TIME AVG. FORCE        967.    
 LARGEST RESIDUAL FORCE             2.303E+04   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.110E-02   AT NODE       1096   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        0.120       AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      10.6       TIME AVG. MOMENT       5.91    
 LARGEST RESIDUAL MOMENT           -1.222E-02   AT NODE       1002   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.908E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.490E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       121.       TIME AVG. FORCE        38.8    
 LARGEST RESIDUAL FORCE             -4.63       AT NODE       1029   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.133E-02   AT NODE       1096   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.137E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      10.7       TIME AVG. MOMENT       5.92    
 LARGEST RESIDUAL MOMENT            1.063E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.910E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.027E-05   AT NODE       1027   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.765E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       712.       TIME AVG. FORCE        104.    
 LARGEST RESIDUAL FORCE            -1.556E+03   AT NODE       1005   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.113       AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.191E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      11.1       TIME AVG. MOMENT       5.95    
 LARGEST RESIDUAL MOMENT           -8.486E-04   AT NODE       1002   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.564E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     6.546E-04   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       121.       TIME AVG. FORCE        38.7    
 LARGEST RESIDUAL FORCE             4.157E-03   AT NODE       1080   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.113       AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.421E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      11.1       TIME AVG. MOMENT       5.95    
 LARGEST RESIDUAL MOMENT           -6.618E-06   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.564E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     6.229E-07   AT NODE       1072   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    4.271E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.848E-06,  FRACTION OF STEP COMPLETED  8.543E-06
 STEP TIME COMPLETED       8.543E-06,  TOTAL TIME COMPLETED        8.543E-06


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.271E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.353E+03   TIME AVG. FORCE        770.    
 LARGEST RESIDUAL FORCE             2.403E+04   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.140E-02   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        0.110       AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      11.7       TIME AVG. MOMENT       6.53    
 LARGEST RESIDUAL MOMENT            8.209E-03   AT NODE       1106   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.680E-03   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.320E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       180.       TIME AVG. FORCE        52.9    
 LARGEST RESIDUAL FORCE              10.7       AT NODE       1081   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.173E-02   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.261E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      11.9       TIME AVG. MOMENT       6.55    
 LARGEST RESIDUAL MOMENT            1.391E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.684E-03   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.871E-05   AT NODE       1082   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -4.866E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       736.       TIME AVG. FORCE        108.    
 LARGEST RESIDUAL FORCE             1.503E+03   AT NODE       1103   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -9.092E-02   AT NODE       1012   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.083E-02   AT NODE       1098   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      12.2       TIME AVG. MOMENT       6.58    
 LARGEST RESIDUAL MOMENT            7.921E-04   AT NODE       1106   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.171E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -6.415E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       181.       TIME AVG. FORCE        52.9    
 LARGEST RESIDUAL FORCE            -9.697E-03   AT NODE       1026   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -9.093E-02   AT NODE       1012   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.365E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      12.2       TIME AVG. MOMENT       6.58    
 LARGEST RESIDUAL MOMENT            8.474E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.171E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     8.567E-07   AT NODE       1025   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    6.407E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  4.271E-06,  FRACTION OF STEP COMPLETED  1.281E-05
 STEP TIME COMPLETED       1.281E-05,  TOTAL TIME COMPLETED        1.281E-05


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  6.407E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.692E+03   TIME AVG. FORCE        566.    
 LARGEST RESIDUAL FORCE            -2.342E+04   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.720E-02   AT NODE       1015   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.353E-02   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      12.8       TIME AVG. MOMENT       7.14    
 LARGEST RESIDUAL MOMENT           -5.655E-03   AT NODE       1002   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.580E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.034E-03   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       271.       TIME AVG. FORCE        72.7    
 LARGEST RESIDUAL FORCE              18.3       AT NODE       1082   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.757E-02   AT NODE       1015   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.026E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      13.1       TIME AVG. MOMENT       7.17    
 LARGEST RESIDUAL MOMENT           -1.683E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.589E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.698E-05   AT NODE       1025   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    1.101E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       712.       TIME AVG. FORCE        113.    
 LARGEST RESIDUAL FORCE             1.423E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.158E-02   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.686E-02   AT NODE       1010   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      13.3       TIME AVG. MOMENT       7.19    
 LARGEST RESIDUAL MOMENT            6.993E-04   AT NODE       1020   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.963E-03   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.767E-04   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       272.       TIME AVG. FORCE        72.8    
 LARGEST RESIDUAL FORCE             1.760E-02   AT NODE       1083   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.159E-02   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.180E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      13.4       TIME AVG. MOMENT       7.20    
 LARGEST RESIDUAL MOMENT           -1.022E-05   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.963E-03   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.127E-06   AT NODE       1084   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    9.611E-06

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  6.407E-06,  FRACTION OF STEP COMPLETED  1.922E-05
 STEP TIME COMPLETED       1.922E-05,  TOTAL TIME COMPLETED        1.922E-05


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  9.611E-06

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.195E+03   TIME AVG. FORCE        416.    
 LARGEST RESIDUAL FORCE            -2.387E+04   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.755E-02   AT NODE       1092   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        7.505E-02   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      13.7       TIME AVG. MOMENT       7.74    
 LARGEST RESIDUAL MOMENT            3.791E-03   AT NODE       1106   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.594E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.718E-03   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       406.       TIME AVG. FORCE        101.    
 LARGEST RESIDUAL FORCE              28.3       AT NODE       1082   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.807E-02   AT NODE       1092   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.710E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      13.9       TIME AVG. MOMENT       7.76    
 LARGEST RESIDUAL MOMENT           -1.942E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.609E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -4.785E-05   AT NODE       1083   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.452E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       705.       TIME AVG. FORCE        125.    
 LARGEST RESIDUAL FORCE            -1.452E+03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -5.629E-02   AT NODE       1094   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.136E-02   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      14.3       TIME AVG. MOMENT       7.79    
 LARGEST RESIDUAL MOMENT           -6.810E-04   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.934E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -4.889E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       408.       TIME AVG. FORCE        101.    
 LARGEST RESIDUAL FORCE            -3.297E-02   AT NODE       1085   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -5.632E-02   AT NODE       1094   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.953E-05   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      14.3       TIME AVG. MOMENT       7.79    
 LARGEST RESIDUAL MOMENT            1.130E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.935E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.536E-06   AT NODE       1084   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.442E-05

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  9.611E-06,  FRACTION OF STEP COMPLETED  2.883E-05
 STEP TIME COMPLETED       2.883E-05,  TOTAL TIME COMPLETED        2.883E-05


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.442E-05

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.191E+03   TIME AVG. FORCE        338.    
 LARGEST RESIDUAL FORCE            -2.385E+04   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.039E-02   AT NODE       1091   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.854E-02   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      14.8       TIME AVG. MOMENT       8.33    
 LARGEST RESIDUAL MOMENT            2.482E-03   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.608E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.528E-03   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       610.       TIME AVG. FORCE        140.    
 LARGEST RESIDUAL FORCE             -48.8       AT NODE       1025   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.108E-02   AT NODE       1092   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.531E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      14.9       TIME AVG. MOMENT       8.34    
 LARGEST RESIDUAL MOMENT            2.162E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.633E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.493E-05   AT NODE       1084   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -4.786E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       792.       TIME AVG. FORCE        154.    
 LARGEST RESIDUAL FORCE            -1.431E+03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.472E-02   AT NODE       1093   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.569E-02   AT NODE       1012   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      15.2       TIME AVG. MOMENT       8.36    
 LARGEST RESIDUAL MOMENT            6.831E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.932E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.989E-04   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       612.       TIME AVG. FORCE        140.    
 LARGEST RESIDUAL FORCE            -5.957E-02   AT NODE       1024   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.477E-02   AT NODE       1093   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.641E-05   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      15.2       TIME AVG. MOMENT       8.36    
 LARGEST RESIDUAL MOMENT            1.191E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.933E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.862E-06   AT NODE       1015   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    2.162E-05

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.442E-05,  FRACTION OF STEP COMPLETED  4.325E-05
 STEP TIME COMPLETED       4.325E-05,  TOTAL TIME COMPLETED        4.325E-05


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.162E-05

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.687E+03   TIME AVG. FORCE        322.    
 LARGEST RESIDUAL FORCE             2.305E+04   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.496E-02   AT NODE       1017   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.573E-02   AT NODE       1094   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      15.7       TIME AVG. MOMENT       8.89    
 LARGEST RESIDUAL MOMENT           -2.352E-03   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.604E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.433E-03   AT NODE       1089   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       920.       TIME AVG. FORCE        196.    
 LARGEST RESIDUAL FORCE              65.0       AT NODE       1084   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.606E-02   AT NODE       1017   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.420E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      15.8       TIME AVG. MOMENT       8.89    
 LARGEST RESIDUAL MOMENT           -2.322E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.642E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -6.437E-05   AT NODE       1016   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -6.353E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.024E+03   TIME AVG. FORCE        203.    
 LARGEST RESIDUAL FORCE             1.374E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.603E-02   AT NODE       1092   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.120E-02   AT NODE       1094   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      16.1       TIME AVG. MOMENT       8.91    
 LARGEST RESIDUAL MOMENT            6.333E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.923E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.589E-04   AT NODE       1089   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       919.       TIME AVG. FORCE        196.    
 LARGEST RESIDUAL FORCE            -6.536E-02   AT NODE       1092   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.610E-02   AT NODE       1016   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.729E-05   AT NODE       1013   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      16.1       TIME AVG. MOMENT       8.92    
 LARGEST RESIDUAL MOMENT           -1.227E-05   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.924E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.459E-06   AT NODE       1017   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.244E-05

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.162E-05,  FRACTION OF STEP COMPLETED  6.487E-05
 STEP TIME COMPLETED       6.487E-05,  TOTAL TIME COMPLETED        6.487E-05


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.244E-05

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.643E+03   TIME AVG. FORCE        359.    
 LARGEST RESIDUAL FORCE             2.082E+04   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.129E-02   AT NODE       1085   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.616E-02   AT NODE       1015   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      16.4       TIME AVG. MOMENT       9.42    
 LARGEST RESIDUAL MOMENT            2.241E-03   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.566E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.320E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.372E+03   TIME AVG. FORCE        274.    
 LARGEST RESIDUAL FORCE              73.3       AT NODE       1084   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.336E-02   AT NODE       1085   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.322E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      16.4       TIME AVG. MOMENT       9.42    
 LARGEST RESIDUAL MOMENT           -2.394E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.621E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     7.928E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -8.468E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.442E+03   TIME AVG. FORCE        279.    
 LARGEST RESIDUAL FORCE             1.251E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.939E-02   AT NODE       1091   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -7.995E-03   AT NODE       1016   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      16.7       TIME AVG. MOMENT       9.44    
 LARGEST RESIDUAL MOMENT           -5.557E-04   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.886E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.210E-04   AT NODE       1089   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.379E+03   TIME AVG. FORCE        275.    
 LARGEST RESIDUAL FORCE            -0.108       AT NODE       1091   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.946E-02   AT NODE       1091   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.862E-05   AT NODE       1015   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      16.6       TIME AVG. MOMENT       9.43    
 LARGEST RESIDUAL MOMENT           -1.216E-05   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.888E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.948E-06   AT NODE       1018   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    4.865E-05

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.244E-05,  FRACTION OF STEP COMPLETED  9.731E-05
 STEP TIME COMPLETED       9.731E-05,  TOTAL TIME COMPLETED        9.731E-05


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.865E-05

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.997E+03   TIME AVG. FORCE        445.    
 LARGEST RESIDUAL FORCE            -1.989E+04   AT NODE       1089   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.775E-02   AT NODE       1023   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.903E-02   AT NODE       1016   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      17.4       TIME AVG. MOMENT       9.93    
 LARGEST RESIDUAL MOMENT            2.111E-03   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.478E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.355E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.056E+03   TIME AVG. FORCE        386.    
 LARGEST RESIDUAL FORCE              152.       AT NODE       1085   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.054E-02   AT NODE       1023   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.304E-03   AT NODE       1084   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      17.3       TIME AVG. MOMENT       9.92    
 LARGEST RESIDUAL MOMENT           -2.373E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.556E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.170E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.315E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.104E+03   TIME AVG. FORCE        389.    
 LARGEST RESIDUAL FORCE             1.005E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.413E-02   AT NODE       1018   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -5.673E-03   AT NODE       1091   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      17.5       TIME AVG. MOMENT       9.94    
 LARGEST RESIDUAL MOMENT           -4.651E-04   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.807E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.622E-04   AT NODE       1089   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.069E+03   TIME AVG. FORCE        387.    
 LARGEST RESIDUAL FORCE            -0.161       AT NODE       1090   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.420E-02   AT NODE       1018   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.138E-05   AT NODE       1016   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      17.5       TIME AVG. MOMENT       9.94    
 LARGEST RESIDUAL MOMENT           -1.147E-05   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.809E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.540E-06   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    7.298E-05

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  4.865E-05,  FRACTION OF STEP COMPLETED  1.460E-04
 STEP TIME COMPLETED       1.460E-04,  TOTAL TIME COMPLETED        1.460E-04


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  7.298E-05

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.827E+03   TIME AVG. FORCE        589.    
 LARGEST RESIDUAL FORCE             2.206E+04   AT NODE       1019   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.486E-02   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.366E-02   AT NODE       1017   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      19.0       TIME AVG. MOMENT       10.5    
 LARGEST RESIDUAL MOMENT           -1.944E-03   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.330E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.384E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.099E+03   TIME AVG. FORCE        546.    
 LARGEST RESIDUAL FORCE             -248.       AT NODE       1023   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.766E-02   AT NODE       1085   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.474E-03   AT NODE       1023   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      19.2       TIME AVG. MOMENT       10.5    
 LARGEST RESIDUAL MOMENT           -2.350E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.439E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.562E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.123E+03   TIME AVG. FORCE        548.    
 LARGEST RESIDUAL FORCE             -873.       AT NODE       1089   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.994E-02   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.946E-03   AT NODE       1018   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      19.2       TIME AVG. MOMENT       10.5    
 LARGEST RESIDUAL MOMENT            3.754E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.671E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.323E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.104E+03   TIME AVG. FORCE        547.    
 LARGEST RESIDUAL FORCE            -0.186       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.000E-02   AT NODE       1018   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.846E-05   AT NODE       1017   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      19.2       TIME AVG. MOMENT       10.5    
 LARGEST RESIDUAL MOMENT            1.029E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.675E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.420E-06   AT NODE       1019   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.095E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  7.298E-05,  FRACTION OF STEP COMPLETED  2.189E-04
 STEP TIME COMPLETED       2.189E-04,  TOTAL TIME COMPLETED        2.189E-04


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.095E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.229E+03   TIME AVG. FORCE        807.    
 LARGEST RESIDUAL FORCE             1.926E+04   AT NODE       1019   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.347E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.951E-02   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      20.9       TIME AVG. MOMENT       11.1    
 LARGEST RESIDUAL MOMENT           -1.737E-03   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.127E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.385E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.645E+03   TIME AVG. FORCE        774.    
 LARGEST RESIDUAL FORCE             -220.       AT NODE       1023   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.514E-02   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.750E-03   AT NODE       1085   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      20.9       TIME AVG. MOMENT       11.1    
 LARGEST RESIDUAL MOMENT           -3.028E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.281E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.830E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.667E+03   TIME AVG. FORCE        775.    
 LARGEST RESIDUAL FORCE             -535.       AT NODE       1089   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.678E-02   AT NODE       1019   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.772E-03   AT NODE       1018   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      21.1       TIME AVG. MOMENT       11.1    
 LARGEST RESIDUAL MOMENT            2.962E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.479E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.987E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.657E+03   TIME AVG. FORCE        775.    
 LARGEST RESIDUAL FORCE             0.213       AT NODE       1019   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.682E-02   AT NODE       1019   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -5.293E-05   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      21.1       TIME AVG. MOMENT       11.1    
 LARGEST RESIDUAL MOMENT            8.815E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.483E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.522E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.642E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.095E-04,  FRACTION OF STEP COMPLETED  3.284E-04
 STEP TIME COMPLETED       3.284E-04,  TOTAL TIME COMPLETED        3.284E-04


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.642E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.448E+03   TIME AVG. FORCE       1.126E+03
 LARGEST RESIDUAL FORCE            -1.481E+04   AT NODE       1022   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.166E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.625E-02   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      22.7       TIME AVG. MOMENT       11.7    
 LARGEST RESIDUAL MOMENT           -1.752E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -9.410E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.336E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.963E+03   TIME AVG. FORCE       1.101E+03
 LARGEST RESIDUAL FORCE              466.       AT NODE       1019   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.368E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.466E-03   AT NODE       1023   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      22.8       TIME AVG. MOMENT       11.7    
 LARGEST RESIDUAL MOMENT           -4.555E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.134E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.044E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.992E+03   TIME AVG. FORCE       1.102E+03
 LARGEST RESIDUAL FORCE             -187.       AT NODE       1089   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.474E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.840E-03   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      22.9       TIME AVG. MOMENT       11.7    
 LARGEST RESIDUAL MOMENT            2.269E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.244E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.515E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      6.987E+03   TIME AVG. FORCE       1.102E+03
 LARGEST RESIDUAL FORCE            -9.021E-02   AT NODE       1089   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.475E-02   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.506E-05   AT NODE       1090   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      22.9       TIME AVG. MOMENT       11.7    
 LARGEST RESIDUAL MOMENT            7.609E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.247E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.745E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    2.463E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.642E-04,  FRACTION OF STEP COMPLETED  4.926E-04
 STEP TIME COMPLETED       4.926E-04,  TOTAL TIME COMPLETED        4.926E-04


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.463E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.085E+04   TIME AVG. FORCE       1.589E+03
 LARGEST RESIDUAL FORCE            -1.868E+04   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -9.463E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.384E-02   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      24.5       TIME AVG. MOMENT       12.3    
 LARGEST RESIDUAL MOMENT           -1.819E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -7.759E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.222E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.044E+04   TIME AVG. FORCE       1.569E+03
 LARGEST RESIDUAL FORCE              533.       AT NODE       1086   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.184E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.981E-03   AT NODE       1023   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      24.8       TIME AVG. MOMENT       12.3    
 LARGEST RESIDUAL MOMENT           -6.423E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -9.749E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.374E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.048E+04   TIME AVG. FORCE       1.571E+03
 LARGEST RESIDUAL FORCE              196.       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.276E-02   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.227E-03   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      24.9       TIME AVG. MOMENT       12.4    
 LARGEST RESIDUAL MOMENT            1.605E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.061E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.053E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.048E+04   TIME AVG. FORCE       1.571E+03
 LARGEST RESIDUAL FORCE             4.423E-02   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.277E-02   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.998E-05   AT NODE       1019   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      24.9       TIME AVG. MOMENT       12.4    
 LARGEST RESIDUAL MOMENT           -7.101E-06   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.062E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.690E-06   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.695E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.463E-04,  FRACTION OF STEP COMPLETED  7.389E-04
 STEP TIME COMPLETED       7.389E-04,  TOTAL TIME COMPLETED        7.389E-04


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.695E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.599E+04   TIME AVG. FORCE       2.257E+03
 LARGEST RESIDUAL FORCE             2.183E+04   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.230E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.192E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      26.2       TIME AVG. MOMENT       13.0    
 LARGEST RESIDUAL MOMENT            1.591E-03   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      6.083E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.049E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.565E+04   TIME AVG. FORCE       2.241E+03
 LARGEST RESIDUAL FORCE             -680.       AT NODE       1022   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -9.864E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.634E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      26.5       TIME AVG. MOMENT       13.0    
 LARGEST RESIDUAL MOMENT            7.836E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.148E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.387E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.573E+04   TIME AVG. FORCE       2.245E+03
 LARGEST RESIDUAL FORCE              145.       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.051E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.186E-04   AT NODE       1019   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      26.6       TIME AVG. MOMENT       13.0    
 LARGEST RESIDUAL MOMENT           -9.773E-05   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.802E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.034E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    8.772E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.572E+04   TIME AVG. FORCE       2.245E+03
 LARGEST RESIDUAL FORCE             3.361E-02   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.052E-02   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.229E-05   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      26.6       TIME AVG. MOMENT       13.0    
 LARGEST RESIDUAL MOMENT            6.082E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.811E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.031E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    5.542E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.695E-04,  FRACTION OF STEP COMPLETED  1.108E-03
 STEP TIME COMPLETED       1.108E-03,  TOTAL TIME COMPLETED        1.108E-03


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.542E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.373E+04   TIME AVG. FORCE       3.222E+03
 LARGEST RESIDUAL FORCE            -2.000E+04   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -5.252E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.052E-02   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      27.6       TIME AVG. MOMENT       13.7    
 LARGEST RESIDUAL MOMENT           -1.129E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -4.541E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -8.675E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.360E+04   TIME AVG. FORCE       3.216E+03
 LARGEST RESIDUAL FORCE             -927.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.927E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.675E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      28.0       TIME AVG. MOMENT       13.7    
 LARGEST RESIDUAL MOMENT           -8.128E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      6.626E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.161E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.359E+04   TIME AVG. FORCE       3.215E+03
 LARGEST RESIDUAL FORCE             -66.9       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.284E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -5.098E-04   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      28.0       TIME AVG. MOMENT       13.7    
 LARGEST RESIDUAL MOMENT            8.944E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      7.026E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     4.304E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -4.736E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.359E+04   TIME AVG. FORCE       3.215E+03
 LARGEST RESIDUAL FORCE            -1.155E-02   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.287E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.645E-06   AT NODE       1089   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      28.0       TIME AVG. MOMENT       13.7    
 LARGEST RESIDUAL MOMENT            3.646E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -7.030E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.403E-07   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    8.313E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.542E-04,  FRACTION OF STEP COMPLETED  1.663E-03
 STEP TIME COMPLETED       1.663E-03,  TOTAL TIME COMPLETED        1.663E-03


  INCREMENT    23 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  8.313E-04

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.539E+04   TIME AVG. FORCE       4.614E+03
 LARGEST RESIDUAL FORCE             1.521E+04   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.687E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.743E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      28.9       TIME AVG. MOMENT       14.4    
 LARGEST RESIDUAL MOMENT            6.076E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.261E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.284E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.540E+04   TIME AVG. FORCE       4.614E+03
 LARGEST RESIDUAL FORCE             -999.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.148E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.461E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      29.3       TIME AVG. MOMENT       14.4    
 LARGEST RESIDUAL MOMENT            7.257E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -5.226E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.965E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.538E+04   TIME AVG. FORCE       4.614E+03
 LARGEST RESIDUAL FORCE             -19.3       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.306E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.642E-04   AT NODE       1019   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -5.103E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      29.3       TIME AVG. MOMENT       14.4    
 LARGEST RESIDUAL MOMENT           -7.036E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -5.421E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.187E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.533E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    1.247E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  8.313E-04,  FRACTION OF STEP COMPLETED  2.494E-03
 STEP TIME COMPLETED       2.494E-03,  TOTAL TIME COMPLETED        2.494E-03


  INCREMENT    24 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.247E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.291E+04   TIME AVG. FORCE       6.626E+03
 LARGEST RESIDUAL FORCE            -9.970E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.825E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.891E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      30.3       TIME AVG. MOMENT       15.1    
 LARGEST RESIDUAL MOMENT            4.193E-04   AT NODE       1022   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.303E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.828E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.309E+04   TIME AVG. FORCE       6.633E+03
 LARGEST RESIDUAL FORCE              814.       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.637E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.069E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      30.7       TIME AVG. MOMENT       15.1    
 LARGEST RESIDUAL MOMENT           -5.705E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -4.007E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.703E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.308E+04   TIME AVG. FORCE       6.633E+03
 LARGEST RESIDUAL FORCE              3.44       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.694E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.088E-04   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -4.593E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      30.8       TIME AVG. MOMENT       15.1    
 LARGEST RESIDUAL MOMENT            4.595E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      4.083E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -9.244E-06   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.013E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    1.870E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.247E-03,  FRACTION OF STEP COMPLETED  3.741E-03
 STEP TIME COMPLETED       3.741E-03,  TOTAL TIME COMPLETED        3.741E-03


  INCREMENT    25 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.870E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.925E+04   TIME AVG. FORCE       9.538E+03
 LARGEST RESIDUAL FORCE            -5.890E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -5.317E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.204E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      31.3       TIME AVG. MOMENT       15.7    
 LARGEST RESIDUAL MOMENT           -2.997E-04   AT NODE       1086   DOF  6
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.649E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     4.476E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.962E+04   TIME AVG. FORCE       9.552E+03
 LARGEST RESIDUAL FORCE              547.       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.322E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.625E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      31.7       TIME AVG. MOMENT       15.7    
 LARGEST RESIDUAL MOMENT            4.116E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.025E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.375E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.961E+04   TIME AVG. FORCE       9.552E+03
 LARGEST RESIDUAL FORCE             0.416       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.303E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.776E-05   AT NODE       1088   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      31.7       TIME AVG. MOMENT       15.7    
 LARGEST RESIDUAL MOMENT           -2.662E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.050E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.321E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.950E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    2.806E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.870E-03,  FRACTION OF STEP COMPLETED  5.611E-03
 STEP TIME COMPLETED       5.611E-03,  TOTAL TIME COMPLETED        5.611E-03


  INCREMENT    26 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.806E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.188E+05   TIME AVG. FORCE       1.375E+04
 LARGEST RESIDUAL FORCE             3.189E+03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.693E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.794E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      31.8       TIME AVG. MOMENT       16.4    
 LARGEST RESIDUAL MOMENT           -2.826E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.267E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.308E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.194E+05   TIME AVG. FORCE       1.378E+04
 LARGEST RESIDUAL FORCE             -317.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.965E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.213E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      32.1       TIME AVG. MOMENT       16.4    
 LARGEST RESIDUAL MOMENT            2.786E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.314E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.047E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.194E+05   TIME AVG. FORCE       1.378E+04
 LARGEST RESIDUAL FORCE             3.648E-02   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -7.959E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.103E-05   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      32.1       TIME AVG. MOMENT       16.4    
 LARGEST RESIDUAL MOMENT            1.419E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.321E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     9.957E-07   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    4.209E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.806E-03,  FRACTION OF STEP COMPLETED  8.417E-03
 STEP TIME COMPLETED       8.417E-03,  TOTAL TIME COMPLETED        8.417E-03


  INCREMENT    27 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.209E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.791E+05   TIME AVG. FORCE       1.990E+04
 LARGEST RESIDUAL FORCE             1.635E+03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.351E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.694E-03   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      32.3       TIME AVG. MOMENT       17.0    
 LARGEST RESIDUAL MOMENT           -2.604E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.107E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.375E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.791E+05   TIME AVG. FORCE       1.990E+04
 LARGEST RESIDUAL FORCE             -167.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.299E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.735E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      32.6       TIME AVG. MOMENT       17.0    
 LARGEST RESIDUAL MOMENT            1.827E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.873E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.655E-05   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.791E+05   TIME AVG. FORCE       1.990E+04
 LARGEST RESIDUAL FORCE             2.305E-03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.299E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.857E-06   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      32.6       TIME AVG. MOMENT       17.0    
 LARGEST RESIDUAL MOMENT            7.347E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.874E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.637E-07   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    6.313E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  4.209E-03,  FRACTION OF STEP COMPLETED  1.263E-02
 STEP TIME COMPLETED       1.263E-02,  TOTAL TIME COMPLETED        1.263E-02


  INCREMENT    28 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  6.313E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.686E+05   TIME AVG. FORCE       2.878E+04
 LARGEST RESIDUAL FORCE              815.       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.057E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.877E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      32.7       TIME AVG. MOMENT       17.5    
 LARGEST RESIDUAL MOMENT            2.111E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.143E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.668E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.686E+05   TIME AVG. FORCE       2.878E+04
 LARGEST RESIDUAL FORCE             -83.3       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.021E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.140E-04   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    6.276E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      32.9       TIME AVG. MOMENT       17.5    
 LARGEST RESIDUAL MOMENT           -1.185E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.687E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.437E-05   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.686E+05   TIME AVG. FORCE       2.878E+04
 LARGEST RESIDUAL FORCE             1.615E-03   AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.021E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.768E-07   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      32.9       TIME AVG. MOMENT       17.5    
 LARGEST RESIDUAL MOMENT            3.668E-06   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.687E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -6.412E-08   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    9.469E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  6.313E-03,  FRACTION OF STEP COMPLETED  1.894E-02
 STEP TIME COMPLETED       1.894E-02,  TOTAL TIME COMPLETED        1.894E-02


  INCREMENT    29 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  9.469E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.028E+05   TIME AVG. FORCE       4.168E+04
 LARGEST RESIDUAL FORCE             -405.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.104E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.290E-03   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      33.0       TIME AVG. MOMENT       18.1    
 LARGEST RESIDUAL MOMENT           -1.767E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.377E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.154E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.028E+05   TIME AVG. FORCE       4.168E+04
 LARGEST RESIDUAL FORCE             -39.8       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.079E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -4.243E-04   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -4.169E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      33.2       TIME AVG. MOMENT       18.1    
 LARGEST RESIDUAL MOMENT           -7.689E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.756E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.785E-05   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.028E+05   TIME AVG. FORCE       4.168E+04
 LARGEST RESIDUAL FORCE            -1.347E-03   AT NODE       1102   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -3.079E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.612E-07   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.2       TIME AVG. MOMENT       18.1    
 LARGEST RESIDUAL MOMENT            1.979E-06   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.756E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.481E-08   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    1.420E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  9.469E-03,  FRACTION OF STEP COMPLETED  2.841E-02
 STEP TIME COMPLETED       2.841E-02,  TOTAL TIME COMPLETED        2.841E-02


  INCREMENT    30 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.420E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.040E+05   TIME AVG. FORCE       6.042E+04
 LARGEST RESIDUAL FORCE             -209.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.665E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.795E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    1.730E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      33.6       TIME AVG. MOMENT       18.6    
 LARGEST RESIDUAL MOMENT            1.598E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.844E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.895E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.040E+05   TIME AVG. FORCE       6.042E+04
 LARGEST RESIDUAL FORCE              18.6       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.648E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.898E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.7       TIME AVG. MOMENT       18.6    
 LARGEST RESIDUAL MOMENT           -5.020E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.104E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.598E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.040E+05   TIME AVG. FORCE       6.042E+04
 LARGEST RESIDUAL FORCE            -1.292E-03   AT NODE       1006   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.648E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.978E-08   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.7       TIME AVG. MOMENT       18.6    
 LARGEST RESIDUAL MOMENT            1.383E-06   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.104E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.379E-09   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    2.131E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.420E-02,  FRACTION OF STEP COMPLETED  4.261E-02
 STEP TIME COMPLETED       4.261E-02,  TOTAL TIME COMPLETED        4.261E-02


  INCREMENT    31 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.131E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.054E+05   TIME AVG. FORCE       8.768E+04
 LARGEST RESIDUAL FORCE             -118.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.996E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.979E-04   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.6       TIME AVG. MOMENT       19.1    
 LARGEST RESIDUAL MOMENT           -1.683E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.618E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.380E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      9.054E+05   TIME AVG. FORCE       8.768E+04
 LARGEST RESIDUAL FORCE              8.52       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.984E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.964E-04   AT NODE       1086   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.6       TIME AVG. MOMENT       19.1    
 LARGEST RESIDUAL MOMENT           -3.306E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.795E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.766E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      9.054E+05   TIME AVG. FORCE       8.768E+04
 LARGEST RESIDUAL FORCE             1.291E-03   AT NODE       1002   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.984E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.424E-08   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.6       TIME AVG. MOMENT       19.1    
 LARGEST RESIDUAL MOMENT            9.604E-07   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.795E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.867E-09   AT NODE       1019   DOF  4
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.196E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.131E-02,  FRACTION OF STEP COMPLETED  6.392E-02
 STEP TIME COMPLETED       6.392E-02,  TOTAL TIME COMPLETED        6.392E-02


  INCREMENT    32 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.196E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.357E+06   TIME AVG. FORCE       1.273E+05
 LARGEST RESIDUAL FORCE             -75.7       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.105       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.101E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.8       TIME AVG. MOMENT       19.5    
 LARGEST RESIDUAL MOMENT           -2.286E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.823E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.691E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.855E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    4.794E-02

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.196E-02,  FRACTION OF STEP COMPLETED  9.588E-02
 STEP TIME COMPLETED       9.588E-02,  TOTAL TIME COMPLETED        9.588E-02


  INCREMENT    33 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.794E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.033E+06   TIME AVG. FORCE       1.851E+05
 LARGEST RESIDUAL FORCE              68.9       AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.156       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        6.777E-04   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      34.2       TIME AVG. MOMENT       20.0    
 LARGEST RESIDUAL MOMENT           -3.060E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      5.918E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.839E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    9.155E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    7.191E-02

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  4.794E-02,  FRACTION OF STEP COMPLETED  0.144    
 STEP TIME COMPLETED       0.144    ,  TOTAL TIME COMPLETED        0.144    


  INCREMENT    34 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  7.191E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.043E+06   TIME AVG. FORCE       2.691E+05
 LARGEST RESIDUAL FORCE             -299.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.234       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        8.127E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      34.6       TIME AVG. MOMENT       20.4    
 LARGEST RESIDUAL MOMENT           -9.387E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -8.150E-04   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.277E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    4.828E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.108    

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  7.191E-02,  FRACTION OF STEP COMPLETED  0.216    
 STEP TIME COMPLETED       0.216    ,  TOTAL TIME COMPLETED        0.216    


  INCREMENT    35 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.108    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.551E+06   TIME AVG. FORCE       3.915E+05
 LARGEST RESIDUAL FORCE              725.       AT NODE       1088   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.348       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.255E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      35.4       TIME AVG. MOMENT       20.8    
 LARGEST RESIDUAL MOMENT           -1.470E-03   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.301E-03   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     7.885E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    3.811E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.162    

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.108    ,  FRACTION OF STEP COMPLETED  0.324    
 STEP TIME COMPLETED       0.324    ,  TOTAL TIME COMPLETED        0.324    


  INCREMENT    36 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.162    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.796E+06   TIME AVG. FORCE       5.694E+05
 LARGEST RESIDUAL FORCE            -1.707E+03   AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.517       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        4.789E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      36.4       TIME AVG. MOMENT       21.3    
 LARGEST RESIDUAL MOMENT            4.565E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.762E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.895E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.231E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.243    

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.162    ,  FRACTION OF STEP COMPLETED  0.485    
 STEP TIME COMPLETED       0.485    ,  TOTAL TIME COMPLETED        0.485    


  INCREMENT    37 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.243    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.007E+07   TIME AVG. FORCE       8.262E+05
 LARGEST RESIDUAL FORCE             5.060E+03   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.760       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.446E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      38.1       TIME AVG. MOMENT       21.7    
 LARGEST RESIDUAL MOMENT            7.744E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.863E-03   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.406E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.257E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.013E+07   TIME AVG. FORCE       8.278E+05
 LARGEST RESIDUAL FORCE             -209.       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.761       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.666E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      38.1       TIME AVG. MOMENT       21.7    
 LARGEST RESIDUAL MOMENT            1.341E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.776E-03   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -8.692E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.505E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.364    

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.243    ,  FRACTION OF STEP COMPLETED  0.728    
 STEP TIME COMPLETED       0.728    ,  TOTAL TIME COMPLETED        0.728    


  INCREMENT    38 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.272    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.382E+07   TIME AVG. FORCE       1.170E+06
 LARGEST RESIDUAL FORCE            -1.332E+03   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.836       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.678E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    9.618E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      39.6       TIME AVG. MOMENT       22.2    
 LARGEST RESIDUAL MOMENT           -1.391E-02   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.958E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.525E-04   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -9.626E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.272    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 3DEXPERIENCE R2017x                                  Date 05-Jun-2023   Time 12:22:30
   For use by NTNU NORGES TEKNISK NATURVITENSKAPELIGE UNIVERSITET under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    2     INCREMENT     1     STEP TIME    0.00    


                        S T E P       2     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                1.000E-03
          AND A TOTAL TIME PERIOD OF                            1.00    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-03
          THE MAXIMUM TIME INCREMENT ALLOWED IS                 1.00    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

 CONVERGENCE TOLERANCE PARAMETERS FOR FORCE    
     CRITERION FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR DISP.    CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INIT. VALUE OF TIME AVG. FORCE     IS TIME AVG. FORCE     IN PREVIOUS STEP
     AVERAGE FORCE     IS TIME AVERAGE FORCE    
     ALTERNATE CRIT. FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO FORCE     RELATIVE TO TIME AVRG. FORCE         1.000E-05
     CRITERION FOR RESIDUAL FORCE     WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR DISP.    CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL FORCE     FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO FORCE     REL. TO TIME AVRG. MAX. FORCE        1.000E-05
     CRITERION FOR ZERO DISP.    RELATIVE TO CHARACTERISTIC LENGTH     1.000E-08

 CONVERGENCE TOLERANCE PARAMETERS FOR MOMENT   
     CRITERION FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR ROTATION CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INIT. VALUE OF TIME AVG. MOMENT    IS TIME AVG. MOMENT    IN PREVIOUS STEP
     AVERAGE MOMENT    IS TIME AVERAGE MOMENT   
     ALTERNATE CRIT. FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO MOMENT    RELATIVE TO TIME AVRG. MOMENT        1.000E-05
     CRITERION FOR RESIDUAL MOMENT    WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR ROTATION CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL MOMENT    FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO MOMENT    REL. TO TIME AVRG. MAX. MOMENT       1.000E-05

     VOLUMETRIC STRAIN COMPATIBILITY TOLERANCE FOR HYBRID SOLIDS       1.000E-05
     AXIAL STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS             1.000E-05
     TRANS. SHEAR STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS      1.000E-05
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P>P0          5.000E-03
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P=0.0         0.100    
     CONTACT FORCE ERROR TOLERANCE FOR CONVERT SDI=YES                 1.00    
     DISPLACEMENT COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS           1.000E-05
     ROTATION COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS               1.000E-05

 EQUILIBRIUM WILL BE CHECKED FOR SEVERE DISCONTINUITY ITERATIONS

 TIME INCREMENTATION CONTROL PARAMETERS:
     FIRST EQUILIBRIUM ITERATION FOR CONSECUTIVE DIVERGENCE CHECK              4
     EQUILIBRIUM ITERATION AT WHICH LOG. CONVERGENCE RATE CHECK BEGINS         8
     EQUILIBRIUM ITERATION AFTER WHICH ALTERNATE RESIDUAL IS USED              9
     MAXIMUM EQUILIBRIUM ITERATIONS ALLOWED                                   16
     EQUILIBRIUM ITERATION COUNT FOR CUT-BACK IN NEXT INCREMENT               10
     MAXIMUM EQUILIB. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      4
     MAXIMUM ITERATIONS FOR SEVERE DISCONTINUITIES                            50
     MAXIMUM ATTEMPTS ALLOWED IN AN INCREMENT                                  5
     MAXIMUM DISCON. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      50
     MAXIMUM CONTACT AUGMENTATIONS FOR *SURFACE BEHAVIOR,AUGMENTED LAGRANGE   50
     CUT-BACK FACTOR AFTER DIVERGENCE                                 0.2500    
     CUT-BACK FACTOR FOR TOO SLOW CONVERGENCE                         0.5000    
     CUT-BACK FACTOR AFTER TOO MANY EQUILIBRIUM ITERATIONS            0.7500    
     CUT-BACK FACTOR AFTER TOO MANY SEVERE DISCONTINUITY ITERATIONS   0.2500    
     CUT-BACK FACTOR AFTER PROBLEMS IN ELEMENT ASSEMBLY               0.2500    
     INCREASE FACTOR AFTER TWO INCREMENTS THAT CONVERGE QUICKLY        1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED                       1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DYNAMICS)            1.250    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DIFFUSION)           2.000    
     MINIMUM TIME INCREMENT RATIO FOR EXTRAPOLATION TO OCCUR          0.1000    
     MAX. RATIO OF TIME INCREMENT TO STABILITY LIMIT                   1.000    
     FRACTION OF STABILITY LIMIT FOR NEW TIME INCREMENT               0.9500    
     TIME INCREMENT INCREASE FACTOR BEFORE A TIME POINT                1.000    
     GLOBAL STABILIZATION CONTROL IS NOT USED

          PRINT OF INCREMENT NUMBER, TIME, ETC., EVERY    1  INCREMENTS

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                     100

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      16.2    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     ELEMENT OPERATIONS WILL BE CARRIED OUT IN PARALLEL USING   4 PROCESSORS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS
  
     ASYNCHRONOUS OUTPUT DATABASE FRAME FLUSH STARTED
  


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.000E-03
 
     INITIAL ELEMENT LOAD BALANCE
        COMPUTE NODE   1   PROCESS    NUMBER OF ELEMENTS
                              1            53
                              2            53
                              3            53
                              4            53

 ***WARNING: THERE ARE 2 UNCONNECTED REGIONS IN THE MODEL.

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.266E+07   TIME AVG. FORCE       1.266E+07
 LARGEST RESIDUAL FORCE             -95.0       AT NODE       1020   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.378E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.378E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                      39.7       TIME AVG. MOMENT       39.7    
 LARGEST RESIDUAL MOMENT           -1.674E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.311E-05   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     8.311E-05   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.266E+07   TIME AVG. FORCE       1.266E+07
 LARGEST RESIDUAL FORCE            -1.597E-03   AT NODE       1013   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.373E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -8.453E-06   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      39.7       TIME AVG. MOMENT       39.7    
 LARGEST RESIDUAL MOMENT           -2.605E-05   AT NODE       1021   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.291E-05   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.934E-07   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.000E-03,  FRACTION OF STEP COMPLETED  1.000E-03
 STEP TIME COMPLETED       1.000E-03,  TOTAL TIME COMPLETED         1.00    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.000E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.269E+07   TIME AVG. FORCE       1.268E+07
 LARGEST RESIDUAL FORCE             -15.4       AT NODE       1088   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -8.444E-03   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.711E-04   AT NODE       1022   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -3.370E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      39.9       TIME AVG. MOMENT       39.8    
 LARGEST RESIDUAL MOMENT            6.228E-05   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -8.820E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.416E-05   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.077E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    1.500E-03

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.000E-03,  FRACTION OF STEP COMPLETED  2.000E-03
 STEP TIME COMPLETED       2.000E-03,  TOTAL TIME COMPLETED         1.00    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.500E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.273E+07   TIME AVG. FORCE       1.269E+07
 LARGEST RESIDUAL FORCE             3.755E-02   AT NODE       1020   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.264E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.196E-05   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                      39.8       TIME AVG. MOMENT       39.8    
 LARGEST RESIDUAL MOMENT            4.063E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.315E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     8.095E-07   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    2.250E-03

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.500E-03,  FRACTION OF STEP COMPLETED  3.500E-03
 STEP TIME COMPLETED       3.500E-03,  TOTAL TIME COMPLETED         1.00    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.250E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.279E+07   TIME AVG. FORCE       1.272E+07
 LARGEST RESIDUAL FORCE            -0.101       AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -1.892E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.989E-05   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                      39.7       TIME AVG. MOMENT       39.8    
 LARGEST RESIDUAL MOMENT            8.396E-05   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.956E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.633E-06   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.375E-03

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.250E-03,  FRACTION OF STEP COMPLETED  5.750E-03
 STEP TIME COMPLETED       5.750E-03,  TOTAL TIME COMPLETED         1.01    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.375E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.289E+07   TIME AVG. FORCE       1.275E+07
 LARGEST RESIDUAL FORCE             0.256       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -2.829E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.556E-04   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      39.5       TIME AVG. MOMENT       39.7    
 LARGEST RESIDUAL MOMENT            1.879E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.897E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -3.678E-06   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -5.812E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    5.063E-03

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.375E-03,  FRACTION OF STEP COMPLETED  9.125E-03
 STEP TIME COMPLETED       9.125E-03,  TOTAL TIME COMPLETED         1.01    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.063E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.303E+07   TIME AVG. FORCE       1.280E+07
 LARGEST RESIDUAL FORCE             0.488       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -4.222E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.423E-04   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      39.2       TIME AVG. MOMENT       39.6    
 LARGEST RESIDUAL MOMENT            4.092E-04   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      4.265E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     8.093E-06   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.244E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    7.594E-03

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.063E-03,  FRACTION OF STEP COMPLETED  1.419E-02
 STEP TIME COMPLETED       1.419E-02,  TOTAL TIME COMPLETED         1.01    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  7.594E-03

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.324E+07   TIME AVG. FORCE       1.286E+07
 LARGEST RESIDUAL FORCE             -1.79       AT NODE       1002   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -6.288E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -7.451E-04   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -1.124E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      38.8       TIME AVG. MOMENT       39.5    
 LARGEST RESIDUAL MOMENT           -8.780E-04   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -6.221E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.762E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.628E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    1.139E-02

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  7.594E-03,  FRACTION OF STEP COMPLETED  2.178E-02
 STEP TIME COMPLETED       2.178E-02,  TOTAL TIME COMPLETED         1.02    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.139E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.356E+07   TIME AVG. FORCE       1.295E+07
 LARGEST RESIDUAL FORCE             -7.56       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -9.334E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.596E-03   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    4.784E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      38.2       TIME AVG. MOMENT       39.3    
 LARGEST RESIDUAL MOMENT            1.842E-03   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      8.955E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.776E-05   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -5.381E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    1.709E-02

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.139E-02,  FRACTION OF STEP COMPLETED  3.317E-02
 STEP TIME COMPLETED       3.317E-02,  TOTAL TIME COMPLETED         1.03    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.709E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.403E+07   TIME AVG. FORCE       1.307E+07
 LARGEST RESIDUAL FORCE             -54.3       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.138       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -3.339E-03   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -3.469E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      37.3       TIME AVG. MOMENT       39.1    
 LARGEST RESIDUAL MOMENT            3.743E-03   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.264E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.905E-05   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.056E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    2.563E-02

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.709E-02,  FRACTION OF STEP COMPLETED  5.026E-02
 STEP TIME COMPLETED       5.026E-02,  TOTAL TIME COMPLETED         1.05    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.563E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.474E+07   TIME AVG. FORCE       1.324E+07
 LARGEST RESIDUAL FORCE              279.       AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.756E-03   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -1.815E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      36.2       TIME AVG. MOMENT       38.8    
 LARGEST RESIDUAL MOMENT           -7.274E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      1.736E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.601E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.474E+07   TIME AVG. FORCE       1.324E+07
 LARGEST RESIDUAL FORCE            -0.985       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        3.253E-04   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      36.2       TIME AVG. MOMENT       38.8    
 LARGEST RESIDUAL MOMENT            1.173E-04   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -1.744E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -7.701E-06   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    3.844E-02

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.563E-02,  FRACTION OF STEP COMPLETED  7.589E-02
 STEP TIME COMPLETED       7.589E-02,  TOTAL TIME COMPLETED         1.08    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.844E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.580E+07   TIME AVG. FORCE       1.347E+07
 LARGEST RESIDUAL FORCE            -1.373E+03   AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.297       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -1.391E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -9.697E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      34.7       TIME AVG. MOMENT       38.4    
 LARGEST RESIDUAL MOMENT            1.342E-02   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.286E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     3.295E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.580E+07   TIME AVG. FORCE       1.347E+07
 LARGEST RESIDUAL FORCE             -8.13       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.297       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        9.337E-04   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      34.7       TIME AVG. MOMENT       38.4    
 LARGEST RESIDUAL MOMENT            2.953E-04   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -2.308E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.208E-05   AT NODE       1001   DOF  5
   INSTANCE: CABLEPART                                                                       
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          TIME INCREMENT MAY NOW INCREASE TO    5.767E-02

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.844E-02,  FRACTION OF STEP COMPLETED  0.114    
 STEP TIME COMPLETED       0.114    ,  TOTAL TIME COMPLETED         1.11    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.767E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.738E+07   TIME AVG. FORCE       1.380E+07
 LARGEST RESIDUAL FORCE             4.922E+03   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.431       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -2.543E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    3.660E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      33.0       TIME AVG. MOMENT       38.0    
 LARGEST RESIDUAL MOMENT           -2.268E-02   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.858E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     6.035E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.738E+07   TIME AVG. FORCE       1.380E+07
 LARGEST RESIDUAL FORCE             -50.3       AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.432       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.316E-03   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      33.0       TIME AVG. MOMENT       38.0    
 LARGEST RESIDUAL MOMENT            6.334E-04   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.913E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.463E-05   AT NODE       1107   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.526E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    8.650E-02

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.767E-02,  FRACTION OF STEP COMPLETED  0.172    
 STEP TIME COMPLETED       0.172    ,  TOTAL TIME COMPLETED         1.17    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  8.650E-02

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.974E+07   TIME AVG. FORCE       1.425E+07
 LARGEST RESIDUAL FORCE            -1.516E+04   AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.623       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -4.371E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -1.241E-03
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      31.0       TIME AVG. MOMENT       37.5    
 LARGEST RESIDUAL MOMENT            3.483E-02   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.331E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     1.039E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.974E+07   TIME AVG. FORCE       1.425E+07
 LARGEST RESIDUAL FORCE              256.       AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.624       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        5.218E-03   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      31.1       TIME AVG. MOMENT       37.5    
 LARGEST RESIDUAL MOMENT            1.277E-03   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.454E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.229E-04   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -4.505E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.130    

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  8.650E-02,  FRACTION OF STEP COMPLETED  0.258    
 STEP TIME COMPLETED       0.258    ,  TOTAL TIME COMPLETED         1.26    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.130    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.324E+07   TIME AVG. FORCE       1.489E+07
 LARGEST RESIDUAL FORCE             3.780E+04   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.896       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -6.837E-02   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -3.626E-03
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      29.2       TIME AVG. MOMENT       36.9    
 LARGEST RESIDUAL MOMENT           -4.721E-02   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -3.553E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -1.627E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.324E+07   TIME AVG. FORCE       1.489E+07
 LARGEST RESIDUAL FORCE            -1.002E+03   AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.898       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.028E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -2.727E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      29.0       TIME AVG. MOMENT       36.9    
 LARGEST RESIDUAL MOMENT            2.315E-03   AT NODE       1087   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.796E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     2.429E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -1.191E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.195    

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.130    ,  FRACTION OF STEP COMPLETED  0.388    
 STEP TIME COMPLETED       0.388    ,  TOTAL TIME COMPLETED         1.39    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.195    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.841E+07   TIME AVG. FORCE       1.580E+07
 LARGEST RESIDUAL FORCE            -7.382E+04   AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.29       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -9.574E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -9.525E-03
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      28.1       TIME AVG. MOMENT       36.3    
 LARGEST RESIDUAL MOMENT            5.393E-02   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.571E-03   AT NODE       1021   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.281E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.840E+07   TIME AVG. FORCE       1.580E+07
 LARGEST RESIDUAL FORCE             2.886E+03   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.29       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        1.738E-02   AT NODE       1097   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -6.796E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      27.8       TIME AVG. MOMENT       36.3    
 LARGEST RESIDUAL MOMENT            3.735E-03   AT NODE       1021   DOF  4
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      3.825E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     4.120E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION    2.854E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          TIME INCREMENT MAY NOW INCREASE TO    0.292    

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.195    ,  FRACTION OF STEP COMPLETED  0.583    
 STEP TIME COMPLETED       0.583    ,  TOTAL TIME COMPLETED         1.58    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.292    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.599E+07   TIME AVG. FORCE       1.706E+07
 LARGEST RESIDUAL FORCE             1.095E+05   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.83       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.       -0.119       AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      28.0       TIME AVG. MOMENT       35.7    
 LARGEST RESIDUAL MOMENT           -7.019E-02   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      5.303E-03   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -2.830E-03   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   0.0000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   0.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.598E+07   TIME AVG. FORCE       1.706E+07
 LARGEST RESIDUAL FORCE             5.998E+03   AT NODE       1087   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.         -1.84       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.496E-02   AT NODE       1011   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION    1.367E-03
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      27.7       TIME AVG. MOMENT       35.7    
 LARGEST RESIDUAL MOMENT            5.682E-03   AT NODE       1087   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION     -5.145E-03   AT NODE       1086   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION     5.932E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -4.802E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.292    ,  FRACTION OF STEP COMPLETED  0.875    
 STEP TIME COMPLETED       0.875    ,  TOTAL TIME COMPLETED         1.87    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.125    

  NUMBER OF EQUATIONS =      1284     NUMBER OF FLOATING PT. OPERATIONS =  2.88E+05

  USING THE DIRECT SOLVER WITH   4 PROCESSORS

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.10000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.10000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.918E+07   TIME AVG. FORCE       1.836E+07
 LARGEST RESIDUAL FORCE            -2.238E+03   AT NODE       1021   DOF  1
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF DISP.        -0.761       AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO DISP.        2.821E-02   AT NODE       1054   DOF  3
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF DISP.    CORRECTION   -7.218E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      28.0       TIME AVG. MOMENT       35.3    
 LARGEST RESIDUAL MOMENT            8.746E-03   AT NODE       1088   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST INCREMENT OF ROTATION      2.261E-03   AT NODE       1022   DOF  5
   INSTANCE: CABLEPART                                                                       
 LARGEST CORRECTION TO ROTATION    -5.136E-04   AT NODE       1020   DOF  5
   INSTANCE: CABLEPART                                                                       
 ESTIMATE OF ROTATION CORRECTION   -9.676E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.125    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         2.00    


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         55  INCREMENTS
                       1  CUTBACKS IN AUTOMATIC INCREMENTATION
                     155  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                     155  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                     155  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                       5  WARNING MESSAGES DURING ANALYSIS
                       2  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       1  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =   12.300    
       SYSTEM TIME (SEC)    =   3.2000    
       TOTAL CPU TIME (SEC) =   15.500    
       WALLCLOCK TIME (SEC) =         11
