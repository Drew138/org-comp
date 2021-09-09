@SCREEN
D=A
@position1
M=D-1
@position2
M=D



@x
M=0

@y
M=0


@animation
M=0



(READ_KEYBOARD)

@KBD
D=M
@current_key
M=D





@READ_KEYBOARD
0;JMP



(UP)


@8
D=A
@y
D=M+D
M=D


@255
D=A

@y
D=M-D

@PASS_Y_UP
D;JLT
@256 // go back to top
D=A
@position
D=M-D
M=D

@y
M=0
(PASS_Y_UP)







@animation
D=M
@CLEAN_FIRST
D;JGT
@CLEAN_SECOND
D;JMP










(DOWN)

@8
D=A
@y
D=M-D
M=D




@PASS_Y_DOWN
D;JLT
@256 // go back to top
D=A
@position
D=M+D
M=D


@247
D=A
@y
M=D



(PASS_Y_DOWN)


@up
M=M-1






@animation
D=M
@CLEAN_FIRST
D;JGT
@CLEAN_SECOND
D;JMP

















(RIGHT)


@animation
D=M
@MOVE_REGISTER_RIGHT
D;JGT
@animation
M=M+1



@SKIP_MOVE_REGISTER_RIGHT
0;JMP
(MOVE_REGISTER_RIGHT)
@x
M=M+1
@animation
M=0


@32
D=A
@x
D=M-D

// reset x if it reaches 32
@SKIP_RESET_X
D;JLT
@x
M=0

(SKIP_RESET_x)




(SKIP_MOVE_REGISTER_RIGHT)





// draw image
@animation
D=M
@CLEAN_FIRST
D;JGT
@CLEAN_SECOND
D;JMP



(LEFT)








// draw image
@animation
D=M
@CLEAN_FIRST
D;JGT
@CLEAN_SECOND
D;JMP






(FIRST)



// back to top
@READ_KEYBOARD
0;JMP





(SECOND)








// back to top
@READ_KEYBOARD
0;JMP


(CLEAN_FIRST)

@SECOND
0;JMP




(CLEAN_SECOND)


@FIRST
0;JMP

