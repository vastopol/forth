: .s  ( -- ) \ stack picture listing order
  depth
  begin dup while dup pick . 1- repeat
  drop
;

\ variations on dot-s
\ dot-s, one way, signed output
: ds  sp@ sp0 1 cells - do i @  . -2 +loop ;

\ dot-s, one way, unsigned output
: uds sp@ sp0 1 cells - do i @ u. -2 +loop ;

\ dot-s, the other way (reverse?), signed output
: rs  sp@ sp0      swap do i @  .  2 +loop ;

\ dot-s, the other way, unsigned output
: urs sp@ sp0      swap do i @ u.  2 +loop ;

\ dot-s, verbose, as it used to be in earlier versions of amforth
: dsv  depth dup 0 do i u. dup i -
    cells sp0 swap - dup u. @  . cr loop ;

: udsv  depth dup 0 do i u. dup i -
    cells sp0 swap - dup u. @ u. cr loop ;

