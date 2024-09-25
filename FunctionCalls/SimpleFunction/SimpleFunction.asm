
//function SimpleFunction.test 2
(SimpleFunction.test)
@2
D=A
@SimpleFunction.test.End
D;JEQ
(SimpleFunction.test.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@SimpleFunction.test.LOOP
D=D-1;JNE
(SimpleFunction.test.End)

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

//push local 1
@1
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

//not
@SP
M=M-1
A=M
D=!M
M=D
@SP
M=M+1

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

//push argument 1
@1
D=A
@ARG
A=M+D
D=M
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

//return
@LCL
D=M
@5
A=D-A
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M
@SP
M=D+1
@LCL
M=M-1
A=M
D=M
@THAT
M=D
@LCL
M=M-1
A=M
D=M
@THIS
M=D
@LCL
M=M-1
A=M
D=M
@ARG
M=D
@LCL
M=M-1
A=M
D=M
@LCL
M=D
@13
A=M
0; JMP

