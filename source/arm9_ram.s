
.section .bss

@ 0x02103e00

.org 0x21bf370 - 0x02103e00

RAM_21bf370:

.org 0x21bf3b0 - 0x02103e00

RAM_21bf3b0:

.org 0x21bf3f0 - 0x02103e00

RAM_21bf3f0:

.org 0x21bf67c - 0x02103e00

RAM_21bf67c:

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

.org 0x21c07b0 - 0x02103e00

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

.org 0x21c3a34 - 0x02103e00

RAM_21c3a34:

.org 0x21c3a3c - 0x02103e00

RAM_21c3a3c:

.org 0x21ccb9e - 0x02103e00

RAM_21ccb9e:
    .hword 0

.org 0x21ccba0 - 0x02103e00

RAM_21ccba0:
    .hword 0, 0, 0, 0, 0, 0, 0, 0
    .hword 0, 0, 0, 0, 0

.org 0x21ccc5c - 0x02103e00

RAM_21ccc5c:

.org 0x21ccc80 - 0x02103e00

RAM_21ccc80:
    .word 0
RAM_21ccc84:

.org 0x21cee20 - 0x02103e00

RAM_21cee20:


@ todo: 0x2014c79 0x206c121

@.equ RAM_21c07d4,              0x21c07d4 @ .word
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
.equ Function_21d2205, 0x21d2205
.equ Function_21d3a69, 0x21d3a69
.equ Function_21d3b25, 0x21d3b25
.equ Function_21d3b51, 0x21d3b51
.equ Function_21d3be5, 0x21d3be5
.equ Function_21d3bed, 0x21d3bed
.equ Function_21d5141, 0x21d5141
/*.equ IRQHandler, 0x1ff8000
.equ Function_1ff81e4, 0x1ff81e4
.equ Function_1ff8480, 0x1ff8480
.equ Function_1ff84c0, 0x1ff84c0
.equ Function_1ff8554, 0x1ff8554
*/
.section .bss2

@ 0x027e0000

