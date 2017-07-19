\ print ascii table

: .ascii ( -- )
  cr
  base @
  127 32 do
    i emit
    decimal  ." , dec: " i .
    hex      ." , hex: " i .
    8 base ! ." , oct: " i .
    2 base ! ." , bin: " i .
    cr
  loop
  base !
;
