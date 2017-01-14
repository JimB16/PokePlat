

.section .iwram24, "ax"


.thumb
.globl Function_24_2253ce0
Function_24_2253ce0: @ 2253ce0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x8
	lsl     r2, r0, #15
	bl      Function_2017fc8
	mov     r0, #0x0
	blx     GXS_SetGraphicsMode
	mov     r0, #0x80
	blx     GX_SetBankForSubBG
	mov     r0, #0x1
	lsl     r0, r0, #8
	blx     GX_SetBankForSubOBJ
	ldr     r2, [pc, #0x88] @ 0x2253d90, (=0x4001000)
	ldr     r0, [pc, #0x8c] @ 0x2253d94, (=0xffcfffef)
	ldr     r1, [r2, #0x0]
	mov     r3, #0x0
	and     r1, r0
	mov     r0, #0x10
	orr     r0, r1
	str     r0, [r2, #0x0]
	ldr     r2, [pc, #0x80] @ 0x2253d98, (=Unknown_2253db8)
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_20183c4
	mov     r0, #0xc
	mov     r1, #0x8
	bl      LoadFromNARC_8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r1, #0x8
	str     r1, [sp, #0xc]
	mov     r1, #0xa
	mov     r2, r5
	mov     r3, #0x4
	mov     r4, r0
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, r5
	mov     r3, #0x4
	bl      Function_200710c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r2, [pc, #0x18] @ 0x2253d90, (=0x4001000)
	ldr     r0, [pc, #0x24] @ 0x2253d9c, (=0xffff1fff)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2253da0, (=0xffffe0ff)
	and     r1, r0
	lsr     r0, r2, #18
	orr     r0, r1
	str     r0, [r2, #0x0]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2253d8e

.align 2
.word 0x4001000 @ 0x2253d90
.word 0xffcfffef @ 0x2253d94
.word Unknown_2253db8 @ 0x2253d98
.word 0xffff1fff @ 0x2253d9c
.word 0xffffe0ff @ 0x2253da0



.thumb
.globl Function_24_2253da4
Function_24_2253da4: @ 2253da4 :thumb
	push    {r3,lr}
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, #0x8
	bl      Function_201807c
	pop     {r3,pc}
@ 0x2253db4


.thumb
.globl Function_24_2253db4
Function_24_2253db4: @ 2253db4 :thumb
	mov     r0, #0x1
	bx      lr



Unknown_2253db8: @ 0x2253db8
.incbin "./baserom/overlay/overlay_0024.bin", 0xd8, 0x2253de0 - 0x2253db8


@end 0x2253de0




