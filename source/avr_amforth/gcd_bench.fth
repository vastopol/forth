: gcd ( a b -- gcd )
  begin
    dup
    while
      swap over mod
  repeat
  drop ;

: bench ( n -- )
  dup 0 do
    dup 0 do
      j i gcd
      drop
    loop
  loop
  drop ;
