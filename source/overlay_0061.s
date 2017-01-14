

.section .iwram61, "ax"


.thumb
Function_222ae60: @ 222ae60 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r0, r1
	mov     r1, r4
	bl      Function_202a75c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x5c
	bl      Function_202486c
	add     r4, #0x5c
	strh    r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x222ae7e


.align 2, 0
.thumb
Function_222ae80: @ 222ae80 :thumb
	ldr     r3, [pc, #0x0] @ 0x222ae84, (=0x202a825)
	bx      r3
@ 0x222ae84

.word 0x202a825 @ 0x222ae84



.thumb
Function_222ae88: @ 222ae88 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r2, #0x67
	mov     r5, r1
	mov     r7, r3
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	ldr     r1, [sp, #0x28]
	mov     r0, #0x3c
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2079af4
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x14
	bl      Function_2023df0
	mov     r0, r4
	bl      Function_20237bc
	mov     r4, #0x0
	str     r7, [sp, #0xc]
	str     r7, [sp, #0x8]
branch_222aeca: @ 222aeca :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_2079c08
	ldr     r1, [sp, #0xc]
	mov     r2, r4
	strh    r0, [r1, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2079c08
	ldr     r1, [sp, #0x8]
	mov     r2, r4
	str     r0, [r1, #0x64]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x7
	bl      Function_2079c08
	ldr     r1, [sp, #0x8]
	mov     r2, r4
	add     r1, #0xdc
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0xae
	bl      Function_2079c08
	ldr     r1, [pc, #0x64] @ 0x222af80, (=0x1ee)
	cmp     r0, r1
	bne     branch_222af30
	mov     r0, r1
	sub     r0, #0x9a
	ldr     r1, [r7, r0]
	mov     r0, #0x1
	lsl     r0, r4
	orr     r1, r0
	mov     r0, #0x55
	lsl     r0, r0, #2
	str     r1, [r7, r0]
branch_222af30: @ 222af30 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	mov     r3, #0x70
	bl      Function_2079c08
	mov     r1, #0x56
	add     r2, r7, r4
	lsl     r1, r1, #2
	strb    r0, [r2, r1]
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x8]
	cmp     r4, #0x1e
	blt     branch_222aeca
	mov     r0, r5
	mov     r1, r6
	bl      Function_2079aa8
	ldr     r2, [pc, #0x20] @ 0x222af84, (=0x176)
	mov     r1, #0x0
	strb    r0, [r7, r2]
	add     r0, r2, #0x1
	strb    r1, [r7, r0]
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	add     r2, #0x22
	bl      Function_202486c
	mov     r1, #0x66
	lsl     r1, r1, #2
	strh    r0, [r7, r1]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222af80

.word 0x1ee @ 0x222af80
.word 0x176 @ 0x222af84



.thumb
Function_222af88: @ 222af88 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x222afa0, (=0x177)
	mov     r4, r1
	strb    r2, [r4, r3]
	add     r3, #0x21
	mov     r2, r3
	bl      Function_202486c
	mov     r1, #0x66
	lsl     r1, r1, #2
	strh    r0, [r4, r1]
	pop     {r4,pc}
@ 0x222afa0

.word 0x177 @ 0x222afa0



.thumb
Function_222afa4: @ 222afa4 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x80
	blx     MI_CpuFill8
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x80
	blx     MI_CpuCopy8
	pop     {r3-r5,pc}
@ 0x222afc0


.thumb
Function_222afc0: @ 222afc0 :thumb
	ldr     r3, [pc, #0x4] @ 0x222afc8, (=MI_CpuCopy8)
	mov     r2, #0x80
	bx      r3
@ 0x222afc6

.align 2
.word MI_CpuCopy8 @ 0x222afc8



.thumb
Function_222afcc: @ 222afcc :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x8
	blx     MI_CpuFill8
	ldrb    r0, [r5, #0x19]
	mov     r1, #0x1
	strb    r0, [r4, #0x0]
	ldrb    r0, [r5, #0x1a]
	strb    r0, [r4, #0x1]
	ldrb    r0, [r5, #0x15]
	strb    r0, [r4, #0x2]
	ldrb    r0, [r5, #0x16]
	strb    r0, [r4, #0x3]
	ldrh    r0, [r5, #0x1c]
	strh    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x6]
	bic     r0, r1
	ldrb    r1, [r5, #0x1b]
	lsl     r1, r1, #31
	lsr     r2, r1, #31
	mov     r1, #0x1
	and     r1, r2
	orr     r0, r1
	strb    r0, [r4, #0x6]
	pop     {r3-r5,pc}
@ 0x222b006


.align 2, 0
.thumb
Function_222b008: @ 222b008 :thumb
	push    {r4-r6,lr}
	ldr     r2, [pc, #0xd8] @ 0x222b0e4, (=0x414)
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, #0x51
	mov     r3, r4
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [r4, #0x8]
	add     r0, #0xc
	str     r1, [r5, #0x0]
	add     r3, #0xc
	add     r2, r5, r0
	mov     r6, #0x5
branch_222b02c: @ 222b02c :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_222b02c
	ldr     r0, [r3, #0x0]
	mov     r1, #0x53
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x3c]
	lsl     r1, r1, #2
	str     r0, [r5, #0x8]
	ldr     r0, [r4, #0x38]
	ldr     r2, [pc, #0xa4] @ 0x222b0e8, (=0x59dc)
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r5, r1]
	mov     r1, #0xfa
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r5, r1]
	blx     Function_222de8c
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      malloc
	mov     r1, #0xed
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	mvn     r0, r0
	blx     Function_222de8c
	mov     r2, r0
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r2, [pc, #0x6c] @ 0x222b0ec, (=0x2b7)
	ldr     r3, [r4, #0x4]
	mov     r0, #0x0
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r1, #0xfd
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	bl      Function_200b358
	mov     r1, #0xfe
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #8
	bl      Function_2023790
	mov     r1, #0xff
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	bl      Function_222bbf0
	mov     r1, #0x63
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0xc]
	mov     r0, #0xc
	strb    r0, [r5, #0x10]
	mov     r0, #0x2
	strb    r0, [r5, #0x11]
	mov     r0, r5
	add     r0, #0xc
	blx     Function_222dcdc
	cmp     r0, #0x1
	beq     branch_222b0d4
	bl      ErrorHandling
.thumb
branch_222b0d4: @ 222b0d4 :thumb
	mov     r1, #0xf1
	mov     r0, #0x1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0xc
	str     r0, [r5, r1]
	pop     {r4-r6,pc}
@ 0x222b0e2


.align 2


.word 0x414 @ 0x222b0e4
.word 0x59dc @ 0x222b0e8
.word 0x2b7 @ 0x222b0ec
.thumb
Function_222b0f0: @ 222b0f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_222dcfc
	mov     r0, #0xf1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r0, #0x38
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0xfe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	mov     r0, #0xfd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0xed
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	bl      Function_222bc40
	mov     r0, #0x63
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	pop     {r4,pc}
@ 0x222b136


.align 2, 0


.thumb
Function_222b138: @ 222b138 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_222dcfc
	mov     r0, #0xf1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b14c

.thumb
Function_222b14c: @ 222b14c :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     0x21d76e8
	blx     0x21d7db0
	bl      Function_203848c
	mov     r0, #0xf2
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b168

.thumb
Function_222b168: @ 222b168 :thumb
	push    {r4,lr}
	mov     r1, #0x3e
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	neg     r0, r0
	bl      0x21d1f3c
	mov     r2, #0x3e
	lsl     r2, r2, #4
	ldr     r2, [r4, r2]
	mov     r1, r0
	mov     r0, r4
	neg     r2, r2
	bl      Function_222bb60
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b190

.thumb
Function_222b190: @ 222b190 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x1c] @ 0x222b1b0, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_222b1a2
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_222b1ac
.thumb
branch_222b1a2: @ 222b1a2 :thumb
	mov     r1, #0x0
	bl      Function_222bb54
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222b1ac

.thumb
branch_222b1ac: @ 222b1ac :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222b1b0

.word 0x21bf67c @ 0x222b1b0
.thumb
Function_222b1b4: @ 222b1b4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b1c8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222b1c8

.thumb
branch_222b1c8: @ 222b1c8 :thumb
	mov     r2, #0x19
	lsl     r2, r2, #4
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	add     r2, r5, r2
	bl      Function_222afa4
	mov     r2, #0x21
	lsl     r2, r2, #4
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	add     r2, r5, r2
	bl      Function_222ae60
	ldr     r0, [pc, #0xc] @ 0x222b1f4, (=0x411)
	mov     r1, #0x3c
	strb    r1, [r5, r0]
	ldr     r1, [pc, #0xc] @ 0x222b1f8, (=0x4e20)
	sub     r0, #0x29
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222b1f4

.word 0x411 @ 0x222b1f4
.word 0x4e20 @ 0x222b1f8
.thumb
Function_222b1fc: @ 222b1fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b20e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222b20e

.thumb
branch_222b20e: @ 222b20e :thumb
	mov     r0, #0xeb
	lsl     r0, r0, #2
	strh    r4, [r5, r0]
	ldr     r1, [pc, #0x8] @ 0x222b220, (=0x4e21)
	add     r0, #0x3c
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222b21e


.align 2


.word 0x4e21 @ 0x222b220
.thumb
Function_222b224: @ 222b224 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b23a
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b23a

.thumb
branch_222b23a: @ 222b23a :thumb
	mov     r0, #0xeb
	lsl     r0, r0, #2
	strb    r4, [r5, r0]
	mov     r2, #0x19
	lsl     r2, r2, #4
	ldr     r1, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	add     r2, r5, r2
	bl      Function_222afa4
	mov     r3, #0x51
	lsl     r3, r3, #2
	ldr     r0, [r5, r3]
	add     r3, #0xcc
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x18]
	mov     r1, r7
	add     r3, r5, r3
	bl      Function_222ae88
	mov     r1, #0x21
	lsl     r1, r1, #4
	ldr     r0, [r5, #0x0]
	add     r1, r5, r1
	mov     r2, r4
	bl      Function_222af88
	ldr     r0, [pc, #0xc] @ 0x222b288, (=0x411)
	mov     r1, #0x3c
	strb    r1, [r5, r0]
	ldr     r1, [pc, #0xc] @ 0x222b28c, (=0x5208)
	sub     r0, #0x29
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b288

.word 0x411 @ 0x222b288
.word 0x5208 @ 0x222b28c
.thumb
Function_222b290: @ 222b290 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b2a2
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222b2a2

.thumb
branch_222b2a2: @ 222b2a2 :thumb
	mov     r0, #0xeb
	lsl     r0, r0, #2
	strb    r4, [r5, r0]
	ldr     r1, [pc, #0x8] @ 0x222b2b4, (=0x5209)
	add     r0, #0x3c
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222b2b2


.align 2


.word 0x5209 @ 0x222b2b4
.thumb
Function_222b2b8: @ 222b2b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b2c8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222b2c8

.thumb
branch_222b2c8: @ 222b2c8 :thumb
	mov     r0, #0xfa
	ldr     r1, [pc, #0x8] @ 0x222b2d4, (=0x55f0)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b2d4

.word 0x55f0 @ 0x222b2d4
.thumb
Function_222b2d8: @ 222b2d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b2ec
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b2ec

.thumb
branch_222b2ec: @ 222b2ec :thumb
	ldr     r0, [r5, #0x0]
	bl      LoadPlayerDataAdress_26
	mov     r1, #0x66
	lsl     r1, r1, #2
	add     r1, r5, r1
	mov     r2, #0x4
	blx     MI_CpuCopy8
	mov     r2, #0x19
	lsl     r2, r2, #4
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	add     r2, r5, r2
	bl      Function_222afcc
	mov     r0, #0x67
	lsl     r0, r0, #2
	mov     r6, #0x0
	mov     r7, r5
	add     r1, r0, #0x4
.thumb
branch_222b316: @ 222b316 :thumb
	ldr     r3, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r3, [r7, r0]
	str     r2, [r7, r1]
	add     r4, #0x8
	add     r7, #0x8
	cmp     r6, #0x3
	blt     branch_222b316
	mov     r0, #0xfa
	ldr     r1, [pc, #0x8] @ 0x222b334, (=0x55f1)
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b334

.word 0x55f1 @ 0x222b334
.thumb
Function_222b338: @ 222b338 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b34a
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222b34a

.thumb
branch_222b34a: @ 222b34a :thumb
	bl      Function_202f1d4
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r0, [pc, #0x34] @ 0x222b388, (=0x1d4c)
	cmp     r1, r0
	beq     branch_222b35a
	bl      ErrorHandling
.thumb
branch_222b35a: @ 222b35a :thumb
	bl      Function_202f27c
	mov     r1, #0x19
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x0]
	bl      0x2248624
	bl      Function_202fde8
	mov     r1, r0
	mov     r0, r4
	mov     r2, #0x80
	blx     MI_CpuCopy8
	ldr     r0, [pc, #0x10] @ 0x222b38c, (=0x411)
	mov     r1, #0x3c
	strb    r1, [r5, r0]
	ldr     r1, [pc, #0x10] @ 0x222b390, (=0x59d8)
	sub     r0, #0x29
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222b388

.word 0x1d4c @ 0x222b388
.word 0x411 @ 0x222b38c
.word 0x59d8 @ 0x222b390
.thumb
Function_222b394: @ 222b394 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b3aa
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b3aa

.thumb
branch_222b3aa: @ 222b3aa :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r1, #0x19
	lsl     r1, r1, #4
	strh    r4, [r5, r1]
	add     r0, r1, #0x2
	strb    r6, [r5, r0]
	add     r0, r1, #0x3
	strb    r7, [r5, r0]
	add     r0, sp, #0x8
	ldrb    r2, [r0, #0x10]
	add     r0, r1, #0x4
	strb    r2, [r5, r0]
	mov     r0, r1
	sub     r0, #0x50
	add     r1, #0x8
	str     r0, [r5, r1]
	mov     r0, #0x3f
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	ldr     r1, [pc, #0x8] @ 0x222b3e8, (=0x59d9)
	sub     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b3e8

.word 0x59d9 @ 0x222b3e8
.thumb
Function_222b3ec: @ 222b3ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b3fc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222b3fc

.thumb
branch_222b3fc: @ 222b3fc :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r0, #0x19
	ldr     r1, [pc, #0x34] @ 0x222b444, (=0xffff)
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	mov     r1, #0xfe
	mov     r0, r1
	add     r0, #0x94
	strb    r1, [r4, r0]
	mov     r1, #0xff
	mov     r0, r1
	add     r0, #0x94
	strb    r1, [r4, r0]
	mov     r0, r1
	add     r0, #0x95
	strb    r1, [r4, r0]
	mov     r0, r1
	add     r0, #0x41
	add     r1, #0x99
	str     r0, [r4, r1]
	mov     r0, #0x3f
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x222b448, (=0x59d9)
	sub     r0, #0x8
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b442


.align 2


.word 0xffff @ 0x222b444
.word 0x59d9 @ 0x222b448
.thumb
Function_222b44c: @ 222b44c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b45c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222b45c

.thumb
branch_222b45c: @ 222b45c :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r0, #0x19
	ldr     r1, [pc, #0x30] @ 0x222b4a0, (=0xffff)
	lsl     r0, r0, #4
	strh    r1, [r4, r0]
	mov     r1, #0xff
	mov     r0, r1
	add     r0, #0x93
	strb    r1, [r4, r0]
	mov     r0, r1
	add     r0, #0x94
	strb    r1, [r4, r0]
	mov     r0, r1
	add     r0, #0x95
	strb    r1, [r4, r0]
	mov     r0, r1
	add     r0, #0x41
	add     r1, #0x99
	str     r0, [r4, r1]
	mov     r0, #0x3f
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x222b4a4, (=0x59d9)
	sub     r0, #0x8
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b4a0

.word 0xffff @ 0x222b4a0
.word 0x59d9 @ 0x222b4a4
.thumb
Function_222b4a8: @ 222b4a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b4b8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222b4b8

.thumb
branch_222b4b8: @ 222b4b8 :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x5
	lsl     r1, r1, #6
	mov     r0, r1
	add     r0, #0x50
	str     r1, [r4, r0]
	mov     r1, #0x3f
	mov     r0, #0x1
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [pc, #0x4] @ 0x222b4e0, (=0x59d9)
	sub     r1, #0x8
	str     r2, [r4, r1]
	pop     {r4,pc}
@ 0x222b4e0

.word 0x59d9 @ 0x222b4e0
.thumb
Function_222b4e4: @ 222b4e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b4f4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222b4f4

.thumb
branch_222b4f4: @ 222b4f4 :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x4
	blx     MI_CpuFill8
	mov     r1, #0x5
	lsl     r1, r1, #6
	mov     r0, r1
	add     r0, #0x50
	str     r1, [r4, r0]
	mov     r0, #0x3f
	mov     r1, #0x2
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x8] @ 0x222b520, (=0x59d9)
	sub     r0, #0x8
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b51e


.align 2


.word 0x59d9 @ 0x222b520
.thumb
Function_222b524: @ 222b524 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b538
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222b538

.thumb
branch_222b538: @ 222b538 :thumb
	mov     r1, #0xeb
	lsl     r1, r1, #2
	str     r4, [r5, r1]
	add     r0, r1, #0x4
	str     r6, [r5, r0]
	ldr     r0, [pc, #0x8] @ 0x222b54c, (=0x59da)
	add     r1, #0x3c
	str     r0, [r5, r1]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222b54c

.word 0x59da @ 0x222b54c
.thumb
Function_222b550: @ 222b550 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_222bbbc
	cmp     r0, #0x0
	bne     branch_222b564
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222b564

.thumb
branch_222b564: @ 222b564 :thumb
	mov     r1, #0xeb
	lsl     r1, r1, #2
	str     r4, [r5, r1]
	add     r0, r1, #0x4
	str     r6, [r5, r0]
	ldr     r0, [pc, #0x8] @ 0x222b578, (=0x59db)
	add     r1, #0x3c
	str     r0, [r5, r1]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222b578

.word 0x59db @ 0x222b578
.thumb
Function_222b57c: @ 222b57c :thumb
	push    {r4,lr}
	mov     r1, #0xf1
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_222b63a
	mov     r0, r1
	add     r0, #0x24
	ldr     r2, [r4, r0]
	ldr     r0, [pc, #0x138] @ 0x222b6cc, (=0x59dc)
	cmp     r2, r0
	beq     branch_222b5e8
	mov     r0, r1
	add     r0, #0x4d
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222b5ae
	mov     r0, r1
	add     r0, #0x4d
	ldrb    r0, [r4, r0]
	add     r1, #0x4d
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, r1]
	b       branch_222b5e8
@ 0x222b5ae

.thumb
branch_222b5ae: @ 222b5ae :thumb
	blx     Function_222dd08
	cmp     r0, #0x9
	bhi     branch_222b5e8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222b5c2

Jumppoints_222b5c2:
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5d6 - Jumppoints_222b5c2 - 2
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5e8 - Jumppoints_222b5c2 - 2
.hword branch_222b5d6 - Jumppoints_222b5c2 - 2
.hword branch_222b5d6 - Jumppoints_222b5c2 - 2
.hword branch_222b5d6 - Jumppoints_222b5c2 - 2
.thumb
branch_222b5d6: @ 222b5d6 :thumb
	mov     r0, r4
	bl      Function_222b6d8
	cmp     r0, #0x1
	bne     branch_222b5e8
	mov     r0, #0xfa
	ldr     r1, [pc, #0xe8] @ 0x222b6cc, (=0x59dc)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222b5e8: @ 222b5e8 :thumb
	mov     r0, r4
	bl      Function_222b860
	ldr     r1, [pc, #0xe0] @ 0x222b6d0, (=0x40c)
	ldr     r2, [r4, r1]
	cmp     r2, #0x0
	beq     branch_222b63a
	sub     r1, #0xc
	mov     r0, r4
	add     r1, r4, r1
	blx     r2
	cmp     r0, #0x1
	bne     branch_222b63a
	ldr     r0, [pc, #0xcc] @ 0x222b6d0, (=0x40c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	sub     r0, #0xc
	ldr     r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_222b624
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r0, [r4, r1]
	add     r1, #0x2c
	add     r1, r4, r1
	blx     r2
	mov     r0, #0x1
	mov     r1, #0x0
	lsl     r0, r0, #10
	str     r1, [r4, r0]
.thumb
branch_222b624: @ 222b624 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #10
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0x10
	blx     MI_CpuFill8
	mov     r0, #0xfb
	ldr     r1, [pc, #0x94] @ 0x222b6cc, (=0x59dc)
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222b63a: @ 222b63a :thumb
	mov     r3, #0xef
	lsl     r3, r3, #2
	ldr     r0, [r4, r3]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x90] @ 0x222b6d4, (=0x222e480)
	ldr     r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_222b6c6
	mov     r1, r3
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r4, r3]
	add     r1, #0x10
	lsl     r3, r3, #2
	ldr     r2, [r2, r3]
	mov     r0, r4
	add     r1, r4, r1
	blx     r2
	cmp     r0, #0x0
	beq     branch_222b6c6
	cmp     r0, #0x1
	beq     branch_222b66a
	cmp     r0, #0x2
	beq     branch_222b6b0
	b       branch_222b6c6
@ 0x222b66a

.thumb
branch_222b66a: @ 222b66a :thumb
	mov     r0, #0xf3
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	mov     r0, #0xf
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	mov     r2, #0xc
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	add     r0, #0xc
	add     r0, r4, r0
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r1, #0xef
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	lsl     r2, r0, #2
	ldr     r0, [pc, #0x3c] @ 0x222b6d4, (=0x222e480)
	ldr     r2, [r0, r2]
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	cmp     r0, #0x0
	bne     branch_222b6c6
	mov     r2, #0x0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	str     r2, [r4, r1]
	b       branch_222b6c6
@ 0x222b6b0

.thumb
branch_222b6b0: @ 222b6b0 :thumb
	mov     r0, #0xf3
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x0
	mov     r2, #0xc
	blx     MI_CpuFill8
	mov     r0, #0xf
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_222b6c6: @ 222b6c6 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b6ca


.align 2


.word 0x59dc @ 0x222b6cc
.word 0x40c @ 0x222b6d0
.word 0x222e480 @ 0x222b6d4
.thumb
Function_222b6d8: @ 222b6d8 :thumb
	push    {r3-r5,lr}
	mov     r3, #0xfa
	mov     r5, r0
	lsl     r3, r3, #2
	ldr     r1, [r5, r3]
	ldr     r2, [pc, #0x16c] @ 0x222b850, (=0x55f0)
	mov     r4, #0x0
	cmp     r1, r2
	bgt     branch_222b710
	bge     branch_222b78a
	ldr     r0, [pc, #0x164] @ 0x222b854, (=0x5208)
	cmp     r1, r0
	bgt     branch_222b708
	bge     branch_222b760
	ldr     r2, [pc, #0x160] @ 0x222b858, (=0x4e21)
	cmp     r1, r2
	bgt     branch_222b706
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r1, r0
	blt     branch_222b706
	beq     branch_222b73c
	cmp     r1, r2
	beq     branch_222b74e
.thumb
branch_222b706: @ 222b706 :thumb
	b       branch_222b838
@ 0x222b708

.thumb
branch_222b708: @ 222b708 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	beq     branch_222b778
	b       branch_222b838
@ 0x222b710

.thumb
branch_222b710: @ 222b710 :thumb
	ldr     r0, [pc, #0x148] @ 0x222b85c, (=0x59d8)
	cmp     r1, r0
	bgt     branch_222b720
	bge     branch_222b7a8
	add     r0, r2, #0x1
	cmp     r1, r0
	beq     branch_222b796
	b       branch_222b838
@ 0x222b720

.thumb
branch_222b720: @ 222b720 :thumb
	add     r2, r0, #0x3
	cmp     r1, r2
	bgt     branch_222b73a
	add     r2, r0, #0x1
	cmp     r1, r2
	blt     branch_222b73a
	beq     branch_222b7ba
	add     r2, r0, #0x2
	cmp     r1, r2
	beq     branch_222b804
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r1, r0
	beq     branch_222b820
.thumb
branch_222b73a: @ 222b73a :thumb
	b       branch_222b838
@ 0x222b73c

.thumb
branch_222b73c: @ 222b73c :thumb
	mov     r0, #0x19
	sub     r3, #0x34
	lsl     r0, r0, #4
	ldr     r1, [r5, r3]
	add     r0, r5, r0
	blx     Function_222dd30
	mov     r4, r0
	b       branch_222b83c
@ 0x222b74e

.thumb
branch_222b74e: @ 222b74e :thumb
	mov     r0, r3
	sub     r0, #0x3c
	sub     r3, #0x34
	ldrh    r0, [r5, r0]
	ldr     r1, [r5, r3]
	blx     Function_222dd8c
	mov     r4, r0
	b       branch_222b83c
@ 0x222b760

.thumb
branch_222b760: @ 222b760 :thumb
	mov     r0, r3
	sub     r0, #0x3c
	mov     r1, #0x19
	sub     r3, #0x34
	lsl     r1, r1, #4
	ldrb    r0, [r5, r0]
	ldr     r2, [r5, r3]
	add     r1, r5, r1
	blx     Function_222ddcc
	mov     r4, r0
	b       branch_222b83c
@ 0x222b778

.thumb
branch_222b778: @ 222b778 :thumb
	mov     r0, r3
	sub     r0, #0x3c
	sub     r3, #0x34
	ldrb    r0, [r5, r0]
	ldr     r1, [r5, r3]
	blx     Function_222de34
	mov     r4, r0
	b       branch_222b83c
@ 0x222b78a

.thumb
branch_222b78a: @ 222b78a :thumb
	sub     r3, #0x34
	ldr     r0, [r5, r3]
	blx     Function_222de98
	mov     r4, r0
	b       branch_222b83c
@ 0x222b796

.thumb
branch_222b796: @ 222b796 :thumb
	mov     r0, #0x19
	sub     r3, #0x34
	lsl     r0, r0, #4
	ldr     r1, [r5, r3]
	add     r0, r5, r0
	blx     Function_222deb8
	mov     r4, r0
	b       branch_222b83c
@ 0x222b7a8

.thumb
branch_222b7a8: @ 222b7a8 :thumb
	mov     r0, #0x19
	lsl     r0, r0, #4
	sub     r3, #0x34
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r3]
	blx     Function_222df08
	mov     r4, r0
	b       branch_222b83c
@ 0x222b7ba

.thumb
branch_222b7ba: @ 222b7ba :thumb
	mov     r0, r3
	add     r0, #0x8
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_222b7ce
	cmp     r0, #0x1
	beq     branch_222b7e0
	cmp     r0, #0x2
	beq     branch_222b7f2
	b       branch_222b83c
@ 0x222b7ce

.thumb
branch_222b7ce: @ 222b7ce :thumb
	mov     r0, #0x19
	sub     r3, #0x34
	lsl     r0, r0, #4
	ldr     r1, [r5, r3]
	add     r0, r5, r0
	blx     Function_222df60
	mov     r4, r0
	b       branch_222b83c
@ 0x222b7e0

.thumb
branch_222b7e0: @ 222b7e0 :thumb
	mov     r0, #0x19
	sub     r3, #0x34
	lsl     r0, r0, #4
	ldr     r1, [r5, r3]
	add     r0, r5, r0
	blx     Function_222dfa8
	mov     r4, r0
	b       branch_222b83c
@ 0x222b7f2

.thumb
branch_222b7f2: @ 222b7f2 :thumb
	mov     r0, #0x19
	sub     r3, #0x34
	lsl     r0, r0, #4
	ldr     r1, [r5, r3]
	add     r0, r5, r0
	blx     Function_222e000
	mov     r4, r0
	b       branch_222b83c
@ 0x222b804

.thumb
branch_222b804: @ 222b804 :thumb
	mov     r0, r3
	mov     r1, r3
	sub     r0, #0x3c
	sub     r1, #0x38
	sub     r3, #0x34
	mov     r2, #0x5
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r3, [r5, r3]
	lsl     r2, r2, #6
	blx     Function_222e058
	mov     r4, r0
	b       branch_222b83c
@ 0x222b820

.thumb
branch_222b820: @ 222b820 :thumb
	mov     r0, r3
	mov     r1, r3
	sub     r0, #0x3c
	sub     r1, #0x38
	sub     r3, #0x34
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r3]
	blx     Function_222e08c
	mov     r4, r0
	b       branch_222b83c
@ 0x222b838

.thumb
branch_222b838: @ 222b838 :thumb
	bl      ErrorHandling
.thumb
branch_222b83c: @ 222b83c :thumb
	cmp     r4, #0x1
	bne     branch_222b84a
	mov     r0, #0xfa
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_222b84a: @ 222b84a :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222b84e


.align 2


.word 0x55f0 @ 0x222b850
.word 0x5208 @ 0x222b854
.word 0x4e21 @ 0x222b858
.word 0x59d8 @ 0x222b85c
.thumb
Function_222b860: @ 222b860 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xfb
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	ldr     r0, [pc, #0xa4] @ 0x222b910, (=0x59dc)
	cmp     r1, r0
	bne     branch_222b874
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b874

.thumb
branch_222b874: @ 222b874 :thumb
	blx     Function_222dd08
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r2, [r4, r1]
	ldr     r0, [r4, r0]
	cmp     r2, r0
	beq     branch_222b90a
	cmp     r2, #0x9
	bhi     branch_222b900
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222b898

Jumppoints_222b898:
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b900 - Jumppoints_222b898 - 2
.hword branch_222b8ac - Jumppoints_222b898 - 2
.hword branch_222b8d0 - Jumppoints_222b898 - 2
.hword branch_222b8de - Jumppoints_222b898 - 2
.thumb
branch_222b8ac: @ 222b8ac :thumb
	mov     r0, r1
	mov     r3, #0x1
	add     r0, #0x38
	str     r3, [r4, r0]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x3c
	str     r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x7
	add     r0, #0x40
	str     r2, [r4, r0]
	add     r1, #0x34
	str     r3, [r4, r1]
	ldr     r1, [pc, #0x48] @ 0x222b914, (=0x222b95d)
	ldr     r0, [pc, #0x4c] @ 0x222b918, (=0x40c)
	str     r1, [r4, r0]
	b       branch_222b900
@ 0x222b8d0

.thumb
branch_222b8d0: @ 222b8d0 :thumb
	ldr     r1, [pc, #0x48] @ 0x222b91c, (=0x222b921)
	ldr     r0, [pc, #0x44] @ 0x222b918, (=0x40c)
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_222b960
	b       branch_222b900
@ 0x222b8de

.thumb
branch_222b8de: @ 222b8de :thumb
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x38
	str     r2, [r4, r0]
	add     r1, #0x3c
	str     r2, [r4, r1]
	blx     Function_222dd24
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	sub     r1, #0xc
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x18] @ 0x222b914, (=0x222b95d)
	ldr     r0, [pc, #0x18] @ 0x222b918, (=0x40c)
	str     r1, [r4, r0]
.thumb
branch_222b900: @ 222b900 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_222b90a: @ 222b90a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222b90e


.align 2


.word 0x59dc @ 0x222b910
.word Function_222b95c+1 @ =0x222b95d, 0x222b914
.word 0x40c @ 0x222b918
.word Function_222b920+1 @ =0x222b921, 0x222b91c
.thumb
Function_222b920: @ 222b920 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b924

.thumb
Function_222b924: @ 222b924 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b928

.thumb
Function_222b928: @ 222b928 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	blx     Function_222de80
	mov     r2, r0
	add     r0, r4, #0x6
	str     r0, [sp, #0x0]
	ldr     r1, [r2, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r2, [r2, #0x8]
	add     r3, r4, #0x4
	bl      0x2248658
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_222b94e
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222b94e

.thumb
branch_222b94e: @ 222b94e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222b952


.align 2, 0


.thumb
Function_222b954: @ 222b954 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b958

.thumb
Function_222b958: @ 222b958 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b95c

.thumb
Function_222b95c: @ 222b95c :thumb
	mov     r0, #0x1
	bx      lr
@ 0x222b960

.thumb
Function_222b960: @ 222b960 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0x1
	blx     Function_222de80
	mov     r4, r0
	blx     Function_222de74
	mov     r0, #0xfb
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldrh    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_222b980
	bl      ErrorHandling
.thumb
branch_222b980: @ 222b980 :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	ldrh    r1, [r4, #0x0]
	ldr     r0, [pc, #0x18c] @ 0x222bb18, (=0x5209)
	cmp     r1, r0
	bgt     branch_222b9b2
	bge     branch_222ba38
	ldr     r2, [pc, #0x188] @ 0x222bb1c, (=0x4e21)
	cmp     r1, r2
	bgt     branch_222b9aa
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r1, r0
	blt     branch_222b9a6
	beq     branch_222b9e8
	cmp     r1, r2
	beq     branch_222ba04
	b       branch_222baea
@ 0x222b9a6

.thumb
branch_222b9a6: @ 222b9a6 :thumb
	cmp     r1, #0x0
	b       branch_222baea
@ 0x222b9aa

.thumb
branch_222b9aa: @ 222b9aa :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	beq     branch_222ba1c
	b       branch_222baea
@ 0x222b9b2

.thumb
branch_222b9b2: @ 222b9b2 :thumb
	ldr     r0, [pc, #0x16c] @ 0x222bb20, (=0x55f1)
	cmp     r1, r0
	bgt     branch_222b9c2
	bge     branch_222ba68
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	beq     branch_222ba50
	b       branch_222baea
@ 0x222b9c2

.thumb
branch_222b9c2: @ 222b9c2 :thumb
	ldr     r0, [pc, #0x160] @ 0x222bb24, (=0x59d8)
	cmp     r1, r0
	bgt     branch_222b9cc
	beq     branch_222ba80
	b       branch_222baea
@ 0x222b9cc

.thumb
branch_222b9cc: @ 222b9cc :thumb
	add     r2, r0, #0x3
	cmp     r1, r2
	bgt     branch_222b9e6
	add     r2, r0, #0x1
	cmp     r1, r2
	blt     branch_222b9e6
	beq     branch_222baa4
	add     r2, r0, #0x2
	cmp     r1, r2
	beq     branch_222babc
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r1, r0
	beq     branch_222bad4
.thumb
branch_222b9e6: @ 222b9e6 :thumb
	b       branch_222baea
@ 0x222b9e8

.thumb
branch_222b9e8: @ 222b9e8 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bc4c
	mov     r6, r0
	ldr     r0, [pc, #0x134] @ 0x222bb28, (=0x154)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x134] @ 0x222bb2c, (=0x400)
	str     r1, [r5, r0]
	bne     branch_222baea
	ldr     r1, [pc, #0x130] @ 0x222bb30, (=0x222b955)
	add     r0, #0xc
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba04

.thumb
branch_222ba04: @ 222ba04 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bc70
	mov     r6, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba1c

.thumb
branch_222ba1c: @ 222ba1c :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bcd0
	mov     r6, r0
	ldr     r0, [pc, #0x10c] @ 0x222bb34, (=0x15c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x100] @ 0x222bb2c, (=0x400)
	str     r1, [r5, r0]
	bne     branch_222baea
	ldr     r1, [pc, #0x104] @ 0x222bb38, (=0x222b959)
	add     r0, #0xc
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba38

.thumb
branch_222ba38: @ 222ba38 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bcf8
	mov     r6, r0
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba50

.thumb
branch_222ba50: @ 222ba50 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bd64
	mov     r6, r0
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba68

.thumb
branch_222ba68: @ 222ba68 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bd88
	mov     r6, r0
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba80

.thumb
branch_222ba80: @ 222ba80 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bdc8
	mov     r6, r0
	ldr     r0, [pc, #0xb0] @ 0x222bb3c, (=0x16c)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x9c] @ 0x222bb2c, (=0x400)
	str     r1, [r5, r0]
	bne     branch_222ba9c
	ldr     r1, [pc, #0xa8] @ 0x222bb40, (=0x222b925)
	add     r0, #0xc
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222ba9c

.thumb
branch_222ba9c: @ 222ba9c :thumb
	ldr     r1, [pc, #0xa4] @ 0x222bb44, (=0x222b929)
	add     r0, #0xc
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222baa4

.thumb
branch_222baa4: @ 222baa4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222be00
	mov     r6, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222babc

.thumb
branch_222babc: @ 222babc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222beb8
	mov     r6, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
	b       branch_222baea
@ 0x222bad4

.thumb
branch_222bad4: @ 222bad4 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_222bf24
	mov     r6, r0
	mov     r0, #0x5e
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, r0]
.thumb
branch_222baea: @ 222baea :thumb
	cmp     r6, #0x0
	bne     branch_222bb0a
	mov     r0, #0x6
	mov     r1, #0x2
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	ldrh    r2, [r4, #0x0]
	add     r1, r0, #0x4
	str     r2, [r5, r1]
	mov     r1, r0
	ldrh    r2, [r4, #0x2]
	add     r1, #0x8
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r2, [r5, r1]
	mov     r1, #0x1
	b       branch_222bb10
@ 0x222bb0a

.thumb
branch_222bb0a: @ 222bb0a :thumb
	mov     r0, #0x5f
	mov     r1, #0x0
	lsl     r0, r0, #2
.thumb
branch_222bb10: @ 222bb10 :thumb
	str     r1, [r5, r0]
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x222bb16


.align 2


.word 0x5209 @ 0x222bb18
.word 0x4e21 @ 0x222bb1c
.word 0x55f1 @ 0x222bb20
.word 0x59d8 @ 0x222bb24
.word 0x154 @ 0x222bb28
.word 0x400 @ 0x222bb2c
.word Function_222b954+1 @ =0x222b955, 0x222bb30
.word 0x15c @ 0x222bb34
.word Function_222b958+1 @ =0x222b959, 0x222bb38
.word 0x16c @ 0x222bb3c
.word Function_222b924+1 @ =0x222b925, 0x222bb40
.word 0x222b929 @ 0x222bb44
.thumb
Function_222bb48: @ 222bb48 :thumb
	mov     r2, #0x5f
	lsl     r2, r2, #2
	add     r0, r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x222bb54

.thumb
Function_222bb54: @ 222bb54 :thumb
	push    {r3,lr}
	mov     r2, r0
	ldr     r0, [r2, #0x8]
	ldr     r2, [r2, #0x4]
	blx     r2
	pop     {r3,pc}
@ 0x222bb60

.thumb
Function_222bb60: @ 222bb60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x0
	mov     r5, r1
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_222bb72
	mov     r5, #0xb
.thumb
branch_222bb72: @ 222bb72 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xfe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	mov     r0, #0xfd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      Function_200b1ec
	mov     r1, #0xfe
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r2, r5
	bl      Function_200c388
	mov     r0, r5
	bl      Function_20237bc
	mov     r1, #0xff
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_222bb54
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222bbbc

.thumb
Function_222bbbc: @ 222bbbc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222bbe8
	cmp     r0, #0x0
	bne     branch_222bbe0
	mov     r0, #0xfa
	lsl     r0, r0, #2
	ldr     r2, [r4, r0]
	ldr     r1, [pc, #0x14] @ 0x222bbe4, (=0x59dc)
	cmp     r2, r1
	bne     branch_222bbe0
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, r1
	bne     branch_222bbe0
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222bbe0

.thumb
branch_222bbe0: @ 222bbe0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222bbe4

.word 0x59dc @ 0x222bbe4
.thumb
Function_222bbe8: @ 222bbe8 :thumb
	mov     r1, #0xef
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x222bbf0

.thumb
Function_222bbf0: @ 222bbf0 :thumb
	push    {r4-r6,lr}
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      malloc
	mov     r5, r0
	mov     r6, #0x2
	lsl     r6, r6, #12
	mov     r0, #0x0
	mov     r1, r5
	add     r2, r5, r6
	mov     r3, #0x1
	blx     Function_20c33b4
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r4
	blx     OS_SetArenaLo
	add     r2, r5, r6
	add     r4, #0x1f
	mov     r0, #0x1f
	bic     r4, r0
	add     r2, #0x1f
	bic     r2, r0
	mov     r0, #0x0
	mov     r1, r4
	blx     Function_20c3470
	mov     r1, r0
	ldr     r0, [pc, #0xc] @ 0x222bc3c, (=0x222e760)
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	blx     Function_20c3384
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x222bc3a


.align 2


.word 0x222e760 @ 0x222bc3c
.thumb
Function_222bc40: @ 222bc40 :thumb
	ldr     r3, [pc, #0x4] @ 0x222bc48, (=0x20c345c)
	mov     r0, #0x0
	bx      r3
@ 0x222bc46


.align 2


.word 0x20c345c @ 0x222bc48
.thumb
Function_222bc4c: @ 222bc4c :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x5
	bhi     branch_222bc6e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bc60

Jumppoints_222bc60:
.hword branch_222bc6c - Jumppoints_222bc60 - 2
.hword branch_222bc6e - Jumppoints_222bc60 - 2
.hword branch_222bc6e - Jumppoints_222bc60 - 2
.hword branch_222bc6e - Jumppoints_222bc60 - 2
.hword branch_222bc6e - Jumppoints_222bc60 - 2
.hword branch_222bc6e - Jumppoints_222bc60 - 2
.thumb
branch_222bc6c: @ 222bc6c :thumb
	mov     r0, #0x1
.thumb
branch_222bc6e: @ 222bc6e :thumb
	bx      lr
@ 0x222bc70

.thumb
Function_222bc70: @ 222bc70 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x3
	bhi     branch_222bc8e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bc84

Jumppoints_222bc84:
.hword branch_222bc8c - Jumppoints_222bc84 - 2
.hword branch_222bc8e - Jumppoints_222bc84 - 2
.hword branch_222bc8e - Jumppoints_222bc84 - 2
.hword branch_222bc8e - Jumppoints_222bc84 - 2
.thumb
branch_222bc8c: @ 222bc8c :thumb
	mov     r0, #0x1
.thumb
branch_222bc8e: @ 222bc8e :thumb
	bx      lr
@ 0x222bc90

.thumb
Function_222bc90: @ 222bc90 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	blx     Function_222de80
	add     r1, r0, #0x4
	ldr     r0, [r0, #0x4]
	cmp     r0, r4
	ble     branch_222bca4
	mov     r0, r4
.thumb
branch_222bca4: @ 222bca4 :thumb
	add     r3, r1, #0x4
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_222bcbc
	mov     r6, r5
.thumb
branch_222bcae: @ 222bcae :thumb
	mov     r1, r3
	add     r1, #0xc
	.hword  0x1c52 @ add r2, r2, #0x1
	stmia   r6!, {r1}
	add     r3, #0xec
	cmp     r2, r0
	blt     branch_222bcae
.thumb
branch_222bcbc: @ 222bcbc :thumb
	cmp     r2, r4
	bge     branch_222bcce
	lsl     r1, r2, #2
	add     r3, r5, r1
	mov     r1, #0x0
.thumb
branch_222bcc6: @ 222bcc6 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	stmia   r3!, {r1}
	cmp     r2, r4
	blt     branch_222bcc6
.thumb
branch_222bcce: @ 222bcce :thumb
	pop     {r4-r6,pc}
@ 0x222bcd0

.thumb
Function_222bcd0: @ 222bcd0 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x6
	bhi     branch_222bcf4
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bce4

Jumppoints_222bce4:
.hword branch_222bcf2 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.hword branch_222bcf4 - Jumppoints_222bce4 - 2
.thumb
branch_222bcf2: @ 222bcf2 :thumb
	mov     r0, #0x1
.thumb
branch_222bcf4: @ 222bcf4 :thumb
	bx      lr
@ 0x222bcf6


.align 2, 0


.thumb
Function_222bcf8: @ 222bcf8 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x3
	bhi     branch_222bd16
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bd0c

Jumppoints_222bd0c:
.hword branch_222bd14 - Jumppoints_222bd0c - 2
.hword branch_222bd16 - Jumppoints_222bd0c - 2
.hword branch_222bd16 - Jumppoints_222bd0c - 2
.hword branch_222bd16 - Jumppoints_222bd0c - 2
.thumb
branch_222bd14: @ 222bd14 :thumb
	mov     r0, #0x1
.thumb
branch_222bd16: @ 222bd16 :thumb
	bx      lr
@ 0x222bd18

.thumb
Function_222bd18: @ 222bd18 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r2
	blx     Function_222de80
	ldr     r4, [r0, #0x4]
	add     r7, r0, #0x4
	cmp     r4, r5
	ble     branch_222bd30
	mov     r4, r5
	bl      ErrorHandling
.thumb
branch_222bd30: @ 222bd30 :thumb
	add     r3, r7, #0x4
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_222bd4c
	mov     r0, #0x8b
	mov     r7, r6
	lsl     r0, r0, #2
.thumb
branch_222bd3e: @ 222bd3e :thumb
	mov     r1, r3
	add     r1, #0x10
	.hword  0x1c52 @ add r2, r2, #0x1
	stmia   r7!, {r1}
	add     r3, r3, r0
	cmp     r2, r4
	blt     branch_222bd3e
.thumb
branch_222bd4c: @ 222bd4c :thumb
	cmp     r2, r5
	bge     branch_222bd5e
	lsl     r0, r2, #2
	add     r1, r6, r0
	mov     r0, #0x0
.thumb
branch_222bd56: @ 222bd56 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	stmia   r1!, {r0}
	cmp     r2, r5
	blt     branch_222bd56
.thumb
branch_222bd5e: @ 222bd5e :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x222bd62


.align 2, 0


.thumb
Function_222bd64: @ 222bd64 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x0
	beq     branch_222bd74
	cmp     r1, #0x1
	beq     branch_222bd76
	cmp     r1, #0x2
	bx      lr
@ 0x222bd74

.thumb
branch_222bd74: @ 222bd74 :thumb
	mov     r0, #0x1
.thumb
branch_222bd76: @ 222bd76 :thumb
	bx      lr
@ 0x222bd78

.thumb
Function_222bd78: @ 222bd78 :thumb
	push    {r4,lr}
	mov     r4, r1
	blx     Function_222de80
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x222bd86


.align 2, 0


.thumb
Function_222bd88: @ 222bd88 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x5
	bhi     branch_222bdaa
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bd9c

Jumppoints_222bd9c:
.hword branch_222bda8 - Jumppoints_222bd9c - 2
.hword branch_222bdaa - Jumppoints_222bd9c - 2
.hword branch_222bdaa - Jumppoints_222bd9c - 2
.hword branch_222bdaa - Jumppoints_222bd9c - 2
.hword branch_222bdaa - Jumppoints_222bd9c - 2
.hword branch_222bdaa - Jumppoints_222bd9c - 2
.thumb
branch_222bda8: @ 222bda8 :thumb
	mov     r0, #0x1
.thumb
branch_222bdaa: @ 222bdaa :thumb
	bx      lr
@ 0x222bdac

.thumb
Function_222bdac: @ 222bdac :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r2
	blx     Function_222de80
	add     r1, r0, #0x4
	ldr     r0, [pc, #0x8] @ 0x222bdc4, (=0x558)
	str     r1, [r5, #0x0]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x222bdc2


.align 2


.word 0x558 @ 0x222bdc4
.thumb
Function_222bdc8: @ 222bdc8 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x7
	bhi     branch_222bdee
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bddc

Jumppoints_222bddc:
.hword branch_222bdec - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.hword branch_222bdee - Jumppoints_222bddc - 2
.thumb
branch_222bdec: @ 222bdec :thumb
	mov     r0, #0x1
.thumb
branch_222bdee: @ 222bdee :thumb
	bx      lr
@ 0x222bdf0

.thumb
Function_222bdf0: @ 222bdf0 :thumb
	push    {r3,lr}
	blx     Function_222de80
	ldr     r2, [r0, #0x4]
	ldr     r1, [r0, #0x8]
	mov     r0, r2
	pop     {r3,pc}
@ 0x222bdfe


.align 2, 0


.thumb
Function_222be00: @ 222be00 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x3
	bhi     branch_222be1e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222be14

Jumppoints_222be14:
.hword branch_222be1c - Jumppoints_222be14 - 2
.hword branch_222be1e - Jumppoints_222be14 - 2
.hword branch_222be1e - Jumppoints_222be14 - 2
.hword branch_222be1e - Jumppoints_222be14 - 2
.thumb
branch_222be1c: @ 222be1c :thumb
	mov     r0, #0x1
.thumb
branch_222be1e: @ 222be1e :thumb
	bx      lr
@ 0x222be20

.thumb
Function_222be20: @ 222be20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	blx     Function_222de80
	ldr     r1, [r0, #0x4]
	add     r4, r0, #0x4
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	ble     branch_222be40
	str     r0, [sp, #0xc]
	bl      ErrorHandling
.thumb
branch_222be40: @ 222be40 :thumb
	ldr     r0, [sp, #0xc]
	add     r5, r4, #0x4
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_222be9a
	ldr     r4, [sp, #0x4]
.thumb
branch_222be4c: @ 222be4c :thumb
	mov     r2, r5
	add     r2, #0xc
	mov     r3, r2
	str     r2, [r4, #0x0]
	add     r3, #0xd8
	ldr     r3, [r3, #0x0]
	ldr     r0, [r5, #0x8]
	mov     r12, r3
	mov     r3, r2
	add     r3, #0xdc
	ldr     r3, [r3, #0x0]
	mov     r7, r0
	eor     r7, r3
	ldr     r1, [r5, #0x4]
	mov     r3, r12
	eor     r3, r1
	orr     r3, r7
	beq     branch_222be8e
	mov     r3, r2
	add     r3, #0xd8
	str     r1, [r3, #0x0]
	add     r2, #0xdc
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	add     r1, #0x80
	mov     r2, #0x58
	bl      Function_202486c
	ldr     r1, [r4, #0x0]
	add     r1, #0xe0
	strh    r0, [r1, #0x0]
.thumb
branch_222be8e: @ 222be8e :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0xf0
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_222be4c
.thumb
branch_222be9a: @ 222be9a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r6, r0
	bge     branch_222beb2
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #2
	add     r2, r0, r1
	mov     r1, #0x0
.thumb
branch_222bea8: @ 222bea8 :thumb
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	stmia   r2!, {r1}
	cmp     r6, r0
	blt     branch_222bea8
.thumb
branch_222beb2: @ 222beb2 :thumb
	ldr     r0, [sp, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222beb8

.thumb
Function_222beb8: @ 222beb8 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x3
	bhi     branch_222bed6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222becc

Jumppoints_222becc:
.hword branch_222bed4 - Jumppoints_222becc - 2
.hword branch_222bed6 - Jumppoints_222becc - 2
.hword branch_222bed6 - Jumppoints_222becc - 2
.hword branch_222bed6 - Jumppoints_222becc - 2
.thumb
branch_222bed4: @ 222bed4 :thumb
	mov     r0, #0x1
.thumb
branch_222bed6: @ 222bed6 :thumb
	bx      lr
@ 0x222bed8

.thumb
Function_222bed8: @ 222bed8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	blx     Function_222de80
	mov     r4, r0
	add     r0, r4, #0x4
	add     r0, #0xc
	str     r0, [r5, #0x0]
	add     r0, r4, #0x4
	add     r0, #0xe4
	ldr     r1, [r0, #0x0]
	add     r0, r4, #0x4
	add     r0, #0xe8
	ldr     r3, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	ldr     r0, [r0, #0x0]
	eor     r1, r3
	eor     r0, r2
	orr     r0, r1
	beq     branch_222bf20
	add     r0, r4, #0x4
	add     r0, #0xe4
	str     r3, [r0, #0x0]
	add     r0, r4, #0x4
	add     r0, #0xe8
	str     r2, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	add     r1, #0x80
	mov     r2, #0x58
	bl      Function_202486c
	ldr     r1, [r5, #0x0]
	add     r1, #0xe0
	strh    r0, [r1, #0x0]
.thumb
branch_222bf20: @ 222bf20 :thumb
	ldr     r0, [r4, #0x8]
	pop     {r4-r6,pc}
@ 0x222bf24

.thumb
Function_222bf24: @ 222bf24 :thumb
	ldrh    r1, [r1, #0x2]
	mov     r0, #0x0
	cmp     r1, #0x3
	bhi     branch_222bf42
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222bf38

Jumppoints_222bf38:
.hword branch_222bf40 - Jumppoints_222bf38 - 2
.hword branch_222bf42 - Jumppoints_222bf38 - 2
.hword branch_222bf42 - Jumppoints_222bf38 - 2
.hword branch_222bf42 - Jumppoints_222bf38 - 2
.thumb
branch_222bf40: @ 222bf40 :thumb
	mov     r0, #0x1
.thumb
branch_222bf42: @ 222bf42 :thumb
	bx      lr
@ 0x222bf44

.thumb
Function_222bf44: @ 222bf44 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r1, #0x1
	lsl     r1, r1, #26
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x170] @ 0x222c0d8, (=0xffffe0ff)
	and     r0, r2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x170] @ 0x222c0dc, (=0x4001000)
	ldr     r3, [r0, #0x0]
	and     r2, r3
	str     r2, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	ldr     r2, [pc, #0x168] @ 0x222c0e0, (=0xffff1fff)
	and     r3, r2
	str     r3, [r1, #0x0]
	ldr     r3, [r0, #0x0]
	add     r1, #0x50
	and     r2, r3
	str     r2, [r0, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x0]
	add     r0, #0x50
	strh    r2, [r0, #0x0]
	mov     r2, #0x5
	mov     r0, #0x3
	mov     r1, #0x75
	lsl     r2, r2, #16
	bl      Function_2017fc8
	mov     r1, #0x3d
	mov     r0, r4
	lsl     r1, r1, #4
	mov     r2, #0x75
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	mov     r2, #0x3d
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r5, r0
	blx     MI_CpuFill8
	mov     r0, r4
	bl      LoadPtrToOverWorldDataIn18
	str     r0, [r5, #0x0]
	mov     r0, #0x75
	bl      Function_2018340
	str     r0, [r5, #0x4]
	mov     r0, #0x40
	mov     r1, #0x75
	bl      Function_201dbec
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	ldr     r0, [r5, #0x4]
	bl      Function_222c224
	bl      Function_201e3d8
	mov     r0, #0x4
	bl      Function_201e450
	mov     r0, #0xb
	mov     r1, #0x40
	mov     r2, #0x75
	bl      Function_200b368
	str     r0, [r5, #0x20]
	ldr     r2, [pc, #0xf8] @ 0x222c0e4, (=0x29f)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x75
	bl      Function_200b144
	str     r0, [r5, #0x24]
	ldr     r2, [pc, #0xec] @ 0x222c0e8, (=0x2a2)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x75
	bl      Function_200b144
	str     r0, [r5, #0x28]
	ldr     r2, [pc, #0xe4] @ 0x222c0ec, (=0x2b7)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x75
	bl      Function_200b144
	str     r0, [r5, #0x2c]
	mov     r0, #0xb4
	mov     r1, #0x75
	bl      Function_2023790
	str     r0, [r5, #0x34]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x75
	bl      Function_2023790
	str     r0, [r5, #0x3c]
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1f
	bl      Function_200b1ec
	str     r0, [r5, #0x38]
	mov     r0, r5
	bl      Function_222c3b0
	mov     r0, r5
	bl      Function_222c664
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x75
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	ldr     r0, [pc, #0x70] @ 0x222c0f0, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	ldr     r0, [pc, #0x58] @ 0x222c0f4, (=0x222c1fd)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	ldr     r1, [r5, #0x0]
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	beq     branch_222c0ba
	bl      Function_2039734
	mov     r0, r5
	mov     r1, #0xd
	mov     r2, #0x8
	bl      Function_222c920
	b       branch_222c0cc
@ 0x222c0ba

.thumb
branch_222c0ba: @ 222c0ba :thumb
	ldr     r0, [r1, #0x0]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_222c0c8
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	b       branch_222c0cc
@ 0x222c0c8

.thumb
branch_222c0c8: @ 222c0c8 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x8]
.thumb
branch_222c0cc: @ 222c0cc :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x7c]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x222c0d8

.word 0xffffe0ff @ 0x222c0d8
.word 0x4001000 @ 0x222c0dc
.word 0xffff1fff @ 0x222c0e0
.word 0x29f @ 0x222c0e4
.word 0x2a2 @ 0x222c0e8
.word 0x2b7 @ 0x222c0ec
.word 0x21bf6dc @ 0x222c0f0
.word 0x222c1fd @ 0x222c0f4
.thumb
Function_222c0f8: @ 222c0f8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_222c112
	cmp     r1, #0x1
	beq     branch_222c120
	cmp     r1, #0x2
	beq     branch_222c14c
	b       branch_222c158
@ 0x222c112

.thumb
branch_222c112: @ 222c112 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_222c158
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_222c158
@ 0x222c120

.thumb
branch_222c120: @ 222c120 :thumb
	ldr     r6, [r4, #0x8]
	ldr     r1, [pc, #0x38] @ 0x222c15c, (=0x222e600)
	lsl     r2, r6, #2
	ldr     r1, [r1, r2]
	blx     r1
	ldr     r1, [r4, #0x8]
	cmp     r6, r1
	beq     branch_222c142
	mov     r1, r4
	mov     r2, #0x0
	add     r1, #0x90
	str     r2, [r1, #0x0]
	mov     r1, r4
	add     r1, #0x98
	str     r2, [r1, #0x0]
	add     r4, #0x94
	str     r2, [r4, #0x0]
.thumb
branch_222c142: @ 222c142 :thumb
	cmp     r0, #0x1
	bne     branch_222c158
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_222c158
@ 0x222c14c

.thumb
branch_222c14c: @ 222c14c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_222c158
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222c158

.thumb
branch_222c158: @ 222c158 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222c15c

.word 0x222e600 @ 0x222c15c
.thumb
Function_222c160: @ 222c160 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222c184
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	str     r1, [r0, #0x0]
.thumb
branch_222c184: @ 222c184 :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_200b190
	ldr     r0, [r4, #0x28]
	bl      Function_200b190
	ldr     r0, [r4, #0x24]
	bl      Function_200b190
	ldr     r0, [r4, #0x20]
	bl      Function_200b3f0
	ldr     r0, [r4, #0x38]
	bl      Function_20237bc
	ldr     r0, [r4, #0x3c]
	bl      Function_20237bc
	ldr     r0, [r4, #0x34]
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_222c70c
	ldr     r0, [r4, #0x4]
	bl      free
	ldr     r0, [r4, #0x4]
	bl      Function_222c38c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201dc3c
	bl      Function_201e530
	mov     r0, #0x0
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	bl      Function_2039794
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x75
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222c1fa


.align 2, 0


.thumb
Function_222c1fc: @ 222c1fc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r0, [r4, #0x4]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x222c21c, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x222c220, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x222c21c

.word 0x27e0000 @ 0x222c21c
.word 0x3ff8 @ 0x222c220
.thumb
Function_222c224: @ 222c224 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xa8
	mov     r4, r0
	bl      Function_201ff00
	bl      Function_201ff68
	ldr     r5, [pc, #0x148] @ 0x222c37c, (=0x222e4b8)
	add     r3, sp, #0x80
	mov     r2, #0x5
.thumb
branch_222c238: @ 222c238 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222c238
	add     r0, sp, #0x80
	bl      Function_201fe94
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x62
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	mov     r1, #0x19
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x66
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	ldr     r5, [pc, #0x100] @ 0x222c380, (=0x222e4a8)
	add     r3, sp, #0x70
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	ldr     r5, [pc, #0xf0] @ 0x222c384, (=0x222e4e0)
	add     r3, sp, #0x38
	mov     r2, #0x7
.thumb
branch_222c298: @ 222c298 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222c298
	mov     r1, #0x0
	mov     r0, r4
	add     r2, sp, #0x38
	mov     r3, r1
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_2019184
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, r1
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r5, [pc, #0x8c] @ 0x222c388, (=0x222e518)
	add     r3, sp, #0x0
	mov     r2, #0x7
.thumb
branch_222c2fe: @ 222c2fe :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222c2fe
	mov     r0, r4
	mov     r1, #0x4
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x4
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x1c
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      Function_2019184
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x75
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x75
	bl      Function_2019690
	add     sp, #0xa8
	pop     {r3-r5,pc}
@ 0x222c37a


.align 2


.word 0x222e4b8 @ 0x222c37c
.word 0x222e4a8 @ 0x222c380
.word 0x222e4e0 @ 0x222c384
.word 0x222e518 @ 0x222c388
.thumb
Function_222c38c: @ 222c38c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x222c3b0

.thumb
Function_222c3b0: @ 222c3b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x10]
	ldr     r4, [r0, #0x4]
	mov     r0, #0x5c
	mov     r1, #0x75
	bl      LoadFromNARC_8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x75
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	str     r0, [sp, #0x2c]
	bl      Function_2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x75
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x75
	bl      Function_2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x75
	bl      Function_2002e98
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadPlayerDataAdress
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x75
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x75
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x75
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x75
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x75
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x75
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201975c
	ldr     r0, [sp, #0x10]
	mov     r2, #0xcb
	add     r0, #0xa4
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, #0x75
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x38]
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, #0xac
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x38]
	mov     r2, #0x4b
	ldr     r1, [sp, #0x10]
	lsl     r2, r2, #2
	add     r1, r1, r2
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	mov     r1, #0x4b
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	add     r0, #0xac
	str     r0, [sp, #0x14]
.thumb
branch_222c506: @ 222c506 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #5
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x30]
.thumb
branch_222c518: @ 222c518 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_222c522
	bl      ErrorHandling
.thumb
branch_222c522: @ 222c522 :thumb
	ldr     r0, [sp, #0x30]
	mov     r7, #0x1
	add     r6, r0, #0x2
	ldr     r0, [sp, #0x18]
	add     r4, r0, #0x2
	ldr     r0, [sp, #0x14]
	add     r5, r0, #0x2
	ldr     r0, [sp, #0x20]
	asr     r0, r0, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x34]
.thumb
branch_222c53a: @ 222c53a :thumb
	mov     r0, r6
	add     r0, #0xac
	ldrh    r0, [r0, #0x0]
	ldr     r3, [sp, #0x34]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      Function_200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_222c53a
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_222c586
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_222c518
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_222c518
@ 0x222c586

.thumb
branch_222c586: @ 222c586 :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_222c506
	mov     r1, #0x4b
	ldr     r0, [sp, #0x10]
	lsl     r1, r1, #2
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r0, [sp, #0x10]
	mov     r1, #0x1
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x18] @ 0x222c5cc, (=0x222c5d1)
	add     r1, #0xa4
	mov     r2, #0x14
	bl      AddTaskToTaskList2
	ldr     r1, [sp, #0x10]
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r1, [sp, #0x10]
	bl      Call_FS_CloseFile
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x222c5cc

.word 0x222c5d1 @ 0x222c5cc
.thumb
Function_222c5d0: @ 222c5d0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_222c658
	ldr     r0, [pc, #0x80] @ 0x222c65c, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_222c658
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	ldr     r0, [pc, #0x48] @ 0x222c660, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_222c63c
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_222c658
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x222c63c

.thumb
branch_222c63c: @ 222c63c :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_222c658
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_222c658: @ 222c658 :thumb
	pop     {r4,pc}
@ 0x222c65a


.align 2


.word 0x32b @ 0x222c65c
.word 0x32a @ 0x222c660
.thumb
Function_222c664: @ 222c664 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x4
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x64
	mov     r2, #0x0
	bl      Function_201a7e8
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x81
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x54
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_201a7e8
	mov     r0, r4
	add     r0, #0x54
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r3, #0x1
	ldr     r0, [pc, #0x40] @ 0x222c708, (=0xf0e00)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	ldr     r1, [r4, #0x38]
	add     r0, #0x54
	mov     r2, #0x0
	bl      Function_222c760
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x44
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	add     r4, #0x44
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x222c706


.align 2


.word 0xf0e00 @ 0x222c708
.thumb
Function_222c70c: @ 222c70c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x44
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x54
	bl      Function_201a8fc
	add     r4, #0x64
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x222c728

.thumb
Function_222c728: @ 222c728 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r3, #0x1
	beq     branch_222c736
	cmp     r3, #0x2
	beq     branch_222c74c
	b       branch_222c75a
@ 0x222c736

.thumb
branch_222c736: @ 222c736 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	b       branch_222c75a
@ 0x222c74c

.thumb
branch_222c74c: @ 222c74c :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r2, r1, r0
.thumb
branch_222c75a: @ 222c75a :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x222c75e


.align 2, 0


.thumb
Function_222c760: @ 222c760 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r3
	ldr     r3, [sp, #0x24]
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r6, r1
	bl      Function_222c728
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x222c794

.thumb
Function_222c794: @ 222c794 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r6, r1
	lsl     r0, r0, #8
	mov     r1, #0x75
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x2c]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200b1b8
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x3c]
	mov     r2, r4
	bl      Function_200c388
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x64
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x3c]
	add     r0, #0x64
	mov     r1, #0x1
	bl      Function_201d738
	mov     r0, #0xff
	str     r0, [r5, #0x40]
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222c7f6


.align 2, 0


.thumb
Function_222c7f8: @ 222c7f8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_222c80a
	mov     r4, #0xb
.thumb
branch_222c80a: @ 222c80a :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x20]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	mov     r0, r5
	add     r0, #0x44
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, r5
	mov     r1, r4
	bl      Function_222c794
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x222c832


.align 2, 0


.thumb
Function_222c834: @ 222c834 :thumb
	push    {r3,lr}
	cmp     r0, #0xff
	beq     branch_222c846
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_222c84a
.thumb
branch_222c846: @ 222c846 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222c84a

.thumb
branch_222c84a: @ 222c84a :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222c84e


.align 2, 0


.thumb
Function_222c850: @ 222c850 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222c86a
	mov     r0, r4
	add     r0, #0x44
	mov     r1, #0x1
	bl      Function_200e7fc
	add     r4, #0x88
	str     r0, [r4, #0x0]
.thumb
branch_222c86a: @ 222c86a :thumb
	pop     {r4,pc}
@ 0x222c86c

.thumb
Function_222c86c: @ 222c86c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222c882
	bl      Function_200eba0
	mov     r0, #0x0
	add     r4, #0x88
	str     r0, [r4, #0x0]
.thumb
branch_222c882: @ 222c882 :thumb
	pop     {r4,pc}
@ 0x222c884

.thumb
Function_222c884: @ 222c884 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x222c8b4, (=0x222e4a0)
	add     r4, sp, #0x4
	ldrh    r6, [r5, #0x0]
	add     r3, sp, #0x4
	strh    r6, [r4, #0x0]
	ldrh    r6, [r5, #0x2]
	strh    r6, [r4, #0x2]
	ldrh    r6, [r5, #0x4]
	ldrh    r5, [r5, #0x6]
	strh    r6, [r4, #0x4]
	strh    r5, [r4, #0x6]
	strb    r1, [r4, #0x2]
	strh    r2, [r4, #0x6]
	mov     r1, #0x75
	str     r1, [sp, #0x0]
	mov     r1, r3
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_2002100
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222c8b4

.word 0x222e4a0 @ 0x222c8b4
.thumb
Function_222c8b8: @ 222c8b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	bl      Function_200b1ec
	mov     r6, r0
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x34]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0x44
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r0, r5
	add     r0, #0x44
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r5
	ldr     r2, [r5, #0x34]
	add     r0, #0x44
	mov     r1, #0x1
	bl      Function_201d738
	str     r0, [r5, #0x40]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	cmp     r4, #0xff
	beq     branch_222c918
	cmp     r4, #0x0
	bne     branch_222c91c
.thumb
branch_222c918: @ 222c918 :thumb
	mov     r0, #0xff
	str     r0, [r5, #0x40]
.thumb
branch_222c91c: @ 222c91c :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x222c920

.thumb
Function_222c920: @ 222c920 :thumb
	str     r1, [r0, #0x8]
	str     r2, [r0, #0xc]
	bx      lr
@ 0x222c926


.align 2, 0


.thumb
Function_222c928: @ 222c928 :thumb
	push    {r3,lr}
	bl      0x21d1f3c
	cmp     r0, #0xb
	bhi     branch_222c95a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222c93e

Jumppoints_222c93e:
.hword branch_222c95a - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c95a - Jumppoints_222c93e - 2
.hword branch_222c95a - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.hword branch_222c956 - Jumppoints_222c93e - 2
.thumb
branch_222c956: @ 222c956 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222c95a

.thumb
branch_222c95a: @ 222c95a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222c95e


.align 2, 0


.thumb
Function_222c960: @ 222c960 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x1
	bne     branch_222c976
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x222c976

.thumb
branch_222c976: @ 222c976 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	bhi     branch_222ca14
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222c98c

Jumppoints_222c98c:
.hword branch_222c996 - Jumppoints_222c98c - 2
.hword branch_222c9a4 - Jumppoints_222c98c - 2
.hword branch_222c9c2 - Jumppoints_222c98c - 2
.hword branch_222c9e2 - Jumppoints_222c98c - 2
.hword branch_222ca10 - Jumppoints_222c98c - 2
.thumb
branch_222c996: @ 222c996 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca14
@ 0x222c9a4

.thumb
branch_222c9a4: @ 222c9a4 :thumb
	ldr     r0, [pc, #0x74] @ 0x222ca1c, (=0xf0f)
	mov     r2, #0x11
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_222c8b8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca14
@ 0x222c9c2

.thumb
branch_222c9c2: @ 222c9c2 :thumb
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_222c884
	mov     r1, r4
	add     r1, #0x84
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca14
@ 0x222c9e2

.thumb
branch_222c9e2: @ 222c9e2 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	mov     r1, #0x75
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_222ca14
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_222ca02
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	b       branch_222ca14
@ 0x222ca02

.thumb
branch_222ca02: @ 222ca02 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca14
@ 0x222ca10

.thumb
branch_222ca10: @ 222ca10 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_222ca14: @ 222ca14 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222ca1a


.align 2


.word 0xf0f @ 0x222ca1c
.thumb
Function_222ca20: @ 222ca20 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222ca38
	cmp     r0, #0x1
	beq     branch_222ca6a
	cmp     r0, #0x2
	beq     branch_222ca82
	b       branch_222ca9e
@ 0x222ca38

.thumb
branch_222ca38: @ 222ca38 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2038438
	bl      Function_2039734
	ldr     r0, [pc, #0x5c] @ 0x222caa4, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x28]
	mov     r0, r4
	mov     r3, r2
	bl      Function_222c8b8
	mov     r0, r4
	bl      Function_222c850
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca9e
@ 0x222ca6a

.thumb
branch_222ca6a: @ 222ca6a :thumb
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x0
	bne     branch_222ca9e
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ca9e
@ 0x222ca82

.thumb
branch_222ca82: @ 222ca82 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	add     r0, #0x14
	mov     r2, #0x1
	mov     r3, #0x14
	blx     0x21d78c8
	mov     r0, #0x2
	blx     0x21d792c
	blx     0x21d797c
	mov     r0, #0x2
	str     r0, [r4, #0x8]
.thumb
branch_222ca9e: @ 222ca9e :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222caa4

.word 0xf0f @ 0x222caa4
.thumb
Function_222caa8: @ 222caa8 :thumb
	push    {r4,lr}
	add     sp, #-0x48
	mov     r4, r0
	blx     0x21d7ae4
	blx     0x21d7a8c
	cmp     r0, #0x0
	beq     branch_222cb26
	blx     0x21d7bfc
	cmp     r0, #0x8
	bhi     branch_222cb06
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222cace

Jumppoints_222cace:
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cb1c - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.hword branch_222cae0 - Jumppoints_222cace - 2
.hword branch_222cb06 - Jumppoints_222cace - 2
.thumb
branch_222cae0: @ 222cae0 :thumb
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	blx     0x21d75f4
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x1c]
	blx     0x21d76e8
	blx     0x21d7db0
	mov     r0, r4
	bl      Function_222c86c
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	b       branch_222cb26
@ 0x222cb06

.thumb
branch_222cb06: @ 222cb06 :thumb
	add     r0, sp, #0x0
	blx     0x21d75d4
	mov     r0, r4
	bl      Function_222c86c
	mov     r0, #0xa
	str     r0, [r4, #0x8]
	sub     r0, #0xc
	str     r0, [r4, #0x10]
	b       branch_222cb26
@ 0x222cb1c

.thumb
branch_222cb1c: @ 222cb1c :thumb
	add     r0, sp, #0xc
	blx     0x21d7eb8
	mov     r0, #0x3
	str     r0, [r4, #0x8]
.thumb
branch_222cb26: @ 222cb26 :thumb
	mov     r0, #0x0
	add     sp, #0x48
	pop     {r4,pc}
@ 0x222cb2c

.thumb
Function_222cb2c: @ 222cb2c :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     0x21d81dc
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222cb3c

.thumb
Function_222cb3c: @ 222cb3c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	blx     0x21d82a0
	cmp     r0, #0x5
	bhi     branch_222cbe0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222cb56

Jumppoints_222cb56:
.hword branch_222cb68 - Jumppoints_222cb56 - 2
.hword branch_222cbe0 - Jumppoints_222cb56 - 2
.hword branch_222cbe0 - Jumppoints_222cb56 - 2
.hword branch_222cb62 - Jumppoints_222cb56 - 2
.hword branch_222cb68 - Jumppoints_222cb56 - 2
.hword branch_222cb68 - Jumppoints_222cb56 - 2
.thumb
branch_222cb62: @ 222cb62 :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	b       branch_222cbe0
@ 0x222cb68

.thumb
branch_222cb68: @ 222cb68 :thumb
	mov     r0, r4
	bl      Function_222c86c
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     0x21d75f4
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x18]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x1c]
	blx     0x21d76e8
	blx     0x21d7db0
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x7
	bhi     branch_222cbce
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222cb9e

Jumppoints_222cb9e:
.hword branch_222cbce - Jumppoints_222cb9e - 2
.hword branch_222cbae - Jumppoints_222cb9e - 2
.hword branch_222cbae - Jumppoints_222cb9e - 2
.hword branch_222cbc0 - Jumppoints_222cb9e - 2
.hword branch_222cbb2 - Jumppoints_222cb9e - 2
.hword branch_222cbca - Jumppoints_222cb9e - 2
.hword branch_222cbbc - Jumppoints_222cb9e - 2
.hword branch_222cbca - Jumppoints_222cb9e - 2
.thumb
branch_222cbae: @ 222cbae :thumb
	str     r0, [r4, #0x8]
	b       branch_222cbce
@ 0x222cbb2

.thumb
branch_222cbb2: @ 222cbb2 :thumb
	blx     0x21e55b0
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	b       branch_222cbce
@ 0x222cbbc

.thumb
branch_222cbbc: @ 222cbbc :thumb
	str     r0, [r4, #0x8]
	b       branch_222cbce
@ 0x222cbc0

.thumb
branch_222cbc0: @ 222cbc0 :thumb
	blx     0x21d8e8c
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	b       branch_222cbce
@ 0x222cbca

.thumb
branch_222cbca: @ 222cbca :thumb
	bl      Function_2038a0c
.thumb
branch_222cbce: @ 222cbce :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x222cbe8, (=0xffffb1e0)
	cmp     r1, r0
	bge     branch_222cbe0
	ldr     r0, [pc, #0x14] @ 0x222cbec, (=0xffff8ad1)
	cmp     r1, r0
	blt     branch_222cbe0
	mov     r0, #0x6
	str     r0, [r4, #0x8]
.thumb
branch_222cbe0: @ 222cbe0 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222cbe6

.align 2
.word 0xffffb1e0 @ 0x222cbe8
.word 0xffff8ad1 @ 0x222cbec



.thumb
Function_222cbf0: @ 222cbf0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_1d
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	bl      LoadVariableAreaAdress_0
	mov     r4, r0
	mov     r0, r6
	bl      Function_202ad28
	mov     r0, r4
	bl      Function_2025d74
	cmp     r0, #0x0
	bne     branch_222cc2a
	mov     r0, r6
	bl      Function_2039058
	mov     r1, r0
	mov     r0, r4
	bl      Function_2025d78
.thumb
branch_222cc2a: @ 222cc2a :thumb
	mov     r0, r4
	bl      Function_2025d74
	mov     r0, #0x9
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x7c]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222cc3e


.align 2, 0


.thumb
Function_222cc40: @ 222cc40 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	neg     r0, r0
	bl      0x21d1f3c
	ldr     r2, [r4, #0x18]
	mov     r1, r0
	mov     r0, r4
	neg     r2, r2
	bl      Function_222c7f8
	mov     r0, #0x7
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222cc62


.align 2, 0


.thumb
Function_222cc64: @ 222cc64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x222cca8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_222cc78
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_222cca2
.thumb
branch_222cc78: @ 222cc78 :thumb
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0x0
	bl      Function_200dc9c
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x90
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	neg     r0, r0
	bl      Function_222c928
	cmp     r0, #0x1
	bne     branch_222cc9e
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	b       branch_222cca2
@ 0x222cc9e

.thumb
branch_222cc9e: @ 222cc9e :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x8]
.thumb
branch_222cca2: @ 222cca2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222cca6


.align 2


.word 0x21bf67c @ 0x222cca8
.thumb
Function_222ccac: @ 222ccac :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x9
	beq     branch_222ccbc
	bl      Function_203848c
.thumb
branch_222ccbc: @ 222ccbc :thumb
	bl      Function_2039794
	mov     r0, r4
	bl      Function_222c86c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x75
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x222cce8

.thumb
Function_222cce8: @ 222cce8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	mov     r2, #0x0
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_222cd36
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222cd04

Jumppoints_222cd04:
.hword branch_222cd34 - Jumppoints_222cd04 - 2
.hword branch_222cd30 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd34 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd34 - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd34 - Jumppoints_222cd04 - 2
.hword branch_222cd30 - Jumppoints_222cd04 - 2
.hword branch_222cd2c - Jumppoints_222cd04 - 2
.hword branch_222cd36 - Jumppoints_222cd04 - 2
.hword branch_222cd28 - Jumppoints_222cd04 - 2
.hword branch_222cd2c - Jumppoints_222cd04 - 2
.thumb
branch_222cd28: @ 222cd28 :thumb
	mov     r2, #0x90
	b       branch_222cd36
@ 0x222cd2c

.thumb
branch_222cd2c: @ 222cd2c :thumb
	mov     r2, #0x91
	b       branch_222cd36
@ 0x222cd30

.thumb
branch_222cd30: @ 222cd30 :thumb
	mov     r2, #0x96
	b       branch_222cd36
@ 0x222cd34

.thumb
branch_222cd34: @ 222cd34 :thumb
	mov     r2, #0x95
.thumb
branch_222cd36: @ 222cd36 :thumb
	ldr     r0, [pc, #0x1c] @ 0x222cd54, (=0xf0f)
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_222c8b8
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0xb
	bl      Function_222c920
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222cd54

.word 0xf0f @ 0x222cd54
.thumb
Function_222cd58: @ 222cd58 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x90
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x3
	bhi     branch_222cdec
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222cd74

Jumppoints_222cd74:
.hword branch_222cd7c - Jumppoints_222cd74 - 2
.hword branch_222cd98 - Jumppoints_222cd74 - 2
.hword branch_222cdb8 - Jumppoints_222cd74 - 2
.hword branch_222cdd4 - Jumppoints_222cd74 - 2
.thumb
branch_222cd7c: @ 222cd7c :thumb
	ldr     r1, [pc, #0x90] @ 0x222ce10, (=0xf0f)
	mov     r2, #0xb2
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x24]
	mov     r3, #0x1
	bl      Function_222c8b8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ce08
@ 0x222cd98

.thumb
branch_222cd98: @ 222cd98 :thumb
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x0
	bne     branch_222ce08
	bl      Function_203848c
	blx     0x21d7db0
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ce08
@ 0x222cdb8

.thumb
branch_222cdb8: @ 222cdb8 :thumb
	ldr     r1, [pc, #0x54] @ 0x222ce10, (=0xf0f)
	mov     r2, #0xb3
	str     r1, [sp, #0x0]
	ldr     r1, [r4, #0x24]
	mov     r3, #0x1
	bl      Function_222c8b8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ce08
@ 0x222cdd4

.thumb
branch_222cdd4: @ 222cdd4 :thumb
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x0
	bne     branch_222ce08
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ce08
@ 0x222cdec

.thumb
branch_222cdec: @ 222cdec :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1e
	ble     branch_222ce08
	mov     r0, #0x8
	str     r0, [r4, #0x8]
.thumb
branch_222ce08: @ 222ce08 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222ce0e


.align 2


.word 0xf0f @ 0x222ce10
.thumb
Function_222ce14: @ 222ce14 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x0
	bne     branch_222ce26
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_222ce26: @ 222ce26 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x222ce2a


.align 2, 0


.thumb
Function_222ce2c: @ 222ce2c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	bl      Function_222c834
	cmp     r0, #0x1
	bne     branch_222ce42
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x222ce42

.thumb
branch_222ce42: @ 222ce42 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_222ced2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222ce58

Jumppoints_222ce58:
.hword branch_222ce60 - Jumppoints_222ce58 - 2
.hword branch_222ce7e - Jumppoints_222ce58 - 2
.hword branch_222ce94 - Jumppoints_222ce58 - 2
.hword branch_222ceb6 - Jumppoints_222ce58 - 2
.thumb
branch_222ce60: @ 222ce60 :thumb
	ldr     r0, [pc, #0x74] @ 0x222ced8, (=0xf0f)
	mov     r2, #0x1a
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_222c8b8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ced2
@ 0x222ce7e

.thumb
branch_222ce7e: @ 222ce7e :thumb
	blx     0x21d7db0
	bl      Function_203848c
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ced2
@ 0x222ce94

.thumb
branch_222ce94: @ 222ce94 :thumb
	bl      Function_2039794
	ldr     r0, [pc, #0x3c] @ 0x222ced8, (=0xf0f)
	mov     r2, #0x1b
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_222c8b8
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r4, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222ced2
@ 0x222ceb6

.thumb
branch_222ceb6: @ 222ceb6 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1e
	ble     branch_222ced2
	ldr     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
.thumb
branch_222ced2: @ 222ced2 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222ced8

.word 0xf0f @ 0x222ced8
.arm
Function_222cedc: @ 222cedc :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222cfd4
	mov     r0, #0x0
	ldr     lr, [pc, #0x48] @ [0x222cf38] (=0x222e764)
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	mov     r12, #0x9
.arm
branch_222cefc: @ 222cefc :arm
	stmia   lr!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_222cefc
	stmia   lr!, {r0-r3}
	stmia   lr, {r0,r1}
	ldr     r1, [pc, #0x1c] @ [0x222cf38] (=0x222e764)
	mov     r2, #0x0
	str     r2, [r1, #0x138]
	ldr     r0, [pc, #0x14] @ [0x222cf3c] (=0x222e964)
	strb    r2, [r1, #0x140]
	strh    r2, [r0, #0x40]
	bl      Function_222d508
	bl      Function_222d53c
	ldmfd   sp!, {r3,pc}
@ 0x222cf38

.word 0x222e764 @ 0x222cf38
.word 0x222e964 @ 0x222cf3c
.arm
Function_222cf40: @ 222cf40 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r5, r2
	mov     r6, r0
	mov     r4, r1
	beq     branch_222cf80
	ldr     lr, [pc, #0x6c] @ [0x222cfc8] (=0x222e764)
	mov     r12, #0x13
.arm
branch_222cf5c: @ 222cf5c :arm
	ldmia   r5!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_222cf5c
	ldmia   r5, {r0,r1}
	stmia   lr, {r0,r1}
	ldr     r0, [pc, #0x4c] @ [0x222cfc8] (=0x222e764)
	mov     r1, #0x0
	str     r1, [r0, #0x138]
.arm
branch_222cf80: @ 222cf80 :arm
	bl      Function_222d510
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	bl      Function_222d4f0
	ldr     r0, [pc, #0x30] @ [0x222cfcc] (=0x222e8a4)
	mov     r1, r6
	bl      Function_20d8b7c
	ldr     r1, [pc, #0x28] @ [0x222cfd0] (=0x222e964)
	mov     r2, #0x0
	ldr     r0, [pc, #0x18] @ [0x222cfc8] (=0x222e764)
	strh    r4, [r1, #0x40]
	str     r2, [r0, #0x258]
	sub     r1, r2, #0x1
	str     r1, [r0, #0x26c]
	bl      Function_222cfd4
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x222cfc8

.word 0x222e764 @ 0x222cfc8
.word 0x222e8a4 @ 0x222cfcc
.word 0x222e964 @ 0x222cfd0
.arm
Function_222cfd4: @ 222cfd4 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222d770
	ldr     r0, [pc, #0x58] @ [0x222d03c] (=0x222e764)
	ldr     r0, [r0, #0x258]
	cmp     r0, #0x0
	beq     branch_222cffc
	bl      Function_222d4ac
	ldr     r0, [pc, #0x44] @ [0x222d03c] (=0x222e764)
	mov     r1, #0x0
	str     r1, [r0, #0x258]
.arm
branch_222cffc: @ 222cffc :arm
	ldr     r0, [pc, #0x38] @ [0x222d03c] (=0x222e764)
	mov     r1, #0xf
	str     r1, [r0, #0x244]
	mov     r1, #0x1e
	str     r1, [r0, #0x248]
	str     r1, [r0, #0x24c]
	mov     r2, #0x0
	str     r2, [r0, #0x254]
	str     r2, [r0, #0x25c]
	str     r2, [r0, #0x260]
	str     r2, [r0, #0x264]
	str     r2, [r0, #0x268]
	mov     r1, #0x1
	str     r1, [r0, #0x13c]
	str     r2, [r0, #0x250]
	ldmfd   sp!, {r3,pc}
@ 0x222d03c

.word 0x222e764 @ 0x222d03c
.arm
Function_222d040: @ 222d040 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r5, #0x0
	ldr     r4, [pc, #0x1a8] @ [0x222d1f8] (=0x222e764)
	mov     r11, #0x9
	mov     r10, #0x7
	mov     r6, #0x1
	mov     r7, r5
.arm
branch_222d05c: @ 222d05c :arm
	ldr     r0, [r4, #0x13c]
	mov     r8, r7
	cmp     r0, #0x9
	addls   pc, pc, r0, lsl #2
	b       branch_222d1b4
@ 0x222d070

.arm
Function_222d070: @ 222d070 :arm
	b       branch_222d098
@ 0x222d074

.arm
Function_222d074: @ 222d074 :arm
	b       branch_222d098
@ 0x222d078

.arm
Function_222d078: @ 222d078 :arm
	b       branch_222d0a0
@ 0x222d07c

.arm
Function_222d07c: @ 222d07c :arm
	b       branch_222d0d4
@ 0x222d080

.arm
Function_222d080: @ 222d080 :arm
	b       branch_222d108
@ 0x222d084

.arm
Function_222d084: @ 222d084 :arm
	b       branch_222d13c
@ 0x222d088

.arm
Function_222d088: @ 222d088 :arm
	b       branch_222d184
@ 0x222d08c

.arm
Function_222d08c: @ 222d08c :arm
	b       branch_222d098
@ 0x222d090

.arm
Function_222d090: @ 222d090 :arm
	b       branch_222d098
@ 0x222d094

.arm
Function_222d094: @ 222d094 :arm
	b       branch_222d098
@ 0x222d098

.arm
branch_222d098: @ 222d098 :arm
	mov     r8, r6
	b       branch_222d1b4
@ 0x222d0a0

.arm
branch_222d0a0: @ 222d0a0 :arm
	bl      Function_222db98
	cmp     r0, #0x0
	bne     branch_222d0c4
	ldr     r0, [r4, #0x250]
	mov     r8, #0x1
	cmp     r0, #0xd
	moveq   r9, r10
	movne   r9, r11
	b       branch_222d0c8
@ 0x222d0c4

.arm
branch_222d0c4: @ 222d0c4 :arm
	mov     r9, #0x3
.arm
branch_222d0c8: @ 222d0c8 :arm
	bl      Function_222d4c8
	str     r9, [r4, #0x13c]
	b       branch_222d1b4
@ 0x222d0d4

.arm
branch_222d0d4: @ 222d0d4 :arm
	bl      Function_222d6a0
	cmp     r0, #0x0
	bne     branch_222d0f8
	ldr     r0, [r4, #0x250]
	mov     r8, #0x1
	cmp     r0, #0xd
	moveq   r9, #0x7
	movne   r9, #0x9
	b       branch_222d0fc
@ 0x222d0f8

.arm
branch_222d0f8: @ 222d0f8 :arm
	mov     r9, #0x4
.arm
branch_222d0fc: @ 222d0fc :arm
	bl      Function_222d4c8
	str     r9, [r4, #0x13c]
	b       branch_222d1b4
@ 0x222d108

.arm
branch_222d108: @ 222d108 :arm
	bl      Function_222d7b0
	cmp     r0, #0x0
	bne     branch_222d12c
	ldr     r0, [r4, #0x250]
	mov     r8, #0x1
	cmp     r0, #0xd
	moveq   r9, #0x7
	movne   r9, #0x9
	b       branch_222d130
@ 0x222d12c

.arm
branch_222d12c: @ 222d12c :arm
	mov     r9, #0x5
.arm
branch_222d130: @ 222d130 :arm
	bl      Function_222d4c8
	str     r9, [r4, #0x13c]
	b       branch_222d1b4
@ 0x222d13c

.arm
branch_222d13c: @ 222d13c :arm
	bl      Function_222d8f8
	cmp     r0, #0x0
	bne     branch_222d160
	ldr     r0, [r4, #0x250]
	mov     r8, #0x1
	cmp     r0, #0xd
	moveq   r9, #0x7
	movne   r9, #0x9
	b       branch_222d164
@ 0x222d160

.arm
branch_222d160: @ 222d160 :arm
	mov     r9, #0x6
.arm
branch_222d164: @ 222d164 :arm
	ldr     r0, [r4, #0x258]
	cmp     r0, #0x0
	beq     branch_222d178
	bl      Function_222d4ac
	str     r5, [r4, #0x258]
.arm
branch_222d178: @ 222d178 :arm
	bl      Function_222d4c8
	str     r9, [r4, #0x13c]
	b       branch_222d1b4
@ 0x222d184

.arm
branch_222d184: @ 222d184 :arm
	bl      Function_222da0c
	cmp     r0, #0x0
	bne     branch_222d1a4
	ldr     r0, [r4, #0x250]
	cmp     r0, #0xd
	moveq   r9, #0x7
	movne   r9, #0x9
	b       branch_222d1a8
@ 0x222d1a4

.arm
branch_222d1a4: @ 222d1a4 :arm
	mov     r9, #0x8
.arm
branch_222d1a8: @ 222d1a8 :arm
	mov     r8, #0x1
	bl      Function_222d4c8
	str     r9, [r4, #0x13c]
.arm
branch_222d1b4: @ 222d1b4 :arm
	cmp     r8, #0x0
	bne     branch_222d1f0
	ldr     r0, [r4, #0x268]
	cmp     r0, #0x1
	bne     branch_222d1e0
	ldr     r0, [pc, #0x28] @ [0x222d1f8] (=0x222e764)
	mov     r1, #0x7
	str     r1, [r0, #0x13c]
	mov     r1, #0xd
	str     r1, [r0, #0x250]
	b       branch_222d1f0
@ 0x222d1e0

.arm
branch_222d1e0: @ 222d1e0 :arm
	bl      Function_222d4dc
	mov     r0, #0x1
	bl      Function_222db8c
	b       branch_222d05c
@ 0x222d1f0

.arm
branch_222d1f0: @ 222d1f0 :arm
	bl      Function_222d4dc
	ldmfd   sp!, {r3-r11,pc}
@ 0x222d1f8

.word 0x222e764 @ 0x222d1f8
.arm
Function_222d1fc: @ 222d1fc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_222d4c8
	ldr     r0, [pc, #0x1c8] @ [0x222d3e4] (=0x222e764)
	ldr     r0, [r0, #0x13c]
	cmp     r0, #0x9
	addls   pc, pc, r0, lsl #2
	b       branch_222d274
@ 0x222d228

.arm
Function_222d228: @ 222d228 :arm
	b       branch_222d250
@ 0x222d22c

.arm
Function_222d22c: @ 222d22c :arm
	b       branch_222d274
@ 0x222d230

.arm
Function_222d230: @ 222d230 :arm
	b       branch_222d250
@ 0x222d234

.arm
Function_222d234: @ 222d234 :arm
	b       branch_222d250
@ 0x222d238

.arm
Function_222d238: @ 222d238 :arm
	b       branch_222d250
@ 0x222d23c

.arm
Function_222d23c: @ 222d23c :arm
	b       branch_222d250
@ 0x222d240

.arm
Function_222d240: @ 222d240 :arm
	b       branch_222d250
@ 0x222d244

.arm
Function_222d244: @ 222d244 :arm
	b       branch_222d270
@ 0x222d248

.arm
Function_222d248: @ 222d248 :arm
	b       branch_222d270
@ 0x222d24c

.arm
Function_222d24c: @ 222d24c :arm
	b       branch_222d270
@ 0x222d250

.arm
branch_222d250: @ 222d250 :arm
	bl      Function_222d4dc
	ldr     r0, [pc, #0x188] @ [0x222d3e4] (=0x222e764)
	mov     r1, #0x9
	str     r1, [r0, #0x13c]
	mov     r1, #0x1
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x222d270

.arm
branch_222d270: @ 222d270 :arm
	bl      Function_222cfd4
.arm
branch_222d274: @ 222d274 :arm
	bl      Function_222d4dc
	mov     r0, r7
	bl      Function_222e2a8
	ldr     r2, [pc, #0x15c] @ [0x222d3e4] (=0x222e764)
	mvn     r1, #0x0
	str     r0, [r2, #0x25c]
	cmp     r0, r1
	bne     branch_222d2ac
	mov     r0, #0x9
	str     r0, [r2, #0x13c]
	mov     r0, #0x2
	str     r0, [r2, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x222d2ac

.arm
branch_222d2ac: @ 222d2ac :arm
	cmp     r4, r1
	str     r5, [r2, #0x260]
	addne   r0, r4, #5, 26 @ #0x140
	strne   r0, [sp]
	bne     branch_222d2f4
	mov     r0, r7
	bl      Function_222e168
	mvn     r1, #0x0
	str     r0, [sp]
	cmp     r0, r1
	bne     branch_222d2f4
	ldr     r0, [pc, #0x104] @ [0x222d3e4] (=0x222e764)
	mov     r1, #0x9
	str     r1, [r0, #0x13c]
	mov     r1, #0x2
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x222d2f4

.arm
branch_222d2f4: @ 222d2f4 :arm
	ldr     r0, [sp]
	bl      Function_222d498
	ldr     r12, [pc, #0xe0] @ [0x222d3e4] (=0x222e764)
	cmp     r0, #0x0
	str     r0, [r12, #0x258]
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [sp]
	add     r3, sp, #0x0
	str     r1, [r12, #0x254]
	ldrb    r2, [r3]
	ldrb    r1, [r3, #0x1]
	mov     r4, #0x13
	strb    r2, [r0]
	strb    r1, [r0, #0x1]
	ldrb    r2, [r3, #0x2]
	ldrb    r1, [r3, #0x3]
	strb    r2, [r0, #0x2]
	strb    r1, [r0, #0x3]
	ldr     lr, [r12, #0x258]
	strh    r7, [lr, #0x4]
	add     r5, lr, #0x8
.arm
branch_222d34c: @ 222d34c :arm
	ldmia   r12!, {r0-r3}
	stmia   r5!, {r0-r3}
	subs    r4, r4, #0x1
	bne     branch_222d34c
	ldmia   r12, {r0,r1}
	stmia   r5, {r0,r1}
	mov     r0, #0x0
	strh    r0, [lr, #0x6]
	ldr     r2, [sp]
	mov     r1, r6
	add     r0, lr, #5, 26 @ #0x140
	sub     r2, r2, #5, 26 @ #0x140
	bl      CopyDataInByteSteps
	ldr     r0, [pc, #0x5c] @ [0x222d3e4] (=0x222e764)
	ldr     r2, [r0, #0x258]
	ldr     r1, [r0, #0x254]
	add     r0, r2, #0x4
	sub     r1, r1, #0x4
	add     r2, r2, #0x4
	bl      Function_222e0b8
	ldr     r0, [pc, #0x40] @ [0x222d3e4] (=0x222e764)
	mov     r1, #0x2
	str     r1, [r0, #0x13c]
	bl      Function_222d4c8
	bl      Function_222d54c
	cmp     r0, #0x0
	bne     branch_222d3d8
	ldr     r0, [pc, #0x24] @ [0x222d3e4] (=0x222e764)
	mov     r1, #0x9
	str     r1, [r0, #0x13c]
	mov     r1, #0x6
	str     r1, [r0, #0x250]
	bl      Function_222d4dc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x222d3d8

.arm
branch_222d3d8: @ 222d3d8 :arm
	bl      Function_222d4dc
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x222d3e4

.word 0x222e764 @ 0x222d3e4
.arm
Function_222d3e8: @ 222d3e8 :arm
	ldr     r0, [pc, #0x4] @ [0x222d3f4] (=0x222e764)
	ldr     r0, [r0, #0x13c]
	bx      lr
@ 0x222d3f4

.word 0x222e764 @ 0x222d3f4
.arm
Function_222d3f8: @ 222d3f8 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222d4c8
	bl      Function_222d3e8
	cmp     r0, #0x8
	beq     branch_222d418
	bl      Function_222d4dc
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d418

.arm
branch_222d418: @ 222d418 :arm
	bl      Function_222d4dc
	ldr     r0, [pc, #0x8] @ [0x222d42c] (=0x222e764)
	ldr     r0, [r0, #0x260]
	add     r0, r0, #0x4
	ldmfd   sp!, {r3,pc}
@ 0x222d42c

.word 0x222e764 @ 0x222d42c
.arm
Function_222d430: @ 222d430 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222d4c8
	bl      Function_222d3e8
	cmp     r0, #0x8
	beq     branch_222d450
	bl      Function_222d4dc
	mvn     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d450

.arm
branch_222d450: @ 222d450 :arm
	bl      Function_222d4dc
	ldr     r0, [pc, #0x4] @ [0x222d460] (=0x222e764)
	ldr     r0, [r0, #0x25c]
	ldmfd   sp!, {r3,pc}
@ 0x222d460

.word 0x222e764 @ 0x222d460
.arm
Function_222d464: @ 222d464 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_222d4c8
	bl      Function_222d3e8
	cmp     r0, #0x9
	beq     branch_222d484
	bl      Function_222d4dc
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d484

.arm
branch_222d484: @ 222d484 :arm
	bl      Function_222d4dc
	ldr     r0, [pc, #0x4] @ [0x222d494] (=0x222e764)
	ldr     r0, [r0, #0x250]
	ldmfd   sp!, {r3,pc}
@ 0x222d494

.word 0x222e764 @ 0x222d494
.arm
Function_222d498: @ 222d498 :arm
	ldr     r12, [pc, #0x8] @ [0x222d4a8] (=0x21d7780)
	mov     r1, r0
	mov     r0, #0x0
	bx      r12
@ 0x222d4a8

.word 0x21d7780 @ 0x222d4a8
.arm
Function_222d4ac: @ 222d4ac :arm
	stmfd   sp!, {r3,lr}
	movs    r1, r0
	ldmeqfd sp!, {r3,pc}
	mov     r0, #0x0
	mov     r2, r0
	bl      0x21d77c4
	ldmfd   sp!, {r3,pc}
@ 0x222d4c8

.arm
Function_222d4c8: @ 222d4c8 :arm
	ldr     r12, [pc, #0x4] @ [0x222d4d4] (=OS_LockMutex)
	ldr     r0, [pc, #0x4] @ [0x222d4d8] (=0x222ea98)
	bx      r12
@ 0x222d4d4

.word OS_LockMutex @ 0x222d4d4
.word 0x222ea98 @ 0x222d4d8
.arm
Function_222d4dc: @ 222d4dc :arm
	ldr     r12, [pc, #0x4] @ [0x222d4e8] (=OS_UnlockMutex)
	ldr     r0, [pc, #0x4] @ [0x222d4ec] (=0x222ea98)
	bx      r12
@ 0x222d4e8

.word OS_UnlockMutex @ 0x222d4e8
.word 0x222ea98 @ 0x222d4ec
.arm
Function_222d4f0: @ 222d4f0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x8] @ [0x222d504] (=0x222ea98)
	bl      OS_InitMutex
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x222d504

.word 0x222ea98 @ 0x222d504
.arm
Function_222d508: @ 222d508 :arm
	mov     r0, #0x1
	bx      lr
@ 0x222d510

.arm
Function_222d510: @ 222d510 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20c3808
	cmp     r0, #0x0
	bne     branch_222d524
	bl      OS_InitTick
.arm
branch_222d524: @ 222d524 :arm
	ldr     r0, [pc, #0xc] @ [0x222d538] (=0x222e764)
	mov     r1, #0x10
	str     r1, [r0, #0x270]
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x222d538

.word 0x222e764 @ 0x222d538
.arm
Function_222d53c: @ 222d53c :arm
	bx      lr
@ 0x222d540

.arm
Function_222d540: @ 222d540 :arm
	ldr     r12, [pc, #0x0] @ [0x222d548] (=0x222d040)
	bx      r12
@ 0x222d548

.word Function_222d040 @ =0x222d040, 0x222d548
.arm
Function_222d54c: @ 222d54c :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	mov     r1, #2, 22 @ #0x800
	ldr     r0, [pc, #0x30] @ [0x222d590] (=0x222e764)
	str     r1, [sp]
	ldr     r12, [r0, #0x270]
	ldr     r0, [pc, #0x28] @ [0x222d594] (=0x222e9d8)
	ldr     r1, [pc, #0x28] @ [0x222d598] (=0x222d540)
	ldr     r3, [pc, #0x28] @ [0x222d59c] (=0x222f2b0)
	mov     r2, #0x0
	str     r12, [sp, #0x4]
	bl      OS_CreateThread
	ldr     r0, [pc, #0x10] @ [0x222d594] (=0x222e9d8)
	bl      OS_WakeupThreadDirect
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x222d590

.word 0x222e764 @ 0x222d590
.word 0x222e9d8 @ 0x222d594
.word Function_222d540 @ =0x222d540, 0x222d598
.word 0x222f2b0 @ 0x222d59c
.arm
Function_222d5a0: @ 222d5a0 :arm
	ldrsb   r12, [r0]
	mov     r2, #0x0
	mov     r3, r2
	cmp     r12, #0x0
	beq     branch_222d61c
	mov     r1, r2
.arm
branch_222d5b8: @ 222d5b8 :arm
	cmp     r12, #0x30
	blt     branch_222d5dc
	cmp     r12, #0x39
	bgt     branch_222d5dc
	add     r2, r2, #0x1
	cmp     r2, #0x4
	blt     branch_222d610
	mov     r0, #0x0
	bx      lr
@ 0x222d5dc

.arm
branch_222d5dc: @ 222d5dc :arm
	cmp     r12, #0x2e
	bne     branch_222d608
	cmp     r2, #0x0
	moveq   r0, #0x0
	bxeq    lr
	add     r3, r3, #0x1
	mov     r2, r1
	cmp     r3, #0x4
	blt     branch_222d610
	mov     r0, r1
	bx      lr
@ 0x222d608

.arm
branch_222d608: @ 222d608 :arm
	mov     r0, #0x0
	bx      lr
@ 0x222d610

.arm
branch_222d610: @ 222d610 :arm
	ldrsb   r12, [r0, #0x1]!
	cmp     r12, #0x0
	bne     branch_222d5b8
.arm
branch_222d61c: @ 222d61c :arm
	cmp     r3, #0x3
	bne     branch_222d630
	cmp     r2, #0x0
	movne   r0, #0x1
	bxne    lr
.arm
branch_222d630: @ 222d630 :arm
	mov     r0, #0x0
	bx      lr
@ 0x222d638

.arm
Function_222d638: @ 222d638 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_222d5a0
	cmp     r0, #0x0
	bne     branch_222d68c
	mov     r0, r5
	bl      0x220854c
	cmp     r0, #0x0
	beq     branch_222d684
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0]
	ldr     r0, [r0]
	str     r0, [sp]
	bl      0x22089f4
	mov     r1, r0
	mov     r0, r4
	bl      Function_20d8b7c
	b       branch_222d698
@ 0x222d684

.arm
branch_222d684: @ 222d684 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x222d68c

.arm
branch_222d68c: @ 222d68c :arm
	mov     r0, r4
	mov     r1, r5
	bl      Function_20d8b7c
.arm
branch_222d698: @ 222d698 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x222d6a0

.arm
Function_222d6a0: @ 222d6a0 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x10
	mov     r0, #0x2
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x2208324
	ldr     r2, [pc, #0xa8] @ [0x222d768] (=0x222e764)
	mvn     r1, #0x0
	str     r0, [r2, #0x26c]
	cmp     r0, r1
	bne     branch_222d6e0
	mov     r0, #0x3
	str     r0, [r2, #0x250]
	add     sp, sp, #0x10
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d6e0

.arm
branch_222d6e0: @ 222d6e0 :arm
	mov     r1, #0x3
	mov     r2, #0x0
	bl      0x22087cc
	ldr     r1, [pc, #0x74] @ [0x222d768] (=0x222e764)
	orr     r2, r0, #0x4
	ldr     r0, [r1, #0x26c]
	mov     r1, #0x4
	bl      0x22087cc
	cmp     r0, #0x0
	bge     branch_222d720
	ldr     r0, [pc, #0x58] @ [0x222d768] (=0x222e764)
	mov     r1, #0x4
	str     r1, [r0, #0x250]
	add     sp, sp, #0x10
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d720

.arm
branch_222d720: @ 222d720 :arm
	ldr     r0, [pc, #0x44] @ [0x222d76c] (=0x222e8a4)
	add     r1, sp, #0x0
	bl      Function_222d638
	cmp     r0, #0x0
	bne     branch_222d74c
	ldr     r0, [pc, #0x2c] @ [0x222d768] (=0x222e764)
	mov     r1, #0x5
	str     r1, [r0, #0x250]
	add     sp, sp, #0x10
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x222d74c

.arm
branch_222d74c: @ 222d74c :arm
	add     r0, sp, #0x0
	bl      0x21eaf1c
	ldr     r1, [pc, #0xc] @ [0x222d768] (=0x222e764)
	str     r0, [r1, #0x264]
	mov     r0, #0x1
	add     sp, sp, #0x10
	ldmfd   sp!, {r3,pc}
@ 0x222d768

.word 0x222e764 @ 0x222d768
.word 0x222e8a4 @ 0x222d76c
.arm
Function_222d770: @ 222d770 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0, [pc, #0x30] @ [0x222d7ac] (=0x222e764)
	mvn     r1, #0x0
	ldr     r0, [r0, #0x26c]
	cmp     r0, r1
	ldmeqfd sp!, {r3,pc}
	mov     r1, #0x2
	bl      0x2208534
	ldr     r0, [pc, #0x14] @ [0x222d7ac] (=0x222e764)
	ldr     r0, [r0, #0x26c]
	bl      0x2208540
	ldr     r0, [pc, #0x8] @ [0x222d7ac] (=0x222e764)
	mvn     r1, #0x0
	str     r1, [r0, #0x26c]
	ldmfd   sp!, {r3,pc}
@ 0x222d7ac

.word 0x222e764 @ 0x222d7ac
.arm
Function_222d7b0: @ 222d7b0 :arm
	stmfd   sp!, {r4-r10,lr}
	sub     sp, sp, #0x8
	mov     r2, #0x8
	mov     r1, #0x2
	ldr     r0, [pc, #0x124] @ [0x222d8ec] (=0x222e964)
	strb    r2, [sp]
	strb    r1, [sp, #0x1]
	ldrh    r1, [r0, #0x40]
	ldr     r0, [pc, #0x118] @ [0x222d8f0] (=0x222e764)
	mov     r2, r1, asr #8
	mov     r1, r1, lsl #8
	and     r2, r2, #0xff
	and     r1, r1, #255, 24 @ #0xff00
	orr     r1, r2, r1
	strh    r1, [sp, #0x2]
	ldr     r0, [r0, #0x264]
	str     r0, [sp, #0x4]
	bl      OS_GetTick
	ldr     r2, [pc, #0xf4] @ [0x222d8f4] (=0x7fd88)
	mov     r3, #0x0
	bl      _ll_udiv
	ldr     r5, [pc, #0xe8] @ [0x222d8f4] (=0x7fd88)
	ldr     r9, [pc, #0xe0] @ [0x222d8f0] (=0x222e764)
	mov     r7, r0
	mov     r4, #0x0
	mov     r10, #0x1
	add     r6, sp, #0x0
	mvn     r8, #0x19
.arm
branch_222d820: @ 222d820 :arm
	ldr     r0, [r9, #0x26c]
	mov     r1, r6
	bl      0x220837c
	cmp     r0, #0x0
	bge     branch_222d8e0
	cmp     r0, r8
	bne     branch_222d880
	ldr     r0, [r9, #0x244]
	cmp     r0, #0x0
	beq     branch_222d8a4
	bl      OS_GetTick
	mov     r2, r5
	mov     r3, r4
	bl      _ll_udiv
	ldr     r1, [r9, #0x244]
	subs    r0, r0, r7
	cmp     r0, r1
	blt     branch_222d8a4
	ldr     r0, [pc, #0x80] @ [0x222d8f0] (=0x222e764)
	mov     r1, #0xa
	str     r1, [r0, #0x250]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x222d880

.arm
branch_222d880: @ 222d880 :arm
	mvn     r1, #0x1d
	cmp     r0, r1
	beq     branch_222d8e0
	ldr     r0, [pc, #0x5c] @ [0x222d8f0] (=0x222e764)
	mov     r1, #0x7
	str     r1, [r0, #0x250]
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x222d8a4

.arm
branch_222d8a4: @ 222d8a4 :arm
	bl      Function_222d4c8
	ldr     r0, [r9, #0x268]
	cmp     r0, #0x1
	bne     branch_222d8d0
	ldr     r0, [pc, #0x34] @ [0x222d8f0] (=0x222e764)
	mov     r1, #0xd
	str     r1, [r0, #0x250]
	bl      Function_222d4dc
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x222d8d0

.arm
branch_222d8d0: @ 222d8d0 :arm
	bl      Function_222d4dc
	mov     r0, r10
	bl      Function_222db8c
	b       branch_222d820
@ 0x222d8e0

.arm
branch_222d8e0: @ 222d8e0 :arm
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r10,pc}
@ 0x222d8ec

.word 0x222e964 @ 0x222d8ec
.word 0x222e764 @ 0x222d8f0
.word 0x7fd88 @ 0x222d8f4
.arm
Function_222d8f8: @ 222d8f8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r9, #0x0
	bl      OS_GetTick
	ldr     r2, [pc, #0xf8] @ [0x222da04] (=0x7fd88)
	mov     r3, r9
	bl      _ll_udiv
	ldr     r7, [pc, #0xec] @ [0x222da04] (=0x7fd88)
	ldr     r5, [pc, #0xec] @ [0x222da08] (=0x222e764)
	mov     r10, r0
	mov     r8, r9
	mov     r6, r9
	mov     r11, #0x1
	mvn     r4, #0x5
.arm
branch_222d92c: @ 222d92c :arm
	ldr     r0, [r5, #0x254]
	ldr     r1, [r5, #0x258]
	sub     r2, r0, r9
	cmp     r2, r0
	movgt   r2, r0
	ldr     r0, [r5, #0x26c]
	mov     r3, r8
	add     r1, r1, r9
	bl      0x220848c
	cmp     r0, r4
	beq     branch_222d984
	cmp     r0, #0x0
	bge     branch_222d974
	ldr     r0, [pc, #0xa0] @ [0x222da08] (=0x222e764)
	mov     r1, #0xb
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222d974

.arm
branch_222d974: @ 222d974 :arm
	ldr     r1, [r5, #0x254]
	add     r9, r9, r0
	cmp     r9, r1
	beq     branch_222d9fc
.arm
branch_222d984: @ 222d984 :arm
	ldr     r0, [r5, #0x248]
	cmp     r0, #0x0
	beq     branch_222d9c4
	bl      OS_GetTick
	mov     r2, r7
	mov     r3, r6
	bl      _ll_udiv
	ldr     r1, [r5, #0x248]
	subs    r0, r0, r10
	cmp     r0, r1
	blt     branch_222d9c4
	ldr     r0, [pc, #0x50] @ [0x222da08] (=0x222e764)
	mov     r1, #0xb
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222d9c4

.arm
branch_222d9c4: @ 222d9c4 :arm
	bl      Function_222d4c8
	ldr     r0, [r5, #0x268]
	cmp     r0, #0x1
	bne     branch_222d9ec
	ldr     r0, [pc, #0x2c] @ [0x222da08] (=0x222e764)
	mov     r1, #0xd
	str     r1, [r0, #0x250]
	bl      Function_222d4dc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222d9ec

.arm
branch_222d9ec: @ 222d9ec :arm
	bl      Function_222d4dc
	mov     r0, r11
	bl      Function_222db8c
	b       branch_222d92c
@ 0x222d9fc

.arm
branch_222d9fc: @ 222d9fc :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x222da04

.word 0x7fd88 @ 0x222da04
.word 0x222e764 @ 0x222da08
.arm
Function_222da0c: @ 222da0c :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, #0x0
	sub     r0, r10, #0x1
	str     r0, [sp]
	bl      OS_GetTick
	ldr     r2, [pc, #0x15c] @ [0x222db84] (=0x7fd88)
	mov     r3, r10
	bl      _ll_udiv
	mvn     r4, #0x0
	ldr     r11, [pc, #0x14c] @ [0x222db84] (=0x7fd88)
	ldr     r6, [pc, #0x14c] @ [0x222db88] (=0x222e764)
	mov     r9, r0
	sub     r5, r4, #0x5
	add     r7, sp, #0x0
	mov     r8, r10
.arm
branch_222da48: @ 222da48 :arm
	ldr     r1, [r6, #0x260]
	ldr     r2, [r6, #0x25c]
	ldr     r0, [r6, #0x26c]
	mov     r3, r8
	add     r1, r1, r10
	sub     r2, r2, r10
	bl      0x22083d8
	cmp     r0, r5
	beq     branch_222db04
	cmp     r0, #0x0
	bgt     branch_222da88
	ldr     r0, [pc, #0x10c] @ [0x222db88] (=0x222e764)
	mov     r1, #0x9
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222da88

.arm
branch_222da88: @ 222da88 :arm
	add     r10, r10, r0
	cmp     r10, #0x4
	bcc     branch_222dac4
	ldr     r0, [sp]
	cmp     r0, r4
	bne     branch_222dac4
	ldr     r2, [r6, #0x260]
	ldrb    r1, [r2]
	ldrb    r0, [r2, #0x1]
	strb    r1, [r7]
	strb    r0, [r7, #0x1]
	ldrb    r1, [r2, #0x2]
	ldrb    r0, [r2, #0x3]
	strb    r1, [r7, #0x2]
	strb    r0, [r7, #0x3]
.arm
branch_222dac4: @ 222dac4 :arm
	ldr     r0, [sp]
	cmp     r10, r0
	bne     branch_222db04
	cmp     r0, r4
	beq     branch_222db04
	ldr     r0, [pc, #0xa8] @ [0x222db88] (=0x222e764)
	sub     r1, r10, #0x4
	ldr     r2, [r0, #0x260]
	add     r0, r2, #0x4
	add     r2, r2, #0x4
	bl      Function_222e110
	ldr     r1, [sp]
	ldr     r0, [pc, #0x8c] @ [0x222db88] (=0x222e764)
	sub     r1, r1, #0x4
	str     r1, [r0, #0x25c]
	b       branch_222db7c
@ 0x222db04

.arm
branch_222db04: @ 222db04 :arm
	ldr     r0, [r6, #0x24c]
	cmp     r0, #0x0
	beq     branch_222db44
	bl      OS_GetTick
	mov     r2, r11
	mov     r3, #0x0
	bl      _ll_udiv
	ldr     r1, [r6, #0x24c]
	subs    r0, r0, r9
	cmp     r0, r1
	blt     branch_222db44
	ldr     r0, [pc, #0x50] @ [0x222db88] (=0x222e764)
	mov     r1, #0xc
	str     r1, [r0, #0x250]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222db44

.arm
branch_222db44: @ 222db44 :arm
	bl      Function_222d4c8
	ldr     r0, [r6, #0x268]
	cmp     r0, #0x1
	bne     branch_222db6c
	ldr     r0, [pc, #0x2c] @ [0x222db88] (=0x222e764)
	mov     r1, #0xd
	str     r1, [r0, #0x250]
	bl      Function_222d4dc
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x222db6c

.arm
branch_222db6c: @ 222db6c :arm
	bl      Function_222d4dc
	mov     r0, #0x1
	bl      Function_222db8c
	b       branch_222da48
@ 0x222db7c

.arm
branch_222db7c: @ 222db7c :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x222db84

.word 0x7fd88 @ 0x222db84
.word 0x222e764 @ 0x222db88
.arm
Function_222db8c: @ 222db8c :arm
	ldr     r12, [pc, #0x0] @ [0x222db94] (=OS_Sleep)
	bx      r12
@ 0x222db94

.word OS_Sleep @ 0x222db94
.arm
Function_222db98: @ 222db98 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #95, 30 @ #0x17c
	ldr     r0, [pc, #0x128] @ [0x222dcd0] (=0x222e764)
	ldr     r0, [r0, #0x138]
	cmp     r0, #0x1
	addeq   sp, sp, #95, 30 @ #0x17c
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,r5,pc}
	ldr     r0, [pc, #0x114] @ [0x222dcd4] (=0x222e638)
	add     r1, sp, #0x8
	bl      0x21d8144
	cmp     r0, #0x0
	bne     branch_222dbe4
	ldr     r0, [pc, #0xfc] @ [0x222dcd0] (=0x222e764)
	mov     r1, #0xe
	str     r1, [r0, #0x250]
	add     sp, sp, #95, 30 @ #0x17c
	mov     r0, #0x0
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dbe4

.arm
branch_222dbe4: @ 222dbe4 :arm
	ldr     r4, [pc, #0xe4] @ [0x222dcd0] (=0x222e764)
	mov     r5, #0x1
.arm
branch_222dbec: @ 222dbec :arm
	bl      0x21d81b8
	cmp     r0, #0x3
	bne     branch_222dc40
	ldr     r4, [pc, #0xd8] @ [0x222dcd8] (=0x222e76a)
	add     r3, sp, #0x4d
	mov     r2, #0x96
.arm
branch_222dc04: @ 222dc04 :arm
	ldrb    r1, [r3]
	ldrb    r0, [r3, #0x1]
	add     r3, r3, #0x2
	strb    r1, [r4]
	strb    r0, [r4, #0x1]
	add     r4, r4, #0x2
	subs    r2, r2, #0x1
	bne     branch_222dc04
	ldrb    r2, [r3]
	ldr     r1, [pc, #0xa0] @ [0x222dcd0] (=0x222e764)
	mov     r0, #0x1
	strb    r2, [r4]
	str     r0, [r1, #0x138]
	add     sp, sp, #95, 30 @ #0x17c
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dc40

.arm
branch_222dc40: @ 222dc40 :arm
	cmp     r0, #0x4
	bne     branch_222dc6c
	add     r0, sp, #0x0
	add     r1, sp, #0x4
	bl      0x21d75f4
	ldr     r0, [pc, #0x74] @ [0x222dcd0] (=0x222e764)
	mov     r1, #0xe
	str     r1, [r0, #0x250]
	add     sp, sp, #95, 30 @ #0x17c
	mov     r0, #0x0
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dc6c

.arm
branch_222dc6c: @ 222dc6c :arm
	cmp     r0, #0x5
	bne     branch_222dc8c
	ldr     r0, [pc, #0x54] @ [0x222dcd0] (=0x222e764)
	mov     r1, #0xe
	str     r1, [r0, #0x250]
	add     sp, sp, #95, 30 @ #0x17c
	mov     r0, #0x0
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dc8c

.arm
branch_222dc8c: @ 222dc8c :arm
	bl      Function_222d4c8
	ldr     r0, [r4, #0x268]
	cmp     r0, #0x1
	bne     branch_222dcb8
	ldr     r0, [pc, #0x2c] @ [0x222dcd0] (=0x222e764)
	mov     r1, #0xd
	str     r1, [r0, #0x250]
	bl      Function_222d4dc
	add     sp, sp, #95, 30 @ #0x17c
	mov     r0, #0x0
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dcb8

.arm
branch_222dcb8: @ 222dcb8 :arm
	bl      Function_222d4dc
	mov     r0, r5
	bl      Function_222db8c
	b       branch_222dbec
@ 0x222dcc8

.arm
Function_222dcc8: @ 222dcc8 :arm
	add     sp, sp, #95, 30 @ #0x17c
	ldmfd   sp!, {r4,r5,pc}
@ 0x222dcd0

.word 0x222e764 @ 0x222dcd0
.word 0x222e638 @ 0x222dcd4
.word 0x222e76a @ 0x222dcd8
.arm
Function_222dcdc: @ 222dcdc :arm
	ldr     r12, [pc, #0xc] @ [0x222dcf0] (=0x222cf40)
	mov     r2, r0
	ldr     r0, [pc, #0x8] @ [0x222dcf4] (=0x222e63c)
	ldr     r1, [pc, #0x8] @ [0x222dcf8] (=0x3070)
	bx      r12
@ 0x222dcf0

.word 0x222cf40 @ 0x222dcf0
.word 0x222e63c @ 0x222dcf4
.word 0x3070 @ 0x222dcf8
.arm
Function_222dcfc: @ 222dcfc :arm
	ldr     r12, [pc, #0x0] @ [0x222dd04] (=0x222cedc)
	bx      r12
@ 0x222dd04

.word 0x222cedc @ 0x222dd04
.arm
Function_222dd08: @ 222dd08 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_222d4c8
	bl      Function_222d3e8
	mov     r4, r0
	bl      Function_222d4dc
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x222dd24

.arm
Function_222dd24: @ 222dd24 :arm
	ldr     r12, [pc, #0x0] @ [0x222dd2c] (=0x222d464)
	bx      r12
@ 0x222dd2c

.word 0x222d464 @ 0x222dd2c
.arm
Function_222dd30: @ 222dd30 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0xe0
	mov     r6, r0
	add     lr, sp, #0x0
	mov     r5, r1
	mov     r4, r6
	mov     r12, #0xe
.arm
branch_222dd4c: @ 222dd4c :arm
	ldmia   r4!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_222dd4c
	ldr     r1, [pc, #0x20] @ [0x222dd84] (=0x222e658)
	mov     r0, r6
	bl      Function_222e478
	ldr     r0, [pc, #0x18] @ [0x222dd88] (=0x4e20)
	add     r1, sp, #0x0
	mov     r2, r5
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #0xe0
	ldmfd   sp!, {r4-r6,pc}
@ 0x222dd84

.word 0x222e658 @ 0x222dd84
.word 0x4e20 @ 0x222dd88
.arm
Function_222dd8c: @ 222dd8c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	mov     lr, #0x0
	mov     r12, r0, asr #31
	str     r0, [sp, #0x4]
	mov     r2, r1
	ldr     r0, [pc, #0x1c] @ [0x222ddc8] (=0x4e21)
	add     r1, sp, #0x0
	sub     r3, lr, #0x1
	strh    lr, [sp]
	strh    lr, [sp, #0x2]
	str     r12, [sp, #0x8]
	bl      Function_222d1fc
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x222ddc8

.word 0x4e21 @ 0x222ddc8
.arm
Function_222ddcc: @ 222ddcc :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #34, 28 @ #0x220
	mov     r6, r1
	add     lr, sp, #0x4
	mov     r5, r2
	mov     r4, r6
	str     r0, [sp]
	mov     r12, #0x21
.arm
branch_222ddec: @ 222ddec :arm
	ldmia   r4!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_222ddec
	ldmia   r4, {r0-r2}
	stmia   lr, {r0-r2}
	ldr     r1, [pc, #0x20] @ [0x222de2c] (=0x222e658)
	mov     r0, r6
	bl      Function_222e478
	ldr     r0, [pc, #0x18] @ [0x222de30] (=0x5208)
	add     r1, sp, #0x0
	mov     r2, r5
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #34, 28 @ #0x220
	ldmfd   sp!, {r4-r6,pc}
@ 0x222de2c

.word 0x222e658 @ 0x222de2c
.word 0x5208 @ 0x222de30
.arm
Function_222de34: @ 222de34 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	mov     lr, #0x0
	mov     r12, r0, asr #31
	str     r0, [sp, #0x4]
	mov     r2, r1
	ldr     r0, [pc, #0x1c] @ [0x222de70] (=0x5209)
	add     r1, sp, #0x0
	sub     r3, lr, #0x1
	strh    lr, [sp]
	strh    lr, [sp, #0x2]
	str     r12, [sp, #0x8]
	bl      Function_222d1fc
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x222de70

.word 0x5209 @ 0x222de70
.arm
Function_222de74: @ 222de74 :arm
	ldr     r12, [pc, #0x0] @ [0x222de7c] (=0x222d430)
	bx      r12
@ 0x222de7c

.word 0x222d430 @ 0x222de7c
.arm
Function_222de80: @ 222de80 :arm
	ldr     r12, [pc, #0x0] @ [0x222de88] (=0x222d3f8)
	bx      r12
@ 0x222de88

.word 0x222d3f8 @ 0x222de88
.arm
Function_222de8c: @ 222de8c :arm
	ldr     r12, [pc, #0x0] @ [0x222de94] (=0x222e2a8)
	bx      r12
@ 0x222de94

.word Function_222e2a8 @ =0x222e2a8, 0x222de94
.arm
Function_222de98: @ 222de98 :arm
	ldr     r12, [pc, #0x10] @ [0x222deb0] (=0x222d1fc)
	mov     r1, #0x0
	mov     r2, r0
	ldr     r0, [pc, #0x8] @ [0x222deb4] (=0x55f0)
	sub     r3, r1, #0x1
	bx      r12
@ 0x222deb0

.word Function_222d1fc @ =0x222d1fc, 0x222deb0
.word 0x55f0 @ 0x222deb4
.arm
Function_222deb8: @ 222deb8 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x24
	mov     r5, r0
	mov     r4, r1
	add     lr, sp, #0x0
	ldmia   r5!, {r0-r3}
	mov     r12, lr
	stmia   lr!, {r0-r3}
	ldmia   r5!, {r0-r3}
	stmia   lr!, {r0-r3}
	ldr     r0, [r5]
	mov     r1, r12
	str     r0, [lr]
	ldr     r0, [pc, #0x10] @ [0x222df04] (=0x55f1)
	mov     r2, r4
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #0x24
	ldmfd   sp!, {r4,r5,pc}
@ 0x222df04

.word 0x55f1 @ 0x222df04
.arm
Function_222df08: @ 222df08 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #83, 30 @ #0x14c
	sub     sp, sp, #7, 22 @ #0x1c00
	add     lr, sp, #0x0
	mov     r5, r0
	mov     r4, r1
	mov     r12, #117, 30 @ #0x1d4
.arm
branch_222df24: @ 222df24 :arm
	ldmia   r5!, {r0-r3}
	stmia   lr!, {r0-r3}
	subs    r12, r12, #0x1
	bne     branch_222df24
	ldmia   r5, {r0-r2}
	stmia   lr, {r0-r2}
	ldr     r0, [pc, #0x18] @ [0x222df5c] (=0x59d8)
	add     r1, sp, #0x0
	mov     r2, r4
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #83, 30 @ #0x14c
	add     sp, sp, #7, 22 @ #0x1c00
	ldmfd   sp!, {r4,r5,pc}
@ 0x222df5c

.word 0x59d8 @ 0x222df5c
.arm
Function_222df60: @ 222df60 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x1c
	mov     lr, #0x0
	add     r12, sp, #0x4
	strh    lr, [sp]
	mov     r4, r1
	ldmia   r0, {r0-r3}
	stmia   r12, {r0-r3}
	ldr     r0, [pc, #0x1c] @ [0x222dfa4] (=0x59d9)
	add     r1, sp, #0x0
	mov     r2, r4
	sub     r3, lr, #0x1
	strh    lr, [sp]
	strh    lr, [sp, #0x2]
	bl      Function_222d1fc
	add     sp, sp, #0x1c
	ldmfd   sp!, {r3,r4,pc}
@ 0x222dfa4

.word 0x59d9 @ 0x222dfa4
.arm
Function_222dfa8: @ 222dfa8 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x1c
	mov     r2, r1
	add     r1, sp, #0x0
	mov     r12, #0x0
	mov     r3, #0x1
	str     r12, [r1]
	strh    r3, [sp]
	str     r12, [r1, #0x4]
	str     r12, [r1, #0x8]
	str     r12, [r1, #0xc]
	str     r12, [r1, #0x10]
	str     r12, [r1, #0x14]
	str     r12, [r1, #0x18]
	ldr     r12, [r0]
	ldr     r0, [pc, #0x10] @ [0x222dffc] (=0x59d9)
	sub     r3, r3, #0x2
	str     r12, [sp, #0xc]
	bl      Function_222d1fc
	add     sp, sp, #0x1c
	ldmfd   sp!, {pc}
@ 0x222dffc

.word 0x59d9 @ 0x222dffc
.arm
Function_222e000: @ 222e000 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x1c
	mov     r2, r1
	add     r1, sp, #0x0
	mov     r12, #0x0
	mov     r3, #0x2
	str     r12, [r1]
	strh    r3, [sp]
	str     r12, [r1, #0x4]
	str     r12, [r1, #0x8]
	str     r12, [r1, #0xc]
	str     r12, [r1, #0x10]
	str     r12, [r1, #0x14]
	str     r12, [r1, #0x18]
	ldr     r12, [r0]
	ldr     r0, [pc, #0x10] @ [0x222e054] (=0x59d9)
	sub     r3, r3, #0x3
	str     r12, [sp, #0xc]
	bl      Function_222d1fc
	add     sp, sp, #0x1c
	ldmfd   sp!, {pc}
@ 0x222e054

.word 0x59d9 @ 0x222e054
.arm
Function_222e058: @ 222e058 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	str     r0, [sp]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, r3
	ldr     r0, [pc, #0x10] @ [0x222e088] (=0x59da)
	add     r1, sp, #0x0
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x222e088

.word 0x59da @ 0x222e088
.arm
Function_222e08c: @ 222e08c :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	str     r0, [sp]
	str     r1, [sp, #0x4]
	ldr     r0, [pc, #0x10] @ [0x222e0b4] (=0x59db)
	add     r1, sp, #0x0
	mvn     r3, #0x0
	bl      Function_222d1fc
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x222e0b4

.word 0x59db @ 0x222e0b4
.arm
Function_222e0b8: @ 222e0b8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, #0x0
	cmp     r1, #0x0
	ldmlefd sp!, {r3-r5,pc}
	ldr     lr, [pc, #0x3c] @ [0x222e10c] (=0x222e65c)
	mov     r12, r5
.arm
branch_222e0d0: @ 222e0d0 :arm
	cmp     r5, #0x0
	moveq   r4, r12
	beq     branch_222e0f0
	ldrb    r4, [r0]
	add     r3, r5, r1
	add     r3, r4, r3
	and     r3, r3, #0xff
	ldrb    r4, [lr, r3]
.arm
branch_222e0f0: @ 222e0f0 :arm
	ldrb    r3, [r0, r5]
	add     r5, r5, #0x1
	cmp     r5, r1
	eor     r3, r4, r3
	strb    r3, [r2], #0x1
	blt     branch_222e0d0
	ldmfd   sp!, {r3-r5,pc}
@ 0x222e10c

.word 0x222e65c @ 0x222e10c
.arm
Function_222e110: @ 222e110 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, #0x0
	cmp     r1, #0x0
	ldmlefd sp!, {r3-r5,pc}
	ldr     lr, [pc, #0x3c] @ [0x222e164] (=0x222e65c)
	mov     r12, r5
.arm
branch_222e128: @ 222e128 :arm
	cmp     r5, #0x0
	moveq   r4, r12
	beq     branch_222e148
	ldrb    r4, [r0]
	add     r3, r5, r1
	add     r3, r4, r3
	and     r3, r3, #0xff
	ldrb    r4, [lr, r3]
.arm
branch_222e148: @ 222e148 :arm
	ldrb    r3, [r2, r5]
	eor     r3, r3, r4
	strb    r3, [r2, r5]
	add     r5, r5, #0x1
	cmp     r5, r1
	blt     branch_222e128
	ldmfd   sp!, {r3-r5,pc}
@ 0x222e164

.word 0x222e65c @ 0x222e164
.arm
Function_222e168: @ 222e168 :arm
	ldr     r2, [pc, #0x124] @ [0x222e294] (=0x5209)
	cmp     r0, r2
	bgt     branch_222e1c0
	bge     branch_222e24c
	sub     r1, r2, #250, 30 @ #0x3e8
	cmp     r0, r1
	bgt     branch_222e1b0
	ldr     r1, [pc, #0x10c] @ [0x222e298] (=0x4e20)
	cmp     r0, r1
	blt     branch_222e1a4
	beq     branch_222e234
	add     r1, r1, #0x1
	cmp     r0, r1
	beq     branch_222e23c
	b       branch_222e284
@ 0x222e1a4

.arm
branch_222e1a4: @ 222e1a4 :arm
	cmp     r0, #0x0
	beq     branch_222e22c
	b       branch_222e284
@ 0x222e1b0

.arm
branch_222e1b0: @ 222e1b0 :arm
	sub     r1, r2, #0x1
	cmp     r0, r1
	beq     branch_222e244
	b       branch_222e284
@ 0x222e1c0

.arm
branch_222e1c0: @ 222e1c0 :arm
	add     r1, r2, #250, 30 @ #0x3e8
	cmp     r0, r1
	bgt     branch_222e1e0
	bge     branch_222e25c
	ldr     r1, [pc, #0xc4] @ [0x222e29c] (=0x55f0)
	cmp     r0, r1
	beq     branch_222e254
	b       branch_222e284
@ 0x222e1e0

.arm
branch_222e1e0: @ 222e1e0 :arm
	ldr     r2, [pc, #0xb8] @ [0x222e2a0] (=0x59d8)
	cmp     r0, r2
	bgt     branch_222e1f4
	beq     branch_222e264
	b       branch_222e284
@ 0x222e1f4

.arm
branch_222e1f4: @ 222e1f4 :arm
	add     r1, r2, #0x3
	cmp     r0, r1
	bgt     branch_222e284
	add     r1, r2, #0x1
	cmp     r0, r1
	blt     branch_222e284
	beq     branch_222e26c
	add     r1, r2, #0x2
	cmp     r0, r1
	beq     branch_222e274
	add     r1, r2, #0x3
	cmp     r0, r1
	beq     branch_222e27c
	b       branch_222e284
@ 0x222e22c

.arm
branch_222e22c: @ 222e22c :arm
	mov     r0, #1, 22 @ #0x400
	b       branch_222e28c
@ 0x222e234

.arm
branch_222e234: @ 222e234 :arm
	mov     r0, #0xe0
	b       branch_222e28c
@ 0x222e23c

.arm
branch_222e23c: @ 222e23c :arm
	mov     r0, #0xc
	b       branch_222e28c
@ 0x222e244

.arm
branch_222e244: @ 222e244 :arm
	mov     r0, #34, 28 @ #0x220
	b       branch_222e28c
@ 0x222e24c

.arm
branch_222e24c: @ 222e24c :arm
	mov     r0, #0xc
	b       branch_222e28c
@ 0x222e254

.arm
branch_222e254: @ 222e254 :arm
	mov     r0, #0x0
	b       branch_222e28c
@ 0x222e25c

.arm
branch_222e25c: @ 222e25c :arm
	mov     r0, #0x24
	b       branch_222e28c
@ 0x222e264

.arm
branch_222e264: @ 222e264 :arm
	ldr     r0, [pc, #0x38] @ [0x222e2a4] (=0x1d4c)
	b       branch_222e28c
@ 0x222e26c

.arm
branch_222e26c: @ 222e26c :arm
	mov     r0, #0x1c
	b       branch_222e28c
@ 0x222e274

.arm
branch_222e274: @ 222e274 :arm
	mov     r0, #0xc
	b       branch_222e28c
@ 0x222e27c

.arm
branch_222e27c: @ 222e27c :arm
	mov     r0, #0x8
	b       branch_222e28c
@ 0x222e284

.arm
branch_222e284: @ 222e284 :arm
	mvn     r0, #0x0
	bx      lr
@ 0x222e28c

.arm
branch_222e28c: @ 222e28c :arm
	add     r0, r0, #5, 26 @ #0x140
	bx      lr
@ 0x222e294

.word 0x5209 @ 0x222e294
.word 0x4e20 @ 0x222e298
.word 0x55f0 @ 0x222e29c
.word 0x59d8 @ 0x222e2a0
.word 0x1d4c @ 0x222e2a4
.arm
Function_222e2a8: @ 222e2a8 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x30
	ldr     r6, [pc, #0x1a0] @ [0x222e458] (=0x222e580)
	add     lr, sp, #0x0
	mov     r12, r0
	mov     r5, lr
	ldmia   r6!, {r0-r3}
	stmia   lr!, {r0-r3}
	ldmia   r6!, {r0-r3}
	stmia   lr!, {r0-r3}
	ldr     r4, [pc, #0x184] @ [0x222e45c] (=0x5209)
	ldmia   r6, {r0-r3}
	stmia   lr, {r0-r3}
	cmp     r12, r4
	bgt     branch_222e340
	bge     branch_222e408
	ldr     r1, [pc, #0x170] @ [0x222e460] (=0x4e20)
	cmp     r12, r1
	bgt     branch_222e31c
	bge     branch_222e3f0
	cmp     r12, #0x0
	bgt     branch_222e440
	mvn     r6, #0x0
	cmp     r12, r6
	blt     branch_222e440
	beq     branch_222e3ac
	cmp     r12, #0x0
	beq     branch_222e3e8
	b       branch_222e440
@ 0x222e31c

.arm
branch_222e31c: @ 222e31c :arm
	add     r0, r1, #0x1
	cmp     r12, r0
	bgt     branch_222e330
	beq     branch_222e3f8
	b       branch_222e440
@ 0x222e330

.arm
branch_222e330: @ 222e330 :arm
	add     r0, r1, #250, 30 @ #0x3e8
	cmp     r12, r0
	beq     branch_222e400
	b       branch_222e440
@ 0x222e340

.arm
branch_222e340: @ 222e340 :arm
	add     r0, r4, #250, 30 @ #0x3e8
	cmp     r12, r0
	bgt     branch_222e360
	bge     branch_222e418
	ldr     r0, [pc, #0x10c] @ [0x222e464] (=0x55f0)
	cmp     r12, r0
	beq     branch_222e410
	b       branch_222e440
@ 0x222e360

.arm
branch_222e360: @ 222e360 :arm
	ldr     r1, [pc, #0x100] @ [0x222e468] (=0x59d8)
	cmp     r12, r1
	bgt     branch_222e374
	beq     branch_222e420
	b       branch_222e440
@ 0x222e374

.arm
branch_222e374: @ 222e374 :arm
	add     r0, r1, #0x3
	cmp     r12, r0
	bgt     branch_222e440
	add     r0, r1, #0x1
	cmp     r12, r0
	blt     branch_222e440
	beq     branch_222e428
	add     r0, r1, #0x2
	cmp     r12, r0
	beq     branch_222e430
	add     r0, r1, #0x3
	cmp     r12, r0
	beq     branch_222e438
	b       branch_222e440
@ 0x222e3ac

.arm
branch_222e3ac: @ 222e3ac :arm
	mov     r7, #0x0
	mov     r4, r6
.arm
branch_222e3b4: @ 222e3b4 :arm
	ldr     r0, [r5, r7, lsl #0x2]
	cmp     r0, r4
	beq     branch_222e3d4
	bl      Function_222e2a8
	cmp     r0, r6
	movgt   r6, r0
	add     r7, r7, #0x1
	b       branch_222e3b4
@ 0x222e3d4

.arm
branch_222e3d4: @ 222e3d4 :arm
	mvn     r0, #0x0
	cmp     r6, r0
	bne     branch_222e44c
	add     sp, sp, #0x30
	ldmfd   sp!, {r3-r7,pc}
@ 0x222e3e8

.arm
branch_222e3e8: @ 222e3e8 :arm
	mov     r6, #1, 22 @ #0x400
	b       branch_222e44c
@ 0x222e3f0

.arm
branch_222e3f0: @ 222e3f0 :arm
	mov     r6, #0x8
	b       branch_222e44c
@ 0x222e3f8

.arm
branch_222e3f8: @ 222e3f8 :arm
	ldr     r6, [pc, #0x6c] @ [0x222e46c] (=0x93c)
	b       branch_222e44c
@ 0x222e400

.arm
branch_222e400: @ 222e400 :arm
	mov     r6, #0x8
	b       branch_222e44c
@ 0x222e408

.arm
branch_222e408: @ 222e408 :arm
	ldr     r6, [pc, #0x60] @ [0x222e470] (=0x2b74)
	b       branch_222e44c
@ 0x222e410

.arm
branch_222e410: @ 222e410 :arm
	mov     r6, #0x4
	b       branch_222e44c
@ 0x222e418

.arm
branch_222e418: @ 222e418 :arm
	mov     r6, #99, 28 @ #0x630
	b       branch_222e44c
@ 0x222e420

.arm
branch_222e420: @ 222e420 :arm
	mov     r6, #0x8
	b       branch_222e44c
@ 0x222e428

.arm
branch_222e428: @ 222e428 :arm
	ldr     r6, [pc, #0x44] @ [0x222e474] (=0x1c24)
	b       branch_222e44c
@ 0x222e430

.arm
branch_222e430: @ 222e430 :arm
	sub     r6, r1, #242, 26 @ #0x3c80
	b       branch_222e44c
@ 0x222e438

.arm
branch_222e438: @ 222e438 :arm
	mov     r6, #0x0
	b       branch_222e44c
@ 0x222e440

.arm
branch_222e440: @ 222e440 :arm
	add     sp, sp, #0x30
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x222e44c

.arm
branch_222e44c: @ 222e44c :arm
	add     r0, r6, #0x8
	add     sp, sp, #0x30
	ldmfd   sp!, {r3-r7,pc}
@ 0x222e458

.word 0x222e580 @ 0x222e458
.word 0x5209 @ 0x222e45c
.word 0x4e20 @ 0x222e460
.word 0x55f0 @ 0x222e464
.word 0x59d8 @ 0x222e468
.word 0x93c @ 0x222e46c
.word 0x2b74 @ 0x222e470
.word 0x1c24 @ 0x222e474
.arm
Function_222e478: @ 222e478 :arm
	bx      lr
@ 0x222e47c


.incbin "./baserom/overlay/overlay_0061.bin", 0x361c, 0x222e48c - 0x222e47c


.word Function_222b14c+1 @ =0x222b14d, 0x222e48c
.word Function_222b138+1 @ =0x222b139, 0x222e490
.word Function_222b168+1 @ =0x222b169, 0x222e494
.word Function_222b190+1 @ =0x222b191, 0x222e498

.incbin "./baserom/overlay/overlay_0061.bin", 0x363c, 0x222e600 - 0x222e49c


.word Function_222c960+1 @ =0x222c961, 0x222e600
.word Function_222ca20+1 @ =0x222ca21, 0x222e604
.word Function_222caa8+1 @ =0x222caa9, 0x222e608
.word Function_222cb2c+1 @ =0x222cb2d, 0x222e60c
.word Function_222cb3c+1 @ =0x222cb3d, 0x222e610
.word Function_222cbf0+1 @ =0x222cbf1, 0x222e614
.word Function_222cc40+1 @ =0x222cc41, 0x222e618
.word Function_222cc64+1 @ =0x222cc65, 0x222e61c
.word Function_222ccac+1 @ =0x222ccad, 0x222e620
.word Function_222ccac+1 @ =0x222ccad, 0x222e624
.word Function_222cce8+1 @ =0x222cce9, 0x222e628
.word Function_222cd58+1 @ =0x222cd59, 0x222e62c
.word Function_222ce14+1 @ =0x222ce15, 0x222e630
.word Function_222ce2c+1 @ =0x222ce2d, 0x222e634
@ 0x222e638


.incbin "./baserom/overlay/overlay_0061.bin", 0x37d8, 0x222e760 - 0x222e638


@end 0x222e760




