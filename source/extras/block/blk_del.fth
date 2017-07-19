\ block delete utility
\ uses editor vocabulary and clear

: BLOCK-DELETE ( 1st last -- )
  CR CR ." WARNING : DATA MAY BE DELETED " 
  CR CR ." Blocks " OVER . ." to " DUP .
  ." will be deleted." CR ." Press 'C' to confirm "
  KEY CR 67 ( C ) =
  IF
    ."    Press 'D' to delete "
    KEY 68 ( D ) =
    IF CR
      1+ SWAP DO
      FORTH I I EDITOR CLEAR \ forth i ( index ) not the editor command
      CR ." clearing " .
      LOOP CR ." Deletion completed. " 
    UPDATE FLUSH ELSE CR ." ABORTED " THEN
ELSE CR ." DELETION ABORTED " CR THEN ; ;S
