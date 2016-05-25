
.section .bss

@ 0x02103e00

.org 0x21beb80 - 0x02103e00

RAM_21beb80:

.org 0x21beba0 - 0x02103e00

RAM_21beba0:

.org 0x21bf370 - 0x02103e00

RAM_21bf370:

.org 0x21bf3b0 - 0x02103e00

RAM_21bf3b0:

.org 0x21bf3f0 - 0x02103e00

RAM_21bf3f0:

.org 0x21bf67c - 0x02103e00

RAM_21bf67c:

.org 0x21bf6bc - 0x02103e00

RAM_21bf6bc:

.org 0x21bf6dc - 0x02103e00

RAM_21bf6dc:

.org 0x21bfaf0 - 0x02103e00

@ init at branch_2017eaa:
@ 27ffda0 init with Function_20c304c
@ branch_201786a: calculate offset
RAM_21bfaf0:

.org 0x21bfb10 - 0x02103e00

RAM_21bfb10:
    .word 0, 0
RAM_21bfb18:
    .word 0

.org 0x21c0744 - 0x02103e00

RAM_21c0744:
    .word 0, 0, 0, 0, 0, 0, 0
RAM_21c0760:
    .word 0
RAM_21c0764:
    .word 0
RAM_21c0768:
    .word 0, 0
RAM_21c0770:
    .word 0
RAM_21c0774:
    .word 0, 0
RAM_21c077c:
    .word 0, 0, 0
RAM_21c0788:
    .word 0, 0, 0
RAM_21c0794:
    .word 0, 0
RAM_21c079c:
    .word 0
RAM_21c07a0:
    .word 0
RAM_21c07a4:
    .word 0
RAM_21c07a8:
    .word 0, 0
RAM_21c07b0:
    .word 0
RAM_21c07b4:
    .word 0
RAM_21c07b8:
    .word 0, 0, 0
RAM_21c07c4:
    .word 0, 0, 0
RAM_21c07d0:
    .word 0
.globl RAM_21c07d4
RAM_21c07d4:
    .word 0
RAM_21c07d8:
    .word 0
RAM_21c07dc:
    .word 0
RAM_21c07e0:
    .word 0, 0, 0, 0
RAM_21c07f0:
    .word 0
RAM_21c07f4:
    .word 0, 0
RAM_21c07fc:


.org 0x21c0848 - 0x02103e00

RAM_21c0848:


.org 0x21c3a34 - 0x02103e00

RAM_21c3a34:

.org 0x21c3a3c - 0x02103e00

RAM_21c3a3c:

.org 0x21c5a60 - 0x02103e00

RAM_21c5a60:

.org 0x21ccb9e - 0x02103e00

RAM_21ccb9e:
    .hword 0


.org 0x21ccba0 - 0x02103e00

RAM_21ccba0:
    .hword 0, 0, 0, 0, 0, 0, 0, 0
    .hword 0, 0, 0, 0, 0


.org 0x21ccc58 - 0x02103e00

RAM_21ccc58:
    .word 0
RAM_21ccc5c:


.org 0x21ccc80 - 0x02103e00

RAM_21ccc80:
    .word 0
RAM_21ccc84:
    .word 0, 0, 0
RAM_21ccc90:


.org 0x21cec08 - 0x02103e00

RAM_21cec08:
    .word 0
RAM_21cec0c:
    .word 0, 0, 0
RAM_21cec18:
    .word 0
RAM_21cec1c:
    .word 0, 0
RAM_21cec24:
    .word 0, 0
RAM_21cec2c:
    .word 0, 0
RAM_21cec34:


.org 0x21cec90 - 0x02103e00

RAM_21cec90:


.org 0x21cee20 - 0x02103e00

RAM_21cee20:


.org 0x21d0d68 - 0x02103e00

RAM_21d0d68:


.org 0x27e0000 - 0x02103e00

RAM_27e0000:
    .zero 4*24 @ 24 JumpAdresses, 1 for every IRQs

RAM_27e0060:
    .zero 4*8

RAM_27e0080:


.org 0x27fff80 - 0x02103e00

RAM_27fff80:
    .word 0, 0, 0, 0
RAM_27fff90:
    .word 0
RAM_27fff94:
    .hword 0
RAM_27fff96:
    .hword 0
RAM_27fff98:
    .hword 0
    .byte 0
RAM_27fff9b:
    .byte 0
RAM_27fff9c:
    .word 0
RAM_27fffa0:
    .word 0, 0
RAM_27fffa8:
    .hword 0
RAM_27fffaa:
    .hword 0
    .word 0
RAM_27fffb0:
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
    .word 0, 0, 0, 0
RAM_27fffe0:
    .word 0, 0
RAM_27fffe8:
    .word 0, 0
RAM_27ffff0:




/*
0x21c07c4 +1 .byte
0x21c07c4 +4 .word
0x21c07c4 +8 .word
0x21c07d8
0x21c07dc
0x21c07e0
0x21c07f0 +2 .hword
0x21c07fc +0x40 .word
0x21c07fc +0x44 .word
*/

@ 0x21d0d80


.equ Unknown_2101d20,              0x2101d20 @ .word
.equ Unknown_2101d38,              0x2101d38 @ .word
.equ Unknown_21023e0,              0x21023e0 @ .word
.equ Unknown_021023f8,             0x021023f8 @ .word

.section .bss2

@ 0x027e0000

