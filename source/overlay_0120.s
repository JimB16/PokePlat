

.section .iwram120, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r4,lr}
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x78
	lsl     r2, r2, #18
	bl      Function_2017fc8
	mov     r0, r4
	mov     r1, #0x28
	mov     r2, #0x78
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r1, #0x0
	mov     r2, #0x28
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x78
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0db0

.thumb
Function_21d0db0: @ 21d0db0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r6, #0x0
	cmp     r1, #0x5
	bls     branch_21d0dc6
	b       branch_21d0eea
@ 0x21d0dc6

.thumb
branch_21d0dc6: @ 21d0dc6 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0dd2

Jumppoints_21d0dd2:
.hword branch_21d0dde - Jumppoints_21d0dd2 - 2
.hword branch_21d0e44 - Jumppoints_21d0dd2 - 2
.hword branch_21d0e58 - Jumppoints_21d0dd2 - 2
.hword branch_21d0e82 - Jumppoints_21d0dd2 - 2
.hword branch_21d0e98 - Jumppoints_21d0dd2 - 2
.hword branch_21d0ec8 - Jumppoints_21d0dd2 - 2
.thumb
branch_21d0dde: @ 21d0dde :thumb
	mov     r0, r6
	mov     r1, r6
	bl      SetBrightnessWithValue
	mov     r0, #0x1
	mov     r1, r6
	bl      SetBrightnessWithValue
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, r6
	mov     r1, r0
	bl      Function_20177bc
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xe0] @ 0x21d0ef0, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xe0] @ 0x21d0ef4, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r0, r4
	bl      Function_21d0f24
	mov     r0, r4
	bl      Function_21d114c
	ldr     r0, [pc, #0xc8] @ 0x21d0ef8, (=0x21d0f19)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_201ffd0
	mov     r0, r6
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0eea
@ 0x21d0e44

.thumb
branch_21d0e44: @ 21d0e44 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d0e50
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d0eea
@ 0x21d0e50

.thumb
branch_21d0e50: @ 21d0e50 :thumb
	str     r6, [r4, #0x24]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d0eea
@ 0x21d0e58

.thumb
branch_21d0e58: @ 21d0e58 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d0e64
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d0eea
@ 0x21d0e64

.thumb
branch_21d0e64: @ 21d0e64 :thumb
	str     r6, [r4, #0x24]
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r3, r6
	bl      Function_200f174
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d0eea
@ 0x21d0e82

.thumb
branch_21d0e82: @ 21d0e82 :thumb
	bl      Function_21d1178
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d0eea
	mov     r0, #0xf0
	str     r0, [r4, #0x24]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d0eea
@ 0x21d0e98

.thumb
branch_21d0e98: @ 21d0e98 :thumb
	bl      Function_21d1178
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_21d0ea8
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x24]
	b       branch_21d0eea
@ 0x21d0ea8

.thumb
branch_21d0ea8: @ 21d0ea8 :thumb
	mov     r0, r6
	str     r0, [r4, #0x24]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r1, [r4, #0x0]
	mov     r2, r0
	str     r1, [sp, #0x8]
	mov     r1, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d0eea
@ 0x21d0ec8

.thumb
branch_21d0ec8: @ 21d0ec8 :thumb
	bl      Function_21d1178
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_21d0eea
	mov     r0, r4
	bl      Function_21d116c
	mov     r0, r4
	bl      Function_21d10d4
	mov     r0, r6
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r6, #0x1
.thumb
branch_21d0eea: @ 21d0eea :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d0ef0

.word 0xffffe0ff @ 0x21d0ef0
.word 0x4001000 @ 0x21d0ef4
.word Function_21d0f18+1 @ =0x21d0f19, 0x21d0ef8
.thumb
Function_21d0efc: @ 21d0efc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	ldr     r4, [r0, #0x0]
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, r4
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f16


.align 2, 0


.thumb
Function_21d0f18: @ 21d0f18 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d0f20, (=0x201c2b9)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x21d0f1e


.align 2


.word 0x201c2b9 @ 0x21d0f20
.thumb
Function_21d0f24: @ 21d0f24 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xb8
	ldr     r5, [pc, #0x18c] @ 0x21d10b8, (=0x21d1210)
	mov     r4, r0
	add     r3, sp, #0x90
	mov     r2, #0x5
.thumb
branch_21d0f30: @ 21d0f30 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0f30
	add     r0, sp, #0x90
	bl      Function_201fe94
	ldr     r0, [r4, #0x0]
	bl      Function_2018340
	add     r3, sp, #0x80
	ldr     r5, [pc, #0x174] @ 0x21d10bc, (=Unknown_21d1190)
	str     r0, [r4, #0x4]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0x164] @ 0x21d10c0, (=0x21d11bc)
	add     r3, sp, #0x64
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	ldr     r3, [r4, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x134] @ 0x21d10c4, (=0x21d11f4)
	add     r3, sp, #0x48
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r3, r1
	bl      Function_20183c4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	bl      Function_2006e3c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	bl      Function_2006e60
	ldr     r5, [pc, #0xec] @ 0x21d10c8, (=0x21d11d8)
	add     r3, sp, #0x2c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x1
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x88
	mov     r3, #0x1
	bl      Function_2006e60
	ldr     r5, [pc, #0xa0] @ 0x21d10cc, (=0x21d11a0)
	add     r3, sp, #0x10
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc1
	mov     r3, #0x3
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc1
	mov     r3, #0x3
	bl      Function_2006e60
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	mov     r3, r2
	bl      Function_2006e84
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, #0x20
	bl      Function_2002e7c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201975c
	mov     r2, #0xc
	ldr     r0, [pc, #0x24] @ 0x21d10d0, (=0x4000050)
	mov     r1, #0x2
	mov     r3, #0x4
	str     r2, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	add     sp, #0xb8
	pop     {r3-r5,pc}
@ 0x21d10b8

.word 0x21d1210 @ 0x21d10b8
.word Unknown_21d1190 @ 0x21d10bc
.word 0x21d11bc @ 0x21d10c0
.word 0x21d11f4 @ 0x21d10c4
.word 0x21d11d8 @ 0x21d10c8
.word 0x21d11a0 @ 0x21d10cc
.word 0x4000050 @ 0x21d10d0



.thumb
Function_21d10d4: @ 21d10d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      Function_2019120
	ldr     r0, [pc, #0x2c] @ 0x21d1148, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x3
	bl      Function_2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x4]
	bl      free
	pop     {r4,pc}
@ 0x21d1146


.align 2


.word 0x4000050 @ 0x21d1148
.thumb
Function_21d114c: @ 21d114c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [pc, #0x14] @ 0x21d1168, (=0x25f)
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r4, #0x8]
	bl      Function_201d710
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d1168

.word 0x25f @ 0x21d1168
.thumb
Function_21d116c: @ 21d116c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d1174, (=0x200b191)
	ldr     r0, [r0, #0x8]
	bx      r3
@ 0x21d1172


.align 2


.word 0x200b191 @ 0x21d1174
.thumb
Function_21d1178: @ 21d1178 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x20]
	mov     r2, #0x3
	add     r3, r1, #0x4
	str     r3, [r0, #0x20]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x1
	asr     r3, r3, #4
	bl      Function_2019184
	pop     {r3,pc}
@ 0x21d118e


.align 2, 0
Unknown_21d1190: @ 0x21d1190
.incbin "./baserom/overlay/overlay_0120.bin", 0x410, 0x21d1240 - 0x21d1190


@end 0x21d1240



