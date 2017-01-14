
/*
0x35d400 in arm9.bin
*/

.section .iwram83, "ax"


.thumb
Function_223b5a0: @ 223b5a0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x18]
	bl      Function_223cbfc
	bl      Function_201dcac
	pop     {r3,pc}
@ 0x223b5ae


.align 2, 0
.thumb
Function_223b5b0: @ 223b5b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x38
	lsl     r2, r2, #16
	bl      Function_2017fc8
	ldr     r1, [pc, #0x84] @ 0x223b64c, (=0x1604)
	mov     r0, r5
	mov     r2, #0x38
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0x78] @ 0x223b64c, (=0x1604)
	mov     r5, r0
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	str     r5, [r4, #0x18]
	mov     r1, #0x38
	str     r1, [r5, #0x0]
	mov     r0, #0x10
	bl      Function_201dbec
	ldrh    r0, [r4, #0x6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_223b5f4
	mov     r1, #0x1
	b       branch_223b5f6

branch_223b5f4: @ 223b5f4 :thumb
	mov     r1, #0x0
branch_223b5f6: @ 223b5f6 :thumb
	ldr     r0, [pc, #0x58] @ 0x223b650, (=0x142c)
	str     r1, [r5, r0]
	ldr     r1, [r4, #0x10]
	mov     r0, r5
	ldr     r1, [r1, #0x10]
	bl      Function_223d150
	mov     r0, r4
	add     r0, #0x26
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223b614
	mov     r0, #0x1
	bl      Function_203632c
.thumb
branch_223b614: @ 223b614 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x18]
	bl      Function_2027b50
	str     r0, [r5, #0x24]
	ldr     r0, [r4, #0x10]
	ldr     r0, [r0, #0x18]
	bl      Function_2027ac0
	str     r0, [r5, #0x28]
	mov     r0, #0xae
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x20] @ 0x223b654, (=0x223b5a1)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	ldr     r1, [pc, #0x18] @ 0x223b658, (=0x49f)
	mov     r0, #0xc
	mov     r2, #0x1
	bl      Function_2004550
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b64a

.align 2
.word 0x1604 @ 0x223b64c
.word 0x142c @ 0x223b650
.word Function_223b5a0+1 @ =0x223b5a1, 0x223b654
.word 0x49f @ 0x223b658



.thumb
Function_223b65c: @ 223b65c :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r1
	bl      LoadPtrToOverWorldDataIn18
	mov     r7, r0
	mov     r0, r4
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	ldr     r1, [pc, #0x98] @ 0x223b70c, (=0x224024c)
	str     r0, [sp, #0x0]
	lsl     r0, r0, #3
	add     r1, r1, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223b68a
	cmp     r0, #0x1
	beq     branch_223b6cc
	cmp     r0, #0x2
	beq     branch_223b6dc
	b       branch_223b6f0
@ 0x223b68a

.thumb
branch_223b68a: @ 223b68a :thumb
	ldr     r3, [r1, #0x0]
	cmp     r3, #0x0
	beq     branch_223b6f0
	ldr     r6, [r1, #0x4]
	mov     r2, r4
	mov     r0, r7
	mov     r1, r4
	add     r2, #0x10
	blx     r3
	str     r0, [r4, #0xc]
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	beq     branch_223b6ac
	ldrb    r0, [r4, #0x1a]
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
.thumb
branch_223b6ac: @ 223b6ac :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	beq     branch_223b6f0
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldrh    r0, [r7, #0x6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	beq     branch_223b6f0
	cmp     r6, #0x0
	beq     branch_223b6f0
	str     r6, [r4, #0x8]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b6f0
@ 0x223b6cc

.thumb
branch_223b6cc: @ 223b6cc :thumb
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_20364f0
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_223b6f0
@ 0x223b6dc

.thumb
branch_223b6dc: @ 223b6dc :thumb
	ldr     r0, [r4, #0x8]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_2036540
	cmp     r0, #0x0
	beq     branch_223b6f0
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	str     r0, [r4, #0x8]
.thumb
branch_223b6f0: @ 223b6f0 :thumb
	mov     r0, r4
	bl      Function_223cba4
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x20]
	bl      Function_2038a1c
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_223b708
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b708

.thumb
branch_223b708: @ 223b708 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223b70c

.word 0x224024c @ 0x223b70c
.thumb
Function_223b710: @ 223b710 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      LoadPtrToOverWorldDataIn18
	mov     r4, r0
	mov     r0, r5
	bl      LoadOverlayData1c
	mov     r6, r0
	mov     r0, r4
	add     r0, #0x26
	ldrb    r0, [r0, #0x0]
	ldr     r7, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_223b73a
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_223b73a
	bl      0x21d25fc
.thumb
branch_223b73a: @ 223b73a :thumb
	mov     r0, r6
	bl      Function_223d1ec
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201dc3c
	ldr     r2, [pc, #0x1c] @ 0x223b770, (=0x1604)
	mov     r0, r6
	mov     r1, #0x0
	blx     MI_CpuFill8
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	mov     r0, r7
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b76e


.align 2


.word 0x1604 @ 0x223b770
.thumb
Function_223b774: @ 223b774 :thumb
	strb    r1, [r0, #0x18]
	mov     r1, #0x1
	str     r1, [r0, #0x14]
	bx      lr
@ 0x223b77c

.thumb
Function_223b77c: @ 223b77c :thumb
	strb    r1, [r0, #0x1a]
	mov     r1, #0x1
	strb    r1, [r0, #0x19]
	bx      lr
@ 0x223b784

.thumb
Function_223b784: @ 223b784 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	bx      lr
@ 0x223b78a


.align 2, 0


.thumb
Function_223b78c: @ 223b78c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [r4, #0x0]
	mov     r5, r1
	cmp     r2, #0x0
	beq     branch_223b7a8
	cmp     r2, #0x1
	bne     branch_223b7a0
	b       branch_223b8b2
@ 0x223b7a0

.thumb
branch_223b7a0: @ 223b7a0 :thumb
	cmp     r2, #0x2
	bne     branch_223b7a6
	b       branch_223b8d0
@ 0x223b7a6

.thumb
branch_223b7a6: @ 223b7a6 :thumb
	b       branch_223b8e0
@ 0x223b7a8

.thumb
branch_223b7a8: @ 223b7a8 :thumb
	bl      Function_223c82c
	ldr     r0, [pc, #0x138] @ 0x223b8e8, (=0x1428)
	ldr     r0, [r5, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223b7c2
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_223fdb0
.thumb
branch_223b7c2: @ 223b7c2 :thumb
	ldr     r0, [r5, #0x24]
	ldr     r2, [pc, #0x124] @ 0x223b8ec, (=0x157c)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x124] @ 0x223b8f0, (=0x1424)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x124] @ 0x223b8f4, (=0x54c)
	ldr     r1, [r5, r3]
	add     r3, #0xc
	add     r0, r5, r0
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_223dea0
	ldr     r0, [pc, #0x118] @ 0x223b8f8, (=0x5a4)
	add     r0, r5, r0
	bl      Function_223e340
	ldr     r0, [r5, #0x24]
	ldr     r2, [pc, #0x100] @ 0x223b8ec, (=0x157c)
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x100] @ 0x223b8f0, (=0x1424)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x108] @ 0x223b8fc, (=0x63c)
	ldr     r1, [r5, r3]
	add     r3, #0xc
	add     r0, r5, r0
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_223e6d4
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r5, r0
	bl      Function_223e244
	ldr     r0, [pc, #0xf0] @ 0x223b900, (=0x58c)
	add     r0, r5, r0
	bl      Function_223e244
	ldr     r0, [pc, #0xec] @ 0x223b904, (=0x598)
	add     r0, r5, r0
	bl      Function_223e244
	ldr     r3, [pc, #0xe8] @ 0x223b908, (=0x1430)
	ldr     r0, [pc, #0xec] @ 0x223b90c, (=0x61c)
	mov     r2, r3
	add     r1, r5, r3
	sub     r2, #0xc
	sub     r3, #0x8
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	add     r0, r5, r0
	bl      Function_223e5a4
	ldr     r0, [pc, #0xdc] @ 0x223b910, (=0x674)
	add     r0, r5, r0
	bl      Function_223ed3c
	ldr     r0, [pc, #0xd8] @ 0x223b914, (=0xa88)
	add     r0, r5, r0
	bl      Function_223f29c
	ldr     r1, [pc, #0xac] @ 0x223b8f0, (=0x1424)
	ldr     r0, [pc, #0xd0] @ 0x223b918, (=0xb08)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_223f494
	mov     r0, #0x2d
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_223f820
	mov     r0, r5
	bl      Function_223c958
	bl      Function_2039734
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [pc, #0x84] @ 0x223b8f0, (=0x1424)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	ble     branch_223b87a
	ldr     r0, [pc, #0x80] @ 0x223b8f4, (=0x54c)
	add     r0, r5, r0
	bl      Function_223df84
.thumb
branch_223b87a: @ 223b87a :thumb
	ldr     r0, [pc, #0x7c] @ 0x223b8f8, (=0x5a4)
	mov     r1, #0x3
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223e484
	ldr     r0, [pc, #0x70] @ 0x223b8f8, (=0x5a4)
	mov     r1, #0x4
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223e484
	ldr     r0, [pc, #0x64] @ 0x223b8f8, (=0x5a4)
	mov     r1, #0x5
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223e484
	ldr     r0, [pc, #0x58] @ 0x223b8f8, (=0x5a4)
	mov     r1, #0x6
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223e484
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8b2

.thumb
branch_223b8b2: @ 223b8b2 :thumb
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r3, [pc, #0x5c] @ 0x223b91c, (=0xffff)
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8e0
@ 0x223b8d0

.thumb
branch_223b8d0: @ 223b8d0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223b8e0
	ldr     r0, [r5, #0xc]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r4,r5,pc}
@ 0x223b8e0

.thumb
branch_223b8e0: @ 223b8e0 :thumb
	ldr     r0, [r5, #0xc]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223b8e6


.align 2


.word 0x1428 @ 0x223b8e8
.word 0x157c @ 0x223b8ec
.word 0x1424 @ 0x223b8f0
.word 0x54c @ 0x223b8f4
.word 0x5a4 @ 0x223b8f8
.word 0x63c @ 0x223b8fc
.word 0x58c @ 0x223b900
.word 0x598 @ 0x223b904
.word 0x1430 @ 0x223b908
.word 0x61c @ 0x223b90c
.word 0x674 @ 0x223b910
.word 0xa88 @ 0x223b914
.word 0xb08 @ 0x223b918
.word 0xffff @ 0x223b91c
.thumb
Function_223b920: @ 223b920 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x28] @ 0x223b94c, (=0x1428)
	mov     r4, r1
	ldr     r0, [r4, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223b946
	ldr     r3, [pc, #0x18] @ 0x223b94c, (=0x1428)
	mov     r1, #0x0
	ldr     r3, [r4, r3]
	mov     r0, #0x16
	mov     r2, r1
	bl      Function_223d508
	cmp     r0, #0x0
	bne     branch_223b946
	ldr     r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x223b946

.thumb
branch_223b946: @ 223b946 :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r4,pc}
@ 0x223b94c

.word 0x1428 @ 0x223b94c
.thumb
Function_223b950: @ 223b950 :thumb
	ldr     r0, [r1, #0x14]
	cmp     r0, #0x0
	beq     branch_223b95e
	ldrb    r0, [r1, #0x18]
	str     r0, [r1, #0xc]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
.thumb
branch_223b95e: @ 223b95e :thumb
	ldr     r0, [r1, #0xc]
	bx      lr
@ 0x223b962


.align 2, 0


.thumb
Function_223b964: @ 223b964 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r5, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_223b97a
	cmp     r1, #0x1
	beq     branch_223b990
	cmp     r1, #0x2
	beq     branch_223b9b4
	b       branch_223b9d2
@ 0x223b97a

.thumb
branch_223b97a: @ 223b97a :thumb
	ldr     r1, [pc, #0x60] @ 0x223b9dc, (=0x1424)
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_223db18
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b9d6
@ 0x223b990

.thumb
branch_223b990: @ 223b990 :thumb
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x4c] @ 0x223b9e0, (=0x1430)
	mov     r2, #0x0
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x48] @ 0x223b9e4, (=0x15f8)
	mov     r3, r5
	mov     r1, #0x2
.thumb
branch_223b99e: @ 223b99e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x5
	blt     branch_223b99e
	ldr     r0, [pc, #0x3c] @ 0x223b9e8, (=0x1602)
	strh    r1, [r5, r0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b9d6
@ 0x223b9b4

.thumb
branch_223b9b4: @ 223b9b4 :thumb
	bl      Function_223d4b8
	ldr     r3, [pc, #0x24] @ 0x223b9e0, (=0x1430)
	mov     r2, r0
	add     r1, r5, r3
	sub     r3, #0x8
	ldr     r3, [r5, r3]
	mov     r0, #0x19
	bl      Function_223d508
	cmp     r0, #0x1
	bne     branch_223b9d6
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b9d2

.thumb
branch_223b9d2: @ 223b9d2 :thumb
	bl      ErrorHandling
.thumb
branch_223b9d6: @ 223b9d6 :thumb
	ldr     r0, [r5, #0xc]
	pop     {r3-r5,pc}
@ 0x223b9da


.align 2


.word 0x1424 @ 0x223b9dc
.word 0x1430 @ 0x223b9e0
.word 0x15f8 @ 0x223b9e4
.word 0x1602 @ 0x223b9e8
.thumb
Function_223b9ec: @ 223b9ec :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x5
	bls     branch_223b9fa
	b       branch_223bb18
@ 0x223b9fa

.thumb
branch_223b9fa: @ 223b9fa :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ba06

Jumppoints_223ba06:
.hword branch_223ba12 - Jumppoints_223ba06 - 2
.hword branch_223ba26 - Jumppoints_223ba06 - 2
.hword branch_223ba38 - Jumppoints_223ba06 - 2
.hword branch_223ba78 - Jumppoints_223ba06 - 2
.hword branch_223ba94 - Jumppoints_223ba06 - 2
.hword branch_223baba - Jumppoints_223ba06 - 2
.thumb
branch_223ba12: @ 223ba12 :thumb
	ldr     r0, [pc, #0x108] @ 0x223bb1c, (=0x141c)
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x20]
	add     r0, r4, r0
	bl      Function_223f790
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bb18
@ 0x223ba26

.thumb
branch_223ba26: @ 223ba26 :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223dc68
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bb18
@ 0x223ba38

.thumb
branch_223ba38: @ 223ba38 :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223dd30
	mov     r1, r0
	cmp     r1, #0x1
	bne     branch_223ba5c
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x223bb20, (=0x54c)
	add     r0, r4, r0
	bl      Function_223df70
	mov     r0, #0x18
	str     r0, [r4, #0x1c]
	b       branch_223bb18
@ 0x223ba5c

.thumb
branch_223ba5c: @ 223ba5c :thumb
	cmp     r1, #0x0
	beq     branch_223bb18
	add     r2, r4, r1
	ldr     r1, [pc, #0xc0] @ 0x223bb24, (=0x155e)
	ldr     r0, [pc, #0xb8] @ 0x223bb20, (=0x54c)
	ldrb    r2, [r2, r1]
	sub     r1, #0xc2
	add     r0, r4, r0
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldr     r1, [r2, r1]
	bl      Function_223df30
	b       branch_223bb18
@ 0x223ba78

.thumb
branch_223ba78: @ 223ba78 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	ble     branch_223ba84
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	b       branch_223bb18
@ 0x223ba84

.thumb
branch_223ba84: @ 223ba84 :thumb
	ldr     r0, [pc, #0xa0] @ 0x223bb28, (=0x598)
	add     r0, r4, r0
	bl      Function_223e2fc
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bb18
@ 0x223ba94

.thumb
branch_223ba94: @ 223ba94 :thumb
	ldr     r0, [pc, #0x90] @ 0x223bb28, (=0x598)
	add     r0, r4, r0
	bl      Function_223e32c
	cmp     r0, #0x0
	beq     branch_223bb18
	ldr     r0, [pc, #0x7c] @ 0x223bb20, (=0x54c)
	add     r0, r4, r0
	bl      Function_223dfac
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_223e2e4
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bb18
@ 0x223baba

.thumb
branch_223baba: @ 223baba :thumb
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_223e32c
	mov     r6, r0
	ldr     r0, [pc, #0x64] @ 0x223bb2c, (=0x588)
	ldr     r0, [r4, r0]
	bl      Function_2021e74
	mov     r7, r0
	add     r0, r7, #0x1
	mov     r1, #0x3
	blx     _s32_div_f
	mov     r5, r0
	mov     r0, #0xd6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, r5
	beq     branch_223bafc
	cmp     r7, #0xa
	bge     branch_223baf0
	ldr     r0, [pc, #0x44] @ 0x223bb30, (=0x6bd)
	bl      Function_2005748
	b       branch_223baf6
@ 0x223baf0

.thumb
branch_223baf0: @ 223baf0 :thumb
	ldr     r0, [pc, #0x40] @ 0x223bb34, (=0x6be)
	bl      Function_2005748
.thumb
branch_223baf6: @ 223baf6 :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	str     r5, [r4, r0]
.thumb
branch_223bafc: @ 223bafc :thumb
	cmp     r6, #0x0
	beq     branch_223bb18
	ldr     r0, [pc, #0x34] @ 0x223bb38, (=0x61c)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223e69c
	ldr     r0, [pc, #0x30] @ 0x223bb3c, (=0x5a4)
	add     r0, r4, r0
	bl      Function_223e500
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3-r7,pc}
@ 0x223bb18

.thumb
branch_223bb18: @ 223bb18 :thumb
	ldr     r0, [r4, #0xc]
	pop     {r3-r7,pc}
@ 0x223bb1c

.word 0x141c @ 0x223bb1c
.word 0x54c @ 0x223bb20
.word 0x155e @ 0x223bb24
.word 0x598 @ 0x223bb28
.word 0x588 @ 0x223bb2c
.word 0x6bd @ 0x223bb30
.word 0x6be @ 0x223bb34
.word 0x61c @ 0x223bb38
.word 0x5a4 @ 0x223bb3c
.thumb
Function_223bb40: @ 223bb40 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r0, #0x2d
	mov     r5, r1
	lsl     r0, r0, #4
	add     r0, r5, r0
	bl      Function_223f83c
	ldr     r0, [pc, #0x170] @ 0x223bcc4, (=0x1434)
	mov     r1, #0x2d
	lsl     r1, r1, #4
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_223f88c
	ldr     r0, [pc, #0x168] @ 0x223bcc8, (=0x1428)
	ldr     r0, [r5, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223bbce
	ldr     r2, [pc, #0x160] @ 0x223bccc, (=0x1430)
	mov     r0, #0xba
	add     r1, r5, r2
	sub     r2, #0xc
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_223fdd8
	cmp     r0, #0x1
	bne     branch_223bb92
	ldr     r3, [pc, #0x144] @ 0x223bcc8, (=0x1428)
	mov     r1, #0x0
	ldr     r3, [r5, r3]
	mov     r0, #0x17
	mov     r2, r1
	bl      Function_223d508
	ldr     r0, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x223bb92

.thumb
branch_223bb92: @ 223bb92 :thumb
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      Function_223ffa0
	ldr     r0, [pc, #0x130] @ 0x223bcd0, (=0x1578)
	ldr     r2, [pc, #0x12c] @ 0x223bccc, (=0x1430)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223bbbe
	mov     r0, #0xba
	add     r1, r5, r2
	sub     r2, #0xc
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_223fe50
	ldr     r0, [pc, #0x118] @ 0x223bcd0, (=0x1578)
	mov     r1, #0x1
	str     r1, [r5, r0]
	b       branch_223bbce
@ 0x223bbbe

.thumb
branch_223bbbe: @ 223bbbe :thumb
	mov     r0, #0xba
	add     r1, r5, r2
	sub     r2, #0xc
	lsl     r0, r0, #2
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	bl      Function_223fec0
.thumb
branch_223bbce: @ 223bbce :thumb
	add     r4, #0x26
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223bc84
	ldr     r0, [pc, #0xfc] @ 0x223bcd4, (=0x15f4)
	ldr     r1, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, r0]
	ldr     r2, [r5, r0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_223bc9e
	mov     r1, #0x0
	str     r1, [r5, r0]
	ldr     r0, [pc, #0xdc] @ 0x223bcc8, (=0x1428)
	ldr     r0, [r5, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223bc5e
	mov     r7, #0x1
	mov     r6, r7
	add     r4, r5, #0x2
.thumb
branch_223bbfc: @ 223bbfc :thumb
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_223bc12
	ldr     r0, [pc, #0xcc] @ 0x223bcd8, (=0x15f8)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223bc12
	mov     r7, #0x0
.thumb
branch_223bc12: @ 223bc12 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x8
	blt     branch_223bbfc
	cmp     r7, #0x0
	beq     branch_223bc9e
	bl      Function_223d4bc
	ldr     r3, [pc, #0xa0] @ 0x223bcc4, (=0x1434)
	mov     r2, r0
	add     r1, r5, r3
	sub     r3, #0xc
	ldr     r3, [r5, r3]
	mov     r0, #0x1a
	bl      Function_223d508
	ldr     r0, [pc, #0x9c] @ 0x223bcd0, (=0x1578)
	mov     r1, #0x0
	mov     r7, r0
	str     r1, [r5, r0]
	mov     r6, #0x1
	add     r4, r5, #0x2
	add     r7, #0x80
.thumb
branch_223bc40: @ 223bc40 :thumb
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_223bc54
	ldr     r0, [pc, #0x88] @ 0x223bcd8, (=0x15f8)
	ldrh    r0, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r7]
.thumb
branch_223bc54: @ 223bc54 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, #0x8
	blt     branch_223bc40
	b       branch_223bc9e
@ 0x223bc5e

.thumb
branch_223bc5e: @ 223bc5e :thumb
	ldr     r0, [pc, #0x7c] @ 0x223bcdc, (=0x1602)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223bc9e
	bl      Function_223d4c8
	ldr     r3, [pc, #0x58] @ 0x223bcc4, (=0x1434)
	mov     r2, r0
	add     r1, r5, r3
	sub     r3, #0xc
	ldr     r3, [r5, r3]
	mov     r0, #0x20
	bl      Function_223d508
	ldr     r0, [pc, #0x60] @ 0x223bcdc, (=0x1602)
	ldrh    r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r5, r0]
	b       branch_223bc9e
@ 0x223bc84

.thumb
branch_223bc84: @ 223bc84 :thumb
	bl      Function_223d4bc
	ldr     r3, [pc, #0x38] @ 0x223bcc4, (=0x1434)
	mov     r2, r0
	add     r1, r5, r3
	sub     r3, #0xc
	ldr     r3, [r5, r3]
	mov     r0, #0x1a
	bl      Function_223d508
	ldr     r0, [pc, #0x34] @ 0x223bcd0, (=0x1578)
	mov     r1, #0x0
	str     r1, [r5, r0]
.thumb
branch_223bc9e: @ 223bc9e :thumb
	mov     r0, r5
	bl      Function_223c3e8
	ldr     r0, [pc, #0x38] @ 0x223bce0, (=0x674)
	ldr     r1, [pc, #0x24] @ 0x223bccc, (=0x1430)
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_223eda4
	ldr     r0, [pc, #0x30] @ 0x223bce4, (=0xa88)
	add     r0, r5, r0
	bl      Function_223f378
	ldr     r0, [pc, #0x2c] @ 0x223bce8, (=0xb08)
	add     r0, r5, r0
	bl      Function_223f52c
	ldr     r0, [r5, #0xc]
	pop     {r3-r7,pc}
@ 0x223bcc4

.word 0x1434 @ 0x223bcc4
.word 0x1428 @ 0x223bcc8
.word 0x1430 @ 0x223bccc
.word 0x1578 @ 0x223bcd0
.word 0x15f4 @ 0x223bcd4
.word 0x15f8 @ 0x223bcd8
.word 0x1602 @ 0x223bcdc
.word 0x674 @ 0x223bce0
.word 0xa88 @ 0x223bce4
.word 0xb08 @ 0x223bce8
.thumb
Function_223bcec: @ 223bcec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r4, r1
	ldr     r0, [pc, #0x23c] @ 0x223bf34, (=0x674)
	ldr     r1, [pc, #0x240] @ 0x223bf38, (=0x1430)
	mov     r6, r2
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_223eda4
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x6
	bls     branch_223bd0a
	b       branch_223bf28
@ 0x223bd0a

.thumb
branch_223bd0a: @ 223bd0a :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bd16

Jumppoints_223bd16:
.hword branch_223bd24 - Jumppoints_223bd16 - 2
.hword branch_223bdae - Jumppoints_223bd16 - 2
.hword branch_223bdda - Jumppoints_223bd16 - 2
.hword branch_223bdfa - Jumppoints_223bd16 - 2
.hword branch_223be80 - Jumppoints_223bd16 - 2
.hword branch_223beda - Jumppoints_223bd16 - 2
.hword branch_223bf20 - Jumppoints_223bd16 - 2
.thumb
branch_223bd24: @ 223bd24 :thumb
	ldr     r0, [pc, #0x214] @ 0x223bf3c, (=0x63c)
	add     r0, r4, r0
	bl      Function_223e994
	ldr     r0, [pc, #0x210] @ 0x223bf40, (=0xa88)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x208] @ 0x223bf40, (=0xa88)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x1fc] @ 0x223bf40, (=0xa88)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x1f4] @ 0x223bf40, (=0xa88)
	mov     r1, #0x3
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x1ec] @ 0x223bf44, (=0x58c)
	add     r0, r4, r0
	bl      Function_223e2e4
	ldr     r0, [pc, #0x1e8] @ 0x223bf48, (=0x6ba)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1e4] @ 0x223bf4c, (=0x6bb)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1e0] @ 0x223bf50, (=0x6bf)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1dc] @ 0x223bf54, (=0x6c1)
	mov     r1, #0x0
	bl      Function_20057a4
	ldr     r0, [pc, #0x1d8] @ 0x223bf58, (=0x6c2)
	bl      Function_2005748
	ldr     r0, [pc, #0x1d8] @ 0x223bf5c, (=0x5a4)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, r1
	bl      Function_223e484
	ldr     r0, [pc, #0x1cc] @ 0x223bf5c, (=0x5a4)
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_223e484
	ldr     r0, [pc, #0x1c0] @ 0x223bf5c, (=0x5a4)
	mov     r1, #0x2
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_223e484
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bdae

.thumb
branch_223bdae: @ 223bdae :thumb
	ldr     r0, [pc, #0x194] @ 0x223bf44, (=0x58c)
	add     r0, r4, r0
	bl      Function_223e32c
	cmp     r0, #0x0
	beq     branch_223bde2
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r3, r1
	bl      Function_200f174
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bdda

.thumb
branch_223bdda: @ 223bdda :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_223bde4
.thumb
branch_223bde2: @ 223bde2 :thumb
	b       branch_223bf2c
@ 0x223bde4

.thumb
branch_223bde4: @ 223bde4 :thumb
	add     r7, #0x26
	ldrb    r0, [r7, #0x0]
	cmp     r0, #0x0
	beq     branch_223bdf2
	mov     r0, #0x0
	bl      Function_203632c
.thumb
branch_223bdf2: @ 223bdf2 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bdfa

.thumb
branch_223bdfa: @ 223bdfa :thumb
	ldr     r0, [r7, #0x10]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_14
	ldr     r1, [pc, #0x15c] @ 0x223bf60, (=0x142c)
	mov     r5, r0
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_223be1c
	mov     r1, #0xc
	bl      Function_202cfec
	mov     r0, r5
	mov     r1, #0x34
	bl      Function_202cf28
	b       branch_223be2a
@ 0x223be1c

.thumb
branch_223be1c: @ 223be1c :thumb
	mov     r1, #0x12
	bl      Function_202cfec
	mov     r0, r5
	mov     r1, #0x35
	bl      Function_202cf28
.thumb
branch_223be2a: @ 223be2a :thumb
	ldr     r0, [pc, #0x134] @ 0x223bf60, (=0x142c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223be78
	ldr     r0, [r7, #0x10]
	ldr     r0, [r0, #0xc]
	bl      LoadVariableAreaAdress_1d
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x124] @ 0x223bf64, (=0x1424)
	mov     r5, #0x0
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_223be78
.thumb
branch_223be46: @ 223be46 :thumb
	ldr     r0, [pc, #0x120] @ 0x223bf68, (=0x1560)
	add     r1, r4, r5
	ldrb    r0, [r1, r0]
	bl      Function_2032f1c
	mov     r1, r0
	ldr     r0, [r7, #0x10]
	add     r2, sp, #0x10
	ldr     r0, [r0, #0xc]
	bl      Function_203909c
	cmp     r0, #0x0
	beq     branch_223be64
	cmp     r0, #0x1
	bne     branch_223be6e
.thumb
branch_223be64: @ 223be64 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r2, #0x1
	bl      Function_202b1d0
.thumb
branch_223be6e: @ 223be6e :thumb
	ldr     r0, [pc, #0xf4] @ 0x223bf64, (=0x1424)
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r0, [r4, r0]
	cmp     r5, r0
	blt     branch_223be46
.thumb
branch_223be78: @ 223be78 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223be80

.thumb
branch_223be80: @ 223be80 :thumb
	ldr     r0, [pc, #0xe8] @ 0x223bf6c, (=0x1428)
	ldr     r0, [r4, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223bed2
	ldr     r0, [r4, #0x0]
	bl      Function_202a93c
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0xa0] @ 0x223bf38, (=0x1430)
	str     r0, [sp, #0x0]
	mov     r0, #0xba
	add     r2, r4, r3
	sub     r3, #0xc
	lsl     r0, r0, #2
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_223ffd4
	bl      Function_202a910
	ldr     r3, [pc, #0xb8] @ 0x223bf6c, (=0x1428)
	mov     r2, r0
	ldr     r3, [r4, r3]
	mov     r0, #0x1c
	mov     r1, r5
	bl      Function_223d508
	mov     r7, r0
	mov     r0, r5
	bl      free
	cmp     r7, #0x1
	bne     branch_223bf2c
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bed2

.thumb
branch_223bed2: @ 223bed2 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223beda

.thumb
branch_223beda: @ 223beda :thumb
	ldr     r0, [pc, #0x90] @ 0x223bf6c, (=0x1428)
	ldr     r0, [r4, r0]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223bf18
	ldr     r2, [pc, #0x50] @ 0x223bf38, (=0x1430)
	mov     r0, #0xba
	add     r1, r4, r2
	sub     r2, #0xc
	lsl     r0, r0, #2
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_22401ac
	bl      Function_223d4c0
	ldr     r3, [pc, #0x70] @ 0x223bf70, (=0x1450)
	mov     r2, r0
	add     r1, r4, r3
	sub     r3, #0x28
	ldr     r3, [r4, r3]
	mov     r0, #0x1b
	bl      Function_223d508
	cmp     r0, #0x1
	bne     branch_223bf2c
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bf18

.thumb
branch_223bf18: @ 223bf18 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	b       branch_223bf2c
@ 0x223bf20

.thumb
branch_223bf20: @ 223bf20 :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0x14
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r4-r7,pc}
@ 0x223bf28

.thumb
branch_223bf28: @ 223bf28 :thumb
	bl      ErrorHandling
.thumb
branch_223bf2c: @ 223bf2c :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223bf32


.align 2


.word 0x674 @ 0x223bf34
.word 0x1430 @ 0x223bf38
.word 0x63c @ 0x223bf3c
.word 0xa88 @ 0x223bf40
.word 0x58c @ 0x223bf44
.word 0x6ba @ 0x223bf48
.word 0x6bb @ 0x223bf4c
.word 0x6bf @ 0x223bf50
.word 0x6c1 @ 0x223bf54
.word 0x6c2 @ 0x223bf58
.word 0x5a4 @ 0x223bf5c
.word 0x142c @ 0x223bf60
.word 0x1424 @ 0x223bf64
.word 0x1560 @ 0x223bf68
.word 0x1428 @ 0x223bf6c
.word 0x1450 @ 0x223bf70
.thumb
Function_223bf74: @ 223bf74 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r2
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0xb
	bls     branch_223bf86
	b       branch_223c21c
@ 0x223bf86

.thumb
branch_223bf86: @ 223bf86 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bf92

Jumppoints_223bf92:
.hword branch_223bfaa - Jumppoints_223bf92 - 2
.hword branch_223c006 - Jumppoints_223bf92 - 2
.hword branch_223c01c - Jumppoints_223bf92 - 2
.hword branch_223c040 - Jumppoints_223bf92 - 2
.hword branch_223c06e - Jumppoints_223bf92 - 2
.hword branch_223c09a - Jumppoints_223bf92 - 2
.hword branch_223c0ce - Jumppoints_223bf92 - 2
.hword branch_223c0f4 - Jumppoints_223bf92 - 2
.hword branch_223c10e - Jumppoints_223bf92 - 2
.hword branch_223c18a - Jumppoints_223bf92 - 2
.hword branch_223c1b4 - Jumppoints_223bf92 - 2
.hword branch_223c1f2 - Jumppoints_223bf92 - 2
.thumb
branch_223bfaa: @ 223bfaa :thumb
	ldr     r0, [pc, #0x27c] @ 0x223c228, (=0x63c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_223ec4c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0xae
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x0]
	ldr     r3, [pc, #0x254] @ 0x223c22c, (=0x1414)
	str     r0, [sp, #0x0]
	add     r0, r4, r3
	add     r3, #0x80
	ldrb    r3, [r4, r3]
	mov     r1, #0x80
	mov     r2, #0x90
	bl      Function_223f730
	mov     r0, #0x6
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r3, r2
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c006

.thumb
branch_223c006: @ 223c006 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_223c010
	b       branch_223c220
@ 0x223c010

.thumb
branch_223c010: @ 223c010 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x1e
	str     r0, [r4, #0x1c]
	b       branch_223c220
@ 0x223c01c

.thumb
branch_223c01c: @ 223c01c :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bpl     branch_223c11c
	ldr     r0, [pc, #0x200] @ 0x223c228, (=0x63c)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223ec4c
	ldr     r0, [pc, #0x200] @ 0x223c230, (=0x6c3)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x1e
	str     r0, [r4, #0x1c]
	b       branch_223c220
@ 0x223c040

.thumb
branch_223c040: @ 223c040 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bpl     branch_223c11c
	ldr     r0, [pc, #0x1dc] @ 0x223c228, (=0x63c)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_223ec4c
	ldr     r0, [pc, #0x1d8] @ 0x223c22c, (=0x1414)
	add     r0, r4, r0
	bl      Function_223f784
	ldr     r0, [pc, #0x1d4] @ 0x223c230, (=0x6c3)
	bl      Function_2005748
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x96
	lsl     r0, r0, #2
	str     r0, [r4, #0x1c]
	b       branch_223c220
@ 0x223c06e

.thumb
branch_223c06e: @ 223c06e :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bmi     branch_223c088
	ldr     r0, [pc, #0x1bc] @ 0x223c234, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_223c088
	ldr     r0, [pc, #0x1b8] @ 0x223c238, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_223c090
.thumb
branch_223c088: @ 223c088 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c090

.thumb
branch_223c090: @ 223c090 :thumb
	ldr     r0, [pc, #0x198] @ 0x223c22c, (=0x1414)
	add     r0, r4, r0
	bl      Function_223f784
	b       branch_223c220
@ 0x223c09a

.thumb
branch_223c09a: @ 223c09a :thumb
	ldr     r0, [pc, #0x190] @ 0x223c22c, (=0x1414)
	add     r0, r4, r0
	bl      Function_223f770
	ldr     r0, [pc, #0x184] @ 0x223c228, (=0x63c)
	add     r0, r4, r0
	bl      Function_223ec70
	ldr     r1, [pc, #0x190] @ 0x223c23c, (=0x1530)
	ldr     r2, [pc, #0x190] @ 0x223c240, (=0x1424)
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	mov     r0, r6
	bl      Function_223c8b0
	ldr     r0, [pc, #0x16c] @ 0x223c228, (=0x63c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_223ec8c
	mov     r0, #0x96
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c0ce

.thumb
branch_223c0ce: @ 223c0ce :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x15c] @ 0x223c234, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_223c0ec
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	blt     branch_223c0ec
	ldr     r0, [pc, #0x154] @ 0x223c238, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_223c11c
.thumb
branch_223c0ec: @ 223c0ec :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c0f4

.thumb
branch_223c0f4: @ 223c0f4 :thumb
	ldr     r0, [pc, #0x130] @ 0x223c228, (=0x63c)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223ec8c
	ldr     r0, [pc, #0x144] @ 0x223c244, (=0x141c)
	add     r0, r4, r0
	bl      Function_223f7b0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c10e

.thumb
branch_223c10e: @ 223c10e :thumb
	ldr     r0, [pc, #0x134] @ 0x223c244, (=0x141c)
	add     r0, r4, r0
	bl      Function_223f7dc
	.hword  0x1e41 @ sub r1, r0, #0x1
	cmp     r1, #0x1
	bls     branch_223c11e
.thumb
branch_223c11c: @ 223c11c :thumb
	b       branch_223c220
@ 0x223c11e

.thumb
branch_223c11e: @ 223c11e :thumb
	cmp     r0, #0x1
	bne     branch_223c16a
	ldr     r0, [r6, #0x10]
	ldr     r0, [r0, #0x8]
	bl      Function_202ac98
	cmp     r0, #0x64
	bcc     branch_223c142
	ldr     r0, [pc, #0xf8] @ 0x223c228, (=0x63c)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_223ec8c
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	mov     r0, #0x96
	str     r0, [r4, #0x1c]
	b       branch_223c220
@ 0x223c142

.thumb
branch_223c142: @ 223c142 :thumb
	ldr     r0, [r6, #0x10]
	mov     r1, #0x4
	ldr     r0, [r0, #0x14]
	bl      Function_207d69c
	cmp     r0, #0x0
	bne     branch_223c164
	ldr     r0, [pc, #0xd4] @ 0x223c228, (=0x63c)
	mov     r1, #0x5
	add     r0, r4, r0
	bl      Function_223ec8c
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	mov     r0, #0x96
	str     r0, [r4, #0x1c]
	b       branch_223c220
@ 0x223c164

.thumb
branch_223c164: @ 223c164 :thumb
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_223c16e
@ 0x223c16a

.thumb
branch_223c16a: @ 223c16a :thumb
	mov     r0, #0xb
	str     r0, [r5, #0x0]
.thumb
branch_223c16e: @ 223c16e :thumb
	ldr     r0, [pc, #0xd0] @ 0x223c240, (=0x1424)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	ble     branch_223c220
	ldr     r0, [pc, #0xb0] @ 0x223c228, (=0x63c)
	mov     r1, #0x6
	add     r0, r4, r0
	bl      Function_223ec8c
	ldr     r0, [pc, #0xa4] @ 0x223c228, (=0x63c)
	add     r0, r4, r0
	bl      Function_223e9bc
	b       branch_223c220
@ 0x223c18a

.thumb
branch_223c18a: @ 223c18a :thumb
	mov     r0, #0x35
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	bl      Function_223d4b0
	ldr     r3, [pc, #0xb0] @ 0x223c248, (=0x1428)
	mov     r1, #0x35
	lsl     r1, r1, #4
	mov     r2, r0
	ldr     r3, [r4, r3]
	mov     r0, #0x1e
	add     r1, r4, r1
	bl      Function_223d508
	cmp     r0, #0x1
	bne     branch_223c220
	ldr     r0, [r4, #0xc]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3-r6,pc}
@ 0x223c1b4

.thumb
branch_223c1b4: @ 223c1b4 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x78] @ 0x223c234, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_223c1d2
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	blt     branch_223c1d2
	ldr     r0, [pc, #0x6c] @ 0x223c238, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_223c220
.thumb
branch_223c1d2: @ 223c1d2 :thumb
	ldr     r0, [pc, #0x6c] @ 0x223c240, (=0x1424)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	ble     branch_223c1ec
	ldr     r0, [pc, #0x4c] @ 0x223c228, (=0x63c)
	mov     r1, #0x6
	add     r0, r4, r0
	bl      Function_223ec8c
	ldr     r0, [pc, #0x40] @ 0x223c228, (=0x63c)
	add     r0, r4, r0
	bl      Function_223e9bc
.thumb
branch_223c1ec: @ 223c1ec :thumb
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_223c220
@ 0x223c1f2

.thumb
branch_223c1f2: @ 223c1f2 :thumb
	mov     r0, #0x35
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	bl      Function_223d4b0
	ldr     r3, [pc, #0x48] @ 0x223c248, (=0x1428)
	mov     r1, #0x35
	lsl     r1, r1, #4
	mov     r2, r0
	ldr     r3, [r4, r3]
	mov     r0, #0x1e
	add     r1, r4, r1
	bl      Function_223d508
	cmp     r0, #0x1
	bne     branch_223c220
	ldr     r0, [r4, #0xc]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3-r6,pc}
@ 0x223c21c

.thumb
branch_223c21c: @ 223c21c :thumb
	bl      ErrorHandling
.thumb
branch_223c220: @ 223c220 :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c226


.align 2


.word 0x63c @ 0x223c228
.word 0x1414 @ 0x223c22c
.word 0x6c3 @ 0x223c230
.word 0x21bf6bc @ 0x223c234
.word 0x21bf67c @ 0x223c238
.word 0x1530 @ 0x223c23c
.word 0x1424 @ 0x223c240
.word 0x141c @ 0x223c244
.word 0x1428 @ 0x223c248
.thumb
Function_223c24c: @ 223c24c :thumb
	ldr     r3, [pc, #0x4] @ 0x223c254, (=0x223cb5d)
	mov     r0, r1
	mov     r1, r2
	bx      r3
@ 0x223c254

.word 0x223cb5d @ 0x223c254
.thumb
Function_223c258: @ 223c258 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r2
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	cmp     r0, #0x4
	bhi     branch_223c32e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223c274

Jumppoints_223c274:
.hword branch_223c27e - Jumppoints_223c274 - 2
.hword branch_223c2d8 - Jumppoints_223c274 - 2
.hword branch_223c2e8 - Jumppoints_223c274 - 2
.hword branch_223c308 - Jumppoints_223c274 - 2
.hword branch_223c318 - Jumppoints_223c274 - 2
.thumb
branch_223c27e: @ 223c27e :thumb
	ldr     r0, [pc, #0xb4] @ 0x223c334, (=0x1575)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c296
	ldr     r0, [pc, #0xb0] @ 0x223c338, (=0x63c)
	mov     r1, #0x3
	add     r0, r4, r0
	bl      Function_223ec8c
	mov     r0, #0x1
	str     r0, [r6, #0x20]
	b       branch_223c2cc
@ 0x223c296

.thumb
branch_223c296: @ 223c296 :thumb
	mov     r0, #0x0
	str     r0, [r6, #0x20]
	ldr     r0, [pc, #0xa0] @ 0x223c33c, (=0x1424)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bgt     branch_223c2a8
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_223c32e
@ 0x223c2a8

.thumb
branch_223c2a8: @ 223c2a8 :thumb
	ldr     r0, [pc, #0x8c] @ 0x223c338, (=0x63c)
	mov     r1, #0x4
	add     r0, r4, r0
	bl      Function_223ec8c
	ldr     r0, [pc, #0x8c] @ 0x223c340, (=0x142c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c2cc
	ldr     r0, [r4, #0x0]
	bl      Function_202c1e0
	mov     r1, r0
	ldr     r0, [r6, #0x10]
	mov     r2, #0x4
	ldr     r0, [r0, #0x1c]
	bl      Function_202b758
.thumb
branch_223c2cc: @ 223c2cc :thumb
	mov     r0, #0x3c
	str     r0, [r4, #0x1c]
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c32e
@ 0x223c2d8

.thumb
branch_223c2d8: @ 223c2d8 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	bpl     branch_223c32e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c32e
@ 0x223c2e8

.thumb
branch_223c2e8: @ 223c2e8 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c32e
@ 0x223c308

.thumb
branch_223c308: @ 223c308 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223c32e
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223c32e
@ 0x223c318

.thumb
branch_223c318: @ 223c318 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223cb8c
	mov     r0, r4
	bl      Function_223caa4
	ldr     r0, [r4, #0xc]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3-r6,pc}
@ 0x223c32e

.thumb
branch_223c32e: @ 223c32e :thumb
	ldr     r0, [r4, #0xc]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c334

.word 0x1575 @ 0x223c334
.word 0x63c @ 0x223c338
.word 0x1424 @ 0x223c33c
.word 0x142c @ 0x223c340
.thumb
Function_223c344: @ 223c344 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xd7
	mov     r4, r1
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223db30
	ldr     r0, [pc, #0x68] @ 0x223c3c0, (=0x54c)
	add     r0, r4, r0
	bl      Function_223dec4
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_223e260
	ldr     r0, [pc, #0x5c] @ 0x223c3c4, (=0x58c)
	add     r0, r4, r0
	bl      Function_223e260
	ldr     r0, [pc, #0x58] @ 0x223c3c8, (=0x598)
	add     r0, r4, r0
	bl      Function_223e260
	ldr     r0, [pc, #0x54] @ 0x223c3cc, (=0x5a4)
	add     r0, r4, r0
	bl      Function_223e34c
	ldr     r0, [pc, #0x50] @ 0x223c3d0, (=0x61c)
	add     r0, r4, r0
	bl      Function_223e5c0
	ldr     r0, [pc, #0x4c] @ 0x223c3d4, (=0x63c)
	add     r0, r4, r0
	bl      Function_223e6f8
	ldr     r0, [pc, #0x48] @ 0x223c3d8, (=0x674)
	add     r0, r4, r0
	bl      Function_223ed4c
	ldr     r0, [pc, #0x44] @ 0x223c3dc, (=0xa88)
	add     r0, r4, r0
	bl      Function_223f2a8
	ldr     r0, [pc, #0x40] @ 0x223c3e0, (=0xb08)
	add     r0, r4, r0
	bl      Function_223f4ac
	ldr     r0, [pc, #0x3c] @ 0x223c3e4, (=0x141c)
	add     r0, r4, r0
	bl      Function_223f7a4
	mov     r0, r5
	mov     r1, r4
	bl      Function_223c87c
	mov     r0, r4
	bl      Function_223b784
	ldr     r0, [r4, #0xc]
	pop     {r3-r5,pc}
@ 0x223c3c0

.word 0x54c @ 0x223c3c0
.word 0x58c @ 0x223c3c4
.word 0x598 @ 0x223c3c8
.word 0x5a4 @ 0x223c3cc
.word 0x61c @ 0x223c3d0
.word 0x63c @ 0x223c3d4
.word 0x674 @ 0x223c3d8
.word 0xa88 @ 0x223c3dc
.word 0xb08 @ 0x223c3e0
.word 0x141c @ 0x223c3e4
.thumb
Function_223c3e8: @ 223c3e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x80] @ 0x223c470, (=0x14c8)
	add     r4, r5, r0
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x7c] @ 0x223c474, (=0x15f0)
	bne     branch_223c400
	ldrh    r2, [r5, r0]
	ldrh    r1, [r4, #0xa]
	add     r1, r2, r1
	b       branch_223c406
@ 0x223c400

.thumb
branch_223c400: @ 223c400 :thumb
	ldrh    r2, [r5, r0]
	ldrh    r1, [r4, #0xa]
	sub     r1, r2, r1
.thumb
branch_223c406: @ 223c406 :thumb
	strh    r1, [r5, r0]
	ldr     r1, [pc, #0x68] @ 0x223c474, (=0x15f0)
	ldr     r0, [pc, #0x6c] @ 0x223c478, (=0x5a4)
	ldrh    r1, [r5, r1]
	add     r0, r5, r0
	bl      Function_223e4a4
	mov     r0, r5
	bl      Function_223c90c
	ldrh    r0, [r4, #0xa]
	ldrb    r1, [r4, #0xd]
	bl      Function_223fb68
	mov     r1, r0
	ldr     r0, [pc, #0x50] @ 0x223c478, (=0x5a4)
	add     r0, r5, r0
	bl      Function_223e4c0
	ldr     r0, [pc, #0x48] @ 0x223c478, (=0x5a4)
	ldrb    r1, [r4, #0xd]
	add     r0, r5, r0
	bl      Function_223e51c
	ldr     r0, [pc, #0x44] @ 0x223c47c, (=0x61c)
	add     r0, r5, r0
	bl      Function_223e658
	mov     r0, r5
	bl      Function_223c480
	mov     r0, r5
	bl      Function_223c758
	mov     r0, r5
	bl      Function_223c558
	mov     r0, r5
	bl      Function_223c600
	mov     r0, r5
	bl      Function_223c6d4
	mov     r0, r5
	bl      Function_223c7fc
	mov     r0, #0x0
	strb    r0, [r4, #0x13]
	strb    r0, [r4, #0x12]
	strb    r0, [r4, #0xf]
	strb    r0, [r4, #0xe]
	pop     {r3-r5,pc}
@ 0x223c46e


.align 2


.word 0x14c8 @ 0x223c470
.word 0x15f0 @ 0x223c474
.word 0x5a4 @ 0x223c478
.word 0x61c @ 0x223c47c
.thumb
Function_223c480: @ 223c480 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xac] @ 0x223c534, (=0x14c8)
	mov     r2, #0x7
	add     r4, r5, r0
	ldrb    r3, [r4, #0xd]
	ldr     r0, [pc, #0xa8] @ 0x223c538, (=0x5a4)
	mov     r1, #0x5
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0xa4] @ 0x223c53c, (=0x2240234)
	add     r0, r5, r0
	ldrb    r2, [r2, r6]
	bl      Function_223e484
	ldrb    r3, [r4, #0xd]
	ldr     r0, [pc, #0x94] @ 0x223c538, (=0x5a4)
	mov     r2, #0x7
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x94] @ 0x223c540, (=0x2240235)
	add     r0, r5, r0
	ldrb    r2, [r2, r6]
	mov     r1, #0x6
	bl      Function_223e484
	ldrb    r2, [r4, #0xd]
	ldr     r0, [pc, #0x80] @ 0x223c538, (=0x5a4)
	mov     r1, #0x7
	mov     r3, r2
	ldr     r2, [pc, #0x84] @ 0x223c544, (=0x2240236)
	mul     r3, r1
	ldrb    r2, [r2, r3]
	add     r0, r5, r0
	bl      Function_223e484
	ldrb    r3, [r4, #0xd]
	ldr     r0, [pc, #0x6c] @ 0x223c538, (=0x5a4)
	mov     r2, #0x7
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x74] @ 0x223c548, (=0x2240237)
	add     r0, r5, r0
	ldrb    r2, [r2, r6]
	mov     r1, #0x0
	bl      Function_223e484
	ldrb    r3, [r4, #0xd]
	ldr     r0, [pc, #0x54] @ 0x223c538, (=0x5a4)
	mov     r2, #0x7
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x60] @ 0x223c54c, (=0x2240238)
	add     r0, r5, r0
	ldrb    r2, [r2, r6]
	mov     r1, #0x1
	bl      Function_223e484
	ldrb    r3, [r4, #0xd]
	ldr     r0, [pc, #0x40] @ 0x223c538, (=0x5a4)
	mov     r2, #0x7
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x50] @ 0x223c550, (=0x2240239)
	add     r0, r5, r0
	ldrb    r2, [r2, r6]
	mov     r1, #0x2
	bl      Function_223e484
	ldrb    r1, [r4, #0xd]
	mov     r0, #0x7
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x40] @ 0x223c554, (=0x224023a)
	ldrb    r1, [r0, r2]
	cmp     r1, #0x8
	beq     branch_223c532
	ldrb    r2, [r4, #0x10]
	ldr     r0, [pc, #0x18] @ 0x223c538, (=0x5a4)
	cmp     r2, #0x0
	beq     branch_223c52a
	add     r0, r5, r0
	bl      Function_223e4e0
	pop     {r4-r6,pc}
@ 0x223c52a

.thumb
branch_223c52a: @ 223c52a :thumb
	add     r0, r5, r0
	mov     r2, #0x0
	bl      Function_223e484
.thumb
branch_223c532: @ 223c532 :thumb
	pop     {r4-r6,pc}
@ 0x223c534

.word 0x14c8 @ 0x223c534
.word 0x5a4 @ 0x223c538
.word 0x2240234 @ 0x223c53c
.word 0x2240235 @ 0x223c540
.word 0x2240236 @ 0x223c544
.word 0x2240237 @ 0x223c548
.word 0x2240238 @ 0x223c54c
.word 0x2240239 @ 0x223c550
.word 0x224023a @ 0x223c554
.thumb
Function_223c558: @ 223c558 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x94] @ 0x223c5f4, (=0x14c8)
	add     r1, r4, r0
	ldrb    r2, [r1, #0x11]
	ldrb    r0, [r1, #0xc]
	cmp     r2, r0
	beq     branch_223c578
	ldrh    r0, [r1, #0xa]
	cmp     r0, #0x0
	beq     branch_223c578
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223c596
.thumb
branch_223c578: @ 223c578 :thumb
	ldr     r0, [pc, #0x7c] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x74] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x3
	add     r0, r4, r0
	bl      Function_223f3d0
	mov     r0, #0xb1
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c596

.thumb
branch_223c596: @ 223c596 :thumb
	cmp     r2, #0x0
	bne     branch_223c5c6
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_223c5f0
	ldr     r0, [pc, #0x54] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223f3a0
	mov     r0, #0xb1
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x40] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x3
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x3c] @ 0x223c5fc, (=0x6c1)
	bl      Function_2005748
	pop     {r4,pc}
@ 0x223c5c6

.thumb
branch_223c5c6: @ 223c5c6 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x2
	beq     branch_223c5f0
	ldr     r0, [pc, #0x28] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x3
	add     r0, r4, r0
	bl      Function_223f3a0
	mov     r0, #0xb1
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x14] @ 0x223c5f8, (=0xa88)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x10] @ 0x223c5fc, (=0x6c1)
	bl      Function_2005748
.thumb
branch_223c5f0: @ 223c5f0 :thumb
	pop     {r4,pc}
@ 0x223c5f2


.align 2


.word 0x14c8 @ 0x223c5f4
.word 0xa88 @ 0x223c5f8
.word 0x6c1 @ 0x223c5fc
.thumb
Function_223c600: @ 223c600 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xbc] @ 0x223c6c4, (=0x14c8)
	mov     r1, #0xb1
	lsl     r1, r1, #2
	add     r4, r5, r0
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_223c61a
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223c630
.thumb
branch_223c61a: @ 223c61a :thumb
	ldr     r0, [pc, #0xac] @ 0x223c6c8, (=0x63c)
	add     r0, r5, r0
	bl      Function_223e994
	mov     r0, #0xb3
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x223c630

.thumb
branch_223c630: @ 223c630 :thumb
	add     r1, #0x8
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_223c664
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x0
	beq     branch_223c678
	ldr     r0, [pc, #0x88] @ 0x223c6c8, (=0x63c)
	add     r0, r5, r0
	bl      Function_223e994
	ldr     r0, [pc, #0x80] @ 0x223c6c8, (=0x63c)
	ldrb    r2, [r4, #0xd]
	ldr     r1, [pc, #0x80] @ 0x223c6cc, (=Unknown_2240208)
	add     r0, r5, r0
	ldrb    r1, [r1, r2]
	bl      Function_223e908
	mov     r0, #0xb3
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r5, r0]
	b       branch_223c678
@ 0x223c664

.thumb
branch_223c664: @ 223c664 :thumb
	ldr     r0, [pc, #0x60] @ 0x223c6c8, (=0x63c)
	add     r0, r5, r0
	bl      Function_223e984
	cmp     r0, #0x0
	beq     branch_223c678
	mov     r0, #0xb3
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_223c678: @ 223c678 :thumb
	mov     r0, #0xb2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223c6ae
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	beq     branch_223c6c2
	ldr     r0, [pc, #0x3c] @ 0x223c6c8, (=0x63c)
	add     r0, r5, r0
	bl      Function_223e994
	ldr     r0, [pc, #0x34] @ 0x223c6c8, (=0x63c)
	ldrb    r2, [r4, #0xd]
	ldr     r1, [pc, #0x38] @ 0x223c6d0, (=0x224020c)
	add     r0, r5, r0
	ldrb    r1, [r1, r2]
	bl      Function_223e908
	mov     r0, #0xb2
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x223c6ae

.thumb
branch_223c6ae: @ 223c6ae :thumb
	ldr     r0, [pc, #0x18] @ 0x223c6c8, (=0x63c)
	add     r0, r5, r0
	bl      Function_223e984
	cmp     r0, #0x0
	beq     branch_223c6c2
	mov     r0, #0xb2
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
branch_223c6c2: @ 223c6c2 :thumb
	pop     {r3-r5,pc}
@ 0x223c6c4

.word 0x14c8 @ 0x223c6c4
.word 0x63c @ 0x223c6c8
.word Unknown_2240208 @ 0x223c6cc
.word 0x224020c @ 0x223c6d0



.thumb
Function_223c6d4: @ 223c6d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x6c] @ 0x223c748, (=0x14c8)
	add     r4, r5, r0
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x0
	beq     branch_223c6fe
	ldr     r0, [pc, #0x68] @ 0x223c74c, (=0x674)
	ldrb    r1, [r4, #0xd]
	add     r0, r5, r0
	mov     r2, #0x2
	bl      Function_223eddc
	ldrb    r0, [r4, #0xd]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x5c] @ 0x223c750, (=0x2240210)
	ldr     r0, [r0, r1]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_223c6fe: @ 223c6fe :thumb
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x1
	bne     branch_223c722
	ldr     r0, [pc, #0x44] @ 0x223c74c, (=0x674)
	ldrb    r1, [r4, #0xd]
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_223eddc
	ldrb    r0, [r4, #0xd]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x3c] @ 0x223c754, (=0x224021c)
	ldr     r0, [r0, r1]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
	b       branch_223c732
@ 0x223c722

.thumb
branch_223c722: @ 223c722 :thumb
	cmp     r0, #0x2
	bne     branch_223c732
	ldr     r0, [pc, #0x24] @ 0x223c74c, (=0x674)
	ldrb    r1, [r4, #0xd]
	add     r0, r5, r0
	mov     r2, #0x0
	bl      Function_223eddc
.thumb
branch_223c732: @ 223c732 :thumb
	ldrh    r0, [r4, #0xa]
	ldrb    r1, [r4, #0xd]
	bl      Function_223fb50
	cmp     r0, #0x0
	bne     branch_223c746
	ldr     r0, [pc, #0xc] @ 0x223c74c, (=0x674)
	add     r0, r5, r0
	bl      Function_223efcc
.thumb
branch_223c746: @ 223c746 :thumb
	pop     {r3-r5,pc}
@ 0x223c748

.word 0x14c8 @ 0x223c748
.word 0x674 @ 0x223c74c
.word 0x2240210 @ 0x223c750
.word 0x224021c @ 0x223c754
.thumb
Function_223c758: @ 223c758 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x90] @ 0x223c7f0, (=0x14c8)
	add     r1, r4, r0
	ldrb    r0, [r1, #0xe]
	cmp     r0, #0x0
	beq     branch_223c7b0
	ldrb    r0, [r1, #0x11]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x88] @ 0x223c7f4, (=0xa88)
	bne     branch_223c790
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_223f3a0
	ldr     r0, [pc, #0x7c] @ 0x223c7f4, (=0xa88)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x74] @ 0x223c7f8, (=0x6c1)
	bl      Function_2005748
	mov     r0, #0xb
	mov     r1, #0x1
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	b       branch_223c7b0
@ 0x223c790

.thumb
branch_223c790: @ 223c790 :thumb
	add     r0, r4, r0
	mov     r1, #0x2
	bl      Function_223f3a0
	ldr     r0, [pc, #0x58] @ 0x223c7f4, (=0xa88)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_223f3d0
	ldr     r0, [pc, #0x54] @ 0x223c7f8, (=0x6c1)
	bl      Function_2005748
	mov     r0, #0xb
	mov     r1, #0x2
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_223c7b0: @ 223c7b0 :thumb
	mov     r0, #0xb
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c7d2
	ldr     r0, [pc, #0x38] @ 0x223c7f4, (=0xa88)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_223f3f0
	cmp     r0, #0x1
	bne     branch_223c7ec
	mov     r0, #0xb
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c7d2

.thumb
branch_223c7d2: @ 223c7d2 :thumb
	cmp     r0, #0x2
	bne     branch_223c7ec
	ldr     r0, [pc, #0x1c] @ 0x223c7f4, (=0xa88)
	mov     r1, #0x2
	add     r0, r4, r0
	bl      Function_223f3f0
	cmp     r0, #0x1
	bne     branch_223c7ec
	mov     r0, #0xb
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_223c7ec: @ 223c7ec :thumb
	pop     {r4,pc}
@ 0x223c7ee


.align 2


.word 0x14c8 @ 0x223c7f0
.word 0xa88 @ 0x223c7f4
.word 0x6c1 @ 0x223c7f8
.thumb
Function_223c7fc: @ 223c7fc :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x20] @ 0x223c820, (=0x1434)
	add     r2, r3, #0x1
	ldrb    r1, [r0, r3]
	add     r3, #0xa3
	ldrb    r3, [r0, r3]
	ldrb    r2, [r0, r2]
	cmp     r3, #0x1
	bne     branch_223c81c
	ldr     r3, [pc, #0x14] @ 0x223c824, (=0xb08)
	add     r0, r0, r3
	bl      Function_223f544
	ldr     r0, [pc, #0x10] @ 0x223c828, (=0x6bf)
	bl      Function_2005748
.thumb
branch_223c81c: @ 223c81c :thumb
	pop     {r3,pc}
@ 0x223c81e


.align 2


.word 0x1434 @ 0x223c820
.word 0xb08 @ 0x223c824
.word 0x6bf @ 0x223c828
.thumb
Function_223c82c: @ 223c82c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_202a93c
	ldr     r1, [pc, #0x34] @ 0x223c870, (=0x1530)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x34] @ 0x223c874, (=0x1428)
	ldr     r0, [r4, r0]
	bl      Function_223d570
	ldr     r1, [pc, #0x30] @ 0x223c878, (=0x1574)
	mov     r6, #0x0
	strb    r0, [r4, r1]
	mov     r0, r1
	mov     r3, #0x80
	mov     r2, #0x60
	sub     r0, #0xb4
	sub     r1, #0xb3
.thumb
branch_223c854: @ 223c854 :thumb
	strb    r3, [r4, r0]
	strb    r2, [r4, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x1c
	cmp     r6, #0x4
	blt     branch_223c854
	add     r5, #0x26
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223c86e
	mov     r0, #0x2
	bl      Function_2035938
.thumb
branch_223c86e: @ 223c86e :thumb
	pop     {r4-r6,pc}
@ 0x223c870

.word 0x1530 @ 0x223c870
.word 0x1428 @ 0x223c874
.word 0x1574 @ 0x223c878
.thumb
Function_223c87c: @ 223c87c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x28] @ 0x223c8ac, (=0x1530)
	mov     r4, r1
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223c88e
	bl      ErrorHandling
.thumb
branch_223c88e: @ 223c88e :thumb
	ldr     r0, [pc, #0x1c] @ 0x223c8ac, (=0x1530)
	ldr     r0, [r4, r0]
	bl      free
	ldr     r1, [pc, #0x14] @ 0x223c8ac, (=0x1530)
	mov     r0, #0x0
	add     r5, #0x26
	str     r0, [r4, r1]
	ldrb    r1, [r5, #0x0]
	cmp     r1, #0x0
	beq     branch_223c8a8
	bl      Function_2035938
.thumb
branch_223c8a8: @ 223c8a8 :thumb
	pop     {r3-r5,pc}
@ 0x223c8aa


.align 2


.word 0x1530 @ 0x223c8ac
.thumb
Function_223c8b0: @ 223c8b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x10]
	mov     r7, r1
	ldr     r0, [r0, #0xc]
	mov     r6, r2
	bl      Function_202440c
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r6, #0x0
	ble     branch_223c8ea
.thumb
branch_223c8ce: @ 223c8ce :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, r7
	ldr     r0, [r0, #0x8]
	bl      Function_202ab74
	ldr     r1, [pc, #0x2c] @ 0x223c908, (=0xffff)
	cmp     r0, r1
	bne     branch_223c8e4
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	b       branch_223c8ea
@ 0x223c8e4

.thumb
branch_223c8e4: @ 223c8e4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_223c8ce
.thumb
branch_223c8ea: @ 223c8ea :thumb
	add     r5, #0x26
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_223c902
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_202a974
	mov     r1, r0
	ldr     r0, [sp, #0x0]
	bl      Function_206cfcc
.thumb
branch_223c902: @ 223c902 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223c908

.word 0xffff @ 0x223c908
.thumb
Function_223c90c: @ 223c90c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x223c950, (=0x14c8)
	add     r4, r5, r0
	ldrb    r2, [r4, #0xc]
	cmp     r2, #0x0
	bne     branch_223c926
	mov     r0, #0xd5
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldrh    r0, [r4, #0x8]
	cmp     r1, r0
	bgt     branch_223c936
.thumb
branch_223c926: @ 223c926 :thumb
	cmp     r2, #0x1
	bne     branch_223c946
	mov     r0, #0xd5
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldrh    r0, [r4, #0x8]
	cmp     r1, r0
	bge     branch_223c946
.thumb
branch_223c936: @ 223c936 :thumb
	ldrb    r0, [r4, #0xd]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x18] @ 0x223c954, (=0x2240228)
	ldr     r0, [r0, r1]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2005748
.thumb
branch_223c946: @ 223c946 :thumb
	ldrh    r1, [r4, #0x8]
	mov     r0, #0xd5
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x223c950

.word 0x14c8 @ 0x223c950
.word 0x2240228 @ 0x223c954
.thumb
Function_223c958: @ 223c958 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x7a
	bl      LoadFromNARC_8
	mov     r4, r0
	mov     r0, r5
	bl      Function_223ce9c
	mov     r0, r5
	ldr     r1, [r5, #0x0]
	add     r0, #0x20
	bl      Function_223cc30
	mov     r0, r5
	bl      Function_223cd64
	mov     r0, r5
	bl      Function_223ccf8
	mov     r0, r5
	bl      Function_223cd28
	mov     r0, r5
	mov     r1, r4
	bl      Function_223cdd0
	ldr     r0, [pc, #0xe8] @ 0x223ca7c, (=0x54c)
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x0]
	add     r0, r5, r0
	mov     r3, r4
	bl      Function_223dee0
	ldr     r0, [pc, #0xdc] @ 0x223ca80, (=0x63c)
	ldr     r1, [r5, #0x20]
	ldr     r2, [r5, #0x0]
	add     r0, r5, r0
	mov     r3, r4
	bl      Function_223e720
	mov     r1, #0xaf
	ldr     r0, [pc, #0xd0] @ 0x223ca84, (=0x5a4)
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r5, #0x0]
	add     r0, r5, r0
	mov     r3, r4
	bl      Function_223e368
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x16
	mov     r2, #0x5a
	lsl     r0, r0, #6
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223e28c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa0] @ 0x223ca88, (=0x598)
	mov     r2, #0x5a
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223e28c
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x88] @ 0x223ca8c, (=0x58c)
	mov     r2, #0x5a
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223e28c
	ldr     r0, [pc, #0x78] @ 0x223ca90, (=0x61c)
	mov     r2, #0x5a
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223e5dc
	ldr     r0, [pc, #0x68] @ 0x223ca94, (=0x674)
	mov     r2, #0x5a
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223ed6c
	ldr     r0, [pc, #0x58] @ 0x223ca98, (=0xa88)
	mov     r1, r5
	ldr     r2, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	mov     r3, r4
	bl      Function_223f2c4
	ldr     r0, [pc, #0x4c] @ 0x223ca9c, (=0xb08)
	mov     r2, #0x5a
	mov     r1, r5
	lsl     r2, r2, #2
	ldr     r3, [r5, #0x0]
	add     r0, r5, r0
	add     r1, #0x2c
	add     r2, r5, r2
	bl      Function_223f4cc
	mov     r0, r5
	bl      Function_223cf2c
	mov     r0, r4
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x30] @ 0x223caa0, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223ca7a


.align 2


.word 0x54c @ 0x223ca7c
.word 0x63c @ 0x223ca80
.word 0x5a4 @ 0x223ca84
.word 0x598 @ 0x223ca88
.word 0x58c @ 0x223ca8c
.word 0x61c @ 0x223ca90
.word 0x674 @ 0x223ca94
.word 0xa88 @ 0x223ca98
.word 0xb08 @ 0x223ca9c
.word 0x21bf6dc @ 0x223caa0
.thumb
Function_223caa4: @ 223caa4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x88] @ 0x223cb34, (=0x63c)
	add     r0, r4, r0
	bl      Function_223e760
	ldr     r0, [pc, #0x84] @ 0x223cb38, (=0x54c)
	add     r0, r4, r0
	bl      Function_223df10
	ldr     r0, [pc, #0x80] @ 0x223cb3c, (=0x5a4)
	add     r0, r4, r0
	bl      Function_223e438
	mov     r0, r4
	bl      Function_223ce7c
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_223e2c8
	ldr     r0, [pc, #0x6c] @ 0x223cb40, (=0x58c)
	add     r0, r4, r0
	bl      Function_223e2c8
	ldr     r0, [pc, #0x68] @ 0x223cb44, (=0x598)
	add     r0, r4, r0
	bl      Function_223e2c8
	ldr     r0, [pc, #0x64] @ 0x223cb48, (=0x61c)
	add     r0, r4, r0
	bl      Function_223e63c
	ldr     r0, [pc, #0x60] @ 0x223cb4c, (=0x674)
	add     r0, r4, r0
	bl      Function_223ed78
	ldr     r0, [pc, #0x5c] @ 0x223cb50, (=0xa88)
	add     r0, r4, r0
	bl      Function_223f348
	ldr     r0, [pc, #0x58] @ 0x223cb54, (=0xb08)
	add     r0, r4, r0
	bl      Function_223f510
	mov     r0, r4
	add     r0, #0x20
	bl      Function_223cccc
	mov     r0, r4
	bl      Function_223cd1c
	mov     r0, r4
	bl      Function_223cdc0
	mov     r0, r4
	bl      Function_223cd54
	mov     r0, r4
	bl      Function_223cf20
	mov     r0, r4
	bl      Function_223d068
	ldr     r0, [pc, #0x30] @ 0x223cb58, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      Function_201ffe8
	pop     {r4,pc}
@ 0x223cb32


.align 2


.word 0x63c @ 0x223cb34
.word 0x54c @ 0x223cb38
.word 0x5a4 @ 0x223cb3c
.word 0x58c @ 0x223cb40
.word 0x598 @ 0x223cb44
.word 0x61c @ 0x223cb48
.word 0x674 @ 0x223cb4c
.word 0xa88 @ 0x223cb50
.word 0xb08 @ 0x223cb54
.word 0x21bf6dc @ 0x223cb58
.thumb
Function_223cb5c: @ 223cb5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223cb88, (=0x149c)
	str     r0, [sp, #0x0]
	mov     r0, #0xd7
	mov     r3, #0x5a
	lsl     r0, r0, #2
	mov     r2, r4
	lsl     r3, r3, #2
	add     r0, r4, r0
	add     r1, r4, r1
	add     r2, #0x2c
	add     r3, r4, r3
	bl      Function_223db4c
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cb86


.align 2


.word 0x149c @ 0x223cb88
.thumb
Function_223cb8c: @ 223cb8c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2
	mov     r1, r4
	add     r0, r4, r0
	add     r1, #0x2c
	bl      Function_223dc1c
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r4,pc}
@ 0x223cba4

.thumb
Function_223cba4: @ 223cba4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Call_G3X_Reset
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     Function_20b275c
	blx     Function_20b2628
	blx     Function_20a73c0
	mov     r0, #0xaf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223cbce
	bl      Function_20150ec
.thumb
branch_223cbce: @ 223cbce :thumb
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     Function_20b275c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_20241bc
	mov     r0, #0xae
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223cbf6
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_223cbf6
	bl      Function_20219f8
.thumb
branch_223cbf6: @ 223cbf6 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cbfa


.align 2, 0


.thumb
Function_223cbfc: @ 223cbfc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200a858
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_223cc0e
	bl      Function_201c2b8
.thumb
branch_223cc0e: @ 223cc0e :thumb
	pop     {r4,pc}
@ 0x223cc10

.thumb
Function_223cc10: @ 223cc10 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223cc2c, (=0x22402f0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223cc1a: @ 223cc1a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223cc1a
	add     r0, sp, #0x0
	bl      Function_201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223cc2c

.word 0x22402f0 @ 0x223cc2c
.thumb
Function_223cc30: @ 223cc30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x88
	str     r1, [sp, #0x0]
	mov     r6, r0
	bl      Function_223cc10
	ldr     r0, [sp, #0x0]
	bl      Function_2018340
	add     r3, sp, #0x8
	ldr     r4, [pc, #0x78] @ 0x223ccc0, (=0x22402e0)
	str     r0, [r6, #0x0]
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_2018368
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x0
	mov     r1, #0x2
	bl      Function_2019060
	ldr     r4, [pc, #0x58] @ 0x223ccc4, (=0x2240318)
	add     r3, sp, #0x18
	mov     r2, #0xe
.thumb
branch_223cc6e: @ 223cc6e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223cc6e
	ldr     r1, [pc, #0x50] @ 0x223ccc8, (=0x22402bc)
	add     r0, sp, #0x4
	ldrb    r2, [r1, #0x0]
	mov     r7, #0x0
	add     r5, sp, #0x4
	strb    r2, [r0, #0x0]
	ldrb    r2, [r1, #0x1]
	add     r4, sp, #0x18
	strb    r2, [r0, #0x1]
	ldrb    r2, [r1, #0x2]
	ldrb    r1, [r1, #0x3]
	strb    r2, [r0, #0x2]
	strb    r1, [r0, #0x3]
.thumb
branch_223cc90: @ 223cc90 :thumb
	ldrb    r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r2, r4
	mov     r3, #0x0
	bl      Function_20183c4
	ldrb    r1, [r5, #0x0]
	ldr     r0, [r6, #0x0]
	bl      Function_2019ebc
	ldrb    r0, [r5, #0x0]
	ldr     r3, [sp, #0x0]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      Function_2019690
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x1c
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r7, #0x4
	blt     branch_223cc90
	add     sp, #0x88
	pop     {r3-r7,pc}
@ 0x223ccbe


.align 2


.word 0x22402e0 @ 0x223ccc0
.word 0x2240318 @ 0x223ccc4
.word 0x22402bc @ 0x223ccc8
.thumb
Function_223cccc: @ 223cccc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2019044
	ldr     r0, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x223ccf8

.thumb
Function_223ccf8: @ 223ccf8 :thumb
	push    {r3,lr}
	mov     r3, r0
	ldr     r3, [r3, #0x0]
	add     r0, #0x2c
	mov     r1, #0x48
	mov     r2, #0x10
	bl      Function_223d754
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	pop     {r3,pc}
@ 0x223cd1a


.align 2, 0


.thumb
Function_223cd1c: @ 223cd1c :thumb
	ldr     r3, [pc, #0x4] @ 0x223cd24, (=0x223d785)
	add     r0, #0x2c
	bx      r3
@ 0x223cd22


.align 2


.word 0x223d785 @ 0x223cd24
.thumb
Function_223cd28: @ 223cd28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x20] @ 0x223cd50, (=0x22402c0)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0xc]
	mov     r0, r2
	bl      Function_2015064
	mov     r1, #0xaf
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223cd50

.word 0x22402c0 @ 0x223cd50
.thumb
Function_223cd54: @ 223cd54 :thumb
	mov     r1, #0xaf
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x223cd60, (=0x20150a9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223cd5e


.align 2


.word 0x20150a9 @ 0x223cd60
.thumb
Function_223cd64: @ 223cd64 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r0
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	ldr     r5, [pc, #0x30] @ 0x223cdb8, (=0x22402d0)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x24] @ 0x223cdbc, (=0x200010)
	str     r0, [sp, #0x20]
	mov     r0, r2
	mov     r2, #0x10
	bl      Function_201e88c
	ldr     r1, [r4, #0x0]
	mov     r0, #0x20
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x223cdb6


.align 2


.word 0x22402d0 @ 0x223cdb8
.word 0x200010 @ 0x223cdbc
.thumb
Function_223cdc0: @ 223cdc0 :thumb
	push    {r3,lr}
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r3,pc}
@ 0x223cdd0

.thumb
Function_223cdd0: @ 223cdd0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0xa0] @ 0x223ce78, (=0x2240388)
	str     r1, [sp, #0x1c]
	str     r0, [sp, #0x24]
	mov     r0, #0xc
	str     r0, [sp, #0x2c]
	mov     r1, #0x5a
	ldr     r0, [sp, #0x18]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	mov     r4, #0x0
	str     r0, [sp, #0x28]
	add     r0, #0x2c
	mov     r7, #0xd
	mov     r5, #0xe
	str     r0, [sp, #0x28]
.thumb
branch_223cdf8: @ 223cdf8 :thumb
	cmp     r4, #0x0
	ble     branch_223ce2e
	ldr     r0, [sp, #0x24]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8
	bne     branch_223ce2e
	str     r5, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r7, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	mov     r3, #0x5b
	ldr     r0, [r0, #0x0]
	ldr     r6, [sp, #0x18]
	str     r0, [sp, #0x10]
	lsl     r3, r3, #2
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [r6, r3]
	bl      Function_223d894
	b       branch_223ce56
@ 0x223ce2e

.thumb
branch_223ce2e: @ 223ce2e :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x7d
	lsl     r0, r0, #4
	add     r0, r4, r0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x24]
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x20]
	str     r0, [sp, #0x14]
	ldrb    r3, [r3, #0x0]
	ldr     r0, [sp, #0x28]
	ldr     r2, [sp, #0x1c]
	bl      Function_223d7a8
.thumb
branch_223ce56: @ 223ce56 :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x2c]
	.hword  0x1cff @ add r7, r7, #0x3
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x20]
	.hword  0x1ced @ add r5, r5, #0x3
	add     r0, #0x38
	str     r0, [sp, #0x20]
	cmp     r4, #0x6
	blt     branch_223cdf8
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223ce76


.align 2


.word 0x2240388 @ 0x223ce78
.thumb
Function_223ce7c: @ 223ce7c :thumb
	push    {r4-r6,lr}
	mov     r1, #0x5a
	lsl     r1, r1, #2
	mov     r6, r0
	mov     r4, #0x0
	add     r5, r0, r1
	add     r6, #0x2c
.thumb
branch_223ce8a: @ 223ce8a :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_223d95c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, #0x6
	blt     branch_223ce8a
	pop     {r4-r6,pc}
@ 0x223ce9c

.thumb
Function_223ce9c: @ 223ce9c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	blx     Function_20b28cc
	blx     G3X_InitMtxStack
	ldr     r0, [pc, #0x5c] @ 0x223cf08, (=0x4000060)
	ldr     r2, [pc, #0x60] @ 0x223cf0c, (=0xffffcffd)
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r1, r2, #0x2
	and     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	ldr     r3, [pc, #0x4c] @ 0x223cf10, (=0xcffb)
	and     r1, r3
	strh    r1, [r0, #0x0]
	add     r1, r2, #0x2
	ldrh    r4, [r0, #0x0]
	sub     r3, #0x1c
	lsr     r2, r2, #17
	and     r4, r1
	mov     r1, #0x8
	orr     r1, r4
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r3
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x34] @ 0x223cf14, (=0x43ff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r2, [pc, #0x2c] @ 0x223cf18, (=0x4000540)
	mov     r0, #0x2
	ldr     r1, [pc, #0x2c] @ 0x223cf1c, (=0xbfff0000)
	str     r0, [r2, #0x0]
	str     r1, [r2, #0x40]
	mov     r1, #0x1
	blx     Function_20a5a94
	mov     r0, #0x2
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     Function_20a5d88
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cf06


.align 2


.word 0x4000060 @ 0x223cf08
.word 0xffffcffd @ 0x223cf0c
.word 0xcffb @ 0x223cf10
.word 0x43ff @ 0x223cf14
.word 0x4000540 @ 0x223cf18
.word 0xbfff0000 @ 0x223cf1c
.thumb
Function_223cf20: @ 223cf20 :thumb
	push    {r3,lr}
	blx     Function_20a5b1c
	blx     Function_20a5f50
	pop     {r3,pc}
@ 0x223cf2c

.thumb
Function_223cf2c: @ 223cf2c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r2, #0x1d
	ldr     r3, [r5, #0x0]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #4
	bl      Function_200b144
	ldr     r1, [pc, #0xf0] @ 0x223d030, (=0x157c)
	str     r0, [r5, r1]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x4
	mov     r1, #0x40
	bl      Function_200b368
	mov     r1, #0x56
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r1, [r5, #0x0]
	mov     r0, #0x40
	bl      Function_2023790
	ldr     r1, [pc, #0xd8] @ 0x223d034, (=0x1584)
	str     r0, [r5, r1]
	sub     r1, #0x8
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_200b1ec
	ldr     r1, [pc, #0xcc] @ 0x223d038, (=0x1588)
	str     r0, [r5, r1]
	sub     r1, #0xc
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      Function_200b1ec
	ldr     r1, [pc, #0xc4] @ 0x223d03c, (=0x158c)
	str     r0, [r5, r1]
	sub     r1, #0x10
	ldr     r0, [r5, r1]
	mov     r1, #0x2
	bl      Function_200b1ec
	ldr     r1, [pc, #0xb8] @ 0x223d040, (=0x1590)
	str     r0, [r5, r1]
	sub     r1, #0x14
	ldr     r0, [r5, r1]
	mov     r1, #0x14
	bl      Function_200b1ec
	ldr     r1, [pc, #0xb0] @ 0x223d044, (=0x1594)
	str     r0, [r5, r1]
	sub     r1, #0x18
	ldr     r0, [r5, r1]
	mov     r1, #0x15
	bl      Function_200b1ec
	ldr     r1, [pc, #0xa4] @ 0x223d048, (=0x1598)
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	mov     r1, #0x16
	bl      Function_200b1ec
	ldr     r1, [pc, #0x9c] @ 0x223d04c, (=0x159c)
	str     r0, [r5, r1]
	sub     r1, #0x20
	ldr     r0, [r5, r1]
	mov     r1, #0x17
	bl      Function_200b1ec
	ldr     r1, [pc, #0x90] @ 0x223d050, (=0x15a0)
	str     r0, [r5, r1]
	sub     r1, #0x24
	ldr     r0, [r5, r1]
	mov     r1, #0x18
	bl      Function_200b1ec
	ldr     r1, [pc, #0x88] @ 0x223d054, (=0x15a4)
	str     r0, [r5, r1]
	sub     r1, #0x28
	ldr     r0, [r5, r1]
	mov     r1, #0x19
	bl      Function_200b1ec
	ldr     r1, [pc, #0x7c] @ 0x223d058, (=0x15a8)
	str     r0, [r5, r1]
	sub     r1, #0x2c
	ldr     r0, [r5, r1]
	mov     r1, #0x8
	bl      Function_200b1ec
	ldr     r1, [pc, #0x74] @ 0x223d05c, (=0x15ac)
	str     r0, [r5, r1]
	sub     r1, #0x30
	ldr     r0, [r5, r1]
	mov     r1, #0x9
	bl      Function_200b1ec
	ldr     r1, [pc, #0x68] @ 0x223d060, (=0x15b0)
	mov     r4, #0x0
	str     r0, [r5, r1]
	mov     r6, r5
	add     r7, r1, #0x4
.thumb
branch_223cffe: @ 223cffe :thumb
	ldr     r0, [pc, #0x30] @ 0x223d030, (=0x157c)
	add     r1, r4, #0x3
	ldr     r0, [r5, r0]
	bl      Function_200b1ec
	str     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x5
	blt     branch_223cffe
	ldr     r7, [pc, #0x50] @ 0x223d064, (=0x15c8)
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_223d018: @ 223d018 :thumb
	ldr     r0, [pc, #0x14] @ 0x223d030, (=0x157c)
	mov     r1, r4
	ldr     r0, [r5, r0]
	add     r1, #0xa
	bl      Function_200b1ec
	str     r0, [r6, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0xa
	blt     branch_223d018
	pop     {r3-r7,pc}
@ 0x223d030

.word 0x157c @ 0x223d030
.word 0x1584 @ 0x223d034
.word 0x1588 @ 0x223d038
.word 0x158c @ 0x223d03c
.word 0x1590 @ 0x223d040
.word 0x1594 @ 0x223d044
.word 0x1598 @ 0x223d048
.word 0x159c @ 0x223d04c
.word 0x15a0 @ 0x223d050
.word 0x15a4 @ 0x223d054
.word 0x15a8 @ 0x223d058
.word 0x15ac @ 0x223d05c
.word 0x15b0 @ 0x223d060
.word 0x15c8 @ 0x223d064
.thumb
Function_223d068: @ 223d068 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x98] @ 0x223d108, (=0x15b0)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x94] @ 0x223d10c, (=0x15ac)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x90] @ 0x223d110, (=0x159c)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x8c] @ 0x223d114, (=0x1598)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x88] @ 0x223d118, (=0x1594)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x84] @ 0x223d11c, (=0x1590)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x80] @ 0x223d120, (=0x158c)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x7c] @ 0x223d124, (=0x1588)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x78] @ 0x223d128, (=0x15a0)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x74] @ 0x223d12c, (=0x15a4)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x70] @ 0x223d130, (=0x15a8)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	ldr     r7, [pc, #0x6c] @ 0x223d134, (=0x15b4)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223d0ca: @ 223d0ca :thumb
	ldr     r0, [r5, r7]
	bl      Function_20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_223d0ca
	ldr     r7, [pc, #0x5c] @ 0x223d138, (=0x15c8)
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_223d0de: @ 223d0de :thumb
	ldr     r0, [r4, r7]
	bl      Function_20237bc
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0xa
	blt     branch_223d0de
	ldr     r0, [pc, #0x4c] @ 0x223d13c, (=0x1584)
	ldr     r0, [r6, r0]
	bl      Function_20237bc
	mov     r0, #0x56
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      Function_200b3f0
	ldr     r0, [pc, #0x40] @ 0x223d140, (=0x157c)
	ldr     r0, [r6, r0]
	bl      Function_200b190
	pop     {r3-r7,pc}
@ 0x223d108

.word 0x15b0 @ 0x223d108
.word 0x15ac @ 0x223d10c
.word 0x159c @ 0x223d110
.word 0x1598 @ 0x223d114
.word 0x1594 @ 0x223d118
.word 0x1590 @ 0x223d11c
.word 0x158c @ 0x223d120
.word 0x1588 @ 0x223d124
.word 0x15a0 @ 0x223d128
.word 0x15a4 @ 0x223d12c
.word 0x15a8 @ 0x223d130
.word 0x15b4 @ 0x223d134
.word 0x15c8 @ 0x223d138
.word 0x1584 @ 0x223d13c
.word 0x157c @ 0x223d140
.thumb
Function_223d144: @ 223d144 :thumb
	ldr     r0, [pc, #0x0] @ 0x223d148, (=0x2240390)
	bx      lr
@ 0x223d148

.word 0x2240390 @ 0x223d148
.thumb
Function_223d14c: @ 223d14c :thumb
	mov     r0, #0xb
	bx      lr
@ 0x223d150

.thumb
Function_223d150: @ 223d150 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [pc, #0x80] @ 0x223d1d8, (=0x142c)
	mov     r4, r1
	ldr     r1, [r7, r0]
	cmp     r1, #0x1
	bne     branch_223d168
	bl      Function_2035e18
	ldr     r1, [pc, #0x78] @ 0x223d1dc, (=0x1424)
	str     r0, [r7, r1]
	b       branch_223d16e
@ 0x223d168

.thumb
branch_223d168: @ 223d168 :thumb
	mov     r1, #0x1
	sub     r0, #0x8
	str     r1, [r7, r0]
.thumb
branch_223d16e: @ 223d16e :thumb
	bl      Function_223d144
	mov     r5, r0
	bl      Function_223d14c
	mov     r1, r0
	ldr     r0, [r7, #0x0]
	ldr     r3, [pc, #0x58] @ 0x223d1d8, (=0x142c)
	str     r0, [sp, #0x0]
	ldr     r3, [r7, r3]
	mov     r0, r5
	mov     r2, r7
	bl      Function_223d4cc
	ldr     r1, [pc, #0x54] @ 0x223d1e0, (=0x1428)
	str     r0, [r7, r1]
	ldr     r0, [pc, #0x54] @ 0x223d1e4, (=0x1560)
	mov     r1, #0x4
	add     r0, r7, r0
	mov     r2, r1
	blx     Call_FillMemWithValue
	ldr     r0, [pc, #0x3c] @ 0x223d1d8, (=0x142c)
	ldr     r0, [r7, r0]
	cmp     r0, #0x1
	bne     branch_223d1cc
	mov     r6, #0x0
	mov     r4, r6
	mov     r5, r7
.thumb
branch_223d1a8: @ 223d1a8 :thumb
	mov     r0, r4
	bl      Function_2032ee8
	ldr     r1, [pc, #0x38] @ 0x223d1e8, (=0x1564)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223d1c2
	ldr     r0, [pc, #0x28] @ 0x223d1e4, (=0x1560)
	add     r1, r7, r6
	strb    r4, [r1, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_223d1c2: @ 223d1c2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223d1a8
	pop     {r3-r7,pc}
@ 0x223d1cc

.thumb
branch_223d1cc: @ 223d1cc :thumb
	ldr     r0, [pc, #0x14] @ 0x223d1e4, (=0x1560)
	mov     r1, #0x0
	strb    r1, [r7, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r7, r0]
	pop     {r3-r7,pc}
@ 0x223d1d8

.word 0x142c @ 0x223d1d8
.word 0x1424 @ 0x223d1dc
.word 0x1428 @ 0x223d1e0
.word 0x1560 @ 0x223d1e4
.word 0x1564 @ 0x223d1e8
.thumb
Function_223d1ec: @ 223d1ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x223d200, (=0x1428)
	ldr     r0, [r4, r0]
	bl      Function_223d558
	ldr     r0, [pc, #0x4] @ 0x223d200, (=0x1428)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x223d200

.word 0x1428 @ 0x223d200
.thumb
Function_223d204: @ 223d204 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x223d20c, (=0x223b775)
	mov     r1, #0x3
	bx      r3
@ 0x223d20c

.word 0x223b775 @ 0x223d20c
.thumb
Function_223d210: @ 223d210 :thumb
	mov     r0, r3
	ldr     r3, [pc, #0x4] @ 0x223d218, (=0x223b77d)
	mov     r1, #0x8
	bx      r3
@ 0x223d218

.word Function_223b77c+1 @ =0x223b77d, 0x223d218
.thumb
Function_223d21c: @ 223d21c :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x30] @ 0x223d250, (=0x149c)
	mov     r5, r1
	mov     r4, r3
	mov     r1, r2
	add     r0, r4, r0
	mov     r2, r5
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0x24] @ 0x223d254, (=0x14ac)
	mov     r1, #0xa
	add     r3, r4, r0
	add     r0, #0x1c
	add     r2, r4, r0
.thumb
branch_223d238: @ 223d238 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223d238
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_223b774
	pop     {r3-r5,pc}
@ 0x223d24e


.align 2


.word 0x149c @ 0x223d250
.word 0x14ac @ 0x223d254
.thumb
Function_223d258: @ 223d258 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [pc, #0x74] @ 0x223d2d4, (=0x1428)
	mov     r5, r3
	ldr     r0, [r5, r0]
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223d2d0
	ldr     r0, [pc, #0x64] @ 0x223d2d8, (=0x1544)
	lsl     r4, r6, #2
	add     r7, r5, r0
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	add     r0, r7, r4
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0x58] @ 0x223d2dc, (=0x1554)
	mov     r2, #0x1
	add     r1, r5, r6
	strb    r2, [r1, r0]
	ldr     r1, [r7, r4]
	add     r2, r5, r4
	sub     r0, #0xf0
	str     r1, [r2, r0]
	mov     r0, #0x0
	ldr     r1, [pc, #0x48] @ 0x223d2dc, (=0x1554)
	mov     r3, r0
.thumb
branch_223d296: @ 223d296 :thumb
	add     r2, r5, r3
	ldrb    r2, [r2, r1]
	cmp     r2, #0x1
	bne     branch_223d2a0
	.hword  0x1c40 @ add r0, r0, #0x1
.thumb
branch_223d2a0: @ 223d2a0 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x4
	blt     branch_223d296
	ldr     r1, [pc, #0x38] @ 0x223d2e0, (=0x1424)
	ldr     r2, [r5, r1]
	cmp     r0, r2
	blt     branch_223d2d0
	mov     r0, #0xba
	lsl     r0, r0, #2
	add     r1, #0x50
	add     r0, r5, r0
	add     r1, r5, r1
	bl      Function_223ff44
	bl      Function_223d4b4
	ldr     r3, [pc, #0x20] @ 0x223d2e4, (=0x1464)
	mov     r2, r0
	add     r1, r5, r3
	sub     r3, #0x3c
	ldr     r3, [r5, r3]
	mov     r0, #0x18
	bl      Function_223d508
.thumb
branch_223d2d0: @ 223d2d0 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d2d4

.word 0x1428 @ 0x223d2d4
.word 0x1544 @ 0x223d2d8
.word 0x1554 @ 0x223d2dc
.word 0x1424 @ 0x223d2e0
.word 0x1464 @ 0x223d2e4
.thumb
Function_223d2e8: @ 223d2e8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r3
	mov     r12, r2
	ldr     r3, [pc, #0x54] @ 0x223d348, (=0x14d6)
	mov     r2, #0x1c
	mov     r5, r0
	mul     r5, r2
	add     r2, r4, r3
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x0]
	mov     r1, r12
	ldrb    r2, [r2, r5]
	add     r1, #0x8
	cmp     r2, #0x1
	bne     branch_223d31c
	ldrb    r1, [r1, #0xe]
	cmp     r1, #0x0
	bne     branch_223d31c
	cmp     r0, #0x0
	bne     branch_223d31c
	add     r1, r4, r5
	.hword  0x1e98 @ sub r0, r3, #0x2
	mov     r6, #0x1
	ldrb    r7, [r1, r0]
	b       branch_223d31e
@ 0x223d31c

.thumb
branch_223d31c: @ 223d31c :thumb
	mov     r6, #0x0
.thumb
branch_223d31e: @ 223d31e :thumb
	mov     r0, #0x53
	lsl     r0, r0, #6
	add     r0, r4, r0
	ldr     r2, [sp, #0x0]
	add     r0, r0, r5
	mov     r1, r12
	blx     CopyDataInByteSteps
	cmp     r6, #0x1
	bne     branch_223d33c
	ldr     r0, [sp, #0x4]
	add     r1, r4, r5
	strb    r6, [r0, r5]
	ldr     r0, [pc, #0x10] @ 0x223d34c, (=0x14d4)
	strb    r7, [r1, r0]
.thumb
branch_223d33c: @ 223d33c :thumb
	ldr     r0, [pc, #0x10] @ 0x223d350, (=0x1602)
	ldrh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d348

.word 0x14d6 @ 0x223d348
.word 0x14d4 @ 0x223d34c
.word 0x1602 @ 0x223d350
.thumb
Function_223d354: @ 223d354 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r12, r1
	mov     r1, r2
	mov     r2, #0x1c
	ldr     r0, [pc, #0x3c] @ 0x223d39c, (=0x14d6)
	mov     r5, r3
	mul     r4, r2
	add     r7, r5, r0
	ldrb    r2, [r7, r4]
	cmp     r2, #0x1
	bne     branch_223d37e
	ldrb    r2, [r1, #0xe]
	cmp     r2, #0x0
	bne     branch_223d37e
	add     r2, r5, r4
	.hword  0x1e80 @ sub r0, r0, #0x2
	ldrb    r0, [r2, r0]
	mov     r6, #0x1
	str     r0, [sp, #0x0]
	b       branch_223d380
@ 0x223d37e

.thumb
branch_223d37e: @ 223d37e :thumb
	mov     r6, #0x0
.thumb
branch_223d380: @ 223d380 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223d3a0, (=0x14c8)
	mov     r2, r12
	add     r0, r5, r0
	add     r0, r0, r4
	blx     CopyDataInByteSteps
	cmp     r6, #0x1
	bne     branch_223d39a
	strb    r6, [r7, r4]
	ldr     r1, [pc, #0x10] @ 0x223d3a4, (=0x14d4)
	ldr     r0, [sp, #0x0]
	add     r2, r5, r4
	strb    r0, [r2, r1]
.thumb
branch_223d39a: @ 223d39a :thumb
	pop     {r3-r7,pc}
@ 0x223d39c

.word 0x14d6 @ 0x223d39c
.word 0x14c8 @ 0x223d3a0
.word 0x14d4 @ 0x223d3a4
.thumb
Function_223d3a8: @ 223d3a8 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, #0x53
	mov     r5, r3
	lsl     r0, r0, #6
	mov     r6, r1
	add     r1, r5, r0
	mov     r0, #0x1c
	mul     r0, r4
	add     r0, r1, r0
	mov     r1, r2
	mov     r2, r6
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0xc] @ 0x223d3d4, (=0x15f8)
	lsl     r1, r4, #1
	add     r2, r5, r0
	ldrh    r0, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r2, r1]
	pop     {r4-r6,pc}
@ 0x223d3d2


.align 2


.word 0x15f8 @ 0x223d3d4
.thumb
Function_223d3d8: @ 223d3d8 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x18] @ 0x223d3f4, (=0x1488)
	mov     r5, r1
	mov     r4, r3
	mov     r1, r2
	add     r0, r4, r0
	mov     r2, r5
	blx     CopyDataInByteSteps
	mov     r0, r4
	mov     r1, #0xa
	bl      Function_223b774
	pop     {r3-r5,pc}
@ 0x223d3f4

.word 0x1488 @ 0x223d3f4
.thumb
Function_223d3f8: @ 223d3f8 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x10] @ 0x223d40c, (=0x1530)
	mov     r4, r1
	ldr     r0, [r3, r0]
	mov     r1, r2
	mov     r2, r4
	blx     CopyDataInByteSteps
	pop     {r4,pc}
@ 0x223d40a


.align 2


.word 0x1530 @ 0x223d40c
.thumb
Function_223d410: @ 223d410 :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x18] @ 0x223d42c, (=0x1575)
	mov     r5, r1
	mov     r4, r3
	mov     r1, r2
	add     r0, r4, r0
	mov     r2, r5
	blx     CopyDataInByteSteps
	mov     r0, r4
	mov     r1, #0xc
	bl      Function_223b774
	pop     {r3-r5,pc}
@ 0x223d42c

.word 0x1575 @ 0x223d42c
.thumb
Function_223d430: @ 223d430 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x64] @ 0x223d49c, (=0x1428)
	mov     r4, r3
	ldr     r0, [r4, r0]
	mov     r6, r1
	mov     r7, r2
	bl      Function_223d570
	cmp     r0, #0x0
	bne     branch_223d49a
	ldr     r0, [pc, #0x58] @ 0x223d4a0, (=0x1558)
	mov     r1, r7
	add     r0, r4, r0
	add     r0, r0, r5
	mov     r2, r6
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0x4c] @ 0x223d4a4, (=0x155c)
	add     r1, r4, r5
	mov     r2, #0x1
	strb    r2, [r1, r0]
	add     r6, sp, #0x0
	mov     r3, #0x0
	strb    r2, [r6, #0x0]
	mov     r2, r3
	.hword  0x1f07 @ sub r7, r0, #0x4
	mov     r5, r0
.thumb
branch_223d468: @ 223d468 :thumb
	add     r1, r4, r2
	ldrb    r0, [r1, r5]
	cmp     r0, #0x1
	bne     branch_223d47a
	ldrb    r0, [r6, #0x0]
	ldrb    r1, [r1, r7]
	.hword  0x1c5b @ add r3, r3, #0x1
	and     r0, r1
	strb    r0, [r6, #0x0]
.thumb
branch_223d47a: @ 223d47a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x4
	blt     branch_223d468
	ldr     r0, [pc, #0x24] @ 0x223d4a8, (=0x1424)
	ldr     r0, [r4, r0]
	cmp     r3, r0
	blt     branch_223d49a
	bl      Function_223d4b0
	ldr     r3, [pc, #0xc] @ 0x223d49c, (=0x1428)
	mov     r2, r0
	ldr     r3, [r4, r3]
	mov     r0, #0x1d
	add     r1, sp, #0x0
	bl      Function_223d508
.thumb
branch_223d49a: @ 223d49a :thumb
	pop     {r3-r7,pc}
@ 0x223d49c

.word 0x1428 @ 0x223d49c
.word 0x1558 @ 0x223d4a0
.word 0x155c @ 0x223d4a4
.word 0x1424 @ 0x223d4a8
.thumb
Function_223d4ac: @ 223d4ac :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223d4b0

.thumb
Function_223d4b0: @ 223d4b0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223d4b4

.thumb
Function_223d4b4: @ 223d4b4 :thumb
	mov     r0, #0x24
	bx      lr
@ 0x223d4b8

.thumb
Function_223d4b8: @ 223d4b8 :thumb
	mov     r0, #0x4
	bx      lr
@ 0x223d4bc

.thumb
Function_223d4bc: @ 223d4bc :thumb
	mov     r0, #0x1c
	bx      lr
@ 0x223d4c0

.thumb
Function_223d4c0: @ 223d4c0 :thumb
	mov     r0, #0x14
	bx      lr
@ 0x223d4c4

.thumb
Function_223d4c4: @ 223d4c4 :thumb
	mov     r0, #0x14
	bx      lr
@ 0x223d4c8

.thumb
Function_223d4c8: @ 223d4c8 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x223d4cc

.thumb
Function_223d4cc: @ 223d4cc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	ldr     r0, [sp, #0x18]
	mov     r1, #0x8
	str     r2, [sp, #0x0]
	mov     r5, r3
	bl      malloc
	mov     r4, r0
	mov     r0, #0x0
	str     r5, [r4, #0x0]
	str     r0, [r4, #0x4]
	cmp     r5, #0x1
	bne     branch_223d4f6
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      Function_2032798
	b       branch_223d504
@ 0x223d4f6

.thumb
branch_223d4f6: @ 223d4f6 :thumb
	ldr     r2, [sp, #0x0]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r7
	bl      Function_223d584
	str     r0, [r4, #0x4]
.thumb
branch_223d504: @ 223d504 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223d508

.thumb
Function_223d508: @ 223d508 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r3, #0x0]
	mov     r6, r1
	mov     r7, r2
	cmp     r0, #0x1
	bne     branch_223d54a
	bl      Function_203895c
	cmp     r0, #0x1d
	bne     branch_223d53e
	mov     r0, r5
	mov     r4, #0x1
	bl      Function_203626c
	cmp     r0, #0x0
	beq     branch_223d52c
	mov     r4, #0x0
.thumb
branch_223d52c: @ 223d52c :thumb
	bl      0x21d1404
	cmp     r0, #0x0
	bne     branch_223d536
	mov     r4, #0x0
.thumb
branch_223d536: @ 223d536 :thumb
	cmp     r4, #0x0
	bne     branch_223d53e
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d53e

.thumb
branch_223d53e: @ 223d53e :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_20359dc
	pop     {r3-r7,pc}
@ 0x223d54a

.thumb
branch_223d54a: @ 223d54a :thumb
	ldr     r0, [r3, #0x4]
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	bl      Function_223d638
	pop     {r3-r7,pc}
@ 0x223d558

.thumb
Function_223d558: @ 223d558 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223d568
	ldr     r0, [r4, #0x4]
	bl      Function_223d620
.thumb
branch_223d568: @ 223d568 :thumb
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223d570

.thumb
Function_223d570: @ 223d570 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_223d57e
	bl      Function_203608c
	pop     {r3,pc}
@ 0x223d57e

.thumb
branch_223d57e: @ 223d57e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223d582


.align 2, 0


.thumb
Function_223d584: @ 223d584 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x1b
	mov     r5, r0
	mov     r0, r3
	lsl     r1, r1, #4
	mov     r7, r2
	bl      malloc
	mov     r2, #0x1b
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r1, #0x1a
	lsl     r1, r1, #4
	str     r5, [r4, r1]
	add     r0, r1, #0x4
	str     r6, [r4, r0]
	add     r1, #0x8
	str     r7, [r4, r1]
	ldr     r0, [pc, #0x10] @ 0x223d5c4, (=0x223d5cd)
	ldr     r2, [pc, #0x14] @ 0x223d5c8, (=0x1388)
	mov     r1, r4
	bl      AddTaskToTaskList3
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x223d5c4

.word 0x223d5cd @ 0x223d5c4
.word 0x1388 @ 0x223d5c8
.thumb
Function_223d5cc: @ 223d5cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r6, r7
.thumb
branch_223d5d8: @ 223d5d8 :thumb
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x1
	bne     branch_223d60e
	mov     r4, #0x1a
	lsl     r4, r4, #4
	ldr     r4, [r7, r4]
	mov     r3, #0x6a
	mov     r12, r4
	ldr     r4, [r6, #0x4]
	mov     r5, #0xc
	mul     r5, r4
	str     r5, [sp, #0x4]
	lsl     r3, r3, #2
	mov     r2, r6
	ldr     r4, [sp, #0x4]
	mov     r5, r12
	ldr     r1, [r6, #0x30]
	ldr     r3, [r7, r3]
	ldr     r4, [r5, r4]
	mov     r0, #0x0
	add     r2, #0x8
	blx     r4
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Call_FillMemWithValue
.thumb
branch_223d60e: @ 223d60e :thumb
	ldr     r0, [sp, #0x0]
	add     r6, #0x34
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
	cmp     r0, #0x8
	blt     branch_223d5d8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d61e


.align 2, 0


.thumb
Function_223d620: @ 223d620 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x223d636


.align 2, 0


.thumb
Function_223d638: @ 223d638 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	str     r2, [sp, #0x0]
	mov     r7, r1
	mov     r5, r3
	mov     r0, r4
	mov     r2, r6
.thumb
branch_223d648: @ 223d648 :thumb
	ldr     r1, [r2, #0x0]
	cmp     r1, #0x0
	bne     branch_223d656
	mov     r1, #0x34
	mul     r1, r0
	add     r4, r6, r1
	b       branch_223d65e
@ 0x223d656

.thumb
branch_223d656: @ 223d656 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r2, #0x34
	cmp     r0, #0x8
	blt     branch_223d648
.thumb
branch_223d65e: @ 223d65e :thumb
	cmp     r4, #0x0
	bne     branch_223d666
	bl      ErrorHandling
.thumb
branch_223d666: @ 223d666 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	mov     r1, r7
	ldr     r2, [r6, r0]
	sub     r1, #0x16
	mov     r0, #0xc
	mul     r0, r1
	add     r0, r2, r0
	ldr     r0, [r0, #0x4]
	blx     r0
	cmp     r0, r5
	beq     branch_223d682
	bl      ErrorHandling
.thumb
branch_223d682: @ 223d682 :thumb
	cmp     r5, #0x26
	blt     branch_223d68a
	bl      ErrorHandling
.thumb
branch_223d68a: @ 223d68a :thumb
	sub     r7, #0x16
	str     r7, [r4, #0x4]
	cmp     r5, #0x0
	ble     branch_223d69e
	mov     r0, r4
	ldr     r1, [sp, #0x0]
	add     r0, #0x8
	mov     r2, r5
	blx     CopyDataInByteSteps
.thumb
branch_223d69e: @ 223d69e :thumb
	str     r5, [r4, #0x30]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x223d6a6


.align 2, 0


.thumb
Function_223d6a8: @ 223d6a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r2
	mov     r2, #0x0
	bl      Function_2002d7c
	lsr     r0, r0, #1
	sub     r0, r4, r0
	pop     {r4,pc}
@ 0x223d6ba


.align 2, 0


.thumb
Function_223d6bc: @ 223d6bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, r3
	mov     r2, #0x0
	add     r3, sp, #0x4
	bl      Function_20071b4
	mov     r4, r0
	ldr     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x8
	bl      Function_2015128
	mov     r5, r0
	mov     r0, r4
	bl      free
	mov     r0, r5
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223d6ea


.align 2, 0


.thumb
Function_223d6ec: @ 223d6ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r2
	mov     r5, r0
	mov     r0, r3
	add     r2, sp, #0x0
	mov     r3, r4
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	add     r0, sp, #0x4
	bl      Function_20151a4
	mov     r5, r0
	mov     r0, r4
	bl      free
	mov     r0, r5
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223d71e


.align 2, 0


.thumb
Function_223d720: @ 223d720 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	add     r0, sp, #0x0
	ldr     r1, [sp, #0x28]
	strh    r3, [r0, #0xc]
	strh    r1, [r0, #0xe]
	mov     r2, #0x0
	strh    r2, [r0, #0x10]
	mov     r1, #0x1f
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x2c]
	str     r1, [sp, #0x18]
	strh    r2, [r0, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2015214
	mov     r1, #0x0
	mov     r4, r0
	bl      Function_2015240
	mov     r0, r4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x223d754

.thumb
Function_223d754: @ 223d754 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r6, r3
	mov     r7, r2
	add     r1, r5, #0x4
	mov     r2, r6
	bl      Function_20095c4
	str     r0, [r5, #0x0]
	mov     r4, #0x0
.thumb
branch_223d76a: @ 223d76a :thumb
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	bl      Function_2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223d76a
	pop     {r3-r7,pc}
@ 0x223d784

.thumb
Function_223d784: @ 223d784 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_2021964
	mov     r4, #0x0
	mov     r6, #0x4b
	str     r4, [r5, #0x0]
	lsl     r6, r6, #2
.thumb
branch_223d796: @ 223d796 :thumb
	ldr     r0, [r5, r6]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223d796
	pop     {r4-r6,pc}
@ 0x223d7a6


.align 2, 0


.thumb
Function_223d7a8: @ 223d7a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	ldr     r6, [sp, #0x58]
	mov     r5, r0
	ldr     r7, [sp, #0x5c]
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r4, r1
	str     r3, [sp, #0x30]
	str     r2, [sp, #0x2c]
	mov     r1, r2
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x4c]
	mov     r3, #0x0
	bl      Function_2009aa8
	str     r0, [r4, #0x0]
	str     r6, [sp, #0x0]
	mov     r1, #0x1
	ldr     r0, [sp, #0x48]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r7, [sp, #0xc]
	mov     r0, #0x13
	str     r1, [sp, #0x10]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x30]
	mov     r3, #0x0
	bl      Function_2009b64
	str     r0, [r4, #0x4]
	mov     r3, #0x0
	str     r3, [r4, #0x10]
	str     r6, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4d
	str     r7, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x50]
	bl      Function_2009bc4
	str     r0, [r4, #0x8]
	str     r6, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	str     r7, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x54]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_223d838
	bl      ErrorHandling
.thumb
branch_223d838: @ 223d838 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2009d4c
	ldr     r0, [r4, #0x4]
	bl      Function_200a640
	cmp     r0, #0x0
	bne     branch_223d84c
	bl      ErrorHandling
.thumb
branch_223d84c: @ 223d84c :thumb
	ldr     r0, [r4, #0x4]
	bl      Function_2009d4c
	mov     r0, #0x0
	mov     r2, #0x4b
	str     r6, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	add     r4, #0x14
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	mov     r3, r6
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	add     r2, #0xc
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, r2]
	mov     r2, r6
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r4
	mov     r1, r6
	bl      Function_20093b4
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223d894

.thumb
Function_223d894: @ 223d894 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r6, [sp, #0x5c]
	mov     r5, r0
	ldr     r7, [sp, #0x60]
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	mov     r4, r1
	str     r3, [sp, #0x30]
	str     r2, [sp, #0x2c]
	mov     r1, r2
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x50]
	mov     r3, #0x0
	bl      Function_2009aa8
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x30]
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x30]
	bl      Function_2009e08
	str     r0, [sp, #0x34]
	str     r6, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4d
	str     r7, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x54]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r4, #0x8]
	str     r6, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	str     r7, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x58]
	mov     r3, #0x0
	bl      Function_2009bc4
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_200a450
	cmp     r0, #0x0
	bne     branch_223d912
	bl      ErrorHandling
.thumb
branch_223d912: @ 223d912 :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2009d4c
	mov     r0, #0x0
	mov     r2, #0x4b
	str     r6, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	add     r4, #0x14
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	mov     r3, r6
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	add     r2, #0xc
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, r2]
	ldr     r2, [sp, #0x34]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r4
	mov     r1, r6
	bl      Function_20093b4
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x223d95a


.align 2, 0


.thumb
Function_223d95c: @ 223d95c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	ldr     r0, [r7, #0x0]
	bl      Function_200a4e4
	ldr     r0, [r7, #0x10]
	cmp     r0, #0x0
	bne     branch_223d974
	ldr     r0, [r7, #0x4]
	bl      Function_200a6dc
.thumb
branch_223d974: @ 223d974 :thumb
	mov     r6, #0x0
	mov     r4, r7
.thumb
branch_223d978: @ 223d978 :thumb
	cmp     r6, #0x1
	beq     branch_223d98a
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x0]
	bl      Function_2009d68
	b       branch_223d99c
@ 0x223d98a

.thumb
branch_223d98a: @ 223d98a :thumb
	ldr     r0, [r7, #0x10]
	cmp     r0, #0x0
	bne     branch_223d99c
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x0]
	bl      Function_2009d68
.thumb
branch_223d99c: @ 223d99c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_223d978
	pop     {r3-r7,pc}
@ 0x223d9a8

.thumb
Function_223d9a8: @ 223d9a8 :thumb
	push    {r4,lr}
	add     sp, #-0x20
	ldr     r0, [r0, #0x0]
	add     r1, #0x14
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x2c]
	str     r2, [sp, #0x8]
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x30]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x0
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_223d9d6
	bl      ErrorHandling
.thumb
branch_223d9d6: @ 223d9d6 :thumb
	mov     r0, r4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x223d9dc

.thumb
Function_223d9dc: @ 223d9dc :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223d9ec

.thumb
Function_223d9ec: @ 223d9ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0xc]
	ldr     r0, [r4, #0x8]
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
	ldr     r1, [r4, #0x10]
	lsl     r1, r1, #12
	blx     FX_Div
	ldr     r1, [r4, #0x4]
	add     r0, r0, r1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_223da2c
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223da2c

.thumb
branch_223da2c: @ 223da2c :thumb
	str     r1, [r4, #0xc]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223da32


.align 2, 0


.thumb
Function_223da34: @ 223da34 :thumb
	push    {r3-r7,lr}
	ldr     r4, [sp, #0x18]
	mov     r5, r0
	mov     r7, r2
	mov     r0, r3
	mov     r6, r1
	lsl     r2, r4, #12
	str     r3, [sp, #0x0]
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, r0
	sub     r0, r7, r6
	mov     r7, #0x2
	mov     r3, #0x0
	lsl     r7, r7, #10
	add     r2, r2, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r2, r2, #12
	orr     r2, r1
	sub     r2, r0, r2
	asr     r1, r2, #31
	lsr     r0, r2, #19
	lsl     r1, r1, #13
	orr     r1, r0
	lsl     r0, r2, #13
	add     r0, r0, r7
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	mov     r1, r4
	mul     r1, r4
	lsl     r1, r1, #12
	blx     FX_Div
	str     r6, [r5, #0x0]
	ldr     r1, [sp, #0x0]
	str     r6, [r5, #0x4]
	str     r1, [r5, #0x8]
	str     r0, [r5, #0xc]
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	str     r4, [r5, #0x14]
	pop     {r3-r7,pc}
@ 0x223da92


.align 2, 0


.thumb
Function_223da94: @ 223da94 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r6, [r5, #0x10]
	ldr     r0, [r5, #0x8]
	lsl     r2, r6, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsr     r4, r2, #12
	lsl     r0, r1, #20
	mov     r2, r6
	orr     r4, r0
	ldr     r0, [r5, #0xc]
	mul     r2, r6
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
	lsl     r1, r2, #2
	blx     FX_Div
	ldr     r1, [r5, #0x4]
	add     r0, r4, r0
	add     r0, r1, r0
	str     r0, [r5, #0x0]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r1
	bgt     branch_223daf4
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223daf4

.thumb
branch_223daf4: @ 223daf4 :thumb
	str     r1, [r5, #0x10]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223dafa


.align 2, 0


.thumb
Function_223dafc: @ 223dafc :thumb
	push    {r4}
	add     sp, #-0xc
	str     r2, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r2, sp, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4}
	bx      lr
@ 0x223db18

.thumb
Function_223db18: @ 223db18 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1f
	mov     r4, r1
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r5, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x42
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	pop     {r3-r5,pc}
@ 0x223db30

.thumb
Function_223db30: @ 223db30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223db3e
	bl      ErrorHandling
.thumb
branch_223db3e: @ 223db3e :thumb
	mov     r2, #0x1f
	mov     r0, r4
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223db4c

.thumb
Function_223db4c: @ 223db4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r6, [sp, #0x48]
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x1c]
	mov     r0, #0x35
	mov     r1, r6
	mov     r7, r2
	str     r3, [sp, #0x20]
	bl      LoadFromNARC_8
	ldr     r4, [sp, #0x18]
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	ldr     r5, [sp, #0x18]
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x2c]
	add     r4, #0x28
.thumb
branch_223db70: @ 223db70 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_223dbec
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r3
	sub     r0, #0x8f
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	str     r0, [sp, #0xc]
	mov     r0, #0xfa
	ldr     r1, [sp, #0x2c]
	lsl     r0, r0, #2
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	ldr     r2, [sp, #0x24]
	mov     r0, r7
	mov     r1, r4
	sub     r3, #0x4f
	str     r6, [sp, #0x14]
	bl      Function_223d7a8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	mov     r0, r7
	mov     r1, r4
	mov     r3, r2
	str     r6, [sp, #0x8]
	bl      Function_223d9a8
	mov     r1, #0x0
	str     r0, [r5, #0x8]
	bl      Function_2021cac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r1, [sp, #0x20]
	str     r6, [sp, #0x8]
	mov     r0, r7
	mov     r3, r2
	bl      Function_223d9a8
	str     r0, [r5, #0x18]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x18]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [sp, #0x28]
	add     r4, #0x38
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [sp, #0x28]
.thumb
branch_223dbec: @ 223dbec :thumb
	mov     r0, #0x42
	ldr     r1, [sp, #0x18]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	ldr     r0, [sp, #0x28]
	cmp     r1, r0
	beq     branch_223dc0a
	ldr     r0, [sp, #0x1c]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x2c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x2c]
	cmp     r0, #0x4
	blt     branch_223db70
.thumb
branch_223dc0a: @ 223dc0a :thumb
	ldr     r0, [sp, #0x24]
	bl      Call_FS_CloseFile
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223dc1a


.align 2, 0


.thumb
Function_223dc1c: @ 223dc1c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	str     r1, [sp, #0x0]
	cmp     r0, #0x1
	beq     branch_223dc2c
	bl      ErrorHandling
.thumb
branch_223dc2c: @ 223dc2c :thumb
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223dc62
	mov     r6, r7
	mov     r5, r7
	add     r6, #0x28
.thumb
branch_223dc3e: @ 223dc3e :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_2021bd4
	ldr     r0, [r5, #0x18]
	bl      Function_2021bd4
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	bl      Function_223d95c
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x38
	cmp     r4, r0
	blt     branch_223dc3e
.thumb
branch_223dc62: @ 223dc62 :thumb
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x223dc68

.thumb
Function_223dc68: @ 223dc68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_223dc78
	bl      ErrorHandling
.thumb
branch_223dc78: @ 223dc78 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r2, #0x42
	ldr     r0, [sp, #0x4]
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	cmp     r0, #0x0
	ble     branch_223dd18
	ldr     r0, [sp, #0x4]
	add     r1, r2, #0x4
	add     r0, r0, r1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r2, #0x64
	ldr     r4, [pc, #0x94] @ 0x223dd2c, (=0x2240460)
	add     r7, r0, r2
	mov     r6, r0
	mov     r5, r0
.thumb
branch_223dc9c: @ 223dc9c :thumb
	ldrb    r0, [r4, #0x10]
	mov     r1, #0x8
	mov     r2, #0xa
	str     r0, [sp, #0x0]
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r0, [sp, #0x8]
	ldr     r3, [r4, #0x0]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      Function_223da34
	ldrb    r0, [r4, #0x10]
	mov     r1, #0xc
	mov     r2, #0xe
	str     r0, [sp, #0x0]
	ldsh    r1, [r4, r1]
	ldsh    r2, [r4, r2]
	ldr     r3, [r4, #0x4]
	mov     r0, r7
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      Function_223da34
	mov     r1, #0x43
	mov     r2, #0x5b
	lsl     r1, r1, #2
	lsl     r2, r2, #2
	ldr     r1, [r6, r1]
	ldr     r2, [r6, r2]
	add     r0, sp, #0x10
	mov     r3, #0x0
	bl      Function_223dafc
	ldr     r0, [r5, #0x8]
	add     r1, sp, #0x10
	bl      Function_2021c50
	mov     r0, #0x73
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldrb    r1, [r4, #0x11]
	add     r0, #0x10
	add     r4, #0x14
	str     r1, [r5, r0]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r0, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	add     r7, #0x18
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	ldr     r0, [sp, #0xc]
	add     r6, #0x18
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r0, r1
	blt     branch_223dc9c
.thumb
branch_223dd18: @ 223dd18 :thumb
	mov     r1, #0x7b
	ldr     r0, [sp, #0x4]
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223dd2a


.align 2


.word 0x2240460 @ 0x223dd2c
.thumb
Function_223dd30: @ 223dd30 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x4]
	cmp     r0, #0x0
	bne     branch_223dd46
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223dd46

.thumb
branch_223dd46: @ 223dd46 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	mov     r1, r0
	sub     r1, #0xe4
	ldr     r2, [r6, r0]
	ldr     r1, [r6, r1]
	cmp     r2, r1
	bge     branch_223dd96
	mov     r1, r0
	sub     r1, #0x10
	add     r1, r6, r1
	lsl     r3, r2, #2
	ldr     r2, [r1, r3]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r1, r3]
	ldr     r1, [r6, r0]
	lsl     r1, r1, #2
	add     r2, r6, r1
	mov     r1, r0
	sub     r1, #0x10
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	bgt     branch_223dd96
	mov     r3, r0
	mov     r1, #0x1
	sub     r3, #0x20
	str     r1, [r2, r3]
	ldr     r0, [r6, r0]
	lsl     r0, r0, #2
	add     r0, r6, r0
	ldr     r0, [r0, #0x8]
	bl      Function_2021cac
	mov     r1, #0x7b
	lsl     r1, r1, #2
	ldr     r2, [r6, r1]
	add     r0, r2, #0x2
	str     r0, [sp, #0x4]
	add     r0, r2, #0x1
	str     r0, [r6, r1]
.thumb
branch_223dd96: @ 223dd96 :thumb
	mov     r1, #0x42
	mov     r0, #0x0
	lsl     r1, r1, #2
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	cmp     r0, #0x0
	ble     branch_223de7a
	add     r0, r1, #0x4
	add     r0, r6, r0
	add     r1, #0x64
	mov     r4, r6
	str     r0, [sp, #0x0]
	add     r7, r6, r1
	mov     r5, r6
.thumb
branch_223ddb2: @ 223ddb2 :thumb
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_223de58
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ddc8

Jumppoints_223ddc8:
.hword branch_223de5c - Jumppoints_223ddc8 - 2
.hword branch_223ddd0 - Jumppoints_223ddc8 - 2
.hword branch_223de36 - Jumppoints_223ddc8 - 2
.hword branch_223de5c - Jumppoints_223ddc8 - 2
.thumb
branch_223ddd0: @ 223ddd0 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223da94
	str     r0, [sp, #0xc]
	mov     r0, r7
	bl      Function_223da94
	mov     r1, #0x43
	mov     r2, #0x5b
	lsl     r1, r1, #2
	lsl     r2, r2, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	add     r0, sp, #0x10
	mov     r3, #0x0
	bl      Function_223dafc
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x10
	bl      Function_2021c50
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x1
	bne     branch_223de5c
	ldr     r0, [r4, #0x18]
	add     r1, sp, #0x10
	bl      Function_2021c50
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [pc, #0x78] @ 0x223de9c, (=0x6bc)
	bl      Function_2005748
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, r0, #0x1
	mov     r0, #0x73
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223de5c
@ 0x223de36

.thumb
branch_223de36: @ 223de36 :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_223de5c
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, r0, #0x1
	mov     r0, #0x73
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223de5c
@ 0x223de58

.thumb
branch_223de58: @ 223de58 :thumb
	bl      ErrorHandling
.thumb
branch_223de5c: @ 223de5c :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	add     r7, #0x18
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x8]
	add     r5, #0x18
	cmp     r1, r0
	blt     branch_223ddb2
.thumb
branch_223de7a: @ 223de7a :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #2
	add     r1, r6, r0
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x3
	bne     branch_223de94
	mov     r0, #0x0
	str     r0, [r6, #0x4]
	add     sp, #0x1c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223de94

.thumb
branch_223de94: @ 223de94 :thumb
	ldr     r0, [sp, #0x4]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223de9a


.align 2


.word 0x6bc @ 0x223de9c
.thumb
Function_223dea0: @ 223dea0 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x34
	mov     r7, r3
	blx     Call_FillMemWithValue
	str     r6, [r5, #0x18]
	ldr     r0, [sp, #0x1c]
	str     r4, [r5, #0x14]
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x1c]
	str     r0, [r5, #0x10]
	pop     {r3-r7,pc}
@ 0x223dec2


.align 2, 0


.thumb
Function_223dec4: @ 223dec4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_223ded2
	bl      ErrorHandling
.thumb
branch_223ded2: @ 223ded2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x34
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223dede


.align 2, 0


.thumb
Function_223dee0: @ 223dee0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x30]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_223def4
	bl      ErrorHandling
.thumb
branch_223def4: @ 223def4 :thumb
	mov     r0, r5
	mov     r1, r6
	str     r4, [r5, #0x4]
	bl      Function_223e09c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_223e15c
	mov     r0, #0x1
	str     r0, [r5, #0x30]
	pop     {r3-r7,pc}
@ 0x223df0e


.align 2, 0


.thumb
Function_223df10: @ 223df10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x1
	beq     branch_223df1e
	bl      ErrorHandling
.thumb
branch_223df1e: @ 223df1e :thumb
	mov     r0, r4
	bl      Function_223e138
	mov     r0, r4
	bl      Function_223e208
	mov     r0, #0x0
	str     r0, [r4, #0x30]
	pop     {r4,pc}
@ 0x223df30

.thumb
Function_223df30: @ 223df30 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	mov     r2, r1
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bl      Function_200b70c
	ldr     r2, [r4, #0x18]
	ldr     r0, [r2, #0x4]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0x10]
	bl      Function_200c388
	ldr     r0, [r4, #0x8]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r1, [r4, #0x18]
	mov     r2, #0x0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r1, #0x8]
	mov     r3, r2
	bl      Function_223e21c
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_200e060
	pop     {r4,pc}
@ 0x223df70

.thumb
Function_223df70: @ 223df70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_201acf4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      Function_2019ebc
	pop     {r4,pc}
@ 0x223df84

.thumb
Function_223df84: @ 223df84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r1, [r4, #0x18]
	mov     r2, #0x0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r1, #0xc]
	mov     r3, r2
	bl      Function_223e21c
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_200e060
	pop     {r4,pc}
@ 0x223dfac

.thumb
Function_223dfac: @ 223dfac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x1
	beq     branch_223e098
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_223e08a
.thumb
branch_223dfbe: @ 223dfbe :thumb
	lsr     r2, r4, #31
	lsl     r1, r4, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r1, r2, r1
	add     r2, r4, r2
	asr     r2, r2, #1
	mov     r0, #0xc
	mov     r6, r1
	mul     r6, r0
	lsl     r0, r2, #2
	add     r2, r2, r0
	str     r2, [sp, #0x1c]
	mov     r2, #0xa
	str     r2, [sp, #0x0]
	mov     r2, #0x4
	str     r2, [sp, #0x4]
	ldr     r2, [r5, #0x2c]
	lsl     r0, r0, #24
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0xa
	mul     r2, r1
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	lsr     r0, r0, #24
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x10]
	mov     r0, #0x14
	str     r0, [sp, #0x14]
	mov     r0, #0x8
	add     r2, r6, #0x5
	add     r3, #0xd
	str     r0, [sp, #0x18]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_20198e8
	mov     r0, #0xa
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	add     r2, r6, #0x5
	add     r3, #0xd
	str     r0, [sp, #0x8]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      Function_2019e2c
	ldr     r7, [r5, #0x1c]
	mov     r2, #0x13
	ldr     r0, [r5, #0x18]
	add     r3, r7, r4
	lsl     r2, r2, #4
	ldrb    r2, [r3, r2]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	lsl     r2, r2, #2
	add     r3, r7, r2
	mov     r2, #0x4d
	lsl     r2, r2, #2
	ldr     r2, [r3, r2]
	bl      Function_200b498
	ldr     r2, [r5, #0x18]
	ldr     r0, [r2, #0x4]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0x14]
	bl      Function_200c388
	ldr     r1, [r5, #0x18]
	lsl     r0, r6, #3
	ldr     r1, [r1, #0x8]
	add     r0, #0x20
	mov     r2, #0x1
	bl      Function_223d6a8
	ldr     r1, [r5, #0x18]
	ldr     r3, [sp, #0x1c]
	mov     r2, r0
	lsl     r3, r3, #3
	ldr     r0, [r5, #0xc]
	ldr     r1, [r1, #0x8]
	add     r3, #0x8
	bl      Function_223e21c
	ldr     r0, [r5, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	blt     branch_223dfbe
.thumb
branch_223e08a: @ 223e08a :thumb
	ldr     r0, [r5, #0xc]
	bl      Function_201a9a4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	bl      Function_201c3c0
.thumb
branch_223e098: @ 223e098 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223e09c

.thumb
Function_223e09c: @ 223e09c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r5, #0x8]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r5, #0xc]
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	str     r2, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x1f
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	mov     r3, r2
	bl      Function_201a7e8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x1f
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0xc]
	mov     r2, #0x4
	mov     r3, #0x6
	bl      Function_201a7e8
	ldr     r0, [r5, #0x8]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r0, [r5, #0x10]
	mov     r1, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	str     r4, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_200dd0c
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, r4
	bl      Function_2002e98
	mov     r1, #0x1
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200e060
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x223e136


.align 2, 0


.thumb
Function_223e138: @ 223e138 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_201a8fc
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_201a928
	ldr     r0, [r4, #0xc]
	bl      Function_201a8fc
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_201a928
	pop     {r4,pc}
@ 0x223e15a


.align 2, 0


.thumb
Function_223e15c: @ 223e15c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r3, #0x40
	mov     r5, r0
	mov     r4, r1
	str     r3, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, #0x4
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r3, #0x5
	bl      Function_20070e8
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x1
	bne     branch_223e194
	mov     r1, #0x2
	b       branch_223e196
@ 0x223e194

.thumb
branch_223e194: @ 223e194 :thumb
	mov     r1, #0x3
.thumb
branch_223e196: @ 223e196 :thumb
	mov     r3, r5
	str     r4, [sp, #0x0]
	mov     r0, r6
	mov     r2, #0x0
	add     r3, #0x24
	bl      Function_20071d0
	str     r0, [r5, #0x20]
	ldr     r2, [r5, #0x24]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x5
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_20198c0
	ldr     r1, [r5, #0x24]
	mov     r2, #0x0
	ldrh    r0, [r1, #0x0]
	mov     r3, r2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r1, #0x2]
	mov     r1, #0x5
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_2019e2c
	mov     r3, r5
	str     r4, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x4
	mov     r2, #0x0
	add     r3, #0x2c
	bl      Function_20071d0
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x5
	bl      Function_201c3c0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e206


.align 2, 0


.thumb
Function_223e208: @ 223e208 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      free
	ldr     r0, [r4, #0x28]
	bl      free
	pop     {r4,pc}
@ 0x223e21a


.align 2, 0


.thumb
Function_223e21c: @ 223e21c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r4, r2
	str     r3, [sp, #0x0]
	mov     r2, #0x0
	ldr     r1, [pc, #0x14] @ 0x223e240, (=0x1020f)
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r1, #0x1
	mov     r2, r5
	mov     r3, r4
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223e23e


.align 2


.word 0x1020f @ 0x223e240
.thumb
Function_223e244: @ 223e244 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	strb    r1, [r0, #0x5]
	strb    r1, [r0, #0x6]
	strb    r1, [r0, #0x7]
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0x9]
	strb    r1, [r0, #0xa]
	strb    r1, [r0, #0xb]
	bx      lr
@ 0x223e260

.thumb
Function_223e260: @ 223e260 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223e26e
	bl      ErrorHandling
.thumb
branch_223e26e: @ 223e26e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x5]
	strb    r0, [r4, #0x6]
	strb    r0, [r4, #0x7]
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	pop     {r4,pc}
@ 0x223e28a


.align 2, 0


.thumb
Function_223e28c: @ 223e28c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, r1
	ldr     r3, [sp, #0x18]
	mov     r1, #0x38
	mul     r1, r3
	add     r1, r2, r1
	mov     r2, #0x2
	mov     r3, #0x6
	lsl     r2, r2, #18
	lsl     r3, r3, #16
	bl      Function_223d9a8
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x8]
	ldr     r1, [sp, #0x1c]
	bl      Function_2021d6c
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223e2c8

.thumb
Function_223e2c8: @ 223e2c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	beq     branch_223e2d6
	bl      ErrorHandling
.thumb
branch_223e2d6: @ 223e2d6 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2021bd4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x223e2e2


.align 2, 0


.thumb
Function_223e2e4: @ 223e2e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cc8
	pop     {r4,pc}
@ 0x223e2fa


.align 2, 0


.thumb
Function_223e2fc: @ 223e2fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x2a
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	lsl     r0, r0, #14
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223e32a


.align 2, 0


.thumb
Function_223e32c: @ 223e32c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x8]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_223e33c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223e33c

.thumb
branch_223e33c: @ 223e33c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223e340

.thumb
Function_223e340: @ 223e340 :thumb
	ldr     r3, [pc, #0x4] @ 0x223e348, (=Call_FillMemWithValue)
	mov     r1, #0x0
	mov     r2, #0x78
	bx      r3
@ 0x223e348

.word Call_FillMemWithValue @ 0x223e348
.thumb
Function_223e34c: @ 223e34c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_223e35a
	bl      ErrorHandling
.thumb
branch_223e35a: @ 223e35a :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x78
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223e366


.align 2, 0


.thumb
Function_223e368: @ 223e368 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r0, #0x74]
	mov     r7, r2
	str     r1, [sp, #0xc]
	str     r3, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_223e37e
	bl      ErrorHandling
.thumb
branch_223e37e: @ 223e37e :thumb
	ldr     r4, [pc, #0xa0] @ 0x223e420, (=0x2240418)
	ldr     r5, [sp, #0x8]
	mov     r6, #0x0
.thumb
branch_223e384: @ 223e384 :thumb
	ldrb    r1, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r2, r7
	bl      Function_223d6bc
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r5!, {r0}
	cmp     r6, #0x6
	blt     branch_223e384
	ldr     r4, [pc, #0x88] @ 0x223e424, (=0x2240438)
	ldr     r5, [sp, #0x8]
	mov     r6, #0x0
.thumb
branch_223e3a0: @ 223e3a0 :thumb
	ldrb    r1, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x10]
	mov     r2, r7
	bl      Function_223d6ec
	str     r0, [r5, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_223e3a0
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x68] @ 0x223e428, (=0x2240428)
	ldr     r6, [pc, #0x6c] @ 0x223e42c, (=0x2240430)
	ldr     r4, [pc, #0x6c] @ 0x223e430, (=0x2240440)
	ldr     r5, [sp, #0x8]
	ldr     r7, [pc, #0x6c] @ 0x223e434, (=0x2240420)
	str     r0, [sp, #0x18]
.thumb
branch_223e3c8: @ 223e3c8 :thumb
	ldrb    r0, [r6, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x18]
	ldrb    r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldrb    r1, [r7, #0x0]
	ldrb    r3, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x8]
	ldr     r1, [r1, r2]
	ldr     r2, [r5, #0x18]
	bl      Function_223d720
	str     r0, [r5, #0x38]
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x80
	ldrb    r3, [r6, #0x0]
	sub     r1, r1, r2
	mov     r2, #0x60
	sub     r2, r2, r3
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_2015268
	ldr     r0, [sp, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, #0x8
	blt     branch_223e3c8
	ldr     r0, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [r0, #0x74]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e420

.word 0x2240418 @ 0x223e420
.word 0x2240438 @ 0x223e424
.word 0x2240428 @ 0x223e428
.word 0x2240430 @ 0x223e42c
.word 0x2240440 @ 0x223e430
.word 0x2240420 @ 0x223e434
.thumb
Function_223e438: @ 223e438 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x74]
	cmp     r0, #0x1
	beq     branch_223e446
	bl      ErrorHandling
.thumb
branch_223e446: @ 223e446 :thumb
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223e44a: @ 223e44a :thumb
	ldr     r0, [r5, #0x38]
	bl      Function_2015238
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_223e44a
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_223e45c: @ 223e45c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_2015164
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_223e45c
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_223e46e: @ 223e46e :thumb
	ldr     r0, [r4, #0x18]
	bl      Function_20151d4
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x8
	blt     branch_223e46e
	mov     r0, #0x0
	str     r0, [r6, #0x74]
	pop     {r4-r6,pc}
@ 0x223e482


.align 2, 0


.thumb
Function_223e484: @ 223e484 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x8
	bcc     branch_223e494
	bl      ErrorHandling
.thumb
branch_223e494: @ 223e494 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, #0x38]
	mov     r1, r6
	bl      Function_2015240
	pop     {r4-r6,pc}
@ 0x223e4a2


.align 2, 0


.thumb
Function_223e4a4: @ 223e4a4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x5
	add     r5, #0x14
.thumb
branch_223e4ae: @ 223e4ae :thumb
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      Function_20152bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	ble     branch_223e4ae
	pop     {r4-r6,pc}
@ 0x223e4c0

.thumb
Function_223e4c0: @ 223e4c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x5
	add     r5, #0x14
.thumb
branch_223e4ca: @ 223e4ca :thumb
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	mov     r2, r6
	bl      Function_2015270
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	ble     branch_223e4ca
	pop     {r4-r6,pc}
@ 0x223e4de


.align 2, 0


.thumb
Function_223e4e0: @ 223e4e0 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x8
	bcc     branch_223e4f0
	bl      ErrorHandling
.thumb
branch_223e4f0: @ 223e4f0 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	lsl     r1, r6, #24
	ldr     r0, [r0, #0x38]
	lsr     r1, r1, #24
	bl      Function_2015294
	pop     {r4-r6,pc}
@ 0x223e500

.thumb
Function_223e500: @ 223e500 :thumb
	push    {r3,lr}
	mov     r2, #0x1
	str     r2, [r0, #0x6c]
	mov     r1, #0x0
	str     r1, [r0, #0x70]
	lsl     r1, r2, #12
	ldr     r2, [pc, #0x8] @ 0x223e518, (=0xfae)
	add     r0, #0x58
	mov     r3, #0x4
	bl      Function_223d9dc
	pop     {r3,pc}
@ 0x223e518

.word 0xfae @ 0x223e518
.thumb
Function_223e51c: @ 223e51c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x6c]
	mov     r3, r1
	cmp     r0, #0x0
	beq     branch_223e52e
	cmp     r0, #0x1
	beq     branch_223e568
	b       branch_223e592
@ 0x223e52e

.thumb
branch_223e52e: @ 223e52e :thumb
	ldr     r0, [r5, #0x70]
	cmp     r0, #0x0
	bne     branch_223e54c
	ldr     r1, [pc, #0x60] @ 0x223e598, (=0x2240448)
	lsl     r4, r3, #2
	ldr     r2, [pc, #0x60] @ 0x223e59c, (=0x2240454)
	ldr     r1, [r1, r4]
	ldr     r2, [r2, r4]
	ldr     r4, [pc, #0x60] @ 0x223e5a0, (=0x2240414)
	mov     r0, r5
	ldrb    r3, [r4, r3]
	add     r0, #0x58
	bl      Function_223d9dc
	b       branch_223e562
@ 0x223e54c

.thumb
branch_223e54c: @ 223e54c :thumb
	ldr     r1, [pc, #0x4c] @ 0x223e59c, (=0x2240454)
	lsl     r4, r3, #2
	ldr     r2, [pc, #0x44] @ 0x223e598, (=0x2240448)
	ldr     r1, [r1, r4]
	ldr     r2, [r2, r4]
	ldr     r4, [pc, #0x48] @ 0x223e5a0, (=0x2240414)
	mov     r0, r5
	ldrb    r3, [r4, r3]
	add     r0, #0x58
	bl      Function_223d9dc
.thumb
branch_223e562: @ 223e562 :thumb
	ldr     r0, [r5, #0x6c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x6c]
.thumb
branch_223e568: @ 223e568 :thumb
	mov     r0, r5
	add     r0, #0x58
	bl      Function_223d9ec
	mov     r7, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223e576: @ 223e576 :thumb
	ldr     r1, [r5, #0x58]
	ldr     r0, [r4, #0x38]
	mov     r2, r1
	bl      Function_2015270
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	ble     branch_223e576
	cmp     r7, #0x1
	bne     branch_223e596
	mov     r0, #0x0
	str     r0, [r5, #0x6c]
	pop     {r3-r7,pc}
@ 0x223e592

.thumb
branch_223e592: @ 223e592 :thumb
	bl      ErrorHandling
.thumb
branch_223e596: @ 223e596 :thumb
	pop     {r3-r7,pc}
@ 0x223e598

.word 0x2240448 @ 0x223e598
.word 0x2240454 @ 0x223e59c
.word 0x2240414 @ 0x223e5a0
.thumb
Function_223e5a4: @ 223e5a4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x0
	mov     r2, #0x20
	mov     r5, r0
	mov     r7, r3
	blx     Call_FillMemWithValue
	str     r4, [r5, #0x14]
	str     r6, [r5, #0x18]
	str     r7, [r5, #0x1c]
	pop     {r3-r7,pc}
@ 0x223e5be


.align 2, 0


.thumb
Function_223e5c0: @ 223e5c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223e5ce
	bl      ErrorHandling
.thumb
branch_223e5ce: @ 223e5ce :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x20
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223e5da


.align 2, 0


.thumb
Function_223e5dc: @ 223e5dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x14]
	mov     r0, #0x6
	mov     r6, r2
	lsl     r0, r0, #16
	ldr     r5, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r7, r3
	str     r0, [sp, #0x18]
	mov     r4, #0x0
	add     r6, #0x38
.thumb
branch_223e5fa: @ 223e5fa :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	str     r7, [sp, #0x8]
	mov     r1, r6
	mov     r2, #0x80
	mov     r3, #0x60
	bl      Function_223d9a8
	str     r0, [r5, #0x4]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r5, #0x4]
	add     r1, r4, #0x4
	bl      Function_2021d6c
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x14
	bl      Function_2021c50
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223e5fa
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223e63a


.align 2, 0


.thumb
Function_223e63c: @ 223e63c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223e644: @ 223e644 :thumb
	ldr     r0, [r5, #0x4]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223e644
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x223e658

.thumb
Function_223e658: @ 223e658 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	ldr     r7, [r6, #0x14]
	ldr     r0, [r6, #0x18]
	add     r7, #0x98
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_223e696
	mov     r5, r6
.thumb
branch_223e66c: @ 223e66c :thumb
	ldr     r0, [r6, #0x14]
	add     r1, r0, r4
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	add     r0, r7, r1
	ldrb    r1, [r7, r1]
	lsl     r1, r1, #12
	str     r1, [sp, #0x0]
	ldrb    r0, [r0, #0x4]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	bl      Function_2021c50
	ldr     r0, [r6, #0x18]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_223e66c
.thumb
branch_223e696: @ 223e696 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223e69a


.align 2, 0


.thumb
Function_223e69c: @ 223e69c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x18]
	mov     r6, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bls     branch_223e6d2
	mov     r7, r5
.thumb
branch_223e6ac: @ 223e6ac :thumb
	ldr     r0, [r5, #0x14]
	add     r1, r0, r6
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldrb    r4, [r1, r0]
	ldr     r0, [r5, #0x1c]
	bl      Function_223d570
	cmp     r4, r0
	beq     branch_223e6c8
	ldr     r0, [r7, #0x4]
	ldr     r1, [sp, #0x0]
	bl      Function_2021cac
.thumb
branch_223e6c8: @ 223e6c8 :thumb
	ldr     r0, [r5, #0x18]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, r0
	bcc     branch_223e6ac
.thumb
branch_223e6d2: @ 223e6d2 :thumb
	pop     {r3-r7,pc}
@ 0x223e6d4

.thumb
Function_223e6d4: @ 223e6d4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x38
	mov     r7, r3
	blx     Call_FillMemWithValue
	str     r6, [r5, #0x1c]
	ldr     r0, [sp, #0x1c]
	str     r4, [r5, #0x20]
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x24]
	str     r0, [r5, #0x18]
	pop     {r3-r7,pc}
@ 0x223e6f6


.align 2, 0


.thumb
Function_223e6f8: @ 223e6f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_223e706
	bl      ErrorHandling
.thumb
branch_223e706: @ 223e706 :thumb
	mov     r0, r4
	bl      Function_223e994
	mov     r0, r4
	bl      Function_223e9d0
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x38
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223e71e


.align 2, 0


.thumb
Function_223e720: @ 223e720 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x28]
	mov     r4, r1
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	beq     branch_223e734
	bl      ErrorHandling
.thumb
branch_223e734: @ 223e734 :thumb
	mov     r0, r5
	mov     r1, r6
	str     r4, [r5, #0x4]
	bl      Function_223e77c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r7
	bl      Function_223e844
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1
	str     r0, [r5, #0x28]
	pop     {r3-r7,pc}
@ 0x223e75e


.align 2, 0


.thumb
Function_223e760: @ 223e760 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x1
	beq     branch_223e76e
	bl      ErrorHandling
.thumb
branch_223e76e: @ 223e76e :thumb
	mov     r0, r4
	bl      Function_223e824
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	pop     {r4,pc}
@ 0x223e77a


.align 2, 0


.thumb
Function_223e77c: @ 223e77c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r0
	ldr     r0, [r7, #0x18]
	str     r1, [sp, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x4]
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_200dd0c
	ldr     r2, [sp, #0x14]
	mov     r0, #0x0
	mov     r1, #0x40
	bl      Function_2002e98
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r1, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x4]
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_200daa4
	ldr     r2, [sp, #0x14]
	mov     r0, #0x0
	mov     r1, #0x60
	bl      Function_2002e7c
	ldr     r5, [pc, #0x58] @ 0x223e820, (=0x22405c0)
	mov     r6, #0x0
	mov     r4, r7
.thumb
branch_223e7ca: @ 223e7ca :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0x1
	bl      Function_201a778
	str     r0, [r4, #0x8]
	ldrh    r0, [r5, #0x2]
	mov     r2, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r5, #0x4]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r5, #0x6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldrh    r0, [r5, #0x8]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldrh    r0, [r5, #0xa]
	str     r0, [sp, #0x10]
	ldrh    r3, [r5, #0x0]
	ldr     r0, [r7, #0x4]
	ldr     r1, [r4, #0x8]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_201a7e8
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_201ada4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0xc
	cmp     r6, #0x4
	blt     branch_223e7ca
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223e81e


.align 2


.word 0x22405c0 @ 0x223e820
.thumb
Function_223e824: @ 223e824 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_223e82c: @ 223e82c :thumb
	ldr     r0, [r5, #0x8]
	bl      Function_201a8fc
	ldr     r0, [r5, #0x8]
	mov     r1, r6
	bl      Function_201a928
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223e82c
	pop     {r4-r6,pc}
@ 0x223e844

.thumb
Function_223e844: @ 223e844 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r2
	mov     r0, #0x20
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, #0x80
	str     r4, [sp, #0x4]
	bl      Function_2007130
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, #0x5
	mov     r3, #0x1
	bl      Function_20070e8
	str     r4, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x7
	mov     r2, #0x0
	add     r3, sp, #0x10
	bl      Function_20071d0
	ldr     r2, [sp, #0x10]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r4, r0
	ldrh    r0, [r2, #0x0]
	mov     r1, #0x1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldrh    r0, [r2, #0x2]
	add     r2, #0xc
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_20198c0
	ldr     r1, [sp, #0x10]
	mov     r2, #0x0
	ldrh    r0, [r1, #0x0]
	mov     r3, r2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r1, #0x2]
	mov     r1, #0x1
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x4]
	bl      Function_2019e2c
	mov     r0, r4
	bl      free
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1
	bl      Function_201c3c0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x223e8da


.align 2, 0


.thumb
Function_223e8dc: @ 223e8dc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x30]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x30]
	cmp     r0, #0x1e
	blt     branch_223e906
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_223e906: @ 223e906 :thumb
	pop     {r3-r5,pc}
@ 0x223e908

.thumb
Function_223e908: @ 223e908 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	mov     r5, r1
	cmp     r0, #0x0
	beq     branch_223e91a
	bl      ErrorHandling
.thumb
branch_223e91a: @ 223e91a :thumb
	mov     r2, #0x1
	ldr     r0, [pc, #0x5c] @ 0x223e97c, (=0x223e8dd)
	mov     r1, r4
	lsl     r2, r2, #10
	bl      AddTaskToTaskList1
	str     r0, [r4, #0x2c]
	mov     r1, #0x0
	str     r1, [r4, #0x30]
	ldr     r0, [r4, #0x8]
	bl      Function_201ada4
	ldr     r1, [r4, #0x1c]
	lsl     r5, r5, #2
	add     r1, r1, r5
	ldr     r1, [r1, #0x38]
	mov     r0, #0x1
	mov     r2, #0x0
	mov     r3, #0x80
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x223e980, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0x8]
	add     r2, r2, r5
	ldr     r2, [r2, #0x38]
	mov     r1, #0x1
	bl      Function_201d78c
	ldr     r0, [r4, #0x8]
	bl      Function_201a954
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff0c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223e97a


.align 2


.word 0x223e8dd @ 0x223e97c
.word 0x1020f @ 0x223e980
.thumb
Function_223e984: @ 223e984 :thumb
	ldr     r0, [r0, #0x2c]
	cmp     r0, #0x0
	bne     branch_223e98e
	mov     r0, #0x1
	bx      lr
@ 0x223e98e

.thumb
branch_223e98e: @ 223e98e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223e992


.align 2, 0


.thumb
Function_223e994: @ 223e994 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_223e9b8
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r0, [r4, #0x2c]
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_223e9b8: @ 223e9b8 :thumb
	pop     {r4,pc}
@ 0x223e9ba


.align 2, 0


.thumb
Function_223e9bc: @ 223e9bc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223e9d0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_200e7fc
	str     r0, [r4, #0x34]
	pop     {r4,pc}
@ 0x223e9d0

.thumb
Function_223e9d0: @ 223e9d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_223e9e2
	bl      Function_200eba0
	mov     r0, #0x0
	str     r0, [r4, #0x34]
.thumb
branch_223e9e2: @ 223e9e2 :thumb
	pop     {r4,pc}
@ 0x223e9e4

.thumb
Function_223e9e4: @ 223e9e4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r0, [r4, #0xc]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r1, [r4, #0x1c]
	mov     r0, #0x0
	ldr     r1, [r1, #0x34]
	mov     r2, r0
	mov     r3, #0xe0
	bl      Function_2002eec
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x58] @ 0x223ea68, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x34]
	bl      Function_201d78c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_200dc48
	ldr     r0, [r4, #0x10]
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223ea68, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0x10]
	ldr     r2, [r2, #0x64]
	mov     r3, r1
	bl      Function_201d78c
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0x1
	bl      Function_200dc48
	ldr     r0, [r4, #0xc]
	bl      Function_201a9a4
	ldr     r0, [r4, #0x10]
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223ea68

.word 0x1020f @ 0x223ea68
.thumb
Function_223ea6c: @ 223ea6c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x158] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x4c]
	mov     r3, r1
	bl      Function_201d78c
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x1c]
	add     r2, #0x66
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x0
	bl      Function_200b60c
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x1c]
	add     r2, #0x67
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_200b60c
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x1c]
	add     r2, #0x68
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	bl      Function_200b60c
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r2, #0x4]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0x50]
	bl      Function_200c388
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0xec] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r3, #0xa0
	bl      Function_201d78c
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0xd4] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x54]
	mov     r3, r1
	bl      Function_201d78c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r0, #0x4]
	ldr     r2, [r2, #0x58]
	mov     r3, #0x4
	bl      Function_200b60c
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x58]
	cmp     r0, #0x1
	bne     branch_223eb34
	mov     r2, #0x3
	b       branch_223eb36
@ 0x223eb34

.thumb
branch_223eb34: @ 223eb34 :thumb
	mov     r2, #0x5
.thumb
branch_223eb36: @ 223eb36 :thumb
	ldr     r3, [r4, #0x1c]
	lsl     r2, r2, #2
	add     r2, r3, r2
	ldr     r0, [r3, #0x4]
	ldr     r1, [r3, #0x8]
	ldr     r2, [r2, #0x4c]
	bl      Function_200c388
	mov     r0, #0x30
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x84] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r3, #0xa0
	bl      Function_201d78c
	mov     r0, #0x44
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x6c] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x5c]
	mov     r3, r1
	bl      Function_201d78c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r0, #0x4]
	ldr     r2, [r2, #0x5c]
	mov     r3, #0x4
	bl      Function_200b60c
	ldr     r0, [r4, #0x24]
	ldr     r0, [r0, #0x5c]
	cmp     r0, #0x1
	bne     branch_223eb9c
	mov     r2, #0x3
	b       branch_223eb9e
@ 0x223eb9c

.thumb
branch_223eb9c: @ 223eb9c :thumb
	mov     r2, #0x5
.thumb
branch_223eb9e: @ 223eb9e :thumb
	ldr     r3, [r4, #0x1c]
	lsl     r2, r2, #2
	add     r2, r3, r2
	ldr     r0, [r3, #0x4]
	ldr     r1, [r3, #0x8]
	ldr     r2, [r2, #0x4c]
	bl      Function_200c388
	mov     r0, #0x44
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x223ebd4, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r3, #0xa0
	bl      Function_201d78c
	ldr     r0, [r4, #0xc]
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223ebd2


.align 2


.word 0x1020f @ 0x223ebd4
.thumb
Function_223ebd8: @ 223ebd8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x1c]
	add     r2, #0x64
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x3
	bl      Function_200bf74
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [r4, #0x24]
	ldr     r0, [r4, #0x1c]
	add     r2, #0x65
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_200b60c
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r2, [r4, #0x20]
	ldr     r0, [r0, #0x4]
	mov     r3, r1
	bl      Function_200b60c
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r2, #0x4]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0x68]
	bl      Function_200c388
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x223ec48, (=0x1020f)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r4, #0x10]
	ldr     r2, [r2, #0x8]
	mov     r3, #0x10
	bl      Function_201d78c
	ldr     r0, [r4, #0x10]
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223ec48

.word 0x1020f @ 0x223ec48
.thumb
Function_223ec4c: @ 223ec4c :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_223ec5c
	cmp     r1, #0x1
	beq     branch_223ec62
	cmp     r1, #0x2
	beq     branch_223ec68
	pop     {r3,pc}
@ 0x223ec5c

.thumb
branch_223ec5c: @ 223ec5c :thumb
	bl      Function_223e9e4
	pop     {r3,pc}
@ 0x223ec62

.thumb
branch_223ec62: @ 223ec62 :thumb
	bl      Function_223ea6c
	pop     {r3,pc}
@ 0x223ec68

.thumb
branch_223ec68: @ 223ec68 :thumb
	bl      Function_223ebd8
	pop     {r3,pc}
@ 0x223ec6e


.align 2, 0


.thumb
Function_223ec70: @ 223ec70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r0, [r4, #0xc]
	bl      Function_201acf4
	ldr     r0, [r4, #0x10]
	bl      Function_201acf4
	pop     {r4,pc}
@ 0x223ec8a


.align 2, 0


.thumb
Function_223ec8c: @ 223ec8c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r6, r1
	bl      Function_223e9d0
	ldr     r0, [r4, #0x14]
	mov     r1, #0xf
	bl      Function_201ada4
	cmp     r6, #0x6
	bhi     branch_223ed0c
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223ecb0

Jumppoints_223ecb0:
.hword branch_223ecbe - Jumppoints_223ecb0 - 2
.hword branch_223ecea - Jumppoints_223ecb0 - 2
.hword branch_223ecf0 - Jumppoints_223ecb0 - 2
.hword branch_223ecf6 - Jumppoints_223ecb0 - 2
.hword branch_223ecfc - Jumppoints_223ecb0 - 2
.hword branch_223ed02 - Jumppoints_223ecb0 - 2
.hword branch_223ed08 - Jumppoints_223ecb0 - 2
.thumb
branch_223ecbe: @ 223ecbe :thumb
	mov     r3, #0x51
	ldr     r2, [r4, #0x24]
	lsl     r3, r3, #2
	ldrb    r5, [r2, r3]
	ldr     r0, [r4, #0x1c]
	sub     r3, #0x10
	lsl     r5, r5, #2
	add     r2, r2, r5
	ldr     r0, [r0, #0x4]
	ldr     r2, [r2, r3]
	mov     r1, #0x0
	bl      Function_200b498
	ldr     r2, [r4, #0x1c]
	ldr     r0, [r2, #0x4]
	ldr     r1, [r2, #0x8]
	ldr     r2, [r2, #0x18]
	bl      Function_200c388
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x8]
	b       branch_223ed0c
@ 0x223ecea

.thumb
branch_223ecea: @ 223ecea :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x1c]
	b       branch_223ed0c
@ 0x223ecf0

.thumb
branch_223ecf0: @ 223ecf0 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x28]
	b       branch_223ed0c
@ 0x223ecf6

.thumb
branch_223ecf6: @ 223ecf6 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x24]
	b       branch_223ed0c
@ 0x223ecfc

.thumb
branch_223ecfc: @ 223ecfc :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x20]
	b       branch_223ed0c
@ 0x223ed02

.thumb
branch_223ed02: @ 223ed02 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0x2c]
	b       branch_223ed0c
@ 0x223ed08

.thumb
branch_223ed08: @ 223ed08 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r5, [r0, #0xc]
.thumb
branch_223ed0c: @ 223ed0c :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x223ed38, (=0x1020f)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	mov     r2, r5
	bl      Function_201d78c
	mov     r1, #0x0
	ldr     r0, [r4, #0x14]
	mov     r2, #0x1
	mov     r3, r1
	bl      Function_200e060
	ldr     r0, [r4, #0x14]
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223ed38

.word 0x1020f @ 0x223ed38
.thumb
Function_223ed3c: @ 223ed3c :thumb
	ldr     r3, [pc, #0x4] @ 0x223ed44, (=Call_FillMemWithValue)
	mov     r1, #0x0
	ldr     r2, [pc, #0x4] @ 0x223ed48, (=0x414)
	bx      r3
@ 0x223ed44

.word Call_FillMemWithValue @ 0x223ed44
.word 0x414 @ 0x223ed48
.thumb
Function_223ed4c: @ 223ed4c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223ed5a
	bl      ErrorHandling
.thumb
branch_223ed5a: @ 223ed5a :thumb
	ldr     r2, [pc, #0xc] @ 0x223ed68, (=0x414)
	mov     r0, r4
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223ed66


.align 2


.word 0x414 @ 0x223ed68
.thumb
Function_223ed6c: @ 223ed6c :thumb
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	str     r3, [r0, #0xc]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	bx      lr
@ 0x223ed78

.thumb
Function_223ed78: @ 223ed78 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x10
.thumb
branch_223ed84: @ 223ed84 :thumb
	mov     r0, r4
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223ed94
	mov     r0, r5
	bl      Function_223f054
.thumb
branch_223ed94: @ 223ed94 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x80
	add     r5, #0x80
	cmp     r6, #0x8
	blt     branch_223ed84
	mov     r0, #0x0
	str     r0, [r7, #0x0]
	pop     {r3-r7,pc}
@ 0x223eda4

.thumb
Function_223eda4: @ 223eda4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r7, r1
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_223edb0: @ 223edb0 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223edce
	mov     r0, r4
	bl      Function_223f074
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x0
	beq     branch_223edce
	mov     r0, r4
	mov     r1, r7
	bl      Function_223f0f4
.thumb
branch_223edce: @ 223edce :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x80
	add     r4, #0x80
	cmp     r6, #0x8
	blt     branch_223edb0
	pop     {r3-r7,pc}
@ 0x223edda


.align 2, 0


.thumb
Function_223eddc: @ 223eddc :thumb
	push    {r3-r7,lr}
	add     sp, #-0xb8
	mov     r5, r0
	lsl     r0, r1, #1
	add     r0, r1, r0
	add     r2, r2, r0
	mov     r0, #0x1c
	mov     r1, r2
	mul     r1, r0
	ldr     r0, [pc, #0x1d0] @ 0x223efc0, (=0x22404b0)
	add     r3, sp, #0x9c
	add     r4, r0, r1
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	cmp     r2, #0x8
	str     r0, [r3, #0x0]
	blt     branch_223ee0a
	b       branch_223efbc
@ 0x223ee0a

.thumb
branch_223ee0a: @ 223ee0a :thumb
	mov     r0, r5
	bl      Function_223eff4
	str     r0, [sp, #0x60]
	cmp     r0, #0x0
	bne     branch_223ee2c
	mov     r0, r5
	bl      Function_223f018
	str     r0, [sp, #0x60]
	cmp     r0, #0x0
	bne     branch_223ee26
	bl      ErrorHandling
.thumb
branch_223ee26: @ 223ee26 :thumb
	ldr     r0, [sp, #0x60]
	bl      Function_223f054
.thumb
branch_223ee2c: @ 223ee2c :thumb
	bl      Function_201d35c
	lsl     r0, r0, #16
	lsr     r6, r0, #16
	bl      Function_201d35c
	add     r1, sp, #0x9c
	ldrb    r1, [r1, #0x11]
	blx     _u32_div_f
	add     r0, sp, #0x9c
	ldrb    r0, [r0, #0x10]
	add     r4, r0, r1
	bl      Function_201d35c
	add     r1, sp, #0x9c
	ldrb    r1, [r1, #0x13]
	blx     _u32_div_f
	add     r0, sp, #0x9c
	ldrb    r0, [r0, #0x12]
	add     r0, r0, r1
	add     r0, r0, r4
	asr     r1, r6, #4
	lsl     r2, r1, #1
	lsl     r0, r0, #12
	str     r0, [sp, #0x6c]
	asr     r0, r0, #31
	lsl     r3, r2, #1
	ldr     r1, [pc, #0x15c] @ 0x223efc4, (=0x20f983c)
	str     r0, [sp, #0x70]
	ldr     r0, [sp, #0xa8]
	ldsh    r6, [r1, r3]
	lsl     r3, r4, #12
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r3, [sp, #0x64]
	asr     r3, r3, #31
	lsl     r2, r2, #1
	str     r0, [sp, #0x74]
	asr     r0, r0, #31
	str     r3, [sp, #0x68]
	ldsh    r4, [r1, r2]
	str     r0, [sp, #0x78]
	bl      Function_201d35c
	ldr     r1, [sp, #0xa0]
	blx     _u32_div_f
	ldr     r0, [sp, #0x9c]
	ldr     r2, [sp, #0x64]
	add     r0, r0, r1
	str     r0, [sp, #0x5c]
	asr     r0, r6, #31
	str     r0, [sp, #0x7c]
	ldr     r1, [sp, #0x7c]
	ldr     r3, [sp, #0x68]
	mov     r0, r6
	asr     r7, r4, #31
	blx     _ll_mul
	str     r1, [sp, #0x58]
	str     r0, [sp, #0x80]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x6c]
	ldr     r3, [sp, #0x70]
	mov     r0, r6
	blx     _ll_mul
	str     r1, [sp, #0x50]
	str     r0, [sp, #0x84]
	ldr     r1, [sp, #0x7c]
	ldr     r2, [sp, #0x74]
	ldr     r3, [sp, #0x78]
	mov     r0, r6
	blx     _ll_mul
	str     r0, [sp, #0x88]
	str     r1, [sp, #0x98]
	ldr     r2, [sp, #0x64]
	ldr     r3, [sp, #0x68]
	mov     r0, r4
	mov     r1, r7
	blx     _ll_mul
	str     r0, [sp, #0x8c]
	str     r1, [sp, #0x48]
	ldr     r2, [sp, #0x6c]
	ldr     r3, [sp, #0x70]
	mov     r0, r4
	mov     r1, r7
	blx     _ll_mul
	str     r0, [sp, #0x90]
	str     r1, [sp, #0x40]
	ldr     r2, [sp, #0x74]
	ldr     r3, [sp, #0x78]
	mov     r0, r4
	mov     r1, r7
	blx     _ll_mul
	mov     r2, r0
	mov     r4, #0x2
	ldr     r0, [sp, #0x88]
	ldr     r3, [sp, #0x98]
	mov     r6, #0x0
	lsl     r4, r4, #10
	add     r0, r0, r4
	adc     r3, r6
	str     r3, [sp, #0x98]
	lsl     r3, r3, #20
	lsr     r0, r0, #12
	orr     r0, r3
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8c]
	ldr     r3, [sp, #0x48]
	add     r0, r0, r4
	adc     r3, r6
	str     r3, [sp, #0x48]
	mov     r7, #0x6
	lsl     r3, r3, #20
	lsr     r0, r0, #12
	orr     r0, r3
	lsl     r7, r7, #16
	add     r0, r0, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x90]
	ldr     r3, [sp, #0x40]
	add     r0, r0, r4
	adc     r3, r6
	str     r3, [sp, #0x40]
	lsl     r3, r3, #20
	lsr     r0, r0, #12
	orr     r0, r3
	add     r0, r0, r7
	add     r2, r2, r4
	adc     r1, r6
	str     r0, [sp, #0x8]
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x80] @ 0x223efc8, (=0x19a)
	add     r2, sp, #0x9c
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x5c]
	mov     r1, #0x38
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xa4]
	str     r0, [sp, #0x18]
	ldrb    r0, [r2, #0x18]
	str     r0, [sp, #0x1c]
	ldrb    r0, [r2, #0x14]
	str     r0, [sp, #0x20]
	ldrb    r3, [r2, #0x15]
	ldr     r0, [r5, #0x8]
	mul     r1, r3
	add     r0, r0, r1
	str     r0, [sp, #0x24]
	ldrb    r0, [r2, #0x16]
	str     r0, [sp, #0x28]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x2c]
	ldr     r0, [r5, #0xc]
	str     r0, [sp, #0x30]
	ldrb    r0, [r2, #0x19]
	str     r0, [sp, #0x34]
	ldrb    r0, [r2, #0x1a]
	str     r0, [sp, #0x38]
	ldrb    r1, [r2, #0x17]
	ldr     r2, [sp, #0x80]
	ldr     r0, [sp, #0x60]
	add     r3, r2, r4
	ldr     r2, [sp, #0x58]
	adc     r2, r6
	str     r2, [sp, #0x58]
	lsl     r2, r2, #20
	lsr     r3, r3, #12
	orr     r3, r2
	lsl     r2, r4, #8
	add     r2, r3, r2
	ldr     r3, [sp, #0x84]
	add     r7, r3, r4
	ldr     r3, [sp, #0x50]
	adc     r3, r6
	str     r3, [sp, #0x50]
	lsl     r3, r3, #20
	lsr     r6, r7, #12
	orr     r6, r3
	lsl     r3, r4, #8
	add     r3, r6, r3
	bl      Function_223f1c0
	mov     r1, #0x41
	lsl     r1, r1, #4
	ldr     r2, [r5, r1]
	ldr     r0, [sp, #0x60]
	str     r2, [r0, #0x7c]
	ldr     r0, [r5, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, r1]
.thumb
branch_223efbc: @ 223efbc :thumb
	add     sp, #0xb8
	pop     {r3-r7,pc}
@ 0x223efc0

.word 0x22404b0 @ 0x223efc0
.word 0x20f983c @ 0x223efc4
.word 0x19a @ 0x223efc8
.thumb
Function_223efcc: @ 223efcc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_223efd6: @ 223efd6 :thumb
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223efe6
	mov     r0, r4
	bl      Function_223f268
.thumb
branch_223efe6: @ 223efe6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x80
	add     r4, #0x80
	cmp     r6, #0x8
	blt     branch_223efd6
	pop     {r4-r6,pc}
@ 0x223eff2


.align 2, 0


.thumb
Function_223eff4: @ 223eff4 :thumb
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_223eff8: @ 223eff8 :thumb
	mov     r1, r3
	add     r1, #0x88
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223f00a
	add     r0, #0x10
	lsl     r1, r2, #7
	add     r0, r0, r1
	bx      lr
@ 0x223f00a

.thumb
branch_223f00a: @ 223f00a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x80
	cmp     r2, #0x8
	blt     branch_223eff8
	mov     r0, #0x0
	bx      lr
@ 0x223f016


.align 2, 0


.thumb
Function_223f018: @ 223f018 :thumb
	push    {r4,r5}
	mov     r2, #0x0
	mov     r3, r0
	mov     r1, r2
	add     r3, #0x10
.thumb
branch_223f022: @ 223f022 :thumb
	mov     r4, r0
	add     r4, #0x88
	ldr     r4, [r4, #0x0]
	cmp     r4, #0x0
	beq     branch_223f042
	cmp     r2, #0x0
	bne     branch_223f034
	mov     r2, r3
	b       branch_223f042
@ 0x223f034

.thumb
branch_223f034: @ 223f034 :thumb
	mov     r4, r0
	add     r4, #0x8c
	ldr     r5, [r2, #0x7c]
	ldr     r4, [r4, #0x0]
	cmp     r5, r4
	ble     branch_223f042
	mov     r2, r3
.thumb
branch_223f042: @ 223f042 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, #0x80
	add     r3, #0x80
	cmp     r1, #0x8
	blt     branch_223f022
	mov     r0, r2
	pop     {r4,r5}
	bx      lr
@ 0x223f052


.align 2, 0


.thumb
Function_223f054: @ 223f054 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	bne     branch_223f062
	bl      ErrorHandling
.thumb
branch_223f062: @ 223f062 :thumb
	ldr     r0, [r4, #0x78]
	bl      Function_2021bd4
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x80
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223f074

.thumb
Function_223f074: @ 223f074 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_223f0c6
	mov     r0, r4
	add     r0, #0x30
	bl      Function_223da94
	str     r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x48
	bl      Function_223da94
	mov     r0, r4
	add     r0, #0x60
	bl      Function_223da94
	ldr     r0, [r4, #0x30]
	mov     r1, r4
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x48]
	add     r1, #0x14
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x78]
	bl      Function_2021c50
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_223f0c6
	ldr     r0, [r4, #0x60]
	mov     r1, r4
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x60]
	add     r1, #0x20
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x60]
	str     r0, [r4, #0x28]
	ldr     r0, [r4, #0x78]
	bl      Function_2021c70
.thumb
branch_223f0c6: @ 223f0c6 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_223f0da
	ldr     r0, [r4, #0x78]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_223f0da
	mov     r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_223f0da: @ 223f0da :thumb
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_223f0f2
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_223f0f2
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x1
	bne     branch_223f0f2
	mov     r0, r4
	bl      Function_223f054
.thumb
branch_223f0f2: @ 223f0f2 :thumb
	pop     {r4,pc}
@ 0x223f0f4

.thumb
Function_223f0f4: @ 223f0f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_223f1b8
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_223f1b8
	mov     r0, r1
	add     r0, #0xa4
	ldrb    r0, [r0, #0x0]
	ldr     r2, [r5, #0x2c]
	cmp     r0, #0x0
	bne     branch_223f11a
	add     r1, #0xa2
	ldrh    r0, [r1, #0x0]
	add     r0, r2, r0
	b       branch_223f120
@ 0x223f11a

.thumb
branch_223f11a: @ 223f11a :thumb
	add     r1, #0xa2
	ldrh    r0, [r1, #0x0]
	sub     r0, r2, r0
.thumb
branch_223f120: @ 223f120 :thumb
	str     r0, [r5, #0x2c]
	mov     r0, #0x2
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #18
	sub     r4, r1, r0
	mov     r0, #0x6
	mov     r2, #0x0
	ldr     r1, [r5, #0x18]
	lsl     r0, r0, #16
	sub     r6, r1, r0
	asr     r0, r4, #12
	asr     r1, r6, #12
	mov     r3, r2
	bl      Function_201e3bc
	mov     r7, r0
	mov     r0, r6
	mov     r1, r4
	blx     FX_Atan2Idx
	lsl     r6, r7, #12
	ldr     r1, [r5, #0x2c]
	asr     r7, r6, #31
	add     r0, r0, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r4, r0, #1
	add     r0, r4, #0x1
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x5c] @ 0x223f1bc, (=0x20f983c)
	mov     r2, r6
	ldsh    r0, [r0, r1]
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x223f1bc, (=0x20f983c)
	lsl     r1, r4, #1
	ldsh    r0, [r0, r1]
	mov     r2, r6
	mov     r3, r7
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r0, r0, r2
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r3, [sp, #0x0]
	lsl     r1, r2, #8
	add     r1, r3, r1
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	lsl     r1, r1, #16
	str     r0, [sp, #0x4]
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x78]
	add     r1, sp, #0x0
	bl      Function_2021c50
.thumb
branch_223f1b8: @ 223f1b8 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223f1bc

.word 0x20f983c @ 0x223f1bc
.thumb
Function_223f1c0: @ 223f1c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [sp, #0x40]
	str     r1, [r5, #0x0]
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, r3
	ldr     r3, [sp, #0x20]
	add     r0, #0x30
	mov     r1, r4
	ldr     r6, [sp, #0x30]
	bl      Function_223da34
	ldr     r0, [sp, #0x40]
	ldr     r1, [sp, #0x24]
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x2c]
	add     r0, #0x48
	bl      Function_223da34
	ldr     r0, [sp, #0x40]
	ldr     r2, [sp, #0x34]
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r3, [sp, #0x38]
	add     r0, #0x60
	mov     r1, r6
	bl      Function_223da34
	ldr     r3, [sp, #0x24]
	str     r4, [r5, #0x14]
	str     r3, [r5, #0x18]
	str     r6, [r5, #0x20]
	str     r6, [r5, #0x24]
	ldr     r0, [sp, #0x3c]
	str     r6, [r5, #0x28]
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x54]
	ldr     r1, [sp, #0x44]
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	add     r0, sp, #0x58
	ldrb    r0, [r0, #0x0]
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x50]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4c]
	bl      Function_223d9a8
	str     r0, [r5, #0x78]
	cmp     r0, #0x0
	bne     branch_223f238
	bl      ErrorHandling
.thumb
branch_223f238: @ 223f238 :thumb
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	beq     branch_223f24a
	mov     r1, r5
	ldr     r0, [r5, #0x78]
	add     r1, #0x20
	mov     r2, #0x2
	bl      Function_2021c80
.thumb
branch_223f24a: @ 223f24a :thumb
	ldr     r0, [r5, #0x78]
	ldr     r1, [sp, #0x48]
	bl      Function_2021d6c
	ldr     r0, [r5, #0x78]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [r5, #0x78]
	mov     r1, #0x2
	bl      Function_2021e80
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223f266


.align 2, 0


.thumb
Function_223f268: @ 223f268 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x1
	bne     branch_223f296
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	ldr     r1, [r4, #0x60]
	add     r0, #0x60
	mov     r2, #0xcd
	mov     r3, #0x0
	bl      Function_223da34
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x78]
	mov     r1, #0x2
	bl      Function_2021cf8
.thumb
branch_223f296: @ 223f296 :thumb
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223f29a


.align 2, 0


.thumb
Function_223f29c: @ 223f29c :thumb
	ldr     r3, [pc, #0x4] @ 0x223f2a4, (=Call_FillMemWithValue)
	mov     r1, #0x0
	mov     r2, #0x80
	bx      r3
@ 0x223f2a4

.word Call_FillMemWithValue @ 0x223f2a4
.thumb
Function_223f2a8: @ 223f2a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_223f2b6
	bl      ErrorHandling
.thumb
branch_223f2b6: @ 223f2b6 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x80
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223f2c2


.align 2, 0


.thumb
Function_223f2c4: @ 223f2c4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r6, r0
	ldr     r0, [r6, #0x7c]
	mov     r7, r1
	mov     r4, r3
	str     r2, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_223f2da
	bl      ErrorHandling
.thumb
branch_223f2da: @ 223f2da :thumb
	str     r7, [r6, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x1f
	str     r0, [sp, #0x8]
	mov     r0, #0x1e
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x54] @ 0x223f344, (=0x1b58)
	add     r1, r6, #0x4
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r2, r4
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r3, #0x21
	bl      Function_223d7a8
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223f304: @ 223f304 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x2
	mov     r3, #0x6
	str     r0, [sp, #0x8]
	mov     r0, r7
	add     r1, r6, #0x4
	lsl     r2, r2, #18
	lsl     r3, r3, #16
	bl      Function_223d9a8
	str     r0, [r5, #0x3c]
	cmp     r4, #0x2
	blt     branch_223f32c
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x1
	bl      Function_2021d6c
.thumb
branch_223f32c: @ 223f32c :thumb
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_223f304
	mov     r0, #0x1
	str     r0, [r6, #0x7c]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223f344

.word 0x1b58 @ 0x223f344
.thumb
Function_223f348: @ 223f348 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x7c]
	cmp     r0, #0x1
	beq     branch_223f356
	bl      ErrorHandling
.thumb
branch_223f356: @ 223f356 :thumb
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223f35a: @ 223f35a :thumb
	ldr     r0, [r5, #0x3c]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_223f35a
	ldr     r0, [r6, #0x0]
	add     r1, r6, #0x4
	bl      Function_223d95c
	mov     r0, #0x0
	str     r0, [r6, #0x7c]
	pop     {r4-r6,pc}
@ 0x223f376


.align 2, 0


.thumb
Function_223f378: @ 223f378 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x3c
.thumb
branch_223f380: @ 223f380 :thumb
	cmp     r4, #0x2
	beq     branch_223f388
	cmp     r4, #0x0
	bne     branch_223f390
.thumb
branch_223f388: @ 223f388 :thumb
	mov     r0, r5
	bl      Function_223f420
	b       branch_223f396
@ 0x223f390

.thumb
branch_223f390: @ 223f390 :thumb
	mov     r0, r5
	bl      Function_223f458
.thumb
branch_223f396: @ 223f396 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x4
	blt     branch_223f380
	pop     {r3-r5,pc}
@ 0x223f3a0

.thumb
Function_223f3a0: @ 223f3a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x4
	blt     branch_223f3ae
	bl      ErrorHandling
.thumb
branch_223f3ae: @ 223f3ae :thumb
	cmp     r5, #0x2
	beq     branch_223f3b6
	cmp     r5, #0x0
	bne     branch_223f3c2
.thumb
branch_223f3b6: @ 223f3b6 :thumb
	add     r4, #0x3c
	lsl     r0, r5, #4
	add     r0, r4, r0
	bl      Function_223f410
	pop     {r3-r5,pc}
@ 0x223f3c2

.thumb
branch_223f3c2: @ 223f3c2 :thumb
	add     r4, #0x3c
	lsl     r0, r5, #4
	add     r0, r4, r0
	bl      Function_223f44c
	pop     {r3-r5,pc}
@ 0x223f3ce


.align 2, 0


.thumb
Function_223f3d0: @ 223f3d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x4
	blt     branch_223f3de
	bl      ErrorHandling
.thumb
branch_223f3de: @ 223f3de :thumb
	lsl     r0, r5, #4
	mov     r1, #0x0
	add     r0, r4, r0
	str     r1, [r0, #0x48]
	ldr     r0, [r0, #0x3c]
	bl      Function_2021cac
	pop     {r3-r5,pc}
@ 0x223f3ee


.align 2, 0


.thumb
Function_223f3f0: @ 223f3f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x4
	blt     branch_223f3fe
	bl      ErrorHandling
.thumb
branch_223f3fe: @ 223f3fe :thumb
	lsl     r0, r5, #4
	add     r0, r4, r0
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	bne     branch_223f40c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223f40c

.thumb
branch_223f40c: @ 223f40c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223f410

.thumb
Function_223f410: @ 223f410 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223f41e


.align 2, 0


.thumb
Function_223f420: @ 223f420 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x0
	beq     branch_223f448
	bl      Function_223f458
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_223f448
	ldr     r0, [r4, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bgt     branch_223f448
	mov     r1, #0x0
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	bl      Function_2021cac
.thumb
branch_223f448: @ 223f448 :thumb
	pop     {r4,pc}
@ 0x223f44a


.align 2, 0


.thumb
Function_223f44c: @ 223f44c :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	mov     r1, #0x1
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223f456


.align 2, 0


.thumb
Function_223f458: @ 223f458 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_223f490
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_223f472
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_223f48a
@ 0x223f472

.thumb
branch_223f472: @ 223f472 :thumb
	cmp     r0, #0x8
	bne     branch_223f480
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2021cac
	b       branch_223f48a
@ 0x223f480

.thumb
branch_223f480: @ 223f480 :thumb
	cmp     r0, #0x10
	bne     branch_223f48a
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x223f48a

.thumb
branch_223f48a: @ 223f48a :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_223f490: @ 223f490 :thumb
	pop     {r4,pc}
@ 0x223f492


.align 2, 0


.thumb
Function_223f494: @ 223f494 :thumb
	push    {r3-r5,lr}
	ldr     r2, [pc, #0x10] @ 0x223f4a8, (=0x90c)
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	blx     Call_FillMemWithValue
	str     r4, [r5, #0x4]
	pop     {r3-r5,pc}
@ 0x223f4a6


.align 2


.word 0x90c @ 0x223f4a8
.thumb
Function_223f4ac: @ 223f4ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223f4ba
	bl      ErrorHandling
.thumb
branch_223f4ba: @ 223f4ba :thumb
	ldr     r2, [pc, #0xc] @ 0x223f4c8, (=0x90c)
	mov     r0, r4
	mov     r1, #0x0
	blx     Call_FillMemWithValue
	pop     {r4,pc}
@ 0x223f4c6


.align 2


.word 0x90c @ 0x223f4c8
.thumb
Function_223f4cc: @ 223f4cc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r2
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r7, r3
	mov     r4, #0x0
	mov     r5, r0
	add     r6, #0x38
.thumb
branch_223f4de: @ 223f4de :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r0, [sp, #0x10]
	mov     r1, r6
	mov     r3, r2
	str     r7, [sp, #0x8]
	bl      Function_223d9a8
	mov     r1, #0x0
	str     r0, [r5, #0x50]
	bl      Function_2021cac
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x48
	cmp     r4, #0x20
	blt     branch_223f4de
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223f50e


.align 2, 0


.thumb
Function_223f510: @ 223f510 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223f518: @ 223f518 :thumb
	ldr     r0, [r5, #0x50]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x48
	cmp     r4, #0x20
	blt     branch_223f518
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	pop     {r4-r6,pc}
@ 0x223f52c

.thumb
Function_223f52c: @ 223f52c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0xc
.thumb
branch_223f534: @ 223f534 :thumb
	mov     r0, r5
	bl      Function_223f670
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x48
	cmp     r4, #0x20
	blt     branch_223f534
	pop     {r3-r5,pc}
@ 0x223f544

.thumb
Function_223f544: @ 223f544 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r0, r1
	str     r1, [sp, #0x10]
	mov     r1, r2
	sub     r0, #0x80
	sub     r1, #0x60
	str     r2, [sp, #0x14]
	blx     FX_Atan2Idx
	asr     r0, r0, #4
	lsl     r1, r0, #1
	add     r0, r1, #0x1
	ldr     r7, [pc, #0xe4] @ 0x223f648, (=0x20f983c)
	lsl     r0, r0, #1
	ldsh    r3, [r7, r0]
	asr     r6, r3, #31
	lsr     r2, r3, #16
	lsl     r0, r6, #16
	orr     r0, r2
	mov     r2, #0x2
	lsl     r5, r3, #16
	lsl     r2, r2, #10
	add     r5, r5, r2
	ldr     r2, [pc, #0xd4] @ 0x223f64c, (=0x0)
	adc     r0, r2
	lsr     r2, r5, #12
	lsl     r0, r0, #20
	str     r2, [sp, #0x18]
	orr     r2, r0
	lsl     r0, r1, #1
	str     r2, [sp, #0x18]
	ldsh    r2, [r7, r0]
	asr     r0, r2, #31
	mov     r12, r0
	lsr     r1, r2, #16
	lsl     r0, r0, #16
	orr     r0, r1
	mov     r1, #0x2
	lsl     r5, r2, #16
	lsl     r1, r1, #10
	add     r1, r5, r1
	ldr     r5, [pc, #0xb0] @ 0x223f64c, (=0x0)
	adc     r0, r5
	lsr     r7, r1, #12
	lsl     r0, r0, #20
	orr     r7, r0
	lsr     r0, r3, #20
	lsl     r1, r6, #12
	orr     r1, r0
	mov     r0, #0x2
	lsl     r3, r3, #12
	lsl     r0, r0, #10
	add     r0, r3, r0
	ldr     r3, [pc, #0x98] @ 0x223f64c, (=0x0)
	adc     r1, r3
	lsr     r6, r0, #12
	lsl     r1, r1, #20
	orr     r6, r1
	mov     r1, r12
	lsr     r0, r2, #20
	lsl     r1, r1, #12
	orr     r1, r0
	mov     r0, #0x2
	lsl     r2, r2, #12
	lsl     r0, r0, #10
	add     r2, r2, r0
	ldr     r0, [pc, #0x7c] @ 0x223f64c, (=0x0)
	adc     r1, r0
	lsl     r0, r1, #20
	lsr     r5, r2, #12
	orr     r5, r0
	mov     r0, r4
	bl      Function_223f650
	cmp     r0, #0x0
	beq     branch_223f604
	mov     r2, #0x2
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #18
	add     r1, r1, r2
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	lsl     r1, r1, #16
	add     r1, r7, r1
	str     r1, [sp, #0x4]
	str     r6, [sp, #0x8]
	str     r5, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	ldr     r1, [r4, #0x8]
	lsl     r2, r2, #12
	lsl     r3, r3, #12
	bl      Function_223f6cc
.thumb
branch_223f604: @ 223f604 :thumb
	mov     r0, r4
	bl      Function_223f650
	cmp     r0, #0x0
	beq     branch_223f636
	mov     r2, #0x2
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #18
	sub     r1, r2, r1
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	lsl     r1, r1, #16
	sub     r1, r1, r7
	str     r1, [sp, #0x4]
	neg     r1, r6
	str     r1, [sp, #0x8]
	neg     r1, r5
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	str     r1, [sp, #0xc]
	ldr     r1, [r4, #0x8]
	lsl     r2, r2, #12
	lsl     r3, r3, #12
	bl      Function_223f6cc
.thumb
branch_223f636: @ 223f636 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	str     r1, [r4, #0x8]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223f646


.align 2


.word 0x20f983c @ 0x223f648
.word 0x0 @ 0x223f64c
.thumb
Function_223f650: @ 223f650 :thumb
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_223f654: @ 223f654 :thumb
	ldr     r1, [r3, #0xc]
	cmp     r1, #0x0
	bne     branch_223f664
	mov     r1, #0x48
	add     r0, #0xc
	mul     r1, r2
	add     r0, r0, r1
	bx      lr
@ 0x223f664

.thumb
branch_223f664: @ 223f664 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x48
	cmp     r2, #0x20
	blt     branch_223f654
	mov     r0, #0x0
	bx      lr
@ 0x223f670

.thumb
Function_223f670: @ 223f670 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223f6b0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_223f6a4
	mov     r0, r4
	add     r0, #0x14
	bl      Function_223da94
	str     r0, [r4, #0x4]
	mov     r0, r4
	add     r0, #0x2c
	bl      Function_223da94
	ldr     r0, [r4, #0x14]
	mov     r1, r4
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x2c]
	add     r1, #0x8
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x44]
	bl      Function_2021c50
.thumb
branch_223f6a4: @ 223f6a4 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_223f6b0
	mov     r0, r4
	bl      Function_223f6b4
.thumb
branch_223f6b0: @ 223f6b0 :thumb
	pop     {r4,pc}
@ 0x223f6b2


.align 2, 0


.thumb
Function_223f6b4: @ 223f6b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223f6ca
	ldr     r0, [r4, #0x44]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_223f6ca: @ 223f6ca :thumb
	pop     {r4,pc}
@ 0x223f6cc

.thumb
Function_223f6cc: @ 223f6cc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x10
	mov     r4, r2
	mov     r6, r3
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r7, r1
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x20]
	add     r0, #0x14
	mov     r1, r4
	bl      Function_223da34
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, r5
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x24]
	add     r0, #0x2c
	mov     r1, r6
	bl      Function_223da34
	str     r4, [r5, #0x8]
	str     r6, [r5, #0xc]
	ldr     r0, [r5, #0x44]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r5, #0x44]
	mov     r1, r7
	bl      Function_2021d6c
	ldr     r0, [r5, #0x44]
	bl      Function_2021de0
	ldr     r0, [r5, #0x44]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [r5, #0x44]
	mov     r1, #0x2
	bl      Function_2021e80
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	pop     {r3-r7,pc}
@ 0x223f72e


.align 2, 0


.thumb
Function_223f730: @ 223f730 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x2
	mov     r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	mov     r6, r2
	mov     r7, r3
	mov     r2, r1
	mov     r3, r1
	bl      Function_2098ffc
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	lsl     r2, r4, #16
	lsl     r3, r6, #16
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      Function_209916c
	str     r0, [r5, #0x4]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223f76e


.align 2, 0


.thumb
Function_223f770: @ 223f770 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	bl      Function_2099370
	ldr     r0, [r4, #0x0]
	bl      Function_209903c
	pop     {r4,pc}
@ 0x223f784

.thumb
Function_223f784: @ 223f784 :thumb
	ldr     r3, [pc, #0x4] @ 0x223f78c, (=0x2099161)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x223f78a


.align 2


.word 0x2099161 @ 0x223f78c
.thumb
Function_223f790: @ 223f790 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r4, r2
	bl      Function_2015920
	str     r0, [r5, #0x0]
	str     r4, [r5, #0x4]
	pop     {r3-r5,pc}
@ 0x223f7a2


.align 2, 0


.thumb
Function_223f7a4: @ 223f7a4 :thumb
	ldr     r3, [pc, #0x4] @ 0x223f7ac, (=0x2015939)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x223f7aa


.align 2


.word 0x2015939 @ 0x223f7ac
.thumb
Function_223f7b0: @ 223f7b0 :thumb
	push    {lr}
	add     sp, #-0x14
	ldr     r1, [r0, #0x4]
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, #0xaf
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	str     r1, [sp, #0xc]
	add     r1, sp, #0x0
	strb    r2, [r1, #0x10]
	mov     r2, #0x8
	strb    r2, [r1, #0x11]
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	bl      Function_2015958
	add     sp, #0x14
	pop     {pc}
@ 0x223f7da


.align 2, 0


.thumb
Function_223f7dc: @ 223f7dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      Function_20159fc
	mov     r4, r0
	beq     branch_223f7f0
	ldr     r0, [r5, #0x0]
	bl      Function_2015a54
.thumb
branch_223f7f0: @ 223f7f0 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x223f7f4

.thumb
Function_223f7f4: @ 223f7f4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	mov     r1, r3
	ldr     r3, [sp, #0x1c]
	mov     r5, r0
	ldr     r6, [sp, #0x18]
	mov     r0, r2
	sub     r4, r4, r3
	sub     r1, r1, r3
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	sub     r2, r5, r6
	sub     r0, r0, r6
	mov     r3, r4
	bl      Function_201d4cc
	mov     r1, #0xa0
	mul     r1, r0
	mov     r0, r1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223f820

.thumb
Function_223f820: @ 223f820 :thumb
	mov     r3, r0
	mov     r2, #0x18
	mov     r1, #0x0
.thumb
branch_223f826: @ 223f826 :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223f826
	mov     r2, #0x80
	str     r2, [r0, #0x0]
	mov     r1, #0x60
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x223f83c

.thumb
Function_223f83c: @ 223f83c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x44] @ 0x223f888, (=0x21bf6bc)
	ldrh    r1, [r0, #0x22]
	cmp     r1, #0x0
	beq     branch_223f860
	ldrh    r1, [r0, #0x1c]
	str     r1, [r4, #0x0]
	ldrh    r0, [r0, #0x1e]
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_223f860
	ldr     r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
.thumb
branch_223f860: @ 223f860 :thumb
	mov     r0, #0x80
	str     r0, [sp, #0x0]
	mov     r0, #0x60
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r4, #0x8]
	ldr     r3, [r4, #0xc]
	bl      Function_223f7f4
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x8] @ 0x223f888, (=0x21bf6bc)
	ldrh    r0, [r0, #0x22]
	str     r0, [r4, #0x14]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223f888

.word 0x21bf6bc @ 0x223f888
.thumb
Function_223f88c: @ 223f88c :thumb
	ldr     r2, [r1, #0x0]
	strb    r2, [r0, #0x0]
	ldr     r2, [r1, #0x4]
	strb    r2, [r0, #0x1]
	ldr     r1, [r1, #0x10]
	cmp     r1, #0x0
	bge     branch_223f8a4
	neg     r1, r1
	strh    r1, [r0, #0x2]
	mov     r1, #0x1
	strb    r1, [r0, #0x4]
	bx      lr
@ 0x223f8a4

.thumb
branch_223f8a4: @ 223f8a4 :thumb
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strb    r1, [r0, #0x4]
	bx      lr
@ 0x223f8ac

.thumb
Function_223f8ac: @ 223f8ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0x80
	mov     r3, #0x60
	bl      Function_201e3bc
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bge     branch_223f8c6
	neg     r0, r0
.thumb
branch_223f8c6: @ 223f8c6 :thumb
	lsl     r0, r0, #16
	ldr     r1, [r5, #0x0]
	lsr     r0, r0, #16
	bl      Function_223fb68
	asr     r2, r0, #31
	lsl     r3, r2, #18
	lsr     r1, r0, #14
	orr     r3, r1
	mov     r1, #0x2
	lsl     r2, r0, #18
	mov     r0, #0x0
	lsl     r1, r1, #10
	add     r2, r2, r1
	adc     r3, r0
	lsl     r1, r3, #20
	lsr     r2, r2, #12
	orr     r2, r1
	asr     r1, r2, #12
	cmp     r4, #0x10
	bcs     branch_223f8f4
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223f8f4

.thumb
branch_223f8f4: @ 223f8f4 :thumb
	add     r1, #0x8
	cmp     r4, r1
	bls     branch_223f8fc
	mov     r0, #0x2
.thumb
branch_223f8fc: @ 223f8fc :thumb
	pop     {r3-r5,pc}
@ 0x223f8fe


.align 2, 0


.thumb
Function_223f900: @ 223f900 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	mov     r4, r1
	str     r2, [sp, #0x0]
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r2
	beq     branch_223f98c
.thumb
branch_223f91a: @ 223f91a :thumb
	ldr     r0, [sp, #0xc]
	add     r1, r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, #0x1c
	mov     r6, r1
	mul     r6, r0
	add     r1, r4, r6
	add     r2, r4, r6
	add     r1, #0x90
	add     r2, #0x91
	ldrb    r1, [r1, #0x0]
	ldrb    r2, [r2, #0x0]
	mov     r0, r5
	bl      Function_223f8ac
	cmp     r0, #0x0
	beq     branch_223f94a
	cmp     r0, #0x1
	beq     branch_223f952
	cmp     r0, #0x2
	beq     branch_223f962
	b       branch_223f968
@ 0x223f94a

.thumb
branch_223f94a: @ 223f94a :thumb
	add     r0, r4, r6
	add     r0, #0x92
	ldrh    r7, [r0, #0x0]
	b       branch_223f968
@ 0x223f952

.thumb
branch_223f952: @ 223f952 :thumb
	add     r0, r4, r6
	add     r0, #0x92
	ldrh    r0, [r0, #0x0]
	lsl     r0, r0, #15
	lsr     r7, r0, #16
	mov     r0, #0x0
	str     r0, [r5, #0x10]
	b       branch_223f968
@ 0x223f962

.thumb
branch_223f962: @ 223f962 :thumb
	mov     r7, #0x0
	mov     r0, r7
	str     r0, [r5, #0x10]
.thumb
branch_223f968: @ 223f968 :thumb
	add     r0, r4, r6
	add     r0, #0x94
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_223f97a
	ldr     r0, [sp, #0x8]
	add     r0, r0, r7
	str     r0, [sp, #0x8]
	b       branch_223f980
@ 0x223f97a

.thumb
branch_223f97a: @ 223f97a :thumb
	ldr     r0, [sp, #0x8]
	sub     r0, r0, r7
	str     r0, [sp, #0x8]
.thumb
branch_223f980: @ 223f980 :thumb
	ldr     r0, [sp, #0xc]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0xc]
	cmp     r1, r0
	bcc     branch_223f91a
.thumb
branch_223f98c: @ 223f98c :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	blx     _s32_div_f
	mov     r4, r0
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0xd8] @ 0x223fa74, (=0x2240590)
	ldrb    r0, [r0, r1]
	mov     r1, #0x33
	lsl     r1, r1, #14
	lsl     r0, r0, #12
	blx     FX_Div
	mov     r2, r0
	lsl     r0, r4, #12
	asr     r1, r0, #31
	asr     r3, r2, #31
	blx     _ll_mul
	mov     r4, #0x2
	mov     r2, #0x0
	lsl     r4, r4, #10
	add     r4, r0, r4
	adc     r1, r2
	lsl     r0, r1, #20
	lsr     r1, r4, #12
	orr     r1, r0
	ldr     r3, [r5, #0xc]
	asr     r0, r1, #12
	add     r0, r3, r0
	str     r0, [r5, #0xc]
	cmp     r0, #0x0
	ble     branch_223f9e0
	ldr     r1, [r5, #0x0]
	lsl     r3, r1, #1
	ldr     r1, [pc, #0xa4] @ 0x223fa78, (=0x224059c)
	ldrh    r1, [r1, r3]
	sub     r0, r0, r1
	str     r0, [r5, #0xc]
	bpl     branch_223f9f4
	str     r2, [r5, #0xc]
	b       branch_223f9f4
@ 0x223f9e0

.thumb
branch_223f9e0: @ 223f9e0 :thumb
	bge     branch_223f9f4
	ldr     r1, [r5, #0x0]
	lsl     r3, r1, #1
	ldr     r1, [pc, #0x90] @ 0x223fa78, (=0x224059c)
	ldrh    r1, [r1, r3]
	add     r0, r0, r1
	str     r0, [r5, #0xc]
	cmp     r0, #0x0
	ble     branch_223f9f4
	str     r2, [r5, #0xc]
.thumb
branch_223f9f4: @ 223f9f4 :thumb
	ldr     r1, [r5, #0xc]
	ldr     r0, [pc, #0x84] @ 0x223fa7c, (=0xe38)
	cmp     r1, r0
	ble     branch_223fa00
	str     r0, [r5, #0xc]
	b       branch_223fa08
@ 0x223fa00

.thumb
branch_223fa00: @ 223fa00 :thumb
	ldr     r0, [pc, #0x7c] @ 0x223fa80, (=0xfffff1c8)
	cmp     r1, r0
	bge     branch_223fa08
	str     r0, [r5, #0xc]
.thumb
branch_223fa08: @ 223fa08 :thumb
	ldr     r0, [r5, #0xc]
	mov     r1, #0xa0
	ldr     r4, [r5, #0x8]
	blx     _s32_div_f
	mov     r1, r0
	mov     r0, #0x44
	bl      Function_201d580
	ldr     r1, [r5, #0x8]
	add     r0, r1, r0
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_223fa2c
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bge     branch_223fa38
.thumb
branch_223fa2c: @ 223fa2c :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_223fa68
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bge     branch_223fa68
.thumb
branch_223fa38: @ 223fa38 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_223fa54
	lsl     r0, r4, #16
	lsr     r1, r0, #16
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r1, r0
	ble     branch_223fa68
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_223fa68
@ 0x223fa54

.thumb
branch_223fa54: @ 223fa54 :thumb
	lsl     r0, r4, #16
	lsr     r1, r0, #16
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r1, r0
	bge     branch_223fa68
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_223fa68: @ 223fa68 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223fa72


.align 2


.word 0x2240590 @ 0x223fa74
.word 0x224059c @ 0x223fa78
.word 0xe38 @ 0x223fa7c
.word 0xfffff1c8 @ 0x223fa80
.thumb
Function_223fa84: @ 223fa84 :thumb
	ldr     r0, [r0, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x223fa8c

.thumb
Function_223fa8c: @ 223fa8c :thumb
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x223fa90

.thumb
Function_223fa90: @ 223fa90 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r4, r0
	cmp     r5, #0x3
	blt     branch_223fa9e
	bl      ErrorHandling
.thumb
branch_223fa9e: @ 223fa9e :thumb
	str     r5, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x223faa6


.align 2, 0


.thumb
Function_223faa8: @ 223faa8 :thumb
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x223faac

.thumb
Function_223faac: @ 223faac :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	mov     r4, r1
	mov     r6, r2
	str     r0, [r5, #0x10]
	mov     r0, r4
	mov     r1, r6
	bl      Function_223fb30
	cmp     r0, #0x0
	beq     branch_223faea
	ldr     r0, [r5, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0xc]
	cmp     r0, #0x1e
	bcc     branch_223fae4
	ldr     r1, [r5, #0x4]
	ldr     r0, [pc, #0x58] @ 0x223fb2c, (=0x270f)
	cmp     r1, r0
	bcs     branch_223fadc
	add     r0, r1, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_223fadc: @ 223fadc :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	str     r0, [r5, #0xc]
.thumb
branch_223fae4: @ 223fae4 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	pop     {r4-r6,pc}
@ 0x223faea

.thumb
branch_223faea: @ 223faea :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_223fb50
	cmp     r0, #0x0
	beq     branch_223fb26
	ldr     r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	cmp     r0, #0x5a
	bcc     branch_223fb2a
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_223fb14
	mov     r0, #0x2
	str     r0, [r5, #0x10]
	mov     r0, #0x1
	str     r0, [r5, #0x14]
	pop     {r4-r6,pc}
@ 0x223fb14

.thumb
branch_223fb14: @ 223fb14 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x10]
	ldr     r1, [r5, #0x0]
	ldr     r0, [pc, #0x10] @ 0x223fb2c, (=0x270f)
	cmp     r1, r0
	bcs     branch_223fb2a
	add     r0, r1, #0x1
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x223fb26

.thumb
branch_223fb26: @ 223fb26 :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x14]
.thumb
branch_223fb2a: @ 223fb2a :thumb
	pop     {r4-r6,pc}
@ 0x223fb2c

.word 0x270f @ 0x223fb2c
.thumb
Function_223fb30: @ 223fb30 :thumb
	cmp     r1, #0x2
	bne     branch_223fb38
	mov     r0, #0x0
	bx      lr
@ 0x223fb38

.thumb
branch_223fb38: @ 223fb38 :thumb
	cmp     r0, #0x0
	bge     branch_223fb3e
	neg     r0, r0
.thumb
branch_223fb3e: @ 223fb3e :thumb
	ldr     r1, [pc, #0xc] @ 0x223fb4c, (=0xe38)
	cmp     r0, r1
	blt     branch_223fb48
	mov     r0, #0x1
	bx      lr
@ 0x223fb48

.thumb
branch_223fb48: @ 223fb48 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223fb4c

.word 0xe38 @ 0x223fb4c
.thumb
Function_223fb50: @ 223fb50 :thumb
	cmp     r0, #0x0
	bge     branch_223fb56
	neg     r0, r0
.thumb
branch_223fb56: @ 223fb56 :thumb
	ldr     r1, [pc, #0xc] @ 0x223fb64, (=0x38e)
	cmp     r0, r1
	bgt     branch_223fb60
	mov     r0, #0x1
	bx      lr
@ 0x223fb60

.thumb
branch_223fb60: @ 223fb60 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223fb64

.word 0x38e @ 0x223fb64
.thumb
Function_223fb68: @ 223fb68 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x30] @ 0x223fb9c, (=0x38e)
	sub     r0, r0, r1
	bpl     branch_223fb72
	mov     r0, #0x0
.thumb
branch_223fb72: @ 223fb72 :thumb
	lsl     r2, r0, #12
	asr     r1, r2, #31
	lsr     r0, r2, #22
	lsl     r3, r1, #10
	orr     r3, r0
	mov     r0, #0x2
	lsl     r2, r2, #10
	mov     r1, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r3, r1
	lsl     r1, r3, #20
	lsr     r0, r0, #12
	orr     r0, r1
	ldr     r1, [pc, #0x10] @ 0x223fba0, (=0xaaa000)
	blx     FX_Div
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x223fb9c

.word 0x38e @ 0x223fb9c
.word 0xaaa000 @ 0x223fba0
.thumb
Function_223fba4: @ 223fba4 :thumb
	mov     r3, r0
	mov     r2, #0x10
	mov     r1, #0x0
.thumb
branch_223fbaa: @ 223fbaa :thumb
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223fbaa
	mov     r1, #0x2
	str     r1, [r0, #0x8]
	.hword  0x1ec9 @ sub r1, r1, #0x3
	str     r1, [r0, #0x4]
	bx      lr
@ 0x223fbbc

.thumb
Function_223fbbc: @ 223fbbc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, #0x0
	str     r1, [r5, #0xc]
	mov     r1, r2
	mov     r6, r3
	bl      Function_223fc3c
	cmp     r0, #0x1
	beq     branch_223fc34
	cmp     r6, #0x1
	beq     branch_223fc34
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bge     branch_223fc2e
	bl      Function_201d35c
	mov     r1, #0x5
	mov     r6, r0
	blx     _u32_div_f
	ldr     r0, [r5, #0x8]
	cmp     r1, r0
	bhi     branch_223fbf4
	mov     r1, #0x1
	str     r1, [r5, #0xc]
	b       branch_223fbfa
@ 0x223fbf4

.thumb
branch_223fbf4: @ 223fbf4 :thumb
	mov     r0, #0x1
	mov     r1, #0x0
	str     r0, [r5, #0xc]
.thumb
branch_223fbfa: @ 223fbfa :thumb
	ldr     r0, [r5, #0x0]
	cmp     r1, r0
	bne     branch_223fc18
	cmp     r0, #0x1
	ldr     r0, [r5, #0x8]
	bne     branch_223fc0e
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_223fc1e
	str     r0, [r5, #0x8]
	b       branch_223fc1e
@ 0x223fc0e

.thumb
branch_223fc0e: @ 223fc0e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x5
	bge     branch_223fc1e
	str     r0, [r5, #0x8]
	b       branch_223fc1e
@ 0x223fc18

.thumb
branch_223fc18: @ 223fc18 :thumb
	str     r1, [r5, #0x0]
	mov     r0, #0x2
	str     r0, [r5, #0x8]
.thumb
branch_223fc1e: @ 223fc1e :thumb
	mov     r0, r6
	mov     r1, #0x3c
	blx     _u32_div_f
	ldr     r0, [pc, #0x10] @ 0x223fc38, (=0x22405f0)
	ldrb    r0, [r0, r4]
	add     r0, r0, r1
	str     r0, [r5, #0x4]
.thumb
branch_223fc2e: @ 223fc2e :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_223fc34: @ 223fc34 :thumb
	pop     {r4-r6,pc}
@ 0x223fc36


.align 2


.word 0x22405f0 @ 0x223fc38
.thumb
Function_223fc3c: @ 223fc3c :thumb
	cmp     r1, #0x0
	bge     branch_223fc46
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_223fc50
.thumb
branch_223fc46: @ 223fc46 :thumb
	cmp     r1, #0x0
	ble     branch_223fc54
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_223fc54
.thumb
branch_223fc50: @ 223fc50 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223fc54

.thumb
branch_223fc54: @ 223fc54 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223fc58

.thumb
Function_223fc58: @ 223fc58 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, #0x1f
	mov     r0, r1
	str     r1, [sp, #0x0]
	mov     r6, r7
	bl      Function_223fa8c
	mov     r4, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x3
	blt     branch_223fc74
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223fc74

.thumb
branch_223fc74: @ 223fc74 :thumb
	mov     r1, #0x96
	ldr     r2, [r5, #0x0]
	lsl     r1, r1, #2
	cmp     r2, r1
	beq     branch_223fc86
	ldr     r1, [pc, #0x64] @ 0x223fce4, (=0x2240594)
	ldrb    r0, [r1, r0]
	cmp     r4, r0
	blt     branch_223fca0
.thumb
branch_223fc86: @ 223fc86 :thumb
	ldr     r0, [r5, #0x8]
	mov     r4, #0x0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x8]
	str     r4, [r5, #0x0]
	ldr     r1, [r5, #0x8]
	cmp     r1, #0x3
	blt     branch_223fc9a
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223fc9a

.thumb
branch_223fc9a: @ 223fc9a :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_223fa90
.thumb
branch_223fca0: @ 223fca0 :thumb
	mov     r0, #0x96
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	sub     r1, r0, r1
	cmp     r1, #0x3c
	bgt     branch_223fcb8
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0x3c
	blx     _s32_div_f
	mov     r7, r0
.thumb
branch_223fcb8: @ 223fcb8 :thumb
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0x28] @ 0x223fce4, (=0x2240594)
	ldrb    r0, [r0, r1]
	sub     r1, r0, r4
	cmp     r1, #0x5
	bgt     branch_223fcd0
	mov     r0, #0x1f
	mul     r0, r1
	mov     r1, #0x5
	blx     _s32_div_f
	mov     r6, r0
.thumb
branch_223fcd0: @ 223fcd0 :thumb
	cmp     r7, r6
	bge     branch_223fcd8
	str     r7, [r5, #0x4]
	b       branch_223fcda
@ 0x223fcd8

.thumb
branch_223fcd8: @ 223fcd8 :thumb
	str     r6, [r5, #0x4]
.thumb
branch_223fcda: @ 223fcda :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223fce4

.word 0x2240594 @ 0x223fce4
.thumb
Function_223fce8: @ 223fce8 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	mov     r7, r5
	mov     r4, r3
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x18]
	mov     r0, r4
	mov     r6, r2
	add     r7, #0x98
	bl      Function_223fb50
	cmp     r0, #0x1
	beq     branch_223fd18
	ldr     r1, [sp, #0x18]
	mov     r0, r4
	bl      Function_223fb30
	cmp     r0, #0x1
	beq     branch_223fd18
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_223fd22
.thumb
branch_223fd18: @ 223fd18 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	pop     {r3-r7,pc}
@ 0x223fd22

.thumb
branch_223fd22: @ 223fd22 :thumb
	cmp     r6, #0x1
	bgt     branch_223fd30
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	pop     {r3-r7,pc}
@ 0x223fd30

.thumb
branch_223fd30: @ 223fd30 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x1
	beq     branch_223fdae
	mov     r0, #0x0
	cmp     r6, #0x0
	ble     branch_223fd5e
	mov     r2, #0x96
	mov     r4, #0x1c
	lsl     r2, r2, #2
.thumb
branch_223fd42: @ 223fd42 :thumb
	mov     r1, #0x13
	add     r3, r5, r0
	lsl     r1, r1, #4
	ldrb    r1, [r3, r1]
	mov     r3, r1
	mul     r3, r4
	add     r1, r5, r3
	add     r1, #0x92
	ldrh    r1, [r1, #0x0]
	cmp     r1, r2
	bls     branch_223fdae
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, r6
	blt     branch_223fd42
.thumb
branch_223fd5e: @ 223fd5e :thumb
	mov     r4, #0x1
	cmp     r6, #0x1
	ble     branch_223fd8e
.thumb
branch_223fd64: @ 223fd64 :thumb
	mov     r0, #0x13
	add     r1, r5, r4
	lsl     r0, r0, #4
	ldrb    r2, [r1, r0]
	ldrb    r0, [r7, #0x0]
	ldrb    r1, [r7, #0x4]
	add     r3, r7, r2
	ldrb    r2, [r7, r2]
	ldrb    r3, [r3, #0x4]
	bl      Function_201e3bc
	cmp     r0, #0x20
	bls     branch_223fd88
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	pop     {r3-r7,pc}
@ 0x223fd88

.thumb
branch_223fd88: @ 223fd88 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r6
	blt     branch_223fd64
.thumb
branch_223fd8e: @ 223fd8e :thumb
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x4
	bge     branch_223fd9e
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
	pop     {r3-r7,pc}
@ 0x223fd9e

.thumb
branch_223fd9e: @ 223fd9e :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [r0, #0xc]
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x8]
.thumb
branch_223fdae: @ 223fdae :thumb
	pop     {r3-r7,pc}
@ 0x223fdb0

.thumb
Function_223fdb0: @ 223fdb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	mov     r2, #0x68
	blx     Call_FillMemWithValue
	mov     r0, r4
	add     r0, #0xc
	bl      Function_223fba4
	mov     r1, #0x0
	mov     r0, #0x1f
	str     r0, [r4, #0x50]
	add     r4, #0xc
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      Function_223fbbc
	pop     {r4,pc}
@ 0x223fdd8

.thumb
Function_223fdd8: @ 223fdd8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	add     r0, #0x4c
	add     r1, #0x1c
	mov     r6, r2
	bl      Function_223fc58
	cmp     r0, #0x1
	bne     branch_223fdf6
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223fdf6

.thumb
branch_223fdf6: @ 223fdf6 :thumb
	mov     r0, r5
	ldr     r3, [r5, #0xc]
	add     r0, #0x1c
	mov     r1, r4
	mov     r2, r6
	bl      Function_223f900
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223faa8
	mov     r7, r0
	mov     r0, r5
	ldr     r2, [r5, #0x54]
	add     r0, #0x30
	mov     r1, r7
	bl      Function_223faac
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r7
	bl      Function_223fc3c
	ldr     r1, [r5, #0x54]
	mov     r2, r6
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x2c]
	mov     r3, r7
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x58
	mov     r1, r4
	bl      Function_223fce8
	mov     r0, r5
	ldr     r1, [r5, #0x54]
	ldr     r3, [r5, #0x60]
	add     r0, #0xc
	mov     r2, r7
	bl      Function_223fbbc
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223fe50

.thumb
Function_223fe50: @ 223fe50 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	add     r4, #0xc
	mov     r2, #0x0
.thumb
branch_223fe5a: @ 223fe5a :thumb
	mov     r3, r1
	add     r3, #0x90
	ldrb    r3, [r3, #0x0]
	add     r0, r4, r2
	strb    r3, [r4, r2]
	mov     r3, r1
	add     r3, #0x91
	ldrb    r3, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x1c
	strb    r3, [r0, #0x4]
	cmp     r2, #0x4
	blt     branch_223fe5a
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223faa8
	cmp     r0, #0x0
	blt     branch_223fe86
	strh    r0, [r4, #0xa]
	mov     r0, #0x0
	b       branch_223fe8c
@ 0x223fe86

.thumb
branch_223fe86: @ 223fe86 :thumb
	neg     r0, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0x1
.thumb
branch_223fe8c: @ 223fe8c :thumb
	strb    r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223fa84
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x40]
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0x48]
	strb    r0, [r4, #0x13]
	ldr     r0, [r5, #0xc]
	strb    r0, [r4, #0x11]
	ldr     r0, [r5, #0x18]
	strb    r0, [r4, #0xe]
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x3
	bge     branch_223feb0
	b       branch_223feb2
@ 0x223feb0

.thumb
branch_223feb0: @ 223feb0 :thumb
	mov     r0, #0x2
.thumb
branch_223feb2: @ 223feb2 :thumb
	strb    r0, [r4, #0xd]
	ldr     r0, [r5, #0x50]
	strb    r0, [r4, #0x10]
	ldr     r0, [r5, #0x64]
	strb    r0, [r4, #0xf]
	pop     {r3-r5,pc}
@ 0x223febe


.align 2, 0


.thumb
Function_223fec0: @ 223fec0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	add     r4, #0xc
	mov     r2, #0x0
.thumb
branch_223feca: @ 223feca :thumb
	mov     r3, r1
	add     r3, #0x90
	ldrb    r3, [r3, #0x0]
	add     r0, r4, r2
	strb    r3, [r4, r2]
	mov     r3, r1
	add     r3, #0x91
	ldrb    r3, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0x1c
	strb    r3, [r0, #0x4]
	cmp     r2, #0x4
	blt     branch_223feca
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223faa8
	cmp     r0, #0x0
	blt     branch_223fef6
	strh    r0, [r4, #0xa]
	mov     r0, #0x0
	b       branch_223fefc
@ 0x223fef6

.thumb
branch_223fef6: @ 223fef6 :thumb
	neg     r0, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0x1
.thumb
branch_223fefc: @ 223fefc :thumb
	strb    r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223fa84
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x0
	beq     branch_223ff10
	strb    r0, [r4, #0x12]
.thumb
branch_223ff10: @ 223ff10 :thumb
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x0
	bne     branch_223ff1a
	ldr     r0, [r5, #0x48]
	strb    r0, [r4, #0x13]
.thumb
branch_223ff1a: @ 223ff1a :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x1
	bne     branch_223ff28
	ldr     r0, [r5, #0xc]
	strb    r0, [r4, #0x11]
	ldr     r0, [r5, #0x18]
	strb    r0, [r4, #0xe]
.thumb
branch_223ff28: @ 223ff28 :thumb
	ldr     r0, [r5, #0x54]
	cmp     r0, #0x3
	bge     branch_223ff30
	b       branch_223ff32
@ 0x223ff30

.thumb
branch_223ff30: @ 223ff30 :thumb
	mov     r0, #0x2
.thumb
branch_223ff32: @ 223ff32 :thumb
	strb    r0, [r4, #0xd]
	ldr     r0, [r5, #0x50]
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_223ff42
	ldr     r0, [r5, #0x64]
	strb    r0, [r4, #0xf]
.thumb
branch_223ff42: @ 223ff42 :thumb
	pop     {r3-r5,pc}
@ 0x223ff44

.thumb
Function_223ff44: @ 223ff44 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r3, #0x0
	mov     r1, #0x80
	mov     r0, #0x60
.thumb
branch_223ff50: @ 223ff50 :thumb
	add     r2, r4, r3
	strb    r1, [r4, r3]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x4]
	cmp     r3, #0x4
	blt     branch_223ff50
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223faa8
	cmp     r0, #0x0
	blt     branch_223ff6e
	strh    r0, [r4, #0xa]
	mov     r0, #0x0
	b       branch_223ff74
@ 0x223ff6e

.thumb
branch_223ff6e: @ 223ff6e :thumb
	neg     r0, r0
	strh    r0, [r4, #0xa]
	mov     r0, #0x1
.thumb
branch_223ff74: @ 223ff74 :thumb
	strb    r0, [r4, #0xc]
	mov     r0, r5
	add     r0, #0x1c
	bl      Function_223fa84
	strh    r0, [r4, #0x8]
	ldr     r0, [r5, #0x40]
	strb    r0, [r4, #0x12]
	ldr     r0, [r5, #0x48]
	strb    r0, [r4, #0x13]
	ldr     r0, [r5, #0xc]
	strb    r0, [r4, #0x11]
	ldr     r0, [r5, #0x18]
	strb    r0, [r4, #0xe]
	ldr     r0, [r5, #0x54]
	strb    r0, [r4, #0xd]
	ldr     r0, [r5, #0x50]
	strb    r0, [r4, #0x10]
	ldr     r0, [r5, #0x64]
	strb    r0, [r4, #0xf]
	pop     {r3-r5,pc}
@ 0x223ff9e


.align 2, 0


.thumb
Function_223ffa0: @ 223ffa0 :thumb
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	bx      lr
@ 0x223ffa8

.thumb
Function_223ffa8: @ 223ffa8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r1, #0x6
	blx     _u32_div_f
	ldr     r1, [pc, #0x18] @ 0x223ffcc, (=0x2240597)
	ldrb    r1, [r1, r4]
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0xa
	blx     _u32_div_f
	ldr     r1, [pc, #0xc] @ 0x223ffd0, (=0x270f)
	cmp     r0, r1
	ble     branch_223ffc8
	mov     r0, r1
.thumb
branch_223ffc8: @ 223ffc8 :thumb
	pop     {r4,pc}
@ 0x223ffca


.align 2


.word 0x2240597 @ 0x223ffcc
.word 0x270f @ 0x223ffd0
.thumb
Function_223ffd4: @ 223ffd4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x78]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x78]
	mov     r0, r2
	str     r0, [sp, #0x24]
	add     r0, #0x34
	str     r0, [sp, #0x24]
	mov     r1, #0x0
	add     r0, sp, #0x4c
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x10]
	mov     r0, r1
	mov     r6, r3
	str     r2, [sp, #0x8]
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x28]
	cmp     r6, #0x0
	bls     branch_2240086
.thumb
branch_2240006: @ 2240006 :thumb
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x28]
	add     r1, r1, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	ldr     r1, [sp, #0x78]
	lsl     r4, r0, #2
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, r4]
	bl      Function_20973c8
	mov     r3, #0x0
	mov     r7, r0
	mov     r2, r3
	cmp     r6, #0x0
	bls     branch_2240048
	ldr     r0, [sp, #0x24]
	mov     r5, #0x13
	ldr     r4, [r0, r4]
	lsl     r5, r5, #4
.thumb
branch_2240030: @ 2240030 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, r0, r2
	ldrb    r0, [r0, r5]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x24]
	ldr     r0, [r0, r1]
	cmp     r4, r0
	bne     branch_2240042
	.hword  0x1c5b @ add r3, r3, #0x1
.thumb
branch_2240042: @ 2240042 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, r6
	bcc     branch_2240030
.thumb
branch_2240048: @ 2240048 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r3, r0
	ble     branch_2240050
	str     r3, [sp, #0x18]
.thumb
branch_2240050: @ 2240050 :thumb
	mov     r5, #0x0
	add     r4, sp, #0x4c
.thumb
branch_2240054: @ 2240054 :thumb
	mov     r0, r7
	add     r1, r5, #0x5
	bl      Function_20973d4
	ldr     r1, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r1, r0
	stmia   r4!, {r0}
	cmp     r5, #0x5
	blt     branch_2240054
	mov     r0, r7
	mov     r1, #0xa
	bl      Function_20973d4
	ldr     r1, [sp, #0x20]
	add     r0, r1, r0
	str     r0, [sp, #0x20]
	mov     r0, r7
	bl      free
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, r6
	bcc     branch_2240006
.thumb
branch_2240086: @ 2240086 :thumb
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x2
	blt     branch_2240096
	cmp     r6, #0x1
	bls     branch_2240096
	mov     r0, #0x1
	str     r0, [sp, #0x14]
	b       branch_224009a
@ 0x2240096

.thumb
branch_2240096: @ 2240096 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_224009a: @ 224009a :thumb
	ldr     r0, [sp, #0x20]
	mov     r1, r6
	blx     _u32_div_f
	sub     r0, r0, r6
	mov     r5, #0x0
	add     r4, sp, #0x4c
	str     r0, [sp, #0x1c]
	str     r5, [sp, #0xc]
	add     r7, sp, #0x38
	str     r4, [sp, #0x2c]
.thumb
branch_22400b0: @ 22400b0 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x5
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	lsl     r2, r1, #2
	ldr     r1, [sp, #0x2c]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, r2]
	sub     r0, r0, r1
	str     r0, [r7, #0x0]
	bpl     branch_22400ca
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_22400ca: @ 22400ca :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0xc]
	cmp     r0, #0x5
	blt     branch_22400b0
	mov     r2, #0x0
	add     r1, sp, #0x38
.thumb
branch_22400dc: @ 22400dc :thumb
	ldr     r0, [r1, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	sub     r0, r0, r5
	stmia   r1!, {r0}
	cmp     r2, #0x5
	blt     branch_22400dc
	cmp     r5, #0x4
	blt     branch_22400f0
	mov     r0, #0x1
	str     r0, [sp, #0x14]
.thumb
branch_22400f0: @ 22400f0 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x22401a8, (=0x1b7740)
	ldr     r1, [r1, #0x0]
	blx     _u32_div_f
	mov     r1, #0xa
	mov     r5, r0
	blx     _s32_div_f
	cmp     r1, #0x5
	blt     branch_2240108
	add     r5, #0xa
.thumb
branch_2240108: @ 2240108 :thumb
	mov     r0, r5
	mov     r1, #0xa
	mov     r7, #0x0
	add     r4, sp, #0x38
	blx     _s32_div_f
	str     r0, [sp, #0x10]
.thumb
branch_2240116: @ 2240116 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	mul     r5, r1
	mov     r0, r5
	mov     r1, #0x64
	blx     _s32_div_f
	cmp     r1, #0x32
	blt     branch_224012c
	add     r5, #0x64
.thumb
branch_224012c: @ 224012c :thumb
	mov     r0, r5
	mov     r1, #0x64
	blx     _s32_div_f
	ldr     r1, [sp, #0x0]
	ldr     r2, [r1, #0x30]
	ldr     r1, [r1, #0x34]
	add     r1, r2, r1
	sub     r0, r0, r1
	str     r0, [r4, #0x0]
	bpl     branch_2240146
	mov     r0, #0x0
	str     r0, [r4, #0x0]
.thumb
branch_2240146: @ 2240146 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x5
	blt     branch_2240116
	cmp     r6, #0x1
	bls     branch_2240168
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	ldr     r0, [r0, #0x58]
	bl      Function_223ffa8
	cmp     r0, #0xa
	ble     branch_2240162
	mov     r0, #0xa
.thumb
branch_2240162: @ 2240162 :thumb
	ldr     r1, [sp, #0x1c]
	sub     r0, r1, r0
	str     r0, [sp, #0x1c]
.thumb
branch_2240168: @ 2240168 :thumb
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0xf
	bge     branch_2240172
	mov     r0, #0xf
	str     r0, [sp, #0x1c]
.thumb
branch_2240172: @ 2240172 :thumb
	mov     r3, #0x0
	add     r1, sp, #0x38
	add     r2, sp, #0x30
.thumb
branch_2240178: @ 2240178 :thumb
	ldr     r0, [r1, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r3, #0x5
	blt     branch_2240178
	ldr     r2, [sp, #0x1c]
	ldr     r0, [sp, #0x4]
	lsl     r2, r2, #24
	ldr     r3, [sp, #0x14]
	add     r1, sp, #0x30
	lsr     r2, r2, #24
	bl      Function_202a9e4
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x4]
	ldr     r0, [sp, #0x4]
	bl      Function_202aabc
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x8]
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x22401a8

.word 0x1b7740 @ 0x22401a8
.thumb
Function_22401ac: @ 22401ac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	str     r0, [r1, #0x20]
	ldr     r0, [r5, #0x30]
	add     r4, #0x20
	str     r0, [r4, #0x4]
	ldr     r0, [r5, #0x58]
	mov     r1, r2
	bl      Function_223ffa8
	str     r0, [r4, #0x8]
	ldr     r0, [r5, #0x4]
	ldr     r1, [pc, #0x38] @ 0x2240204, (=0x708)
	strb    r0, [r4, #0xc]
	ldr     r0, [r5, #0x8]
	strb    r0, [r4, #0xd]
	ldr     r5, [r5, #0x0]
	mov     r0, r5
	blx     _s32_div_f
	strb    r0, [r4, #0xe]
	ldrb    r1, [r4, #0xe]
	ldr     r0, [pc, #0x24] @ 0x2240204, (=0x708)
	mul     r0, r1
	sub     r5, r5, r0
	mov     r0, r5
	mov     r1, #0x1e
	blx     _s32_div_f
	strb    r0, [r4, #0xf]
	ldrb    r0, [r4, #0xf]
	mov     r1, #0x1e
	mov     r2, r0
	mul     r2, r1
	sub     r2, r5, r2
	mov     r0, #0x64
	mul     r0, r2
	blx     _s32_div_f
	strb    r0, [r4, #0x10]
	pop     {r3-r5,pc}
@ 0x2240202

.align 2
.word 0x708 @ 0x2240204



Unknown_2240208: @ 0x2240208
.incbin "./baserom/overlay/overlay_0083.bin", 0x4c68, 0x2240248 - 0x2240208


.word 0x8 @ 0x2240248
.word Function_223b78c+1 @ =0x223b78d, 0x224024c
.word 0x1 @ 0x2240250
.word Function_223b920+1 @ =0x223b921, 0x2240254
.word 0x0 @ 0x2240258
.word Function_223b950+1 @ =0x223b951, 0x224025c
.word 0x0 @ 0x2240260
.word Function_223b964+1 @ =0x223b965, 0x2240264
.word 0x0 @ 0x2240268
.word Function_223b950+1 @ =0x223b951, 0x224026c
.word 0x0 @ 0x2240270
.word Function_223c24c+1 @ =0x223c24d, 0x2240274
.word 0x2 @ 0x2240278
.word Function_223b9ec+1 @ =0x223b9ed, 0x224027c
.word 0x0 @ 0x2240280
.word Function_223bb40+1 @ =0x223bb41, 0x2240284
.word 0x0 @ 0x2240288
.word Function_223bcec+1 @ =0x223bced, 0x224028c
.word 0x0 @ 0x2240290
.word Function_223b950+1 @ =0x223b951, 0x2240294
.word 0x0 @ 0x2240298
.word Function_223bf74+1 @ =0x223bf75, 0x224029c
.word 0x0 @ 0x22402a0
.word Function_223b950+1 @ =0x223b951, 0x22402a4
.word 0x0 @ 0x22402a8
.word Function_223c258+1 @ =0x223c259, 0x22402ac
.word 0x3 @ 0x22402b0
.word Function_223c344+1 @ =0x223c345, 0x22402b4

.incbin "./baserom/overlay/overlay_0083.bin", 0x4d18, 0x2240390 - 0x22402b8


.word Function_223d204+1 @ =0x223d205, 0x2240390
.word Function_223d4ac+1 @ =0x223d4ad, 0x2240394
.word 0x0 @ 0x2240398
.word Function_223d210+1 @ =0x223d211, 0x224039c
.word Function_223d4ac+1 @ =0x223d4ad, 0x22403a0
.word 0x0 @ 0x22403a4
.word Function_223d21c+1 @ =0x223d21d, 0x22403a8
.word Function_223d4b4+1 @ =0x223d4b5, 0x22403ac
.word 0x0 @ 0x22403b0
.word Function_223d258+1 @ =0x223d259, 0x22403b4
.word Function_223d4b8+1 @ =0x223d4b9, 0x22403b8
.word 0x0 @ 0x22403bc
.word Function_223d2e8+1 @ =0x223d2e9, 0x22403c0
.word Function_223d4bc+1 @ =0x223d4bd, 0x22403c4
.word 0x0 @ 0x22403c8
.word Function_223d3d8+1 @ =0x223d3d9, 0x22403cc
.word Function_223d4c0+1 @ =0x223d4c1, 0x22403d0
.word 0x0 @ 0x22403d4
.word Function_223d3f8+1 @ =0x223d3f9, 0x22403d8
.word 0x202a911 @ 0x22403dc
.word 0x0 @ 0x22403e0
.word Function_223d410+1 @ =0x223d411, 0x22403e4
.word Function_223d4b0+1 @ =0x223d4b1, 0x22403e8
.word 0x0 @ 0x22403ec
.word Function_223d430+1 @ =0x223d431, 0x22403f0
.word Function_223d4b0+1 @ =0x223d4b1, 0x22403f4
.word 0x0 @ 0x22403f8
.word Function_223d354+1 @ =0x223d355, 0x22403fc
.word Function_223d4c4+1 @ =0x223d4c5, 0x2240400
.word 0x0 @ 0x2240404
.word Function_223d3a8+1 @ =0x223d3a9, 0x2240408
.word Function_223d4c8+1 @ =0x223d4c9, 0x224040c
@ 0x2240410


.incbin "./baserom/overlay/overlay_0083.bin", 0x4e70, 0x2240600 - 0x2240410


@end 0x2240600




