

.section .iwram1, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	ldr     r0, [pc, #0x8] @ 0x21d0d8c, (=0x21d0da0)
	ldr     r1, [r0, #0x4]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	bx      lr
@ 0x21d0d8a

.align 2
.word 0x21d0da0 @ 0x21d0d8c


@ 0x21d0d90
.incbin "./baserom/overlay/overlay_0001.bin", 0x10, 0x21d0da0 - 0x21d0d90


@end 0x21d0da0



