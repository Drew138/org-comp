@SCREEN
D=A
@R12
AD=D+M
// row 1
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 2
D=A // D holds previous addr
@32
AD=D+A
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 3
D=A // D holds previous addr
@32
AD=D+A
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 4
D=A // D holds previous addr
@32
AD=D+A
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 5
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
M=-1
// row 6
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
M=-1
// row 7
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
M=-1
// row 8
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
M=-1
// row 9
D=A // D holds previous addr
@31
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 10
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 11
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 12
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 13
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 14
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 15
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 16
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 17
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 18
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 19
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 20
D=A // D holds previous addr
@30
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
M=-1
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 21
D=A // D holds previous addr
@30
AD=D+A
M=0
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 22
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 23
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 24
D=A // D holds previous addr
@31
AD=D+A
M=0
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 25
D=A // D holds previous addr
@31
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 26
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 27
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 28
D=A // D holds previous addr
@30
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4080 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 29
D=A // D holds previous addr
@30
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 30
D=A // D holds previous addr
@30
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 31
D=A // D holds previous addr
@30
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 32
D=A // D holds previous addr
@30
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@4081 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// return
@R13
A=M
D;JMP