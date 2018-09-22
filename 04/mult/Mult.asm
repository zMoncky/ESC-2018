// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


@R2 // ATRIBUI 0 PARA R2
M=0

@R0 //condicao para ver se R0 é igual a zero
D=M

@END
D; JEQ

@R1 //condicao para ver se R1 é igual a zero
D=M

@END
D; JEQ

(LOOP)

    @R0
    D=M

    @R2
    M = M + D

    @R1
    M = M-1

    @R1
    D=M

    @LOOP
    D; JGT

(END)
    @END
    0; JMP