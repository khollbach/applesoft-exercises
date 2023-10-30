10 REM this program prints decimal and corresponding hexadecimal and octal
15 REM numbers. it shows 20 numbers per page. To show the next page press any
17 REM key.
20 TEXT : PR#0 : REM setting 40x24 TEXT MODE
30 LET S = 0
40 HOME : REM CLEAR SCREEN
50 PRINT "Decimal","Hex","Octal"
60 PRINT "-------","---","-----"
70 FOR I = S to (20 + S) 
80 LET A = I
90 GOSUB 200
93 LET A = I
95 GOSUB 300
100 PRINT I, HEX$, OCT$
110 NEXT I
120 GET V$ : REM wait for user to press a key
130 LET S = S + 20
140 GOTO 40
150 END

200 LET HEX$ = ""  
210 LET B = A - INT (A/16) * 16 : REM B = A MOD 16
220 IF B < 10 THEN H$ = STR$(B)
230 IF (B >= 10 AND B <= 15) THEN H$ = CHR$(65 + B - 10)
240 LET HEX$ = H$ + HEX$
250 LET A = (A - B) / 16
260 IF (A > 0) THEN GOTO 210
270 RETURN

300 LET OCT$ = ""  
310 LET B = A - INT (A/8) * 8 : REM B = A MOD 8
340 OCT$ = STR$(B) + OCT$
350 LET A = (A - B) / 8
360 IF (A > 0) THEN GOTO 310
370 RETURN
