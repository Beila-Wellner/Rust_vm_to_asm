
//push constant 0    
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 0        // initialize sum = 0
@SP
A=M-1
D=M
@LCL
A=M
M=D
@SP
M=M-1

//label LOOP_START
(BasicLoop.LOOP_START)

//push argument 0    
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=D+M
@SP
M=M+1

//pop local 0
@SP
A=M-1
D=M
@LCL
A=M
M=D
@SP
M=M-1

//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

//pop argument 0     // counter--
@SP
A=M-1
D=M
@ARG
A=M
M=D
@SP
M=M-1

//push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto LOOP_START // If counter > 0, goto LOOP_START
@SP
M=M-1
A=M
D=M
@BasicLoop.LOOP_START
D; JNE

//push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

