@SCREEN
D=A
@position
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






@DRAW_IMAGE
0;JEQ









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


@y
M=M-1





@DRAW_IMAGE
0;JEQ

















(RIGHT)


@animation
D=M
@MOVE_REGISTER_RIGHT // if animation is 1 move register to the right
D;JGT
@animation  // else change animation to 1
M=1



@SKIP_MOVE_REGISTER_RIGHT
0;JMP
(MOVE_REGISTER_RIGHT)
@x
M=M+1
@animation
M=0
@position
M=M+1


@32
D=A
@x
D=M-D

// reset x if it reaches 32
@SKIP_MOVE_REGISTER_RIGHT
D;JLT
@x
M=0






(SKIP_MOVE_REGISTER_RIGHT)





@DRAW_IMAGE
0;JEQ



(LEFT)


@animation
D=M
@MOVE_REGISTER_LEFT // if animation is 0 move register to the right
D;JEQ



@animation  // else change animation to 0
M=0
@SKIP_MOVE_REGISTER_LEFT
0;JMP




(MOVE_REGISTER_LEFT)
@x
M=M-1
@animation
M=1
@position
M=M-1



@x
D=M

// reset x to 32 if it reaches 0
@SKIP_MOVE_REGISTER_LEFT // jump if x is greater than 0
D;JGT
@32
D=A
@x
M=D






(SKIP_MOVE_REGISTER_LEFT)





@DRAW_IMAGE
0;JEQ







































(DRAW_IMAGE)

// draw image
@animation
D=M
@CLEAN_FIRST // if animation is 1 clean first draw 2nd
D;JGT
@CLEAN_SECOND // else clean ssecond draw 1st
D;JMP





(FIRST)





// back to top
@THROTLE_KEYBOARD
0;JMP







(SECOND)





// back to top
@THROTLE_KEYBOARD
0;JMP










(CLEAN_FIRST)




@SECOND
0;JMP







(CLEAN_SECOND)


@FIRST
0;JMP

