load Pc.hdl,
output-file Pc.out,
output-list in%B3.16.3 load%B3.1.3 inc%B3.1.3 reset%B3.1.3 out%B3.16.3,

set in 0000000000010010,
set load 0,
set inc 1,
set reset 0,
eval,
output;

set in 0000000000010010,
set load 1,
set inc 1,
set reset 0,
eval,
output;

set in 0000000000010010,
set load 0,
set inc 1,
set reset 1,
eval,
output;

set in 000000000010010,
set load 1,
set inc 1,
set reset 1,
eval,
output;