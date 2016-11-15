
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram6, "ax"


.thumb
Function_223e140: @ 223e140 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x38]
	cmp     r1, #0x5
	bhi     branch_223e196
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223e156

Jumppoints_223e156:
.hword branch_223e162 - Jumppoints_223e156 - 2
.hword branch_223e16e - Jumppoints_223e156 - 2
.hword branch_223e196 - Jumppoints_223e156 - 2
.hword branch_223e180 - Jumppoints_223e156 - 2
.hword branch_223e18c - Jumppoints_223e156 - 2
.hword branch_223e196 - Jumppoints_223e156 - 2
.thumb
branch_223e162: @ 223e162 :thumb
	bl      Function_223e234
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x223e16e

.thumb
branch_223e16e: @ 223e16e :thumb
	ldr     r0, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	bl      Function_223e2bc
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x223e180

.thumb
branch_223e180: @ 223e180 :thumb
	bl      Function_223e2e8
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x223e18c

.thumb
branch_223e18c: @ 223e18c :thumb
	bl      Function_223e248
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
.thumb
branch_223e196: @ 223e196 :thumb
	pop     {r4,pc}
@ 0x223e198


.thumb
Function_223e198: @ 223e198 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x2
	beq     branch_223e1a6
	bl      ErrorHandling
.thumb
branch_223e1a6: @ 223e1a6 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x223e1ac

.thumb
Function_223e1ac: @ 223e1ac :thumb
	ldr     r0, [r0, #0x38]
	bx      lr
@ 0x223e1b0

.thumb
Function_223e1b0: @ 223e1b0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223e1cc, (=0x2248edc)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223e1ba: @ 223e1ba :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223e1ba
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223e1cc

.word 0x2248edc @ 0x223e1cc
.thumb
Function_223e1d0: @ 223e1d0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	ldr     r5, [pc, #0x54] @ 0x223e22c, (=0x2248e38)
	add     r3, sp, #0x1c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r5, [pc, #0x3c] @ 0x223e230, (=0x2248ec0)
	add     r3, sp, #0x0
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
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_2019690
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x223e22a

.align 2
.word 0x2248e38 @ 0x223e22c
.word 0x2248ec0 @ 0x223e230



.thumb
Function_223e234: @ 223e234 :thumb
	ldr     r3, [pc, #0x8] @ 0x223e240, (=Function_200da3c+1)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223e244, (=Function_223e25c+1)
	lsl     r2, r2, #10
	bx      r3
@ 0x223e240

.word Function_200da3c+1 @ 0x223e240
.word Function_223e25c+1 @ 0x223e244



.thumb
Function_223e248: @ 223e248 :thumb
	ldr     r3, [pc, #0x8] @ 0x223e254, (=0x200da3d)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223e258, (=Function_223e280+1)
	lsl     r2, r2, #10
	bx      r3
@ 0x223e254

.word 0x200da3d @ 0x223e254
.word Function_223e280+1 @ 0x223e258



.thumb
Function_223e25c: @ 223e25c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_223e1b0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_223e2a4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_223e1d0
	mov     r0, r5
	bl      Function_200da58
	pop     {r3-r5,pc}
@ 0x223e27e


.align 2, 0
.thumb
Function_223e280: @ 223e280 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	add     r0, r4, #0x4
	bl      Function_201fe94
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_223e2a4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      Function_223e2ac
	mov     r0, r5
	bl      Function_200da58
	pop     {r3-r5,pc}
@ 0x223e2a4


.thumb
Function_223e2a4: @ 223e2a4 :thumb
	ldr     r3, [pc, #0x0] @ 0x223e2a8, (=0x21d143d)
	bx      r3
@ 0x223e2a8

.word 0x21d143d @ 0x223e2a8



.thumb
Function_223e2ac: @ 223e2ac :thumb
	push    {r3,lr}
	bl      0x21d1434
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	pop     {r3,pc}
@ 0x223e2bc


.thumb
Function_223e2bc: @ 223e2bc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x2c
	ldr     r6, [pc, #0x20] @ 0x223e2e4, (=0x2248f04)
	mov     r3, r0
	mov     r2, r1
	add     r5, sp, #0x0
	mov     r4, #0x5
.thumb
branch_223e2ca: @ 223e2ca :thumb
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_223e2ca
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	add     r0, sp, #0x0
	str     r3, [sp, #0x20]
	str     r2, [sp, #0x24]
	bl      0x21e2098
	add     sp, #0x2c
	pop     {r3-r6,pc}
@ 0x223e2e4

.word 0x2248f04 @ 0x223e2e4
.thumb
Function_223e2e8: @ 223e2e8 :thumb
	ldr     r3, [pc, #0x8] @ 0x223e2f4, (=0x200da3d)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223e2f8, (=Function_223e2fc+1)
	lsl     r2, r2, #10
	bx      r3
@ 0x223e2f4

.word 0x200da3d @ 0x223e2f4
.word Function_223e2fc+1 @ 0x223e2f8



.thumb
Function_223e2fc: @ 223e2fc :thumb
	push    {r4,lr}
	add     r1, #0x2c
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r1
	bl      0x21e20e8
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x223e316


.align 2, 0


.thumb
Function_223e318: @ 223e318 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x38]
	mov     r4, r2
	bl      Function_206251c
	cmp     r4, #0x1
	bne     branch_223e330
	mov     r1, #0x1
	lsl     r1, r1, #20
	bl      Function_20628bc
	pop     {r4,pc}
@ 0x223e330

.thumb
branch_223e330: @ 223e330 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #20
	bl      Function_20628c4
	pop     {r4,pc}
@ 0x223e33a


.align 2, 0


.thumb
Function_223e33c: @ 223e33c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_223e358
	cmp     r0, #0x1
	beq     branch_223e370
	b       branch_223e380
@ 0x223e358

.thumb
branch_223e358: @ 223e358 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_223fe9c
	ldr     r0, [r4, #0x0]
	bl      Function_223ff6c
	cmp     r0, #0x1
	bne     branch_223e380
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223e380
@ 0x223e370

.thumb
branch_223e370: @ 223e370 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_223fe08
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e380

.thumb
branch_223e380: @ 223e380 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e384

.thumb
Function_223e384: @ 223e384 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x10
	bl      malloc_maybe
	mov     r5, r0
	mov     r2, r5
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_223e3a0: @ 223e3a0 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223e3a0
	mov     r0, #0x4
	bl      Function_223fde4
	str     r0, [r5, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	lsl     r1, r1, #9
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_223fe1c
	ldr     r1, [pc, #0xc] @ 0x223e3d4, (=0x223e33d)
	mov     r0, r6
	mov     r2, r5
	bl      Function_2050944
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223e3d2


.align 2


.word Function_223e33c+1 @ =0x223e33d, 0x223e3d4
.thumb
Function_223e3d8: @ 223e3d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_223fff8
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_223fff4
	ldr     r1, [r5, #0x8]
	cmp     r1, r0
	beq     branch_223e404
	mov     r1, #0x2
	str     r0, [r5, #0x8]
	mov     r0, r4
	lsl     r1, r1, #14
	blx     FX_Div
	sub     r1, r4, r0
	ldr     r0, [r5, #0x0]
	bl      Function_223fffc
branch_223e404: @ 223e404 :thumb
	pop     {r3-r5,pc}
@ 0x223e406


.align 2, 0
.thumb
Function_223e408: @ 223e408 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x7
	bhi     branch_223e4e4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223e42a

Jumppoints_223e42a:
.hword branch_223e43a - Jumppoints_223e42a - 2
.hword branch_223e44a - Jumppoints_223e42a - 2
.hword branch_223e45e - Jumppoints_223e42a - 2
.hword branch_223e476 - Jumppoints_223e42a - 2
.hword branch_223e4a0 - Jumppoints_223e42a - 2
.hword branch_223e4b2 - Jumppoints_223e42a - 2
.hword branch_223e4c4 - Jumppoints_223e42a - 2
.hword branch_223e4d4 - Jumppoints_223e42a - 2
.thumb
branch_223e43a: @ 223e43a :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_200564c
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223e4e4
@ 0x223e44a

.thumb
branch_223e44a: @ 223e44a :thumb
	bl      Function_2005684
	cmp     r0, #0x0
	bne     branch_223e4e4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	b       branch_223e4e4
@ 0x223e45e

.thumb
branch_223e45e: @ 223e45e :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bgt     branch_223e4e4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x78] @ 0x223e4e8, (=0x65c)
	bl      Function_2005748
	b       branch_223e4e4
@ 0x223e476

.thumb
branch_223e476: @ 223e476 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_223fe9c
	mov     r0, r4
	bl      Function_223e3d8
	ldr     r0, [r4, #0x0]
	bl      Function_223ff6c
	cmp     r0, #0x1
	bne     branch_223e4e4
	ldr     r0, [pc, #0x58] @ 0x223e4e8, (=0x65c)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	b       branch_223e4e4
@ 0x223e4a0

.thumb
branch_223e4a0: @ 223e4a0 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bgt     branch_223e4e4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223e4e4
@ 0x223e4b2

.thumb
branch_223e4b2: @ 223e4b2 :thumb
	mov     r0, #0x7f
	mov     r1, #0x10
	mov     r2, #0x0
	bl      Function_200560c
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223e4e4
@ 0x223e4c4

.thumb
branch_223e4c4: @ 223e4c4 :thumb
	bl      Function_2005684
	cmp     r0, #0x0
	bne     branch_223e4e4
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	b       branch_223e4e4
@ 0x223e4d4

.thumb
branch_223e4d4: @ 223e4d4 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_223fe08
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e4e4

.thumb
branch_223e4e4: @ 223e4e4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e4e8

.word 0x65c @ 0x223e4e8
.thumb
Function_223e4ec: @ 223e4ec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	bl      Function_2050a60
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x10
	bl      malloc_maybe
	mov     r5, r0
	mov     r2, r5
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_223e508: @ 223e508 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223e508
	mov     r0, #0x4
	bl      Function_223fde4
	str     r0, [r5, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #14
	mov     r2, #0x0
	mov     r3, #0x1
	bl      Function_223fe1c
	ldr     r0, [r5, #0x0]
	bl      Function_223fff4
	str     r0, [r5, #0x8]
	ldr     r1, [pc, #0xc] @ 0x223e544, (=0x223e409)
	mov     r0, r6
	mov     r2, r5
	bl      Function_2050944
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223e544

.word Function_223e408+1 @ =0x223e409, 0x223e544
.thumb
Function_223e548: @ 223e548 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x78
	blx     Function_20d5124
	mov     r0, #0x4
	mov     r1, r5
	bl      Function_2240104
	str     r0, [r4, #0x48]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x223e568

.thumb
Function_223e568: @ 223e568 :thumb
	ldr     r3, [pc, #0x4] @ 0x223e570, (=Function_22401b8+1)
	ldr     r0, [r2, #0x48]
	bx      r3
@ 0x223e56e

.align 2
.word Function_22401b8+1 @ 0x223e570



.thumb
Function_223e574: @ 223e574 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x0]
	mov     r5, r1
	cmp     r0, #0xb
	bls     branch_223e582
	b       branch_223e6d2
@ 0x223e582

.thumb
branch_223e582: @ 223e582 :thumb
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223e58e

Jumppoints_223e58e:
.hword branch_223e5a6 - Jumppoints_223e58e - 2
.hword branch_223e5aa - Jumppoints_223e58e - 2
.hword branch_223e5b0 - Jumppoints_223e58e - 2
.hword branch_223e5c6 - Jumppoints_223e58e - 2
.hword branch_223e616 - Jumppoints_223e58e - 2
.hword branch_223e62e - Jumppoints_223e58e - 2
.hword branch_223e65e - Jumppoints_223e58e - 2
.hword branch_223e66e - Jumppoints_223e58e - 2
.hword branch_223e68a - Jumppoints_223e58e - 2
.hword branch_223e69e - Jumppoints_223e58e - 2
.hword branch_223e6b8 - Jumppoints_223e58e - 2
.hword branch_223e6d2 - Jumppoints_223e58e - 2
.thumb
branch_223e5a6: @ 223e5a6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_223e5aa: @ 223e5aa :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_223e5b0: @ 223e5b0 :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	bl      Function_22401d0
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e5c6

.thumb
branch_223e5c6: @ 223e5c6 :thumb
	ldr     r0, [r4, #0x4]
	mov     r5, #0x0
	cmp     r0, #0xc
	beq     branch_223e5fc
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x8
	blt     branch_223e5fe
	ldr     r2, [r4, #0x4]
	mov     r1, #0x1f
	lsr     r5, r2, #31
	lsl     r3, r2, #31
	sub     r3, r3, r5
	ror     r3, r1
	ldr     r0, [r4, #0x48]
	add     r1, r5, r3
	bl      Function_2240364
	mov     r5, r0
	beq     branch_223e5fe
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_223e5fe
@ 0x223e5fc

.thumb
branch_223e5fc: @ 223e5fc :thumb
	mov     r5, #0x1
.thumb
branch_223e5fe: @ 223e5fe :thumb
	ldr     r0, [r4, #0x48]
	bl      Function_22405d0
	cmp     r0, #0x0
	beq     branch_223e6d2
	cmp     r5, #0x0
	beq     branch_223e6d2
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e616

.thumb
branch_223e616: @ 223e616 :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	mov     r2, #0x3c
	bl      Function_2240364
	cmp     r0, #0x0
	beq     branch_223e6d2
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e62e

.thumb
branch_223e62e: @ 223e62e :thumb
	mov     r0, r4
	add     r0, #0x6c
	bl      Function_223e71c
	mov     r6, r0
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x3
	bne     branch_223e652
	ldr     r0, [r4, #0x74]
	bl      Function_2240060
	cmp     r0, #0xd
	bne     branch_223e652
	mov     r0, #0x4
	mov     r1, r5
	bl      Function_2240b9c
	str     r0, [r4, #0x54]
.thumb
branch_223e652: @ 223e652 :thumb
	cmp     r6, #0x1
	bne     branch_223e6d2
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e65e

.thumb
branch_223e65e: @ 223e65e :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_223e198
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e66e

.thumb
branch_223e66e: @ 223e66e :thumb
	mov     r0, r4
	add     r0, #0xc
	bl      Function_223e140
	mov     r0, r4
	add     r0, #0xc
	bl      Function_223e1ac
	cmp     r0, #0x5
	bne     branch_223e6d2
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e68a

.thumb
branch_223e68a: @ 223e68a :thumb
	ldr     r0, [r4, #0x54]
	mov     r1, #0x0
	bl      Function_2240c44
	mov     r0, #0x48
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223e69e

.thumb
branch_223e69e: @ 223e69e :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bgt     branch_223e6b8
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_223e318
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_223e6b8: @ 223e6b8 :thumb
	ldr     r0, [r4, #0x54]
	bl      Function_2240c7c
	cmp     r0, #0x1
	bne     branch_223e6d2
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      Function_223e318
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_223e6d2: @ 223e6d2 :thumb
	pop     {r4-r6,pc}
@ 0x223e6d4

.thumb
Function_223e6d4: @ 223e6d4 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x48]
	bl      Function_2240228
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	beq     branch_223e6e8
	bl      Function_2240c94
.thumb
branch_223e6e8: @ 223e6e8 :thumb
	pop     {r4,pc}
@ 0x223e6ea


.align 2, 0


.thumb
Function_223e6ec: @ 223e6ec :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x223e6f8, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x223e6fc, (=0x2248e90)
	bx      r3
@ 0x223e6f6


.align 2


.word 0x21d1b6d @ 0x223e6f8
.word 0x2248e90 @ 0x223e6fc
.thumb
Function_223e700: @ 223e700 :thumb
	ldr     r3, [pc, #0x0] @ 0x223e704, (=0x21d1bed)
	bx      r3
@ 0x223e704

.word 0x21d1bed @ 0x223e704
.thumb
Function_223e708: @ 223e708 :thumb
	push    {r3,lr}
	bl      0x21d1c2c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xb
	bne     branch_223e718
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223e718

.thumb
branch_223e718: @ 223e718 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223e71c

.thumb
Function_223e71c: @ 223e71c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x4
	bhi     branch_223e7b0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223e732

Jumppoints_223e732:
.hword branch_223e73c - Jumppoints_223e732 - 2
.hword branch_223e74c - Jumppoints_223e732 - 2
.hword branch_223e764 - Jumppoints_223e732 - 2
.hword branch_223e784 - Jumppoints_223e732 - 2
.hword branch_223e7a4 - Jumppoints_223e732 - 2
.thumb
branch_223e73c: @ 223e73c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	bpl     branch_223e7b0
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223e7b0
@ 0x223e74c

.thumb
branch_223e74c: @ 223e74c :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0xd
	mov     r2, #0x4
	mov     r3, #0x8
	bl      Function_2240000
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	b       branch_223e7b0
@ 0x223e764

.thumb
branch_223e764: @ 223e764 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	bpl     branch_223e7b0
	ldr     r0, [r4, #0x8]
	mov     r1, #0xd
	mov     r2, #0x4
	mov     r3, #0x8
	bl      Function_2240000
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x10
	str     r0, [r4, #0x4]
	b       branch_223e7b0
@ 0x223e784

.thumb
branch_223e784: @ 223e784 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	bpl     branch_223e7b0
	ldr     r0, [r4, #0x8]
	mov     r1, #0xd
	mov     r2, #0x4
	mov     r3, #0x20
	bl      Function_2240000
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x28
	str     r0, [r4, #0x4]
	b       branch_223e7b0
@ 0x223e7a4

.thumb
branch_223e7a4: @ 223e7a4 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	bpl     branch_223e7b0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e7b0

.thumb
branch_223e7b0: @ 223e7b0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e7b4

.thumb
Function_223e7b4: @ 223e7b4 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r1, #0x38]
	mov     r1, #0x0
	mov     r4, r2
	bl      Function_206251c
	mov     r5, r0
	bne     branch_223e7c8
	bl      ErrorHandling
.thumb
branch_223e7c8: @ 223e7c8 :thumb
	mov     r0, r5
	bl      LoadSpritePositionX
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	mov     r0, r5
	bl      LoadSpritePositionY
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, #0x4
	bl      Function_2240768
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, r5
	str     r0, [r4, #0x0]
	bl      Function_224077c
	pop     {r4-r6,pc}
@ 0x223e7f0

.thumb
Function_223e7f0: @ 223e7f0 :thumb
	ldr     r3, [pc, #0x4] @ 0x223e7f8, (=Function_2240774+1)
	ldr     r0, [r2, #0x0]
	bx      r3
@ 0x223e7f6

.align 2
.word Function_2240774+1 @ 0x223e7f8



.thumb
Function_223e7fc: @ 223e7fc :thumb
	ldr     r3, [pc, #0x4] @ 0x223e804, (=Function_22407a8+1)
	ldr     r0, [r2, #0x0]
	bx      r3
@ 0x223e802

.align 2
.word Function_22407a8+1 @ 0x223e804



.thumb
Function_223e808: @ 223e808 :thumb
	ldr     r3, [pc, #0x4] @ 0x223e810, (=Function_22407b0+1)
	ldr     r0, [r2, #0x0]
	bx      r3
@ 0x223e80e

.align 2
.word Function_22407b0+1 @ 0x223e810



.thumb
Function_223e814: @ 223e814 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x223e820, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x223e824, (=0x2248e78)
	bx      r3
@ 0x223e81e

.align 2
.word 0x21d1b6d @ 0x223e820
.word 0x2248e78 @ 0x223e824



.thumb
Function_223e828: @ 223e828 :thumb
	ldr     r3, [pc, #0x0] @ 0x223e82c, (=0x21d1bed)
	bx      r3
@ 0x223e82c

.word 0x21d1bed @ 0x223e82c
.thumb
Function_223e830: @ 223e830 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r1
	ldr     r0, [pc, #0x80] @ 0x223e8b8, (=0x1701)
	ldr     r1, [r5, #0x24]
	mov     r4, r2
	bl      Function_2020910
	ldr     r0, [pc, #0x78] @ 0x223e8bc, (=0xc8a55)
	ldr     r1, [r5, #0x24]
	bl      Function_2020a50
	ldr     r0, [pc, #0x74] @ 0x223e8c0, (=0x2280ef)
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x74] @ 0x223e8c4, (=0xca424)
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x74] @ 0x223e8c8, (=0x268c50)
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020acc
	ldr     r1, [pc, #0x6c] @ 0x223e8cc, (=0x22a2)
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x3e
	lsl     r1, r1, #10
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x0
	bl      Function_20209d4
	mov     r0, #0x2
	mov     r1, #0x7d
	ldr     r2, [r5, #0x24]
	lsl     r0, r0, #12
	lsl     r1, r1, #16
	bl      Function_20206bc
	mov     r0, #0x4
	bl      Function_22409f4
	str     r0, [r4, #0x4]
	mov     r0, #0x4
	bl      Function_2240ac8
	str     r0, [r4, #0x8]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020aac
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240a18
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240aec
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223e8b6


.align 2


.word 0x1701 @ 0x223e8b8
.word 0xc8a55 @ 0x223e8bc
.word 0x2280ef @ 0x223e8c0
.word 0xca424 @ 0x223e8c4
.word 0x268c50 @ 0x223e8c8
.word 0x22a2 @ 0x223e8cc
.thumb
Function_223e8d0: @ 223e8d0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r1
	ldr     r0, [pc, #0x90] @ 0x223e968, (=0xf81)
	ldr     r1, [r5, #0x24]
	mov     r4, r2
	bl      Function_2020910
	ldr     r0, [pc, #0x88] @ 0x223e96c, (=0x17e532)
	ldr     r1, [r5, #0x24]
	bl      Function_2020a50
	ldr     r0, [pc, #0x84] @ 0x223e970, (=0xf99d58)
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x84] @ 0x223e974, (=0xc5502)
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x84] @ 0x223e978, (=0x28cf549)
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020acc
	ldr     r1, [pc, #0x7c] @ 0x223e97c, (=0x642)
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x7c] @ 0x223e980, (=0xeda0)
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x0
	bl      Function_20209d4
	mov     r0, #0x16
	mov     r1, #0x7d
	ldr     r2, [r5, #0x24]
	lsl     r0, r0, #14
	lsl     r1, r1, #16
	bl      Function_20206bc
	mov     r0, r5
	add     r0, #0x4c
	bl      0x21d5278
	ldr     r0, [r5, #0x44]
	mov     r1, #0x3
	bl      0x21d521c
	str     r0, [r5, #0x4c]
	mov     r0, #0x4
	bl      Function_22409f4
	str     r0, [r4, #0x4]
	mov     r0, #0x4
	bl      Function_2240ac8
	str     r0, [r4, #0x8]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020aac
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240a50
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240b24
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223e966


.align 2


.word 0xf81 @ 0x223e968
.word 0x17e532 @ 0x223e96c
.word 0xf99d58 @ 0x223e970
.word 0xc5502 @ 0x223e974
.word 0x28cf549 @ 0x223e978
.word 0x642 @ 0x223e97c
.word 0xeda0 @ 0x223e980
.thumb
Function_223e984: @ 223e984 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r1
	ldr     r0, [pc, #0x90] @ 0x223ea1c, (=0x4c1)
	ldr     r1, [r5, #0x24]
	mov     r4, r2
	bl      Function_2020910
	ldr     r0, [pc, #0x88] @ 0x223ea20, (=0x26bec1)
	ldr     r1, [r5, #0x24]
	bl      Function_2020a50
	ldr     r0, [pc, #0x84] @ 0x223ea24, (=0x1df5dfd)
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x84] @ 0x223ea28, (=0x73a0c)
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x84] @ 0x223ea2c, (=0x2b9f4a2)
	str     r0, [sp, #0x10]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020acc
	ldr     r1, [pc, #0x7c] @ 0x223ea30, (=0x4c2)
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x29
	lsl     r1, r1, #6
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x0
	bl      Function_20209d4
	mov     r0, #0xb
	ldr     r1, [pc, #0x68] @ 0x223ea34, (=0x5c8000)
	ldr     r2, [r5, #0x24]
	lsl     r0, r0, #16
	bl      Function_20206bc
	mov     r0, r5
	add     r0, #0x4c
	bl      0x21d5278
	ldr     r0, [r5, #0x44]
	mov     r1, #0x3
	bl      0x21d521c
	str     r0, [r5, #0x4c]
	mov     r0, #0x4
	bl      Function_22409f4
	str     r0, [r4, #0x4]
	mov     r0, #0x4
	bl      Function_2240ac8
	str     r0, [r4, #0x8]
	ldr     r1, [r5, #0x24]
	add     r0, sp, #0x8
	bl      Function_2020aac
	ldr     r0, [r4, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240a8c
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	bl      Function_2240b60
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223ea1a


.align 2


.word 0x4c1 @ 0x223ea1c
.word 0x26bec1 @ 0x223ea20
.word 0x1df5dfd @ 0x223ea24
.word 0x73a0c @ 0x223ea28
.word 0x2b9f4a2 @ 0x223ea2c
.word 0x4c2 @ 0x223ea30
.word 0x5c8000 @ 0x223ea34
.thumb
Function_223ea38: @ 223ea38 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x4]
	bl      Function_2240a00
	ldr     r0, [r4, #0x8]
	bl      Function_2240ad4
	pop     {r4,pc}
@ 0x223ea4a


.align 2, 0


.thumb
Function_223ea4c: @ 223ea4c :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x4]
	bl      Function_2240a08
	ldr     r0, [r4, #0x8]
	bl      Function_2240adc
	pop     {r4,pc}
@ 0x223ea5e


.align 2, 0


.thumb
Function_223ea60: @ 223ea60 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x4]
	bl      Function_2240a10
	ldr     r0, [r4, #0x8]
	bl      Function_2240ae4
	pop     {r4,pc}
@ 0x223ea72


.align 2, 0


.thumb
Function_223ea74: @ 223ea74 :thumb
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x223ea88, (=0x2248e2c)
	ldr     r3, [pc, #0x10] @ 0x223ea8c, (=0x21d1b6d)
	ldr     r2, [r1, r2]
	ldr     r1, [pc, #0x10] @ 0x223ea90, (=0x2249860)
	str     r2, [r1, #0x8]
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x10] @ 0x223ea94, (=0x2249860)
	ldr     r0, [r0, #0x4]
	bx      r3
@ 0x223ea88

.word 0x2248e2c @ 0x223ea88
.word 0x21d1b6d @ 0x223ea8c
.word 0x2249860 @ 0x223ea90
.word 0x2249860 @ 0x223ea94
.thumb
Function_223ea98: @ 223ea98 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0xac
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	ldr     r0, [r5, #0x10]
	ldr     r2, [pc, #0x80] @ 0x223eb2c, (=0x2248e48)
	lsl     r4, r0, #3
	mov     r0, r5
	ldr     r2, [r2, r4]
	add     r0, #0x9c
	mov     r1, r6
	mov     r3, #0x4
	bl      Function_20170d8
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x24
	add     r1, #0x9c
	bl      Function_2017258
	mov     r1, #0x0
	mov     r0, r5
	add     r0, #0x24
	mov     r2, r1
	mov     r3, r1
	bl      Function_2017350
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	add     r0, #0x24
	mov     r2, r1
	mov     r3, r1
	bl      Function_201736c
	mov     r0, r5
	add     r0, #0x24
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r3, [pc, #0x38] @ 0x223eb30, (=0x2248e4c)
	add     r0, #0xc0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	ldr     r3, [r3, r4]
	add     r0, #0xac
	add     r1, #0x9c
	mov     r2, r6
	bl      Function_2017164
	mov     r0, r5
	add     r0, #0xac
	mov     r1, #0x0
	bl      Function_2017240
	mov     r0, r5
	add     r5, #0xac
	add     r0, #0x24
	mov     r1, r5
	bl      Function_201727c
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223eb2c

.word 0x2248e48 @ 0x223eb2c
.word 0x2248e4c @ 0x223eb30
.thumb
Function_223eb34: @ 223eb34 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x9c
	bl      Function_2017110
	mov     r0, r4
	add     r4, #0xc0
	add     r0, #0xac
	mov     r1, r4
	bl      Function_20171a0
	pop     {r4,pc}
@ 0x223eb4c

.thumb
Function_223eb4c: @ 223eb4c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r0, r5
	bl      Function_2240074
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	strh    r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	mov     r0, r4
	mov     r1, #0x1e
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r1
	add     r0, #0xe6
	add     r1, #0xe6
	str     r5, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	ldr     r0, [r0, #0x38]
	bl      Function_206251c
	mov     r1, #0x42
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x38]
	bl      Function_206251c
	mov     r1, #0x43
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	sub     r1, #0x8
	ldr     r0, [r4, r1]
	bl      Function_205ef3c
	bl      Function_205eb3c
	mov     r1, #0x11
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xc0
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, r4
	bl      Function_223ea98
	mov     r1, #0xc
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x8] @ 0x223ebcc, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x223ebcc

.word 0x400006c @ 0x223ebcc



.thumb
Function_223ebd0: @ 223ebd0 :thumb
	ldr     r3, [pc, #0x4] @ 0x223ebd8, (=Function_22400a8+1)
	ldr     r0, [r2, #0x8]
	bx      r3
@ 0x223ebd6

.align 2
.word Function_22400a8+1 @ 0x223ebd8



.thumb
Function_223ebdc: @ 223ebdc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x5
	bgt     branch_223ec04
	cmp     r1, #0x0
	blt     branch_223ec0a
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ebf8

Jumppoints_223ebf8:
.hword branch_223ec0c - Jumppoints_223ebf8 - 2
.hword branch_223ec60 - Jumppoints_223ebf8 - 2
.hword branch_223ecd8 - Jumppoints_223ebf8 - 2
.hword branch_223ed1c - Jumppoints_223ebf8 - 2
.hword branch_223ed8e - Jumppoints_223ebf8 - 2
.hword branch_223edd0 - Jumppoints_223ebf8 - 2
.thumb
branch_223ec04: @ 223ec04 :thumb
	cmp     r1, #0x63
	bne     branch_223ec0a
	b       branch_223ee3c
@ 0x223ec0a

.thumb
branch_223ec0a: @ 223ec0a :thumb
	b       branch_223ee42
@ 0x223ec0c

.thumb
branch_223ec0c: @ 223ec0c :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x23c] @ 0x223ee54, (=0x23d000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x14
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x14
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223ec60

.thumb
branch_223ec60: @ 223ec60 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0xc
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r1, r4
	mov     r3, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r6, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223ecba
	cmp     r6, #0x0
	bne     branch_223ecbc
.thumb
branch_223ecba: @ 223ecba :thumb
	b       branch_223ee4c
@ 0x223ecbc

.thumb
branch_223ecbc: @ 223ecbc :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1e
	str     r0, [sp, #0x4]
	lsl     r1, r1, #4
	mov     r2, r0
	mov     r3, #0x64
	bl      Function_20059d0
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223ecd8

.thumb
branch_223ecd8: @ 223ecd8 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, #0x6f
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x14
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223ed1c

.thumb
branch_223ed1c: @ 223ed1c :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	lsl     r0, r1, #3
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xd8
	ldr     r2, [r1, #0x0]
	lsl     r1, r0, #1
	add     r0, r0, r1
	add     r1, r2, r0
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	add     r3, #0xd8
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223ee4c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223ed8e

.thumb
branch_223ed8e: @ 223ed8e :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0xbc] @ 0x223ee58, (=0x1fb000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r1, #0x5a
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x14
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223edd0

.thumb
branch_223edd0: @ 223edd0 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	lsl     r0, r0, #18
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xd8
	ldr     r2, [r1, #0x0]
	lsl     r1, r0, #1
	add     r0, r0, r1
	sub     r1, r2, r0
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	add     r3, #0xd8
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223ee4c
	mov     r0, #0x63
	str     r0, [r4, #0x18]
	b       branch_223ee4c
@ 0x223ee3c

.thumb
branch_223ee3c: @ 223ee3c :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_223ee42: @ 223ee42 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223ee4c

.thumb
branch_223ee4c: @ 223ee4c :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223ee52


.align 2


.word 0x23d000 @ 0x223ee54
.word 0x1fb000 @ 0x223ee58
.thumb
Function_223ee5c: @ 223ee5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x63
	bgt     branch_223eeaa
	blt     branch_223ee6c
	b       branch_223f5a2
@ 0x223ee6c

.thumb
branch_223ee6c: @ 223ee6c :thumb
	cmp     r1, #0x14
	bls     branch_223ee74
	bl      Function_223f6ca
.thumb
branch_223ee74: @ 223ee74 :thumb
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ee80

Jumppoints_223ee80:
.hword branch_223eeb4 - Jumppoints_223ee80 - 2
.hword branch_223ef0c - Jumppoints_223ee80 - 2
.hword branch_223ef76 - Jumppoints_223ee80 - 2
.hword branch_223efb6 - Jumppoints_223ee80 - 2
.hword branch_223f02a - Jumppoints_223ee80 - 2
.hword branch_223f048 - Jumppoints_223ee80 - 2
.hword branch_223f0b2 - Jumppoints_223ee80 - 2
.hword branch_223f10a - Jumppoints_223ee80 - 2
.hword branch_223f1b0 - Jumppoints_223ee80 - 2
.hword branch_223f1e6 - Jumppoints_223ee80 - 2
.hword branch_223f252 - Jumppoints_223ee80 - 2
.hword branch_223f2aa - Jumppoints_223ee80 - 2
.hword branch_223f338 - Jumppoints_223ee80 - 2
.hword branch_223f38c - Jumppoints_223ee80 - 2
.hword branch_223f40c - Jumppoints_223ee80 - 2
.hword branch_223f43e - Jumppoints_223ee80 - 2
.hword branch_223f474 - Jumppoints_223ee80 - 2
.hword branch_223f496 - Jumppoints_223ee80 - 2
.hword branch_223f4c6 - Jumppoints_223ee80 - 2
.hword branch_223f4ce - Jumppoints_223ee80 - 2
.hword branch_223f514 - Jumppoints_223ee80 - 2
.thumb
branch_223eeaa: @ 223eeaa :thumb
	cmp     r1, #0x64
	bne     branch_223eeb0
	b       branch_223f668
@ 0x223eeb0

.thumb
branch_223eeb0: @ 223eeb0 :thumb
	bl      Function_223f6ca
.thumb
branch_223eeb4: @ 223eeb4 :thumb
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x2dc] @ 0x223f19c, (=0x22b000)
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x2d8] @ 0x223f1a0, (=0x15b000)
	add     r1, #0xd8
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x20
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x20
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223ef0c

.thumb
branch_223ef0c: @ 223ef0c :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r7, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r6, r4
	mov     r1, r4
	add     r3, #0xf4
	add     r6, #0xe0
	add     r1, #0xe4
	mov     r0, r4
	ldr     r3, [r3, #0x0]
	ldr     r6, [r6, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	add     r0, #0x24
	add     r3, r3, r6
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f020
	cmp     r7, #0x0
	beq     branch_223f020
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223ef76

.thumb
branch_223ef76: @ 223ef76 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x220] @ 0x223f1a4, (=0x1fb000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x214] @ 0x223f1a0, (=0x15b000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x20
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223efb6

.thumb
branch_223efb6: @ 223efb6 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xd8
	ldr     r2, [r1, #0x0]
	lsl     r1, r0, #1
	add     r0, r0, r1
	add     r1, r2, r0
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	add     r3, #0xd8
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	bne     branch_223f022
.thumb
branch_223f020: @ 223f020 :thumb
	b       branch_223f6d4
@ 0x223f022

.thumb
branch_223f022: @ 223f022 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f02a

.thumb
branch_223f02a: @ 223f02a :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r3, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, #0xd8
	bl      Function_2017358
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_223f048: @ 223f048 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r0, r4
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	mov     r0, #0xb
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xd8
	mov     r3, r4
	ldr     r1, [r1, #0x0]
	lsl     r0, r0, #1
	sub     r1, r1, r0
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r3, #0xd8
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x40
	blt     branch_223f190
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f0b2

.thumb
branch_223f0b2: @ 223f0b2 :thumb
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0xe8] @ 0x223f1a8, (=0x1d1000)
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0xe4] @ 0x223f1ac, (=0x1f2000)
	add     r1, #0xd8
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xdc
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x20
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x20
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f10a

.thumb
branch_223f10a: @ 223f10a :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r6, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xdc
	mov     r3, r4
	ldr     r1, [r1, #0x0]
	lsl     r0, r0, #2
	sub     r1, r1, r0
	mov     r0, r4
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	ldr     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xdc
	ldr     r1, [r1, #0x0]
	add     r3, #0xf4
	mov     r0, r4
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f190
	cmp     r6, #0x0
	bne     branch_223f192
.thumb
branch_223f190: @ 223f190 :thumb
	b       branch_223f6d4
@ 0x223f192

.thumb
branch_223f192: @ 223f192 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f19a


.align 2


.word 0x22b000 @ 0x223f19c
.word 0x15b000 @ 0x223f1a0
.word 0x1fb000 @ 0x223f1a4
.word 0x1d1000 @ 0x223f1a8
.word 0x1f2000 @ 0x223f1ac
.thumb
branch_223f1b0: @ 223f1b0 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_206296c
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2065638
	mov     r0, r4
	mov     r3, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, #0xd8
	bl      Function_2017358
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_223f1e6: @ 223f1e6 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r0, r4
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	mov     r0, #0xb
	mul     r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xd8
	ldr     r1, [r1, #0x0]
	mov     r3, r4
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r3, #0xd8
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x20
	blt     branch_223f32e
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f252

.thumb
branch_223f252: @ 223f252 :thumb
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x350] @ 0x223f5b0, (=0x1f7000)
	add     r1, #0xd4
	str     r2, [r1, #0x0]
	mov     r1, r4
	ldr     r2, [pc, #0x34c] @ 0x223f5b4, (=0x1f9000)
	add     r1, #0xd8
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xe0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x20
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x20
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f2aa

.thumb
branch_223f2aa: @ 223f2aa :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r7, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r1, [r0, #0x0]
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xe0
	mov     r3, r4
	mov     r6, r4
	ldr     r1, [r1, #0x0]
	lsl     r0, r0, #1
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0xe0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r3, #0xf4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r6, #0xe0
	add     r1, #0xe4
	mov     r0, r4
	ldr     r3, [r3, #0x0]
	ldr     r6, [r6, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	add     r0, #0x24
	add     r3, r3, r6
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f32e
	cmp     r7, #0x0
	bne     branch_223f330
.thumb
branch_223f32e: @ 223f32e :thumb
	b       branch_223f6d4
@ 0x223f330

.thumb
branch_223f330: @ 223f330 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f338

.thumb
branch_223f338: @ 223f338 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x26c] @ 0x223f5b0, (=0x1f7000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r1, #0x79
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x8
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x8
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f38c

.thumb
branch_223f38c: @ 223f38c :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r6, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	blt     branch_223f3e6
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	bge     branch_223f3e6
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x1d4] @ 0x223f5b8, (=0x400006c)
	blx     GXx_SetMasterBrightness_
.thumb
branch_223f3e6: @ 223f3e6 :thumb
	mov     r1, r4
	mov     r3, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r6, #0x0
	beq     branch_223f48c
	cmp     r5, #0x0
	beq     branch_223f48c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f40c

.thumb
branch_223f40c: @ 223f40c :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	bge     branch_223f422
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x19c] @ 0x223f5b8, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223f6d4
@ 0x223f422

.thumb
branch_223f422: @ 223f422 :thumb
	add     r1, #0xfc
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      Function_2062d64
	mov     r0, r4
	add     r0, #0x24
	mov     r1, #0x0
	bl      Function_2017348
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f43e

.thumb
branch_223f43e: @ 223f43e :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	ble     branch_223f454
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x168] @ 0x223f5b8, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223f6d4
@ 0x223f454

.thumb
branch_223f454: @ 223f454 :thumb
	mov     r1, r4
	mov     r0, #0x0
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x158] @ 0x223f5bc, (=0x1e1)
	str     r0, [sp, #0x4]
	mov     r2, r0
	mov     r3, #0x64
	bl      Function_20059d0
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f474

.thumb
branch_223f474: @ 223f474 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3c
	bge     branch_223f48e
.thumb
branch_223f48c: @ 223f48c :thumb
	b       branch_223f6d4
@ 0x223f48e

.thumb
branch_223f48e: @ 223f48e :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f496

.thumb
branch_223f496: @ 223f496 :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	bge     branch_223f4ac
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x110] @ 0x223f5b8, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223f6d4
@ 0x223f4ac

.thumb
branch_223f4ac: @ 223f4ac :thumb
	add     r1, #0xfc
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2062d64
	mov     r0, r4
	add     r0, #0x24
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_223f4c6: @ 223f4c6 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f4ce

.thumb
branch_223f4ce: @ 223f4ce :thumb
	mov     r0, r4
	mov     r2, #0x0
	add     r0, #0xd0
	str     r2, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0xe4] @ 0x223f5c0, (=0x15d000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xdc
	str     r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r0, r4
	mov     r2, r4
	ldr     r1, [sp, #0x10]
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x20
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f514

.thumb
branch_223f514: @ 223f514 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	ble     branch_223f554
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x68] @ 0x223f5b8, (=0x400006c)
	blx     GXx_SetMasterBrightness_
.thumb
branch_223f554: @ 223f554 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	lsl     r0, r1, #2
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_201d264
	mov     r1, r4
	add     r1, #0xdc
	ldr     r1, [r1, #0x0]
	lsl     r0, r0, #3
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xd4
	ldr     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0xdc
	ldr     r1, [r1, #0x0]
	mov     r3, r4
	add     r3, #0xf4
	mov     r0, r4
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	bne     branch_223f59c
	b       branch_223f6d4
@ 0x223f59c

.thumb
branch_223f59c: @ 223f59c :thumb
	mov     r0, #0x63
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f5a2

.thumb
branch_223f5a2: @ 223f5a2 :thumb
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x10]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x14] @ 0x223f5c4, (=0x2248ea8)
	b       branch_223f5c8
@ 0x223f5b0

.word 0x1f7000 @ 0x223f5b0
.word 0x1f9000 @ 0x223f5b4
.word 0x400006c @ 0x223f5b8
.word 0x1e1 @ 0x223f5bc
.word 0x15d000 @ 0x223f5c0
.word 0x2248ea8 @ 0x223f5c4
.thumb
branch_223f5c8: @ 223f5c8 :thumb
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	ble     branch_223f5e0
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223f5ee

branch_223f5e0: @ 223f5e0 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_223f5ee: @ 223f5ee :thumb
	blx     _ffix
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x10]
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x140] @ 0x223f740, (=0x2248eac)
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	ble     branch_223f616
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223f624

branch_223f616: @ 223f616 :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
branch_223f624: @ 223f624 :thumb
	blx     _ffix
	mov     r1, r4
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x14
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x14
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f668

.thumb
branch_223f668: @ 223f668 :thumb
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r6, r0
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f6d4
	cmp     r6, #0x0
	beq     branch_223f6d4
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f6d4
@ 0x223f6ca

.thumb
Function_223f6ca: @ 223f6ca :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223f6d4

.thumb
branch_223f6d4: @ 223f6d4 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_223f738
	cmp     r0, #0x14
	bne     branch_223f6f6
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_206296c
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2065638
.thumb
branch_223f6f6: @ 223f6f6 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x28
	bne     branch_223f714
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_206296c
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x3
	bl      Function_2065638
.thumb
branch_223f714: @ 223f714 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x32
	bne     branch_223f732
	mov     r0, #0x43
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_206296c
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2065638
.thumb
branch_223f732: @ 223f732 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_223f738: @ 223f738 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f73e


.align 2


.word 0x2248eac @ 0x223f740
.thumb
Function_223f744: @ 223f744 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x6
	bgt     branch_223f76e
	cmp     r1, #0x0
	blt     branch_223f774
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223f760

Jumppoints_223f760:
.hword branch_223f776 - Jumppoints_223f760 - 2
.hword branch_223f7c8 - Jumppoints_223f760 - 2
.hword branch_223f82a - Jumppoints_223f760 - 2
.hword branch_223f87c - Jumppoints_223f760 - 2
.hword branch_223f8f2 - Jumppoints_223f760 - 2
.hword branch_223f946 - Jumppoints_223f760 - 2
.hword branch_223f9a8 - Jumppoints_223f760 - 2
.thumb
branch_223f76e: @ 223f76e :thumb
	cmp     r1, #0x63
	bne     branch_223f774
	b       branch_223f9c6
@ 0x223f774

.thumb
branch_223f774: @ 223f774 :thumb
	b       branch_223f9cc
@ 0x223f776

.thumb
branch_223f776: @ 223f776 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x258] @ 0x223f9dc, (=0x25e000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x254] @ 0x223f9e0, (=0x172000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x8
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x8
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f7c8

.thumb
branch_223f7c8: @ 223f7c8 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0xc
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r1, r4
	mov     r3, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r6, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f8d2
	cmp     r6, #0x0
	beq     branch_223f8d2
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f82a

.thumb
branch_223f82a: @ 223f82a :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x1ac] @ 0x223f9e4, (=0x1b6000)
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x1a8] @ 0x223f9e8, (=0x1ba000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x8
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x8
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f87c

.thumb
branch_223f87c: @ 223f87c :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0xc
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r1, r4
	mov     r3, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r6, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	bne     branch_223f8d4
.thumb
branch_223f8d2: @ 223f8d2 :thumb
	b       branch_223f9d6
@ 0x223f8d4

.thumb
branch_223f8d4: @ 223f8d4 :thumb
	cmp     r6, #0x0
	beq     branch_223f9d6
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	ldr     r1, [pc, #0x10c] @ 0x223f9ec, (=0x1e2)
	str     r0, [sp, #0x4]
	mov     r2, r0
	mov     r3, #0x64
	bl      Function_20059d0
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f8f2

.thumb
branch_223f8f2: @ 223f8f2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, #0x7e
	mov     r0, r4
	lsl     r1, r1, #14
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0xe8] @ 0x223f9f0, (=0x151000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r2, r4
	add     r2, #0xd4
	mov     r0, r4
	ldr     r1, [sp, #0x10]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x8
	bl      Function_223fd0c
	mov     r2, r4
	add     r2, #0xd8
	mov     r0, r4
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x8
	bl      Function_223fd0c
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f946

.thumb
branch_223f946: @ 223f946 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r2, sp, #0xc
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x24
	add     r1, sp, #0x10
	add     r3, sp, #0x8
	bl      Function_2017358
	mov     r1, r4
	add     r1, #0xd0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r4
	add     r1, #0xd0
	mov     r5, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r1, r4
	mov     r3, r4
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r6, r0
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0xc]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r5, #0x0
	beq     branch_223f9d6
	cmp     r6, #0x0
	beq     branch_223f9d6
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f9a8

.thumb
branch_223f9a8: @ 223f9a8 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xf
	ble     branch_223f9d6
	mov     r0, #0x63
	str     r0, [r4, #0x18]
	b       branch_223f9d6
@ 0x223f9c6

.thumb
branch_223f9c6: @ 223f9c6 :thumb
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
.thumb
branch_223f9cc: @ 223f9cc :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223f9d6

.thumb
branch_223f9d6: @ 223f9d6 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223f9dc

.word 0x25e000 @ 0x223f9dc
.word 0x172000 @ 0x223f9e0
.word 0x1b6000 @ 0x223f9e4
.word 0x1ba000 @ 0x223f9e8
.word 0x1e2 @ 0x223f9ec
.word 0x151000 @ 0x223f9f0
.thumb
Function_223f9f4: @ 223f9f4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x14]
	cmp     r1, #0x0
	beq     branch_223fa0a
	cmp     r1, #0x1
	beq     branch_223fa36
	cmp     r1, #0x2
	beq     branch_223fa88
	b       branch_223fae8
@ 0x223fa0a

.thumb
branch_223fa0a: @ 223fa0a :thumb
	ldr     r1, [r5, #0x10]
	cmp     r1, #0x0
	beq     branch_223fa1a
	cmp     r1, #0x1
	beq     branch_223fa20
	cmp     r1, #0x2
	beq     branch_223fa26
	b       branch_223fa2a
@ 0x223fa1a

.thumb
branch_223fa1a: @ 223fa1a :thumb
	bl      Function_223ebdc
	b       branch_223fa2a
@ 0x223fa20

.thumb
branch_223fa20: @ 223fa20 :thumb
	bl      Function_223f744
	b       branch_223fa2a
@ 0x223fa26

.thumb
branch_223fa26: @ 223fa26 :thumb
	bl      Function_223ee5c
.thumb
branch_223fa2a: @ 223fa2a :thumb
	cmp     r0, #0x0
	beq     branch_223faee
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	b       branch_223faee
@ 0x223fa36

.thumb
branch_223fa36: @ 223fa36 :thumb
	mov     r1, #0x7e
	lsl     r1, r1, #14
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [pc, #0xb0] @ 0x223faf4, (=0x1b7000)
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x24
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	mov     r2, r5
	add     r2, #0xd4
	mov     r0, r5
	ldr     r1, [sp, #0x8]
	ldr     r2, [r2, #0x0]
	add     r0, #0xe4
	mov     r3, #0x6
	bl      Function_223fd0c
	mov     r2, r5
	add     r2, #0xd8
	mov     r0, r5
	ldr     r1, [sp, #0x0]
	ldr     r2, [r2, #0x0]
	add     r0, #0xf4
	mov     r3, #0x6
	bl      Function_223fd0c
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	b       branch_223faee
@ 0x223fa88

.thumb
branch_223fa88: @ 223fa88 :thumb
	add     r0, #0x24
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      Function_2017358
	mov     r1, r5
	add     r1, #0xd0
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	add     r0, #0xe4
	bl      Function_223fd18
	mov     r1, r5
	add     r1, #0xd0
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	add     r0, #0xf4
	bl      Function_223fd18
	mov     r6, r0
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r3, r5
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r1, r5
	add     r1, #0xe4
	add     r3, #0xf4
	mov     r0, r5
	ldr     r1, [r1, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [r3, #0x0]
	add     r0, #0x24
	bl      Function_2017350
	cmp     r4, #0x0
	beq     branch_223faee
	cmp     r6, #0x0
	beq     branch_223faee
	ldr     r0, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x14]
	b       branch_223faee
@ 0x223fae8

.thumb
branch_223fae8: @ 223fae8 :thumb
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223faee

.thumb
branch_223faee: @ 223faee :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223faf4

.word 0x1b7000 @ 0x223faf4
.thumb
Function_223faf8: @ 223faf8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x28
	ldr     r5, [pc, #0x1ac] @ 0x223fcac, (=0x2248e20)
	mov     r3, r1
	ldmia   r5!, {r0,r1}
	mov     r4, r2
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223fb1c
	cmp     r0, #0x1
	beq     branch_223fbae
	cmp     r0, #0x2
	beq     branch_223fbf8
	b       branch_223fc40
@ 0x223fb1c

.thumb
branch_223fb1c: @ 223fb1c :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223fb36
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	b       branch_223fc74
@ 0x223fb36

.thumb
branch_223fb36: @ 223fb36 :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	ble     branch_223fb4c
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x168] @ 0x223fcb0, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223fc74

branch_223fb4c: @ 223fb4c :thumb
	ldr     r1, [r3, #0x24]
	add     r0, sp, #0x1c
	bl      Function_2020aac
	ldr     r5, [pc, #0x15c] @ 0x223fcb4, (=Unknown_2248e14)
	add     r3, sp, #0x4
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	ble     branch_223fb7e
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223fb8c
@ 0x223fb7e

.thumb
branch_223fb7e: @ 223fb7e :thumb
	lsl     r0, r0, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223fb8c: @ 223fb8c :thumb
	blx     _ffix
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x63
	mov     r3, #0x5
	add     r0, #0x24
	lsl     r2, r2, #12
	lsl     r3, r3, #18
	bl      Function_2017350
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223fc74
@ 0x223fbae

.thumb
branch_223fbae: @ 223fbae :thumb
	mov     r0, r4
	bl      Function_223f9f4
	cmp     r0, #0x0
	beq     branch_223fbca
	ldr     r0, [pc, #0xfc] @ 0x223fcb8, (=0x6d6)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223fbf8
@ 0x223fbca

.thumb
branch_223fbca: @ 223fbca :thumb
	ldr     r0, [r4, #0x20]
	add     r2, r0, #0x1
	str     r2, [r4, #0x20]
	ldr     r0, [r4, #0x10]
	lsl     r1, r0, #2
	add     r0, sp, #0x10
	ldr     r0, [r0, r1]
	cmp     r0, r2
	bge     branch_223fc74
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	beq     branch_223fbf2
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0xc4] @ 0x223fcb0, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223fc74
@ 0x223fbf2

.thumb
branch_223fbf2: @ 223fbf2 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	b       branch_223fc74
@ 0x223fbf8

.thumb
branch_223fbf8: @ 223fbf8 :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x10
	beq     branch_223fc0e
	.hword  0x1c80 @ add r0, r0, #0x2
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0xa8] @ 0x223fcb0, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223fc74
@ 0x223fc0e

.thumb
branch_223fc0e: @ 223fc0e :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1e
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r4
	bl      Function_223eb34
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x3
	beq     branch_223fc38
	mov     r0, r4
	bl      Function_223ea98
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	b       branch_223fc74
@ 0x223fc38

.thumb
branch_223fc38: @ 223fc38 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223fc74
@ 0x223fc40

.thumb
branch_223fc40: @ 223fc40 :thumb
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223fc5a
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	b       branch_223fc74
@ 0x223fc5a

.thumb
branch_223fc5a: @ 223fc5a :thumb
	mov     r1, #0xc
	ldsh    r0, [r4, r1]
	cmp     r0, #0x0
	ble     branch_223fc70
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, #0xc]
	ldsh    r1, [r4, r1]
	ldr     r0, [pc, #0x44] @ 0x223fcb0, (=0x400006c)
	blx     GXx_SetMasterBrightness_
	b       branch_223fc74
@ 0x223fc70

.thumb
branch_223fc70: @ 223fc70 :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x0]
.thumb
branch_223fc74: @ 223fc74 :thumb
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x3
	beq     branch_223fca8
	ldr     r1, [pc, #0x40] @ 0x223fcbc, (=0x4000454)
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xac
	lsr     r1, r1, #14
	bl      Function_20171cc
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	add     r4, #0x24
	mov     r0, r4
	bl      Function_2017294
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
branch_223fca8: @ 223fca8 :thumb
	add     sp, #0x28
	pop     {r3-r5,pc}
@ 0x223fcac

.word 0x2248e20 @ 0x223fcac
.word 0x400006c @ 0x223fcb0
.word Unknown_2248e14 @ 0x223fcb4
.word 0x6d6 @ 0x223fcb8
.word 0x4000454 @ 0x223fcbc



.thumb
Function_223fcc0: @ 223fcc0 :thumb
	ldr     r3, [pc, #0x4] @ 0x223fcc8, (=Function_22400c4+1)
	ldr     r0, [r2, #0x8]
	bx      r3
@ 0x223fcc6

.align 2
.word Function_22400c4+1 @ 0x223fcc8



.thumb
Function_223fccc: @ 223fccc :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x223fcd8, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x223fcdc, (=0x2248e60)
	bx      r3
@ 0x223fcd6

.align 2
.word 0x21d1b6d @ 0x223fcd8
.word 0x2248e60 @ 0x223fcdc



.thumb
Function_223fce0: @ 223fce0 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fce4, (=0x21d1bed)
	bx      r3
@ 0x223fce4

.word 0x21d1bed @ 0x223fce4
.thumb
Function_223fce8: @ 223fce8 :thumb
	push    {r3,lr}
	bl      0x21d1c2c
	mov     r1, #0x3
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223fcf4

.thumb
Function_223fcf4: @ 223fcf4 :thumb
	push    {r3,lr}
	bl      0x21d1c2c
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x223fcfe


.align 2, 0


.thumb
Function_223fd00: @ 223fd00 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0xc]
	bx      lr
@ 0x223fd0c

.thumb
Function_223fd0c: @ 223fd0c :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0xc]
	bx      lr
@ 0x223fd18

.thumb
Function_223fd18: @ 223fd18 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r4, [r5, #0xc]
	mov     r2, r1
	cmp     r2, r4
	blt     branch_223fd2a
	mov     r2, r4
	mov     r6, #0x1
	b       branch_223fd2c

branch_223fd2a: @ 223fd2a :thumb
	mov     r6, #0x0
branch_223fd2c: @ 223fd2c :thumb
	ldr     r0, [r5, #0x8]
	lsl     r2, r2, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	lsl     r1, r4, #12
	blx     FX_Div
	ldr     r1, [r5, #0x4]
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x223fd58


.thumb
Function_223fd58: @ 223fd58 :thumb
	push    {r3,lr}
	bl      Function_20170bc
	pop     {r3,pc}
@ 0x223fd60

.thumb
Function_223fd60: @ 223fd60 :thumb
	push    {r3,lr}
	bl      Function_20170d8
	pop     {r3,pc}
@ 0x223fd68

.thumb
Function_223fd68: @ 223fd68 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fd6c, (=0x2017111)
	bx      r3
@ 0x223fd6c

.word 0x2017111 @ 0x223fd6c
.thumb
Function_223fd70: @ 223fd70 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_2017164
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223fd84

.thumb
Function_223fd84: @ 223fd84 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fd88, (=0x20171a1)
	bx      r3
@ 0x223fd88

.word 0x20171a1 @ 0x223fd88
.thumb
Function_223fd8c: @ 223fd8c :thumb
	ldr     r3, [pc, #0x4] @ 0x223fd94, (=0x20171cd)
	mov     r1, #0x1
	lsl     r1, r1, #12
	bx      r3
@ 0x223fd94

.word 0x20171cd @ 0x223fd94
.thumb
Function_223fd98: @ 223fd98 :thumb
	ldr     r3, [pc, #0x4] @ 0x223fda0, (=0x2017205)
	mov     r1, #0x1
	lsl     r1, r1, #12
	bx      r3
@ 0x223fda0

.word 0x2017205 @ 0x223fda0
.thumb
Function_223fda4: @ 223fda4 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fda8, (=0x2017241)
	bx      r3
@ 0x223fda8

.word 0x2017241 @ 0x223fda8
.thumb
Function_223fdac: @ 223fdac :thumb
	ldr     r3, [pc, #0x0] @ 0x223fdb0, (=0x2017259)
	bx      r3
@ 0x223fdb0

.word 0x2017259 @ 0x223fdb0
.thumb
Function_223fdb4: @ 223fdb4 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fdb8, (=0x201727d)
	bx      r3
@ 0x223fdb8

.word 0x201727d @ 0x223fdb8
.thumb
Function_223fdbc: @ 223fdbc :thumb
	ldr     r3, [pc, #0x0] @ 0x223fdc0, (=0x2017295)
	bx      r3
@ 0x223fdc0

.word 0x2017295 @ 0x223fdc0
.thumb
Function_223fdc4: @ 223fdc4 :thumb
	ldr     r3, [pc, #0x0] @ 0x223fdc8, (=0x2017349)
	bx      r3
@ 0x223fdc8

.word 0x2017349 @ 0x223fdc8
.thumb
Function_223fdcc: @ 223fdcc :thumb
	push    {r3,lr}
	bl      Function_2017350
	pop     {r3,pc}
@ 0x223fdd4

.thumb
Function_223fdd4: @ 223fdd4 :thumb
	push    {r3,lr}
	bl      Function_201736c
	pop     {r3,pc}
@ 0x223fddc

.thumb
Function_223fddc: @ 223fddc :thumb
	ldr     r3, [pc, #0x0] @ 0x223fde0, (=0x2017389)
	bx      r3
@ 0x223fde0

.word 0x2017389 @ 0x223fde0
.thumb
Function_223fde4: @ 223fde4 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x4c
	mov     r5, r0
	bl      malloc_maybe
	mov     r1, #0x0
	mov     r2, #0x4c
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, r5
	bl      Function_20203ac
	str     r0, [r4, #0x0]
	mov     r0, #0x5
	str     r0, [r4, #0x40]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223fe08

.thumb
Function_223fe08: @ 223fe08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      Call_free5
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223fe1a


.align 2, 0


.thumb
Function_223fe1c: @ 223fe1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x0]
	mov     r4, r3
	bl      Function_223ff7c
	ldr     r0, [sp, #0x2c]
	ldr     r1, [r5, #0x0]
	bl      Function_20203c0
	ldr     r1, [sp, #0x2c]
	add     r0, sp, #0x4
	bl      Function_2020aac
	add     r3, sp, #0x4
	mov     r2, r5
	add     r2, #0x28
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r3, r6
	str     r0, [r2, #0x0]
	mov     r2, r5
	ldmia   r3!, {r0,r1}
	add     r2, #0x34
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r0, r6
	bl      Function_2020690
	ldr     r0, [r5, #0x0]
	bl      Function_20203d4
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x0
	str     r0, [r5, #0x4]
	mov     r0, r5
	add     r0, #0x8
	mov     r2, r7
	mov     r3, r4
	bl      Function_223fd0c
	mov     r0, r5
	ldr     r2, [sp, #0x0]
	add     r0, #0x18
	mov     r1, #0x0
	mov     r3, r4
	bl      Function_223fd0c
	ldr     r0, [sp, #0x28]
	str     r0, [r5, #0x48]
	ldr     r0, [pc, #0x8] @ 0x223fe98, (=0x6d5)
	bl      Function_2005748
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223fe96


.align 2


.word 0x6d5 @ 0x223fe98
.thumb
Function_223fe9c: @ 223fe9c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x40]
	cmp     r1, #0x5
	bhi     branch_223ff68
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223feb2

Jumppoints_223feb2:
.hword branch_223febe - Jumppoints_223feb2 - 2
.hword branch_223fee0 - Jumppoints_223feb2 - 2
.hword branch_223ff02 - Jumppoints_223feb2 - 2
.hword branch_223ff28 - Jumppoints_223feb2 - 2
.hword branch_223ff5c - Jumppoints_223feb2 - 2
.hword branch_223ff68 - Jumppoints_223feb2 - 2
.thumb
branch_223febe: @ 223febe :thumb
	ldr     r1, [r4, #0x44]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x44]
	bl      Function_223ffc8
	mov     r5, r0
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r0, r4
	bl      Function_223ffe4
	cmp     r5, #0x1
	bne     branch_223ff68
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	pop     {r3-r5,pc}
@ 0x223fee0

.thumb
branch_223fee0: @ 223fee0 :thumb
	ldr     r1, [r4, #0x44]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, #0x44]
	bl      Function_223ffc8
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r0, r4
	bl      Function_223ffe4
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	bne     branch_223ff68
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	pop     {r3-r5,pc}
@ 0x223ff02

.thumb
branch_223ff02: @ 223ff02 :thumb
	ldr     r1, [r4, #0x44]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x44]
	bl      Function_223ffc8
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r5, r0
	mov     r0, r4
	neg     r1, r1
	neg     r2, r2
	bl      Function_223ffe4
	cmp     r5, #0x1
	bne     branch_223ff68
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	pop     {r3-r5,pc}
@ 0x223ff28

.thumb
branch_223ff28: @ 223ff28 :thumb
	ldr     r1, [r4, #0x44]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, #0x44]
	bl      Function_223ffc8
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0x18]
	mov     r0, r4
	neg     r1, r1
	neg     r2, r2
	bl      Function_223ffe4
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	bne     branch_223ff68
	ldr     r0, [r4, #0x48]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x48]
	beq     branch_223ff54
	mov     r0, #0x0
	str     r0, [r4, #0x40]
	pop     {r3-r5,pc}
@ 0x223ff54

.thumb
branch_223ff54: @ 223ff54 :thumb
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	pop     {r3-r5,pc}
@ 0x223ff5c

.thumb
branch_223ff5c: @ 223ff5c :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_20203d4
	ldr     r0, [r4, #0x40]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
.thumb
branch_223ff68: @ 223ff68 :thumb
	pop     {r3-r5,pc}
@ 0x223ff6a


.align 2, 0


.thumb
Function_223ff6c: @ 223ff6c :thumb
	ldr     r0, [r0, #0x40]
	cmp     r0, #0x5
	bne     branch_223ff76
	mov     r0, #0x1
	bx      lr
@ 0x223ff76

.thumb
branch_223ff76: @ 223ff76 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223ff7a


.align 2, 0


.thumb
Function_223ff7c: @ 223ff7c :thumb
	mov     r3, r0
	add     r3, #0x8
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_223ff84: @ 223ff84 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ff84
	mov     r3, r0
	add     r3, #0x18
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_223ff94: @ 223ff94 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ff94
	mov     r1, r0
	mov     r3, r0
	mov     r2, #0x0
	add     r1, #0x28
	add     r3, #0x28
	strb    r2, [r1, #0x0]
	strb    r2, [r3, #0x1]
	strb    r2, [r3, #0x2]
	strb    r2, [r3, #0x3]
	strb    r2, [r3, #0x4]
	strb    r2, [r3, #0x5]
	strb    r2, [r3, #0x6]
	strb    r2, [r3, #0x7]
	strb    r2, [r3, #0x8]
	strb    r2, [r3, #0x9]
	strb    r2, [r3, #0xa]
	strb    r2, [r3, #0xb]
	str     r2, [r0, #0x40]
	str     r2, [r0, #0x44]
	str     r2, [r0, #0x48]
	bx      lr
@ 0x223ffc6


.align 2, 0


.thumb
Function_223ffc8: @ 223ffc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x44]
	add     r0, #0x8
	bl      Function_223fd18
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r5, #0x44]
	add     r0, #0x18
	bl      Function_223fd18
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223ffe4

.thumb
Function_223ffe4: @ 223ffe4 :thumb
	ldr     r3, [r0, #0x34]
	add     r1, r3, r1
	str     r1, [r0, #0x28]
	ldr     r1, [r0, #0x38]
	add     r1, r1, r2
	str     r1, [r0, #0x2c]
	bx      lr
@ 0x223fff2


.align 2, 0


.thumb
Function_223fff4: @ 223fff4 :thumb
	ldr     r0, [r0, #0x48]
	bx      lr
@ 0x223fff8

.thumb
Function_223fff8: @ 223fff8 :thumb
	ldr     r0, [r0, #0x10]
	bx      lr
@ 0x223fffc

.thumb
Function_223fffc: @ 223fffc :thumb
	str     r1, [r0, #0x10]
	bx      lr
@ 0x2240000

.thumb
Function_2240000: @ 2240000 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	mov     r7, r2
	mov     r6, r3
	cmp     r0, #0x3
	beq     branch_224001e
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_224001e
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r5, #0x20]
.thumb
branch_224001e: @ 224001e :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, r4
	mov     r3, r7
	bl      Function_223fd00
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	str     r0, [r5, #0x1c]
	str     r6, [r5, #0x18]
	str     r4, [r5, #0x14]
	ldr     r0, [pc, #0x1c] @ 0x2240054, (=0x400006c)
	ldr     r1, [r5, #0x0]
	blx     GXx_SetMasterBrightness_
	mov     r2, #0x1
	ldr     r0, [pc, #0x18] @ 0x2240058, (=0x2240065)
	mov     r1, r5
	lsl     r2, r2, #10
	bl      Function_200da3c
	str     r0, [r5, #0x20]
	ldr     r0, [pc, #0x10] @ 0x224005c, (=0x6d4)
	bl      Function_2005748
	pop     {r3-r7,pc}
@ 0x2240052


.align 2


.word 0x400006c @ 0x2240054
.word Function_2240064+1 @ =0x2240065, 0x2240058
.word 0x6d4 @ 0x224005c



.thumb
Function_2240060: @ 2240060 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2240064


.thumb
Function_2240064: @ 2240064 :thumb
	ldr     r3, [pc, #0x4] @ 0x224006c, (=GXx_SetMasterBrightness_)
	ldr     r0, [pc, #0x8] @ 0x2240070, (=0x400006c)
	ldr     r1, [r1, #0x0]
	bx      r3
@ 0x224006c

.word GXx_SetMasterBrightness_ @ 0x224006c
.word 0x400006c @ 0x2240070



.thumb
Function_2240074: @ 2240074 :thumb
	push    {r3-r5,lr}
	mov     r1, #0x5
	mov     r5, r0
	mov     r0, #0x4
	lsl     r1, r1, #6
	bl      malloc_maybe
	mov     r2, #0x5
	mov     r1, #0x0
	lsl     r2, r2, #6
	mov     r4, r0
	blx     Function_20d5124
	mov     r0, #0x4b
	str     r5, [r4, #0x0]
	mov     r1, #0x5
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	sub     r0, #0x10
	add     r0, r4, r0
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22400a8

.thumb
Function_22400a8: @ 22400a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x5
	beq     branch_22400ba
	bl      ErrorHandling
.thumb
branch_22400ba: @ 22400ba :thumb
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22400c2


.align 2, 0


.thumb
Function_22400c4: @ 22400c4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22400fc
	.hword  0x1f00 @ sub r0, r0, #0x4
	cmp     r0, #0x1
	bls     branch_22400fc
	ldr     r0, [pc, #0x24] @ 0x2240100, (=0x4000454)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	add     r4, #0x40
	mov     r0, r4
	bl      Function_223fdbc
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
.thumb
branch_22400fc: @ 22400fc :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2240100

.word 0x4000454 @ 0x2240100
.thumb
Function_2240104: @ 2240104 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x12
	lsl     r1, r1, #4
	mov     r5, r0
	bl      malloc_maybe
	mov     r2, #0x12
	mov     r4, r0
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	str     r6, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x47
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	sub     r0, #0x10
	add     r0, r4, r0
	mov     r1, r5
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r2, #0x47
	lsl     r2, r2, #2
	mov     r0, r4
	ldr     r1, [r4, r2]
	sub     r2, #0x10
	add     r0, #0x34
	add     r2, r4, r2
	bl      Function_2240260
	ldr     r0, [r4, #0x4]
	bl      Function_203d170
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xac
	mov     r1, #0x4a
	mov     r2, r6
	mov     r3, #0x2
	str     r5, [sp, #0xc]
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0xac
	mov     r1, #0x4c
	mov     r2, r6
	mov     r3, #0x2
	str     r5, [sp, #0xc]
	bl      Function_2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xac
	mov     r1, #0x4b
	mov     r2, #0x0
	mov     r3, #0xc0
	str     r5, [sp, #0x4]
	bl      Function_2006e84
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	mov     r0, #0x1f
	str     r0, [r4, #0x38]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x10] @ 0x22401b4, (=0x4000050)
	ldr     r3, [r4, #0x34]
	mov     r1, #0x4
	mov     r2, #0x1
	blx     G2x_SetBlendAlpha_
	mov     r0, r4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22401b4

.word 0x4000050 @ 0x22401b4



.thumb
Function_22401b8: @ 22401b8 :thumb
	push    {r4,lr}
	mov     r1, #0x43
	mov     r4, r0
	lsl     r1, r1, #2
	add     r1, r4, r1
	add     r0, #0x34
	bl      Function_2240340
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22401d0

.thumb
Function_22401d0: @ 22401d0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r1
	ldr     r1, [r4, #0x4]
	add     r0, #0x8
	mov     r2, #0x1
	bl      Function_2240240
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_2063050
	mov     r0, r4
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	add     r0, #0x34
	bl      Function_22402e4
	mov     r0, r4
	ldr     r1, [r4, #0x4]
	add     r0, #0x8
	mov     r2, r5
	bl      Function_2240240
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_2063050
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2240214

.thumb
Function_2240214: @ 2240214 :thumb
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_224021e
	cmp     r0, #0x5
	bne     branch_2240222
.thumb
branch_224021e: @ 224021e :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2240222

.thumb
branch_2240222: @ 2240222 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2240226


.align 2, 0


.thumb
Function_2240228: @ 2240228 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2240214
	cmp     r0, #0x1
	beq     branch_224023c
	add     r4, #0x34
	mov     r0, r4
	bl      Function_2240600
.thumb
branch_224023c: @ 224023c :thumb
	pop     {r4,pc}
@ 0x224023e


.align 2, 0


.thumb
Function_2240240: @ 2240240 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x38]
	mov     r1, r2
	bl      Function_206251c
	str     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2240256
	bl      ErrorHandling
.thumb
branch_2240256: @ 2240256 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x24]
	str     r0, [r4, #0x28]
	pop     {r4,pc}
@ 0x224025e


.align 2, 0


.thumb
Function_2240260: @ 2240260 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x8]
	mov     r0, #0xac
	mov     r6, r1
	mov     r7, r2
	bl      LoadFromNARC_8
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	add     r0, #0x80
	mov     r2, #0x6
	mov     r3, r6
	bl      Function_223fd60
	ldr     r0, [sp, #0x8]
	ldr     r5, [sp, #0x8]
	str     r0, [sp, #0x10]
	add     r0, #0x80
	mov     r4, #0x0
	add     r5, #0x90
	str     r0, [sp, #0x10]
.thumb
branch_224028e: @ 224028e :thumb
	ldr     r1, [sp, #0x10]
	str     r6, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	mov     r0, r5
	add     r3, r4, #0x4
	str     r7, [sp, #0x4]
	bl      Function_223fd70
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x2
	blt     branch_224028e
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	add     r0, #0x8
	add     r1, #0x80
	bl      Function_223fdac
	ldr     r4, [sp, #0x8]
	ldr     r6, [sp, #0x8]
	mov     r5, #0x0
	add     r4, #0x90
	add     r6, #0x8
.thumb
branch_22402bc: @ 22402bc :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_223fdb4
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x14
	cmp     r5, #0x2
	blt     branch_22402bc
	ldr     r0, [sp, #0x8]
	mov     r1, #0x0
	add     r0, #0x8
	str     r0, [sp, #0x8]
	bl      Function_223fdc4
	ldr     r0, [sp, #0xc]
	bl      Call_FS_CloseFile
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22402e2


.align 2, 0


.thumb
Function_22402e4: @ 22402e4 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0x8
	bl      Function_223fdcc
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r6
	add     r0, #0x8
	mov     r2, r1
	mov     r3, r1
	bl      Function_223fdd4
	mov     r4, #0x0
	mov     r5, r6
	add     r5, #0x90
	mov     r7, r4
.thumb
branch_2240306: @ 2240306 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_223fda4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x2
	blt     branch_2240306
	mov     r0, r6
	mov     r2, #0x0
	add     r0, #0xcc
	str     r2, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xb8
	str     r2, [r0, #0x0]
	mov     r0, r6
	mov     r1, #0x52
	add     r0, #0xd0
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xd4
	add     r6, #0x8
	str     r2, [r0, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_223fdc4
	pop     {r3-r7,pc}
@ 0x224033e


.align 2, 0


.thumb
Function_2240340: @ 2240340 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0x80
	mov     r6, r1
	bl      Function_223fd68
	mov     r4, #0x0
	add     r5, #0x90
.thumb
branch_2240350: @ 2240350 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_223fd84
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x2
	blt     branch_2240350
	pop     {r4-r6,pc}
@ 0x2240362


.align 2, 0
.thumb
Function_2240364: @ 2240364 :thumb
	push    {r3-r6}
	add     sp, #-0x8
	mov     r3, r1
	mov     r1, r2
	mov     r6, #0x0
	add     r2, sp, #0x0
	str     r6, [r2, #0x0]
	str     r6, [r2, #0x4]
	ldr     r2, [pc, #0x250] @ 0x22405c8, (=RAM_21bf67c)
	add     r0, #0x34
	ldr     r4, [r2, #RAM_21bf67c_48]
	mov     r2, #0x40
	tst     r2, r4
	beq     branch_2240392
	ldr     r2, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsr     r5, r2, #31
	lsl     r4, r2, #27
	sub     r4, r4, r5
	mov     r2, #0x1b
	ror     r4, r2
	add     r2, r5, r4
	str     r2, [r0, #0x0]
branch_2240392: @ 2240392 :thumb
	ldr     r2, [pc, #0x234] @ 0x22405c8, (=RAM_21bf67c)
	ldr     r4, [r2, #RAM_21bf67c_48]
	mov     r2, #0x80
	tst     r2, r4
	beq     branch_22403ac
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_22403a8
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r0, #0x0]
	b       branch_22403ac

branch_22403a8: @ 22403a8 :thumb
	mov     r2, #0x1f
	str     r2, [r0, #0x0]
branch_22403ac: @ 22403ac :thumb
	ldr     r2, [pc, #0x218] @ 0x22405c8, (=RAM_21bf67c)
	ldr     r4, [r2, #RAM_21bf67c_48]
	mov     r2, #0x10
	tst     r2, r4
	beq     branch_22403c8
	ldr     r2, [r0, #0x4]
	.hword  0x1c52 @ add r2, r2, #0x1
	lsr     r5, r2, #31
	lsl     r4, r2, #27
	sub     r4, r4, r5
	mov     r2, #0x1b
	ror     r4, r2
	add     r2, r5, r4
	str     r2, [r0, #0x4]
branch_22403c8: @ 22403c8 :thumb
	ldr     r2, [pc, #0x1fc] @ 0x22405c8, (=RAM_21bf67c)
	ldr     r4, [r2, #RAM_21bf67c_48]
	mov     r2, #0x20
	tst     r2, r4
	beq     branch_22403e2
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	beq     branch_22403de
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r0, #0x4]
	b       branch_22403e2

branch_22403de: @ 22403de :thumb
	mov     r2, #0x1f
	str     r2, [r0, #0x4]
branch_22403e2: @ 22403e2 :thumb
	cmp     r1, #0xe
	bls     branch_22403e8
	b       branch_2240584

branch_22403e8: @ 22403e8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22403f4

Jumppoints_22403f4:
.hword branch_2240412 - Jumppoints_22403f4 - 2
.hword branch_2240426 - Jumppoints_22403f4 - 2
.hword branch_2240426 - Jumppoints_22403f4 - 2
.hword branch_2240426 - Jumppoints_22403f4 - 2
.hword branch_2240426 - Jumppoints_22403f4 - 2
.hword branch_224046c - Jumppoints_22403f4 - 2
.hword branch_224046c - Jumppoints_22403f4 - 2
.hword branch_224046c - Jumppoints_22403f4 - 2
.hword branch_224046c - Jumppoints_22403f4 - 2
.hword branch_22404b2 - Jumppoints_22403f4 - 2
.hword branch_22404b2 - Jumppoints_22403f4 - 2
.hword branch_22404f8 - Jumppoints_22403f4 - 2
.hword branch_22404f8 - Jumppoints_22403f4 - 2
.hword branch_224053e - Jumppoints_22403f4 - 2
.hword branch_224053e - Jumppoints_22403f4 - 2
.thumb
branch_2240412: @ 2240412 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x10
	ble     branch_224041e
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x224041e

.thumb
branch_224041e: @ 224041e :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x0]
	b       branch_22405a4
@ 0x2240426

.thumb
branch_2240426: @ 2240426 :thumb
	cmp     r3, #0x0
	ldr     r1, [r0, #0x0]
	beq     branch_224044c
	cmp     r1, #0x8
	bge     branch_2240436
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_224043a
@ 0x2240436

.thumb
branch_2240436: @ 2240436 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_224043a: @ 224043a :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x8
	ble     branch_2240446
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x2240446

.thumb
branch_2240446: @ 2240446 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x224044c

.thumb
branch_224044c: @ 224044c :thumb
	cmp     r1, #0x2
	ble     branch_2240456
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_224045a
@ 0x2240456

.thumb
branch_2240456: @ 2240456 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_224045a: @ 224045a :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0xe
	bge     branch_2240466
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x2240466

.thumb
branch_2240466: @ 2240466 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x224046c

.thumb
branch_224046c: @ 224046c :thumb
	cmp     r3, #0x0
	ldr     r1, [r0, #0x0]
	beq     branch_2240492
	cmp     r1, #0x8
	bge     branch_224047c
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_2240480
@ 0x224047c

.thumb
branch_224047c: @ 224047c :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_2240480: @ 2240480 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x8
	ble     branch_224048c
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x224048c

.thumb
branch_224048c: @ 224048c :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x2240492

.thumb
branch_2240492: @ 2240492 :thumb
	cmp     r1, #0x3
	ble     branch_224049c
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_22404a0
@ 0x224049c

.thumb
branch_224049c: @ 224049c :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_22404a0: @ 22404a0 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0xd
	bge     branch_22404ac
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x22404ac

.thumb
branch_22404ac: @ 22404ac :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x22404b2

.thumb
branch_22404b2: @ 22404b2 :thumb
	cmp     r3, #0x0
	ldr     r1, [r0, #0x0]
	beq     branch_22404d8
	cmp     r1, #0x8
	bge     branch_22404c2
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_22404c6
@ 0x22404c2

.thumb
branch_22404c2: @ 22404c2 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_22404c6: @ 22404c6 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x8
	ble     branch_22404d2
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x22404d2

.thumb
branch_22404d2: @ 22404d2 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x22404d8

.thumb
branch_22404d8: @ 22404d8 :thumb
	cmp     r1, #0x4
	ble     branch_22404e2
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_22404e6
@ 0x22404e2

.thumb
branch_22404e2: @ 22404e2 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_22404e6: @ 22404e6 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0xc
	bge     branch_22404f2
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x22404f2

.thumb
branch_22404f2: @ 22404f2 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x22404f8

.thumb
branch_22404f8: @ 22404f8 :thumb
	cmp     r3, #0x0
	ldr     r1, [r0, #0x0]
	beq     branch_224051e
	cmp     r1, #0x8
	bge     branch_2240508
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_224050c
@ 0x2240508

.thumb
branch_2240508: @ 2240508 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_224050c: @ 224050c :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x8
	ble     branch_2240518
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x2240518

.thumb
branch_2240518: @ 2240518 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x224051e

.thumb
branch_224051e: @ 224051e :thumb
	cmp     r1, #0x5
	ble     branch_2240528
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_224052c
@ 0x2240528

.thumb
branch_2240528: @ 2240528 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_224052c: @ 224052c :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0xb
	bge     branch_2240538
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x2240538

.thumb
branch_2240538: @ 2240538 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x224053e

.thumb
branch_224053e: @ 224053e :thumb
	cmp     r3, #0x0
	ldr     r1, [r0, #0x0]
	beq     branch_2240564
	cmp     r1, #0x8
	bge     branch_224054e
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_2240552
@ 0x224054e

.thumb
branch_224054e: @ 224054e :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_2240552: @ 2240552 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x8
	ble     branch_224055e
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x224055e

.thumb
branch_224055e: @ 224055e :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x2240564

.thumb
branch_2240564: @ 2240564 :thumb
	cmp     r1, #0x6
	ble     branch_224056e
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_2240572
@ 0x224056e

.thumb
branch_224056e: @ 224056e :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_2240572: @ 2240572 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0xa
	bge     branch_224057e
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x224057e

.thumb
branch_224057e: @ 224057e :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	b       branch_22405a4
@ 0x2240584

.thumb
branch_2240584: @ 2240584 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	ble     branch_2240590
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x0]
	b       branch_2240594
@ 0x2240590

.thumb
branch_2240590: @ 2240590 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x0]
.thumb
branch_2240594: @ 2240594 :thumb
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	ble     branch_22405a0
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_22405a4
@ 0x22405a0

.thumb
branch_22405a0: @ 22405a0 :thumb
	mov     r1, #0x1
	str     r1, [sp, #0x4]
.thumb
branch_22405a4: @ 22405a4 :thumb
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	lsl     r0, r0, #8
	orr     r1, r0
	ldr     r0, [pc, #0x1c] @ 0x22405cc, (=0x4000052)
	strh    r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_22405be
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_22405be
	mov     r6, #0x1
.thumb
branch_22405be: @ 22405be :thumb
	mov     r0, r6
	add     sp, #0x8
	pop     {r3-r6}
	bx      lr
@ 0x22405c6

.align 2
.word RAM_21bf67c @ 0x22405c8
.word 0x4000052 @ 0x22405cc



.thumb
Function_22405d0: @ 22405d0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r7, #0x34
	mov     r5, r7
	mov     r4, #0x0
	add     r5, #0x90
branch_22405dc: @ 22405dc :thumb
	mov     r0, r5
	bl      Function_223fd98
	.hword  0x1c64 @ add r4, r4, #0x1
	mov     r6, r0
	add     r5, #0x14
	cmp     r4, #0x2
	blt     branch_22405dc
	cmp     r6, #0x0
	beq     branch_22405fa
	add     r7, #0x8
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_223fdc4
.thumb
branch_22405fa: @ 22405fa :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22405fe


.align 2, 0


.thumb
Function_2240600: @ 2240600 :thumb
	ldr     r3, [pc, #0x4] @ 0x2240608, (=Function_223fdbc+1)
	add     r0, #0x8
	bx      r3
@ 0x2240606


.align 2


.word Function_223fdbc+1 @ 0x2240608
.thumb
Function_224060c: @ 224060c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x1e
	lsl     r1, r1, #4
	mov     r4, r0
	bl      malloc_maybe
	mov     r2, #0x1e
	mov     r6, r0
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	mov     r0, r6
	mov     r1, #0x62
	mov     r2, r5
	mov     r3, r4
	bl      Function_223fd58
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_2240638: @ 2240638 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22407b8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x90
	cmp     r4, #0x3
	blt     branch_2240638
	mov     r0, #0x7
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r6, r0]
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x2240654

.thumb
Function_2240654: @ 2240654 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r6
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_224065e: @ 224065e :thumb
	mov     r0, r5
	bl      Function_22407dc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x90
	cmp     r4, #0x3
	blt     branch_224065e
	mov     r0, r6
	bl      Function_223fd68
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x224067a


.align 2, 0


.thumb
Function_224067c: @ 224067c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_2240694
	bl      ErrorHandling
.thumb
branch_2240694: @ 2240694 :thumb
	mov     r0, #0x71
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, r0
	add     r1, #0x8
	str     r4, [r5, r1]
	mov     r1, r0
	add     r1, #0xc
	str     r6, [r5, r1]
	mov     r1, r0
	add     r1, #0x10
	str     r7, [r5, r1]
	add     r2, sp, #0x8
	mov     r1, r0
	ldrh    r3, [r2, #0x14]
	add     r1, #0x14
	strh    r3, [r5, r1]
	mov     r1, r0
	ldrh    r3, [r2, #0x18]
	add     r1, #0x16
	strh    r3, [r5, r1]
	mov     r1, r0
	ldrh    r2, [r2, #0x1c]
	add     r1, #0x18
	strh    r2, [r5, r1]
	add     r1, r0, #0x4
	ldr     r2, [sp, #0x18]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r2, [r5, r1]
	mov     r1, #0x1
	str     r1, [r5, r0]
	pop     {r3-r7,pc}
@ 0x22406d6


.align 2, 0


.thumb
Function_22406d8: @ 22406d8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r2, #0x71
	mov     r5, r0
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r2]
	ldr     r1, [r5, r2]
	cmp     r1, #0x0
	bge     branch_224073a
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	str     r1, [r5, r2]
	bl      Function_22408a8
	mov     r4, r0
	bne     branch_2240700
	bl      ErrorHandling
.thumb
branch_2240700: @ 2240700 :thumb
	mov     r1, #0x73
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	mov     r3, #0x60
	str     r0, [sp, #0x8]
	mov     r0, r1
	add     r0, #0xc
	ldrh    r0, [r5, r0]
	str     r0, [sp, #0xc]
	mov     r0, r1
	add     r0, #0xe
	ldrh    r0, [r5, r0]
	add     r1, #0x10
	str     r0, [sp, #0x10]
	ldrh    r0, [r5, r1]
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      Function_22407e8
.thumb
branch_224073a: @ 224073a :thumb
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_224073e: @ 224073e :thumb
	mov     r0, r5
	bl      Function_224085c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x90
	cmp     r4, #0x3
	blt     branch_224073e
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2240750

.thumb
Function_2240750: @ 2240750 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_2240758: @ 2240758 :thumb
	mov     r0, r5
	bl      Function_224089c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x90
	cmp     r4, #0x3
	blt     branch_2240758
	pop     {r3-r5,pc}
@ 0x2240768

.thumb
Function_2240768: @ 2240768 :thumb
	ldr     r3, [pc, #0x4] @ 0x2240770, (=Function_224060c+1)
	mov     r1, #0x6
	bx      r3
@ 0x224076e


.align 2


.word Function_224060c+1 @ 0x2240770
.thumb
Function_2240774: @ 2240774 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240778, (=Function_2240654+1)
	bx      r3
@ 0x2240778

.word Function_2240654+1 @ =Function_2240654+1, 0x2240778
.thumb
Function_224077c: @ 224077c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, #0x40
	str     r4, [sp, #0x0]
	mov     r5, #0x0
	str     r5, [sp, #0x4]
	str     r5, [sp, #0x8]
	str     r5, [sp, #0xc]
	lsl     r5, r1, #16
	lsl     r1, r4, #9
	add     r1, r5, r1
	lsl     r5, r2, #16
	mov     r2, #0xa
	lsl     r2, r2, #16
	add     r2, r5, r2
	lsl     r5, r3, #16
	lsl     r3, r4, #10
	add     r3, r5, r3
	bl      Function_224067c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22407a8

.thumb
Function_22407a8: @ 22407a8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22407ac, (=Function_22406d8+1)
	bx      r3
@ 0x22407ac

.word Function_22406d8+1 @ =Function_22406d8+1, 0x22407ac
.thumb
Function_22407b0: @ 22407b0 :thumb
	ldr     r3, [pc, #0x0] @ 0x22407b4, (=Function_2240750+1)
	bx      r3
@ 0x22407b4

.word Function_2240750+1 @ =Function_2240750+1, 0x22407b4
.thumb
Function_22407b8: @ 22407b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x90
	blx     Function_20d5124
	add     r0, r4, #0x4
	mov     r1, r5
	bl      Function_223fdac
	add     r0, r4, #0x4
	mov     r1, #0x0
	bl      Function_223fdc4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x22407dc

.thumb
Function_22407dc: @ 22407dc :thumb
	ldr     r3, [pc, #0x4] @ 0x22407e4, (=0x20d5124)
	mov     r1, #0x0
	mov     r2, #0x90
	bx      r3
@ 0x22407e4

.word 0x20d5124 @ 0x22407e4
.thumb
Function_22407e8: @ 22407e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_22407fc
	bl      ErrorHandling
.thumb
branch_22407fc: @ 22407fc :thumb
	mov     r0, r5
	add     r0, #0x7c
	mov     r1, r4
	mov     r2, r6
	mov     r3, r7
	bl      Function_223fd0c
	add     r0, r5, #0x4
	mov     r1, #0x1
	bl      Function_223fdc4
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x20]
	add     r0, r5, #0x4
	bl      Function_223fdcc
	mov     r2, #0x1
	add     r0, r5, #0x4
	mov     r1, r4
	lsl     r2, r2, #12
	mov     r3, r4
	bl      Function_223fdd4
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x1c]
	add     r0, r5, #0x4
	mov     r2, #0x0
	bl      Function_223fddc
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x20]
	add     r0, r5, #0x4
	mov     r2, #0x1
	bl      Function_223fddc
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x24]
	add     r0, r5, #0x4
	mov     r2, #0x2
	bl      Function_223fddc
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	add     r5, #0x8c
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x224085c

.thumb
Function_224085c: @ 224085c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_224089a
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x8c
	mov     r0, r4
	ldr     r1, [r1, #0x0]
	add     r0, #0x7c
	bl      Function_223fd18
	ldr     r1, [r4, #0x7c]
	mov     r2, #0x1
	mov     r5, r0
	add     r0, r4, #0x4
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_223fdd4
	cmp     r5, #0x1
	bne     branch_224089a
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_224089a: @ 224089a :thumb
	pop     {r3-r5,pc}
@ 0x224089c

.thumb
Function_224089c: @ 224089c :thumb
	ldr     r3, [pc, #0x4] @ 0x22408a4, (=Function_223fdbc+1)
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      r3
@ 0x22408a2


.align 2


.word Function_223fdbc+1 @ =Function_223fdbc+1, 0x22408a4
.thumb
Function_22408a8: @ 22408a8 :thumb
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_22408ac: @ 22408ac :thumb
	ldr     r1, [r3, #0x10]
	cmp     r1, #0x0
	bne     branch_22408bc
	mov     r1, #0x90
	add     r0, #0x10
	mul     r1, r2
	add     r0, r0, r1
	bx      lr
@ 0x22408bc

.thumb
branch_22408bc: @ 22408bc :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x90
	cmp     r2, #0x3
	blt     branch_22408ac
	mov     r0, #0x0
	bx      lr
@ 0x22408c8

.thumb
Function_22408c8: @ 22408c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r1, #0xd4
	mov     r6, r0
	bl      malloc_maybe
	mov     r7, r0
	mov     r1, #0x0
	mov     r2, #0xd4
	blx     Function_20d5124
	mov     r0, r7
	add     r0, #0xc4
	mov     r1, r6
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x62
	mov     r1, r6
	bl      LoadFromNARC_8
	str     r0, [sp, #0x8]
	mov     r0, r7
	ldr     r1, [sp, #0x8]
	add     r0, #0x78
	mov     r2, r4
	mov     r3, r6
	bl      Function_223fd60
	mov     r0, r7
	str     r0, [sp, #0xc]
	add     r0, #0xc4
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r5, r7
	str     r0, [sp, #0x10]
	add     r0, #0x78
	mov     r4, #0x0
	add     r5, #0x88
	str     r0, [sp, #0x10]
.thumb
branch_224091a: @ 224091a :thumb
	ldr     r0, [sp, #0xc]
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r3, r4, #0x1
	bl      Function_223fd70
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x3
	blt     branch_224091a
	mov     r1, r7
	mov     r0, r7
	add     r1, #0x78
	bl      Function_223fdac
	mov     r4, r7
	mov     r5, #0x0
	add     r4, #0x88
.thumb
branch_2240944: @ 2240944 :thumb
	mov     r0, r7
	mov     r1, r4
	bl      Function_223fdb4
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x14
	cmp     r5, #0x3
	blt     branch_2240944
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_223fdc4
	ldr     r0, [sp, #0x8]
	bl      Call_FS_CloseFile
	mov     r0, r7
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2240968

.thumb
Function_2240968: @ 2240968 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0x78
	bl      Function_223fd68
	mov     r5, r7
	mov     r6, r7
	mov     r4, #0x0
	add     r5, #0x88
	add     r6, #0xc4
.thumb
branch_224097c: @ 224097c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_223fd84
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x3
	blt     branch_224097c
	mov     r0, r7
	bl      free
	pop     {r3-r7,pc}
@ 0x2240994

.thumb
Function_2240994: @ 2240994 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223fdcc
	ldr     r1, [pc, #0x30] @ 0x22409d0, (=0xfffffff8)
	mov     r0, r4
	add     r1, sp
	ldrh    r1, [r1, #0x10]
	mov     r2, #0x0
	bl      Function_223fddc
	ldr     r1, [pc, #0x24] @ 0x22409d0, (=0xfffffff8)
	mov     r0, r4
	add     r1, sp
	ldrh    r1, [r1, #0x18]
	mov     r2, #0x2
	bl      Function_223fddc
	ldr     r1, [pc, #0x14] @ 0x22409d0, (=0xfffffff8)
	mov     r0, r4
	add     r1, sp
	ldrh    r1, [r1, #0x14]
	mov     r2, #0x1
	bl      Function_223fddc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223fdc4
	pop     {r4,pc}
@ 0x22409d0

.word 0xfffffff8 @ 0x22409d0
.thumb
Function_22409d4: @ 22409d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x88
.thumb
branch_22409dc: @ 22409dc :thumb
	mov     r0, r5
	bl      Function_223fd8c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x3
	blt     branch_22409dc
	pop     {r3-r5,pc}
@ 0x22409ec

.thumb
Function_22409ec: @ 22409ec :thumb
	ldr     r3, [pc, #0x0] @ 0x22409f0, (=Function_223fdbc+1)
	bx      r3
@ 0x22409f0

.word Function_223fdbc+1 @ =Function_223fdbc+1, 0x22409f0
.thumb
Function_22409f4: @ 22409f4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22409fc, (=Function_22408c8+1)
	mov     r1, #0x0
	bx      r3
@ 0x22409fa

.align 2
.word Function_22408c8+1 @ 0x22409fc



.thumb
Function_2240a00: @ 2240a00 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240a04, (=Function_2240968+1)
	bx      r3
@ 0x2240a04

.word Function_2240968+1 @ 0x2240a04



.thumb
Function_2240a08: @ 2240a08 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240a0c, (=Function_22409d4+1)
	bx      r3
@ 0x2240a0c

.word Function_22409d4+1 @ 0x2240a0c



.thumb
Function_2240a10: @ 2240a10 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240a14, (=Function_22409ec+1)
	bx      r3
@ 0x2240a14

.word Function_22409ec+1 @ 0x2240a14



.thumb
Function_2240a18: @ 2240a18 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [pc, #0x1c] @ 0x2240a3c, (=0xf49f)
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x1c] @ 0x2240a40, (=0x80b5)
	str     r4, [sp, #0x4]
	.hword  0x1fe4 @ sub r4, r4, #0x7
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x18] @ 0x2240a44, (=0x29ba8)
	add     r1, r1, r4
	ldr     r4, [pc, #0x18] @ 0x2240a48, (=0x37294)
	sub     r2, r2, r4
	ldr     r4, [pc, #0x18] @ 0x2240a4c, (=0xb6876)
	sub     r3, r3, r4
	bl      Function_2240994
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240a3c

.word 0xf49f @ 0x2240a3c
.word 0x80b5 @ 0x2240a40
.word 0x29ba8 @ 0x2240a44
.word 0x37294 @ 0x2240a48
.word 0xb6876 @ 0x2240a4c
.thumb
Function_2240a50: @ 2240a50 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [pc, #0x1c] @ 0x2240a74, (=0xe5b1)
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x1c] @ 0x2240a78, (=0xc163)
	str     r4, [sp, #0x4]
	ldr     r4, [pc, #0x1c] @ 0x2240a7c, (=0x7ff8)
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x1c] @ 0x2240a80, (=0x116a4f)
	add     r1, r1, r4
	ldr     r4, [pc, #0x1c] @ 0x2240a84, (=0x4f16b)
	add     r2, r2, r4
	ldr     r4, [pc, #0x1c] @ 0x2240a88, (=0x92118)
	sub     r3, r3, r4
	bl      Function_2240994
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240a74

.word 0xe5b1 @ 0x2240a74
.word 0xc163 @ 0x2240a78
.word 0x7ff8 @ 0x2240a7c
.word 0x116a4f @ 0x2240a80
.word 0x4f16b @ 0x2240a84
.word 0x92118 @ 0x2240a88
.thumb
Function_2240a8c: @ 2240a8c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r4, [pc, #0x20] @ 0x2240ab4, (=0xe71d)
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x20] @ 0x2240ab8, (=0x5335)
	str     r4, [sp, #0x4]
	ldr     r4, [pc, #0x20] @ 0x2240abc, (=0x7992)
	str     r4, [sp, #0x8]
	mov     r4, #0xc6
	lsl     r4, r4, #12
	sub     r1, r1, r4
	ldr     r4, [pc, #0x1c] @ 0x2240ac0, (=0x56fff)
	add     r2, r2, r4
	ldr     r4, [pc, #0x1c] @ 0x2240ac4, (=0x210008)
	sub     r3, r3, r4
	bl      Function_2240994
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240ab2


.align 2


.word 0xe71d @ 0x2240ab4
.word 0x5335 @ 0x2240ab8
.word 0x7992 @ 0x2240abc
.word 0x56fff @ 0x2240ac0
.word 0x210008 @ 0x2240ac4
.thumb
Function_2240ac8: @ 2240ac8 :thumb
	ldr     r3, [pc, #0x4] @ 0x2240ad0, (=Function_224060c+1)
	mov     r1, #0x6
	bx      r3
@ 0x2240ace

.align 2
.word Function_224060c+1 @ 0x2240ad0



.thumb
Function_2240ad4: @ 2240ad4 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240ad8, (=Function_2240654+1)
	bx      r3
@ 0x2240ad8

.word Function_2240654+1 @ 0x2240ad8



.thumb
Function_2240adc: @ 2240adc :thumb
	ldr     r3, [pc, #0x0] @ 0x2240ae0, (=Function_22406d8+1)
	bx      r3
@ 0x2240ae0

.word Function_22406d8+1 @ 0x2240ae0



.thumb
Function_2240ae4: @ 2240ae4 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240ae8, (=Function_2240750+1)
	bx      r3
@ 0x2240ae8

.word Function_2240750+1 @ 0x2240ae8



.thumb
Function_2240aec: @ 2240aec :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, #0x40
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x24] @ 0x2240b1c, (=0xf49f)
	str     r4, [sp, #0x4]
	ldr     r4, [pc, #0x24] @ 0x2240b20, (=0x80b5)
	str     r4, [sp, #0x8]
	.hword  0x1fe4 @ sub r4, r4, #0x7
	str     r4, [sp, #0xc]
	mov     r4, #0x11
	lsl     r4, r4, #12
	add     r1, r1, r4
	mov     r4, #0x6f
	lsl     r4, r4, #12
	sub     r2, r2, r4
	mov     r4, #0xcb
	lsl     r4, r4, #12
	sub     r3, r3, r4
	bl      Function_224067c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2240b1a


.align 2


.word 0xf49f @ 0x2240b1c
.word 0x80b5 @ 0x2240b20
.thumb
Function_2240b24: @ 2240b24 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, #0x40
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x20] @ 0x2240b50, (=0xe5b1)
	str     r4, [sp, #0x4]
	ldr     r4, [pc, #0x20] @ 0x2240b54, (=0xc163)
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x20] @ 0x2240b58, (=0x7ff8)
	str     r4, [sp, #0xc]
	ldr     r4, [pc, #0x20] @ 0x2240b5c, (=0x252000)
	add     r1, r1, r4
	mov     r4, #0x43
	lsl     r4, r4, #12
	add     r2, r2, r4
	mov     r4, #0xe
	lsl     r4, r4, #14
	sub     r3, r3, r4
	bl      Function_224067c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2240b50

.word 0xe5b1 @ 0x2240b50
.word 0xc163 @ 0x2240b54
.word 0x7ff8 @ 0x2240b58
.word 0x252000 @ 0x2240b5c
.thumb
Function_2240b60: @ 2240b60 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, #0x40
	str     r4, [sp, #0x0]
	ldr     r4, [pc, #0x24] @ 0x2240b90, (=0xe71d)
	str     r4, [sp, #0x4]
	ldr     r4, [pc, #0x24] @ 0x2240b94, (=0x5335)
	str     r4, [sp, #0x8]
	ldr     r4, [pc, #0x24] @ 0x2240b98, (=0x7992)
	str     r4, [sp, #0xc]
	mov     r4, #0x53
	lsl     r4, r4, #14
	sub     r1, r1, r4
	mov     r4, #0xd
	lsl     r4, r4, #12
	sub     r2, r2, r4
	mov     r4, #0x71
	lsl     r4, r4, #14
	sub     r3, r3, r4
	bl      Function_224067c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2240b8e


.align 2


.word 0xe71d @ 0x2240b90
.word 0x5335 @ 0x2240b94
.word 0x7992 @ 0x2240b98
.thumb
Function_2240b9c: @ 2240b9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r1, #0xec
	mov     r7, r0
	bl      malloc_maybe
	mov     r1, #0x0
	mov     r2, #0xec
	mov     r6, r0
	blx     Function_20d5124
	mov     r0, #0x62
	mov     r1, r7
	bl      LoadFromNARC_8
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0xd8
	str     r4, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xdc
	mov     r1, r7
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, r6
	ldr     r1, [sp, #0x8]
	add     r0, #0x78
	mov     r2, #0xf
	mov     r3, r7
	bl      Function_223fd60
	mov     r0, r6
	str     r0, [sp, #0xc]
	add     r0, #0xdc
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r5, r6
	str     r0, [sp, #0x10]
	add     r0, #0x78
	mov     r4, #0x0
	add     r5, #0x88
	str     r0, [sp, #0x10]
.thumb
branch_2240bf4: @ 2240bf4 :thumb
	ldr     r0, [sp, #0xc]
	str     r7, [sp, #0x0]
	mov     r3, r4
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r3, #0x10
	bl      Function_223fd70
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_2240bf4
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x78
	bl      Function_223fdac
	mov     r4, r6
	mov     r5, #0x0
	add     r4, #0x88
.thumb
branch_2240c20: @ 2240c20 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_223fdb4
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x14
	cmp     r5, #0x4
	blt     branch_2240c20
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_223fdc4
	ldr     r0, [sp, #0x8]
	bl      Call_FS_CloseFile
	mov     r0, r6
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2240c44

.thumb
Function_2240c44: @ 2240c44 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x38]
	bl      Function_206251c
	add     r1, sp, #0x0
	bl      Function_2063050
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_223fdcc
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223fdc4
	ldr     r0, [pc, #0x8] @ 0x2240c78, (=0x6d8)
	bl      Function_2005748
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240c78

.word 0x6d8 @ 0x2240c78
.thumb
Function_2240c7c: @ 2240c7c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x88
.thumb
branch_2240c84: @ 2240c84 :thumb
	mov     r0, r5
	bl      Function_223fd98
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_2240c84
	pop     {r3-r5,pc}
@ 0x2240c94

.thumb
Function_2240c94: @ 2240c94 :thumb
	ldr     r3, [pc, #0x0] @ 0x2240c98, (=Function_223fdbc+1)
	bx      r3
@ 0x2240c98

.word Function_223fdbc+1 @ 0x2240c98



.thumb
Function_2240c9c: @ 2240c9c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2013960
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r1, #0x1
	bhi     branch_2240cb8
	ldr     r0, [r5, #0x6c]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x70]
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x2240cb8

.thumb
branch_2240cb8: @ 2240cb8 :thumb
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_2240cc6
	ldr     r0, [r5, #0x74]
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x78]
	str     r0, [r6, #0x0]
.thumb
branch_2240cc6: @ 2240cc6 :thumb
	pop     {r4-r6,pc}
@ 0x2240cc8

.thumb
Function_2240cc8: @ 2240cc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      LoadVariableAreaAdress_19
	str     r0, [sp, #0x0]
	bl      Function_202d898
	cmp     r0, #0x0
	beq     branch_2240cfe
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	bl      Function_202d814
	bl      Function_2243218
	ldr     r1, [r5, #0x1c]
	ldr     r1, [r1, #0x0]
	cmp     r1, r0
	bne     branch_2240cfe
	ldr     r0, [r4, #0x64]
	str     r0, [r6, #0x0]
	ldr     r0, [r4, #0x68]
	str     r0, [r7, #0x0]
.thumb
branch_2240cfe: @ 2240cfe :thumb
	pop     {r3-r7,pc}
@ 0x2240d00

.thumb
Function_2240d00: @ 2240d00 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	mov     r7, r3
	bl      Function_203a2fc
	cmp     r0, #0x0
	beq     branch_2240d54
	add     r1, sp, #0x0
	ldr     r0, [r5, #0xc]
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_202da10
	cmp     r4, #0x0
	beq     branch_2240d54
	mov     r0, #0x6a
	mov     r1, #0x8
	mov     r2, #0x4
	bl      LoadFromNARC_4
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x2]
	ldr     r1, [pc, #0x20] @ 0x2240d58, (=0xffff)
	cmp     r2, r1
	beq     branch_2240d40
	lsl     r1, r2, #2
	ldr     r1, [r0, r1]
	str     r1, [r6, #0x0]
branch_2240d40: @ 2240d40 :thumb
	add     r1, sp, #0x0
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2240d58, (=0xffff)
	cmp     r2, r1
	beq     branch_2240d50
	lsl     r1, r2, #2
	ldr     r1, [r0, r1]
	str     r1, [r7, #0x0]
.thumb
branch_2240d50: @ 2240d50 :thumb
	bl      free
.thumb
branch_2240d54: @ 2240d54 :thumb
	pop     {r3-r7,pc}
@ 0x2240d56

.align 2
.word 0xffff @ 0x2240d58



.thumb
.globl Function_6_2240d5c
Function_6_2240d5c: @ 2240d5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xb4
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	str     r0, [sp, #0x14]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2054f94
	str     r0, [sp, #0x1c]
	add     r2, sp, #0x24
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	add     r2, #0x1
	bl      Function_2241874
	add     r1, sp, #0x24
	strb    r0, [r1, #0x0]
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_2240d9a
	add     sp, #0xb4
	mov     r0, #0x0
	pop     {r4-r7,pc}

branch_2240d9a: @ 2240d9a :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r7, r0
	mov     r0, r5
	bl      Function_203a640
	mov     r4, r0
	mov     r0, r7
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x20]
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	mov     r2, r4
	add     r3, sp, #0x30
	bl      Function_2242634
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	bl      Function_202d9d8
	cmp     r0, #0x0
	bne     branch_2240de4
	mov     r0, r7
	bl      Function_2054a40
	mov     r1, #0x1
	str     r1, [sp, #0x34]
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x24
	strb    r0, [r1, #0x18]
branch_2240de4: @ 2240de4 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      Function_203a74c
	mov     r3, r0
	ldr     r0, [sp, #0x20]
	add     r1, sp, #0x24
	str     r0, [sp, #0x0]
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x0
	add     r2, sp, #0x30
	bl      Function_224226c
	add     r1, sp, #0x24
	strb    r0, [r1, #0x0]
	mov     r0, r5
	add     r1, sp, #0x24
	bl      Function_2241abc
	ldr     r0, [sp, #0x20]
	add     r1, sp, #0x24
	bl      Function_2241a90
	add     r1, sp, #0x24
	ldrb    r1, [r1, #0x0]
	ldr     r2, [sp, #0x1c]
	mov     r0, r5
	bl      Function_22417c8
	cmp     r0, #0x0
	beq     branch_2240e2a
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_2240e2e

branch_2240e2a: @ 2240e2a :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
branch_2240e2e: @ 2240e2e :thumb
	add     r1, sp, #0x44
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	str     r0, [r1, #0xc]
	str     r1, [sp, #0x0]
	add     r0, sp, #0x48
	str     r0, [sp, #0x4]
	add     r0, sp, #0x4c
	mov     r3, r5
	str     r0, [sp, #0x8]
	add     r3, #0x94
	ldr     r1, [sp, #0x14]
	ldr     r3, [r3, #0x0]
	mov     r0, r6
	mov     r2, r5
	bl      Function_20696dc
	cmp     r0, #0x0
	bne     branch_2240e5e
	mov     r0, #0x0
	str     r0, [sp, #0x50]
	b       branch_2240e64
@ 0x2240e5e

.thumb
branch_2240e5e: @ 2240e5e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x50]
.thumb
branch_2240e64: @ 2240e64 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2240e70
	add     sp, #0xb4
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2240e70

.thumb
branch_2240e70: @ 2240e70 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x0
	beq     branch_2240e84
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_2240e88
@ 0x2240e84

.thumb
branch_2240e84: @ 2240e84 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
.thumb
branch_2240e88: @ 2240e88 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2240ef0
	ldr     r0, [sp, #0x50]
	cmp     r0, #0x0
	bne     branch_2240ef0
	mov     r0, r5
	add     r1, sp, #0x28
	bl      Function_2242440
	cmp     r0, #0x0
	beq     branch_2240ef0
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6
	bl      Function_202d93c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	add     r1, sp, #0x30
	bl      Function_2242388
	cmp     r0, #0x0
	bne     branch_2240eea
	mov     r0, #0xb
	mov     r1, r0
	add     r1, #0xf5
	bl      Function_2051d8c
	str     r0, [sp, #0x2c]
	mov     r1, r5
	bl      Function_2052314
	ldr     r0, [sp, #0x30]
	ldr     r1, [sp, #0x28]
	ldr     r2, [sp, #0x2c]
	bl      Function_224239c
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_2069434
	ldr     r1, [sp, #0x2c]
	mov     r0, r5
	bl      Function_2050e10
	add     sp, #0xb4
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2240eea

.thumb
branch_2240eea: @ 2240eea :thumb
	add     sp, #0xb4
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2240ef0

.thumb
branch_2240ef0: @ 2240ef0 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2240f0e
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	add     r2, sp, #0x2c
	bl      Function_2242328
	b       branch_2240f18
@ 0x2240f0e

.thumb
branch_2240f0e: @ 2240f0e :thumb
	mov     r0, #0xb
	mov     r1, #0x4a
	bl      Function_2051d8c
	str     r0, [sp, #0x2c]
.thumb
branch_2240f18: @ 2240f18 :thumb
	ldr     r0, [sp, #0x2c]
	mov     r1, r5
	bl      Function_2052314
	add     r0, sp, #0x24
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_2240fdc
	mov     r7, #0x4
	mov     r0, #0x0
	mov     r1, r4
	add     r2, sp, #0x54
	mov     r3, r7
.thumb
branch_2240f32: @ 2240f32 :thumb
	ldr     r6, [r1, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r6, [r2, #0x0]
	ldsb    r6, [r1, r7]
	strh    r6, [r2, #0x4]
	ldsb    r6, [r1, r3]
	add     r1, #0x8
	strh    r6, [r2, #0x6]
	add     r2, #0x8
	cmp     r0, #0xc
	blt     branch_2240f32
	mov     r0, r5
	bl      Function_203d174
	bl      LoadVariableAreaAdress_7
	bl      Function_2027474
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0x64
	add     r2, sp, #0x6c
	bl      Function_2240c9c
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x54
	add     r3, sp, #0x5c
	bl      Function_2240cc8
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x84
	add     r3, sp, #0x8c
	bl      Function_2240d00
	mov     r0, r4
	mov     r1, r6
	add     r2, sp, #0x94
	add     r3, sp, #0x9c
	bl      Function_22477b8
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2240fb2
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0x54
	bl      Function_2242354
	add     r0, sp, #0x54
	str     r0, [sp, #0x0]
	add     r0, sp, #0x30
	str     r0, [sp, #0x4]
	add     r0, sp, #0x44
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x2c]
	mov     r0, r5
	mov     r3, r4
	bl      Function_2241674
	b       branch_2241024

branch_2240fb2: @ 2240fb2 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b034
	ldr     r1, [sp, #0x2c]
	mov     r2, #0xb
	str     r0, [r1, #0x20]
	ldr     r0, [sp, #0x2c]
	ldr     r1, [r5, #0xc]
	bl      LoadTrainerData
	add     r0, sp, #0x30
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x2c]
	mov     r0, r5
	add     r3, sp, #0x54
	bl      Function_224174c
	b       branch_2241024

branch_2240fdc: @ 2240fdc :thumb
	cmp     r0, #0x1
	bne     branch_2241014
	mov     r0, #0x0
	add     r1, sp, #0x54
	mov     r3, #0xd0
	mov     r6, #0xd1
branch_2240fe8: @ 2240fe8 :thumb
	mov     r2, r4
	add     r2, #0xd4
	ldr     r2, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r2, [r1, #0x0]
	ldsb    r2, [r4, r3]
	strh    r2, [r1, #0x4]
	ldsb    r2, [r4, r6]
	add     r4, #0x8
	strh    r2, [r1, #0x6]
	add     r1, #0x8
	cmp     r0, #0x5
	blt     branch_2240fe8
	add     r0, sp, #0x30
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x2c]
	mov     r0, r5
	add     r3, sp, #0x54
	bl      Function_2241790
	b       branch_2241024
@ 0x2241014

.thumb
branch_2241014: @ 2241014 :thumb
	bl      ErrorHandling
	ldr     r0, [sp, #0x2c]
	bl      Function_20520a4
	add     sp, #0xb4
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241024

.thumb
branch_2241024: @ 2241024 :thumb
	cmp     r0, #0x0
	beq     branch_2241032
	ldr     r1, [sp, #0x2c]
	mov     r0, r5
	bl      Function_2050e10
	b       branch_2241036
@ 0x2241032

.thumb
branch_2241032: @ 2241032 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_2241036: @ 2241036 :thumb
	mov     r0, #0x4
	bl      Function_201833c
	cmp     r0, #0x0
	bne     branch_2241044
	bl      ErrorHandling
.thumb
branch_2241044: @ 2241044 :thumb
	mov     r0, #0xb
	bl      Function_201833c
	cmp     r0, #0x0
	bne     branch_2241052
	bl      ErrorHandling
.thumb
branch_2241052: @ 2241052 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_224105e
	ldr     r0, [sp, #0x2c]
	bl      Function_20520a4
.thumb
branch_224105e: @ 224105e :thumb
	mov     r0, #0x0
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	ldr     r0, [sp, #0x10]
	add     sp, #0xb4
	pop     {r4-r7,pc}
@ 0x224106a


.align 2, 0
.thumb
.globl Function_6_224106c
Function_6_224106c: @ 224106c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x94
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	bl      Function_2242164
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	bne     branch_2241086
	add     sp, #0x94
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241086

.thumb
branch_2241086: @ 2241086 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x0
	add     r3, sp, #0x20
	bl      Function_2242634
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      Function_203a74c
	mov     r3, r0
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	add     r2, sp, #0x20
	bl      Function_224226c
	mov     r6, r0
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x64
	bcc     branch_22410d8
	bl      ErrorHandling
branch_22410d8: @ 22410d8 :thumb
	cmp     r5, r6
	blt     branch_22410e2
	add     sp, #0x94
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22410e2

.thumb
branch_22410e2: @ 22410e2 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	bl      Function_2242328
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	ldr     r0, [r0, #0x0]
	bl      Function_2052314
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	bl      Function_205285c
	ldr     r0, [sp, #0x8]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      Function_203a2f0
	cmp     r0, #0x0
	beq     branch_2241154
	ldr     r0, [sp, #0x8]
	bl      Function_2247660
	cmp     r0, #0x0
	beq     branch_2241154
	add     r0, sp, #0x18
	add     r0, #0x1
	add     r1, sp, #0x18
	bl      Function_2247794
	add     r0, sp, #0x1c
	bl      Function_22477a0
	add     r0, sp, #0x18
	ldrb    r3, [r0, #0x1]
	ldrb    r4, [r0, #0x0]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x0
	add     r0, sp, #0x34
.thumb
branch_224113e: @ 224113e :thumb
	lsl     r5, r1, #3
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	add     r6, r0, r5
	str     r2, [r0, r5]
	strh    r3, [r6, #0x4]
	lsr     r1, r1, #24
	strh    r4, [r6, #0x6]
	cmp     r1, #0x5
	bcc     branch_224113e
	b       branch_22411a2
@ 0x2241154

.thumb
branch_2241154: @ 2241154 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_203a640
	ldr     r1, [sp, #0xc]
	cmp     r1, #0x0
	beq     branch_224116a
	cmp     r1, #0x1
	beq     branch_2241172
	cmp     r1, #0x2
	beq     branch_224117a
	b       branch_2241180
@ 0x224116a

.thumb
branch_224116a: @ 224116a :thumb
	mov     r1, #0x4a
	lsl     r1, r1, #2
	add     r4, r0, r1
	b       branch_2241180
@ 0x2241172

.thumb
branch_2241172: @ 2241172 :thumb
	mov     r1, #0x55
	lsl     r1, r1, #2
	add     r4, r0, r1
	b       branch_2241180
@ 0x224117a

.thumb
branch_224117a: @ 224117a :thumb
	mov     r1, #0x6
	lsl     r1, r1, #6
	add     r4, r0, r1
.thumb
branch_2241180: @ 2241180 :thumb
	mov     r6, #0x0
	add     r1, sp, #0x34
	mov     r7, #0x1
.thumb
branch_2241186: @ 2241186 :thumb
	lsl     r5, r6, #3
	add     r3, r4, r5
	ldr     r0, [r3, #0x4]
	add     r2, r1, r5
	str     r0, [r1, r5]
	ldsb    r0, [r4, r5]
	strh    r0, [r2, #0x4]
	ldsb    r0, [r3, r7]
	strh    r0, [r2, #0x6]
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x5
	bcc     branch_2241186
.thumb
branch_22411a2: @ 22411a2 :thumb
	add     r0, sp, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x14]
	ldr     r2, [r2, #0x0]
	add     r3, sp, #0x34
	bl      Function_22417ac
	cmp     r0, #0x0
	bne     branch_22411c2
	add     sp, #0x94
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22411c2

.thumb
branch_22411c2: @ 22411c2 :thumb
	mov     r0, #0x1
	add     sp, #0x94
	pop     {r4-r7,pc}
@ 0x22411c8


.thumb
.globl Function_6_22411c8
Function_6_22411c8: @ 22411c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xac
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	str     r1, [sp, #0xc]
	bl      GetSpritePositionX
	mov     r4, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2054f94
	mov     r1, r0
	mov     r0, r5
	add     r2, sp, #0x1c
	bl      Function_2241874
	cmp     r0, #0x0
	bne     branch_22411fc
	add     sp, #0xac
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22411fc

.thumb
branch_22411fc: @ 22411fc :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r6, r0
	mov     r0, r5
	bl      Function_203a640
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r4
	add     r3, sp, #0x28
	bl      Function_2242634
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x30]
	add     r0, sp, #0x3c
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [sp, #0x2c]
	str     r1, [r0, #0xc]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x0
	beq     branch_2241248
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_224124c
@ 0x2241248

.thumb
branch_2241248: @ 2241248 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_224124c: @ 224124c :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2241294
	mov     r0, r5
	add     r1, sp, #0x20
	bl      Function_2242440
	cmp     r0, #0x0
	beq     branch_2241294
	mov     r0, #0xb
	mov     r1, r0
	add     r1, #0xf5
	bl      Function_2051d8c
	str     r0, [sp, #0x24]
	mov     r1, r5
	bl      Function_2052314
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x24]
	bl      Function_224239c
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_2069434
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	bl      Function_2050e78
	add     sp, #0xac
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2241294

.thumb
branch_2241294: @ 2241294 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_22412b2
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	add     r2, sp, #0x24
	bl      Function_2242328
	b       branch_22412bc
@ 0x22412b2

.thumb
branch_22412b2: @ 22412b2 :thumb
	mov     r0, #0xb
	mov     r1, #0x4a
	bl      Function_2051d8c
	str     r0, [sp, #0x24]
.thumb
branch_22412bc: @ 22412bc :thumb
	ldr     r0, [sp, #0x24]
	mov     r1, r5
	bl      Function_2052314
	add     r0, sp, #0x1c
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2241380
	mov     r7, #0x4
	mov     r0, #0x0
	mov     r1, r4
	add     r2, sp, #0x4c
	mov     r3, r7
.thumb
branch_22412d6: @ 22412d6 :thumb
	ldr     r6, [r1, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r6, [r2, #0x0]
	ldsb    r6, [r1, r7]
	strh    r6, [r2, #0x4]
	ldsb    r6, [r1, r3]
	add     r1, #0x8
	strh    r6, [r2, #0x6]
	add     r2, #0x8
	cmp     r0, #0xc
	blt     branch_22412d6
	mov     r0, r5
	bl      Function_203d174
	bl      LoadVariableAreaAdress_7
	bl      Function_2027474
	mov     r6, r0
	mov     r0, r4
	add     r1, sp, #0x5c
	add     r2, sp, #0x64
	bl      Function_2240c9c
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0x4c
	add     r3, sp, #0x54
	bl      Function_2240cc8
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x7c
	add     r3, sp, #0x84
	bl      Function_2240d00
	mov     r0, r4
	mov     r1, r6
	add     r2, sp, #0x8c
	add     r3, sp, #0x94
	bl      Function_22477b8
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2241356
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0x4c
	bl      Function_2242354
	add     r0, sp, #0x4c
	str     r0, [sp, #0x0]
	add     r0, sp, #0x28
	str     r0, [sp, #0x4]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	mov     r3, r4
	bl      Function_2241674
	b       branch_22413c2
@ 0x2241356

.thumb
branch_2241356: @ 2241356 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b034
	ldr     r1, [sp, #0x24]
	mov     r2, #0xb
	str     r0, [r1, #0x20]
	ldr     r0, [sp, #0x24]
	ldr     r1, [r5, #0xc]
	bl      LoadTrainerData
	add     r0, sp, #0x28
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	add     r3, sp, #0x4c
	bl      Function_224174c
	b       branch_22413c2
@ 0x2241380

.thumb
branch_2241380: @ 2241380 :thumb
	cmp     r0, #0x1
	bne     branch_22413b8
	mov     r0, #0x0
	add     r1, sp, #0x4c
	mov     r3, #0xd0
	mov     r6, #0xd1
.thumb
branch_224138c: @ 224138c :thumb
	mov     r2, r4
	add     r2, #0xd4
	ldr     r2, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r2, [r1, #0x0]
	ldsb    r2, [r4, r3]
	strh    r2, [r1, #0x4]
	ldsb    r2, [r4, r6]
	add     r4, #0x8
	strh    r2, [r1, #0x6]
	add     r1, #0x8
	cmp     r0, #0x5
	blt     branch_224138c
	add     r0, sp, #0x28
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	add     r3, sp, #0x4c
	bl      Function_2241790
	b       branch_22413c2
@ 0x22413b8

.thumb
branch_22413b8: @ 22413b8 :thumb
	bl      ErrorHandling
	add     sp, #0xac
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x22413c2

.thumb
branch_22413c2: @ 22413c2 :thumb
	cmp     r0, #0x0
	beq     branch_22413d2
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x24]
	mov     r0, r5
	bl      Function_2050e78
	b       branch_22413d6
@ 0x22413d2

.thumb
branch_22413d2: @ 22413d2 :thumb
	bl      ErrorHandling
.thumb
branch_22413d6: @ 22413d6 :thumb
	mov     r0, #0x0
	add     r5, #0x78
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0xac
	pop     {r4-r7,pc}
@ 0x22413e2


.align 2, 0
.thumb
.globl Function_6_22413e4
Function_6_22413e4: @ 22413e4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xac
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2054f94
	mov     r7, r0
	add     r2, sp, #0x20
	mov     r0, r5
	mov     r1, r7
	add     r2, #0x1
	bl      Function_2241874
	add     r1, sp, #0x20
	strb    r0, [r1, #0x0]
	ldrb    r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_2241426
	add     sp, #0xac
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241426

.thumb
branch_2241426: @ 2241426 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r6, r0
	mov     r0, r5
	bl      Function_203a640
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x14]
	mov     r0, r5
	add     r3, sp, #0x28
	bl      Function_2242634
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	bl      Function_202d9d8
	cmp     r0, #0x0
	bne     branch_2241470
	mov     r0, r6
	bl      Function_2054a40
	mov     r1, #0x1
	str     r1, [sp, #0x2c]
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	add     r1, sp, #0x20
	strb    r0, [r1, #0x14]
.thumb
branch_2241470: @ 2241470 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      Function_203a74c
	mov     r3, r0
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x20
	str     r0, [sp, #0x0]
	ldrb    r1, [r1, #0x0]
	mov     r0, #0x0
	add     r2, sp, #0x28
	bl      Function_224226c
	add     r1, sp, #0x20
	strb    r0, [r1, #0x0]
	mov     r0, r5
	add     r1, sp, #0x20
	bl      Function_2241abc
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x20
	bl      Function_2241a90
	add     r1, sp, #0x20
	ldrb    r1, [r1, #0x0]
	mov     r0, r5
	mov     r2, r7
	bl      Function_22417c8
	cmp     r0, #0x0
	beq     branch_22414b6
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_22414ba
@ 0x22414b6

.thumb
branch_22414b6: @ 22414b6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_22414ba: @ 22414ba :thumb
	add     r1, sp, #0x3c
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	str     r0, [r1, #0xc]
	str     r0, [sp, #0x48]
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a984
	cmp     r0, #0x0
	beq     branch_22414dc
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_22414e0
@ 0x22414dc

.thumb
branch_22414dc: @ 22414dc :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
.thumb
branch_22414e0: @ 22414e0 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2241538
	mov     r0, r5
	add     r1, sp, #0x24
	bl      Function_2242440
	cmp     r0, #0x0
	beq     branch_2241538
	ldr     r0, [sp, #0x24]
	mov     r1, #0x6
	bl      Function_202d93c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	add     r1, sp, #0x28
	bl      Function_2242388
	cmp     r0, #0x0
	bne     branch_2241532
	mov     r0, #0xb
	mov     r1, r0
	add     r1, #0xf5
	bl      Function_2051d8c
	str     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2052314
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	ldr     r2, [r4, #0x0]
	bl      Function_224239c
	add     r5, #0x94
	ldr     r0, [r5, #0x0]
	bl      Function_2069434
	add     sp, #0xac
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2241532

.thumb
branch_2241532: @ 2241532 :thumb
	add     sp, #0xac
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241538

.thumb
branch_2241538: @ 2241538 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_2241556
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206ae5c
	str     r0, [sp, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r4
	bl      Function_2242328
	b       branch_2241560
@ 0x2241556

.thumb
branch_2241556: @ 2241556 :thumb
	mov     r0, #0xb
	mov     r1, #0x4a
	bl      Function_2051d8c
	str     r0, [r4, #0x0]
.thumb
branch_2241560: @ 2241560 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	bl      Function_2052314
	add     r0, sp, #0x20
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_2241624
	mov     r7, #0x4
	ldr     r1, [sp, #0x14]
	mov     r0, #0x0
	add     r2, sp, #0x4c
	mov     r3, r7
.thumb
branch_224157a: @ 224157a :thumb
	ldr     r6, [r1, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r6, [r2, #0x0]
	ldsb    r6, [r1, r7]
	strh    r6, [r2, #0x4]
	ldsb    r6, [r1, r3]
	add     r1, #0x8
	strh    r6, [r2, #0x6]
	add     r2, #0x8
	cmp     r0, #0xc
	blt     branch_224157a
	mov     r0, r5
	bl      Function_203d174
	bl      LoadVariableAreaAdress_7
	bl      Function_2027474
	mov     r6, r0
	ldr     r0, [sp, #0x14]
	add     r1, sp, #0x5c
	add     r2, sp, #0x64
	bl      Function_2240c9c
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	add     r2, sp, #0x4c
	add     r3, sp, #0x54
	bl      Function_2240cc8
	mov     r0, r5
	mov     r1, r6
	add     r2, sp, #0x7c
	add     r3, sp, #0x84
	bl      Function_2240d00
	ldr     r0, [sp, #0x14]
	mov     r1, r6
	add     r2, sp, #0x8c
	add     r3, sp, #0x94
	bl      Function_22477b8
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	bne     branch_22415fa
	ldr     r1, [sp, #0x18]
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0x4c
	bl      Function_2242354
	add     r0, sp, #0x4c
	str     r0, [sp, #0x0]
	add     r0, sp, #0x28
	str     r0, [sp, #0x4]
	add     r0, sp, #0x3c
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [r4, #0x0]
	ldr     r3, [sp, #0x14]
	mov     r0, r5
	bl      Function_2241674
	b       branch_2241634
@ 0x22415fa

.thumb
branch_22415fa: @ 22415fa :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	bl      Function_206b034
	ldr     r1, [r4, #0x0]
	mov     r2, #0xb
	str     r0, [r1, #0x20]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r5, #0xc]
	bl      LoadTrainerData
	add     r0, sp, #0x28
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	add     r3, sp, #0x4c
	bl      Function_224174c
	b       branch_2241634
@ 0x2241624

.thumb
branch_2241624: @ 2241624 :thumb
	bl      ErrorHandling
	ldr     r0, [r4, #0x0]
	bl      Function_20520a4
	add     sp, #0xac
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241634

.thumb
branch_2241634: @ 2241634 :thumb
	cmp     r0, #0x0
	bne     branch_224163c
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_224163c: @ 224163c :thumb
	mov     r0, #0x4
	bl      Function_201833c
	cmp     r0, #0x0
	bne     branch_224164a
	bl      ErrorHandling
.thumb
branch_224164a: @ 224164a :thumb
	mov     r0, #0xb
	bl      Function_201833c
	cmp     r0, #0x0
	bne     branch_2241658
	bl      ErrorHandling
.thumb
branch_2241658: @ 2241658 :thumb
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_2241666
	ldr     r0, [r4, #0x0]
	bl      Function_20520a4
	b       branch_224166c
@ 0x2241666

.thumb
branch_2241666: @ 2241666 :thumb
	mov     r0, #0x0
	add     r5, #0x78
	strh    r0, [r5, #0x0]
.thumb
branch_224166c: @ 224166c :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0xac
	pop     {r4-r7,pc}
@ 0x2241672


.align 2, 0


.thumb
Function_2241674: @ 2241674 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r6, [sp, #0x38]
	mov     r5, r0
	ldr     r0, [r6, #0xc]
	mov     r7, r2
	str     r1, [sp, #0x10]
	ldr     r4, [sp, #0x30]
	cmp     r0, #0x0
	beq     branch_2241722
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_22416a8
	ldr     r0, [r3, #0x7c]
	str     r0, [r4, #0x20]
	mov     r0, r3
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x28]
	mov     r0, r3
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	add     r3, #0x88
	str     r0, [r4, #0x50]
	ldr     r0, [r3, #0x0]
	str     r0, [r4, #0x58]
.thumb
branch_22416a8: @ 22416a8 :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_206978c
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x1
	bne     branch_22416e4
	mov     r0, r5
	bl      Function_203d174
	bl      LoadTrainerDataAdress
	bl      GetTrainerID
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x34]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x14]
	ldr     r3, [r6, #0x8]
	bl      Function_2241f2c
	b       branch_22416fe
@ 0x22416e4

.thumb
branch_22416e4: @ 22416e4 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x34]
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r3, r4
	bl      Function_2241f7c
.thumb
branch_22416fe: @ 22416fe :thumb
	mov     r4, r0
	cmp     r4, #0x0
	beq     branch_2241744
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionX
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	mov     r2, r0
	mov     r0, r5
	add     r5, #0x94
	ldr     r3, [r5, #0x0]
	mov     r1, r6
	bl      Function_2069474
	b       branch_2241744
@ 0x2241722

.thumb
branch_2241722: @ 2241722 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r1
	ldr     r2, [sp, #0x34]
	mov     r1, #0xff
	mov     r3, r4
	str     r7, [sp, #0x8]
	bl      Function_2241dc4
	mov     r4, r0
	beq     branch_2241744
	add     r5, #0x94
	ldr     r0, [r5, #0x0]
	bl      Function_2069434
.thumb
branch_2241744: @ 2241744 :thumb
	mov     r0, r4
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224174a


.align 2, 0


.thumb
Function_224174c: @ 224174c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r0, #0x0
	mov     r5, r1
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r1, #0xff
	mov     r6, r3
	str     r4, [sp, #0x8]
	bl      Function_2241dc4
	cmp     r0, #0x0
	bne     branch_2241774
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x2241774

.thumb
branch_2241774: @ 2241774 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x20]
	mov     r0, r5
	mov     r1, #0xff
	mov     r3, r6
	str     r4, [sp, #0x8]
	bl      Function_2241dc4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224178e


.align 2, 0


.thumb
Function_2241790: @ 2241790 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, r1
	ldr     r2, [sp, #0x10]
	mov     r1, #0xff
	bl      Function_2241dc4
	add     sp, #0xc
	pop     {pc}
@ 0x22417aa


.align 2, 0


.thumb
Function_22417ac: @ 22417ac :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, r1
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	bl      Function_2241dc4
	add     sp, #0xc
	pop     {pc}
@ 0x22417c8

.thumb
Function_22417c8: @ 22417c8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	lsl     r1, r7, #8
	mov     r5, r0
	mov     r6, r2
	bl      Function_22418b4
	cmp     r0, #0x0
	bne     branch_2241808
	mov     r0, r5
	add     r0, #0x78
	ldrh    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x78
	strh    r1, [r0, #0x0]
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x64
	bcc     branch_2241800
	bl      ErrorHandling
.thumb
branch_2241800: @ 2241800 :thumb
	cmp     r4, #0x5
	bcc     branch_2241808
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241808

.thumb
branch_2241808: @ 2241808 :thumb
	mov     r0, r6
	mov     r4, #0x28
	bl      Function_205dad4
	cmp     r0, #0x0
	beq     branch_224181c
	add     r4, #0x1e
	lsl     r0, r4, #24
	lsr     r4, r0, #24
	b       branch_224182c
@ 0x224181c

.thumb
branch_224181c: @ 224181c :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb74
	cmp     r0, #0x1
	bne     branch_224182c
	add     r4, #0x1e
	lsl     r0, r4, #24
	lsr     r4, r0, #24
.thumb
branch_224182c: @ 224182c :thumb
	mov     r0, r5
	bl      Function_2055c40
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246b74
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x64
	bls     branch_2241844
	mov     r4, #0x64
.thumb
branch_2241844: @ 2241844 :thumb
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x64
	bcc     branch_224185c
	bl      ErrorHandling
.thumb
branch_224185c: @ 224185c :thumb
	cmp     r6, r4
	bge     branch_2241870
	mov     r0, r5
	mov     r1, r7
	bl      Function_22418dc
	cmp     r0, #0x0
	beq     branch_2241870
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2241870

.thumb
branch_2241870: @ 2241870 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241874

.thumb
Function_2241874: @ 2241874 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r4, r2
	bl      Function_205de6c
	cmp     r0, #0x0
	beq     branch_22418b0
	mov     r0, r6
	bl      Function_205db58
	cmp     r0, #0x0
	beq     branch_22418a0
	mov     r0, #0x1
	strb    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_2242158
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4-r6,pc}
@ 0x22418a0

.thumb
branch_22418a0: @ 22418a0 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_224214c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r4-r6,pc}
@ 0x22418b0

.thumb
branch_22418b0: @ 22418b0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22418b4


.thumb
Function_22418b4: @ 22418b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0xa
	blx     _u32_div_f
	lsr     r1, r0, #8
	cmp     r1, #0x8
	bls     branch_22418c8
	mov     r1, #0x8
branch_22418c8: @ 22418c8 :thumb
	mov     r0, #0x8
	add     r4, #0x78
	sub     r1, r0, r1
	ldrh    r0, [r4, #0x0]
	cmp     r0, r1
	bcc     branch_22418d8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22418d8

.thumb
branch_22418d8: @ 22418d8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22418dc

.thumb
Function_22418dc: @ 22418dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x64
	bcc     branch_22418f8
	bl      ErrorHandling
.thumb
branch_22418f8: @ 22418f8 :thumb
	cmp     r5, r4
	bcc     branch_2241900
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2241900

.thumb
branch_2241900: @ 2241900 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241904

.thumb
Function_2241904: @ 2241904 :thumb
	push    {r4,lr}
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x64
	bcc     branch_224191e
	bl      ErrorHandling
.thumb
branch_224191e: @ 224191e :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	cmp     r0, #0x14
	bcs     branch_224192a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224192a

.thumb
branch_224192a: @ 224192a :thumb
	bcc     branch_2241934
	cmp     r0, #0x28
	bcs     branch_2241934
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241934

.thumb
branch_2241934: @ 2241934 :thumb
	cmp     r0, #0x28
	bcc     branch_2241940
	cmp     r0, #0x32
	bcs     branch_2241940
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2241940

.thumb
branch_2241940: @ 2241940 :thumb
	cmp     r0, #0x32
	bcc     branch_224194c
	cmp     r0, #0x3c
	bcs     branch_224194c
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224194c

.thumb
branch_224194c: @ 224194c :thumb
	cmp     r0, #0x3c
	bcc     branch_2241958
	cmp     r0, #0x46
	bcs     branch_2241958
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x2241958

.thumb
branch_2241958: @ 2241958 :thumb
	cmp     r0, #0x46
	bcc     branch_2241964
	cmp     r0, #0x50
	bcs     branch_2241964
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2241964

.thumb
branch_2241964: @ 2241964 :thumb
	cmp     r0, #0x50
	bcc     branch_2241970
	cmp     r0, #0x55
	bcs     branch_2241970
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x2241970

.thumb
branch_2241970: @ 2241970 :thumb
	cmp     r0, #0x55
	bcc     branch_224197c
	cmp     r0, #0x5a
	bcs     branch_224197c
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x224197c

.thumb
branch_224197c: @ 224197c :thumb
	cmp     r0, #0x5a
	bcc     branch_2241988
	cmp     r0, #0x5e
	bcs     branch_2241988
	mov     r0, #0x8
	pop     {r4,pc}
@ 0x2241988

.thumb
branch_2241988: @ 2241988 :thumb
	cmp     r0, #0x5e
	bcc     branch_2241994
	cmp     r0, #0x62
	bcs     branch_2241994
	mov     r0, #0x9
	pop     {r4,pc}
@ 0x2241994

.thumb
branch_2241994: @ 2241994 :thumb
	cmp     r0, #0x62
	bne     branch_224199c
	mov     r0, #0xa
	pop     {r4,pc}
@ 0x224199c

.thumb
branch_224199c: @ 224199c :thumb
	mov     r0, #0xb
	pop     {r4,pc}
@ 0x22419a0

.thumb
Function_22419a0: @ 22419a0 :thumb
	push    {r4,lr}
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x64
	bcc     branch_22419ba
	bl      ErrorHandling
.thumb
branch_22419ba: @ 22419ba :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	cmp     r0, #0x3c
	bcs     branch_22419c6
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22419c6

.thumb
branch_22419c6: @ 22419c6 :thumb
	bcc     branch_22419d0
	cmp     r0, #0x5a
	bcs     branch_22419d0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22419d0

.thumb
branch_22419d0: @ 22419d0 :thumb
	cmp     r0, #0x5a
	bcc     branch_22419dc
	cmp     r0, #0x5f
	bcs     branch_22419dc
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x22419dc

.thumb
branch_22419dc: @ 22419dc :thumb
	cmp     r0, #0x5f
	bcc     branch_22419e8
	cmp     r0, #0x63
	bcs     branch_22419e8
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22419e8

.thumb
branch_22419e8: @ 22419e8 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x22419ec

.thumb
Function_22419ec: @ 22419ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x64
	bcc     branch_2241a0a
	bl      ErrorHandling
.thumb
branch_2241a0a: @ 2241a0a :thumb
	lsl     r0, r6, #24
	lsr     r0, r0, #24
	cmp     r5, #0x0
	beq     branch_2241a1c
	cmp     r5, #0x1
	beq     branch_2241a40
	cmp     r5, #0x2
	beq     branch_2241a64
	b       branch_2241a88
@ 0x2241a1c

.thumb
branch_2241a1c: @ 2241a1c :thumb
	cmp     r0, #0x3c
	bcs     branch_2241a24
	mov     r4, #0x0
	b       branch_2241a8c
@ 0x2241a24

.thumb
branch_2241a24: @ 2241a24 :thumb
	cmp     r0, #0x5a
	bcs     branch_2241a2c
	mov     r4, #0x1
	b       branch_2241a8c
@ 0x2241a2c

.thumb
branch_2241a2c: @ 2241a2c :thumb
	cmp     r0, #0x5f
	bcs     branch_2241a34
	mov     r4, #0x2
	b       branch_2241a8c
@ 0x2241a34

.thumb
branch_2241a34: @ 2241a34 :thumb
	cmp     r0, #0x63
	bcs     branch_2241a3c
	mov     r4, #0x3
	b       branch_2241a8c
@ 0x2241a3c

.thumb
branch_2241a3c: @ 2241a3c :thumb
	mov     r4, #0x4
	b       branch_2241a8c
@ 0x2241a40

.thumb
branch_2241a40: @ 2241a40 :thumb
	cmp     r0, #0x28
	bcs     branch_2241a48
	mov     r4, #0x0
	b       branch_2241a8c
@ 0x2241a48

.thumb
branch_2241a48: @ 2241a48 :thumb
	cmp     r0, #0x50
	bcs     branch_2241a50
	mov     r4, #0x1
	b       branch_2241a8c
@ 0x2241a50

.thumb
branch_2241a50: @ 2241a50 :thumb
	cmp     r0, #0x5f
	bcs     branch_2241a58
	mov     r4, #0x2
	b       branch_2241a8c
@ 0x2241a58

.thumb
branch_2241a58: @ 2241a58 :thumb
	cmp     r0, #0x63
	bcs     branch_2241a60
	mov     r4, #0x3
	b       branch_2241a8c
@ 0x2241a60

.thumb
branch_2241a60: @ 2241a60 :thumb
	mov     r4, #0x4
	b       branch_2241a8c
@ 0x2241a64

.thumb
branch_2241a64: @ 2241a64 :thumb
	cmp     r0, #0x28
	bcs     branch_2241a6c
	mov     r4, #0x0
	b       branch_2241a8c
@ 0x2241a6c

.thumb
branch_2241a6c: @ 2241a6c :thumb
	cmp     r0, #0x50
	bcs     branch_2241a74
	mov     r4, #0x1
	b       branch_2241a8c
@ 0x2241a74

.thumb
branch_2241a74: @ 2241a74 :thumb
	cmp     r0, #0x5f
	bcs     branch_2241a7c
	mov     r4, #0x2
	b       branch_2241a8c
@ 0x2241a7c

.thumb
branch_2241a7c: @ 2241a7c :thumb
	cmp     r0, #0x63
	bcs     branch_2241a84
	mov     r4, #0x3
	b       branch_2241a8c
@ 0x2241a84

.thumb
branch_2241a84: @ 2241a84 :thumb
	mov     r4, #0x4
	b       branch_2241a8c
@ 0x2241a88

.thumb
branch_2241a88: @ 2241a88 :thumb
	bl      ErrorHandling
.thumb
branch_2241a8c: @ 2241a8c :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2241a90

.thumb
Function_2241a90: @ 2241a90 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	cmp     r1, #0xe0
	beq     branch_2241aac
	mov     r0, #0x5
	lsl     r0, r0, #6
	cmp     r1, r0
	bne     branch_2241ab8
.thumb
branch_2241aac: @ 2241aac :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, #0x3
	lsl     r0, r0, #1
	blx     _s32_div_f
	strb    r0, [r4, #0x0]
.thumb
branch_2241ab8: @ 2241ab8 :thumb
	pop     {r4,pc}
@ 0x2241aba


.align 2, 0


.thumb
Function_2241abc: @ 2241abc :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	mov     r4, r1
	bl      LoadVariableAreaAdress_19
	bl      Function_202da04
	cmp     r0, #0x1
	bne     branch_2241ad6
	ldrb    r0, [r4, #0x0]
	asr     r0, r0, #1
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2241ad6

.thumb
branch_2241ad6: @ 2241ad6 :thumb
	cmp     r0, #0x2
	bne     branch_2241ae2
	ldrb    r1, [r4, #0x0]
	lsr     r0, r1, #1
	add     r0, r1, r0
	strb    r0, [r4, #0x0]
.thumb
branch_2241ae2: @ 2241ae2 :thumb
	pop     {r4,pc}
@ 0x2241ae4

.thumb
Function_2241ae4: @ 2241ae4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r0, [r1, #0xd]
	cmp     r0, #0x0
	bne     branch_2241b1e
	ldrb    r0, [r1, #0xe]
	cmp     r0, #0x1c
	bne     branch_2241b1e
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r5, r0, #16
	cmp     r5, #0x2
	bcc     branch_2241b04
	bl      ErrorHandling
.thumb
branch_2241b04: @ 2241b04 :thumb
	cmp     r5, #0x0
	bne     branch_2241b1e
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      GetPkmnData
	mov     r1, #0x19
	blx     _u32_div_f
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x2241b1e

.thumb
branch_2241b1e: @ 2241b1e :thumb
	bl      PRNG
	ldr     r1, [pc, #0x18] @ 0x2241b3c, (=0xa3e)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x19
	bcc     branch_2241b34
	bl      ErrorHandling
.thumb
branch_2241b34: @ 2241b34 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	pop     {r3-r5,pc}
@ 0x2241b3a


.align 2


.word 0xa3e @ 0x2241b3c
.thumb
Function_2241b40: @ 2241b40 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	ldrh    r2, [r0, #0x6]
	ldrh    r1, [r0, #0x4]
	cmp     r1, r2
	bcc     branch_2241b54
	lsl     r0, r2, #24
	lsr     r5, r0, #24
	lsl     r0, r1, #24
	b       branch_2241b5a
@ 0x2241b54

.thumb
branch_2241b54: @ 2241b54 :thumb
	lsl     r0, r1, #24
	lsr     r5, r0, #24
	lsl     r0, r2, #24
.thumb
branch_2241b5a: @ 2241b5a :thumb
	lsr     r4, r0, #24
	bl      PRNG
	sub     r1, r4, r5
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r6, r0, #24
	ldrb    r0, [r7, #0xd]
	cmp     r0, #0x0
	bne     branch_2241ba4
	ldrb    r0, [r7, #0xe]
	cmp     r0, #0x37
	beq     branch_2241b84
	cmp     r0, #0x48
	beq     branch_2241b84
	cmp     r0, #0x2e
	bne     branch_2241ba4
.thumb
branch_2241b84: @ 2241b84 :thumb
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r7, r0, #16
	cmp     r7, #0x2
	bcc     branch_2241b94
	bl      ErrorHandling
.thumb
branch_2241b94: @ 2241b94 :thumb
	cmp     r7, #0x0
	bne     branch_2241ba0
	add     r0, r5, r6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2241ba0

.thumb
branch_2241ba0: @ 2241ba0 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2241ba4

.thumb
branch_2241ba4: @ 2241ba4 :thumb
	add     r0, r5, r6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3-r7,pc}
@ 0x2241bac

.thumb
Function_2241bac: @ 2241bac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x10]
	ldr     r6, [sp, #0x40]
	str     r1, [sp, #0x14]
	mov     r0, #0xb
	str     r2, [sp, #0x18]
	mov     r5, r3
	bl      AllocPkmnData
	str     r0, [sp, #0x1c]
	bl      ClearCompletePkmnDataStructure
	ldrb    r0, [r6, #0xd]
	mov     r7, #0x0
	cmp     r0, #0x0
	bne     branch_2241c38
	ldrb    r0, [r6, #0xe]
	cmp     r0, #0x38
	bne     branch_2241c16
	ldr     r0, [sp, #0x10]
	mov     r1, #0x12
	bl      GetPkmnBaseData1
	cmp     r0, #0x0
	beq     branch_2241c38
	cmp     r0, #0xfe
	beq     branch_2241c38
	cmp     r0, #0xff
	beq     branch_2241c38
	bl      PRNG
	ldr     r1, [pc, #0xcc] @ 0x2241cbc, (=0x5556)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x3
	bcc     branch_2241bfe
	bl      ErrorHandling
.thumb
branch_2241bfe: @ 2241bfe :thumb
	cmp     r4, #0x0
	beq     branch_2241c38
	ldr     r0, [sp, #0x44]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x24]
	mov     r7, #0x1
	b       branch_2241c38
@ 0x2241c16

.thumb
branch_2241c16: @ 2241c16 :thumb
	cmp     r0, #0x1c
	bne     branch_2241c38
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_2241c2a
	bl      ErrorHandling
.thumb
branch_2241c2a: @ 2241c2a :thumb
	cmp     r4, #0x0
	bne     branch_2241c38
	ldr     r0, [sp, #0x44]
	bl      Function_2075bcc
	str     r0, [sp, #0x20]
	mov     r7, #0x1
.thumb
branch_2241c38: @ 2241c38 :thumb
	mov     r0, r5
	bl      Function_2075e64
	mov     r4, r0
	cmp     r7, #0x0
	beq     branch_2241c86
.thumb
branch_2241c44: @ 2241c44 :thumb
	ldrb    r0, [r6, #0xe]
	cmp     r0, #0x38
	bne     branch_2241c6c
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	bl      Function_2075dac
	mov     r7, r0
	cmp     r7, #0x2
	bne     branch_2241c5c
	bl      ErrorHandling
.thumb
branch_2241c5c: @ 2241c5c :thumb
	ldr     r0, [sp, #0x24]
	cmp     r7, r0
	bne     branch_2241c86
	mov     r0, r5
	bl      Function_2075e64
	mov     r4, r0
	b       branch_2241c44
@ 0x2241c6c

.thumb
branch_2241c6c: @ 2241c6c :thumb
	cmp     r0, #0x1c
	bne     branch_2241c44
	mov     r0, r4
	bl      PkmnData_DivBy25
	ldr     r1, [sp, #0x20]
	cmp     r0, r1
	beq     branch_2241c86
	mov     r0, r5
	bl      Function_2075e64
	mov     r4, r0
	b       branch_2241c44
@ 0x2241c86

.thumb
branch_2241c86: @ 2241c86 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x0]
	mov     r3, #0x20
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	bl      InitPkmnData
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x48]
	mov     r1, r6
	bl      Function_2242514
	cmp     r0, #0x0
	bne     branch_2241cb2
	bl      ErrorHandling
branch_2241cb2: @ 2241cb2 :thumb
	ldr     r0, [sp, #0x1c]
	bl      free
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2241cbc

.word 0x5556 @ 0x2241cbc
.thumb
Function_2241cc0: @ 2241cc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r0, #0xb
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x10]
	mov     r5, r3
	bl      AllocPkmnData
	mov     r4, r0
	bl      ClearCompletePkmnDataStructure
	mov     r0, r7
	mov     r1, #0x12
	mov     r6, #0x1
	bl      GetPkmnBaseData1
	cmp     r0, #0x0
	beq     branch_2241cee
	cmp     r0, #0xfe
	beq     branch_2241cee
	cmp     r0, #0xff
	bne     branch_2241cf0
.thumb
branch_2241cee: @ 2241cee :thumb
	mov     r6, #0x0
.thumb
branch_2241cf0: @ 2241cf0 :thumb
	cmp     r6, #0x0
	beq     branch_2241d80
	ldrb    r0, [r5, #0xd]
	cmp     r0, #0x0
	bne     branch_2241d80
	ldrb    r0, [r5, #0xe]
	cmp     r0, #0x38
	bne     branch_2241d80
	bl      PRNG
	ldr     r1, [pc, #0xb8] @ 0x2241dc0, (=0x5556)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x3
	bcc     branch_2241d16
	bl      ErrorHandling
.thumb
branch_2241d16: @ 2241d16 :thumb
	cmp     r6, #0x0
	beq     branch_2241d80
	ldr     r0, [sp, #0x28]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x1
	bne     branch_2241d30
	mov     r6, #0x0
	b       branch_2241d3c
@ 0x2241d30

.thumb
branch_2241d30: @ 2241d30 :thumb
	cmp     r6, #0x0
	bne     branch_2241d38
	mov     r6, #0x1
	b       branch_2241d3c
@ 0x2241d38

.thumb
branch_2241d38: @ 2241d38 :thumb
	bl      ErrorHandling
.thumb
branch_2241d3c: @ 2241d3c :thumb
	ldr     r0, [sp, #0x28]
	mov     r1, r5
	bl      Function_2241ae4
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x20
	bl      Function_2074088
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, r5
	bl      SetPkmnData
	ldr     r0, [sp, #0x10]
	ldr     r3, [sp, #0x2c]
	mov     r1, r5
	mov     r2, r4
	bl      Function_2242514
	cmp     r0, #0x0
	bne     branch_2241d76
	bl      ErrorHandling
branch_2241d76: @ 2241d76 :thumb
	mov     r0, r4
	bl      free
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2241d80

.thumb
branch_2241d80: @ 2241d80 :thumb
	ldr     r0, [sp, #0x28]
	mov     r1, r5
	bl      Function_2241ae4
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0xc]
	mov     r0, r4
	mov     r1, r7
	mov     r3, #0x20
	bl      Function_2074044
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, r5
	bl      SetPkmnData
	ldr     r0, [sp, #0x10]
	ldr     r3, [sp, #0x2c]
	mov     r1, r5
	mov     r2, r4
	bl      Function_2242514
	cmp     r0, #0x0
	bne     branch_2241db4
	bl      ErrorHandling
.thumb
branch_2241db4: @ 2241db4 :thumb
	mov     r0, r4
	bl      free
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2241dbe


.align 2


.word 0x5556 @ 0x2241dc0
.thumb
Function_2241dc4: @ 2241dc4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0xc]
	mov     r7, #0x0
	add     r1, sp, #0x10
	strb    r7, [r1, #0x0]
	add     r1, sp, #0x18
	ldrb    r1, [r1, #0x10]
	mov     r6, r0
	mov     r5, r2
	mov     r4, r3
	cmp     r1, #0x0
	beq     branch_2241de8
	cmp     r1, #0x1
	beq     branch_2241e44
	cmp     r1, #0x2
	beq     branch_2241e90
	b       branch_2241ede
@ 0x2241de8

.thumb
branch_2241de8: @ 2241de8 :thumb
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x2a
	str     r1, [sp, #0x4]
	add     r1, sp, #0x10
	str     r1, [sp, #0x8]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0xc
	bl      Function_224222c
	cmp     r0, #0x0
	bne     branch_2241e26
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0xc
	bl      Function_224222c
	cmp     r0, #0x0
	bne     branch_2241e26
	bl      Function_2241904
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
.thumb
branch_2241e26: @ 2241e26 :thumb
	add     r2, sp, #0x10
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_22425d4
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
	ldrb    r0, [r1, #0x0]
	lsl     r0, r0, #3
	add     r0, r4, r0
	ldrh    r0, [r0, #0x4]
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	b       branch_2241ee2
@ 0x2241e44

.thumb
branch_2241e44: @ 2241e44 :thumb
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x2a
	str     r1, [sp, #0x4]
	add     r1, sp, #0x10
	str     r1, [sp, #0x8]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_224222c
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_224222c
	cmp     r0, #0x0
	bne     branch_2241e7e
	bl      Function_22419a0
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
.thumb
branch_2241e7e: @ 2241e7e :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x0]
	mov     r1, r5
	lsl     r0, r0, #3
	add     r0, r4, r0
	bl      Function_2241b40
	mov     r7, r0
	b       branch_2241ee2
@ 0x2241e90

.thumb
branch_2241e90: @ 2241e90 :thumb
	mov     r1, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x2a
	str     r1, [sp, #0x4]
	add     r1, sp, #0x10
	str     r1, [sp, #0x8]
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_224222c
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_224222c
	cmp     r0, #0x0
	bne     branch_2241ecc
	ldr     r0, [sp, #0xc]
	bl      Function_22419ec
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
.thumb
branch_2241ecc: @ 2241ecc :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x0]
	mov     r1, r5
	lsl     r0, r0, #3
	add     r0, r4, r0
	bl      Function_2241b40
	mov     r7, r0
	b       branch_2241ee2
@ 0x2241ede

.thumb
branch_2241ede: @ 2241ede :thumb
	bl      ErrorHandling
.thumb
branch_2241ee2: @ 2241ee2 :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_22422d0
	cmp     r0, #0x0
	beq     branch_2241ef6
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241ef6

.thumb
branch_2241ef6: @ 2241ef6 :thumb
	mov     r0, r7
	mov     r1, r5
	bl      Function_2242388
	cmp     r0, #0x1
	bne     branch_2241f08
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2241f08

.thumb
branch_2241f08: @ 2241f08 :thumb
	ldr     r0, [sp, #0x30]
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x0]
	ldr     r2, [sp, #0x2c]
	mov     r1, r7
	lsl     r0, r0, #3
	ldr     r0, [r4, r0]
	mov     r3, r5
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2241cc0
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2241f2a


.align 2, 0


.thumb
Function_2241f2c: @ 2241f2c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r5, #0x0
	bne     branch_2241f40
	bl      ErrorHandling
.thumb
branch_2241f40: @ 2241f40 :thumb
	lsl     r0, r4, #24
	lsr     r1, r0, #24
	cmp     r7, #0x0
	beq     branch_2241f62
	ldr     r0, [sp, #0x24]
	ldr     r3, [sp, #0x20]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	mov     r2, r6
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x8]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2241bac
	b       branch_2241f76
@ 0x2241f62

.thumb
branch_2241f62: @ 2241f62 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r3, [sp, #0x24]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r2, r6
	str     r0, [sp, #0x4]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2241cc0
.thumb
branch_2241f76: @ 2241f76 :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2241f7c

.thumb
Function_2241f7c: @ 2241f7c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r6, r1
	mov     r1, #0x0
	add     r0, sp, #0x10
	strb    r1, [r0, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2a
	mov     r5, r3
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r1, r2
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xc
	bl      Function_224222c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bne     branch_2241fd2
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xc
	bl      Function_224222c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bne     branch_2241fd2
	bl      Function_2241904
	add     r1, sp, #0x10
	strb    r0, [r1, #0x0]
.thumb
branch_2241fd2: @ 2241fd2 :thumb
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #3
	add     r1, r5, r0
	ldrh    r1, [r1, #0x4]
	ldr     r5, [r5, r0]
	ldr     r0, [sp, #0x30]
	lsl     r1, r1, #24
	lsr     r7, r1, #24
	cmp     r0, #0x0
	bne     branch_2241ffe
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, r5
	mov     r2, r7
	bl      Function_2069774
	mov     r0, r4
	bl      Function_2069b74
	b       branch_224201a
@ 0x2241ffe

.thumb
branch_2241ffe: @ 2241ffe :thumb
	cmp     r5, r0
	bne     branch_2242012
	mov     r5, r0
	ldr     r0, [sp, #0x34]
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r0, r4
	bl      Function_2069b74
	b       branch_224201a
@ 0x2242012

.thumb
branch_2242012: @ 2242012 :thumb
	add     r4, #0x94
	ldr     r0, [r4, #0x0]
	bl      Function_2069434
.thumb
branch_224201a: @ 224201a :thumb
	ldr     r0, [sp, #0x2c]
	str     r6, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r0, r5, #16
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0xc]
	lsr     r0, r0, #16
	mov     r1, r7
	bl      Function_2241cc0
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2242034


.thumb
Function_2242034: @ 2242034 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r4, r1

	bl      LoadEncounterDataEx
	str     r0, [sp, #0x8]

	ldr     r0, [r5, #0xc]
	bl      LoadPokePartyAdress
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	mov     r2, #0x0
	add     r3, sp, #0x10
	bl      Function_2242634
	bl      PRNG
	ldr     r1, [pc, #0x6c] @ 0x22420d0, (=0x1746)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0xb
	bcc     branch_2242072
	bl      ErrorHandling
branch_2242072: @ 2242072 :thumb
	add     r0, r6, #0x5
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0xd]
	cmp     r1, #0x0
	bne     branch_22420a4
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x37
	beq     branch_224208e
	cmp     r0, #0x48
	beq     branch_224208e
	cmp     r0, #0x2e
	bne     branch_22420a4
branch_224208e: @ 224208e :thumb
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r6, r0, #16
	cmp     r6, #0x2
	bcc     branch_224209e
	bl      ErrorHandling
branch_224209e: @ 224209e :thumb

	cmp     r6, #0x0
	beq     branch_22420a4
	mov     r7, #0xf
branch_22420a4: @ 22420a4 :thumb

	mov     r0, r5
	bl      0x21f0040
	mov     r1, #0x63
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	mov     r0, #0x2
	orr     r0, r2
	str     r0, [r4, r1]
	ldr     r0, [sp, #0xc]
	mov     r1, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     r3, sp, #0x10
	str     r4, [sp, #0x4]
	bl      Function_2241cc0

	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22420d0

.word 0x1746 @ 0x22420d0



.thumb
Function_22420d4: @ 22420d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r2, [sp, #0x8]
	ldr     r0, [r5, #0xc]
	mov     r7, r1
	mov     r6, r3
	bl      LoadPokePartyAdress
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	add     r3, sp, #0xc
	bl      Function_2242634
	str     r4, [sp, #0x0]
	str     r6, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	mov     r0, r7
	mov     r2, #0x1
	add     r3, sp, #0xc
	bl      Function_2241cc0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224210e


.align 2, 0
.thumb
.globl Function_6_2242110
Function_6_2242110: @ 2242110 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r4, #0x0
	bl      Function_205de6c
	cmp     r0, #0x0
	beq     branch_224213e
	mov     r0, r6
	bl      Function_205db58
	cmp     r0, #0x0
	beq     branch_2242136
	mov     r0, r5
	bl      Function_2242158
	mov     r4, r0
	b       branch_224213e
@ 0x2242136

.thumb
branch_2242136: @ 2242136 :thumb
	mov     r0, r5
	bl      Function_224214c
	mov     r4, r0
.thumb
branch_224213e: @ 224213e :thumb
	cmp     r4, #0x0
	beq     branch_2242146
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242146

.thumb
branch_2242146: @ 2242146 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224214a


.align 2, 0


.thumb
Function_224214c: @ 224214c :thumb
	push    {r3,lr}
	bl      Function_203a640
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2242156


.align 2, 0


.thumb
Function_2242158: @ 2242158 :thumb
	push    {r3,lr}
	bl      Function_203a640
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2242164

.thumb
Function_2242164: @ 2242164 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203a640
	cmp     r4, #0x0
	beq     branch_224217a
	cmp     r4, #0x1
	beq     branch_2242182
	cmp     r4, #0x2
	beq     branch_224218a
	b       branch_2242192
@ 0x224217a

.thumb
branch_224217a: @ 224217a :thumb
	mov     r1, #0x49
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x2242182

.thumb
branch_2242182: @ 2242182 :thumb
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x224218a

.thumb
branch_224218a: @ 224218a :thumb
	mov     r1, #0x5f
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r4,pc}
@ 0x2242192

.thumb
branch_2242192: @ 2242192 :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224219a


.align 2, 0


.thumb
Function_224219c: @ 224219c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mov     r7, r2
	str     r3, [sp, #0x4]
	mov     r4, r0
	add     r1, sp, #0x10
.thumb
branch_22421ae: @ 22421ae :thumb
	strb    r4, [r1, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0xc
	bcc     branch_22421ae
	ldr     r0, [sp, #0x0]
	mov     r5, r4
	cmp     r0, #0x0
	bls     branch_2242204
.thumb
branch_22421c2: @ 22421c2 :thumb
	lsl     r0, r5, #3
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r0]
	mov     r1, #0x6
	bl      GetPkmnBaseData1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	mov     r1, #0x7
	ldr     r0, [r6, r0]
	bl      GetPkmnBaseData1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldr     r0, [sp, #0x8]
	cmp     r0, r7
	beq     branch_22421ec
	cmp     r1, r7
	bne     branch_22421f8
.thumb
branch_22421ec: @ 22421ec :thumb
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	mov     r0, r4
	lsr     r4, r1, #24
	add     r1, sp, #0x10
	strb    r5, [r1, r0]
.thumb
branch_22421f8: @ 22421f8 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	bcc     branch_22421c2
.thumb
branch_2242204: @ 2242204 :thumb
	cmp     r4, #0x0
	beq     branch_224220e
	ldr     r0, [sp, #0x0]
	cmp     r4, r0
	bne     branch_2242214
.thumb
branch_224220e: @ 224220e :thumb
	add     sp, #0x1c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2242214

.thumb
branch_2242214: @ 2242214 :thumb
	bl      PRNG
	mov     r1, r4
	blx     _s32_div_f
	add     r0, sp, #0x10
	ldrb    r1, [r0, r1]
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224222c

.thumb
Function_224222c: @ 224222c :thumb
	push    {r4-r6,lr}
	ldrb    r0, [r1, #0xd]
	mov     r5, r2
	mov     r6, r3
	cmp     r0, #0x0
	bne     branch_2242266
	add     r0, sp, #0x0
	ldrb    r1, [r1, #0xe]
	ldrb    r0, [r0, #0x14]
	cmp     r1, r0
	bne     branch_2242266
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_2242252
	bl      ErrorHandling
.thumb
branch_2242252: @ 2242252 :thumb
	cmp     r4, #0x0
	bne     branch_2242266
	add     r2, sp, #0x0
	ldrb    r2, [r2, #0x10]
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, r6
	bl      Function_224219c
	pop     {r4-r6,pc}
@ 0x2242266

.thumb
branch_2242266: @ 2242266 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x224226a


.align 2, 0


.thumb
Function_224226c: @ 224226c :thumb
	push    {r3,r4}
	ldrb    r4, [r2, #0xd]
	cmp     r4, #0x0
	bne     branch_22422c8
	cmp     r0, #0x0
	ldrb    r0, [r2, #0xe]
	beq     branch_224227e
	cmp     r0, #0x3c
	b       branch_22422c2
@ 0x224227e

.thumb
branch_224227e: @ 224227e :thumb
	cmp     r0, #0x47
	beq     branch_224228a
	cmp     r0, #0x63
	beq     branch_224228a
	cmp     r0, #0x23
	bne     branch_224228e
.thumb
branch_224228a: @ 224228a :thumb
	lsl     r1, r1, #1
	b       branch_22422c2
@ 0x224228e

.thumb
branch_224228e: @ 224228e :thumb
	cmp     r0, #0x8
	bne     branch_224229e
	cmp     r3, #0xa
	bne     branch_22422c2
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	b       branch_22422c2
@ 0x224229e

.thumb
branch_224229e: @ 224229e :thumb
	cmp     r0, #0x51
	bne     branch_22422b0
	.hword  0x1f58 @ sub r0, r3, #0x5
	cmp     r0, #0x2
	bhi     branch_22422c2
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	b       branch_22422c2
@ 0x22422b0

.thumb
branch_22422b0: @ 22422b0 :thumb
	cmp     r0, #0x49
	beq     branch_22422bc
	cmp     r0, #0x5f
	beq     branch_22422bc
	cmp     r0, #0x1
	bne     branch_22422c2
.thumb
branch_22422bc: @ 22422bc :thumb
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
.thumb
branch_22422c2: @ 22422c2 :thumb
	cmp     r1, #0x64
	ble     branch_22422c8
	mov     r1, #0x64
.thumb
branch_22422c8: @ 22422c8 :thumb
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	pop     {r3,r4}
	bx      lr
@ 0x22422d0

.thumb
Function_22422d0: @ 22422d0 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r2, [r0, #0x8]
	cmp     r2, #0x0
	beq     branch_22422de
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22422de

.thumb
branch_22422de: @ 22422de :thumb
	ldrb    r2, [r0, #0xd]
	cmp     r2, #0x0
	bne     branch_2242322
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x33
	beq     branch_22422ee
	cmp     r0, #0x16
	bne     branch_2242322
.thumb
branch_22422ee: @ 22422ee :thumb
	mov     r0, r1
	mov     r1, #0xa1
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x5
	bhi     branch_2242304
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242304

.thumb
branch_2242304: @ 2242304 :thumb
	.hword  0x1f40 @ sub r0, r0, #0x5
	cmp     r4, r0
	bgt     branch_2242322
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_224231a
	bl      ErrorHandling
.thumb
branch_224231a: @ 224231a :thumb
	cmp     r4, #0x0
	bne     branch_2242322
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242322

.thumb
branch_2242322: @ 2242322 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2242326


.align 2, 0


.thumb
Function_2242328: @ 2242328 :thumb
	push    {r4,lr}
	mov     r4, r2
	cmp     r1, #0x0
	bne     branch_224233c
	mov     r0, #0xb
	mov     r1, #0x0
	bl      Function_2051d8c
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x224233c

.thumb
branch_224233c: @ 224233c :thumb
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      Function_203a784
	mov     r1, r0
	ldrh    r1, [r1, #0x0]
	mov     r0, #0xb
	bl      Function_2051f24
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2242354

.thumb
Function_2242354: @ 2242354 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r6, r2
	mov     r4, r3
	cmp     r1, #0x0
	beq     branch_2242382
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	mov     r1, #0x1
	bl      Function_202d814
	mov     r1, r4
	add     r1, #0x38
	str     r1, [sp, #0x0]
	ldr     r2, [r5, #0x1c]
	add     r4, #0x30
	ldr     r2, [r2, #0x0]
	mov     r1, r6
	mov     r3, r4
	bl      Function_2242f74
.thumb
branch_2242382: @ 2242382 :thumb
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2242386


.align 2, 0


.thumb
Function_2242388: @ 2242388 :thumb
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_2242398
	ldrb    r1, [r1, #0xc]
	cmp     r1, r0
	bls     branch_2242398
	mov     r0, #0x1
	bx      lr
@ 0x2242398

.thumb
branch_2242398: @ 2242398 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x224239c

.thumb
Function_224239c: @ 224239c :thumb
	push    {r0-r3}
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r0, #0x4
	mov     r6, r2
	bl      AllocPkmnData
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x4
	bl      Function_202d93c
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_202d93c
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	mov     r0, r5
	mov     r1, #0x2
	bl      Function_202d93c
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_202d93c
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x7
	bl      Function_202d93c
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_202d93c
	add     r1, sp, #0x10
	strh    r0, [r1, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0xc]
	lsl     r1, r1, #16
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	lsr     r1, r1, #16
	mov     r2, r7
	bl      Function_2074158
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x30
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa0
	add     r2, sp, #0x14
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0xa3
	add     r2, sp, #0x10
	bl      SetPkmnData
	ldr     r0, [r6, #0x8]
	mov     r1, r4
	bl      CopyPkmnDataToParty
	cmp     r0, #0x0
	bne     branch_2242430
	bl      ErrorHandling
.thumb
branch_2242430: @ 2242430 :thumb
	mov     r0, r4
	bl      free
	add     sp, #0x18
	pop     {r3-r7}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2242440

.thumb
Function_2242440: @ 2242440 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0xc]
	str     r1, [sp, #0x4]
	mov     r5, #0x0
	bl      LoadVariableAreaAdress_19
	mov     r6, r0
	mov     r4, r5
.thumb
branch_2242454: @ 2242454 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_202d8c4
	bl      Function_206c3c8
	mov     r7, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_202d8f8
	cmp     r0, #0x0
	beq     branch_224248c
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	cmp     r7, r0
	bne     branch_224248c
	mov     r0, r6
	mov     r1, r4
	bl      Function_202d924
	lsl     r2, r5, #2
	add     r1, sp, #0x8
	str     r0, [r1, r2]
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
.thumb
branch_224248c: @ 224248c :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x6
	bcc     branch_2242454
	cmp     r5, #0x0
	bne     branch_22424a0
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22424a0

.thumb
branch_22424a0: @ 22424a0 :thumb
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_22424b0
	bl      ErrorHandling
.thumb
branch_22424b0: @ 22424b0 :thumb
	cmp     r4, #0x0
	bne     branch_22424ba
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22424ba

.thumb
branch_22424ba: @ 22424ba :thumb
	cmp     r5, #0x1
	bls     branch_2242502
	cmp     r5, #0x0
	bne     branch_22424c6
	bl      ErrorHandling
.thumb
branch_22424c6: @ 22424c6 :thumb
	cmp     r5, #0x1
	bhi     branch_22424ce
	mov     r4, #0x0
	b       branch_22424f6
@ 0x22424ce

.thumb
branch_22424ce: @ 22424ce :thumb
	bl      PRNG
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x2242510, (=0xffff)
	mov     r1, r5
	blx     _s32_div_f
	mov     r1, r0
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #16
	mov     r0, r4
	lsr     r1, r1, #16
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, r5
	bcc     branch_22424f6
	bl      ErrorHandling
.thumb
branch_22424f6: @ 22424f6 :thumb
	lsl     r1, r4, #2
	add     r0, sp, #0x8
	ldr     r1, [r0, r1]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	b       branch_2242508
@ 0x2242502

.thumb
branch_2242502: @ 2242502 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
.thumb
branch_2242508: @ 2242508 :thumb
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x224250e


.align 2


.word 0xffff @ 0x2242510
.thumb
Function_2242514: @ 2242514 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	str     r0, [sp, #0x0]
	ldrb    r0, [r5, #0xd]
	mov     r7, r2
	str     r3, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2242530
	ldrb    r0, [r5, #0xe]
	cmp     r0, #0xe
	bne     branch_2242530
	mov     r2, #0x1
	b       branch_2242532
@ 0x2242530

.thumb
branch_2242530: @ 2242530 :thumb
	mov     r2, #0x0
.thumb
branch_2242532: @ 2242532 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	ldr     r1, [r1, #0x0]
	bl      Function_2077f0c
	mov     r6, #0x0
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, r6
	bl      GetPkmnData
	ldr     r1, [pc, #0x7c] @ 0x22425c8, (=0x1a6)
	cmp     r0, r1
	bne     branch_2242562
	ldrb    r0, [r5, #0xf]
	mov     r6, #0x1
	cmp     r0, #0x0
	add     r0, sp, #0x8
	bne     branch_224255e
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	b       branch_22425a6
@ 0x224255e

.thumb
branch_224255e: @ 224255e :thumb
	strb    r6, [r0, #0x0]
	b       branch_22425a6
@ 0x2242562

.thumb
branch_2242562: @ 2242562 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, r1
	bne     branch_224257c
	ldrb    r0, [r5, #0x10]
	mov     r6, #0x1
	cmp     r0, #0x0
	add     r0, sp, #0x8
	bne     branch_2242578
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	b       branch_22425a6
@ 0x2242578

.thumb
branch_2242578: @ 2242578 :thumb
	strb    r6, [r0, #0x0]
	b       branch_22425a6
@ 0x224257c

.thumb
branch_224257c: @ 224257c :thumb
	cmp     r0, #0xc9
	bne     branch_22425a6
	ldrb    r0, [r5, #0x11]
	mov     r6, #0x1
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x44] @ 0x22425cc, (=0x2248ff0)
	ldr     r0, [r0, r1]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	bl      PRNG
	mov     r1, r4
	blx     _s32_div_f
	ldrb    r0, [r5, #0x11]
	lsl     r2, r0, #3
	ldr     r0, [pc, #0x30] @ 0x22425d0, (=0x2248ff4)
	ldr     r0, [r0, r2]
	ldrb    r1, [r0, r1]
	add     r0, sp, #0x8
	strb    r1, [r0, #0x0]
.thumb
branch_22425a6: @ 22425a6 :thumb
	cmp     r6, #0x0
	beq     branch_22425b4
	mov     r0, r7
	mov     r1, #0x70
	add     r2, sp, #0x8
	bl      SetPkmnData
.thumb
branch_22425b4: @ 22425b4 :thumb
	ldr     r0, [sp, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x4]
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	mov     r1, r7
	bl      CopyPkmnDataToParty
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22425c8

.word 0x1a6 @ 0x22425c8
.word 0x2248ff0 @ 0x22425cc
.word 0x2248ff4 @ 0x22425d0
.thumb
Function_22425d4: @ 22425d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r1, #0xd]
	mov     r4, r2
	cmp     r0, #0x0
	bne     branch_2242630
	ldrb    r0, [r1, #0xe]
	cmp     r0, #0x48
	beq     branch_22425ee
	cmp     r0, #0x37
	beq     branch_22425ee
	cmp     r0, #0x2e
	bne     branch_2242630
.thumb
branch_22425ee: @ 22425ee :thumb
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r6, r0, #16
	cmp     r6, #0x2
	bcc     branch_22425fe
	bl      ErrorHandling
.thumb
branch_22425fe: @ 22425fe :thumb
	cmp     r6, #0x0
	bne     branch_2242606
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2242606

.thumb
branch_2242606: @ 2242606 :thumb
	mov     r1, #0x0
.thumb
branch_2242608: @ 2242608 :thumb
	lsl     r2, r1, #3
	lsl     r7, r4, #3
	add     r6, r5, r2
	ldr     r3, [r5, r2]
	ldr     r2, [r5, r7]
	add     r0, r5, r7
	cmp     r3, r2
	bne     branch_2242622
	ldrh    r2, [r6, #0x4]
	ldrh    r0, [r0, #0x4]
	cmp     r2, r0
	bls     branch_2242622
	mov     r4, r1
.thumb
branch_2242622: @ 2242622 :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0xc
	bcc     branch_2242608
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2242630

.thumb
branch_2242630: @ 2242630 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2242634

.thumb
Function_2242634: @ 2242634 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r6, r0
	mov     r5, r2
	mov     r0, r7
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r3
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_224265a
	mov     r2, #0x0
	mov     r0, r7
	mov     r1, #0xa
	strb    r2, [r4, #0xd]
	bl      GetPkmnData
	b       branch_2242660
@ 0x224265a

.thumb
branch_224265a: @ 224265a :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0xd]
	mov     r0, #0x7b
.thumb
branch_2242660: @ 2242660 :thumb
	strb    r0, [r4, #0xe]
	mov     r0, #0x0
	strb    r0, [r4, #0xc]
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x8]
	cmp     r5, #0x0
	beq     branch_224269c
	mov     r1, r5
	add     r1, #0x8c
	ldr     r1, [r1, #0x0]
	strb    r1, [r4, #0xf]
	mov     r1, r5
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	strb    r1, [r4, #0x10]
	mov     r1, r5
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_224269a
	cmp     r1, #0x8
	ble     branch_2242690
	bl      ErrorHandling
.thumb
branch_2242690: @ 2242690 :thumb
	add     r5, #0xa0
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x11]
	b       branch_224269c
@ 0x224269a

.thumb
branch_224269a: @ 224269a :thumb
	strb    r0, [r4, #0x11]
.thumb
branch_224269c: @ 224269c :thumb
	ldr     r0, [r6, #0xc]
	bl      LoadTrainerDataAdress
	bl      GetTrainerID
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x22426aa


.align 2, 0


.thumb
Function_22426ac: @ 22426ac :thumb
	ldr     r3, [pc, #0x4] @ 0x22426b4, (=0x2018185)
	mov     r1, #0x17
	lsl     r1, r1, #4
	bx      r3
@ 0x22426b4

.word 0x2018185 @ 0x22426b4
.thumb
Function_22426b8: @ 22426b8 :thumb
	ldr     r3, [pc, #0x0] @ 0x22426bc, (=0x20181c5)
	bx      r3
@ 0x22426bc

.word 0x20181c5 @ 0x22426bc
.thumb
Function_22426c0: @ 22426c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r0, #0x5a
	mov     r4, r1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r7, r0]
	mov     r0, r4
	mov     r1, #0x12
	bl      GetPkmnBaseData1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_22426e8
	cmp     r0, #0xfe
	beq     branch_22426ec
	cmp     r0, #0xff
	beq     branch_22426f0
	b       branch_22426f4
@ 0x22426e8

.thumb
branch_22426e8: @ 22426e8 :thumb
	mov     r2, #0x0
	b       branch_224270c
@ 0x22426ec

.thumb
branch_22426ec: @ 22426ec :thumb
	mov     r2, #0x1
	b       branch_224270c
@ 0x22426f0

.thumb
branch_22426f0: @ 22426f0 :thumb
	mov     r2, #0x2
	b       branch_224270c
@ 0x22426f4

.thumb
branch_22426f4: @ 22426f4 :thumb
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	beq     branch_224270a
	mov     r2, #0x0
	b       branch_224270c
@ 0x224270a

.thumb
branch_224270a: @ 224270a :thumb
	mov     r2, #0x1
.thumb
branch_224270c: @ 224270c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r7
	lsl     r1, r4, #16
	lsl     r2, r2, #24
	add     r0, #0x28
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_2075fb4
	mov     r1, r7
	mov     r0, #0x1
	add     r1, #0x3c
	mov     r2, #0x4
	bl      Function_20095c4
	str     r0, [r7, #0x38]
	mov     r0, #0x61
	mov     r1, #0x4
	bl      LoadFromNARC_8
	ldr     r4, [pc, #0xb0] @ 0x22427f0, (=0x2249030)
	str     r0, [sp, #0x10]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_2242744: @ 2242744 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r6
	mov     r2, #0x4
	bl      Function_2009714
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r5!, {r0}
	cmp     r6, #0x4
	blt     branch_2242744
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x5
	bl      Function_2009a4c
	str     r0, [r7, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [r7, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2009b04
	str     r0, [r7, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r7, #0x18]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r2, #0xc
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r7, #0x1c]
	ldrh    r0, [r7, #0x28]
	ldrh    r1, [r7, #0x2a]
	mov     r2, #0x4
	bl      Function_201363c
	str     r0, [r7, #0x20]
	ldrh    r0, [r7, #0x28]
	ldrh    r1, [r7, #0x2c]
	mov     r2, #0x4
	bl      Function_2013660
	str     r0, [r7, #0x24]
	ldr     r0, [r7, #0x0]
	ldr     r1, [r7, #0x4]
	ldr     r2, [r7, #0x20]
	ldr     r3, [r7, #0x24]
	bl      Function_2242880
	ldr     r0, [sp, #0x10]
	bl      Call_FS_CloseFile
	mov     r0, r7
	bl      Function_22428f8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22427ee


.align 2


.word 0x2249030 @ 0x22427f0
.thumb
Function_22427f4: @ 22427f4 :thumb
	mov     r1, r0
	mov     r0, #0x5a
	mov     r2, #0x1
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	ldr     r3, [pc, #0xc] @ 0x224280c, (=0x200d9e9)
	mov     r2, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r2, [r1, r0]
	ldr     r0, [pc, #0x8] @ 0x2242810, (=0x2242861)
	bx      r3
@ 0x224280a


.align 2


.word 0x200d9e9 @ 0x224280c
.word 0x2242861 @ 0x2242810
.thumb
Function_2242814: @ 2242814 :thumb
	mov     r1, #0x5a
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	bx      lr
@ 0x224281e


.align 2, 0


.thumb
Function_2242820: @ 2242820 :thumb
	mov     r1, #0x5b
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x2242828

.thumb
Function_2242828: @ 2242828 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      Function_200a4e4
	ldr     r0, [r5, #0x14]
	bl      Function_200a6dc
	mov     r4, #0x0
.thumb
branch_224283a: @ 224283a :thumb
	lsl     r0, r4, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_224283a
	ldr     r0, [r5, #0x38]
	bl      Function_2021964
	ldr     r0, [r5, #0x20]
	bl      free
	ldr     r0, [r5, #0x24]
	bl      free
	pop     {r3-r5,pc}
@ 0x2242860

.thumb
Function_2242860: @ 2242860 :thumb
	push    {r3,lr}
	mov     r2, #0x5a
	lsl     r2, r2, #2
	ldr     r3, [r1, r2]
	cmp     r3, #0x0
	beq     branch_2242874
	ldr     r0, [r1, #0x38]
	bl      Function_20219f8
	pop     {r3,pc}
@ 0x2242874

.thumb
branch_2242874: @ 2242874 :thumb
	mov     r3, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	str     r3, [r1, r2]
	bl      Function_200da58
	pop     {r3,pc}
@ 0x2242880

.thumb
Function_2242880: @ 2242880 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r1, #0x0
	mov     r4, r2
	mov     r6, r3
	bl      Function_2009dc8
	mov     r5, r0
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2009dc8
	mov     r7, r0
	mov     r0, r5
	bl      Function_200a3dc
	mov     r0, r7
	bl      Function_200a640
	mov     r0, r5
	bl      Function_200a534
	mov     r5, r0
	mov     r0, r7
	mov     r1, r5
	bl      Function_200a72c
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x1
	blx     Function_20a81b0
	str     r0, [sp, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	blx     Function_20a81fc
	mov     r1, #0x32
	mov     r5, r0
	mov     r0, r4
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r2, #0x32
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	lsl     r2, r2, #6
	blx     GX_LoadOBJ
	mov     r0, r6
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x20
	blx     GX_LoadOBJPltt
	pop     {r3-r7,pc}
@ 0x22428f6


.align 2, 0
.thumb
Function_22428f8: @ 22428f8 :thumb
	push    {r4,lr}
	add     sp, #-0x80
	mov     r4, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x4]
	mov     r3, #0x2
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0xc]
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	str     r1, [sp, #0x28]
	add     r0, sp, #0x5c
	bl      Function_20093b4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r1, [r0, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	mov     r0, #0x4
	str     r0, [sp, #0x58]
	lsl     r0, r0, #17
	str     r0, [sp, #0x34]
	mov     r0, #0x6
	lsl     r0, r0, #16
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	str     r1, [sp, #0x50]
	bl      Function_2021aa0
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      Function_2021cc8
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021d6c
	add     sp, #0x80
	pop     {r4,pc}
@ 0x2242982


.align 2, 0


.thumb
Function_2242984: @ 2242984 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r5, r0
	bl      Function_203a640
	mov     r4, r0
	mov     r0, #0x0
	add     r1, sp, #0x4
.thumb
branch_2242994: @ 2242994 :thumb
	lsl     r2, r0, #3
	add     r2, r4, r2
	ldr     r3, [r2, #0x8]
	lsl     r2, r0, #2
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r3, [r1, r2]
	cmp     r0, #0xc
	bcc     branch_2242994
	mov     r0, r5
	bl      Function_203d174
	bl      LoadVariableAreaAdress_7
	bl      Function_2027474
	mov     r6, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	mov     r1, #0x1
	bl      Function_202d814
	add     r1, sp, #0x20
	str     r1, [sp, #0x0]
	ldr     r2, [r5, #0x1c]
	mov     r1, r6
	ldr     r2, [r2, #0x0]
	add     r3, sp, #0x1c
	bl      Function_2242f74
	mov     r0, r4
	add     r1, sp, #0xc
	add     r2, sp, #0x10
	bl      Function_2240c9c
	mov     r0, r4
	mov     r1, r6
	add     r2, sp, #0x24
	add     r3, sp, #0x28
	bl      Function_22477b8
	bl      PRNG
	ldr     r1, [pc, #0x1c] @ 0x2242a0c, (=0x1556)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xc
	bcc     branch_2242a00
	bl      ErrorHandling
.thumb
branch_2242a00: @ 2242a00 :thumb
	lsl     r1, r4, #2
	add     r0, sp, #0x4
	ldr     r0, [r0, r1]
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x2242a0a


.align 2


.word 0x1556 @ 0x2242a0c
.thumb
Function_2242a10: @ 2242a10 :thumb
	push    {r3-r7,lr}
	str     r1, [sp, #0x0]
	mov     r1, #0x34
	bl      malloc2_maybe
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xb
	str     r0, [r5, #0x2c]
	mov     r0, #0x6a
	mov     r2, #0x4
	bl      LoadFromNARC_4
	mov     r7, r0
	mov     r4, #0x0
.thumb
branch_2242a2e: @ 2242a2e :thumb
	bl      PRNG
	ldr     r1, [pc, #0x54] @ 0x2242a88, (=0x71d)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	cmp     r6, #0x24
	bcc     branch_2242a44
	bl      ErrorHandling
.thumb
branch_2242a44: @ 2242a44 :thumb
	lsl     r0, r6, #24
	lsr     r2, r0, #22
	add     r1, r7, r2
	ldrh    r2, [r7, r2]
	lsl     r3, r4, #2
	add     r0, r5, r3
	strh    r2, [r5, r3]
	ldrh    r1, [r1, #0x2]
	strh    r1, [r0, #0x2]
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_2242a2e
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpritePositionX
	strh    r0, [r5, #0x14]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	bl      GetSpritePositionY
	strh    r0, [r5, #0x16]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x1c]
	ldr     r0, [r0, #0x0]
	str     r0, [r5, #0x30]
	mov     r0, r7
	bl      free
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x2242a86


.align 2


.word 0x71d @ 0x2242a88
.thumb
Function_2242a8c: @ 2242a8c :thumb
	ldr     r3, [pc, #0x0] @ 0x2242a90, (=0x20181c5)
	bx      r3
@ 0x2242a90

.word 0x20181c5 @ 0x2242a90
.thumb
Function_2242a94: @ 2242a94 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r5, #0x0
	bne     branch_2242ab6
	lsl     r2, r5, #2
	ldrh    r1, [r4, r2]
	add     r2, r4, r2
	ldrh    r2, [r2, #0x2]
	lsl     r1, r1, #11
	mov     r0, #0xf0
	lsl     r2, r2, #11
	lsr     r1, r1, #16
	lsr     r2, r2, #16
	bl      Function_2039f10
	b       branch_2242ad2
@ 0x2242ab6

.thumb
branch_2242ab6: @ 2242ab6 :thumb
	cmp     r5, #0x5
	bne     branch_2242abe
	ldr     r0, [r4, #0x30]
	b       branch_2242ad2
@ 0x2242abe

.thumb
branch_2242abe: @ 2242abe :thumb
	lsl     r2, r5, #2
	ldrh    r1, [r4, r2]
	add     r2, r4, r2
	ldr     r0, [r4, #0x2c]
	ldrh    r2, [r2, #0x2]
	ldr     r0, [r0, #0x2c]
	lsr     r1, r1, #5
	lsr     r2, r2, #5
	bl      Function_2039e30
.thumb
branch_2242ad2: @ 2242ad2 :thumb
	lsl     r3, r5, #2
	add     r1, r4, r3
	ldrh    r2, [r1, #0x2]
	ldrh    r1, [r4, r3]
	str     r0, [r4, #0x18]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x1c]
	str     r1, [r4, #0x20]
	str     r2, [r4, #0x24]
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	pop     {r3-r5,pc}
@ 0x2242aec

.thumb
Function_2242aec: @ 2242aec :thumb
	add     r0, #0x18
	bx      lr
@ 0x2242af0

.thumb
Function_2242af0: @ 2242af0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x6
	bl      Function_2027f6c
	mov     r1, #0x42
	lsl     r1, r1, #16
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	lsl     r1, r1, #16
	str     r1, [sp, #0xc]
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2242b20
	cmp     r0, #0x1
	beq     branch_2242b28
	cmp     r0, #0x2
	beq     branch_2242b30
	b       branch_2242b36
@ 0x2242b20

.thumb
branch_2242b20: @ 2242b20 :thumb
	mov     r0, #0xa
	lsl     r0, r0, #18
	str     r0, [sp, #0x10]
	b       branch_2242b36
@ 0x2242b28

.thumb
branch_2242b28: @ 2242b28 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #16
	str     r0, [sp, #0x10]
	b       branch_2242b36
@ 0x2242b30

.thumb
branch_2242b30: @ 2242b30 :thumb
	mov     r0, #0x1b
	lsl     r0, r0, #18
	str     r0, [sp, #0x10]
.thumb
branch_2242b36: @ 2242b36 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x50]
	ldr     r2, [pc, #0x14] @ 0x2242b54, (=0x1db)
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x30]
	add     r3, sp, #0x8
	bl      0x21e19cc
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2242b52


.align 2


.word 0x1db @ 0x2242b54
.thumb
Function_2242b58: @ 2242b58 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	str     r2, [sp, #0x0]
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x6
	bl      Function_2027f6c
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x14
	bl      malloc2_maybe
	mov     r5, r0
	mov     r2, r5
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_2242b80: @ 2242b80 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_2242b80
	mov     r0, #0x0
	strb    r0, [r5, #0x5]
	ldrh    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2242b9c
	cmp     r1, #0x1
	beq     branch_2242bc2
	cmp     r1, #0x2
	beq     branch_2242bea
	b       branch_2242c0e
@ 0x2242b9c

.thumb
branch_2242b9c: @ 2242b9c :thumb
	mov     r1, #0x1
	strb    r1, [r5, #0x4]
	cmp     r6, #0x1
	bne     branch_2242bb2
	mov     r0, #0x52
	lsl     r0, r0, #16
	str     r0, [r5, #0xc]
	strh    r1, [r4, #0x0]
	mov     r0, #0x4a
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242bb2

.thumb
branch_2242bb2: @ 2242bb2 :thumb
	mov     r0, #0x1b
	lsl     r0, r0, #18
	str     r0, [r5, #0xc]
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	mov     r0, #0x64
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242bc2

.thumb
branch_2242bc2: @ 2242bc2 :thumb
	cmp     r6, #0x0
	bne     branch_2242bd6
	mov     r1, #0xa
	strb    r0, [r5, #0x4]
	lsl     r1, r1, #18
	str     r1, [r5, #0xc]
	strh    r0, [r4, #0x0]
	mov     r0, #0x2e
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242bd6

.thumb
branch_2242bd6: @ 2242bd6 :thumb
	mov     r0, #0x1
	strb    r0, [r5, #0x4]
	mov     r0, #0x1b
	lsl     r0, r0, #18
	str     r0, [r5, #0xc]
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	mov     r0, #0x64
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242bea

.thumb
branch_2242bea: @ 2242bea :thumb
	strb    r0, [r5, #0x4]
	cmp     r6, #0x0
	bne     branch_2242bfe
	mov     r1, #0xa
	lsl     r1, r1, #18
	str     r1, [r5, #0xc]
	strh    r0, [r4, #0x0]
	mov     r0, #0x2e
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242bfe

.thumb
branch_2242bfe: @ 2242bfe :thumb
	mov     r0, #0x52
	lsl     r0, r0, #16
	str     r0, [r5, #0xc]
	mov     r0, #0x1
	strh    r0, [r4, #0x0]
	mov     r0, #0x58
	str     r0, [r5, #0x10]
	b       branch_2242c12
@ 0x2242c0e

.thumb
branch_2242c0e: @ 2242c0e :thumb
	bl      ErrorHandling
.thumb
branch_2242c12: @ 2242c12 :thumb
	ldr     r0, [sp, #0x0]
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x3
	bne     branch_2242c20
	ldr     r0, [pc, #0x10] @ 0x2242c30, (=0x2242d95)
	b       branch_2242c22
@ 0x2242c20

.thumb
branch_2242c20: @ 2242c20 :thumb
	ldr     r0, [pc, #0x10] @ 0x2242c34, (=0x2242e61)
.thumb
branch_2242c22: @ 2242c22 :thumb
	str     r0, [r5, #0x0]
	ldr     r0, [r7, #0x10]
	ldr     r1, [pc, #0x10] @ 0x2242c38, (=0x2242c5d)
	mov     r2, r5
	bl      Function_2050944
	pop     {r3-r7,pc}
@ 0x2242c30

.word 0x2242d95 @ 0x2242c30
.word 0x2242e61 @ 0x2242c34
.word 0x2242c5d @ 0x2242c38



.thumb
Function_2242c3c: @ 2242c3c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_203d174
	bl      Function_2027860
	mov     r1, #0x6
	bl      Function_2027f6c
	ldrh    r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_2242c58
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2242c58

.thumb
branch_2242c58: @ 2242c58 :thumb
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x2242c5c

.thumb
Function_2242c5c: @ 2242c5c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldrb    r1, [r4, #0x5]
	cmp     r1, #0x5
	bls     branch_2242c78
	b       branch_2242d84
@ 0x2242c78

.thumb
branch_2242c78: @ 2242c78 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242c84

Jumppoints_2242c84:
.hword branch_2242c90 - Jumppoints_2242c84 - 2
.hword branch_2242d0c - Jumppoints_2242c84 - 2
.hword branch_2242d1e - Jumppoints_2242c84 - 2
.hword branch_2242d30 - Jumppoints_2242c84 - 2
.hword branch_2242d68 - Jumppoints_2242c84 - 2
.hword branch_2242d7a - Jumppoints_2242c84 - 2
.thumb
branch_2242c90: @ 2242c90 :thumb
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0xf4] @ 0x2242d8c, (=0x1db)
	bl      0x21e18cc
	bl      0x21e18bc
	mov     r7, r0
	ldr     r0, [pc, #0xe8] @ 0x2242d8c, (=0x1db)
	ldr     r1, [r5, #0x30]
	bl      0x21ef9e8
	ldr     r0, [r0, #0x0]
	blx     Function_20b3c0c
	cmp     r0, #0x0
	beq     branch_2242cd4
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2242cc8
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2242cc8
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_2242cca
@ 0x2242cc8

.thumb
branch_2242cc8: @ 2242cc8 :thumb
	mov     r1, #0x0
.thumb
branch_2242cca: @ 2242cca :thumb
	cmp     r1, #0x0
	beq     branch_2242cd4
	ldr     r1, [r1, #0x0]
	add     r6, r0, r1
	b       branch_2242cd6
@ 0x2242cd4

.thumb
branch_2242cd4: @ 2242cd4 :thumb
	mov     r6, #0x0
.thumb
branch_2242cd6: @ 2242cd6 :thumb
	ldr     r0, [r5, #0x30]
	bl      0x21efaa0
	str     r7, [sp, #0x0]
	str     r6, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r3, #0xff
	str     r3, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x50]
	ldr     r1, [r5, #0x54]
	mov     r2, #0x10
	add     r3, #0xdc
	bl      0x21d41c8
	ldr     r0, [r5, #0x54]
	mov     r1, #0x10
	mov     r2, #0x0
	bl      0x21d4250
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	b       branch_2242d84
@ 0x2242d0c

.thumb
branch_2242d0c: @ 2242d0c :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x4
	bne     branch_2242d18
	ldr     r0, [pc, #0x7c] @ 0x2242d90, (=0x6db)
	bl      Function_2005748
.thumb
branch_2242d18: @ 2242d18 :thumb
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2242d1e: @ 2242d1e :thumb
	ldr     r0, [pc, #0x70] @ 0x2242d90, (=0x6db)
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_2242d84
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	b       branch_2242d84
@ 0x2242d30

.thumb
branch_2242d30: @ 2242d30 :thumb
	mov     r0, r5
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x54] @ 0x2242d8c, (=0x1db)
	bl      0x21e18cc
	mov     r6, r0
	add     r0, sp, #0x18
	mov     r1, r6
	bl      0x21e1894
	mov     r0, r5
	mov     r2, r4
	ldr     r5, [r4, #0x0]
	mov     r1, r4
	add     r2, #0xc
	add     r3, sp, #0x18
	blx     r5
	cmp     r0, #0x0
	beq     branch_2242d5e
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
.thumb
branch_2242d5e: @ 2242d5e :thumb
	mov     r0, r6
	add     r1, sp, #0x18
	bl      0x21e18a4
	b       branch_2242d84
@ 0x2242d68

.thumb
branch_2242d68: @ 2242d68 :thumb
	ldr     r0, [r5, #0x50]
	ldr     r1, [r5, #0x54]
	mov     r2, #0x10
	bl      0x21d42b0
	ldrb    r0, [r4, #0x5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x5]
	b       branch_2242d84
@ 0x2242d7a

.thumb
branch_2242d7a: @ 2242d7a :thumb
	bl      free
	add     sp, #0x24
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2242d84

.thumb
branch_2242d84: @ 2242d84 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2242d8a


.align 2


.word 0x1db @ 0x2242d8c
.word 0x6db @ 0x2242d90
.thumb
Function_2242d94: @ 2242d94 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x4]
	mov     r4, r3
	mov     r6, r2
	cmp     r0, #0x0
	ldr     r0, [r4, #0x8]
	bne     branch_2242df4
	ldrb    r1, [r5, #0x6]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xa8] @ 0x2242e54, (=0x2249074)
	ldr     r1, [r1, r2]
	sub     r0, r0, r1
	str     r0, [r4, #0x8]
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x6
	bcs     branch_2242e42
	mov     r0, #0x2
	ldr     r1, [r4, #0x8]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	asr     r0, r1, #15
	lsr     r0, r0, #16
	add     r0, r1, r0
	asr     r1, r0, #16
	ldr     r0, [r5, #0x10]
	cmp     r1, r0
	bgt     branch_2242e42
	ldrb    r0, [r5, #0x7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x7]
	ldrb    r2, [r5, #0x6]
	ldr     r0, [pc, #0x80] @ 0x2242e58, (=0x2249034)
	ldrb    r1, [r5, #0x7]
	ldrb    r0, [r0, r2]
	cmp     r1, r0
	bcc     branch_2242e42
	cmp     r2, #0x0
	bne     branch_2242de8
	ldr     r0, [pc, #0x78] @ 0x2242e5c, (=0x6da)
	bl      Function_2005748
.thumb
branch_2242de8: @ 2242de8 :thumb
	ldrb    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x6]
	mov     r0, #0x0
	strb    r0, [r5, #0x7]
	b       branch_2242e42
@ 0x2242df4

.thumb
branch_2242df4: @ 2242df4 :thumb
	ldrb    r1, [r5, #0x6]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x58] @ 0x2242e54, (=0x2249074)
	ldr     r1, [r1, r2]
	add     r0, r0, r1
	str     r0, [r4, #0x8]
	ldrb    r0, [r5, #0x6]
	cmp     r0, #0x6
	bcs     branch_2242e42
	mov     r0, #0x2
	ldr     r1, [r4, #0x8]
	lsl     r0, r0, #14
	sub     r1, r1, r0
	asr     r0, r1, #15
	lsr     r0, r0, #16
	add     r0, r1, r0
	asr     r1, r0, #16
	ldr     r0, [r5, #0x10]
	cmp     r1, r0
	blt     branch_2242e42
	ldrb    r0, [r5, #0x7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x7]
	ldrb    r2, [r5, #0x6]
	ldr     r0, [pc, #0x30] @ 0x2242e58, (=0x2249034)
	ldrb    r1, [r5, #0x7]
	ldrb    r0, [r0, r2]
	cmp     r1, r0
	bcc     branch_2242e42
	cmp     r2, #0x0
	bne     branch_2242e38
	ldr     r0, [pc, #0x28] @ 0x2242e5c, (=0x6da)
	bl      Function_2005748
.thumb
branch_2242e38: @ 2242e38 :thumb
	ldrb    r0, [r5, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x6]
	mov     r0, #0x0
	strb    r0, [r5, #0x7]
.thumb
branch_2242e42: @ 2242e42 :thumb
	ldr     r1, [r4, #0x8]
	ldr     r0, [r6, #0x0]
	cmp     r1, r0
	bne     branch_2242e4e
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2242e4e

.thumb
branch_2242e4e: @ 2242e4e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2242e52


.align 2


.word 0x2249074 @ 0x2242e54
.word 0x2249034 @ 0x2242e58
.word 0x6da @ 0x2242e5c
.thumb
Function_2242e60: @ 2242e60 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r4, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      Function_205eb3c
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	add     r1, sp, #0x4
	bl      Function_205eaec
	mov     r0, #0x2
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #14
	add     r1, r1, r0
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x8]
	ldr     r0, [r7, #0x0]
	cmp     r1, r0
	bne     branch_2242e94
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2242e94

.thumb
branch_2242e94: @ 2242e94 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2242efc
	mov     r0, r6
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_2242f5c
	ldrb    r1, [r4, #0x6]
	mov     r0, r6
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xb8] @ 0x2242f64, (=0x2249058)
	ldr     r1, [r1, r2]
	bl      Function_2065638
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x6
	bcs     branch_2242ed8
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	ldr     r1, [r4, #0x10]
	cmp     r0, r1
	ble     branch_2242ed8
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	bne     branch_2242ed0
	ldr     r0, [pc, #0x9c] @ 0x2242f68, (=0x6d9)
	bl      Function_2005748
.thumb
branch_2242ed0: @ 2242ed0 :thumb
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_2242f5c
@ 0x2242ed8

.thumb
branch_2242ed8: @ 2242ed8 :thumb
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	ldr     r1, [r4, #0x10]
	cmp     r0, r1
	bgt     branch_2242f5c
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_2242f5c
	cmp     r0, #0x6
	bne     branch_2242ef4
	ldr     r0, [pc, #0x7c] @ 0x2242f6c, (=0x6da)
	bl      Function_2005748
.thumb
branch_2242ef4: @ 2242ef4 :thumb
	ldrb    r0, [r4, #0x6]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_2242f5c
@ 0x2242efc

.thumb
branch_2242efc: @ 2242efc :thumb
	mov     r0, r6
	bl      Function_20655f4
	cmp     r0, #0x1
	bne     branch_2242f5c
	ldrb    r1, [r4, #0x6]
	mov     r0, r6
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x60] @ 0x2242f70, (=0x224903c)
	ldr     r1, [r1, r2]
	bl      Function_2065638
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x6
	bcs     branch_2242f3a
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	ldr     r1, [r4, #0x10]
	cmp     r0, r1
	bge     branch_2242f3a
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	bne     branch_2242f32
	ldr     r0, [pc, #0x38] @ 0x2242f68, (=0x6d9)
	bl      Function_2005748
.thumb
branch_2242f32: @ 2242f32 :thumb
	ldrb    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x6]
	b       branch_2242f5c
@ 0x2242f3a

.thumb
branch_2242f3a: @ 2242f3a :thumb
	ldr     r0, [r5, #0x3c]
	bl      GetSpritePositionY
	ldr     r1, [r4, #0x10]
	cmp     r0, r1
	blt     branch_2242f5c
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_2242f5c
	cmp     r0, #0x6
	bne     branch_2242f56
	ldr     r0, [pc, #0x18] @ 0x2242f6c, (=0x6da)
	bl      Function_2005748
.thumb
branch_2242f56: @ 2242f56 :thumb
	ldrb    r0, [r4, #0x6]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x6]
.thumb
branch_2242f5c: @ 2242f5c :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2242f62


.align 2


.word 0x2249058 @ 0x2242f64
.word 0x6d9 @ 0x2242f68
.word 0x6da @ 0x2242f6c
.word 0x224903c @ 0x2242f70
.thumb
Function_2242f74: @ 2242f74 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	mov     r6, r3
	bl      Function_2242fc0
	mov     r7, r0
	cmp     r4, #0x0
	beq     branch_2242f8c
	mov     r1, #0x9
	b       branch_2242f8e
@ 0x2242f8c

.thumb
branch_2242f8c: @ 2242f8c :thumb
	mov     r1, #0xa
.thumb
branch_2242f8e: @ 2242f8e :thumb
	mov     r0, #0x6a
	mov     r2, #0x4
	bl      LoadFromNARC_4
	lsl     r1, r7, #2
	add     r1, r7, r1
	mov     r3, r5
	asr     r3, r1
	mov     r2, #0x1f
	mov     r1, r3
	and     r1, r2
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	and     r1, r2
	lsl     r1, r1, #24
	lsr     r2, r1, #22
	ldr     r1, [r0, r2]
	str     r1, [r6, #0x0]
	ldr     r2, [r0, r2]
	ldr     r1, [sp, #0x18]
	str     r2, [r1, #0x0]
	bl      free
	pop     {r3-r7,pc}
@ 0x2242fbe


.align 2, 0


.thumb
Function_2242fc0: @ 2242fc0 :thumb
	push    {r4,lr}
	mov     r1, #0x7e
	lsl     r1, r1, #2
	sub     r0, r0, r1
	mov     r4, #0x0
	cmp     r0, #0x5
	bhi     branch_2242ffc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2242fda

Jumppoints_2242fda:
.hword branch_2242fe6 - Jumppoints_2242fda - 2
.hword branch_2242fe8 - Jumppoints_2242fda - 2
.hword branch_2242fec - Jumppoints_2242fda - 2
.hword branch_2242ff0 - Jumppoints_2242fda - 2
.hword branch_2242ff4 - Jumppoints_2242fda - 2
.hword branch_2242ff8 - Jumppoints_2242fda - 2
.thumb
branch_2242fe6: @ 2242fe6 :thumb
	b       branch_2243000
@ 0x2242fe8

.thumb
branch_2242fe8: @ 2242fe8 :thumb
	mov     r4, #0x1
	b       branch_2243000
@ 0x2242fec

.thumb
branch_2242fec: @ 2242fec :thumb
	mov     r4, #0x2
	b       branch_2243000
@ 0x2242ff0

.thumb
branch_2242ff0: @ 2242ff0 :thumb
	mov     r4, #0x3
	b       branch_2243000
@ 0x2242ff4

.thumb
branch_2242ff4: @ 2242ff4 :thumb
	mov     r4, #0x4
	b       branch_2243000
@ 0x2242ff8

.thumb
branch_2242ff8: @ 2242ff8 :thumb
	mov     r4, #0x5
	b       branch_2243000
@ 0x2242ffc

.thumb
branch_2242ffc: @ 2242ffc :thumb
	bl      ErrorHandling
.thumb
branch_2243000: @ 2243000 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x2243004

.thumb
Function_2243004: @ 2243004 :thumb
	push    {r3,lr}
	cmp     r1, #0x9
	bhi     branch_22430b8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2243016

Jumppoints_2243016:
.hword branch_224302a - Jumppoints_2243016 - 2
.hword branch_2243034 - Jumppoints_2243016 - 2
.hword branch_2243050 - Jumppoints_2243016 - 2
.hword branch_224305a - Jumppoints_2243016 - 2
.hword branch_2243064 - Jumppoints_2243016 - 2
.hword branch_224306e - Jumppoints_2243016 - 2
.hword branch_2243078 - Jumppoints_2243016 - 2
.hword branch_2243094 - Jumppoints_2243016 - 2
.hword branch_22430a0 - Jumppoints_2243016 - 2
.hword branch_22430ac - Jumppoints_2243016 - 2
.thumb
branch_224302a: @ 224302a :thumb
	bl      Function_223e6ec
	ldr     r1, [pc, #0x90] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x2243034

.thumb
branch_2243034: @ 2243034 :thumb
	ldr     r0, [pc, #0x88] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223e708
	cmp     r0, #0x0
	beq     branch_224304c
	ldr     r0, [pc, #0x7c] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223e700
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x224304c

.thumb
branch_224304c: @ 224304c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2243050

.thumb
branch_2243050: @ 2243050 :thumb
	bl      Function_223e814
	ldr     r1, [pc, #0x68] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x224305a

.thumb
branch_224305a: @ 224305a :thumb
	ldr     r0, [pc, #0x64] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223e828
	b       branch_22430bc
@ 0x2243064

.thumb
branch_2243064: @ 2243064 :thumb
	bl      Function_223fccc
	ldr     r1, [pc, #0x54] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x224306e

.thumb
branch_224306e: @ 224306e :thumb
	ldr     r0, [pc, #0x50] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223fce8
	b       branch_22430bc
@ 0x2243078

.thumb
branch_2243078: @ 2243078 :thumb
	ldr     r0, [pc, #0x44] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223fcf4
	cmp     r0, #0x6
	bne     branch_2243090
	ldr     r0, [pc, #0x38] @ 0x22430c0, (=0x2249940)
	ldr     r0, [r0, #0x0]
	bl      Function_223fce0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2243090

.thumb
branch_2243090: @ 2243090 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2243094

.thumb
branch_2243094: @ 2243094 :thumb
	mov     r1, #0x0
	bl      Function_223ea74
	ldr     r1, [pc, #0x24] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x22430a0

.thumb
branch_22430a0: @ 22430a0 :thumb
	mov     r1, #0x1
	bl      Function_223ea74
	ldr     r1, [pc, #0x18] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x22430ac

.thumb
branch_22430ac: @ 22430ac :thumb
	mov     r1, #0x2
	bl      Function_223ea74
	ldr     r1, [pc, #0xc] @ 0x22430c0, (=0x2249940)
	str     r0, [r1, #0x0]
	b       branch_22430bc
@ 0x22430b8

.thumb
branch_22430b8: @ 22430b8 :thumb
	bl      ErrorHandling
.thumb
branch_22430bc: @ 22430bc :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22430c0

.word 0x2249940 @ 0x22430c0
.thumb
Function_22430c4: @ 22430c4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_19
	bl      Function_202d830
	mov     r2, #0x0
	ldrh    r0, [r0, #0x2]
	mov     r1, r2
.thumb
branch_22430d6: @ 22430d6 :thumb
	cmp     r0, #0x0
	beq     branch_22430dc
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_22430dc: @ 22430dc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0x3
	blt     branch_22430d6
	mov     r0, r2
	pop     {r3,pc}
@ 0x22430e6


.align 2, 0


.thumb
Function_22430e8: @ 22430e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	bcc     branch_22430f8
	bl      ErrorHandling
.thumb
branch_22430f8: @ 22430f8 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	bl      Function_202d830
	add     r1, sp, #0x0
	bl      Function_22431a0
	lsl     r1, r4, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	ldrh    r0, [r0, #0x0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243114

.thumb
Function_2243114: @ 2243114 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	bcc     branch_2243124
	bl      ErrorHandling
.thumb
branch_2243124: @ 2243124 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	bl      Function_202d830
	add     r1, sp, #0x0
	bl      Function_22431a0
	lsl     r1, r4, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	ldrh    r0, [r0, #0x2]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243140

.thumb
Function_2243140: @ 2243140 :thumb
	ldr     r3, [pc, #0x0] @ 0x2243144, (=0x2069b91)
	bx      r3
@ 0x2243144

.word 0x2069b91 @ 0x2243144
.thumb
Function_2243148: @ 2243148 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_206978c
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3,pc}
@ 0x224315e


.align 2, 0


.thumb
Function_2243160: @ 2243160 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	add     r1, sp, #0x0
	mov     r4, r0
	bl      Function_22431a0
	mov     r2, #0x0
	add     r3, sp, #0x0
	add     r5, sp, #0xc
.thumb
branch_2243172: @ 2243172 :thumb
	ldr     r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrh    r0, [r1, #0x0]
	.hword  0x1d1b @ add r3, r3, #0x4
	strh    r0, [r5, #0x0]
	ldrh    r0, [r1, #0x2]
	strh    r0, [r5, #0x2]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r2, #0x3
	blt     branch_2243172
	mov     r2, #0x0
	add     r1, sp, #0xc
.thumb
branch_224318a: @ 224318a :thumb
	ldrh    r0, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r1, #0x2]
	.hword  0x1d09 @ add r1, r1, #0x4
	strh    r0, [r4, #0x2]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r2, #0x3
	blt     branch_224318a
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22431a0

.thumb
Function_22431a0: @ 22431a0 :thumb
	push    {r3,r4}
	ldrh    r4, [r0, #0x6]
	ldrh    r3, [r0, #0x2]
	cmp     r3, r4
	ldrh    r2, [r0, #0xa]
	bcs     branch_22431e2
	cmp     r4, r2
	bcs     branch_22431c0
	mov     r2, r0
	add     r2, #0x8
	str     r2, [r1, #0x0]
	add     r2, r0, #0x4
	str     r2, [r1, #0x4]
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x22431c0

.thumb
branch_22431c0: @ 22431c0 :thumb
	cmp     r3, r2
	bcs     branch_22431d4
	add     r2, r0, #0x4
	str     r2, [r1, #0x0]
	mov     r2, r0
	add     r2, #0x8
	str     r2, [r1, #0x4]
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x22431d4

.thumb
branch_22431d4: @ 22431d4 :thumb
	add     r2, r0, #0x4
	str     r2, [r1, #0x0]
	str     r0, [r1, #0x4]
	add     r0, #0x8
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x22431e2

.thumb
branch_22431e2: @ 22431e2 :thumb
	cmp     r3, r2
	bcs     branch_22431f6
	mov     r2, r0
	add     r2, #0x8
	str     r2, [r1, #0x0]
	str     r0, [r1, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x22431f6

.thumb
branch_22431f6: @ 22431f6 :thumb
	cmp     r4, r2
	str     r0, [r1, #0x0]
	bcs     branch_224320a
	mov     r2, r0
	add     r2, #0x8
	str     r2, [r1, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x224320a

.thumb
branch_224320a: @ 224320a :thumb
	add     r2, r0, #0x4
	str     r2, [r1, #0x4]
	add     r0, #0x8
	str     r0, [r1, #0x8]
	pop     {r3,r4}
	bx      lr
@ 0x2243216


.align 2, 0


.thumb
Function_2243218: @ 2243218 :thumb
	push    {r3,lr}
	mov     r1, #0x16
	blx     _u32_div_f
	ldr     r0, [pc, #0x4] @ 0x2243228, (=0x2249090)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	pop     {r3,pc}
@ 0x2243228

.word 0x2249090 @ 0x2243228



.thumb
Function_224322c: @ 224322c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x1a8
	mov     r5, r1
	mov     r1, #0x16
	mov     r4, r2
	blx     _u32_div_f
	ldr     r0, [pc, #0x18] @ 0x2243254, (=0x2249090)
	lsl     r1, r1, #2
	ldr     r6, [r0, r1]
	add     r0, sp, #0x0
	mov     r1, r6
	bl      LoadMapWildPkmn
	ldr     r0, [sp, #0x64]
	strh    r0, [r4, #0x0]
	strh    r6, [r5, #0x0]
	add     sp, #0x1a8
	pop     {r4-r6,pc}
@ 0x2243252

.align 2
.word 0x2249090 @ 0x2243254



.thumb
Function_2243258: @ 2243258 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	ldr     r0, [sp, #0x1c]
	mov     r7, r3
	strb    r6, [r5, #0x0]
	ldr     r4, [sp, #0x18]
	strb    r7, [r5, #0x1]
	strb    r4, [r5, #0x2]
	str     r0, [sp, #0x1c]
	strb    r0, [r5, #0x3]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	strb    r0, [r5, #0x4]
	ldr     r0, [sp, #0x24]
	strb    r0, [r5, #0x5]
	ldr     r0, [sp, #0x28]
	strb    r0, [r5, #0x6]
	ldr     r0, [sp, #0x2c]
	strb    r0, [r5, #0x7]
	mov     r0, r1
	mov     r1, r5
	add     r1, #0xc
	bl      Function_20095c4
	str     r0, [r5, #0x8]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0xc
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r6, #3
	bl      Function_2245f44
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r7, #3
	bl      Function_2245f44
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r4, #3
	bl      Function_2245f44
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x4
	lsl     r1, r1, #3
	bl      Function_2245f44
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r1, #0x0
	cmp     r6, #0x0
	ble     branch_2243334
	ble     branch_2243334
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_2243324: @ 2243324 :thumb
	mov     r3, #0x51
	lsl     r3, r3, #2
	ldr     r3, [r5, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r3, r2]
	add     r2, #0x8
	cmp     r1, r6
	blt     branch_2243324
.thumb
branch_2243334: @ 2243334 :thumb
	mov     r3, #0x0
	cmp     r7, #0x0
	ble     branch_2243354
	ble     branch_2243354
	ldr     r0, [sp, #0x24]
	mov     r6, #0x52
	lsl     r0, r0, #16
	mov     r2, r3
	asr     r1, r0, #16
	lsl     r6, r6, #2
.thumb
branch_2243348: @ 2243348 :thumb
	ldr     r0, [r5, r6]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r0, r2]
	add     r2, #0x8
	cmp     r3, r7
	blt     branch_2243348
.thumb
branch_2243354: @ 2243354 :thumb
	mov     r1, #0x0
	cmp     r4, #0x0
	ble     branch_2243374
	ble     branch_2243374
	ldr     r2, [sp, #0x28]
	mov     r0, r1
	lsl     r2, r2, #16
	asr     r6, r2, #16
	mov     r2, #0x53
	lsl     r2, r2, #2
.thumb
branch_2243368: @ 2243368 :thumb
	ldr     r3, [r5, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r6, [r3, r0]
	add     r0, #0x8
	cmp     r1, r4
	blt     branch_2243368
.thumb
branch_2243374: @ 2243374 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	cmp     r0, #0x0
	ble     branch_2243398
	ble     branch_2243398
	ldr     r2, [sp, #0x2c]
	mov     r3, #0x15
	lsl     r2, r2, #16
	mov     r0, r1
	asr     r4, r2, #16
	lsl     r3, r3, #4
.thumb
branch_224338a: @ 224338a :thumb
	ldr     r2, [r5, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r4, [r2, r0]
	ldr     r2, [sp, #0x1c]
	add     r0, #0x8
	cmp     r1, r2
	blt     branch_224338a
.thumb
branch_2243398: @ 2243398 :thumb
	pop     {r3-r7,pc}
@ 0x224339a


.align 2, 0


.thumb
Function_224339c: @ 224339c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22433cc
	mov     r4, r6
	mov     r7, #0x4
.thumb
branch_22433ac: @ 22433ac :thumb
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_22433c2
	ldr     r0, [r0, #0x4]
	bl      Function_200a4e4
.thumb
branch_22433c2: @ 22433c2 :thumb
	ldrb    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_22433ac
.thumb
branch_22433cc: @ 22433cc :thumb
	ldrb    r0, [r5, #0x1]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22433f8
	mov     r4, r6
	mov     r7, #0x5
.thumb
branch_22433d8: @ 22433d8 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_22433ee
	ldr     r0, [r0, #0x4]
	bl      Function_200a6dc
.thumb
branch_22433ee: @ 22433ee :thumb
	ldrb    r0, [r5, #0x1]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_22433d8
.thumb
branch_22433f8: @ 22433f8 :thumb
	ldrb    r0, [r5, #0x2]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2243424
	mov     r4, r6
	mov     r7, #0x6
.thumb
branch_2243404: @ 2243404 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_224341a
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_224341a: @ 224341a :thumb
	ldrb    r0, [r5, #0x2]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_2243404
.thumb
branch_2243424: @ 2243424 :thumb
	ldrb    r0, [r5, #0x3]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2243450
	mov     r4, r6
	mov     r7, #0x7
.thumb
branch_2243430: @ 2243430 :thumb
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_2243446
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_2243446: @ 2243446 :thumb
	ldrb    r0, [r5, #0x3]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_2243430
.thumb
branch_2243450: @ 2243450 :thumb
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      free
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      free
	ldr     r0, [r5, #0x8]
	bl      Function_20219c0
	ldr     r0, [r5, #0x8]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x22434ae


.align 2, 0


.thumb
Function_22434b0: @ 22434b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_2243516
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x4
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22434d2: @ 22434d2 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_224350e
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009a4c
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x224350e

.thumb
branch_224350e: @ 224350e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22434d2
.thumb
branch_2243516: @ 2243516 :thumb
	bl      ErrorHandling
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224351e


.align 2, 0
.thumb
Function_2243520: @ 2243520 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x0]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_224354e
	mov     r4, #0x51
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243534: @ 2243534 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_2243546
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_200a3dc
	pop     {r4-r6,pc}
@ 0x2243546

.thumb
branch_2243546: @ 2243546 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243534
.thumb
branch_224354e: @ 224354e :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x2243554

.thumb
Function_2243554: @ 2243554 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x0]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_2243582
	mov     r4, #0x51
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243568: @ 2243568 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_224357a
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r4-r6,pc}
@ 0x224357a

.thumb
branch_224357a: @ 224357a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243568
.thumb
branch_2243582: @ 2243582 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x2243588

.thumb
Function_2243588: @ 2243588 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x10]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_22435f0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x5
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22435aa: @ 22435aa :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_22435e8
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x4
	str     r1, [sp, #0xc]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	bl      Function_2009b04
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x18
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x22435e8

.thumb
branch_22435e8: @ 22435e8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22435aa
.thumb
branch_22435f0: @ 22435f0 :thumb
	bl      ErrorHandling
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22435f8

.thumb
Function_22435f8: @ 22435f8 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x1]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_2243626
	mov     r4, #0x52
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_224360c: @ 224360c :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_224361e
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_200a640
	pop     {r4-r6,pc}
@ 0x224361e

.thumb
branch_224361e: @ 224361e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_224360c
.thumb
branch_2243626: @ 2243626 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x224362c

.thumb
Function_224362c: @ 224362c :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x1]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_224365a
	mov     r4, #0x52
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243640: @ 2243640 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_2243652
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r4-r6,pc}
@ 0x2243652

.thumb
branch_2243652: @ 2243652 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243640
.thumb
branch_224365a: @ 224365a :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x2243660

.thumb
Function_2243660: @ 2243660 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_22436c6
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x6
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_2243682: @ 2243682 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_22436be
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009bc4
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x22436be

.thumb
branch_22436be: @ 22436be :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_2243682
.thumb
branch_22436c6: @ 22436c6 :thumb
	bl      ErrorHandling
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22436ce


.align 2, 0


.thumb
Function_22436d0: @ 22436d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_2243736
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r3, [r6, r0]
	mov     r0, #0x7
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22436f2: @ 22436f2 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_224372e
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009bc4
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x224372e

.thumb
branch_224372e: @ 224372e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22436f2
.thumb
branch_2243736: @ 2243736 :thumb
	bl      ErrorHandling
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224373e


.align 2, 0


.thumb
Function_2243740: @ 2243740 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	mov     r4, r1
	mov     r1, r2
	mov     r0, #0x7
	mov     r2, r3
	ldsb    r3, [r5, r0]
	ldr     r6, [sp, #0x84]
	cmp     r6, r3
	bne     branch_224375a
	sub     r0, #0x8
	str     r0, [sp, #0x84]
.thumb
branch_224375a: @ 224375a :thumb
	ldr     r0, [sp, #0x84]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x88]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r5, r6]
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r5, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
	ldr     r0, [r5, #0x8]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x4
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_22437c2
	bl      ErrorHandling
.thumb
branch_22437c2: @ 22437c2 :thumb
	mov     r0, r4
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x22437c8

.thumb
Function_22437c8: @ 22437c8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2021d28
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x22437dc

.thumb
Function_22437dc: @ 22437dc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r4, r0
	mov     r2, #0x0
	add     r0, sp, #0x1c
	str     r2, [r0, #0x0]
	str     r2, [r0, #0x4]
	add     r3, sp, #0x28
	str     r2, [r3, #0x0]
	str     r2, [r3, #0x4]
	ldr     r6, [pc, #0x50] @ 0x2243844, (=0x224918c)
	str     r2, [r0, #0x8]
	ldmia   r6!, {r0,r1}
	add     r5, sp, #0x10
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r2, [r3, #0x8]
	str     r0, [r5, #0x0]
	mov     r1, r3
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x84
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2243740
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0x1c
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x2243842

.align 2
.word 0x224918c @ 0x2243844



.thumb
Function_2243848: @ 2243848 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r3, #0x0
	add     r2, sp, #0x10
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	cmp     r1, #0x1
	bne     branch_224385c
	mov     r3, #0x1
.thumb
branch_224385c: @ 224385c :thumb
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x83
	str     r1, [sp, #0xc]
	add     r1, sp, #0x10
	bl      Function_2243740
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2243888

.thumb
Function_2243888: @ 2243888 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	add     r5, sp, #0x18
	mov     r4, #0x0
	str     r4, [r5, #0x0]
	str     r4, [r5, #0x4]
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x10]
	str     r4, [r5, #0x8]
	str     r1, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x82
	str     r0, [sp, #0x4]
	mov     r0, r1
	ldr     r1, [pc, #0xc] @ 0x22438b8, (=0x224925c)
	mov     r2, r5
	mov     r3, r4
	bl      Function_2071330
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x22438b6

.align 2
.word 0x224925c @ 0x22438b8



.thumb
Function_22438bc: @ 22438bc :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x22438c6


.align 2, 0


.thumb
Function_22438c8: @ 22438c8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	mov     r2, r4
	mov     r3, r0
	add     r2, #0x58
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x64]
	bl      Function_22437dc
	str     r0, [r4, #0x68]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22438ea


.align 2, 0


.thumb
Function_22438ec: @ 22438ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	beq     branch_2243900
	bl      Function_207136c
.thumb
branch_2243900: @ 2243900 :thumb
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	beq     branch_224390a
	bl      0x21f0efc @ Function_5_21f0efc
.thumb
branch_224390a: @ 224390a :thumb
	mov     r0, r5
	bl      Function_207136c
	pop     {r3-r5,pc}
@ 0x2243912


.align 2, 0


.thumb
Function_2243914: @ 2243914 :thumb
	ldr     r3, [pc, #0x4] @ 0x224391c, (=Function_2021bd4+1)
	ldr     r0, [r1, #0x68]
	bx      r3
@ 0x224391a

.align 2
.word Function_2021bd4+1 @ 0x224391c



.thumb
Function_2243920: @ 2243920 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x224393c, (=0x2249110)
	ldr     r4, [r0, r1]
.thumb
branch_224392c: @ 224392c :thumb
	ldrb    r1, [r5, #0x1]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_224392c
	pop     {r3-r5,pc}
@ 0x224393c

.word 0x2249110 @ 0x224393c



.thumb
Function_2243940: @ 2243940 :thumb
	push    {r3,lr}
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
	ldr     r0, [r0, #0x68]
	bl      Function_2021cac
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2243950


.thumb
Function_2243950: @ 2243950 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	ldr     r4, [pc, #0x14c] @ 0x2243aa4, (=0x2249150)
	mov     r2, r0
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x24
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r4, [pc, #0x144] @ 0x2243aa8, (=0x22491a4)
	str     r0, [r3, #0x0]
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x18
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r2
	bl      Function_2071598
	mov     r4, r0
	mov     r3, #0x1
	mov     r5, r4
	strb    r3, [r4, #0x0]
	mov     r2, #0x0
	strb    r2, [r4, #0x2]
	strb    r2, [r4, #0x1]
	str     r2, [r4, #0x4]
	add     r6, sp, #0x24
	ldmia   r6!, {r0,r1}
	add     r5, #0x8
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x18]
	str     r2, [r4, #0x1c]
	ldr     r0, [pc, #0x114] @ 0x2243aac, (=0x15e000)
	mov     r2, r4
	add     r5, sp, #0x18
	str     r0, [r4, #0x38]
	ldmia   r5!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	lsl     r0, r3, #10
	str     r0, [r4, #0x50]
	mov     r0, #0x2d
	lsl     r0, r0, #12
	str     r0, [r4, #0x40]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [r4, #0x48]
	lsl     r0, r3, #17
	str     r0, [r4, #0x4c]
	mov     r0, #0x2d
	bl      Function_201d264
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x24
	bl      Function_2021c50
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x68]
	bl      Function_2021c94
	ldr     r0, [r4, #0x68]
	mov     r1, #0x84
	bl      Function_2021f58
	ldr     r0, [r4, #0x68]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x58]
	ldr     r1, [r4, #0x60]
	bl      Function_2245b4c
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x64] @ 0x2243ab0, (=0xfff88000)
	mov     r1, #0x1
	mov     r3, #0xc
	str     r0, [r4, #0x70]
	bl      0x21f0f10 @ Function_5_21f0f10
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x54] @ 0x2243ab4, (=0x22491c8)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	ldr     r4, [r4, #0x60]
	mov     r0, r4
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2021d6c
	bl      Function_2243f2c
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2243aa2

.align 2
.word 0x2249150 @ 0x2243aa4
.word 0x22491a4 @ 0x2243aa8
.word 0x15e000 @ 0x2243aac
.word 0xfff88000 @ 0x2243ab0
.word 0x22491c8 @ 0x2243ab4



.thumb
Function_2243ab8: @ 2243ab8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r6, [r5, #0x68]
	ldr     r4, [r5, #0x60]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	bpl     branch_2243ad0
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2243ad0: @ 2243ad0 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #10
	cmp     r1, r0
	ble     branch_2243ae2
	mov     r0, #0x7
	lsl     r0, r0, #10
	sub     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2243ae2: @ 2243ae2 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2243aee
	str     r0, [r5, #0x4c]
.thumb
branch_2243aee: @ 2243aee :thumb
	mov     r0, #0x2d
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x5a
	bge     branch_2243b36
	mov     r0, #0x1
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243b36: @ 2243b36 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	bge     branch_2243b48
	str     r0, [r5, #0x2c]
.thumb
branch_2243b48: @ 2243b48 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	bge     branch_2243b5a
	str     r0, [r5, #0x30]
.thumb
branch_2243b5a: @ 2243b5a :thumb
	mov     r1, r5
	mov     r0, r6
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, #0x12
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bne     branch_2243baa
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_2243bb0
@ 0x2243baa

.thumb
branch_2243baa: @ 2243baa :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2243bb0: @ 2243bb0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2243bb6


.align 2, 0


.thumb
Function_2243bb8: @ 2243bb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x6c]
	bl      Function_2245bc8
	ldr     r0, [r4, #0x70]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xc
	bl      0x21f0f10 @ Function_5_21f0f10
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r0, [r4, #0x50]
	lsl     r0, r0, #9
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [r4, #0x48]
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r0, [r4, #0x4c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243bec

.thumb
Function_2243bec: @ 2243bec :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x68]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r5, #0x4c]
	cmp     r2, r1
	ble     branch_2243c10
	lsl     r0, r0, #4
	str     r0, [r5, #0x4c]
.thumb
branch_2243c10: @ 2243c10 :thumb
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	mov     r0, #0x80
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	mov     r0, #0xa
	ldr     r1, [r5, #0x40]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_2243c54
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243c54: @ 2243c54 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #12
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	str     r1, [r5, #0x38]
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_2243c86
	str     r0, [r5, #0x2c]
.thumb
branch_2243c86: @ 2243c86 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_2243c98
	str     r0, [r5, #0x30]
.thumb
branch_2243c98: @ 2243c98 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r1, [sp, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0xf
	mvn     r0, r0
	cmp     r1, r0
	bgt     branch_2243cd2
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
.thumb
branch_2243cd2: @ 2243cd2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243cd8

.thumb
Function_2243cd8: @ 2243cd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243cfa


.align 2, 0


.thumb
Function_2243cfc: @ 2243cfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x14
	bge     branch_2243d12
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243d12

.thumb
branch_2243d12: @ 2243d12 :thumb
	ldr     r3, [pc, #0xa0] @ 0x2243db4, (=0x2249174)
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x98] @ 0x2243db8, (=0x2249180)
	str     r0, [r2, #0x0]
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r7, #0x0
	str     r0, [r2, #0x0]
	mov     r2, r4
	str     r7, [r4, #0x4]
	mov     r3, r6
	ldmia   r3!, {r0,r1}
	add     r2, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	str     r7, [r4, #0x14]
	str     r7, [r4, #0x18]
	str     r7, [r4, #0x1c]
	str     r7, [r4, #0x38]
	mov     r2, r4
	ldmia   r5!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	lsl     r1, r1, #8
	ldr     r0, [pc, #0x60] @ 0x2243dbc, (=0x13b000)
	str     r1, [r4, #0x50]
	str     r0, [r4, #0x40]
	lsl     r0, r1, #10
	str     r0, [r4, #0x48]
	lsl     r0, r1, #4
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x68]
	mov     r1, r6
	bl      Function_2021c50
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x68]
	bl      Function_2021c94
	ldr     r0, [r4, #0x68]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x60]
	mov     r1, #0x6
	bl      Function_2021d6c
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2243db2

.align 2
.word 0x2249174 @ 0x2243db4
.word 0x2249180 @ 0x2243db8
.word 0x13b000 @ 0x2243dbc



.thumb
Function_2243dc0: @ 2243dc0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x68]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_2243de0
	lsr     r0, r0, #3
	add     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2243de0: @ 2243de0 :thumb
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bge     branch_2243dea
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2243dea: @ 2243dea :thumb
	ldr     r0, [pc, #0xdc] @ 0x2243ec8, (=0x13b)
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xb4
	bge     branch_2243e32
	mov     r0, #0x1
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243e32: @ 2243e32 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	bge     branch_2243e44
	str     r0, [r5, #0x2c]
.thumb
branch_2243e44: @ 2243e44 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, #0x30]
	cmp     r1, r0
	bge     branch_2243e56
	str     r0, [r5, #0x30]
.thumb
branch_2243e56: @ 2243e56 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r0, #0x6
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #12
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	str     r1, [r5, #0x38]
	cmp     r0, #0x3c
	ble     branch_2243e7c
	mov     r0, #0xf
	lsl     r0, r0, #14
	str     r0, [r5, #0x38]
.thumb
branch_2243e7c: @ 2243e7c :thumb
	ldr     r1, [r5, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bgt     branch_2243ec0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2021cac
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
branch_2243ec0: @ 2243ec0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243ec6

.align 2
.word 0x13b @ 0x2243ec8



.thumb
Function_2243ecc: @ 2243ecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	bne     branch_2243eea
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_2243f74
.thumb
branch_2243eea: @ 2243eea :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa
	bne     branch_2243ef8
	ldr     r0, [r4, #0x60]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_2243ef8: @ 2243ef8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xf
	ble     branch_2243f16
	ldr     r0, [r4, #0x70]
	bl      0x21f0ef0 @ Function_5_21f0ef0
	cmp     r0, #0x1
	bne     branch_2243f16
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
.thumb
branch_2243f16: @ 2243f16 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243f1a


.align 2, 0


.thumb
Function_2243f1c: @ 2243f1c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2243f20

.thumb
Function_2243f20: @ 2243f20 :thumb
	ldr     r3, [pc, #0x4] @ 0x2243f28, (=LoadFromNARC_8+1)
	mov     r0, #0x61
	mov     r1, #0x4
	bx      r3
@ 0x2243f28

.word LoadFromNARC_8+1 @ 0x2243f28



.thumb
Function_2243f2c: @ 2243f2c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0xc] @ 0x2243f4c, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x2243f4a

.align 2
.word 0x7fff @ 0x2243f4c



.thumb
Function_2243f50: @ 2243f50 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0xc] @ 0x2243f70, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x2243f70

.word 0x7fff @ 0x2243f70



.thumb
Function_2243f74: @ 2243f74 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x3c]
	mov     r4, r1
	bl      Function_205eb3c
	mov     r1, r4
	bl      Function_2062d64
	pop     {r4,pc}
@ 0x2243f86


.align 2, 0
.thumb
.globl Function_6_2243f88
Function_6_2243f88: @ 2243f88 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_2243fdc
	mov     r1, r0
	str     r4, [r1, #0x5c]
	str     r6, [r1, #0xc]
	str     r5, [r1, #0x20]
	cmp     r5, #0x0
	bne     branch_2243faa
	ldr     r0, [pc, #0x10] @ 0x2243fb4, (=0x2244005)
	mov     r2, #0x85
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x2243faa

.thumb
branch_2243faa: @ 2243faa :thumb
	ldr     r0, [pc, #0xc] @ 0x2243fb8, (=0x22443b9)
	mov     r2, #0x85
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x2243fb4

.word 0x2244005 @ 0x2243fb4
.word 0x22443b9 @ 0x2243fb8



.thumb
.globl Function_6_2243fbc
Function_6_2243fbc: @ 2243fbc :thumb
	push    {r3,lr}
	bl      Function_201ced0
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x2243fc6


.align 2, 0
.thumb
.globl Function_6_2243fc8
Function_6_2243fc8: @ 2243fc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201ced0
	bl      Function_2243ffc
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x2243fdc

.thumb
Function_2243fdc: @ 2243fdc :thumb
	push    {r3-r5,lr}
	mov     r1, #0x87
	mov     r5, r0
	mov     r0, #0x4
	lsl     r1, r1, #2
	bl      malloc2_maybe
	mov     r2, #0x87
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	str     r5, [r4, #0x60]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2243ffc

.thumb
Function_2243ffc: @ 2243ffc :thumb
	ldr     r3, [pc, #0x0] @ 0x2244000, (=free+1)
	bx      r3
@ 0x2244000

.word free+1 @ 0x2244000



.thumb
Function_2244004: @ 2244004 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x2c] @ 0x2244034, (=0x22492d8)
	mov     r5, r1
.thumb
branch_224400a: @ 224400a :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_224400a
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_2244032
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_224402c
	bl      Function_20713d0
.thumb
branch_224402c: @ 224402c :thumb
	mov     r0, r5
	bl      Function_2244c10
.thumb
branch_2244032: @ 2244032 :thumb
	pop     {r3-r5,pc}
@ 0x2244034

.word 0x22492d8 @ 0x2244034



.thumb
Function_2244038: @ 2244038 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224481c
	mov     r0, r4
	bl      Function_224464c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244050

.thumb
Function_2244050: @ 2244050 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244066
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244066

.thumb
branch_2244066: @ 2244066 :thumb
	ldr     r5, [pc, #0x50] @ 0x22440b8, (=0x2249120)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r5, [pc, #0x48] @ 0x22440bc, (=0x22491e0)
	str     r0, [r3, #0x0]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_2244cfc
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_224529c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22452bc
	mov     r0, r4
	bl      Function_224469c
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22440b8

.word 0x2249120 @ 0x22440b8
.word 0x22491e0 @ 0x22440bc



.thumb
Function_22440c0: @ 22440c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245fdc
	mov     r0, #0x0
	ldr     r1, [pc, #0x28] @ 0x22440f4, (=0xfffc0000)
	str     r0, [r4, #0x2c]
	str     r1, [r4, #0x54]
	mov     r1, #0xfe
	lsl     r1, r1, #12
	str     r1, [r4, #0x44]
	mov     r1, #0xff
	lsl     r1, r1, #12
	str     r1, [r4, #0x48]
	mov     r1, #0x5f
	lsl     r1, r1, #12
	str     r1, [r4, #0x4c]
	mov     r1, #0x61
	lsl     r1, r1, #12
	str     r1, [r4, #0x50]
	mov     r1, #0x1
	str     r1, [r4, #0x2c]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x22440f4

.word 0xfffc0000 @ 0x22440f4



.thumb
Function_22440f8: @ 22440f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r2, #0x0
	str     r2, [r4, #0x2c]
	ldr     r1, [r4, #0x44]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x44]
	cmp     r0, #0x0
	bgt     branch_224411c
	mov     r0, #0x2
	str     r2, [r4, #0x44]
	lsl     r0, r0, #12
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224411c: @ 224411c :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244136


.align 2, 0


.thumb
Function_2244138: @ 2244138 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x2
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244166
	lsl     r0, r0, #4
	str     r0, [r4, #0x54]
.thumb
branch_2244166: @ 2244166 :thumb
	mov     r0, #0xe
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bge     branch_2244172
	str     r0, [r4, #0x4c]
.thumb
branch_2244172: @ 2244172 :thumb
	mov     r0, #0x22
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	ble     branch_224417e
	str     r0, [r4, #0x50]
.thumb
branch_224417e: @ 224417e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0xe
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_22441b6
	mov     r0, #0x22
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_22441b6
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2244d34
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22441b6: @ 22441b6 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22441bc

.thumb
Function_22441bc: @ 22441bc :thumb
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0xf
	blt     branch_22441d4
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0xc] @ 0x22441d8, (=0xfffc0000)
	str     r1, [r0, #0x58]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_22441d4: @ 22441d4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22441d8

.word 0xfffc0000 @ 0x22441d8



.thumb
Function_22441dc: @ 22441dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [sp, #0x0]
	cmp     r1, r0
	bgt     branch_2244214
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244214: @ 2244214 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2244226


.align 2, 0


.thumb
Function_2244228: @ 2244228 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x58]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	ldr     r0, [pc, #0x48] @ 0x2244280, (=0xffffe000)
	str     r1, [r4, #0x58]
	cmp     r1, r0
	ble     branch_224424c
	str     r0, [r4, #0x58]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x5c]
	bl      Function_2077e3c
.thumb
branch_224424c: @ 224424c :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224427e

.align 2
.word 0xffffe000 @ 0x2244280



.thumb
Function_2244284: @ 2244284 :thumb
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0x8
	blt     branch_224429c
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0xc] @ 0x22442a0, (=0xfffff000)
	str     r1, [r0, #0x58]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_224429c: @ 224429c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22442a0

.word 0xfffff000 @ 0x22442a0
.thumb
Function_22442a4: @ 22442a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x58]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x50] @ 0x2244300, (=0xfffc0000)
	str     r1, [r4, #0x58]
	cmp     r1, r0
	bge     branch_22442b8
	str     r0, [r4, #0x58]
.thumb
branch_22442b8: @ 22442b8 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      Function_2021c50
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2244304, (=0xfffd8000)
	cmp     r1, r0
	bgt     branch_22442f8
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22442f8: @ 22442f8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22442fe

.align 2
.word 0xfffc0000 @ 0x2244300
.word 0xfffd8000 @ 0x2244304



.thumb
Function_2244308: @ 2244308 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x1
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #14
	add     r2, r1, r0
	lsl     r1, r0, #3
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244336
	lsl     r0, r0, #3
	str     r0, [r4, #0x54]
.thumb
branch_2244336: @ 2244336 :thumb
	mov     r0, #0x16
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_2244342
	str     r0, [r4, #0x4c]
.thumb
branch_2244342: @ 2244342 :thumb
	mov     r0, #0x1a
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bgt     branch_224434e
	str     r0, [r4, #0x50]
.thumb
branch_224434e: @ 224434e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x16
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_2244382
	mov     r0, #0x1a
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_2244382
	mov     r0, r4
	bl      Function_2246018
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244382: @ 2244382 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244388

.thumb
Function_2244388: @ 2244388 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22448c8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x224439c

.thumb
Function_224439c: @ 224439c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244fb4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22443ae


.align 2, 0


.thumb
Function_22443b0: @ 22443b0 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	mov     r0, #0x0
	bx      lr
@ 0x22443b8


.thumb
Function_22443b8: @ 22443b8 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x2c] @ 0x22443e8, (=0x2249310)
	mov     r5, r1
.thumb
branch_22443be: @ 22443be :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_22443be
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x1
	bne     branch_22443e6
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_22443e0
	bl      Function_20713d0
.thumb
branch_22443e0: @ 22443e0 :thumb
	mov     r0, r5
	bl      Function_2244c10
.thumb
branch_22443e6: @ 22443e6 :thumb
	pop     {r3-r5,pc}
@ 0x22443e8

.word 0x2249310 @ 0x22443e8



.thumb
Function_22443ec: @ 22443ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244402
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244402

.thumb
branch_2244402: @ 2244402 :thumb
	ldr     r5, [pc, #0x50] @ 0x2244454, (=0x22491d4)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r5, [pc, #0x48] @ 0x2244458, (=0x224912c)
	str     r0, [r3, #0x0]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_2244cfc
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_224529c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22452bc
	mov     r0, r4
	bl      Function_224469c
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2244454

.word 0x22491d4 @ 0x2244454
.word 0x224912c @ 0x2244458



.thumb
Function_224445c: @ 224445c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22451b8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224446e


.align 2, 0


.thumb
Function_2244470: @ 2244470 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244db4
	mov     r0, r4
	bl      Function_2244674
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244488

.thumb
Function_2244488: @ 2244488 :thumb
	push    {r4,lr}
	mov     r1, #0x82
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_224449a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224449a

.thumb
branch_224449a: @ 224449a :thumb
	bl      Function_224469c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22444a8

.thumb
Function_22444a8: @ 22444a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224543c
	mov     r0, r4
	bl      Function_224551c
	mov     r0, r4
	bl      Function_2244f74
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245f64
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444ce


.align 2, 0


.thumb
Function_22444d0: @ 22444d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245470
	cmp     r0, #0x2
	beq     branch_22444e0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444e0

.thumb
branch_22444e0: @ 22444e0 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444f6


.align 2, 0


.thumb
Function_22444f8: @ 22444f8 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0x14
	blt     branch_2244512
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	bl      Function_22456d4
.thumb
branch_2244512: @ 2244512 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2244516


.align 2, 0


.thumb
Function_2244518: @ 2244518 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245470
	cmp     r0, #0x3
	beq     branch_2244528
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244528

.thumb
branch_2244528: @ 2244528 :thumb
	ldr     r0, [pc, #0x18] @ 0x2244544, (=0x649)
	bl      Function_2005748
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [r4, #0x54]
	mov     r0, #0x2
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244542

.align 2
.word 0x649 @ 0x2244544



.thumb
Function_2244548: @ 2244548 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x2
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #10
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244576
	lsl     r0, r0, #5
	str     r0, [r4, #0x54]
.thumb
branch_2244576: @ 2244576 :thumb
	mov     r0, #0x5f
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	blt     branch_2244582
	str     r0, [r4, #0x4c]
.thumb
branch_2244582: @ 2244582 :thumb
	mov     r0, #0x61
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #12
	cmp     r1, r0
	bgt     branch_224458e
	str     r0, [r4, #0x50]
.thumb
branch_224458e: @ 224458e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_22445ba
	mov     r0, r4
	bl      Function_2245470
	cmp     r0, #0x4
	bne     branch_22445ba
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_22445ba: @ 22445ba :thumb
	mov     r0, #0x5f
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_22445e6
	mov     r0, #0x61
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_22445e6
	ldr     r0, [r4, #0x60]
	ldr     r0, [r0, #0x8]
	bl      Function_2244f20
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r0, r4
	bl      Function_2244f58
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22445e6: @ 22445e6 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22445ec

.thumb
Function_22445ec: @ 22445ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x0
	bne     branch_2244606
	bl      Function_2245470
	cmp     r0, #0x4
	bne     branch_2244606
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_2244606: @ 2244606 :thumb
	mov     r0, r4
	bl      Function_2245470
	cmp     r0, #0x2
	beq     branch_2244614
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244614

.thumb
branch_2244614: @ 2244614 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_2244622
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_2244622: @ 2244622 :thumb
	mov     r0, r4
	bl      Function_2245480
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244632


.align 2, 0


.thumb
Function_2244634: @ 2244634 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2244646
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244646: @ 2244646 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224464a


.align 2, 0


.thumb
Function_224464c: @ 224464c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x2244670, (=0x22446b9)
	mov     r1, r4
	mov     r2, #0x80
	bl      Function_200da04
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x224466e

.align 2
.word 0x22446b9 @ 0x2244670



.thumb
Function_2244674: @ 2244674 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x2244698, (=0x22447b5)
	mov     r1, r4
	mov     r2, #0x80
	bl      Function_200da04
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244696

.align 2
.word 0x22447b5 @ 0x2244698



.thumb
Function_224469c: @ 224469c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22446b6
	bl      Function_200da58
	mov     r0, #0x85
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_22446b6: @ 22446b6 :thumb
	pop     {r4,pc}
@ 0x22446b8


.thumb
Function_22446b8: @ 22446b8 :thumb
	push    {r3-r7,lr}
	mov     r0, #0x81
	mov     r6, r1
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_224472e
	mov     r7, #0x6b
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_22446ce: @ 22446ce :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_22446d8
	bl      Function_200a3dc
.thumb
branch_22446d8: @ 22446d8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22446ce
	mov     r7, #0x6f
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_22446e8: @ 22446e8 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_22446f2
	bl      Function_200a640
.thumb
branch_22446f2: @ 22446f2 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_22446e8
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_224470a
	mov     r0, r6
	bl      Function_2245118
.thumb
branch_224470a: @ 224470a :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_224471a
	mov     r0, r6
	bl      Function_2245170
.thumb
branch_224471a: @ 224471a :thumb
	mov     r0, #0x81
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r2, #0x80
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r6, r0]
	ldr     r0, [pc, #0x8] @ 0x2244730, (=0x2244735)
	mov     r1, r6
	bl      Function_200da3c
.thumb
branch_224472e: @ 224472e :thumb
	pop     {r3-r7,pc}
@ 0x2244730

.word 0x2244735 @ 0x2244730
.thumb
Function_2244734: @ 2244734 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r0, #0x81
	mov     r6, r1
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x1
	bne     branch_22447b2
	mov     r7, #0x6b
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_224474c: @ 224474c :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2244756
	bl      Function_2009d4c
.thumb
branch_2244756: @ 2244756 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_224474c
	mov     r7, #0x6f
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244766: @ 2244766 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244770
	bl      Function_2009d4c
.thumb
branch_2244770: @ 2244770 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_2244766
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_224478e
	bl      free
	mov     r0, #0x83
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r6, r0]
.thumb
branch_224478e: @ 224478e :thumb
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_22447a4
	bl      free
	mov     r0, #0x21
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r6, r0]
.thumb
branch_22447a4: @ 22447a4 :thumb
	mov     r0, #0x82
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	ldr     r0, [sp, #0x0]
	bl      Function_200da58
.thumb
branch_22447b2: @ 22447b2 :thumb
	pop     {r3-r7,pc}
@ 0x22447b4

.thumb
Function_22447b4: @ 22447b4 :thumb
	push    {r4,lr}
	mov     r0, #0x67
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2009dc8
	mov     r1, #0x81
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_22447e6
	bl      Function_200a3dc
	ldr     r0, [pc, #0x14] @ 0x22447e8, (=0x22447ed)
	mov     r1, r4
	mov     r2, #0x80
	bl      Function_200da3c
	mov     r0, #0x81
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22447e6: @ 22447e6 :thumb
	pop     {r4,pc}
@ 0x22447e8

.word 0x22447ed @ 0x22447e8
.thumb
Function_22447ec: @ 22447ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x67
	mov     r4, r1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2009dc8
	mov     r1, #0x81
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_224481a
	bl      Function_2009d4c
	mov     r0, #0x82
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_224481a: @ 224481a :thumb
	pop     {r3-r5,pc}
@ 0x224481c


.thumb
Function_224481c: @ 224481c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224491c
	mov     r2, #0x3
	mov     r3, #0x1
	mov     r4, r0
	lsl     r2, r2, #18
	mov     r0, r5
	mov     r1, #0x0
	lsl     r3, r3, #12
	str     r2, [sp, #0x0]
	bl      Function_2244f80
	mov     r0, r5
	bl      Function_2244f2c
	ldr     r0, [r5, #0x60]
	mov     r1, #0x0
	ldr     r0, [r0, #0x8]
	bl      Function_201a008
	strh    r0, [r5, #0x24]
	ldr     r0, [r5, #0x60]
	mov     r1, #0x3
	ldr     r0, [r0, #0x8]
	bl      Function_201a008
	strh    r0, [r5, #0x26]
	ldr     r2, [pc, #0x6c] @ 0x22448c4, (=0x400000a)
	mov     r1, #0x3
	ldrh    r3, [r2, #0x0]
	mov     r0, #0x1
	bic     r3, r1
	orr     r0, r3
	strh    r0, [r2, #0x0]
	ldrh    r0, [r2, #0x4]
	bic     r0, r1
	strh    r0, [r2, #0x4]
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r2, r5
	mov     r0, r4
	mov     r1, #0x2
	add     r2, #0x6c
	bl      Function_2244e54
	ldr     r0, [r5, #0x60]
	mov     r3, r5
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	mov     r2, #0x0
	add     r3, #0x68
	bl      Function_2244e7c
	ldr     r0, [r5, #0x60]
	mov     r3, r5
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	mov     r2, #0x1
	add     r3, #0x64
	bl      Function_2244eb4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244928
	mov     r0, r4
	bl      Call_FS_CloseFile
	mov     r0, #0x4
	mov     r1, #0x20
	bl      Function_20711ec
	mov     r1, #0x1e
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x22448c4

.word 0x400000a @ 0x22448c4
.thumb
Function_22448c8: @ 22448c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207121c
	ldr     r0, [r4, #0x60]
	ldr     r0, [r0, #0x8]
	bl      Function_2244f20
	mov     r0, r4
	bl      Function_2244b6c
	ldr     r2, [pc, #0x28] @ 0x2244918, (=0x4000008)
	ldrh    r1, [r4, #0x24]
	ldrh    r3, [r2, #0x0]
	mov     r0, #0x3
	bic     r3, r0
	orr     r1, r3
	strh    r1, [r2, #0x0]
	ldrh    r1, [r2, #0x6]
	bic     r1, r0
	ldrh    r0, [r4, #0x26]
	orr     r0, r1
	strh    r0, [r2, #0x6]
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_205d8cc
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2244916

.align 2
.word 0x4000008 @ 0x2244918



.thumb
Function_224491c: @ 224491c :thumb
	ldr     r3, [pc, #0x4] @ 0x2244924, (=LoadFromNARC_8+1)
	mov     r0, #0x61
	mov     r1, #0x4
	bx      r3
@ 0x2244924

.word LoadFromNARC_8+1 @ 0x2244924



.thumb
Function_2244928: @ 2244928 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x7d
	mov     r5, r0
	lsl     r1, r1, #2
	add     r1, r5, r1
	bl      Function_224508c
	mov     r1, r5
	mov     r0, #0x20
	add     r1, #0x74
	mov     r2, #0x4
	bl      Function_20095c4
	str     r0, [r5, #0x70]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0x74
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r0, #0x4
	mov     r1, #0x0
	mov     r2, r0
	bl      Function_2009714
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x1a
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x4
	mov     r1, #0x2
	mov     r2, r0
	bl      Function_2009714
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_22449d6
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xd
	mov     r3, #0x0
	bl      Function_2009a4c
	b       branch_22449f0
@ 0x22449d6

.thumb
branch_22449d6: @ 22449d6 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x10
	mov     r3, #0x0
	bl      Function_2009a4c
.thumb
branch_22449f0: @ 22449f0 :thumb
	mov     r1, #0x1b
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r4
	bl      Function_22450f4
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r6, #0x0
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	sub     r1, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2009b04
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r0, #0x0
	beq     branch_2244a52
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0x4
	str     r2, [sp, #0xc]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009b04
	lsl     r1, r6, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2244a52: @ 2244a52 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224514c
	lsl     r1, r6, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xb
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2244aa4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xe
	mov     r3, #0x0
	bl      Function_2009bc4
	b       branch_2244abc
@ 0x2244aa4

.thumb
branch_2244aa4: @ 2244aa4 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x11
	mov     r3, #0x0
	bl      Function_2009bc4
.thumb
branch_2244abc: @ 2244abc :thumb
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x1d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x28
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xc
	bl      Function_2009bc4
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2244b24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x30
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xf
	mov     r3, #0x0
	bl      Function_2009bc4
	b       branch_2244b3e
@ 0x2244b24

.thumb
branch_2244b24: @ 2244b24 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x30
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x12
	mov     r3, #0x0
	bl      Function_2009bc4
.thumb
branch_2244b3e: @ 2244b3e :thumb
	mov     r1, #0x77
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x7d
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x5c]
	add     r1, r5, r1
	mov     r2, #0x4
	bl      Function_224509c
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x18
	add     r0, r5, r1
	mov     r1, #0x4
	bl      Function_22450e4
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2244b6c

.thumb
Function_2244b6c: @ 2244b6c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0x6b
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2244b78: @ 2244b78 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2244b82
	bl      Function_200a4e4
.thumb
branch_2244b82: @ 2244b82 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2244b78
	mov     r7, #0x6f
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244b92: @ 2244b92 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244b9c
	bl      Function_200a6dc
.thumb
branch_2244b9c: @ 2244b9c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_2244b92
	mov     r7, #0x72
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244bac: @ 2244bac :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244bb6
	bl      Function_2009d4c
.thumb
branch_2244bb6: @ 2244bb6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x4
	blt     branch_2244bac
	mov     r7, #0x76
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244bc6: @ 2244bc6 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244bd0
	bl      Function_2009d4c
.thumb
branch_2244bd0: @ 2244bd0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_2244bc6
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	ldr     r0, [r6, #0x70]
	bl      Function_20219c0
	ldr     r0, [r6, #0x70]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x2244c0e


.align 2, 0
.thumb
Function_2244c10: @ 2244c10 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x70]
	cmp     r0, #0x0
	beq     branch_2244c1c
	bl      Function_20219f8
branch_2244c1c: @ 2244c1c :thumb
	pop     {r3,pc}
@ 0x2244c1e


.align 2, 0
.thumb
Function_2244c20: @ 2244c20 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	ldr     r0, [sp, #0x84]
	mov     r4, r1
	mov     r1, r2
	mov     r2, r3
	cmp     r0, #0x4
	bne     branch_2244c68
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r6, #0x67
	ldr     r3, [sp, #0x88]
	str     r0, [sp, #0xc]
	lsl     r6, r6, #2
	str     r3, [sp, #0x10]
	ldr     r3, [r5, r6]
	str     r3, [sp, #0x14]
	add     r3, r6, #0x4
	ldr     r3, [r5, r3]
	add     r6, #0x8
	str     r3, [sp, #0x18]
	ldr     r3, [r5, r6]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
	b       branch_2244ca2
@ 0x2244c68

.thumb
branch_2244c68: @ 2244c68 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	ldr     r0, [sp, #0x88]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r5, r6]
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r5, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
.thumb
branch_2244ca2: @ 2244ca2 :thumb
	ldr     r0, [r5, #0x70]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x4
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_2244cce
	bl      ErrorHandling
.thumb
branch_2244cce: @ 2244cce :thumb
	mov     r0, r4
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x2244cd4


.thumb
Function_2244cd4: @ 2244cd4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, #0x1
	mov     r4, r3
	str     r5, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r2, r5
	bl      Function_2244c20
	mov     r1, r4
	mov     r5, r0
	bl      Function_2021d6c
	mov     r0, r5
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2244cfa


.align 2, 0
.thumb
Function_2244cfc: @ 2244cfc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r2, [r0, #0xc]
	mov     r3, #0x0
	cmp     r2, #0x1
	bne     branch_2244d0a
	mov     r3, #0x1
.thumb
branch_2244d0a: @ 2244d0a :thumb
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	mov     r4, #0x0
	str     r4, [sp, #0x8]
	mov     r4, #0x83
	str     r4, [sp, #0xc]
	bl      Function_2244c20
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244d34

.thumb
Function_2244d34: @ 2244d34 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_2021ce4
	pop     {r4,pc}
@ 0x2244d4a


.align 2, 0


.thumb
Function_2244d4c: @ 2244d4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r0
	add     r0, sp, #0x1c
	mov     r7, #0x0
	str     r7, [r0, #0x0]
	str     r7, [r0, #0x4]
	mov     r6, r2
	ldr     r5, [pc, #0x50] @ 0x2244db0, (=0x2249168)
	mov     r3, r1
	str     r7, [r0, #0x8]
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r2, #0x0]
	str     r7, [sp, #0x0]
	.hword  0x1e78 @ sub r0, r7, #0x1
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r0, r4
	mov     r2, r7
	mov     r3, r7
	str     r6, [sp, #0xc]
	bl      Function_2244c20
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0x1c
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_2021c70
	mov     r0, r7
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2244dae

.align 2
.word 0x2249168 @ 0x2244db0



.thumb
Function_2244db4: @ 2244db4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_224491c
	mov     r6, r0
	mov     r0, #0x6b
	mov     r5, #0x0
	mov     r2, r4
	lsl     r0, r0, #2
.thumb
branch_2244dc8: @ 2244dc8 :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2244df4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x7
	bl      Function_2009a4c
	lsl     r1, r5, #2
	add     r2, r4, r1
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	b       branch_2244dfc
@ 0x2244df4

.thumb
branch_2244df4: @ 2244df4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r5, #0x4
	blt     branch_2244dc8
.thumb
branch_2244dfc: @ 2244dfc :thumb
	cmp     r5, #0x4
	blt     branch_2244e04
	bl      ErrorHandling
.thumb
branch_2244e04: @ 2244e04 :thumb
	mov     r0, #0x72
	mov     r5, #0x0
	mov     r2, r4
	lsl     r0, r0, #2
.thumb
branch_2244e0c: @ 2244e0c :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2244e38
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x8
	bl      Function_2009bc4
	lsl     r1, r5, #2
	add     r2, r4, r1
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	b       branch_2244e40
@ 0x2244e38

.thumb
branch_2244e38: @ 2244e38 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r5, #0x4
	blt     branch_2244e0c
.thumb
branch_2244e40: @ 2244e40 :thumb
	cmp     r5, #0x4
	blt     branch_2244e48
	bl      ErrorHandling
.thumb
branch_2244e48: @ 2244e48 :thumb
	mov     r0, r6
	bl      Call_FS_CloseFile
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2244e52


.align 2, 0


.thumb
Function_2244e54: @ 2244e54 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r5
	mov     r4, r0
	blx     Function_20a71b0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x3
	ldr     r1, [r1, #0xc]
	mov     r2, #0x20
	lsl     r3, r0, #7
	bl      Function_201972c
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x2244e7c

.thumb
Function_2244e7c: @ 2244e7c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r4
	mov     r6, r0
	blx     Function_20a7118
	ldr     r3, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r3, [r3, #0x10]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_201958c
	mov     r0, r6
	bl      free
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2244eb2


.align 2, 0


.thumb
Function_2244eb4: @ 2244eb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r2
	mov     r6, r1
	mov     r2, #0x0
	mov     r4, r3
	mov     r1, #0x3
	mov     r3, r2
	mov     r5, r0
	bl      Function_2019184
	mov     r1, #0x3
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r6
	mov     r1, r7
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r4
	mov     r6, r0
	blx     Function_20a7248
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	mov     r2, r3
	ldr     r3, [r3, #0x8]
	mov     r1, #0x3
	add     r2, #0xc
	bl      Function_2019574
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019e2c
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2019448
	mov     r0, r6
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244f20

.thumb
Function_2244f20: @ 2244f20 :thumb
	ldr     r3, [pc, #0x4] @ 0x2244f28, (=Function_2019ebc+1)
	mov     r1, #0x3
	bx      r3
@ 0x2244f26

.align 2
.word Function_2019ebc+1 @ 0x2244f28



.thumb
Function_2244f2c: @ 2244f2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244f8c
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_2244f58
	mov     r0, r4
	bl      Function_2244f60
	mov     r0, r4
	bl      Function_2244f50
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2244f50

.thumb
Function_2244f50: @ 2244f50 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x30]
	bx      lr
@ 0x2244f56


.align 2, 0


.thumb
Function_2244f58: @ 2244f58 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bx      lr
@ 0x2244f5e


.align 2, 0


.thumb
Function_2244f60: @ 2244f60 :thumb
	mov     r1, #0x18
	str     r1, [r0, #0x34]
	mov     r1, #0x0
	str     r1, [r0, #0x38]
	mov     r1, #0x17
	str     r1, [r0, #0x3c]
	mov     r1, #0x1
	str     r1, [r0, #0x40]
	bx      lr
@ 0x2244f72


.align 2, 0


.thumb
Function_2244f74: @ 2244f74 :thumb
	mov     r1, #0x17
	str     r1, [r0, #0x3c]
	mov     r1, #0x1
	str     r1, [r0, #0x40]
	bx      lr
@ 0x2244f7e


.align 2, 0


.thumb
Function_2244f80: @ 2244f80 :thumb
	str     r1, [r0, #0x44]
	str     r3, [r0, #0x48]
	ldr     r1, [sp, #0x0]
	str     r2, [r0, #0x4c]
	str     r1, [r0, #0x50]
	bx      lr
@ 0x2244f8c

.thumb
Function_2244f8c: @ 2244f8c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244f9e
	bl      ErrorHandling
.thumb
branch_2244f9e: @ 2244f9e :thumb
	ldr     r0, [pc, #0x10] @ 0x2244fb0, (=0x2244fe5)
	mov     r1, r4
	mov     r2, #0x81
	bl      Function_200da04
	mov     r1, #0x86
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244fb0

.word 0x2244fe5 @ 0x2244fb0
.thumb
Function_2244fb4: @ 2244fb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244fc6
	bl      ErrorHandling
.thumb
branch_2244fc6: @ 2244fc6 :thumb
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200da58
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2244fe0, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x2244fde

.align 2
.word 0xffff1fff @ 0x2244fe0



.thumb
Function_2244fe4: @ 2244fe4 :thumb
	push    {r3-r6}
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x0
	beq     branch_224507a
	mov     r3, #0x1
	lsl     r3, r3, #26
	ldr     r2, [r3, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x2245080, (=0xffff1fff)
	and     r2, r0
	ldr     r0, [r1, #0x30]
	lsl     r0, r0, #13
	orr     r0, r2
	str     r0, [r3, #0x0]
	add     r3, #0x48
	ldrh    r2, [r3, #0x0]
	mov     r0, #0x3f
	bic     r2, r0
	ldr     r0, [r1, #0x34]
	orr     r2, r0
	ldr     r0, [r1, #0x38]
	cmp     r0, #0x0
	beq     branch_2245014
	mov     r0, #0x20
	orr     r2, r0
.thumb
branch_2245014: @ 2245014 :thumb
	ldr     r0, [pc, #0x6c] @ 0x2245084, (=0x4000048)
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x2]
	mov     r0, #0x3f
	bic     r2, r0
	ldr     r0, [r1, #0x3c]
	orr     r2, r0
	ldr     r0, [r1, #0x40]
	cmp     r0, #0x0
	beq     branch_224502c
	mov     r0, #0x20
	orr     r2, r0
.thumb
branch_224502c: @ 224502c :thumb
	ldr     r5, [pc, #0x58] @ 0x2245088, (=0x400004a)
	strh    r2, [r5, #0x0]
	ldr     r2, [r1, #0x50]
	ldr     r6, [r1, #0x48]
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	ldr     r2, [r1, #0x4c]
	asr     r4, r0, #12
	asr     r0, r2, #11
	lsr     r0, r0, #20
	add     r0, r2, r0
	ldr     r2, [r1, #0x44]
	asr     r3, r0, #12
	asr     r0, r2, #11
	lsr     r0, r0, #20
	asr     r1, r6, #11
	add     r0, r2, r0
	lsr     r1, r1, #20
	asr     r0, r0, #12
	add     r1, r6, r1
	lsl     r2, r0, #8
	mov     r0, #0xff
	asr     r1, r1, #12
	lsl     r0, r0, #8
	lsl     r1, r1, #24
	and     r2, r0
	lsr     r1, r1, #24
	orr     r2, r1
	mov     r1, r5
	sub     r1, #0xa
	strh    r2, [r1, #0x0]
	lsl     r1, r3, #8
	and     r1, r0
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	orr     r1, r0
	.hword  0x1fa8 @ sub r0, r5, #0x6
	strh    r1, [r0, #0x0]
.thumb
branch_224507a: @ 224507a :thumb
	pop     {r3-r6}
	bx      lr
@ 0x224507e

.align 2
.word 0xffff1fff @ 0x2245080
.word 0x4000048 @ 0x2245084
.word 0x400004a @ 0x2245088



.thumb
Function_224508c: @ 224508c :thumb
	ldr     r3, [pc, #0x8] @ 0x2245098, (=Function_2075ef4+1)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x5c]
	mov     r2, #0x2
	bx      r3
@ 0x2245098

.word Function_2075ef4+1 @ 0x2245098



.thumb
Function_224509c: @ 224509c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r1, #0x32
	mov     r6, r0
	mov     r0, #0x4
	lsl     r1, r1, #6
	mov     r7, r2
	bl      malloc_maybe
	mov     r4, r0
	bne     branch_22450b8
	bl      ErrorHandling
.thumb
branch_22450b8: @ 22450b8 :thumb
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldrh    r0, [r5, #0x6]
	mov     r2, r7
	mov     r3, r4
	str     r0, [sp, #0xc]
	ldrh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x2]
	bl      Function_2013750
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22450e2


.align 2, 0


.thumb
Function_22450e4: @ 22450e4 :thumb
	mov     r3, r0
	mov     r2, r1
	ldrh    r0, [r3, #0x0]
	ldrh    r1, [r3, #0x4]
	ldr     r3, [pc, #0x0] @ 0x22450f0, (=Function_2013660+1)
	bx      r3
@ 0x22450f0

.word Function_2013660+1 @ 0x22450f0



.thumb
Function_22450f4: @ 22450f4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r2, #0x4
	str     r2, [sp, #0x8]
	mov     r2, #0x67
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2009a4c
	add     sp, #0xc
	pop     {pc}
@ 0x2245116


.align 2, 0
.thumb
Function_2245118: @ 2245118 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x67
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x3
	bl      Function_2009dc8
	bl      Function_200a534
	mov     r1, #0x1
	blx     Function_20a81b0
	mov     r1, #0x32
	mov     r5, r0
	mov     r0, r4
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r2, #0x32
	mov     r0, r4
	mov     r1, r5
	lsl     r2, r2, #6
	blx     GX_LoadOBJ
	pop     {r3-r5,pc}
@ 0x224514c


.thumb
Function_224514c: @ 224514c :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x4
	str     r2, [sp, #0xc]
	mov     r2, #0x1a
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2009b04
	add     sp, #0x10
	pop     {r3,pc}
@ 0x2245170


.thumb
Function_2245170: @ 2245170 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2009dc8
	bl      Function_200a534
	mov     r6, r0
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_2009dc8
	mov     r1, r6
	bl      Function_200a72c
	mov     r1, #0x1
	blx     Function_20a81fc
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x20
	blx     GX_LoadOBJPltt
	pop     {r4-r6,pc}
@ 0x22451b6


.align 2, 0
.thumb
Function_22451b8: @ 22451b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_200a4e4
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x6b
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_22451e2: @ 22451e2 :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_22451f6
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x6b
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_22451fe
@ 0x22451f6

.thumb
branch_22451f6: @ 22451f6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x4
	blt     branch_22451e2
.thumb
branch_22451fe: @ 22451fe :thumb
	cmp     r0, #0x4
	blt     branch_2245206
	bl      ErrorHandling
.thumb
branch_2245206: @ 2245206 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_200a6dc
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x6f
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_224522c: @ 224522c :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_2245240
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_2245248
@ 0x2245240

.thumb
branch_2245240: @ 2245240 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x3
	blt     branch_224522c
.thumb
branch_2245248: @ 2245248 :thumb
	cmp     r0, #0x3
	blt     branch_2245250
	bl      ErrorHandling
.thumb
branch_2245250: @ 2245250 :thumb
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_2009d4c
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x72
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_2245276: @ 2245276 :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_224528a
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x72
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_2245292
@ 0x224528a

.thumb
branch_224528a: @ 224528a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x4
	blt     branch_2245276
.thumb
branch_2245292: @ 2245292 :thumb
	cmp     r0, #0x4
	blt     branch_224529a
	bl      ErrorHandling
.thumb
branch_224529a: @ 224529a :thumb
	pop     {r3-r5,pc}
@ 0x224529c

.thumb
Function_224529c: @ 224529c :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	sub     r3, r2, #0x4
	str     r3, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	mov     r3, #0x81
	str     r3, [sp, #0xc]
	mov     r3, #0x2
	bl      Function_2244c20
	add     sp, #0x10
	pop     {r3,pc}
@ 0x22452ba


.align 2, 0


.thumb
Function_22452bc: @ 22452bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r0, #0x2
	ldr     r4, [pc, #0x5c] @ 0x2245324, (=0x224936c)
	mov     r6, r1
	str     r0, [r5, #0x14]
	mov     r7, #0x0
.thumb
branch_22452cc: @ 22452cc :thumb
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x1c
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	add     r2, sp, #0x10
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0xc]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x10]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0xc]
	str     r6, [sp, #0x4]
	mov     r0, r5
	bl      Function_2245328
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	add     r2, sp, #0x10
	str     r6, [sp, #0x4]
	bl      Function_2245328
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x14
	cmp     r7, #0xd
	blt     branch_22452cc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2245322

.align 2
.word 0x224936c @ 0x2245324



.thumb
Function_2245328: @ 2245328 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [sp, #0x34]
	str     r3, [sp, #0x8]
	str     r5, [sp, #0x10]
	mov     r4, r1
	str     r0, [sp, #0xc]
	ldmia   r2!, {r0,r1}
	add     r3, sp, #0x14
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x2245360, (=0x2249220)
	str     r0, [r3, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x84
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x30]
	mov     r2, r4
	bl      Function_2071330
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224535e

.align 2
.word 0x2249220 @ 0x2245360



.thumb
Function_2245364: @ 2245364 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	bl      Function_20715bc
	mov     r2, r4
	mov     r3, r0
	add     r2, #0xc
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r5
	bl      Function_20715b4
	str     r0, [r4, #0x4]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r0, [r4, #0x14]
	ldr     r2, [r4, #0xc]
	ldr     r3, [r4, #0x4]
	add     r1, sp, #0x0
	bl      Function_2244cd4
	mov     r1, #0x0
	str     r0, [r4, #0x8]
	bl      Function_2021cac
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22453ac

.thumb
Function_22453ac: @ 22453ac :thumb
	ldr     r3, [pc, #0x4] @ 0x22453b4, (=0x2021bd5)
	ldr     r0, [r1, #0x8]
	bx      r3
@ 0x22453b2


.align 2


.word 0x2021bd5 @ 0x22453b4
.thumb
Function_22453b8: @ 22453b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x0
	mov     r5, r0
	bl      Function_20715e4
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	lsr     r2, r0, #31
	lsl     r1, r0, #11
	str     r0, [sp, #0x0]
	sub     r1, r1, r2
	mov     r0, #0xb
	ror     r1, r0
	add     r0, r2, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20715d4
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_2245432
	ldr     r3, [r4, #0x14]
	ldr     r0, [r3, #0x14]
	cmp     r0, #0x2
	bne     branch_2245426
	ldr     r2, [r3, #0x4c]
	ldr     r0, [r3, #0x50]
	mov     r3, #0x2
	ldr     r6, [sp, #0x4]
	lsl     r3, r3, #12
	sub     r5, r6, r3
	mov     r1, #0x0
	cmp     r5, r2
	blt     branch_224541c
	cmp     r5, r0
	bgt     branch_224541c
	add     r3, r6, r3
	cmp     r3, r2
	blt     branch_224541c
	cmp     r3, r0
	bgt     branch_224541c
	mov     r1, #0x1
.thumb
branch_224541c: @ 224541c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2021cac
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2245426

.thumb
branch_2245426: @ 2245426 :thumb
	cmp     r0, #0x1
	bne     branch_2245432
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_2245432: @ 2245432 :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2245436


.align 2, 0
.thumb
Function_2245438: @ 2245438 :thumb
	bx      lr
@ 0x224543a


.align 2, 0
.thumb
Function_224543c: @ 224543c :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r2, sp, #0xc
	mov     r3, #0x0
	mov     r4, r0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	str     r4, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x82
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x224546c, (=0x2249248)
	bl      Function_2071330
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x224546c

.word 0x2249248 @ 0x224546c
.thumb
Function_2245470: @ 2245470 :thumb
	push    {r3,lr}
	mov     r1, #0x7b
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_2071598
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x2245480

.thumb
Function_2245480: @ 2245480 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2071598
	mov     r5, r0
	ldr     r0, [r5, #0x60]
	cmp     r0, #0x0
	beq     branch_224549a
	bl      Function_207136c
.thumb
branch_224549a: @ 224549a :thumb
	ldr     r0, [r5, #0x64]
	cmp     r0, #0x0
	beq     branch_22454a4
	bl      0x21f0efc @ Function_5_21f0efc
.thumb
branch_22454a4: @ 22454a4 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207136c
	pop     {r3-r5,pc}
@ 0x22454b0

.thumb
Function_22454b0: @ 22454b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	str     r0, [r4, #0x5c]
	mov     r0, r5
	bl      Function_20715e4
	mov     r2, #0x0
	ldr     r0, [r4, #0x5c]
	add     r1, sp, #0x0
	mov     r3, r2
	bl      Function_2244d4c
	str     r0, [r4, #0x58]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22454dc

.thumb
Function_22454dc: @ 22454dc :thumb
	ldr     r3, [pc, #0x4] @ 0x22454e4, (=Function_2021bd4+1)
	ldr     r0, [r1, #0x58]
	bx      r3
@ 0x22454e2

.align 2
.word Function_2021bd4+1 @ 0x22454e4



.thumb
Function_22454e8: @ 22454e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x2245504, (=0x2249198)
	ldr     r4, [r0, r1]
branch_22454f4: @ 22454f4 :thumb
	ldrb    r1, [r5, #0x1]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_22454f4
	pop     {r3-r5,pc}
@ 0x2245504

.word 0x2249198 @ 0x2245504



.thumb
Function_2245508: @ 2245508 :thumb
	bx      lr
@ 0x224550a


.align 2, 0
.thumb
Function_224550c: @ 224550c :thumb
	push    {r3,lr}
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
	ldr     r0, [r0, #0x58]
	bl      Function_2021cac
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224551c


.thumb
Function_224551c: @ 224551c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	ldr     r4, [pc, #0x98] @ 0x22455bc, (=0x22491b0)
	mov     r2, r0
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0xc
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r4, [pc, #0x90] @ 0x22455c0, (=0x224915c)
	str     r0, [r3, #0x0]
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	bl      Function_2071598
	mov     r4, r0
	mov     r3, #0x1
	mov     r5, r4
	strb    r3, [r4, #0x0]
	mov     r2, #0x0
	strb    r2, [r4, #0x1]
	strb    r2, [r4, #0x2]
	add     r6, sp, #0xc
	ldmia   r6!, {r0,r1}
	add     r5, #0x8
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	add     r6, sp, #0x0
	str     r0, [r5, #0x0]
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x18]
	mov     r0, #0xf
	mov     r5, r4
	str     r2, [r4, #0x1c]
	lsl     r0, r0, #14
	str     r0, [r4, #0x38]
	ldmia   r6!, {r0,r1}
	add     r5, #0x2c
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0xc
	str     r0, [r5, #0x0]
	lsl     r0, r3, #9
	str     r0, [r4, #0x50]
	mov     r0, #0x2d
	lsl     r0, r0, #14
	str     r0, [r4, #0x40]
	str     r2, [r4, #0x48]
	lsl     r0, r3, #13
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x58]
	bl      Function_2021c50
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x58]
	bl      Function_2021c94
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22455bc

.word 0x22491b0 @ 0x22455bc
.word 0x224915c @ 0x22455c0



.thumb
Function_22455c4: @ 22455c4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x58]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_22455e4
	lsr     r0, r0, #2
	add     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_22455e4: @ 22455e4 :thumb
	ldr     r0, [pc, #0xdc] @ 0x22456c4, (=0x13b)
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r2, r0, #12
	ldr     r0, [pc, #0xa4] @ 0x22456c8, (=0x10e)
	cmp     r2, r0
	bge     branch_224562e
	mov     r0, #0x1
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_224562e: @ 224562e :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_2245640
	str     r0, [r5, #0x2c]
.thumb
branch_2245640: @ 2245640 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_2245652
	str     r0, [r5, #0x30]
.thumb
branch_2245652: @ 2245652 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r0, #0x6
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	str     r1, [r5, #0x38]
	asr     r0, r0, #12
	bpl     branch_2245674
	mov     r0, #0x0
	str     r0, [r5, #0x38]
.thumb
branch_2245674: @ 2245674 :thumb
	ldr     r1, [r5, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x22456cc, (=0xfffc0000)
	cmp     r1, r0
	bge     branch_22456be
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x2
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
branch_22456be: @ 22456be :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22456c4

.word 0x13b @ 0x22456c4
.word 0x10e @ 0x22456c8
.word 0xfffc0000 @ 0x22456cc



.thumb
Function_22456d0: @ 22456d0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22456d4


.thumb
Function_22456d4: @ 22456d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r3, [pc, #0x150] @ 0x224582c, (=0x2249144)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x24
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x148] @ 0x2245830, (=0x2249138)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x2
	mov     r2, r4
	strb    r0, [r4, #0x0]
	mov     r6, #0x0
	strb    r6, [r4, #0x1]
	mov     r7, #0x1
	strb    r7, [r4, #0x2]
	str     r6, [r4, #0x4]
	add     r3, sp, #0x24
	ldmia   r3!, {r0,r1}
	add     r2, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r3, sp, #0x18
	str     r0, [r2, #0x0]
	str     r6, [r4, #0x14]
	str     r6, [r4, #0x18]
	str     r6, [r4, #0x1c]
	ldr     r6, [pc, #0x110] @ 0x2245834, (=0x13b000)
	mov     r2, r4
	str     r6, [r4, #0x38]
	ldmia   r3!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r7
	add     r0, #0xff
	str     r0, [r4, #0x50]
	mov     r0, #0xe1
	lsl     r0, r0, #12
	str     r0, [r4, #0x40]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [r4, #0x48]
	lsl     r0, r7, #17
	str     r0, [r4, #0x4c]
	lsr     r0, r6, #12
	bl      Function_201d264
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x24
	bl      Function_2021c50
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x58]
	bl      Function_2021c94
	ldr     r0, [r4, #0x58]
	mov     r1, r7
	bl      Function_2021cac
	mov     r1, #0x1e
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_2245b4c
	str     r0, [r4, #0x60]
	mov     r0, r7
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x60]
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x60] @ 0x2245838, (=0xfff88000)
	mov     r1, r7
	mov     r3, #0xc
	str     r0, [r4, #0x64]
	bl      0x21f0f10 @ Function_5_21f0f10
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x50] @ 0x224583c, (=0x22491bc)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x79
	ldr     r1, [r4, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r1, #0x2
	mov     r0, r4
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x224582a

.align 2
.word 0x2249144 @ 0x224582c
.word 0x2249138 @ 0x2245830
.word 0x13b000 @ 0x2245834
.word 0xfff88000 @ 0x2245838
.word 0x22491bc @ 0x224583c



.thumb
Function_2245840: @ 2245840 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x58]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	bpl     branch_2245856
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2245856: @ 2245856 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #10
	cmp     r1, r0
	ble     branch_2245868
	mov     r0, #0x6
	lsl     r0, r0, #10
	sub     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2245868: @ 2245868 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2245874
	str     r0, [r5, #0x4c]
.thumb
branch_2245874: @ 2245874 :thumb
	ldr     r0, [pc, #0x130] @ 0x22459a8, (=0x13b)
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r2, r0, #12
	ldr     r0, [pc, #0xf8] @ 0x22459ac, (=0x10e)
	cmp     r2, r0
	bge     branch_22458be
	mov     r0, #0x1
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_22458be: @ 22458be :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_22458d0
	str     r0, [r5, #0x2c]
.thumb
branch_22458d0: @ 22458d0 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_22458e2
	str     r0, [r5, #0x30]
.thumb
branch_22458e2: @ 22458e2 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r0, #0x2
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #14
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	str     r1, [r5, #0x38]
	asr     r1, r0, #12
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r1, r0
	ble     branch_224590a
	lsl     r0, r0, #12
	str     r0, [r5, #0x38]
.thumb
branch_224590a: @ 224590a :thumb
	ldr     r1, [r5, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bne     branch_224594c
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_2245952
@ 0x224594c

.thumb
branch_224594c: @ 224594c :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2245952: @ 2245952 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0xc
	bne     branch_224595e
	ldr     r0, [r5, #0x60]
	bl      Function_2245b80
.thumb
branch_224595e: @ 224595e :thumb
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r0, r4
	bl      Function_2021d2c
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, #0x5
	add     r1, #0x80
	lsl     r0, r0, #10
	str     r1, [sp, #0x0]
	cmp     r1, r0
	ble     branch_2245988
	str     r0, [sp, #0x0]
.thumb
branch_2245988: @ 2245988 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x5
	add     r1, #0x80
	lsl     r0, r0, #10
	str     r1, [sp, #0x4]
	cmp     r1, r0
	ble     branch_2245998
	str     r0, [sp, #0x4]
.thumb
branch_2245998: @ 2245998 :thumb
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22459a6

.align 2
.word 0x13b @ 0x22459a8
.word 0x10e @ 0x22459ac



.thumb
Function_22459b0: @ 22459b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r1, #0x3
	mov     r0, r4
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_2021d28
	ldr     r4, [r0, #0x4]
	ldr     r0, [r5, #0x58]
	bl      Function_2021d28
	ldr     r0, [r0, #0x4]
	sub     r0, r4, r0
	str     r0, [r5, #0x54]
	ldr     r0, [r5, #0x60]
	bl      Function_2245b74
	ldr     r0, [r5, #0x64]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xc
	bl      0x21f0f10 @ Function_5_21f0f10
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r1, [r5, #0x50]
	lsl     r0, r1, #11
	str     r0, [r5, #0x40]
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	lsl     r0, r1, #3
	str     r0, [r5, #0x4c]
	mov     r0, #0x3
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2245a0a


.align 2, 0


.thumb
Function_2245a0c: @ 2245a0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x58]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r5, #0x4c]
	cmp     r2, r1
	ble     branch_2245a30
	lsl     r0, r0, #4
	str     r0, [r5, #0x4c]
.thumb
branch_2245a30: @ 2245a30 :thumb
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	mov     r0, #0x80
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	mov     r0, #0x87
	ldr     r1, [r5, #0x40]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2245a74
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2245a74: @ 2245a74 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_2245a86
	str     r0, [r5, #0x2c]
.thumb
branch_2245a86: @ 2245a86 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_2245a98
	str     r0, [r5, #0x30]
.thumb
branch_2245a98: @ 2245a98 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	add     r1, sp, #0x18
	bl      Function_2021c50
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r0, r4
	bl      Function_2021d2c
	add     r2, sp, #0xc
	add     r3, sp, #0x18
	mov     r6, r0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldmia   r6!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	ldr     r1, [r5, #0x54]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	str     r1, [r5, #0x54]
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2021c50
	mov     r0, #0x1
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #8
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x0]
	cmp     r2, r1
	ble     branch_2245b0e
	lsl     r0, r0, #5
	str     r0, [sp, #0x0]
.thumb
branch_2245b0e: @ 2245b0e :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #8
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x4]
	cmp     r2, r1
	ble     branch_2245b22
	lsl     r0, r0, #5
	str     r0, [sp, #0x4]
.thumb
branch_2245b22: @ 2245b22 :thumb
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [sp, #0x1c]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xf0
	blt     branch_2245b42
	mov     r0, #0x2
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
.thumb
branch_2245b42: @ 2245b42 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2245b48

.thumb
Function_2245b48: @ 2245b48 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245b4c

.thumb
Function_2245b4c: @ 2245b4c :thumb
	push    {lr}
	add     sp, #-0x1c
	add     r2, sp, #0x10
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r1, [sp, #0xc]
	str     r3, [r2, #0x8]
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x81
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2245b70, (=0x224920c)
	bl      Function_2071330
	add     sp, #0x1c
	pop     {pc}
@ 0x2245b6e

.align 2
.word 0x224920c @ 0x2245b70



.thumb
Function_2245b74: @ 2245b74 :thumb
	push    {r3,lr}
	bl      Function_2071598
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2245b80

.thumb
Function_2245b80: @ 2245b80 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r5
	bl      Function_20715d4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x5
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2245bc6


.align 2, 0


.thumb
Function_2245bc8: @ 2245bc8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x0
	bl      Function_22437c8
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20715d4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x4
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2245c02


.align 2, 0
.thumb
Function_2245c04: @ 2245c04 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	ldr     r1, [r0, #0x0]
	str     r1, [r4, #0x1c]
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x20]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2245c18

.thumb
Function_2245c18: @ 2245c18 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_2245c5c
	ldr     r1, [r4, #0xc]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x34] @ 0x2245c60, (=0x22492a8)
	ldr     r1, [r1, r2]
	str     r1, [r4, #0x14]
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0xc
	blt     branch_2245c5c
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_2245c5c: @ 2245c5c :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2245c60

.word 0x22492a8 @ 0x2245c60
.thumb
Function_2245c64: @ 2245c64 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	bne     branch_2245ca8
	ldr     r1, [r4, #0xc]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x34] @ 0x2245cac, (=0x22491fc)
	ldr     r1, [r1, r2]
	str     r1, [r4, #0x14]
	add     r1, sp, #0x0
	bl      Function_20715e4
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	cmp     r0, #0x4
	blt     branch_2245ca8
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_2245ca8: @ 2245ca8 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2245cac

.word 0x22491fc @ 0x2245cac
.thumb
Function_2245cb0: @ 2245cb0 :thumb
	push    {r3,lr}
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x1
	beq     branch_2245cbe
	cmp     r2, #0x2
	beq     branch_2245cc4
	pop     {r3,pc}
@ 0x2245cbe

.thumb
branch_2245cbe: @ 2245cbe :thumb
	bl      Function_2245c18
	pop     {r3,pc}
@ 0x2245cc4

.thumb
branch_2245cc4: @ 2245cc4 :thumb
	bl      Function_2245c64
	pop     {r3,pc}
@ 0x2245cca


.align 2, 0


.thumb
Function_2245ccc: @ 2245ccc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x5f
	mov     r5, r0
	mov     r0, #0x4
	lsl     r1, r1, #2
	bl      Function_2245f44
	mov     r1, r0
	str     r4, [r1, #0xc]
	ldr     r0, [pc, #0x8] @ 0x2245cec, (=0x2245d11)
	mov     r2, #0x85
	str     r5, [r1, #0x14]
	bl      Function_200d9e8
	pop     {r3-r5,pc}
@ 0x2245cec

.word 0x2245d11 @ 0x2245cec
.thumb
Function_2245cf0: @ 2245cf0 :thumb
	push    {r3,lr}
	bl      Function_201ced0
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x2245cfa


.align 2, 0


.thumb
Function_2245cfc: @ 2245cfc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201ced0
	bl      free
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x2245d10

.thumb
Function_2245d10: @ 2245d10 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x30] @ 0x2245d44, (=0x2249270)
	mov     r5, r1
.thumb
branch_2245d16: @ 2245d16 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_2245d16
	ldr     r0, [r5, #0x10]
	cmp     r0, #0x0
	beq     branch_2245d42
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2245d38
	bl      Function_20713d0
.thumb
branch_2245d38: @ 2245d38 :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_2245d42
	bl      Function_20219f8
.thumb
branch_2245d42: @ 2245d42 :thumb
	pop     {r3-r5,pc}
@ 0x2245d44

.word 0x2249270 @ 0x2245d44



.thumb
Function_2245d48: @ 2245d48 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_2243f74
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245d5e


.align 2, 0


.thumb
Function_2245d60: @ 2245d60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x4
	mov     r1, #0x20
	bl      Function_20711ec
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x20
	mov     r3, r2
	str     r2, [sp, #0x14]
	bl      Function_2243258
	bl      Function_2243f20
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x7
	mov     r3, #0x0
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2243588
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_22435f8
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_2243554
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_224362c
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2245e32
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xd
	mov     r3, #0x2
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xe
	mov     r3, #0x2
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xf
	mov     r3, #0x1
	bl      Function_22436d0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243554
	b       branch_2245e92
@ 0x2245e32

.thumb
branch_2245e32: @ 2245e32 :thumb
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x10
	mov     r3, #0x2
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_2243588
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x11
	mov     r3, #0x2
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x12
	mov     r3, #0x1
	bl      Function_22436d0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_22435f8
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243554
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_224362c
.thumb
branch_2245e92: @ 2245e92 :thumb
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2245ea4

.thumb
Function_2245ea4: @ 2245ea4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	add     r0, #0x18
	bl      Function_2243848
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r3, #0x17
	lsl     r3, r3, #4
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r2, r4
	ldr     r0, [r4, #0x14]
	ldr     r3, [r4, r3]
	add     r2, #0x18
	bl      Function_2243888
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      Function_2243950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245eec

.thumb
Function_2245eec: @ 2245eec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22438bc
	cmp     r0, #0x2
	beq     branch_2245f02
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245f02

.thumb
branch_2245f02: @ 2245f02 :thumb
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22438ec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245f16


.align 2, 0


.thumb
Function_2245f18: @ 2245f18 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207121c
	mov     r0, r4
	add     r0, #0x18
	bl      Function_224339c
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r1, #0x1
	str     r1, [r4, #0x4]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2245f3e


.align 2, 0


.thumb
Function_2245f40: @ 2245f40 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245f44

.thumb
Function_2245f44: @ 2245f44 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      malloc2_maybe
	mov     r4, r0
	bne     branch_2245f54
	bl      ErrorHandling
.thumb
branch_2245f54: @ 2245f54 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2245f62


.align 2, 0


.thumb
Function_2245f64: @ 2245f64 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x60]
	mov     r4, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	bl      Function_2062ddc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2062d64
	pop     {r3-r5,pc}
@ 0x2245f80


.thumb
Function_2245f80: @ 2245f80 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r1, [r4, #0x0]
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2245f94

.thumb
Function_2245f94: @ 2245f94 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x0]
	bl      Function_2021d28
	ldr     r1, [r4, #0x4]
	ldr     r0, [r0, #0x4]
	ldr     r5, [r1, #0x4c]
	ldr     r3, [r1, #0x50]
	ldr     r1, [r1, #0x1c]
	cmp     r1, #0x0
	bne     branch_2245fd0
	mov     r1, #0x2
	lsl     r1, r1, #14
	sub     r2, r0, r1
	cmp     r2, r5
	blt     branch_2245fc6
	add     r0, r0, r1
	cmp     r0, r3
	bgt     branch_2245fc6
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x2245fc6

.thumb
branch_2245fc6: @ 2245fc6 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r3-r5,pc}

branch_2245fd0: @ 2245fd0 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x2245fda


.align 2, 0
.thumb
Function_2245fdc: @ 2245fdc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	add     r2, sp, #0x10
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	mov     r4, r0
	str     r3, [r2, #0x4]
	mov     r0, #0x79
	str     r3, [r2, #0x8]
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x86
	str     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x10] @ 0x2246014, (=0x2249234)
	bl      Function_2071330
	mov     r1, #0x1f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2246012

.align 2
.word 0x2249234 @ 0x2246014



.thumb
Function_2246018: @ 2246018 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246032
	bl      Function_207136c
	mov     r0, #0x1f
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_2246032: @ 2246032 :thumb
	pop     {r4,pc}
@ 0x2246034


.thumb
Function_2246034: @ 2246034 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r1, #0x8]
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	bl      GetAdrOfPkmnInParty
	mov     r7, r0
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_19
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r6, r0
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      Function_2246148
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_22460e6
	mov     r0, r7
	mov     r1, #0xa3
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	mov     r0, r7
	mov     r1, #0xa0
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x1
	bne     branch_22460a8
	cmp     r4, #0x0
	bne     branch_22460a8
	add     r0, sp, #0x8
	bl      Function_202d914
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	lsl     r1, r6, #16
	lsr     r1, r1, #16
	mov     r2, #0x2
	bl      Function_206b688
	b       branch_22460d8
@ 0x22460a8

.thumb
branch_22460a8: @ 22460a8 :thumb
	cmp     r0, #0x4
	bne     branch_22460c4
	add     r0, sp, #0x8
	bl      Function_202d914
	ldr     r0, [r5, #0xc]
	bl      LoadFlagAdress
	lsl     r1, r6, #16
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      Function_206b688
	b       branch_22460d8
@ 0x22460c4

.thumb
branch_22460c4: @ 22460c4 :thumb
	ldr     r0, [sp, #0x8]
	mov     r1, #0x5
	mov     r2, r4
	bl      Function_202d980
	ldr     r0, [sp, #0x8]
	mov     r1, #0x7
	mov     r2, r7
	bl      Function_202d980
.thumb
branch_22460d8: @ 22460d8 :thumb
	ldr     r1, [r5, #0x1c]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	bl      Function_2246110
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22460e6

.thumb
branch_22460e6: @ 22460e6 :thumb
	bl      PRNG
	mov     r1, #0x29
	lsl     r1, r1, #4
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x64
	bcc     branch_22460fe
	bl      ErrorHandling
.thumb
branch_22460fe: @ 22460fe :thumb
	cmp     r4, #0x1e
	bcs     branch_224610c
	ldr     r1, [r5, #0x1c]
	ldr     r0, [sp, #0x4]
	ldr     r1, [r1, #0x0]
	bl      Function_2246110
.thumb
branch_224610c: @ 224610c :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2246110

.thumb
Function_2246110: @ 2246110 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2246118: @ 2246118 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_202d8f8
	cmp     r0, #0x0
	beq     branch_224613c
	mov     r0, r5
	mov     r1, r4
	bl      Function_202d8c4
	bl      Function_206c3c8
	cmp     r6, r0
	bne     branch_224613c
	mov     r0, r5
	mov     r1, r4
	bl      Function_206c33c
.thumb
branch_224613c: @ 224613c :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x6
	bcc     branch_2246118
	pop     {r4-r6,pc}
@ 0x2246148

.thumb
Function_2246148: @ 2246148 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_2246150: @ 2246150 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_202d8f8
	cmp     r0, #0x0
	beq     branch_2246174
	mov     r0, r5
	mov     r1, r4
	bl      Function_202d924
	mov     r1, #0x4
	mov     r7, r0
	bl      Function_202d93c
	cmp     r6, r0
	bne     branch_2246174
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2246174

.thumb
branch_2246174: @ 2246174 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x6
	bcc     branch_2246150
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246182


.align 2, 0


.thumb
Function_2246184: @ 2246184 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x104
	mov     r6, r1
	mov     r5, r0
	cmp     r6, #0x4
	bcc     branch_2246194
	bl      ErrorHandling
.thumb
branch_2246194: @ 2246194 :thumb
	mov     r0, r5
	mov     r1, #0x14
	bl      malloc_maybe
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x14
	mov     r0, #0x0
.thumb
branch_22461a4: @ 22461a4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22461a4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x73
	mov     r1, r6
	mov     r3, r5
	bl      Function_2006fe8
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x10]
	str     r6, [r4, #0xc]
	mov     r0, r5
	bl      AllocPkmnData
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      AllocTrainerData
	str     r0, [r4, #0x8]
	bl      InitTrainerData
	mov     r0, r5
	add     r1, r6, #0x4
	bl      Function_22462e4
	mov     r5, r0
	add     r1, sp, #0x4
	mov     r2, #0x80
	bl      Function_2023df0
	mov     r0, r5
	bl      Function_20237bc
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x4
	bl      Function_2025ec0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r1, #0x40]
	bl      SetGender
	mov     r0, r4
	add     sp, #0x104
	pop     {r3-r6,pc}
@ 0x2246204


.thumb
Function_2246204: @ 2246204 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      free
	ldr     r0, [r4, #0x8]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2246222


.align 2, 0


.thumb
Function_2246224: @ 2246224 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x224622a


.align 2, 0


.thumb
Function_224622c: @ 224622c :thumb
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4c]
	bx      lr
@ 0x2246232


.align 2, 0


.thumb
Function_2246234: @ 2246234 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r6, r1
	mov     r4, r2
	bl      LoadPokePartyAdress
	ldr     r2, [r6, #0x4]
	mov     r1, r4
	bl      Function_207a128
	ldr     r0, [r5, #0xc]
	ldr     r1, [r6, #0x4]
	bl      Function_202f180
	pop     {r4-r6,pc}
@ 0x2246254

.thumb
Function_2246254: @ 2246254 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0xc]
	mov     r7, r2
	mov     r5, r1
	mov     r4, r3
	bl      LoadPokePartyAdress
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa1
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	mov     r2, r0
	ldr     r0, [r5, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x1c]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x0]
	ldr     r3, [r5, #0xc]
	bl      Function_224630c
	ldr     r1, [sp, #0x20]
	mov     r0, r7
	bl      Function_20775ec
	ldr     r0, [r5, #0x4]
	ldr     r1, [sp, #0x24]
	bl      Function_20775ec
	ldr     r0, [sp, #0x20]
	bl      Function_2076b10_Dummy
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x24]
	bl      Function_2076b10_Dummy
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x8]
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r0, [r6, #0xc]
	bl      LoadPlayerDataAdress
	str     r0, [r4, #0x14]
	mov     r0, r6
	bl      Function_2055ba8
	cmp     r0, #0x1
	bhi     branch_22462ce
	mov     r0, #0x0
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x22462ce

.thumb
branch_22462ce: @ 22462ce :thumb
	cmp     r0, #0x2
	bne     branch_22462da
	mov     r0, #0x1
	add     sp, #0x8
	str     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x22462da

.thumb
branch_22462da: @ 22462da :thumb
	mov     r0, #0x2
	str     r0, [r4, #0xc]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22462e2


.align 2, 0


.thumb
Function_22462e4: @ 22462e4 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x20] @ 0x2246308, (=0x172)
	mov     r3, r0
	mov     r4, r1
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r5, r0
	mov     r1, r4
	bl      Function_200b1ec
	mov     r4, r0
	mov     r0, r5
	bl      Function_200b190
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2246308

.word 0x172 @ 0x2246308
.thumb
Function_224630c: @ 224630c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r3
	mov     r3, #0x1
	mov     r4, r1
	str     r3, [sp, #0x0]
	ldr     r1, [r4, #0x38]
	mov     r5, r0
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	ldr     r1, [r4, #0x20]
	mov     r3, #0x20
	str     r1, [sp, #0xc]
	ldr     r1, [r4, #0x0]
	bl      InitPkmnData
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	bl      Function_22462e4
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x77
	mov     r2, r7
	bl      SetPkmnData
	mov     r0, r7
	bl      Function_20237bc
	mov     r1, #0x1
	add     r0, sp, #0x10
	strb    r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x4d
	add     r2, sp, #0x10
	bl      SetPkmnData
	mov     r0, r5
	mov     r1, #0x46
	add     r2, r4, #0x4
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x47
	add     r2, #0x8
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x48
	add     r2, #0xc
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x49
	add     r2, #0x10
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x4a
	add     r2, #0x14
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x4b
	add     r2, #0x18
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x13
	add     r2, #0x24
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x14
	add     r2, #0x28
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x15
	add     r2, #0x2c
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x16
	add     r2, #0x30
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x17
	add     r2, #0x34
	bl      SetPkmnData
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x6
	add     r2, #0x3c
	bl      SetPkmnData
	ldr     r0, [sp, #0x28]
	add     r1, r6, #0x4
	bl      Function_22462e4
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x91
	mov     r2, r6
	bl      SetPkmnData
	mov     r0, r6
	bl      Function_20237bc
	mov     r2, r4
	mov     r0, r5
	mov     r1, #0x9d
	add     r2, #0x40
	bl      SetPkmnData
	add     r4, #0x48
	mov     r0, r5
	mov     r1, #0xc
	mov     r2, r4
	bl      SetPkmnData
	ldr     r0, [sp, #0x2c]
	bl      GetMapName
	mov     r3, r0
	ldr     r0, [sp, #0x28]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_209304c
	mov     r0, r5
	bl      Function_207418c
	mov     r0, r5
	bl      Call_CheckIfShinyPkmn_2
	cmp     r0, #0x0
	beq     branch_2246440
	bl      ErrorHandling
branch_2246440: @ 2246440 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2246444


.thumb
Function_2246444: @ 2246444 :thumb
	ldr     r3, [pc, #0x4] @ 0x224644c, (=MI_CpuFill8)
	mov     r1, #0x0
	mov     r2, #0x18
	bx      r3
@ 0x224644c

.word MI_CpuFill8 @ 0x224644c



.thumb
Function_2246450: @ 2246450 :thumb
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x2246454

.thumb
Function_2246454: @ 2246454 :thumb
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x2246458

.thumb
Function_2246458: @ 2246458 :thumb
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x224645c

.thumb
Function_224645c: @ 224645c :thumb
	ldr     r3, [pc, #0x4] @ 0x2246464, (=0x20021d1)
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r2, #0x8
	bx      r3
@ 0x2246464

.word 0x20021d1 @ 0x2246464
.thumb
Function_2246468: @ 2246468 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	bl      Function_202e55c
	strb    r0, [r5, #0x0]
	str     r4, [r5, #0x14]
	pop     {r3-r5,pc}
@ 0x224647a


.align 2, 0


.thumb
Function_224647c: @ 224647c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	beq     branch_2246488
	bl      Function_202e560
.thumb
branch_2246488: @ 2246488 :thumb
	pop     {r3,pc}
@ 0x224648a


.align 2, 0


.thumb
Function_224648c: @ 224648c :thumb
	ldrb    r0, [r0, #0x3]
	bx      lr
@ 0x2246490

.thumb
Function_2246490: @ 2246490 :thumb
	ldrb    r0, [r0, #0x2]
	bx      lr
@ 0x2246494

.thumb
Function_2246494: @ 2246494 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x2246498

.thumb
Function_2246498: @ 2246498 :thumb
	ldr     r3, [pc, #0x4] @ 0x22464a0, (=0x202e575)
	ldr     r0, [r0, #0x14]
	bx      r3
@ 0x224649e


.align 2


.word 0x202e575 @ 0x22464a0
.thumb
Function_22464a4: @ 22464a4 :thumb
	ldrb    r0, [r0, #0x0]
	bx      lr
@ 0x22464a8

.thumb
Function_22464a8: @ 22464a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, #0x4
	mov     r1, #0x18
	bl      malloc_maybe
	mov     r4, r0
	bl      Function_2246444
	mov     r0, r5
	bl      Function_202e4c8
	mov     r1, r0
	mov     r0, r4
	bl      Function_224645c
	mov     r0, r5
	bl      Function_202e4cc
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246454
	mov     r0, r5
	bl      Function_202e4d0
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246458
	mov     r0, r5
	bl      Function_202e4d4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246468
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22464f6


.align 2, 0
.thumb
Function_22464f8: @ 22464f8 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0xc]
	mov     r6, r1
	bl      LoadTrainerDataAdress
	mov     r5, r0
	mov     r0, #0x4
	mov     r1, #0x18
	bl      malloc_maybe
	mov     r4, r0
	bl      Function_2246444
	mov     r0, r5
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r4
	bl      Function_224645c
	mov     r0, r5
	bl      GetGender
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246450
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2246454
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2246458
	mov     r0, r6
	bl      Function_202e4d8
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246468
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2246550

.thumb
Function_2246550: @ 2246550 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0xc]
	mov     r5, r1
	bl      LoadTrainerDataAdress
	mov     r6, r0
	mov     r0, #0x4
	mov     r1, #0x18
	bl      malloc_maybe
	mov     r4, r0
	bl      Function_2246444
	mov     r0, r6
	strb    r5, [r4, #0x0]
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, r4
	bl      Function_224645c
	mov     r0, r6
	bl      GetGender
	mov     r1, r0
	mov     r0, r4
	bl      Function_2246450
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2246454
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_2246458
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22465a0

.thumb
Function_22465a0: @ 22465a0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r1
	mov     r6, r2
	bl      Function_202440c
	mov     r7, r0
	.hword  0x1f20 @ sub r0, r4, #0x4
	cmp     r0, #0x1
	bhi     branch_22465c0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2246550
	pop     {r3-r7,pc}
@ 0x22465c0

.thumb
branch_22465c0: @ 22465c0 :thumb
	mov     r0, r6
	bl      Function_202e7c0
	cmp     r0, #0x0
	bne     branch_22465de
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_202e794
	mov     r1, r0
	mov     r0, r5
	bl      Function_22464a8
	pop     {r3-r7,pc}
@ 0x22465de

.thumb
branch_22465de: @ 22465de :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_202e768
	mov     r1, r0
	mov     r0, r5
	bl      Function_22464f8
	pop     {r3-r7,pc}
@ 0x22465f2


.align 2, 0


.thumb
Function_22465f4: @ 22465f4 :thumb
	ldr     r3, [pc, #0x0] @ 0x22465f8, (=0x20181c5)
	bx      r3
@ 0x22465f8

.word 0x20181c5 @ 0x22465f8
.thumb
Function_22465fc: @ 22465fc :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	mov     r1, #0x1
	bl      Function_202e374
	pop     {r3,pc}
@ 0x224660c

.thumb
Function_224660c: @ 224660c :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_202440c
	mov     r4, r0
	bl      Function_202e380
	cmp     r0, #0x1
	bne     branch_2246622
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246622

.thumb
branch_2246622: @ 2246622 :thumb
	mov     r0, r4
	bl      Function_202e3dc
	cmp     r0, #0x0
	bne     branch_2246630
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2246630

.thumb
branch_2246630: @ 2246630 :thumb
	cmp     r0, #0x4
	bne     branch_2246638
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2246638

.thumb
branch_2246638: @ 2246638 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224663c

.thumb
Function_224663c: @ 224663c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2055bd0
	.hword  0x1d80 @ add r0, r0, #0x6
	mov     r1, #0x7
	blx     _s32_div_f
	mov     r0, r4
	mov     r5, r1
	bl      Function_2055bdc
	mov     r6, r0
	mov     r0, r4
	bl      Function_2055be8
	mov     r1, #0xf
	blx     _s32_div_f
	add     r6, #0x13
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x18
	blx     _s32_div_f
	mov     r6, r1
	lsl     r6, r6, #2
	mov     r3, #0x7
	add     r4, r4, r6
	str     r3, [sp, #0x0]
	add     r0, sp, #0x4
	mov     r1, #0x7e
	mov     r2, #0x0
	mul     r3, r4
	bl      LoadFromNARC_3
	add     r0, sp, #0x4
	ldrb    r4, [r0, r5]
	cmp     r4, #0x0
	beq     branch_2246692
	cmp     r4, #0xa
	bcc     branch_2246696
branch_2246692: @ 2246692 :thumb
	bl      ErrorHandling
branch_2246696: @ 2246696 :thumb
	mov     r0, r4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224669c

.thumb
Function_224669c: @ 224669c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r3, r0
	.hword  0x1e5c @ sub r4, r3, #0x1
	mov     r3, #0xc
	mov     r2, #0x1
	add     r0, sp, #0x4
	mov     r1, #0x7e
	mul     r3, r4
	str     r2, [sp, #0x0]
	bl      LoadFromNARC_3
	add     r0, sp, #0x4
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x6
	bcc     branch_22466c0
	bl      ErrorHandling
.thumb
branch_22466c0: @ 22466c0 :thumb
	add     r0, sp, #0x4
	ldrb    r0, [r0, #0x0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22466c8

.thumb
Function_22466c8: @ 22466c8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, r0
	.hword  0x1e5c @ sub r4, r3, #0x1
	mov     r3, #0xc
	mov     r0, #0xb
	mul     r3, r4
	str     r0, [sp, #0x0]
	mov     r0, r1
	mov     r1, #0x7e
	mov     r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	bl      LoadFromNARC_3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22466e8

.thumb
Function_22466e8: @ 22466e8 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22466ec

.thumb
Function_22466ec: @ 22466ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0xc]
	str     r2, [sp, #0x4]
	bl      Function_202440c
	ldr     r0, [sp, #0x0]
	add     r1, sp, #0x8
	bl      Function_22466c8
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xb
	blx     MI_CpuFill8
	mov     r6, #0x0
	mov     r4, r6
	add     r5, sp, #0x8
branch_2246714: @ 2246714 :thumb
	ldrb    r2, [r5, #0x0]
	cmp     r2, #0x0
	beq     branch_2246736
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_22466e8
	cmp     r0, #0x1
	bne     branch_224672e
	ldrb    r1, [r5, #0x0]
	ldr     r0, [sp, #0x4]
	strb    r1, [r0, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_224672e: @ 224672e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r6, #0xb
	blt     branch_2246714
.thumb
branch_2246736: @ 2246736 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224673a


.align 2, 0


.thumb
Function_224673c: @ 224673c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0xb
	blx MI_CpuFill8
	mov     r1, #0x0
	mov     r4, r1
	add     r2, sp, #0x0
.thumb
branch_2246752: @ 2246752 :thumb
	ldrb    r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_224675e
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_224675e: @ 224675e :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r1, #0xb
	blt     branch_2246752
	cmp     r4, #0x0
	bne     branch_224676e
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4,r5,pc}
@ 0x224676e

.thumb
branch_224676e: @ 224676e :thumb
	cmp     r4, #0x1
	bne     branch_224677a
	add     r0, sp, #0x0
	add     sp, #0xc
	ldrb    r0, [r0, #0x0]
	pop     {r4,r5,pc}
@ 0x224677a

.thumb
branch_224677a: @ 224677a :thumb
	bl      Function_201d35c
	mov     r1, r4
	blx     _u32_div_f
	add     r0, sp, #0x0
	ldrb    r0, [r0, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224678c

.thumb
Function_224678c: @ 224678c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r2
	cmp     r1, #0x4
	beq     branch_22467aa
	cmp     r1, #0x5
	beq     branch_22467aa
	ldr     r4, [sp, #0x10]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x14]
	str     r4, [sp, #0x4]
	bl      Function_202e614
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22467aa

.thumb
branch_22467aa: @ 22467aa :thumb
	ldr     r1, [sp, #0x10]
	cmp     r1, #0x0
	beq     branch_22467b6
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22467b6

.thumb
branch_22467b6: @ 22467b6 :thumb
	cmp     r3, #0x0
	bne     branch_22467c0
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22467c0

.thumb
branch_22467c0: @ 22467c0 :thumb
	mov     r1, r4
	bl      Function_202e3c4
	cmp     r0, #0x0
	bne     branch_22467d4
	ldr     r0, [sp, #0x14]
	add     sp, #0x8
	strb    r4, [r0, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22467d4

.thumb
branch_22467d4: @ 22467d4 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22467da


.align 2, 0


.thumb
Function_22467dc: @ 22467dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x8]
	ldr     r6, [sp, #0x40]
	ldr     r0, [r1, #0xc]
	str     r2, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r5, [sp, #0x44]
	bl      Function_202440c
	str     r0, [sp, #0x14]
	ldrb    r0, [r6, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	beq     branch_224683c
	add     r7, sp, #0x18
.thumb
branch_22467fc: @ 22467fc :thumb
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldrb    r2, [r6, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0xc]
	bl      Function_224678c
	cmp     r0, #0x0
	beq     branch_2246834
	mov     r0, #0x0
	mov     r1, r7
	b       branch_224682a
@ 0x2246822

.thumb
branch_2246822: @ 2246822 :thumb
	strb    r2, [r5, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_224682a: @ 224682a :thumb
	ldrb    r2, [r1, #0x0]
	cmp     r2, #0x0
	beq     branch_2246834
	cmp     r0, #0x10
	blt     branch_2246822
.thumb
branch_2246834: @ 2246834 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	ldrb    r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_22467fc
.thumb
branch_224683c: @ 224683c :thumb
	mov     r0, r4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2246842


.align 2, 0


.thumb
Function_2246844: @ 2246844 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	mov     r4, #0x0
	b       branch_2246876
@ 0x2246850

.thumb
branch_2246850: @ 2246850 :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_22465a0
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, r7
	mov     r1, r6
	bl      Function_206cd2c
	cmp     r0, #0x0
	bne     branch_224686c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
.thumb
branch_224686c: @ 224686c :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_22465f4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2246876: @ 2246876 :thumb
	ldrb    r2, [r5, #0x0]
	cmp     r2, #0x0
	beq     branch_2246880
	cmp     r4, #0x10
	blt     branch_2246850
.thumb
branch_2246880: @ 2246880 :thumb
	pop     {r3-r7,pc}
@ 0x2246882


.align 2, 0


.thumb
Function_2246884: @ 2246884 :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0xc]
	mov     r5, r1
	bl      Function_202440c
	ldrb    r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_22468ac
	mov     r6, #0x0
.thumb
branch_2246898: @ 2246898 :thumb
	mov     r0, r4
	bl      Function_202e3c4
	cmp     r0, #0x0
	beq     branch_22468a4
	strb    r6, [r5, #0x0]
.thumb
branch_22468a4: @ 22468a4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	ldrb    r1, [r5, #0x0]
	cmp     r1, #0x0
	bne     branch_2246898
.thumb
branch_22468ac: @ 22468ac :thumb
	pop     {r4-r6,pc}
@ 0x22468ae


.align 2, 0


.thumb
Function_22468b0: @ 22468b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	bl      Function_224663c
	str     r0, [sp, #0x8]
	bl      Function_224669c
	mov     r4, r0
	add     r0, sp, #0x1c
	mov     r1, #0x0
	mov     r2, #0xb
	blx MI_CpuFill8
	add     r0, sp, #0xc
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x8]
	mov     r1, r5
	add     r2, sp, #0x1c
	bl      Function_22466ec
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	add     r0, sp, #0xc
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_22467dc
	cmp     r0, #0x0
	bne     branch_2246902
	add     sp, #0x28
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246902

.thumb
branch_2246902: @ 2246902 :thumb
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0xc
	bl      Function_2246844
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_2246884
	mov     r0, r5
	add     r1, sp, #0xc
	bl      Function_224673c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2246920

.thumb
Function_2246920: @ 2246920 :thumb
	push    {r4,lr}
	mov     r1, #0x0
	mov     r2, r1
	mov     r4, r0
	bl      Function_22468b0
	cmp     r0, #0x0
	bne     branch_2246956
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_22468b0
	cmp     r0, #0x0
	bne     branch_2246956
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_22468b0
	cmp     r0, #0x0
	bne     branch_2246956
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_22468b0
.thumb
branch_2246956: @ 2246956 :thumb
	pop     {r4,pc}
@ 0x2246958

.thumb
Function_2246958: @ 2246958 :thumb
	push    {r4,lr}
	bl      Function_224663c
	mov     r4, r0
	cmp     r4, #0x9
	bls     branch_2246968
	bl      ErrorHandling
.thumb
branch_2246968: @ 2246968 :thumb
	ldr     r2, [pc, #0x8] @ 0x2246974, (=0x2249470)
	.hword  0x1e61 @ sub r1, r4, #0x1
	mov     r0, #0x7
	mul     r0, r1
	add     r0, r2, r0
	pop     {r4,pc}
@ 0x2246974

.word 0x2249470 @ 0x2246974
.thumb
Function_2246978: @ 2246978 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	mov     r5, r1
	bl      Function_202440c
	mov     r6, r0
	mov     r0, r4
	bl      Function_2246958
	mov     r4, r0
	cmp     r5, #0x3
	bhi     branch_22469a6
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224699e

Jumppoints_224699e:
.hword branch_22469aa - Jumppoints_224699e - 2
.hword branch_22469c4 - Jumppoints_224699e - 2
.hword branch_22469d6 - Jumppoints_224699e - 2
.hword branch_22469da - Jumppoints_224699e - 2
.thumb
branch_22469a6: @ 22469a6 :thumb
	bl      ErrorHandling
.thumb
branch_22469aa: @ 22469aa :thumb
	bl      Function_2013960
	cmp     r0, #0x0
	beq     branch_22469b8
	cmp     r0, #0x1
	beq     branch_22469bc
	b       branch_22469c0
@ 0x22469b8

.thumb
branch_22469b8: @ 22469b8 :thumb
	ldrb    r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x22469bc

.thumb
branch_22469bc: @ 22469bc :thumb
	ldrb    r0, [r4, #0x1]
	pop     {r4-r6,pc}
@ 0x22469c0

.thumb
branch_22469c0: @ 22469c0 :thumb
	ldrb    r0, [r4, #0x2]
	pop     {r4-r6,pc}
@ 0x22469c4

.thumb
branch_22469c4: @ 22469c4 :thumb
	mov     r0, r6
	bl      Function_202e3dc
	cmp     r0, #0x0
	bne     branch_22469d2
	ldrb    r0, [r4, #0x3]
	pop     {r4-r6,pc}
@ 0x22469d2

.thumb
branch_22469d2: @ 22469d2 :thumb
	ldrb    r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x22469d6

.thumb
branch_22469d6: @ 22469d6 :thumb
	ldrb    r0, [r4, #0x5]
	pop     {r4-r6,pc}
@ 0x22469da

.thumb
branch_22469da: @ 22469da :thumb
	ldrb    r0, [r4, #0x6]
	pop     {r4-r6,pc}
@ 0x22469de


.align 2, 0


.thumb
Function_22469e0: @ 22469e0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	str     r1, [sp, #0x4]
	mov     r5, r2
	mov     r6, r3
	bl      Function_224663c
	bl      Function_224669c
	mov     r7, r0
	ldr     r0, [r4, #0xc]
	bl      Function_202440c
	mov     r1, r5
	bl      Function_202e384
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      Function_22465a0
	mov     r5, r0
	bl      Function_224647c
	ldr     r2, [sp, #0x4]
	mov     r0, r7
	mov     r1, r4
	mov     r3, r5
	str     r6, [sp, #0x0]
	bl      Function_206cd00
	ldr     r1, [sp, #0x20]
	strh    r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_22465f4
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2246a30


.thumb
Function_2246a30: @ 2246a30 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2246a34

.thumb
Function_2246a34: @ 2246a34 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2246a38

.thumb
Function_2246a38: @ 2246a38 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x7
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a4a


.align 2, 0


.thumb
Function_2246a4c: @ 2246a4c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, r1
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a5e


.align 2, 0


.thumb
Function_2246a60: @ 2246a60 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x9
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a72


.align 2, 0


.thumb
Function_2246a74: @ 2246a74 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0xa
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a86


.align 2, 0


.thumb
Function_2246a88: @ 2246a88 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0xb
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a9a


.align 2, 0


.thumb
Function_2246a9c: @ 2246a9c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x11
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246aae


.align 2, 0


.thumb
Function_2246ab0: @ 2246ab0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	bl      CountBadges
	cmp     r0, #0x5
	blt     branch_2246ac4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2246ac4

.thumb
branch_2246ac4: @ 2246ac4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2246ac8

.thumb
Function_2246ac8: @ 2246ac8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_7
	bl      IsSinPokedexComplete
	pop     {r3,pc}
@ 0x2246ad6


.align 2, 0


.thumb
Function_2246ad8: @ 2246ad8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_7
	bl      Function_2027520
	pop     {r3,pc}
@ 0x2246ae6


.align 2, 0


.thumb
Function_2246ae8: @ 2246ae8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a954
	pop     {r3,pc}
@ 0x2246af6


.align 2, 0
.thumb
Function_2246af8: @ 2246af8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r4, [pc, #0x38] @ 0x2246b38, (=0x22494b0)
	str     r0, [sp, #0x0]
	mov     r7, r1
	mov     r6, #0x0
	add     r5, sp, #0x4
.thumb
branch_2246b06: @ 2246b06 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	blx     r1
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	stmia   r5!, {r0}
	cmp     r6, #0xc
	bcc     branch_2246b06
	mov     r4, #0x0
	ldr     r3, [pc, #0x20] @ 0x2246b3c, (=0x2249878)
	mov     r0, r4
	add     r2, sp, #0x4
.thumb
branch_2246b1e: @ 2246b1e :thumb
	ldrb    r1, [r3, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_2246b2c
	strb    r4, [r7, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_2246b2c: @ 2246b2c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r4, #0x23
	bcc     branch_2246b1e
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2246b38

.word 0x22494b0 @ 0x2246b38
.word 0x2249878 @ 0x2246b3c
.thumb
Function_2246b40: @ 2246b40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x24
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x24
	blx MI_CpuFill8
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2246af8
	mov     r4, r0
	bne     branch_2246b62
	add     sp, #0x24
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2246b62

.thumb
branch_2246b62: @ 2246b62 :thumb
	bl      Function_201d35c
	mov     r1, r4
	blx     _u32_div_f
	add     r0, sp, #0x0
	ldrb    r0, [r0, r1]
	add     sp, #0x24
	pop     {r3,r4,pc}
@ 0x2246b74

.thumb
Function_2246b74: @ 2246b74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r0
	cmp     r1, #0x0
	bne     branch_2246be8
	cmp     r4, #0x0
	bne     branch_2246b88
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2246b88

.thumb
branch_2246b88: @ 2246b88 :thumb
	add     r0, sp, #0x0
	bl      Function_20138a4
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_2246b98
	bl      ErrorHandling
.thumb
branch_2246b98: @ 2246b98 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0xc
	bls     branch_2246ba2
	bl      ErrorHandling
.thumb
branch_2246ba2: @ 2246ba2 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r3, [pc, #0x44] @ 0x2246bec, (=0x224954c)
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #3
	ldr     r6, [r3, r0]
	add     r2, r3, r0
	mov     r1, #0x0
	cmp     r6, #0x0
	ble     branch_2246be6
	ldr     r3, [r2, #0x4]
	ldr     r5, [sp, #0x8]
.thumb
branch_2246bb8: @ 2246bb8 :thumb
	lsl     r0, r1, #1
	ldrh    r7, [r3, r0]
	asr     r7, r7, #8
	lsl     r7, r7, #24
	lsr     r7, r7, #24
	cmp     r5, r7
	bne     branch_2246bdc
	ldr     r1, [r2, #0x4]
	ldrh    r0, [r1, r0]
	lsl     r0, r0, #24
	lsr     r1, r0, #22
	ldr     r0, [pc, #0x20] @ 0x2246bf0, (=0x2249538)
	ldr     r0, [r0, r1]
	add     r0, r4, r0
	bpl     branch_2246be8
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2246bdc

.thumb
branch_2246bdc: @ 2246bdc :thumb
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, r6
	blt     branch_2246bb8
.thumb
branch_2246be6: @ 2246be6 :thumb
	mov     r0, r4
.thumb
branch_2246be8: @ 2246be8 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2246bec

.word 0x224954c @ 0x2246bec
.word 0x2249538 @ 0x2246bf0
.thumb
Function_2246bf4: @ 2246bf4 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      LoadVariableAreaAdress_19
	bl      Function_202d9cc
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2246c20
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2246c20
	mov     r1, #0x7f
	mov     r0, r4
	lsl     r1, r1, #4
	mov     r2, #0x0
	bl      Function_203e880
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2246c20

.thumb
branch_2246c20: @ 2246c20 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2246c24

.thumb
Function_2246c24: @ 2246c24 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r6, r1
	mov     r1, #0x7b
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	mov     r5, r0
	bl      Function_20552b4
	cmp     r0, #0x0
	beq     branch_2246c90
	mov     r0, #0x4
	mov     r1, #0x18
	bl      malloc2_maybe
	mov     r4, r0
	strb    r6, [r4, #0xc]
	mov     r0, #0x0
	strb    r0, [r4, #0xd]
	strb    r0, [r4, #0xe]
	strb    r0, [r4, #0xf]
	ldr     r0, [r5, #0x2c]
	bl      Function_2039e10
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	add     r2, sp, #0x14
	bl      Function_20553a4
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x8
	bl      0x21e1894
	add     r3, sp, #0x8
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, r4
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r0, [sp, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0x10] @ 0x2246c98, (=0x2246c9d)
	bl      Function_2050944
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2246c90

.thumb
branch_2246c90: @ 2246c90 :thumb
	bl      ErrorHandling
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2246c98

.word 0x2246c9d @ 0x2246c98
.thumb
Function_2246c9c: @ 2246c9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	cmp     r1, #0x5
	bls     branch_2246cb8
	b       branch_2246ee2
@ 0x2246cb8

.thumb
branch_2246cb8: @ 2246cb8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2246cc4

Jumppoints_2246cc4:
.hword branch_2246cd0 - Jumppoints_2246cc4 - 2
.hword branch_2246da4 - Jumppoints_2246cc4 - 2
.hword branch_2246e2c - Jumppoints_2246cc4 - 2
.hword branch_2246e58 - Jumppoints_2246cc4 - 2
.hword branch_2246e7a - Jumppoints_2246cc4 - 2
.hword branch_2246ed8 - Jumppoints_2246cc4 - 2
.thumb
branch_2246cd0: @ 2246cd0 :thumb
	ldr     r0, [pc, #0x214] @ 0x2246ee8, (=0x205)
	ldr     r1, [r6, #0x30]
	bl      0x21ef9e8
	mov     r5, r0
	ldr     r1, [r6, #0x30]
	mov     r0, #0x7c
	bl      0x21ef9e8
	mov     r7, r0
	ldr     r0, [r5, #0x0]
	blx     Function_20b3c0c
	cmp     r0, #0x0
	beq     branch_2246d0e
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2246d02
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2246d02
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_2246d04
@ 0x2246d02

.thumb
branch_2246d02: @ 2246d02 :thumb
	mov     r1, #0x0
.thumb
branch_2246d04: @ 2246d04 :thumb
	cmp     r1, #0x0
	beq     branch_2246d0e
	ldr     r1, [r1, #0x0]
	add     r5, r0, r1
	b       branch_2246d10
@ 0x2246d0e

.thumb
branch_2246d0e: @ 2246d0e :thumb
	mov     r5, #0x0
.thumb
branch_2246d10: @ 2246d10 :thumb
	ldr     r0, [r7, #0x0]
	blx     Function_20b3c0c
	cmp     r0, #0x0
	beq     branch_2246d3a
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2246d2e
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2246d2e
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_2246d30
@ 0x2246d2e

.thumb
branch_2246d2e: @ 2246d2e :thumb
	mov     r1, #0x0
.thumb
branch_2246d30: @ 2246d30 :thumb
	cmp     r1, #0x0
	beq     branch_2246d3a
	ldr     r1, [r1, #0x0]
	add     r7, r0, r1
	b       branch_2246d3c
@ 0x2246d3a

.thumb
branch_2246d3a: @ 2246d3a :thumb
	mov     r7, #0x0
.thumb
branch_2246d3c: @ 2246d3c :thumb
	ldr     r0, [r6, #0x30]
	bl      0x21efaa0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	ldr     r3, [pc, #0x190] @ 0x2246ee8, (=0x205)
	mov     r2, #0x10
	bl      0x21d41c8
	mov     r0, r6
	mov     r1, #0x7c
	add     r2, sp, #0x18
	mov     r3, #0x0
	bl      Function_20552b4
	cmp     r0, #0x0
	bne     branch_2246d72
	bl      ErrorHandling
.thumb
branch_2246d72: @ 2246d72 :thumb
	ldr     r0, [sp, #0x18]
	bl      0x21e18bc
	mov     r5, r0
	ldr     r0, [r6, #0x30]
	bl      0x21efaa0
	str     r5, [sp, #0x0]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	mov     r2, #0x20
	mov     r3, #0x7c
	bl      0x21d41c8
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246da4

.thumb
branch_2246da4: @ 2246da4 :thumb
	add     r1, sp, #0x1c
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x8]
	ldrb    r2, [r4, #0xd]
	mov     r1, #0xc
	ldr     r0, [r4, #0x0]
	mov     r3, r2
	ldr     r2, [pc, #0x134] @ 0x2246eec, (=0x224989c)
	mul     r3, r1
	ldr     r2, [r2, r3]
	add     r0, r0, r2
	str     r0, [sp, #0x28]
	ldrb    r2, [r4, #0xd]
	ldr     r0, [r4, #0x4]
	mov     r3, r2
	ldr     r2, [pc, #0x128] @ 0x2246ef0, (=0x22498a0)
	mul     r3, r1
	ldr     r2, [r2, r3]
	add     r0, r0, r2
	str     r0, [sp, #0x2c]
	ldrb    r2, [r4, #0xd]
	ldr     r0, [r4, #0x8]
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x118] @ 0x2246ef4, (=0x22498a4)
	ldr     r1, [r1, r3]
	add     r0, r0, r1
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x114] @ 0x2246ef8, (=0x5fe)
	bl      Function_2005748
	add     r0, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	ldr     r2, [pc, #0xf8] @ 0x2246ee8, (=0x205)
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	add     r3, sp, #0x28
	bl      0x21e19cc
	ldrb    r1, [r4, #0xd]
	add     r1, r4, r1
	strb    r0, [r1, #0x10]
	ldrb    r1, [r4, #0xd]
	mov     r0, r6
	add     r0, #0xa4
	add     r1, r4, r1
	ldrb    r1, [r1, #0x10]
	ldr     r0, [r0, #0x0]
	bl      0x21e18e0
	bl      0x21e18bc
	mov     r3, r0
	ldrb    r2, [r4, #0xd]
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	bl      0x21d4220
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246e2c

.thumb
branch_2246e2c: @ 2246e2c :thumb
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0xf
	bcs     branch_2246e38
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2246ee2
@ 0x2246e38

.thumb
branch_2246e38: @ 2246e38 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0xc]
	cmp     r1, r0
	bcs     branch_2246e50
	mov     r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246e50

.thumb
branch_2246e50: @ 2246e50 :thumb
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246e58

.thumb
branch_2246e58: @ 2246e58 :thumb
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	mov     r2, #0x0
	bl      0x21d4250
	ldr     r0, [r6, #0x54]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x21d4250
	ldr     r0, [pc, #0x8c] @ 0x2246efc, (=0x48e)
	bl      Function_2006150
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246e7a

.thumb
branch_2246e7a: @ 2246e7a :thumb
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	bl      0x21d42f0
	cmp     r0, #0x0
	beq     branch_2246ee2
	ldr     r0, [r6, #0x54]
	mov     r1, #0x20
	bl      0x21d42f0
	cmp     r0, #0x0
	beq     branch_2246ee2
	bl      Function_20061e4
	cmp     r0, #0x0
	bne     branch_2246ee2
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	mov     r2, #0x20
	bl      0x21d42b0
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	mov     r2, #0x10
	bl      0x21d42b0
	ldrb    r0, [r4, #0xc]
	mov     r5, #0x0
	cmp     r0, #0x0
	bls     branch_2246ed0
.thumb
branch_2246eb6: @ 2246eb6 :thumb
	add     r0, r4, r5
	mov     r1, r6
	add     r1, #0xa4
	ldrb    r0, [r0, #0x10]
	ldr     r1, [r1, #0x0]
	bl      0x21e1674
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldrb    r0, [r4, #0xc]
	cmp     r5, r0
	bcc     branch_2246eb6
.thumb
branch_2246ed0: @ 2246ed0 :thumb
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2246ee2
@ 0x2246ed8

.thumb
branch_2246ed8: @ 2246ed8 :thumb
	bl      free
	add     sp, #0x34
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2246ee2

.thumb
branch_2246ee2: @ 2246ee2 :thumb
	mov     r0, #0x0
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2246ee8

.word 0x205 @ 0x2246ee8
.word 0x224989c @ 0x2246eec
.word 0x22498a0 @ 0x2246ef0
.word 0x22498a4 @ 0x2246ef4
.word 0x5fe @ 0x2246ef8
.word 0x48e @ 0x2246efc
.thumb
Function_2246f00: @ 2246f00 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r2, #0x0
	ldr     r1, [pc, #0x2c] @ 0x2246f38, (=0x1f2)
	mov     r3, r2
	mov     r5, r0
	bl      Function_20552b4
	cmp     r0, #0x0
	beq     branch_2246f32
	mov     r0, #0x4
	mov     r1, r0
	bl      malloc2_maybe
	mov     r2, r0
	strb    r6, [r2, #0x0]
	strb    r4, [r2, #0x1]
	mov     r0, #0x0
	strb    r0, [r2, #0x2]
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0x10] @ 0x2246f3c, (=0x2246f41)
	bl      Function_2050944
	pop     {r4-r6,pc}
@ 0x2246f32

.thumb
branch_2246f32: @ 2246f32 :thumb
	bl      ErrorHandling
	pop     {r4-r6,pc}
@ 0x2246f38

.word 0x1f2 @ 0x2246f38
.word 0x2246f41 @ 0x2246f3c
.thumb
Function_2246f40: @ 2246f40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x4
	bls     branch_2246f5c
	b       branch_2247064
@ 0x2246f5c

.thumb
branch_2246f5c: @ 2246f5c :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2246f68

Jumppoints_2246f68:
.hword branch_2246f72 - Jumppoints_2246f68 - 2
.hword branch_2246fee - Jumppoints_2246f68 - 2
.hword branch_224701c - Jumppoints_2246f68 - 2
.hword branch_2247048 - Jumppoints_2246f68 - 2
.hword branch_224705a - Jumppoints_2246f68 - 2
.thumb
branch_2246f72: @ 2246f72 :thumb
	ldr     r0, [pc, #0xf8] @ 0x224706c, (=0x1f2)
	ldr     r1, [r6, #0x30]
	bl      0x21ef9e8
	ldr     r0, [r0, #0x0]
	blx     Function_20b3c0c
	cmp     r0, #0x0
	beq     branch_2246fa4
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2246f98
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2246f98
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_2246f9a
@ 0x2246f98

.thumb
branch_2246f98: @ 2246f98 :thumb
	mov     r1, #0x0
.thumb
branch_2246f9a: @ 2246f9a :thumb
	cmp     r1, #0x0
	beq     branch_2246fa4
	ldr     r1, [r1, #0x0]
	add     r7, r0, r1
	b       branch_2246fa6
@ 0x2246fa4

.thumb
branch_2246fa4: @ 2246fa4 :thumb
	mov     r7, #0x0
.thumb
branch_2246fa6: @ 2246fa6 :thumb
	ldr     r1, [pc, #0xc4] @ 0x224706c, (=0x1f2)
	mov     r0, r6
	add     r2, sp, #0x18
	mov     r3, #0x0
	bl      Function_20552b4
	cmp     r0, #0x0
	bne     branch_2246fba
	bl      ErrorHandling
.thumb
branch_2246fba: @ 2246fba :thumb
	ldr     r0, [sp, #0x18]
	bl      0x21e18bc
	mov     r5, r0
	ldr     r0, [r6, #0x30]
	bl      0x21efaa0
	str     r5, [sp, #0x0]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	ldrb    r0, [r4, #0x0]
	ldr     r3, [pc, #0x94] @ 0x224706c, (=0x1f2)
	mov     r2, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	bl      0x21d41c8
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_2247064
@ 0x2246fee

.thumb
branch_2246fee: @ 2246fee :thumb
	ldrb    r0, [r4, #0x1]
	mov     r1, #0x1
	cmp     r0, #0x0
	beq     branch_2246ffc
	cmp     r0, #0x1
	beq     branch_2246ffc
	mov     r1, #0x0
.thumb
branch_2246ffc: @ 2246ffc :thumb
	cmp     r1, #0x0
	bne     branch_2247004
	bl      ErrorHandling
.thumb
branch_2247004: @ 2247004 :thumb
	ldrb    r2, [r4, #0x1]
	ldr     r0, [r6, #0x54]
	mov     r1, #0x1
	bl      0x21d4250
	ldr     r0, [pc, #0x60] @ 0x2247070, (=0x612)
	bl      Function_2005748
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_2247064
@ 0x224701c

.thumb
branch_224701c: @ 224701c :thumb
	ldr     r0, [r6, #0x54]
	mov     r1, #0x1
	bl      0x21d42f0
	cmp     r0, #0x0
	beq     branch_2247064
	ldr     r0, [pc, #0x44] @ 0x2247070, (=0x612)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x40] @ 0x2247074, (=0x5f1)
	bl      Function_2005748
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	mov     r2, #0x1
	bl      0x21d42b0
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_2247064
@ 0x2247048

.thumb
branch_2247048: @ 2247048 :thumb
	ldr     r0, [pc, #0x28] @ 0x2247074, (=0x5f1)
	bl      Function_20057d4
	cmp     r0, #0x0
	bne     branch_2247064
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_2247064
@ 0x224705a

.thumb
branch_224705a: @ 224705a :thumb
	bl      free
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x2247064

.thumb
branch_2247064: @ 2247064 :thumb
	mov     r0, #0x0
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x224706a


.align 2


.word 0x1f2 @ 0x224706c
.word 0x612 @ 0x2247070
.word 0x5f1 @ 0x2247074
.thumb
Function_2247078: @ 2247078 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r4, [pc, #0x64] @ 0x22470e4, (=0x22495ac)
	add     r3, sp, #0x20
	mov     r5, r0
	mov     r7, r1
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	add     r0, sp, #0x18
	str     r0, [sp, #0x0]
	mov     r1, r2
	mov     r0, r5
	mov     r2, #0x4
	add     r3, sp, #0x1c
	bl      Function_2055324
	cmp     r0, #0x0
	beq     branch_22470da
	ldr     r0, [r5, #0x30]
	bl      0x21efaa0
	mov     r6, r0
	ldr     r0, [sp, #0x1c]
	bl      0x21e18bc
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	bl      0x21e18c0
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x50]
	ldr     r1, [r5, #0x54]
	ldr     r3, [sp, #0x18]
	mov     r2, r7
	bl      0x21d41c8
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x22470da

.thumb
branch_22470da: @ 22470da :thumb
	bl      ErrorHandling
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x22470e2


.align 2


.word 0x22495ac @ 0x22470e4
.thumb
Function_22470e8: @ 22470e8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22470f0, (=0x21d4251)
	ldr     r0, [r0, #0x54]
	mov     r2, #0x0
	bx      r3
@ 0x22470f0

.word 0x21d4251 @ 0x22470f0
.thumb
Function_22470f4: @ 22470f4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22470fc, (=0x21d4251)
	ldr     r0, [r0, #0x54]
	mov     r2, #0x1
	bx      r3
@ 0x22470fc

.word 0x21d4251 @ 0x22470fc
.thumb
Function_2247100: @ 2247100 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x24
	bl      Function_2247590
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x1c]
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb3c
	str     r0, [r4, #0x18]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2247120

.thumb
Function_2247120: @ 2247120 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, r6
	bl      Function_2050a64
	mov     r5, r0
.thumb
branch_2247132: @ 2247132 :thumb
	ldr     r3, [r5, #0x0]
	mov     r0, r6
	lsl     r4, r3, #2
	ldr     r3, [pc, #0x1c] @ 0x2247158, (=0x22495cc)
	mov     r1, r7
	ldr     r3, [r3, r4]
	mov     r2, r5
	blx     r3
	mov     r4, r0
	cmp     r4, #0x2
	bne     branch_224714e
	mov     r0, r5
	bl      free
.thumb
branch_224714e: @ 224714e :thumb
	cmp     r4, #0x1
	beq     branch_2247132
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247156

.align 2
.word 0x22495cc @ 0x2247158



.thumb
Function_224715c: @ 224715c :thumb
	push    {r4,lr}
	mov     r0, r1
	mov     r1, #0x4
	mov     r4, r2
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x44] @ 0x22471b0, (=0xfff6a000)
	str     r0, [r4, #0x14]
	mov     r1, #0x1
	mov     r3, #0xf
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x3c] @ 0x22471b4, (=0x2249608)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2247194
	cmp     r0, #0x1
	beq     branch_224719c
	cmp     r0, #0x2
	beq     branch_22471a4
	b       branch_22471aa
@ 0x2247194

.thumb
branch_2247194: @ 2247194 :thumb
	ldr     r0, [pc, #0x20] @ 0x22471b8, (=0x603)
	bl      Function_2005748
	b       branch_22471aa
@ 0x224719c

.thumb
branch_224719c: @ 224719c :thumb
	ldr     r0, [pc, #0x18] @ 0x22471b8, (=0x603)
	bl      Function_2005748
	b       branch_22471aa
@ 0x22471a4

.thumb
branch_22471a4: @ 22471a4 :thumb
	ldr     r0, [pc, #0x14] @ 0x22471bc, (=0x64e)
	bl      Function_2005748
branch_22471aa: @ 22471aa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22471ae

.align 2
.word 0xfff6a000 @ 0x22471b0
.word 0x2249608 @ 0x22471b4
.word 0x603 @ 0x22471b8
.word 0x64e @ 0x22471bc



.thumb
Function_22471c0: @ 22471c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_22471d6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22471d6

.thumb
branch_22471d6: @ 22471d6 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x5c] @ 0x224723c, (=0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	bge     branch_22471f6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22471f6

.thumb
branch_22471f6: @ 22471f6 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x2
	bne     branch_2247216
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	b       branch_224722e
@ 0x2247216

.thumb
branch_2247216: @ 2247216 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x18] @ 0x2247240, (=0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
.thumb
branch_224722e: @ 224722e :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224723a

.align 2
.word 0x22495dc @ 0x224723c
.word 0x7fff @ 0x2247240



.thumb
Function_2247244: @ 2247244 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2247262
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x28] @ 0x2247284, (=0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
.thumb
branch_2247262: @ 2247262 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_224726e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224726e

.thumb
branch_224726e: @ 224726e :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x14]
	bl      0x21f0efc @ Function_5_21f0efc
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2247284

.word 0x22495dc @ 0x2247284
.thumb
Function_2247288: @ 2247288 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r1, #0xc]
	mov     r4, r2
	bl      LoadVariableAreaAdress_6
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x2
	bne     branch_22472b2
	bl      Function_203a75c
	add     r1, sp, #0x0
	bl      Function_203a7f0
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2053cd4
	b       branch_22472c0
@ 0x22472b2

.thumb
branch_22472b2: @ 22472b2 :thumb
	bl      Function_203a72c
	mov     r1, r0
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	bl      Function_2053cd4
.thumb
branch_22472c0: @ 22472c0 :thumb
	mov     r0, #0x2
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22472c6


.align 2, 0
.thumb
Function_22472c8: @ 22472c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, #0x24
	mov     r6, r2
	bl      Function_2247590
	mov     r4, r0
	str     r6, [r4, #0x8]
	str     r5, [r4, #0x1c]
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb3c
	str     r0, [r4, #0x18]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22472e8

.thumb
Function_22472e8: @ 22472e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r5
	bl      Function_2050a64
	ldr     r7, [pc, #0x2c] @ 0x2247328, (=0x22495bc)
	mov     r4, r0
.thumb
branch_22472fc: @ 22472fc :thumb
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	lsl     r3, r3, #2
	ldr     r3, [r7, r3]
	mov     r1, r6
	mov     r2, r4
	blx     r3
	cmp     r0, #0x2
	bne     branch_2247320
	mov     r0, r6
	mov     r1, r4
	bl      Function_224732c
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2247320

.thumb
branch_2247320: @ 2247320 :thumb
	cmp     r0, #0x1
	beq     branch_22472fc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2247328

.word 0x22495bc @ 0x2247328
.thumb
Function_224732c: @ 224732c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x2
	bne     branch_2247352
	ldr     r1, [r4, #0x1c]
	mov     r0, #0x9
	ldr     r1, [r1, #0x0]
	mov     r2, #0x4
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      Function_202be00
	add     r4, #0x9c
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	bl      Function_202b758
.thumb
branch_2247352: @ 2247352 :thumb
	pop     {r4,pc}
@ 0x2247354


.thumb
Function_2247354: @ 2247354 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r0, [r4, #0x8]
	mov     r5, r1
	cmp     r0, #0x2
	bne     branch_224737a
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	b       branch_2247390
@ 0x224737a

.thumb
branch_224737a: @ 224737a :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x34] @ 0x22473bc, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
.thumb
branch_2247390: @ 2247390 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	mov     r1, #0x1
	ldr     r2, [pc, #0x24] @ 0x22473c0, (=0xfff6a000)
	str     r0, [r4, #0x14]
	mov     r3, r1
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x1c] @ 0x22473c4, (=0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22473ba

.align 2
.word 0x7fff @ 0x22473bc
.word 0xfff6a000 @ 0x22473c0
.word 0x22495dc @ 0x22473c4



.thumb
Function_22473c8: @ 22473c8 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_22473e6
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x28] @ 0x2247408, (=0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
.thumb
branch_22473e6: @ 22473e6 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_22473f2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22473f2

.thumb
branch_22473f2: @ 22473f2 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x3c
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2247408

.word 0x22495dc @ 0x2247408
.thumb
Function_224740c: @ 224740c :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_224741e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224741e

.thumb
branch_224741e: @ 224741e :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x4
	ldr     r0, [r4, #0x18]
	bge     branch_224743c
	ldr     r1, [pc, #0x1c] @ 0x2247450, (=0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224743c

.thumb
branch_224743c: @ 224743c :thumb
	ldr     r1, [pc, #0x14] @ 0x2247454, (=0x224966c)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224744e

.align 2
.word 0x22495dc @ 0x2247450
.word 0x224966c @ 0x2247454



.thumb
Function_2247458: @ 2247458 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_224746a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224746a

.thumb
branch_224746a: @ 224746a :thumb
	ldr     r0, [r4, #0x14]
	bl      0x21f0ef0 @ Function_5_21f0ef0
	cmp     r0, #0x0
	bne     branch_2247478
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247478

.thumb
branch_2247478: @ 2247478 :thumb
	ldr     r0, [r4, #0x14]
	bl      0x21f0efc @ Function_5_21f0efc
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2247488


.thumb
Function_2247488: @ 2247488 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0x24
	bl      Function_2247590
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x1c]
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb3c
	str     r0, [r4, #0x18]
	str     r6, [r4, #0x20]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x22474ac

.thumb
Function_22474ac: @ 22474ac :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, r6
	bl      Function_2050a64
	mov     r5, r0
.thumb
branch_22474be: @ 22474be :thumb
	ldr     r3, [r5, #0x0]
	mov     r0, r6
	lsl     r4, r3, #2
	ldr     r3, [pc, #0x1c] @ 0x22474e4, (=0x22495f0)
	mov     r1, r7
	ldr     r3, [r3, r4]
	mov     r2, r5
	blx     r3
	mov     r4, r0
	cmp     r4, #0x2
	bne     branch_22474da
	mov     r0, r5
	bl      free
.thumb
branch_22474da: @ 22474da :thumb
	cmp     r4, #0x1
	beq     branch_22474be
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22474e2

.align 2
.word 0x22495f0 @ 0x22474e4



.thumb
Function_22474e8: @ 22474e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x3c]
	mov     r4, r2
	bl      Function_205eb98
	mov     r3, r0
	ldr     r2, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_6_2243f88
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224750c


.thumb
Function_224750c: @ 224750c :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x10]
	bl      Function_6_2243fbc
	cmp     r0, #0x0
	bne     branch_224751e
	mov     r0, #0x0
	pop     {r4,pc}

branch_224751e: @ 224751e :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_6_2243fc8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224752e


.align 2, 0
.thumb
Function_2247530: @ 2247530 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0x24
	bl      Function_2247590
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [r4, #0x8]
	str     r5, [r4, #0x1c]
	ldr     r0, [r5, #0x3c]
	bl      Function_205eb3c
	str     r0, [r4, #0x18]
	str     r6, [r4, #0x20]
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2247554

.thumb
Function_2247554: @ 2247554 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_2050a60
	mov     r7, r0
	mov     r0, r6
	bl      Function_2050a64
	mov     r5, r0
.thumb
branch_2247566: @ 2247566 :thumb
	ldr     r3, [r5, #0x0]
	mov     r0, r6
	lsl     r4, r3, #2
	ldr     r3, [pc, #0x1c] @ 0x224758c, (=0x22495f0)
	mov     r1, r7
	ldr     r3, [r3, r4]
	mov     r2, r5
	blx     r3
	mov     r4, r0
	cmp     r4, #0x2
	bne     branch_2247582
	mov     r0, r5
	bl      free
.thumb
branch_2247582: @ 2247582 :thumb
	cmp     r4, #0x1
	beq     branch_2247566
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x224758a


.align 2


.word 0x22495f0 @ 0x224758c
.thumb
Function_2247590: @ 2247590 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      malloc2_maybe
	mov     r4, r0
	bne     branch_22475a0
	bl      ErrorHandling
.thumb
branch_22475a0: @ 22475a0 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22475ae


.align 2, 0


.thumb
Function_22475b0: @ 22475b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x6a
	mov     r1, #0x8
	mov     r2, #0x4
	bl      LoadFromNARC_4
	mov     r4, r0
	add     r1, sp, #0x4
	ldr     r0, [sp, #0x0]
	add     r1, #0x2
	add     r2, sp, #0x4
	bl      Function_202da10
	add     r0, sp, #0x4
	ldrh    r1, [r0, #0x2]
	ldr     r0, [pc, #0x4c] @ 0x2247620, (=0xffff)
	cmp     r1, r0
	beq     branch_22475de
	lsl     r0, r1, #2
	ldr     r6, [r4, r0]
	b       branch_22475e0
@ 0x22475de

.thumb
branch_22475de: @ 22475de :thumb
	mov     r6, #0x0
.thumb
branch_22475e0: @ 22475e0 :thumb
	add     r0, sp, #0x4
	ldrh    r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2247620, (=0xffff)
	cmp     r1, r0
	beq     branch_22475f0
	lsl     r0, r1, #2
	ldr     r7, [r4, r0]
	b       branch_22475f2
@ 0x22475f0

.thumb
branch_22475f0: @ 22475f0 :thumb
	mov     r7, #0x0
.thumb
branch_22475f2: @ 22475f2 :thumb
	bl      PRNG
	lsl     r0, r0, #4
	lsr     r5, r0, #16
	cmp     r5, #0x10
	bcc     branch_2247602
	bl      ErrorHandling
.thumb
branch_2247602: @ 2247602 :thumb
	lsl     r0, r5, #2
	ldr     r0, [r4, r0]
	cmp     r6, r0
	beq     branch_22475f2
	cmp     r7, r0
	beq     branch_22475f2
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	bl      Function_202da24
	mov     r0, r4
	bl      free
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2247620

.word 0xffff @ 0x2247620
.thumb
Function_2247624: @ 2247624 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	add     r1, sp, #0x0
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_202da10
	add     r0, sp, #0x0
	ldrh    r1, [r0, #0x2]
	ldr     r0, [pc, #0x24] @ 0x224765c, (=0xffff)
	cmp     r1, r0
	bne     branch_2247640
	bl      ErrorHandling
.thumb
branch_2247640: @ 2247640 :thumb
	mov     r0, #0x6a
	mov     r1, #0x8
	mov     r2, #0x4
	bl      LoadFromNARC_4
	add     r1, sp, #0x0
	ldrh    r1, [r1, #0x2]
	lsl     r1, r1, #2
	ldr     r4, [r0, r1]
	bl      free
	mov     r0, r4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224765c

.word 0xffff @ 0x224765c
.thumb
Function_2247660: @ 2247660 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	bl      PRNG
	lsl     r0, r0, #1
	lsr     r4, r0, #16
	cmp     r4, #0x2
	bcc     branch_2247676
	bl      ErrorHandling
.thumb
branch_2247676: @ 2247676 :thumb
	cmp     r4, #0x0
	bne     branch_2247680
	add     sp, #0x4c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2247680

.thumb
branch_2247680: @ 2247680 :thumb
	ldr     r0, [r5, #0xc]
	bl      LoadVariableAreaAdress_11
	bl      Function_202b428
	mov     r4, r0
	ldr     r0, [r5, #0x3c]
	add     r1, sp, #0x18
	add     r2, sp, #0x14
	bl      Function_20615ac
	ldr     r0, [r5, #0x2c]
	bl      Function_2039e10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	lsr     r0, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x3c]
	lsr     r0, r4, #16
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x40]
	lsr     r0, r4, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x44]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x48]
	mov     r0, #0x6a
	mov     r1, #0x1
	mov     r2, #0x4
	bl      LoadFromNARC_4
	str     r0, [sp, #0xc]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	cmp     r0, #0x0
	ble     branch_22476ea
.thumb
branch_22476d6: @ 22476d6 :thumb
	ldr     r1, [sp, #0xc]
	lsl     r2, r3, #2
	add     r1, r1, r2
	ldr     r1, [r1, #0x4]
	add     r4, r4, r1
	add     r1, r3, #0x1
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	cmp     r3, r0
	blt     branch_22476d6
.thumb
branch_22476ea: @ 22476ea :thumb
	lsl     r0, r0, #1
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r1, r0, #1
	ldr     r0, [sp, #0xc]
	add     r0, r0, r1
	str     r0, [sp, #0x8]
	asr     r0, r4, #1
	lsr     r0, r0, #30
	add     r0, r4, r0
	mov     r1, #0x1
	asr     r0, r0, #2
	lsl     r1, r1, #8
	str     r0, [sp, #0x10]
	cmp     r0, r1
	blt     branch_224770c
	bl      ErrorHandling
.thumb
branch_224770c: @ 224770c :thumb
	lsr     r2, r4, #31
	lsl     r1, r4, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	mov     r7, #0x0
	lsr     r6, r0, #24
	mov     r5, r7
.thumb
branch_2247720: @ 2247720 :thumb
	lsl     r4, r5, #2
	add     r0, sp, #0x3c
	ldr     r0, [r0, r4]
	ldr     r1, [sp, #0x10]
	blx     _s32_div_f
	ldr     r0, [sp, #0x10]
	mov     r2, r0
	mul     r2, r5
	add     r0, r1, r2
	add     r1, r7, r0
	add     r0, sp, #0x2c
	str     r1, [r0, r4]
	ldr     r0, [r0, r4]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x8]
	cmp     r6, #0x0
	ldrh    r1, [r0, r1]
	add     r0, sp, #0x1c
	str     r1, [r0, r4]
	beq     branch_2247756
	add     r0, r7, #0x1
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	.hword  0x1e70 @ sub r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_2247756: @ 2247756 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x4
	bcc     branch_2247720
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #5
	mul     r0, r1
	ldr     r2, [sp, #0x18]
	mov     r3, #0x0
	add     r2, r2, r0
	add     r1, sp, #0x1c
.thumb
branch_2247770: @ 2247770 :thumb
	lsl     r0, r3, #2
	ldr     r0, [r1, r0]
	cmp     r2, r0
	bne     branch_224777e
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_2247788
@ 0x224777e

.thumb
branch_224777e: @ 224777e :thumb
	add     r0, r3, #0x1
	lsl     r0, r0, #24
	lsr     r3, r0, #24
	cmp     r3, #0x4
	bcc     branch_2247770
.thumb
branch_2247788: @ 2247788 :thumb
	ldr     r0, [sp, #0xc]
	bl      free
	ldr     r0, [sp, #0x4]
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2247794

.thumb
Function_2247794: @ 2247794 :thumb
	mov     r2, #0x14
	strb    r2, [r0, #0x0]
	mov     r0, #0xa
	strb    r0, [r1, #0x0]
	bx      lr
@ 0x224779e


.align 2, 0


.thumb
Function_22477a0: @ 22477a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	mov     r1, #0x0
	mov     r2, #0x4
	bl      LoadFromNARC_4
	ldr     r1, [r0, #0x0]
	str     r1, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x22477b8

.thumb
Function_22477b8: @ 22477b8 :thumb
	cmp     r1, #0x0
	beq     branch_224782a
	ldr     r1, [pc, #0x6c] @ 0x224782c, (=0x21bf6dc)
	ldrb    r1, [r1, #0x6]
	cmp     r1, #0x5
	bhi     branch_224782a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22477d0

Jumppoints_22477d0:
.hword branch_224782a - Jumppoints_22477d0 - 2
.hword branch_22477dc - Jumppoints_22477d0 - 2
.hword branch_22477ec - Jumppoints_22477d0 - 2
.hword branch_22477fc - Jumppoints_22477d0 - 2
.hword branch_224780c - Jumppoints_22477d0 - 2
.hword branch_224781c - Jumppoints_22477d0 - 2
.thumb
branch_22477dc: @ 22477dc :thumb
	mov     r1, r0
	add     r1, #0xac
	ldr     r1, [r1, #0x0]
	add     r0, #0xb0
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x22477ec

.thumb
branch_22477ec: @ 22477ec :thumb
	mov     r1, r0
	add     r1, #0xa4
	ldr     r1, [r1, #0x0]
	add     r0, #0xa8
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x22477fc

.thumb
branch_22477fc: @ 22477fc :thumb
	mov     r1, r0
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	add     r0, #0xb8
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x224780c

.thumb
branch_224780c: @ 224780c :thumb
	mov     r1, r0
	add     r1, #0xbc
	ldr     r1, [r1, #0x0]
	add     r0, #0xc0
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x224781c

.thumb
branch_224781c: @ 224781c :thumb
	mov     r1, r0
	add     r1, #0xc4
	ldr     r1, [r1, #0x0]
	add     r0, #0xc8
	str     r1, [r2, #0x0]
	ldr     r0, [r0, #0x0]
	str     r0, [r3, #0x0]
.thumb
branch_224782a: @ 224782a :thumb
	bx      lr
@ 0x224782c

.word 0x21bf6dc @ 0x224782c
.thumb
Function_2247830: @ 2247830 :thumb
	push    {r4-r7}
	mov     r3, r0
	mov     r0, r2
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r2, #0x0
	beq     branch_224788c
	add     r6, r3, r1
	.hword  0x1e4f @ sub r7, r1, #0x1
.thumb
branch_2247844: @ 2247844 :thumb
	.hword  0x1e71 @ sub r1, r6, #0x1
	ldrb    r2, [r1, #0x0]
	mov     r1, #0x1
	mov     r5, r7
	and     r1, r2
	lsl     r1, r1, #24
	lsr     r4, r1, #24
	cmp     r7, #0x0
	ble     branch_2247872
.thumb
branch_2247856: @ 2247856 :thumb
	ldrb    r1, [r3, r5]
	add     r2, r3, r5
	.hword  0x1e52 @ sub r2, r2, #0x1
	asr     r1, r1, #1
	strb    r1, [r3, r5]
	ldrb    r2, [r2, #0x0]
	ldrb    r1, [r3, r5]
	lsl     r2, r2, #31
	lsr     r2, r2, #24
	orr     r1, r2
	strb    r1, [r3, r5]
	.hword  0x1e6d @ sub r5, r5, #0x1
	cmp     r5, #0x0
	bgt     branch_2247856
.thumb
branch_2247872: @ 2247872 :thumb
	ldrb    r1, [r3, r5]
	asr     r1, r1, #1
	strb    r1, [r3, r5]
	ldrb    r2, [r3, r5]
	lsl     r1, r4, #7
	orr     r1, r2
	strb    r1, [r3, r5]
	mov     r1, r0
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r1, #0x0
	bne     branch_2247844
.thumb
branch_224788c: @ 224788c :thumb
	pop     {r4-r7}
	bx      lr
@ 0x2247890

.thumb
Function_2247890: @ 2247890 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r2
	str     r1, [sp, #0x0]
	mov     r7, r3
	bl      Function_2015004
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      Function_2015030
	add     r1, sp, #0x4
	strh    r0, [r1, #0x4]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2015030
	add     r1, sp, #0x4
	strh    r0, [r1, #0x6]
	add     r1, sp, #0x18
	ldrh    r1, [r1, #0x10]
	mov     r0, r5
	bl      Function_2015030
	add     r1, sp, #0x4
	strh    r0, [r1, #0x8]
	add     r1, sp, #0x18
	ldrh    r1, [r1, #0x14]
	mov     r0, r5
	bl      Function_2015030
	add     r1, sp, #0x4
	mov     r2, #0x0
	strh    r0, [r1, #0xa]
	add     r3, sp, #0x8
	add     r5, sp, #0x4
	mov     r7, r2
.thumb
branch_22478de: @ 22478de :thumb
	ldsh    r0, [r3, r7]
	cmp     r0, #0x0
	bge     branch_22478ec
	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x22478ec

.thumb
branch_22478ec: @ 22478ec :thumb
	cmp     r2, #0x0
	ble     branch_2247920
	mov     r6, #0x1
	mvn     r6, r6
	ldsh    r6, [r3, r6]
	cmp     r0, r6
	blt     branch_224790c
	sub     r0, r0, r6
	cmp     r0, #0xff
	ble     branch_2247908
	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x2247908

.thumb
branch_2247908: @ 2247908 :thumb
	strb    r0, [r5, #0x0]
	b       branch_2247932
@ 0x224790c

.thumb
branch_224790c: @ 224790c :thumb
	sub     r0, r6, r0
	sub     r0, r4, r0
	cmp     r0, #0xff
	ble     branch_224791c
	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x224791c

.thumb
branch_224791c: @ 224791c :thumb
	strb    r0, [r5, #0x0]
	b       branch_2247932
@ 0x2247920

.thumb
branch_2247920: @ 2247920 :thumb
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	cmp     r0, #0xff
	ble     branch_2247930
	mov     r0, #0x0
	add     sp, #0x10
	mvn     r0, r0
	pop     {r3-r7,pc}
@ 0x2247930

.thumb
branch_2247930: @ 2247930 :thumb
	strb    r0, [r1, #0x0]
.thumb
branch_2247932: @ 2247932 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r2, #0x4
	blt     branch_22478de
	add     r0, sp, #0x4
	mov     r1, #0x4
	mov     r2, #0x5
	bl      Function_2247830
	mov     r2, #0x0
	add     r1, sp, #0x4
	add     r4, sp, #0x4
	mov     r3, #0xf0
.thumb
branch_224794e: @ 224794e :thumb
	ldrb    r5, [r4, #0x3]
	ldrb    r0, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	asr     r6, r5, #4
	and     r5, r3
	orr     r5, r6
	eor     r0, r5
	strb    r0, [r1, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r2, #0x3
	blt     branch_224794e
	add     r2, sp, #0x4
	ldrb    r3, [r2, #0x3]
	mov     r2, #0xf
	add     r0, sp, #0x4
	and     r2, r3
	lsl     r2, r2, #24
	mov     r1, #0x3
	lsr     r2, r2, #24
	bl      Function_2247830
	add     r1, sp, #0x4
	ldrb    r5, [r1, #0x0]
	mov     r0, #0xf
	mov     r4, r5
	and     r4, r0
	cmp     r4, #0x8
	blt     branch_224798c
	add     sp, #0x10
	sub     r0, #0x10
	pop     {r3-r7,pc}
@ 0x224798c

.thumb
branch_224798c: @ 224798c :thumb
	ldrb    r0, [r1, #0x1]
	eor     r0, r5
	strb    r0, [r1, #0x1]
	ldrb    r0, [r1, #0x2]
	eor     r0, r5
	strb    r0, [r1, #0x2]
	ldrb    r2, [r1, #0x1]
	ldrb    r3, [r1, #0x2]
	lsl     r0, r2, #8
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	orr     r6, r3
	cmp     r0, r6
	bne     branch_22479c6
	mov     r0, #0xf0
	and     r0, r5
	asr     r0, r0, #4
	cmp     r0, #0x6
	bne     branch_22479c6
	ldrb    r0, [r1, #0x3]
	add     r1, r5, r2
	mul     r1, r3
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r0, r1
	bne     branch_22479c6
	add     sp, #0x10
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22479c6

.thumb
branch_22479c6: @ 22479c6 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22479ce


.align 2, 0


.thumb
Function_22479d0: @ 22479d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r0, [sp, #0x24]
	mov     r7, r1
	str     r2, [sp, #0x8]
	mov     r5, r3
	bl      Function_2014fb0
	mov     r4, r0
	mov     r0, r6
	bl      GetSecretTrainerID
	mov     r1, r0
	str     r5, [sp, #0x0]
	add     r0, sp, #0x10
	ldrh    r0, [r0, #0x10]
	mov     r2, r7
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2247890
	mov     r5, r0
	mov     r0, r4
	bl      Function_2014ff0
	mov     r0, r5
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2247a0c

.thumb
Function_2247a0c: @ 2247a0c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xb
	mov     r1, #0x8
	bl      malloc2_maybe
	mov     r1, #0x0
	mov     r2, #0x8
	mov     r4, r0
	blx     MI_CpuFill8
	ldr     r1, [pc, #0xc] @ 0x2247a30, (=0x2247a35)
	mov     r0, r5
	mov     r2, r4
	bl      Function_2050944
	pop     {r3-r5,pc}
@ 0x2247a2e

.align 2
.word 0x2247a35 @ 0x2247a30



.thumb
Function_2247a34: @ 2247a34 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_2247a56
	cmp     r1, #0x1
	beq     branch_2247a66
	cmp     r1, #0x2
	beq     branch_2247a7e
	b       branch_2247a86

branch_2247a56: @ 2247a56 :thumb
	mov     r0, r5
	bl      Function_2247a90
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_2247a86

branch_2247a66: @ 2247a66 :thumb
	ldr     r0, =RAM_21bf67c
	ldr     r1, [r0, #RAM_21bf67c_48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2247a86
	ldr     r0, [r4, #0x0]
	bl      Function_2247cc8
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	b       branch_2247a86

branch_2247a7e: @ 2247a7e :thumb
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2247a86: @ 2247a86 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2247a8a

.align 2
.pool



.thumb
Function_2247a90: @ 2247a90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r0
	bl      Function_203d170
	mov     r5, r0
	mov     r0, r4
	bl      Function_203d174
	str     r0, [sp, #0x1c]
	mov     r0, #0xb
	mov     r1, #0x18
	bl      malloc_maybe
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r4, r0
	blx     MI_CpuFill8
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xd0
	mov     r3, #0xb
	bl      Function_200b144
	str     r0, [r4, #0x10]
	mov     r0, #0xb
	bl      Function_200b358
	str     r0, [r4, #0x14]
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r0, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x11
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	str     r0, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x1
	bl      Function_201a7e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0xb
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x1
	str     r3, [sp, #0x4]
	bl      Function_200daa4
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, #0x64
	mov     r1, #0xb
	bl      Function_2023790
	mov     r6, r0
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_200b1ec
	mov     r5, r0
	ldr     r0, [sp, #0x1c]
	bl      LoadTrainerDataAdress
	mov     r2, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r0, [r4, #0x14]
	mov     r1, r6
	mov     r2, r5
	bl      Function_200c388
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x78
	bl      Function_2247cf4
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r6
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r5
	bl      Function_20237bc
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x78
	mov     r5, r0
	bl      Function_2247cf4
	mov     r3, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r5
	str     r1, [sp, #0x8]
	bl      Function_201d738
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, #0x0
	ldr     r5, [pc, #0x124] @ 0x2247cbc, (=0x22496f4)
	str     r0, [sp, #0x24]
.thumb
branch_2247b9a: @ 2247b9a :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r5, #0x0]
	bl      Function_200b1ec
	mov     r3, #0x4
	mov     r1, #0x0
	ldsh    r3, [r5, r3]
	mov     r2, r1
	mov     r7, r0
	bl      Function_2247cf4
	mov     r3, r0
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_201d738
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [sp, #0x24]
	add     r5, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x5
	blt     branch_2247b9a
	mov     r0, #0x0
	ldr     r5, [pc, #0xe0] @ 0x2247cc0, (=0x22496d4)
	str     r0, [sp, #0x14]
.thumb
branch_2247be2: @ 2247be2 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r5, #0x0]
	bl      Function_200b1ec
	mov     r3, #0x4
	ldsh    r3, [r5, r3]
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r7, r0
	bl      Function_2247cf4
	mov     r3, r0
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_201d738
	mov     r0, r7
	bl      Function_20237bc
	ldr     r0, [sp, #0x14]
	add     r5, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x4
	blt     branch_2247be2
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [pc, #0x98] @ 0x2247cc4, (=0x224971c)
	str     r0, [sp, #0x18]
.thumb
branch_2247c2c: @ 2247c2c :thumb
	ldr     r5, [sp, #0x18]
	mov     r7, #0x0
.thumb
branch_2247c30: @ 2247c30 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x20]
	mov     r2, r7
	bl      Function_202f160
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x10]
	ldr     r1, [r5, #0x0]
	bl      Function_200b1ec
	str     r0, [sp, #0x2c]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x14]
	ldr     r2, [sp, #0x28]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      Function_200b60c
	ldr     r0, [r4, #0x14]
	ldr     r2, [sp, #0x2c]
	mov     r1, r6
	bl      Function_200c388
	mov     r3, #0x4
	ldsh    r3, [r5, r3]
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_2247cf4
	mov     r3, r0
	mov     r0, #0x6
	ldsh    r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	bl      Function_201d738
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x8
	cmp     r7, #0x4
	blt     branch_2247c30
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	cmp     r0, #0x5
	blt     branch_2247c2c
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_201a954
	mov     r0, r4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2247cba


.align 2


.word 0x22496f4 @ 0x2247cbc
.word 0x22496d4 @ 0x2247cc0
.word 0x224971c @ 0x2247cc4
.thumb
Function_2247cc8: @ 2247cc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	bl      Function_201acf4
	mov     r0, r4
	bl      Function_201a8fc
	ldr     r0, [r4, #0x10]
	bl      Function_200b190
	ldr     r0, [r4, #0x14]
	bl      Function_200b3f0
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2247cf2


.align 2, 0


.thumb
Function_2247cf4: @ 2247cf4 :thumb
	push    {r4-r6,lr}
	mov     r5, r2
	mov     r6, r0
	mov     r4, r3
	cmp     r5, #0x0
	bne     branch_2247d04
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2247d04

.thumb
branch_2247d04: @ 2247d04 :thumb
	mov     r0, r1
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2002d7c
	cmp     r5, #0x1
	beq     branch_2247d18
	cmp     r5, #0x2
	beq     branch_2247d22
	b       branch_2247d26
@ 0x2247d18

.thumb
branch_2247d18: @ 2247d18 :thumb
	lsr     r1, r0, #31
	add     r1, r0, r1
	asr     r0, r1, #1
	sub     r0, r4, r0
	pop     {r4-r6,pc}
@ 0x2247d22

.thumb
branch_2247d22: @ 2247d22 :thumb
	sub     r0, r4, r0
	pop     {r4-r6,pc}
@ 0x2247d26

.thumb
branch_2247d26: @ 2247d26 :thumb
	bl      ErrorHandling
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x2247d2e


.align 2, 0


.thumb
Function_2247d30: @ 2247d30 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r6, r1
	ldr     r1, [pc, #0x6c] @ 0x2247da4, (=0x1fb)
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	mov     r5, r0
	bl      Function_20552b4
	cmp     r0, #0x0
	beq     branch_2247d9c
	mov     r0, #0x4
	mov     r1, #0x18
	bl      malloc2_maybe
	mov     r4, r0
	strb    r6, [r4, #0xc]
	mov     r0, #0x0
	strb    r0, [r4, #0xd]
	strb    r0, [r4, #0xe]
	strb    r0, [r4, #0xf]
	ldr     r0, [r5, #0x2c]
	bl      Function_2039e10
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	add     r2, sp, #0x14
	bl      Function_20553a4
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x8
	bl      0x21e1894
	add     r3, sp, #0x8
	ldmia   r3!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, r4
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	ldr     r1, [r4, #0x8]
	ldr     r0, [sp, #0x1c]
	add     r0, r1, r0
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0x14] @ 0x2247da8, (=0x2247dad)
	bl      Function_2050944
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2247d9c

.thumb
branch_2247d9c: @ 2247d9c :thumb
	bl      ErrorHandling
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x2247da4

.word 0x1fb @ 0x2247da4
.word 0x2247dad @ 0x2247da8
.thumb
Function_2247dac: @ 2247dac :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r4, r0
	bl      Function_2050a60
	mov     r6, r0
	mov     r0, r4
	bl      Function_2050a64
	mov     r4, r0
	ldrb    r1, [r4, #0xf]
	cmp     r1, #0x5
	bls     branch_2247dc8
	b       branch_2247f46
@ 0x2247dc8

.thumb
branch_2247dc8: @ 2247dc8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2247dd4

Jumppoints_2247dd4:
.hword branch_2247de0 - Jumppoints_2247dd4 - 2
.hword branch_2247e3e - Jumppoints_2247dd4 - 2
.hword branch_2247ebe - Jumppoints_2247dd4 - 2
.hword branch_2247eea - Jumppoints_2247dd4 - 2
.hword branch_2247efc - Jumppoints_2247dd4 - 2
.hword branch_2247f3c - Jumppoints_2247dd4 - 2
.thumb
branch_2247de0: @ 2247de0 :thumb
	ldr     r0, [pc, #0x168] @ 0x2247f4c, (=0x205)
	ldr     r1, [r6, #0x30]
	bl      0x21ef9e8
	ldr     r0, [r0, #0x0]
	blx     Function_20b3c0c
	cmp     r0, #0x0
	beq     branch_2247e12
	mov     r2, r0
	add     r2, #0x8
	beq     branch_2247e06
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_2247e06
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_2247e08
@ 0x2247e06

.thumb
branch_2247e06: @ 2247e06 :thumb
	mov     r1, #0x0
.thumb
branch_2247e08: @ 2247e08 :thumb
	cmp     r1, #0x0
	beq     branch_2247e12
	ldr     r1, [r1, #0x0]
	add     r5, r0, r1
	b       branch_2247e14
@ 0x2247e12

.thumb
branch_2247e12: @ 2247e12 :thumb
	mov     r5, #0x0
.thumb
branch_2247e14: @ 2247e14 :thumb
	ldr     r0, [r6, #0x30]
	bl      0x21efaa0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	ldr     r3, [pc, #0x11c] @ 0x2247f4c, (=0x205)
	mov     r2, #0x10
	bl      0x21d41c8
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247e3e

.thumb
branch_2247e3e: @ 2247e3e :thumb
	add     r0, sp, #0x18
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	ldrb    r5, [r4, #0xd]
	mov     r1, #0xc
	ldr     r3, [r4, #0x0]
	mov     r2, r5
	ldr     r5, [pc, #0xfc] @ 0x2247f50, (=0x22498e4)
	mul     r2, r1
	ldr     r2, [r5, r2]
	add     r2, r3, r2
	str     r2, [sp, #0x24]
	ldrb    r5, [r4, #0xd]
	ldr     r3, [r4, #0x4]
	mov     r2, r5
	ldr     r5, [pc, #0xf0] @ 0x2247f54, (=0x22498e8)
	mul     r2, r1
	ldr     r2, [r5, r2]
	add     r2, r3, r2
	str     r2, [sp, #0x28]
	ldrb    r3, [r4, #0xd]
	ldr     r2, [r4, #0x8]
	mov     r5, r3
	mul     r5, r1
	ldr     r1, [pc, #0xe4] @ 0x2247f58, (=0x22498ec)
	add     r3, sp, #0x24
	ldr     r1, [r1, r5]
	add     r1, r2, r1
	str     r1, [sp, #0x2c]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x50]
	ldr     r2, [pc, #0xc8] @ 0x2247f4c, (=0x205)
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x30]
	bl      0x21e19cc
	ldrb    r1, [r4, #0xd]
	add     r1, r4, r1
	strb    r0, [r1, #0x10]
	ldrb    r1, [r4, #0xd]
	mov     r0, r6
	add     r0, #0xa4
	add     r1, r4, r1
	ldrb    r1, [r1, #0x10]
	ldr     r0, [r0, #0x0]
	bl      0x21e18e0
	bl      0x21e18bc
	mov     r3, r0
	ldrb    r2, [r4, #0xd]
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	bl      0x21d4220
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247ebe

.thumb
branch_2247ebe: @ 2247ebe :thumb
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0xf
	bcs     branch_2247eca
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xe]
	b       branch_2247f46
@ 0x2247eca

.thumb
branch_2247eca: @ 2247eca :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0xe]
	ldrb    r0, [r4, #0xd]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r1, [r4, #0xd]
	ldrb    r0, [r4, #0xc]
	cmp     r1, r0
	bcs     branch_2247ee2
	mov     r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247ee2

.thumb
branch_2247ee2: @ 2247ee2 :thumb
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247eea

.thumb
branch_2247eea: @ 2247eea :thumb
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	mov     r2, #0x0
	bl      0x21d4250
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247efc

.thumb
branch_2247efc: @ 2247efc :thumb
	ldr     r0, [r6, #0x54]
	mov     r1, #0x10
	bl      0x21d42f0
	cmp     r0, #0x0
	beq     branch_2247f46
	ldr     r0, [r6, #0x50]
	ldr     r1, [r6, #0x54]
	mov     r2, #0x10
	bl      0x21d42b0
	ldrb    r0, [r4, #0xc]
	mov     r5, #0x0
	cmp     r0, #0x0
	bls     branch_2247f34
.thumb
branch_2247f1a: @ 2247f1a :thumb
	add     r0, r4, r5
	mov     r1, r6
	add     r1, #0xa4
	ldrb    r0, [r0, #0x10]
	ldr     r1, [r1, #0x0]
	bl      0x21e1674
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	ldrb    r0, [r4, #0xc]
	cmp     r5, r0
	bcc     branch_2247f1a
.thumb
branch_2247f34: @ 2247f34 :thumb
	ldrb    r0, [r4, #0xf]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_2247f46
@ 0x2247f3c

.thumb
branch_2247f3c: @ 2247f3c :thumb
	bl      free
	add     sp, #0x30
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2247f46

.thumb
branch_2247f46: @ 2247f46 :thumb
	mov     r0, #0x0
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2247f4c

.word 0x205 @ 0x2247f4c
.word 0x22498e4 @ 0x2247f50
.word 0x22498e8 @ 0x2247f54
.word 0x22498ec @ 0x2247f58
.thumb
Function_2247f5c: @ 2247f5c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadFlagAdress
	bl      Function_206adec
	cmp     r0, #0x0
	bne     branch_2247f8c
	mov     r0, #0x1f
	ldr     r2, [r4, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x1
	bl      0x21d3de4
	mov     r4, r0
	mov     r1, #0x1
	bl      0x21d3f08
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21d3e40
	pop     {r4,pc}
@ 0x2247f8c

.thumb
branch_2247f8c: @ 2247f8c :thumb
	mov     r0, #0x1f
	ldr     r2, [r4, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x0
	bl      0x21d3de4
	mov     r1, #0x1
	bl      0x21d3e40
	mov     r0, #0x1f
	ldr     r2, [r4, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x1
	bl      0x21d3de4
	mov     r4, r0
	bl      0x21d3e9c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x21d3e40
	pop     {r4,pc}
@ 0x2247fba


.align 2, 0


.thumb
Function_2247fbc: @ 2247fbc :thumb
	ldr     r3, [pc, #0x8] @ 0x2247fc8, (=0x2050945)
	ldr     r0, [r0, #0x10]
	ldr     r1, [pc, #0x8] @ 0x2247fcc, (=0x2247fd1)
	mov     r2, #0x0
	bx      r3
@ 0x2247fc6


.align 2


.word 0x2050945 @ 0x2247fc8
.word 0x2247fd1 @ 0x2247fcc
.thumb
Function_2247fd0: @ 2247fd0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2050a60
	mov     r5, r0
	mov     r0, r4
	bl      Function_2050a68
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2247ff2
	cmp     r0, #0x1
	beq     branch_2248018
	cmp     r0, #0x2
	beq     branch_2248032
	b       branch_224804a
@ 0x2247ff2

.thumb
branch_2247ff2: @ 2247ff2 :thumb
	mov     r0, #0x1f
	ldr     r2, [r5, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x0
	bl      0x21d3de4
	mov     r5, r0
	bl      0x21d3e4c
	cmp     r0, #0x0
	beq     branch_224804a
	mov     r0, r5
	mov     r1, #0x1
	bl      0x21d3e40
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224804a
@ 0x2248018

.thumb
branch_2248018: @ 2248018 :thumb
	mov     r0, #0x1f
	ldr     r2, [r5, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x1
	bl      0x21d3de4
	mov     r1, #0x0
	bl      0x21d3e40
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_224804a
@ 0x2248032

.thumb
branch_2248032: @ 2248032 :thumb
	mov     r0, #0x1f
	ldr     r2, [r5, #0x50]
	lsl     r0, r0, #4
	mov     r1, #0x1
	bl      0x21d3de4
	bl      0x21d3f70
	cmp     r0, #0x0
	beq     branch_224804a
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x224804a

.thumb
branch_224804a: @ 224804a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224804e


.align 2, 0


.thumb
Function_2248050: @ 2248050 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r2
	bl      Function_206251c
	mov     r6, r0
	add     r1, sp, #0x0
	bl      Function_2063050
	mov     r0, r6
	bl      LoadSpritePositionX
	mov     r5, r0
	mov     r0, r6
	bl      LoadSpritePositionY
	mov     r4, r0
	mov     r0, r6
	bl      LoadSpriteFaceDirection
	cmp     r0, #0x3
	bhi     branch_22480a0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2248088

Jumppoints_2248088:
.hword branch_2248090 - Jumppoints_2248088 - 2
.hword branch_2248094 - Jumppoints_2248088 - 2
.hword branch_2248098 - Jumppoints_2248088 - 2
.hword branch_224809c - Jumppoints_2248088 - 2
.thumb
branch_2248090: @ 2248090 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	b       branch_22480a4
@ 0x2248094

.thumb
branch_2248094: @ 2248094 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_22480a4
@ 0x2248098

.thumb
branch_2248098: @ 2248098 :thumb
	.hword  0x1e6d @ sub r5, r5, #0x1
	b       branch_22480a4
@ 0x224809c

.thumb
branch_224809c: @ 224809c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_22480a4
@ 0x22480a0

.thumb
branch_22480a0: @ 22480a0 :thumb
	bl      ErrorHandling
.thumb
branch_22480a4: @ 22480a4 :thumb
	mov     r3, #0x2
	lsl     r1, r5, #16
	lsl     r3, r3, #14
	ldr     r2, [sp, #0x4]
	lsl     r4, r4, #16
	add     r1, r1, r3
	mov     r0, r7
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22480bc


.thumb
Function_22480bc: @ 22480bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r6, r0
	add     r1, sp, #0x0
	bl      Function_205eaec
	mov     r0, r6
	bl      GetSpritePositionX
	mov     r5, r0
	mov     r0, r6
	bl      GetSpritePositionY
	mov     r4, r0
	mov     r0, r6
	bl      GetSpriteFaceDirection
	cmp     r0, #0x3
	bhi     branch_2248108
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22480f0

Jumppoints_22480f0:
.hword branch_22480f8 - Jumppoints_22480f0 - 2
.hword branch_22480fc - Jumppoints_22480f0 - 2
.hword branch_2248100 - Jumppoints_22480f0 - 2
.hword branch_2248104 - Jumppoints_22480f0 - 2
.thumb
branch_22480f8: @ 22480f8 :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	b       branch_224810c
@ 0x22480fc

.thumb
branch_22480fc: @ 22480fc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	b       branch_224810c
@ 0x2248100

.thumb
branch_2248100: @ 2248100 :thumb
	.hword  0x1e6d @ sub r5, r5, #0x1
	b       branch_224810c
@ 0x2248104

.thumb
branch_2248104: @ 2248104 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_224810c
@ 0x2248108

.thumb
branch_2248108: @ 2248108 :thumb
	bl      ErrorHandling
.thumb
branch_224810c: @ 224810c :thumb
	mov     r3, #0x2
	lsl     r1, r5, #16
	lsl     r3, r3, #14
	ldr     r2, [sp, #0x4]
	lsl     r4, r4, #16
	add     r1, r1, r3
	mov     r0, r7
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2248124


.thumb
Function_2248124: @ 2248124 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_205eaec
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r0, r4
	bl      Function_2017350
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2248140


.thumb
Function_2248140: @ 2248140 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x8]
	mov     r4, r2
	mov     r6, r0
	mov     r1, #0x0
	mov     r2, #0xdc
	str     r3, [sp, #0xc]
	ldr     r7, [sp, #0x2c]
	blx     Function_20d5124
	mov     r0, r6
	ldr     r1, [sp, #0x8]
	add     r0, #0x78
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_20170d8
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x78
	bl      Function_2017258
	mov     r0, r6
	ldr     r1, [sp, #0x28]
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_22481b8
	mov     r0, r6
	mov     r5, r6
	str     r0, [sp, #0x10]
	add     r0, #0x78
	add     r5, #0x88
	str     r0, [sp, #0x10]
.thumb
branch_224818e: @ 224818e :thumb
	ldr     r3, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r3, r3, r4
	str     r7, [sp, #0x4]
	bl      Function_2017164
	mov     r0, r6
	mov     r1, r5
	bl      Function_201727c
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_224818e
.thumb
branch_22481b8: @ 22481b8 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22481bc


.thumb
Function_22481bc: @ 22481bc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0x78
	mov     r7, r1
	bl      Function_2017110
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_22481ee
	mov     r5, r6
	add     r5, #0x88
branch_22481d8: @ 22481d8 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_20171a0
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_22481d8
branch_22481ee: @ 22481ee :thumb
	pop     {r3-r7,pc}
@ 0x22481f0


.thumb
Function_22481f0: @ 22481f0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r6, #0x1
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_224821e
	mov     r5, r7
	add     r5, #0x88
.thumb
branch_2248204: @ 2248204 :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2017204
	and     r6, r0
	mov     r0, r7
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_2248204
.thumb
branch_224821e: @ 224821e :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2248222


.align 2, 0
.thumb
Function_2248224: @ 2248224 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2248250
	mov     r5, r6
	mov     r7, #0x1
	add     r5, #0x88
	lsl     r7, r7, #12
.thumb
branch_224823a: @ 224823a :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_20171cc
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_224823a
.thumb
branch_2248250: @ 2248250 :thumb
	pop     {r3-r7,pc}
@ 0x2248252


.align 2, 0
.thumb
Function_2248254: @ 2248254 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248258, (=0x2017295)
	bx      r3
@ 0x2248258

.word 0x2017295 @ 0x2248258



.thumb
Function_224825c: @ 224825c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf0
	blx     Function_20d5124
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r2, #0x3
	mov     r0, r4
	str     r2, [sp, #0x0]
	add     r0, #0xdc
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2248140
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_22480bc
	ldr     r0, [pc, #0x10] @ 0x22482b8, (=0x64b)
	bl      Function_2005748
	mov     r0, #0x0
	add     r4, #0xec
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22482b6

.align 2
.word 0x64b @ 0x22482b8



.thumb
Function_22482bc: @ 22482bc :thumb
	ldr     r3, [pc, #0x8] @ 0x22482c8, (=0x22481bd)
	mov     r0, r2
	add     r2, #0xdc
	mov     r1, r2
	bx      r3
@ 0x22482c6

.align 2
.word 0x22481bd @ 0x22482c8



.thumb
Function_22482cc: @ 22482cc :thumb
	push    {r4,lr}
	mov     r4, r2
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22482de
	cmp     r0, #0x1
	pop     {r4,pc}
@ 0x22482de

.thumb
branch_22482de: @ 22482de :thumb
	mov     r0, r4
	bl      Function_22481f0
	cmp     r0, #0x1
	bne     branch_22482fc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	add     r4, #0xec
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22482fc: @ 22482fc :thumb
	pop     {r4,pc}
@ 0x22482fe


.align 2, 0


.thumb
Function_2248300: @ 2248300 :thumb
	ldr     r3, [pc, #0x4] @ 0x2248308, (=0x2248255)
	mov     r0, r2
	bx      r3
@ 0x2248306

.align 2
.word 0x2248255 @ 0x2248308



.thumb
Function_224830c: @ 224830c :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248318, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x224831c, (=0x2249804)
	bx      r3
@ 0x2248316

.align 2
.word 0x21d1b6d @ 0x2248318
.word 0x2249804 @ 0x224831c



.thumb
Function_2248320: @ 2248320 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248324, (=0x21d1bed)
	bx      r3
@ 0x2248324

.word 0x21d1bed @ 0x2248324



.thumb
Function_2248328: @ 2248328 :thumb
	push    {r3,lr}
	bl      0x21d1c2c @ Function_5_21d1c2c
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_224833a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x224833a

.thumb
branch_224833a: @ 224833a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224833e


.align 2, 0
.thumb
Function_2248340: @ 2248340 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf0
	blx     Function_20d5124
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r3, #0x4
	mov     r0, r4
	str     r3, [sp, #0x0]
	add     r0, #0xdc
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x8
	bl      Function_2248140
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_22480bc
	ldr     r0, [pc, #0x10] @ 0x224839c, (=0x64a)
	bl      Function_2005748
	mov     r0, #0x0
	add     r4, #0xec
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224839a


.align 2


.word 0x64a @ 0x224839c
.thumb
Function_22483a0: @ 22483a0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf0
	blx     Function_20d5124
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r3, #0x4
	mov     r0, r4
	str     r3, [sp, #0x0]
	add     r0, #0xdc
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x8
	bl      Function_2248140
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_2248050
	ldr     r0, [pc, #0x14] @ 0x22483fc, (=0x64a)
	bl      Function_2005748
	mov     r0, r6
	bl      Call_FS_CloseFile
	mov     r0, #0x0
	add     r4, #0xec
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22483fc

.word 0x64a @ 0x22483fc
.thumb
Function_2248400: @ 2248400 :thumb
	ldr     r3, [pc, #0x8] @ 0x224840c, (=0x22481bd)
	mov     r0, r2
	add     r2, #0xdc
	mov     r1, r2
	bx      r3
@ 0x224840a


.align 2


.word Function_22481bc+1 @ =0x22481bd, 0x224840c
.thumb
Function_2248410: @ 2248410 :thumb
	push    {r4,lr}
	mov     r4, r2
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2248422
	cmp     r0, #0x1
	pop     {r4,pc}
@ 0x2248422

.thumb
branch_2248422: @ 2248422 :thumb
	mov     r0, r4
	bl      Function_22481f0
	cmp     r0, #0x1
	bne     branch_2248440
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	add     r4, #0xec
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2248440: @ 2248440 :thumb
	pop     {r4,pc}
@ 0x2248442


.align 2, 0
.thumb
Function_2248444: @ 2248444 :thumb
	ldr     r3, [pc, #0x4] @ 0x224844c, (=0x2248255)
	mov     r0, r2
	bx      r3
@ 0x224844a

.align 2
.word Function_2248254+1 @ =0x2248255, 0x224844c



.thumb
Function_2248450: @ 2248450 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x224845c, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2248460, (=0x22497ec)
	bx      r3
@ 0x224845a

.align 2
.word 0x21d1b6d @ 0x224845c
.word 0x22497ec @ 0x2248460



.thumb
Function_2248464: @ 2248464 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248470, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2248474, (=0x22497d4)
	bx      r3
@ 0x224846e

.align 2
.word 0x21d1b6d @ 0x2248470
.word 0x22497d4 @ 0x2248474



.thumb
Function_2248478: @ 2248478 :thumb
	ldr     r3, [pc, #0x0] @ 0x224847c, (=0x21d1bed)
	bx      r3
@ 0x224847c

.word 0x21d1bed @ 0x224847c
.thumb
Function_2248480: @ 2248480 :thumb
	push    {r3,lr}
	bl      0x21d1c2c @ Function_5_21d1c2c
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2248492
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2248492

.thumb
branch_2248492: @ 2248492 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2248496


.align 2, 0
.thumb
Function_2248498: @ 2248498 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r2, #0x73
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     Function_20d5124
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0xe
	mov     r3, #0xc
	bl      Function_2248140
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_2248124
	mov     r0, r6
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x10] @ 0x22484fc, (=0x64d)
	bl      Function_2005748
	mov     r0, #0x72
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22484fc

.word 0x64d @ 0x22484fc
.thumb
Function_2248500: @ 2248500 :thumb
	push    {r4-r6,lr}
	mov     r0, #0x6e
	mov     r5, r2
	lsl     r0, r0, #2
	mov     r4, #0x0
	add     r6, r5, r0
.thumb
branch_224850c: @ 224850c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_22481bc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xdc
	cmp     r4, #0x2
	blt     branch_224850c
	pop     {r4-r6,pc}
@ 0x224851e


.align 2, 0


.thumb
Function_2248520: @ 2248520 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r0, #0x72
	mov     r4, r2
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r5, r1
	cmp     r0, #0x0
	beq     branch_224853e
	cmp     r0, #0x1
	beq     branch_2248586
	cmp     r0, #0x2
	beq     branch_22485c4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224853e

.thumb
branch_224853e: @ 224853e :thumb
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r6, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x6e
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, r6
	mov     r2, #0xb
	mov     r3, #0x9
	bl      Function_2248140
	mov     r0, r6
	bl      Call_FS_CloseFile
	mov     r1, r4
	ldr     r0, [r5, #0x3c]
	add     r1, #0xdc
	bl      Function_2248124
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2248586: @ 2248586 :thumb
	mov     r0, r4
	bl      Function_22481f0
	mov     r6, r0
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_2248124
	cmp     r6, #0x1
	bne     branch_22485d6
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x1
	bl      Function_2017348
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r1, r4
	ldr     r0, [r5, #0x3c]
	add     r1, #0xdc
	bl      Function_2248124
	mov     r0, #0x72
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	add     sp, #0x8
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x22485c4

.thumb
branch_22485c4: @ 22485c4 :thumb
	mov     r0, r4
	add     r0, #0xdc
	bl      Function_2248224
	add     r4, #0xdc
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_2248124
.thumb
branch_22485d6: @ 22485d6 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22485da


.align 2, 0


.thumb
Function_22485dc: @ 22485dc :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, #0x0
.thumb
branch_22485e2: @ 22485e2 :thumb
	mov     r0, r5
	bl      Function_2248254
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xdc
	cmp     r4, #0x2
	blt     branch_22485e2
	pop     {r3-r5,pc}
@ 0x22485f2


.align 2, 0
.thumb
.globl Function_6_22485f4
Function_6_22485f4: @ 22485f4 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248600, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2248604, (=0x22497bc)
	bx      r3
@ 0x22485fe

.align 2
.word 0x21d1b6d @ 0x2248600
.word 0x22497bc @ 0x2248604



.thumb
.globl Function_6_2248608
Function_6_2248608: @ 2248608 :thumb
	ldr     r3, [pc, #0x0] @ 0x224860c, (=0x21d1bed)
	bx      r3
@ 0x224860c

.word 0x21d1bed @ 0x224860c



.thumb
Function_2248610: @ 2248610 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	mov     r4, r2
	mov     r5, r3
	cmp     r0, #0x0
	beq     branch_2248628
	bl      ErrorHandling
.thumb
branch_2248628: @ 2248628 :thumb
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_205eaec
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	add     r2, r2, r4
	add     r3, r3, r5
	bl      Function_2017350
	mov     r0, r7
	mov     r4, #0x0
	mov     r5, r7
	mov     r1, #0x1
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	add     r5, #0x78
	mov     r6, r4
.thumb
branch_2248650: @ 2248650 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2017240
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_2248650
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [pc, #0x8] @ 0x2248674, (=0x627)
	bl      Function_2005748
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2248672

.align 2
.word 0x627 @ 0x2248674



.thumb
Function_2248678: @ 2248678 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22486b2
	ldr     r5, [sp, #0x0]
	mov     r4, #0x1
	mov     r6, #0x0
	add     r5, #0x78
	lsl     r7, r4, #12
.thumb
branch_224868e: @ 224868e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017204
	.hword  0x1c76 @ add r6, r6, #0x1
	and     r4, r0
	add     r5, #0x14
	cmp     r6, #0x4
	blt     branch_224868e
	cmp     r4, #0x1
	bne     branch_22486b2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_2017348
.thumb
branch_22486b2: @ 22486b2 :thumb
	pop     {r3-r7,pc}
@ 0x22486b4

.thumb
Function_22486b4: @ 22486b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xcc
	mov     r7, r0
	mov     r5, r3
	blx     Function_20d5124
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2017258
	mov     r4, r7
	mov     r6, #0x0
	add     r4, #0x78
.thumb
branch_22486d6: @ 22486d6 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_2017190
	mov     r0, r7
	mov     r1, r4
	bl      Function_201727c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r4, #0x14
	cmp     r6, #0x4
	blt     branch_22486d6
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2017348
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248700

.thumb
Function_2248700: @ 2248700 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	mov     r6, r1
	mov     r4, #0x0
	add     r5, #0x78
.thumb
branch_224870c: @ 224870c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_224870c
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0xcc
	blx     Function_20d5124
	pop     {r3-r7,pc}
@ 0x2248728

.thumb
Function_2248728: @ 2248728 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xce
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x3c]
	bl      Function_205eaec
	mov     r1, #0xcf
	lsl     r1, r1, #4
	ldr     r2, [sp, #0x0]
	ldr     r0, [r4, r1]
	sub     r0, r2, r0
	bne     branch_2248770
	add     r0, r1, #0x4
	ldr     r2, [sp, #0x4]
	ldr     r0, [r4, r0]
	cmp     r2, r0
	bge     branch_2248770
	mov     r0, r1
	add     r0, #0x8
	ldr     r2, [sp, #0x8]
	ldr     r0, [r4, r0]
	cmp     r2, r0
	ble     branch_2248770
	mov     r0, r1
	mov     r2, #0x0
	sub     r0, #0x8
	str     r2, [r4, r0]
	mov     r2, #0x2
	lsl     r2, r2, #16
	sub     r0, r1, #0x4
	str     r2, [r4, r0]
	b       branch_224877e
@ 0x2248770

.thumb
branch_2248770: @ 2248770 :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x20] @ 0x2248794, (=0xce8)
	lsl     r1, r1, #16
	str     r1, [r4, r0]
	lsr     r1, r1, #1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_224877e: @ 224877e :thumb
	mov     r0, #0xcf
	lsl     r0, r0, #4
	add     r3, sp, #0x0
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2248792

.align 2
.word 0xce8 @ 0x2248794



.thumb
Function_2248798: @ 2248798 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2248728
	mov     r2, #0x0
	mov     r1, r4
branch_22487a4: @ 22487a4 :thumb
	mov     r0, r1
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22487d0
	mov     r1, r4
	mov     r0, #0xcc
	mov     r3, #0xce
	add     r1, #0x10
	mul     r0, r2
	lsl     r3, r3, #4
	add     r0, r1, r0
	ldr     r1, [r4, r3]
	mov     r2, r3
	add     r2, #0x8
	add     r3, #0xc
	ldr     r1, [r1, #0x3c]
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	bl      Function_2248610
	pop     {r4,pc}
@ 0x22487d0

.thumb
branch_22487d0: @ 22487d0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0xcc
	cmp     r2, #0x10
	blt     branch_22487a4
	bl      ErrorHandling
	pop     {r4,pc}
@ 0x22487de


.align 2, 0


.thumb
Function_22487e0: @ 22487e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_22487e8: @ 22487e8 :thumb
	mov     r0, r5
	bl      Function_2248678
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xcc
	cmp     r4, #0x10
	blt     branch_22487e8
	pop     {r3-r5,pc}
@ 0x22487f8

.thumb
Function_22487f8: @ 22487f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r2
	mov     r2, #0xd1
	str     r1, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	ldr     r0, [pc, #0x84] @ 0x2248894, (=0xcfc)
	mov     r1, #0x4
	add     r0, r5, r0
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      LoadFromNARC_8
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x4
	bl      Function_20170d8
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_2248832: @ 2248832 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r1, r4, #0x4
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_200723c
	mov     r1, #0xcd
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_2248832
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_2248856: @ 2248856 :thumb
	ldr     r2, [pc, #0x3c] @ 0x2248894, (=0xcfc)
	mov     r3, #0xcd
	lsl     r3, r3, #4
	mov     r0, r4
	mov     r1, r5
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_22486b4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xcc
	cmp     r6, #0x10
	blt     branch_2248856
	mov     r1, #0xce
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	add     r1, #0x10
	ldr     r0, [r0, #0x3c]
	add     r1, r5, r1
	bl      Function_205eaec
	ldr     r0, [pc, #0x10] @ 0x2248898, (=0xd0c)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, r7
	bl      Call_FS_CloseFile
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248894

.word 0xcfc @ 0x2248894
.word 0xd0c @ 0x2248898
.thumb
Function_224889c: @ 224889c :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r4, r5
	ldr     r7, [pc, #0x30] @ 0x22488d4, (=0xcfc)
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_22488a8: @ 22488a8 :thumb
	mov     r0, r4
	add     r1, r5, r7
	bl      Function_2248700
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xcc
	cmp     r6, #0x10
	blt     branch_22488a8
	mov     r0, r5
	bl      Function_2017110
	mov     r6, #0xcd
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_22488c4: @ 22488c4 :thumb
	ldr     r0, [r5, r6]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22488c4
	pop     {r3-r7,pc}
@ 0x22488d4

.word 0xcfc @ 0x22488d4
.thumb
Function_22488d8: @ 22488d8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x2248910, (=0xd0c)
	mov     r4, r2
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_224890e
	mov     r0, r1
	sub     r0, #0x28
	ldr     r0, [r4, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	mov     r0, r1
	sub     r0, #0x28
	str     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x28
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2248908
	mov     r0, #0x4
	sub     r1, #0x28
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_2248798
.thumb
branch_2248908: @ 2248908 :thumb
	mov     r0, r4
	bl      Function_22487e0
.thumb
branch_224890e: @ 224890e :thumb
	pop     {r4,pc}
@ 0x2248910

.word 0xd0c @ 0x2248910



.thumb
Function_2248914: @ 2248914 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, #0x0
	add     r5, #0x10
branch_224891c: @ 224891c :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xcc
	cmp     r4, #0x10
	blt     branch_224891c
	pop     {r3-r5,pc}


.globl Function_6_224892c
Function_6_224892c: @ 224892c :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248938, (=0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x224893c, (=0x224981c)
	bx      r3
@ 0x2248936

.align 2
.word 0x21d1b6d @ 0x2248938
.word 0x224981c @ 0x224893c



.thumb
.globl Function_6_2248940
Function_6_2248940: @ 2248940 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248944, (=0x21d1bed)
	bx      r3
@ 0x2248944

.word 0x21d1bed @ 0x2248944



.thumb
Function_2248948: @ 2248948 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_224895a
	cmp     r0, #0x1
	beq     branch_2248972
	pop     {r3-r5,pc}
@ 0x224895a

.thumb
branch_224895a: @ 224895a :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x30] @ 0x2248994, (=0x224984c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x1
	bne     branch_2248990
	ldr     r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x2248972

.thumb
branch_2248972: @ 2248972 :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2248998, (=0x2249834)
	ldr     r1, [r1, r2]
	blx     r1
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	strh    r1, [r0, #0x0]
	mov     r0, r4
	bl      free
	mov     r0, r5
	bl      Function_200da58
.thumb
branch_2248990: @ 2248990 :thumb
	pop     {r3-r5,pc}
@ 0x2248992


.align 2


.word 0x224984c @ 0x2248994
.word 0x2249834 @ 0x2248998
.thumb
Function_224899c: @ 224899c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r0, r3
	mov     r1, #0x10
	mov     r4, r2
	bl      malloc_maybe
	mov     r6, r0
	mov     r2, r6
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_22489b4: @ 22489b4 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_22489b4
	ldr     r1, [pc, #0x1c] @ 0x22489dc, (=0x2249840)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r0, r7
	blx     r1
	str     r0, [r6, #0x0]
	str     r5, [r6, #0x4]
	ldr     r0, [pc, #0x14] @ 0x22489e0, (=0x2248949)
	str     r4, [r6, #0xc]
	mov     r2, #0x0
	mov     r1, r6
	strh    r2, [r5, #0x0]
	bl      Function_200d9e8
	pop     {r3-r7,pc}
@ 0x22489da


.align 2


.word 0x2249840 @ 0x22489dc
.word Function_2248948+1 @ =0x2248949, 0x22489e0
.thumb
Function_22489e4: @ 22489e4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r1, #0x61
	mov     r6, r0
	mov     r4, r3
	lsl     r1, r1, #2
	mov     r0, r2
	add     r2, r4, r1
	lsl     r1, r6, #8
	add     r1, r2, r1
	mov     r2, r5
	blx     MI_CpuCopy8
	ldr     r2, [pc, #0x58] @ 0x2248a5c, (=0x584)
	ldrb    r0, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r2]
	ldr     r0, [pc, #0x54] @ 0x2248a60, (=0x127)
	ldrb    r2, [r4, r2]
	ldrb    r1, [r4, r0]
	cmp     r2, r1
	bcc     branch_2248a56
	mov     r3, #0x0
	cmp     r1, #0x0
	ble     branch_2248a32
	add     r0, #0x5d
	add     r5, r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r2, r0
	add     r6, sp, #0x4
	add     r2, #0x27
.thumb
branch_2248a26: @ 2248a26 :thumb
	stmia   r6!, {r5}
	ldrb    r1, [r4, r2]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r5, r5, r0
	cmp     r3, r1
	blt     branch_2248a26
.thumb
branch_2248a32: @ 2248a32 :thumb
	add     r0, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2248a94
	mov     r1, #0x47
	lsl     r1, r1, #2
	strb    r0, [r4, r1]
	add     r0, sp, #0x0
	ldrb    r2, [r0, #0x0]
	add     r0, r1, #0x1
	strb    r2, [r4, r0]
	ldrb    r0, [r4, r1]
	lsl     r2, r0, #2
	add     r0, sp, #0x4
	ldr     r0, [r0, r2]
	ldrb    r2, [r0, #0x2]
	add     r0, r1, #0x6
	strb    r2, [r4, r0]
.thumb
branch_2248a56: @ 2248a56 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2248a5a


.align 2


.word 0x584 @ 0x2248a5c
.word 0x127 @ 0x2248a60
.thumb
Function_2248a64: @ 2248a64 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x28] @ 0x2248a90, (=0x125)
	add     r3, sp, #0x0
	ldrb    r2, [r0, r1]
	strb    r2, [r3, #0x0]
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldrb    r2, [r0, r2]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	strb    r2, [r3, #0x1]
	ldrb    r0, [r0, r1]
	add     r1, sp, #0x0
	mov     r2, #0x4
	strb    r0, [r3, #0x2]
	mov     r0, #0x1a
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248a8c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2248a8c

.thumb
branch_2248a8c: @ 2248a8c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2248a90

.word 0x125 @ 0x2248a90
.thumb
Function_2248a94: @ 2248a94 :thumb
	push    {r4-r7}
	mov     r5, #0x0
	mov     r4, r5
	cmp     r1, #0x0
	ble     branch_2248ab8
	mov     r6, r0
.thumb
branch_2248aa0: @ 2248aa0 :thumb
	lsl     r3, r5, #2
	ldr     r3, [r0, r3]
	ldr     r7, [r6, #0x0]
	ldrb    r3, [r3, #0x0]
	ldrb    r7, [r7, #0x0]
	cmp     r3, r7
	bcs     branch_2248ab0
	mov     r5, r4
.thumb
branch_2248ab0: @ 2248ab0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, r1
	blt     branch_2248aa0
.thumb
branch_2248ab8: @ 2248ab8 :thumb
	lsl     r1, r5, #2
	ldr     r0, [r0, r1]
	ldrb    r0, [r0, #0x0]
	strb    r0, [r2, #0x0]
	mov     r0, r5
	pop     {r4-r7}
	bx      lr
@ 0x2248ac6


.align 2, 0


.thumb
Function_2248ac8: @ 2248ac8 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      GetPkmnDataSize
	mov     r2, r0
	ldrb    r1, [r5, r2]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     MI_CpuCopy8
	ldr     r0, [pc, #0x8] @ 0x2248aec, (=0x584)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2248aea


.align 2


.word 0x584 @ 0x2248aec
.thumb
BeSeq_AddToPointer: @ 2248af0 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	bl      GetPkmnDataSize
	mov     r4, r0
	mov     r0, #0x14
	add     r1, r4, #0x1
	bl      malloc_maybe
	mov     r5, r0
	mov     r0, r7
	mov     r1, r5
	mov     r2, r4
	blx     MI_CpuCopy8
	mov     r0, #0x1b
	mov     r1, r5
	add     r2, r4, #0x1
	strb    r6, [r5, r4]
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248b24
	mov     r4, #0x1
	b       branch_2248b26
@ 0x2248b24

.thumb
branch_2248b24: @ 2248b24 :thumb
	mov     r4, #0x0
.thumb
branch_2248b26: @ 2248b26 :thumb
	mov     r0, r5
	bl      free
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2248b30

.thumb
Function_2248b30: @ 2248b30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	bl      GetPkmnDataSize
	mov     r7, #0x0
	ldr     r4, [sp, #0x4]
	mov     r6, r0
	mov     r5, r7
.thumb
branch_2248b44: @ 2248b44 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	add     r0, r0, r5
	mov     r2, r6
	blx     MI_CpuCopy8
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, r5, r6
	cmp     r7, #0x4
	blt     branch_2248b44
	ldr     r1, [pc, #0x10] @ 0x2248b6c, (=0x584)
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x4]
	strb    r2, [r0, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248b6a


.align 2


.word 0x584 @ 0x2248b6c
.thumb
Function_2248b70: @ 2248b70 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r5, r1
	bl      GetPkmnDataSize
	mov     r6, r0
	lsl     r0, r6, #2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2248bbc, (=0x585)
	mov     r7, #0x0
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	mov     r4, r7
.thumb
branch_2248b8c: @ 2248b8c :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, r1, r4
	mov     r2, r6
	blx     MI_CpuCopy8
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, r4, r6
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_2248b8c
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, #0x1c
	bl      Function_203597c
	cmp     r0, #0x1
	bne     branch_2248bb6
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2248bb6

.thumb
branch_2248bb6: @ 2248bb6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248bbc

.word 0x585 @ 0x2248bbc
.thumb
Function_2248bc0: @ 2248bc0 :thumb
	push    {r3-r5,lr}
	mov     r0, r2
	add     r2, #0x30
	ldrb    r1, [r2, #0x0]
	mov     r4, r3
	mov     r5, r4
	mov     r2, #0x30
	mov     r3, r1
	add     r5, #0x10
	mul     r3, r2
	add     r1, r5, r3
	blx     MI_CpuCopy8
	ldr     r0, [pc, #0x8] @ 0x2248be4, (=0x584)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2248be4

.word 0x584 @ 0x2248be4
.thumb
Function_2248be8: @ 2248be8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, #0x14
	mov     r1, #0x31
	mov     r6, r2
	bl      malloc_maybe
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x30
	blx     MI_CpuCopy8
	mov     r0, r4
	add     r0, #0x30
	strb    r5, [r0, #0x0]
	mov     r0, #0x1d
	mov     r1, r4
	mov     r2, #0x31
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248c1a
	mov     r5, #0x1
	b       branch_2248c1c
@ 0x2248c1a

.thumb
branch_2248c1a: @ 2248c1a :thumb
	mov     r5, #0x0
.thumb
branch_2248c1c: @ 2248c1c :thumb
	mov     r0, r4
	bl      free
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x2248c26


.align 2, 0


.thumb
Function_2248c28: @ 2248c28 :thumb
	push    {r3-r7,lr}
	mov     r5, r3
	mov     r6, r2
	str     r3, [sp, #0x0]
	mov     r4, #0x0
	add     r5, #0xd0
	mov     r7, #0x8
.thumb
branch_2248c36: @ 2248c36 :thumb
	lsl     r0, r4, #3
	add     r0, r6, r0
	mov     r1, r5
	mov     r2, r7
	blx     MI_CpuCopy8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x3
	blt     branch_2248c36
	ldrb    r2, [r6, #0x18]
	ldr     r1, [pc, #0x10] @ 0x2248c60, (=0x11e)
	ldr     r0, [sp, #0x0]
	strb    r2, [r0, r1]
	ldr     r1, [pc, #0x10] @ 0x2248c64, (=0x584)
	ldrb    r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x0]
	strb    r2, [r0, r1]
	pop     {r3-r7,pc}
@ 0x2248c5e


.align 2


.word 0x11e @ 0x2248c60
.word 0x584 @ 0x2248c64
.thumb
Function_2248c68: @ 2248c68 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	mov     r1, #0x19
	mov     r5, r2
	bl      malloc_maybe
	mov     r6, r0
	mov     r4, #0x0
	mov     r7, #0x8
.thumb
branch_2248c7c: @ 2248c7c :thumb
	lsl     r1, r4, #3
	mov     r0, r5
	add     r1, r6, r1
	mov     r2, r7
	blx     MI_CpuCopy8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x3
	blt     branch_2248c7c
	ldr     r1, [pc, #0x24] @ 0x2248cb8, (=0x11e)
	ldr     r0, [sp, #0x0]
	mov     r2, #0x19
	ldrb    r0, [r0, r1]
	mov     r1, r6
	strb    r0, [r6, #0x18]
	mov     r0, #0x1e
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248caa
	mov     r4, #0x1
	b       branch_2248cac
@ 0x2248caa

.thumb
branch_2248caa: @ 2248caa :thumb
	mov     r4, #0x0
.thumb
branch_2248cac: @ 2248cac :thumb
	mov     r0, r6
	bl      free
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2248cb6


.align 2


.word 0x11e @ 0x2248cb8
.thumb
Function_2248cbc: @ 2248cbc :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	ldrb    r0, [r5, #0x0]
	mov     r6, r3
	mov     r4, r6
	add     r4, #0xe8
	lsl     r7, r0, #2
	ldr     r0, [r4, r7]
	bl      Function_20237e8
	ldr     r0, [r4, r7]
	add     r1, r5, #0x4
	bl      Function_2023d28
	ldr     r0, [pc, #0x8] @ 0x2248ce4, (=0x584)
	ldrb    r1, [r6, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x2248ce2


.align 2


.word 0x584 @ 0x2248ce4
.thumb
Function_2248ce8: @ 2248ce8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r0, r2
	add     r1, sp, #0x0
	mov     r2, #0x8
	bl      Function_2023df0
	mov     r0, #0x14
	mov     r1, r0
	bl      malloc_maybe
	mov     r4, r0
	add     r0, sp, #0x0
	add     r1, r4, #0x4
	mov     r2, #0x10
	blx     MI_CpuCopy8
	strb    r5, [r4, #0x0]
	mov     r0, #0x10
	strb    r0, [r4, #0x1]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, #0x1f
	mov     r1, r4
	mov     r2, #0x14
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248d2a
	mov     r5, #0x1
	b       branch_2248d2c
@ 0x2248d2a

.thumb
branch_2248d2a: @ 2248d2a :thumb
	mov     r5, #0x0
.thumb
branch_2248d2c: @ 2248d2c :thumb
	mov     r0, r4
	bl      free
	mov     r0, r5
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2248d38

.thumb
Function_2248d38: @ 2248d38 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	bl      Function_202cc64
	mov     r2, r0
	ldrb    r1, [r5, r2]
	mov     r0, r5
	lsl     r1, r1, #2
	add     r3, r4, r1
	mov     r1, #0x57
	lsl     r1, r1, #2
	ldr     r1, [r3, r1]
	blx     MI_CpuCopy8
	ldr     r0, [pc, #0x8] @ 0x2248d60, (=0x584)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2248d60

.word 0x584 @ 0x2248d60
.thumb
Function_2248d64: @ 2248d64 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r7, r1
	mov     r6, r2
	bl      Function_202cc64
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x2248d9c, (=0x585)
	add     r4, r4, r0
	cmp     r6, #0x0
	beq     branch_2248d84
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	blx     MI_CpuCopy8
.thumb
branch_2248d84: @ 2248d84 :thumb
	mov     r0, #0x24
	mov     r1, r4
	add     r2, r5, #0x1
	strb    r7, [r4, r5]
	bl      Function_203597c
	cmp     r0, #0x1
	bne     branch_2248d98
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2248d98

.thumb
branch_2248d98: @ 2248d98 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2248d9c

.word 0x585 @ 0x2248d9c
.thumb
Function_2248da0: @ 2248da0 :thumb
	push    {r3-r6}
	ldrb    r1, [r2, #0x6]
	ldrb    r4, [r2, #0x0]
	mov     r5, #0x42
	add     r0, r3, r1
	lsl     r5, r5, #2
	strb    r4, [r0, r5]
	ldrb    r6, [r2, #0x1]
	add     r4, r5, #0x4
	strb    r6, [r0, r4]
	mov     r4, r5
	ldrb    r6, [r2, #0x2]
	add     r4, #0x8
	add     r5, #0xc
	strb    r6, [r0, r4]
	lsl     r0, r1, #1
	ldrh    r2, [r2, #0x4]
	add     r0, r3, r0
	strh    r2, [r0, r5]
	ldr     r0, [pc, #0xc] @ 0x2248dd4, (=0x584)
	ldrb    r1, [r3, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r3, r0]
	pop     {r3-r6}
	bx      lr
@ 0x2248dd2


.align 2


.word 0x584 @ 0x2248dd4
.thumb
Function_2248dd8: @ 2248dd8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, #0x14
	mov     r1, #0x7
	mov     r6, r2
	bl      malloc_maybe
	mov     r4, r0
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x6
	blx     MI_CpuCopy8
	mov     r0, #0x25
	mov     r1, r4
	mov     r2, #0x7
	strb    r5, [r4, #0x6]
	bl      Function_20359dc
	cmp     r0, #0x1
	bne     branch_2248e06
	mov     r5, #0x1
	b       branch_2248e08
@ 0x2248e06

.thumb
branch_2248e06: @ 2248e06 :thumb
	mov     r5, #0x0
branch_2248e08: @ 2248e08 :thumb
	mov     r0, r4
	bl      free
	mov     r0, r5
	pop     {r4-r6,pc}



.align 2, 0
Unknown_2248e14: @ 0x2248e14
.incbin "./baserom/overlay/overlay_0006.bin", 0xacd4, 0x22491ec - 0x2248e14


Unknown_22491ec:
.word Function_2245840+1 @ =0x2245841, 0x22491ec
.word Function_22459b0+1 @ =0x22459b1, 0x22491f0
.word Function_2245a0c+1 @ =0x2245a0d, 0x22491f4
.word Function_2245b48+1 @ =0x2245b49, 0x22491f8

.incbin "./baserom/overlay/overlay_0006.bin", 0xb0bc, 0x224924c - 0x22491fc


Unknown_224924c:
.word Function_22454b0+1 @ =0x22454b1, 0x224924c
.word Function_22454dc+1 @ =0x22454dd, 0x2249250
.word Function_22454e8+1 @ =0x22454e9, 0x2249254
.word Function_2245508+1 @ =0x2245509, 0x2249258

.incbin "./baserom/overlay/overlay_0006.bin", 0xb11c, 0x2249260 - 0x224925c


Unknown_2249260:
.word Function_22438c8+1 @ =0x22438c9, 0x2249260
.word Function_2243914+1 @ =0x2243915, 0x2249264
.word Function_2243920+1 @ =0x2243921, 0x2249268
.word Function_20715fc+1 @ 0x224926c
.word Function_2245d48+1 @ =0x2245d49, 0x2249270
.word Function_2245d60+1 @ =0x2245d61, 0x2249274
.word Function_2245ea4+1 @ =0x2245ea5, 0x2249278
.word Function_2245eec+1 @ =0x2245eed, 0x224927c
.word Function_2245f18+1 @ =0x2245f19, 0x2249280
.word Function_2245f40+1 @ =0x2245f41, 0x2249284
.word Function_2243ab8+1 @ =0x2243ab9, 0x2249288
.word Function_2243bb8+1 @ =0x2243bb9, 0x224928c
.word Function_2243bec+1 @ =0x2243bed, 0x2249290
.word Function_2243cd8+1 @ =0x2243cd9, 0x2249294
.word Function_2243cfc+1 @ =0x2243cfd, 0x2249298
.word Function_2243dc0+1 @ =0x2243dc1, 0x224929c
.word Function_2243ecc+1 @ =0x2243ecd, 0x22492a0
.word Function_2243f1c+1 @ =0x2243f1d, 0x22492a4

.incbin "./baserom/overlay/overlay_0006.bin", 0xb168, 0x22492d8 - 0x22492a8


Unknown_22492d8:
.word Function_2244038+1 @ =0x2244039, 0x22492d8
.word Function_2244050+1 @ =0x2244051, 0x22492dc
.word Function_22440c0+1 @ =0x22440c1, 0x22492e0
.word Function_22440f8+1 @ =0x22440f9, 0x22492e4
.word Function_2244138+1 @ =0x2244139, 0x22492e8
.word Function_22441bc+1 @ =0x22441bd, 0x22492ec
.word Function_22441dc+1 @ =0x22441dd, 0x22492f0
.word Function_2244228+1 @ =0x2244229, 0x22492f4
.word Function_2244284+1 @ =0x2244285, 0x22492f8
.word Function_22442a4+1 @ =0x22442a5, 0x22492fc
.word Function_2244308+1 @ =0x2244309, 0x2249300
.word Function_2244388+1 @ =0x2244389, 0x2249304
.word Function_224439c+1 @ =0x224439d, 0x2249308
.word Function_22443b0+1 @ =0x22443b1, 0x224930c
.word Function_2244038+1 @ =0x2244039, 0x2249310
.word Function_22443ec+1 @ =0x22443ed, 0x2249314
.word Function_22440c0+1 @ =0x22440c1, 0x2249318
.word Function_22440f8+1 @ =0x22440f9, 0x224931c
.word Function_2244138+1 @ =0x2244139, 0x2249320
.word Function_22441bc+1 @ =0x22441bd, 0x2249324
.word Function_22441dc+1 @ =0x22441dd, 0x2249328
.word Function_2244228+1 @ =0x2244229, 0x224932c
.word Function_2244284+1 @ =0x2244285, 0x2249330
.word Function_22442a4+1 @ =0x22442a5, 0x2249334
.word Function_224445c+1 @ =0x224445d, 0x2249338
.word Function_2244470+1 @ =0x2244471, 0x224933c
.word Function_2244488+1 @ =0x2244489, 0x2249340
.word Function_22444a8+1 @ =0x22444a9, 0x2249344
.word Function_22444d0+1 @ =0x22444d1, 0x2249348
.word Function_22444f8+1 @ =0x22444f9, 0x224934c
.word Function_2244518+1 @ =0x2244519, 0x2249350
.word Function_2244548+1 @ =0x2244549, 0x2249354
.word Function_22445ec+1 @ =0x22445ed, 0x2249358
.word Function_2244634+1 @ =0x2244635, 0x224935c
.word Function_2244388+1 @ =0x2244389, 0x2249360
.word Function_224439c+1 @ =0x224439d, 0x2249364
.word Function_22443b0+1 @ =0x22443b1, 0x2249368

.incbin "./baserom/overlay/overlay_0006.bin", 0xb22c, 0x22494b0 - 0x224936c


Unknown_22494b0:
.word Function_2246a30+1 @ =0x2246a31, 0x22494b0
.word Function_2246a4c+1 @ =0x2246a4d, 0x22494b4
.word Function_2246a38+1 @ =0x2246a39, 0x22494b8
.word Function_2246a60+1 @ =0x2246a61, 0x22494bc
.word Function_2246a74+1 @ =0x2246a75, 0x22494c0
.word Function_2246a88+1 @ =0x2246a89, 0x22494c4
.word Function_2246a9c+1 @ =0x2246a9d, 0x22494c8
.word Function_2246ab0+1 @ =0x2246ab1, 0x22494cc
.word Function_2246ac8+1 @ =0x2246ac9, 0x22494d0
.word Function_2246ad8+1 @ =0x2246ad9, 0x22494d4
.word Function_2246ae8+1 @ =0x2246ae9, 0x22494d8
.word Function_2246a34+1 @ =0x2246a35, 0x22494dc


.incbin "./baserom/overlay/overlay_0006.bin", 0xb3a0, 0x224980c - 0x22494e0


Unknown_224980c:
.word Function_224825c+1 @ =0x224825d, 0x224980c
.word Function_22482bc+1 @ =0x22482bd, 0x2249810
.word Function_22482cc+1 @ =0x22482cd, 0x2249814
.word Function_2248300+1 @ =0x2248301, 0x2249818

.incbin "./baserom/overlay/overlay_0006.bin", 0xb6dc, 0x2249824 - 0x224981c


Unknown_2249824:
.word Function_22487f8+1 @ =0x22487f9, 0x2249824
.word Function_224889c+1 @ =0x224889d, 0x2249828
.word Function_22488d8+1 @ =0x22488d9, 0x224982c
.word Function_2248914+1 @ =0x2248915, 0x2249830
.word Function_2248320+1 @ =0x2248321, 0x2249834
.word Function_2248478+1 @ =0x2248479, 0x2249838
.word Function_2248478+1 @ =0x2248479, 0x224983c
.word Function_224830c+1 @ =0x224830d, 0x2249840
.word Function_2248450+1 @ =0x2248451, 0x2249844
.word Function_2248464+1 @ =0x2248465, 0x2249848
.word Function_2248328+1 @ =0x2248329, 0x224984c
.word Function_2248480+1 @ =0x2248481, 0x2249850
.word Function_2248480+1 @ =0x2248481, 0x2249854
@ 0x2249858


.incbin "./baserom/overlay/overlay_0006.bin", 0xb718, 0x2249940 - 0x2249858



@end 0x2249940

