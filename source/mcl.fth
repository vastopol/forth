\ Music composition language program
\ Advanced Forth 1986

\ not finished ...
\ at some point figure out how to interface to sound card
\ change definitons to emit a sound

: C  ." C "  ;
: C# ." C# " ;
\ : Db ." Db " ;
: D  ." D "  ;
: D# ." D# " ;
\ : Eb ." Eb " ; 
: E  ." E "  ;
: F  ." F "  ;
: F# ." F# " ;
\ : Gb ." Gb " ;
: G  ." G "  ;
: G# ." G# " ;
\ : Ab ." Ab " ;
: A  ." A "  ;
: A# ." A# " ;
\ : Bb ." Bb " ;
: B  ." B "  ;

\ to start an entry
: MELODY [compile] : ; immediate

\ to end an entry
: STOP [compile] ; ; immediate

\ to see a screen # where a score is stored \ SHOW scr# 
: SHOW
  32 word number ( get the following number )
  drop           ( convert to single precision )
  list ;         ( print screen # )

\ name a screen storing a musical score \ scr# CALLED name
: CALLED
  create ,
  does> @ list ;

\ list screen without line numbers
: _LIST ( screen -- )
  block dup 1024 +
  swap do
          i c/l -trailing type
          c/l +loop cr ;
