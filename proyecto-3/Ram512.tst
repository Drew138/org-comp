load Ram512.hdl,
output-file Ram512.out,
output-list in%B3.16.3 address%B3.9.3 load%B3.1.3 out%B3.16.3,

set in %B0000000000111100,
set address %B111010000,
set load 0,
eval,
output;

set in %B0000000000111100,
set address %B111010000,
set load 1,
eval,
output;