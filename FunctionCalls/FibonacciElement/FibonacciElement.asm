//bootstrap
@256
D=A
@SP
M=D
@Sys.init.ReturnAddress0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init.ReturnAddress0)

//function Main.fibonacci 0
(Main.fibonacci)
@0
D=A
@Main.fibonacci.End
D;JEQ
(Main.fibonacci.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Main.fibonacci.LOOP
D=D-1;JNE
(Main.fibonacci.End)

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

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt                     // check if n < 2
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=M-D
@IF_TRUE1
D;JLT
@SP
A=M
M=0
@IF_FALSE1
0;JMP
(IF_TRUE1)
@SP
A=M
M=-1
(IF_FALSE1)
@SP
M=M+1

//if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@Main.IF_TRUE
D; JNE

//goto IF_FALSE
@Main.IF_FALSE
0; JMP

//label IF_TRUE          // if n<2, return n
(Main.IF_TRUE)

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

//label IF_FALSE         // if n>=2, return fib(n-2)+fib(n-1)
(Main.IF_FALSE)

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

//push constant 2
@2
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

//call Main.fibonacci 1  // compute fib(n-2)
@Main.fibonacci.ReturnAddress2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci.ReturnAddress2)

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

//call Main.fibonacci 1  // compute fib(n-1)
@Main.fibonacci.ReturnAddress3
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci.ReturnAddress3)

//add                    // return fib(n-1) + fib(n-2)
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


//function Sys.init 0
(Sys.init)
@0
D=A
@Sys.init.End
D;JEQ
(Sys.init.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Sys.init.LOOP
D=D-1;JNE
(Sys.init.End)

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Main.fibonacci 1   // Compute the 4'th fibonacci element
@Main.fibonacci.ReturnAddress4
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Main.fibonacci.ReturnAddress4)

//label WHILE
(Sys.WHILE)

//goto WHILE              // Loop infinitely
@Sys.WHILE
0; JMP

