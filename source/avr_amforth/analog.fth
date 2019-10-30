\ continuously read the adc port
\ and print the new value if it
\ has changed considerably since last round
\ note the 50ms delay to keep things
\ run smoothly. A key press will
\ return to the command prompt
\ http://amforth.sourceforge.net/TG/recipes/Arduino-Analog.html

: analog-test
   0
   begin
     ( -- old )
     analog.1 adc.get ( -- old new  )
     swap over        ( -- new old new )
     - abs 6 >        ( -- new f )
     50 ms            ( wait...)
     if dup u. then   ( -- new )
     key?             ( -- new f )
   until
   key drop
   drop ;
   