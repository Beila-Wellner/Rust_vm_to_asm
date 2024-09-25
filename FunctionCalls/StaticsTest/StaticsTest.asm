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

//function Class1.set 0
(Class1.set)
@0
D=A
@Class1.set.End
D;JEQ
(Class1.set.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Class1.set.LOOP
D=D-1;JNE
(Class1.set.End)

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

//pop static 0
@SP
A=M-1
D=M
@Class1.0
M=D
@SP
M=M-1

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

//pop static 1
@SP
A=M-1
D=M
@Class1.1
M=D
@SP
M=M-1

//push constant 0
@0
D=A
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

//function Class1.get 0
(Class1.get)
@0
D=A
@Class1.get.End
D;JEQ
(Class1.get.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Class1.get.LOOP
D=D-1;JNE
(Class1.get.End)

//push static 0
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Class1.1
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


//function Class2.set 0
(Class2.set)
@0
D=A
@Class2.set.End
D;JEQ
(Class2.set.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Class2.set.LOOP
D=D-1;JNE
(Class2.set.End)

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

//pop static 0
@SP
A=M-1
D=M
@Class2.0
M=D
@SP
M=M-1

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

//pop static 1
@SP
A=M-1
D=M
@Class2.1
M=D
@SP
M=M-1

//push constant 0
@0
D=A
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

//function Class2.get 0
(Class2.get)
@0
D=A
@Class2.get.End
D;JEQ
(Class2.get.LOOP)
@SP
A=M
M=0
@SP
M=M+1
@Class2.get.LOOP
D=D-1;JNE
(Class2.get.End)

//push static 0
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Class2.1
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

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Class1.set 2
@Class1.set.ReturnAddress1
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
@7
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Class1.set.ReturnAddress1)

//pop temp 0 // Dumps the return value
@SP
A=M-1
D=M
@5
M=D
@SP
M=M-1

//push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Class2.set 2
@Class2.set.ReturnAddress2
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
@7
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Class2.set.ReturnAddress2)

//pop temp 0 // Dumps the return value
@SP
A=M-1
D=M
@5
M=D
@SP
M=M-1

//call Class1.get 0
@Class1.get.ReturnAddress3
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
@Class1.get
0;JMP
(Class1.get.ReturnAddress3)

//call Class2.get 0
@Class2.get.ReturnAddress4
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
@Class2.get
0;JMP
(Class2.get.ReturnAddress4)

//label WHILE
(Sys.WHILE)

//goto WHILE
@Sys.WHILE
0; JMP

