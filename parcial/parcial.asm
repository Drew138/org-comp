@SCREEN
D=A
@position
M=D



(READ_KEYBOARD)


@KBD
D=M
@current_key
M=D


@97
D=A
@current_key
D=D-M
@CHARACTER_A
D;JEQ


@110
D=A
@current_key
D=D-M
@CHARACTER_N
D;JEQ



@100
D=A
@current_key
D=D-M
@CHARACTER_D
D;JEQ


@READ_KEYBOARD
0;JMP

(THROTLE_KEYBOARD)
@KBD
D=M
@current_key
D=D-M
@THROTLE_KEYBOARD
D;JEQ


@READ_KEYBOARD
0;JMP



(CHARACTER_A)
@position
D=M
@tmp
M=D



// Write char

//


@512 // jump to next line
D=A
@tmp
D=D+M

@position
M=D

// write character



//



@tmp
D=M+1
@position
M=D







@THROTLE_KEYBOARD
0;JMP


(CHARACTER_N)
@position
D=M
@tmp
M=D



// Write char

//


@512 // jump to next line
D=A
@tmp
D=D+M

@position
M=D

// write character



//



@tmp
D=M+1
@position
M=D



@THROTLE_KEYBOARD
0;JMP


(CHARACTER_D)
@position
D=M
@tmp
M=D



// Write char

//


@512 // jump to next line
D=A
@tmp
D=D+M

@position
M=D

// write character



//



@tmp
D=M+1
@position
M=D

@THROTLE_KEYBOARD
0;JMP



