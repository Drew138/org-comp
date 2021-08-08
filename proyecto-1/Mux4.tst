load Mux4.hdl,
output-file Mux4.out,
output-list a%B1.1.1 b%B1.1.1 c%B1.1.1 d%B1.1.1 sel%B2.2.2  out%B1.1.1,

set a 0,
set b 1,
set c 1,
set d 0,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set sel 2,
eval,
output;

set sel 3,
eval,
output;