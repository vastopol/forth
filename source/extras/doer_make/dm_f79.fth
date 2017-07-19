 0 ( DOER/MAKE  79-Standard MVP FORTH  LPB 12/05/83 )
 1 : NOTHING ;
 2 : DOER CREATE ' NOTHING , DOES> >R ;
 3 VARIABLE MARKER
 4 : (MAKE) R> DUP 2+ DUP 2+ SWAP 2+ ( pfa ) !
 5     ?DUP IF >R THEN ;
 6 : MAKE STATE  IF ( compiling )
 7     COMPILE (MAKE) HERE MARKER ! 0
 8     ELSE HERE [COMPILE]' ! 
 9     [COMPILE] ] THEN ; IMMEDIATE
10 : ;AND COMPILE EXIT HERE MARKER ! ; IMMEDIATE
11 : UNDO ['] NOTHING [COMPILE]' ! ;
12 
13 ( 238 )
14 ( the code in this screen is in the public domain )
15 
