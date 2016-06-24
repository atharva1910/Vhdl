// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

    //Set number of lines
    @8192
    D=A
    @lines
    M=D
    //Line Drawn
    @linedw
    M=0

    //Infinite loop to check keyboard
    (INLOOP)
    @KBD
    D=M
    @INLOOP
    D                           ;JEQ
    
    //BLACKEN THE SCREEN
    (SCREENPR)
    @linedw
    D=M
    M=M+1
    @SCREEN
    A=A+D
    M=-1
    @lines
    M=M-1
    D=M
    @SCREENPR
    D                           ;JGT

    //RESET THE LINES
    @8192
    D=A
    @lines
    M=D
    //Line Drawn
    @linedw
    M=0
    //TEST AGAIN IF KEY IS RELEASED    
    (OUTLOOP)
    @KBD
    D=M
    @OUTLOOP
    D                           ;JNE
    

    //WHITEN THE SCREEN
    (SCREENWR)
    @linedw
    D=M
    M=M+1
    @SCREEN
    A=A+D
    M=0
    @lines
    M=M-1
    D=M
    @SCREENWR
    D                           ;JGT


    //RESET THE LINE NUMBER
	(RESET)
    //Set number of lines
    @8192
    D=A
    @lines
    M=D
    //Line Drawn
    @linedw
    M=0
    @INLOOP
    0                           ;JMP




    
    
    
