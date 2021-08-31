load Register.hdl,
output-file Register.out,
output-list in%B3.16.3 load%B3.1.3 out%B3.16.3,

set in 0000000000111100,
set load 0,
eval,
output;

set in 0000000000111100,
set load 1,
eval,
output;

set in 0000000001010010,
set load 0,
eval,
output;

set in 0000000001010010,
set load 1,
eval,
output;