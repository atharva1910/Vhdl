// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// for i < R1 ; R0+R1 ;i--
// Put your code here.


    //Check if any input is zero
    @R0
    D=M
    @ANS
    D                           ;JEQ

    @R1
    D=M
    @ANS
    D                           ;JEQ
    //Intitialize R2 0
    @R2
    M=0
    //Start loop keep adding value of R0 to R0 And dec i       
    (LOOP)
    @R0
    D=M
    @R2
    M=M+D
    @R1
    M=M-1
    D=M
    @LOOP
    D                           ;JGT

    //END
    (END)
    @END
    0                           ;JMP

    (ANS)
    @R2
    M=0
    @END
    0                           ;JMP
