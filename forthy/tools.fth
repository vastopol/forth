\ extentions for math, logic, functionality, etc...

: in-range? ( n x y -- t/f )
  >R over <
  swap R> >
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

\ ----------------------------

: crs ( n -- ) \ prints any negative absolute value times
  abs ?dup
  if
     0 do
         cr
     loop
  then
;

