 0 ( DOER/MAKE  FORTH-83 Lab. Micro PC/FORTH 2.0  LPB 12/05/83 )
 1 : NOTHING ;
 2 : DOER  CREATE ['] NOTHING >BODY , DOES> @ >R ;
 3 VARIABLE MARKER
 4 : (MAKE)  R> DUP 2+  DUP 2+  SWAP @  >BODY !
 5     @ ?DUP IF >R THEN ;
 6 : MAKE  STATE @ IF ( compiling )
 7     COMPILE (MAKE) HERE MARKER ! 0 ,
 8     ELSE HERE [COMPILE] ' >BODY !
 9     [COMPILE] ] UNSMUDGE THEN ; IMMEDIATE
10 : ;AND  COMPILE EXIT HERE MARKER @ ! ; IMMEDIATE
11 : UNDO  ['] NOTHING >BODY [COMPILE] ' >BODY ! ;
12
13 ( the code in this screen is in the public domain )
14
15
