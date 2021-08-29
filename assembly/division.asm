@acumulado
M=0
@mult1
M=6
@mult2
M=5
@mult1
A=M
(LOOP)
@mult2
D=M
D;JEQ
@



@FIN



(FIN)


@10
D=D-A
@FIN
D;JGT
@index
D=M
@suma
M=D+M
@index
M=M+1
@LOOP
0;JMP
(FIN)
@FIN
0