\ extentions for math, logic, functionality, etc...
\ written for gforth

: 2+ ( x -- y) 
  2 + ;

: 2- ( x -- y) 
  2 - ;

: in-range? ( n x y -- t/f )
  >r over <
  swap r> >
  and ;

: binary ( -- )
  decimal
  2 base ! ;

: octal ( -- )
  decimal
  8 base ! ;

\ ----------------------------
( bugs because of inconsistent forth definitions for NOT )
( ??? which to use. invert, 0=, negate, ... )

: not  ( a -- ~a )  
  invert ; 

: nand ( a b -- c ) 
  and not ;

: nor  ( a b -- c ) 
  or not ;

: xnor ( a b -- c ) 
  xor not ;

\ bitwise or n with contents of addr, store result in addr
: or!  ( n addr --  ) 
  dup >r
  c@ or
  >r c! ;

\ bitwise xor n with contents of addr, store result in addr
: xor! ( n addr -- )
  dup >r
  c@ xor
  >r c! ;

\ ----------------------------

\ print ascii table, uses routines from above
: .ascii ( -- )
  cr
  base @
  127 32 do
    i emit
    decimal  ." , dec: " i .
    hex      ." , hex: " i .
    octal    ." , oct: " i .
    binary   ." , bin: " i .
    cr
  loop
  base !
;

: crs ( n -- ) \ prints any negative absolute value times
  abs ?dup
  if
     0 do
         cr
     loop
  then
;

