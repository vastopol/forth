\ Arduino Hello World
\ The example demonstrates a blinking LED.
\ Most arduino’s have one attached to the port Digital-13.
\ http://amforth.sourceforge.net/TG/recipes/Arduino-HelloWorld.html

$25 constant PORTB
$24 constant DDRB

\ set pinmode to output
: led-init  $80 DDRB c! ;

\ toggle led
: led-on $80 PORTB c! ;
: led-off  0 PORTB c! ;

\ blink for 1 second
: led-blink led-on 500 ms led-off 500 ms ;

\ blink until input
: blink-forever
  ." press any key to stop "
  begin
     led-blink
     key?
  until
  key drop
;

