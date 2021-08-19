load Add16.hdl,
output-file Add16.out,
output-list a%B3.1.3 b%B3.1.3 out%B3.1.3 carry%B3.1.3,

set a %B0000000000000101,
set b %B0000000000000101,
eval,
output;

set a %B0000000000000101,
set b %B1111111111110001,
eval,
output;