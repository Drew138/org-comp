@30
D=A
@dividendo
M=D
@4
D=A
@divisor
M=D
@cociente
M=0
(LOOP)
@dividendo
D=M
@divisor
A=M
D=D-A
@dividendo
M=D
@FIN
D;JLT
@cociente
M=M+1
@LOOP
0;JMP
(FIN)
@FIN
0;JMP