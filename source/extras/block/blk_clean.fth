\ sets all non-printable chars in a block to space
\ remember to FLUSH after

: CLEAN ( n -- )
  BLOCK DUP 1024 + SWAP
  DO
    I C@ DUP
    32 < SWAP 127 > OR
    IF BL I C! THEN
  LOOP ;
