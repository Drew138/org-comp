@SCREEN
D=A
@position
M=D
@x
M=0
@y
M=0


//
@DRAW_IMAGE
0;JMP


//
(READ_KEYBOARD)

@KBD
D=M
@current_key
M=D


// pressed left arrow
@130
D=A
@current_key
D=D-M
@LEFT
D;JEQ

// presed right arrow
@132
D=A
@current_key
D=D-M
@RIGHT
D;JEQ

// pressed up key
@131
D=A
@current_key
D=D-M
@UP
D;JEQ


// pressed down key
@133
D=A
@current_key
D=D-M
@DOWN
D;JEQ


// if no key matches, go back to the top
@READ_KEYBOARD
0;JMP



(THROTLE_KEYBOARD) // if key has not been released, enter loop
@KBD
D=M
@current_key
D=D-M
@THROTLE_KEYBOARD
D;JEQ


@READ_KEYBOARD // once key is released go back to the top
0;JMP



(UP)

@position
D=M
@current
M=D


@16
D=A
@y
M=M-D

@512
D=A
@position
M=M-D

@y
D=M
@SKIP_RESET_Y_UP
D;JGE



@224
D=A
@y
M=D

@7680 // go back to top
D=A
@position
M=M+D

(SKIP_RESET_Y_UP)



@CLEAN
0;JMP









(DOWN)

@position
D=M
@current
M=D

@16
D=A
@y
M=M+D

@512
D=A
@position
M=M+D


@224
D=A
@y
D=D-M
@SKIP_RESET_Y_DOWN
D;JGE


@y
M=0

@7680 // go back to top
D=A
@position
M=M-D

(SKIP_RESET_Y_DOWN)





@CLEAN
0;JMP


(RIGHT)
@position
D=M
@current
M=D

@position
M=M+1
@x
M=M+1
@32
D=A
@x
D=M-D
@SKIP_RESET_X_RIGHT
D;JLT
@32
D=A
@position
M=M-D
@x
M=M-D
(SKIP_RESET_X_RIGHT)
@CLEAN
0;JEQ












(LEFT)
@position
D=M
@current
M=D


@position
M=M-1
@x
M=M-1
@x
D=M
@SKIP_RESET_X_LEFT
D;JGE
@32
D=A
@position
M=M+D
@x
M=M+D
(SKIP_RESET_X_LEFT)




@CLEAN
0;JEQ














(DRAW_IMAGE)



@position
D=M
@R12
AD=D+M
// row 1
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 2
D=A // D holds previous addr
@31
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 3
D=A // D holds previous addr
@31
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 4
D=A // D holds previous addr
@31
AD=D+A
@4096 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@15 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 5
D=A // D holds previous addr
@31
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 6
D=A // D holds previous addr
@31
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 7
D=A // D holds previous addr
@31
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 8
D=A // D holds previous addr
@31
AD=D+A
@256 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@255 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 9
D=A // D holds previous addr
@31
AD=D+A
@16 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4095 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 10
D=A // D holds previous addr
@31
AD=D+A
@16 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4095 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 11
D=A // D holds previous addr
@31
AD=D+A
@16 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4095 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 12
D=A // D holds previous addr
@31
AD=D+A
@16 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@4095 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 13
D=A // D holds previous addr
@31
AD=D+A
@3841 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@241 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 14
D=A // D holds previous addr
@31
AD=D+A
@3841 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@241 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 15
D=A // D holds previous addr
@31
AD=D+A
@3841 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@241 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 16
D=A // D holds previous addr
@31
AD=D+A
@3841 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@241 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 17
D=A // D holds previous addr
@31
AD=D+A
M=-1
AD=A+1 // D holds addr
M=-1
// row 18
D=A // D holds previous addr
@31
AD=D+A
M=-1
AD=A+1 // D holds addr
M=-1
// row 19
D=A // D holds previous addr
@31
AD=D+A
M=-1
AD=A+1 // D holds addr
M=-1
// row 20
D=A // D holds previous addr
@31
AD=D+A
M=-1
AD=A+1 // D holds addr
M=-1
// row 21
D=A // D holds previous addr
@31
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 22
D=A // D holds previous addr
@31
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 23
D=A // D holds previous addr
@31
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 24
D=A // D holds previous addr
@31
AD=D+A
@3840 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@240 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 25
D=A // D holds previous addr
@31
AD=D+A
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 26
D=A // D holds previous addr
@31
AD=D+A
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 27
D=A // D holds previous addr
@31
AD=D+A
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 28
D=A // D holds previous addr
@31
AD=D+A
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
AD=A+1 // D holds addr
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
// row 29
D=A // D holds previous addr
@31
AD=D+A
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 30
D=A // D holds previous addr
@31
AD=D+A
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 31
D=A // D holds previous addr
@31
AD=D+A
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// row 32
D=A // D holds previous addr
@31
AD=D+A
@3855 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=D-A // RAM[addr] = val
AD=A+1 // D holds addr
@3856 // A holds val
D=D+A // D = addr + val
A=D-A // A=addr + val - val = addr
M=A-D // RAM[addr]=-val
// return




// back to top
@THROTLE_KEYBOARD
0;JMP














(CLEAN)

@tmp
M=0
(START_LOOP)
@32
D=A
@tmp
D=D-M
@END_LOOP
D;JEQ


@current
A=M
M=0
@current
A=M+1
M=0




@32
D=A
@current
M=M+D






@tmp
M=M+1
@START_LOOP
0;JMP

(END_LOOP)



// return



@DRAW_IMAGE
0;JMP

