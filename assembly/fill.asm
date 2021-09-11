@SCREEN
D=A
@posicion
M=D-1

(LEERTECLADO)
@KBD
D=M
@BLACKEN
D;JGT
@WHITEN
0;JMP

(BLACKEN)
@24576
D=M
@posicion
D=D-M
@LEERTECLADO
D;JEQ

@posicion
A=M
M=-1

@posicion
M=M+1

@24576
D=A
@posicion
D=D-M
@SKIP
D;JGE
@24576
D=A
@posicion
M=D
(SKIP)

// @posicion
// M = D

@LEERTECLADO
0;JMP

(WHITEN)
@SCREEN
D=A-1
@posicion
D=D-M
@LEERTECLADO
D;JEQ

@posicion
A=M
M=0

@posicion
D=M-1
@posicion
M=D






(SKIP)

@LEERTECLADO
0;JMP