10 HOME : HGR2 : REM drawing a spiral with COS and SIN
30 HCOLOR = 3 : REM set color to white

40 LET SX = INT (280/2)-0.5 : REM screen center on X
50 LET SY = INT (192/2)-0.5 : REM screen center on Y
60 LET PI = 3.14159

65 LET IR = 5 : REM initial radius
70 HPLOT SX + IR, SY : REM starting point

75 LET A = 0
80 FOR R = IR TO 96 STEP 0.1
85 A = A + PI/60
90 LET Y = SIN(A) * R
100 LET X = COS(A) * R 
110 HPLOT TO SX + X,  SY + Y
120 NEXT

140 END
