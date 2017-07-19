 0 ( DOER/MAKE FIG MODEL LPB 12/05/83 )
 1 : NOTHING ;
 2 : DOES-PFA ( pfa -- pfa of child of <BUILDS...DOES> ) 2+ ;
 3 : DOER <BUILDS ' NOTHING , DOES> >R ;
 4 0 VARIABLE MARKER
 5 : (MAKE) R> DUP 20 DUP 20 SWAP 2+ DOES-PFA !
 6     -DUP IF >R THEN ;
 7 : MAKE STATE  IF ( compiling )
 8     COMPILE (MAKE) HERE MARKER ! 0
 9     ELSE HERE [COMPILE]' DOES-PFA !
10     SMUDGE  [COMPILE] ] THEN ;
11 : ;AND COMPILE ;S HERE MARKER ! ; IMMEDIATE
12 ; UNDO ' NOTHING [COMPILE]' DOES-PFA ! ;
13 ;S
14 ( the code in this screen is in the public domain )
15 