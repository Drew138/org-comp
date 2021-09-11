@position
D=M
@R12
AD=D+M
// row 1
@63 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 2
D=A // D holds previous addr
@32
AD=D+A
@248 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 3
D=A // D holds previous addr
@32
AD=D+A
@456 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 4
D=A // D holds previous addr
@32
AD=D+A
@1928 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 5
D=A // D holds previous addr
@32
AD=D+A
@3080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 6
D=A // D holds previous addr
@32
AD=D+A
@6152 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 7
D=A // D holds previous addr
@32
AD=D+A
@4104 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 8
D=A // D holds previous addr
@32
AD=D+A
@4104 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 9
D=A // D holds previous addr
@32
AD=D+A
@4104 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 10
D=A // D holds previous addr
@32
AD=D+A
@4104 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 11
D=A // D holds previous addr
@32
AD=D+A
@6152 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 12
D=A // D holds previous addr
@32
AD=D+A
@3080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 13
D=A // D holds previous addr
@32
AD=D+A
@1928 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 14
D=A // D holds previous addr
@32
AD=D+A
@456 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 15
D=A // D holds previous addr
@32
AD=D+A
@248 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 16
D=A // D holds previous addr
@32
AD=D+A
@63 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// return
