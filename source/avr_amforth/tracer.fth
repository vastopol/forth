\ flag to dynamically turn trace output
\ on and off
variable tracing?
: trace:on -1 tracing? ! ;
: trace:off 0 tracing? ! ;
: tracer tracing? @ if cr itype cr .s else drop drop then ;

\ save the name of the word for use in tracer
: : >in @ >r : r> >in !
   parse-name postpone sliteral postpone tracer
;
