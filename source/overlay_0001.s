

.section .overlay1, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	ldr     r0, =RAM_21d0da0
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	bx      lr
@ 0x21d0d8a

.align 2
.pool


@ 0x21d0d90
.word Function_21d0d80+1


.align 4, 0
@end 0x21d0da0



.section .overlay1_bss, "ax"

RAM_21d0da0:
.zero 0x20



