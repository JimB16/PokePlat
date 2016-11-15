

.section .iwram41, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256311)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256311 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x3c] @ 0x2256218, (=0x5b90)
	mov     r0, #0x8
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2256220
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x20] @ 0x225621c, (=0x22562b9)
	mov     r1, r4
	mov     r2, #0x1
	bl      0x200d9e8
	cmp     r0, #0x0
	beq     branch_225620c
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225620c

.thumb
branch_225620c: @ 225620c :thumb
	mov     r0, r4
	bl      free
.thumb
branch_2256212: @ 2256212 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256216


.align 2


.word 0x5b90 @ 0x2256218
.word 0x22562b9 @ 0x225621c
.thumb
Function_2256220: @ 2256220 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [pc, #0x58] @ 0x2256284, (=0x5b78)
	str     r3, [r5, #0xc]
	mov     r0, #0x0
	strb    r0, [r5, r1]
	mov     r6, #0x1
	add     r3, r1, #0x1
	strb    r6, [r5, r3]
	add     r3, r1, #0x2
	strb    r0, [r5, r3]
	add     r0, r1, #0x4
	add     r0, r5, r0
	add     r1, r5, #0x4
	bl      Function_22567b0
	cmp     r0, #0x0
	beq     branch_225627c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	strb    r0, [r5, #0x3]
	add     r0, r5, #0x4
	bl      Function_2256790
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x2256288, (=Unknown_2256d68)
	ldr     r2, [pc, #0x2c] @ 0x225628c, (=0x2256301)
	mov     r1, #0x3
	mov     r3, r5
	bl      0x2255acc
	ldr     r1, [pc, #0x24] @ 0x2256290, (=0x5b84)
	mov     r2, #0x0
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r4, [r5, r0]
	add     sp, #0x4
	mov     r0, r6
	pop     {r3-r6,pc}
@ 0x225627c

.thumb
branch_225627c: @ 225627c :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2256282

.align 2
.word 0x5b78 @ 0x2256284
.word Unknown_2256d68 @ 0x2256288
.word Function_2256300+1 @ =0x2256301, 0x225628c
.word 0x5b84 @ 0x2256290



.thumb
Function_2256294: @ 2256294 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x22562b0, (=0x5b84)
	ldr     r0, [r4, r0]
	bl      0x2255b34
	ldr     r0, [pc, #0x10] @ 0x22562b4, (=0x5b7c)
	ldr     r0, [r4, r0]
	bl      Function_22567f8
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562b0

.word 0x5b84 @ 0x22562b0
.word 0x5b7c @ 0x22562b4
.thumb
Function_22562b8: @ 22562b8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562f4
	ldr     r1, [pc, #0x30] @ 0x22562f8, (=0x5b80)
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x24] @ 0x22562fc, (=0x2256d74)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562f4
	mov     r0, r4
	bl      Function_2256294
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [pc, #0x8] @ 0x22562f8, (=0x5b80)
	ldr     r0, [r4, r0]
	bl      0x2254260
.thumb
branch_22562f4: @ 22562f4 :thumb
	pop     {r3-r5,pc}
@ 0x22562f6


.align 2


.word 0x5b80 @ 0x22562f8
.word 0x2256d74 @ 0x22562fc
.thumb
Function_2256300: @ 2256300 :thumb
	ldr     r2, [pc, #0x8] @ 0x225630c, (=0x5b88)
	str     r1, [r3, r2]
	add     r1, r2, #0x4
	str     r0, [r3, r1]
	bx      lr
@ 0x225630a


.align 2


.word 0x5b88 @ 0x225630c
.thumb
Function_2256310: @ 2256310 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x2256316


.align 2, 0


.thumb
Function_2256318: @ 2256318 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256320
	b       branch_2256322
@ 0x2256320

.thumb
branch_2256320: @ 2256320 :thumb
	mov     r1, #0x2
.thumb
branch_2256322: @ 2256322 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225633c
	cmp     r0, #0x1
	beq     branch_225634e
	b       branch_225636c
@ 0x225633c

.thumb
branch_225633c: @ 225633c :thumb
	ldr     r0, [pc, #0x30] @ 0x2256370, (=0x5b7c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_225688c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225636c
@ 0x225634e

.thumb
branch_225634e: @ 225634e :thumb
	ldr     r0, [pc, #0x20] @ 0x2256370, (=0x5b7c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_22568b0
	cmp     r0, #0x0
	beq     branch_225636c
	ldr     r0, [pc, #0x14] @ 0x2256374, (=0x5b80)
	ldr     r0, [r4, r0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256318
.thumb
branch_225636c: @ 225636c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256370

.word 0x5b7c @ 0x2256370
.word 0x5b80 @ 0x2256374
.thumb
Function_2256378: @ 2256378 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_225638a
	mov     r1, #0x2
	bl      Function_2256318
.thumb
branch_225638a: @ 225638a :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	bhi     branch_22563b0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225639c

Jumppoints_225639c:
.hword branch_22563a4 - Jumppoints_225639c - 2
.hword branch_2256474 - Jumppoints_225639c - 2
.hword branch_22564ce - Jumppoints_225639c - 2
.hword branch_22564fc - Jumppoints_225639c - 2
.thumb
branch_22563a4: @ 22563a4 :thumb
	ldr     r0, [pc, #0x1a4] @ 0x225654c, (=0x5b80)
	ldr     r0, [r4, r0]
	bl      0x225450c
	cmp     r0, #0x0
	beq     branch_22563b2
.thumb
branch_22563b0: @ 22563b0 :thumb
	b       branch_2256544
@ 0x22563b2

.thumb
branch_22563b2: @ 22563b2 :thumb
	ldr     r1, [pc, #0x19c] @ 0x2256550, (=0x5b88)
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_225642e
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22563cc
	cmp     r0, #0x1
	beq     branch_2256402
	cmp     r0, #0x2
	beq     branch_225640a
	b       branch_2256426
@ 0x22563cc

.thumb
branch_22563cc: @ 22563cc :thumb
	mov     r0, r1
	mov     r3, #0x1
	sub     r0, #0x10
	strb    r3, [r4, r0]
	mov     r0, r1
	mov     r2, #0x0
	sub     r0, #0xf
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xe
	sub     r1, #0xc
	strb    r3, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_225688c
	ldr     r0, [pc, #0x164] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x7
	ldr     r0, [r4, r0]
	bl      Function_225688c
	ldr     r0, [pc, #0x160] @ 0x2256558, (=0x663)
	bl      0x2254424
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256426
@ 0x2256402

.thumb
branch_2256402: @ 2256402 :thumb
	ldr     r0, [pc, #0x158] @ 0x225655c, (=0x66e)
	bl      0x2254424
	b       branch_2256426
@ 0x225640a

.thumb
branch_225640a: @ 225640a :thumb
	mov     r0, r1
	mov     r2, #0x1
	sub     r0, #0xe
	sub     r1, #0xc
	strb    r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_225688c
	ldr     r0, [pc, #0x138] @ 0x2256558, (=0x663)
	bl      0x2254424
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
.thumb
branch_2256426: @ 2256426 :thumb
	ldr     r0, [pc, #0x128] @ 0x2256550, (=0x5b88)
	mov     r1, #0x0
	str     r1, [r4, r0]
	b       branch_2256544
@ 0x225642e

.thumb
branch_225642e: @ 225642e :thumb
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x0
	beq     branch_225645a
	mov     r0, r4
	ldr     r6, [r4, #0x4]
	ldr     r5, [r4, #0x8]
	bl      Function_22565c4
	cmp     r0, #0x0
	beq     branch_2256454
	ldr     r0, [r4, #0x8]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r3, [r4, #0x4]
	mov     r0, r4
	mov     r2, r5
	bl      Function_2256610
	b       branch_2256544
@ 0x2256454

.thumb
branch_2256454: @ 2256454 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	b       branch_2256544
@ 0x225645a

.thumb
branch_225645a: @ 225645a :thumb
	mov     r0, r4
	bl      Function_2256564
	cmp     r0, #0x0
	beq     branch_2256544
	ldr     r0, [pc, #0xec] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      Function_225688c
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	b       branch_2256544
@ 0x2256474

.thumb
branch_2256474: @ 2256474 :thumb
	ldr     r1, [pc, #0xd8] @ 0x2256550, (=0x5b88)
	ldr     r0, [r4, r1]
	cmp     r0, #0x1
	bne     branch_2256544
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225648c
	cmp     r0, #0x1
	beq     branch_2256494
	cmp     r0, #0x2
	bne     branch_22564c6
.thumb
branch_225648c: @ 225648c :thumb
	ldr     r0, [pc, #0xcc] @ 0x225655c, (=0x66e)
	bl      0x2254424
	b       branch_22564c6
@ 0x2256494

.thumb
branch_2256494: @ 2256494 :thumb
	mov     r0, r1
	mov     r2, #0x1
	sub     r0, #0x10
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xf
	strb    r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0xe
	sub     r1, #0xc
	strb    r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_225688c
	ldr     r0, [pc, #0xa0] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x8
	ldr     r0, [r4, r0]
	bl      Function_225688c
	ldr     r0, [pc, #0x98] @ 0x2256558, (=0x663)
	bl      0x2254424
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
.thumb
branch_22564c6: @ 22564c6 :thumb
	ldr     r0, [pc, #0x88] @ 0x2256550, (=0x5b88)
	mov     r1, #0x0
	str     r1, [r4, r0]
	b       branch_2256544
@ 0x22564ce

.thumb
branch_22564ce: @ 22564ce :thumb
	ldr     r0, [pc, #0x84] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x8
	ldr     r0, [r4, r0]
	bl      Function_22568b0
	cmp     r0, #0x0
	beq     branch_2256544
	ldr     r0, [pc, #0x80] @ 0x2256560, (=0x5b78)
	mov     r3, #0x0
	strb    r3, [r4, r0]
	mov     r2, #0x1
	add     r1, r0, #0x1
	strb    r2, [r4, r1]
	add     r1, r0, #0x2
	strb    r3, [r4, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	mov     r1, #0x5
	bl      Function_225688c
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_2256544
@ 0x22564fc

.thumb
branch_22564fc: @ 22564fc :thumb
	ldr     r1, [pc, #0x50] @ 0x2256550, (=0x5b88)
	ldr     r0, [r4, r1]
	cmp     r0, #0x2
	bne     branch_225651c
	mov     r0, r1
	mov     r2, #0x0
	sub     r0, #0xe
	sub     r1, #0xc
	strb    r2, [r4, r0]
	ldr     r0, [r4, r1]
	mov     r1, #0x5
	bl      Function_225688c
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_2256544
@ 0x225651c

.thumb
branch_225651c: @ 225651c :thumb
	cmp     r0, #0x3
	bne     branch_2256544
	mov     r0, #0x0
	sub     r1, #0xe
	strb    r0, [r4, r1]
	add     r0, r4, #0x4
	bl      Function_2256790
	ldr     r0, [pc, #0x24] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x5
	ldr     r0, [r4, r0]
	bl      Function_225688c
	ldr     r0, [pc, #0x1c] @ 0x2256554, (=0x5b7c)
	mov     r1, #0x6
	ldr     r0, [r4, r0]
	bl      Function_225688c
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256544: @ 2256544 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225654a


.align 2


.word 0x5b80 @ 0x225654c
.word 0x5b88 @ 0x2256550
.word 0x5b7c @ 0x2256554
.word 0x663 @ 0x2256558
.word 0x66e @ 0x225655c
.word 0x5b78 @ 0x2256560
.thumb
Function_2256564: @ 2256564 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_22565be
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	sub     r1, #0x10
	sub     r2, #0x10
	cmp     r1, #0x9b
	bcs     branch_2256586
	mov     r0, #0x1
	b       branch_2256588
@ 0x2256586

.thumb
branch_2256586: @ 2256586 :thumb
	mov     r0, #0x0
.thumb
branch_2256588: @ 2256588 :thumb
	cmp     r2, #0x95
	bcs     branch_2256590
	mov     r3, #0x1
	b       branch_2256592
@ 0x2256590

.thumb
branch_2256590: @ 2256590 :thumb
	mov     r3, #0x0
.thumb
branch_2256592: @ 2256592 :thumb
	tst     r0, r3
	beq     branch_22565be
	lsr     r3, r1, #1
	lsr     r1, r2, #1
	mov     r2, r4
	mov     r0, #0x96
	add     r2, #0x10
	mul     r0, r3
	str     r3, [sp, #0x4]
	str     r1, [sp, #0x0]
	add     r2, r2, r0
	ldrb    r0, [r2, r1]
	cmp     r0, #0x0
	bne     branch_22565be
	mov     r0, #0x1
	strb    r0, [r2, r1]
	ldr     r1, [sp, #0x4]
	str     r1, [r4, #0x4]
	ldr     r1, [sp, #0x0]
	add     sp, #0x8
	str     r1, [r4, #0x8]
	pop     {r4,pc}
@ 0x22565be

.thumb
branch_22565be: @ 22565be :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22565c4

.thumb
Function_22565c4: @ 22565c4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_225660a
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	sub     r1, #0x10
	sub     r2, #0x10
	cmp     r1, #0x9b
	bcs     branch_22565e6
	mov     r0, #0x1
	b       branch_22565e8
@ 0x22565e6

.thumb
branch_22565e6: @ 22565e6 :thumb
	mov     r0, #0x0
.thumb
branch_22565e8: @ 22565e8 :thumb
	cmp     r2, #0x95
	bcs     branch_22565f0
	mov     r3, #0x1
	b       branch_22565f2
@ 0x22565f0

.thumb
branch_22565f0: @ 22565f0 :thumb
	mov     r3, #0x0
.thumb
branch_22565f2: @ 22565f2 :thumb
	tst     r0, r3
	beq     branch_225660a
	lsr     r1, r1, #1
	lsr     r0, r2, #1
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	str     r1, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225660a

.thumb
branch_225660a: @ 225660a :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2256610

.thumb
Function_2256610: @ 2256610 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldr     r0, [sp, #0x28]
	mov     r4, r2
	mov     r5, r1
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x28]
	cmp     r4, r0
	bne     branch_225662c
	mov     r0, r3
	cmp     r5, r0
	bne     branch_225662c
	b       branch_225674c
@ 0x225662c

.thumb
branch_225662c: @ 225662c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r5
	bls     branch_2256636
	sub     r1, r0, r5
	b       branch_2256638
@ 0x2256636

.thumb
branch_2256636: @ 2256636 :thumb
	sub     r1, r5, r0
.thumb
branch_2256638: @ 2256638 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, r4
	bls     branch_2256642
	sub     r2, r0, r4
	b       branch_2256644
@ 0x2256642

.thumb
branch_2256642: @ 2256642 :thumb
	sub     r2, r4, r0
.thumb
branch_2256644: @ 2256644 :thumb
	cmp     r1, r2
	bls     branch_22566c6
	ldr     r0, [sp, #0x0]
	cmp     r0, r5
	bls     branch_2256654
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_225665a
@ 0x2256654

.thumb
branch_2256654: @ 2256654 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
.thumb
branch_225665a: @ 225665a :thumb
	cmp     r1, #0x0
	beq     branch_225666c
	ldr     r0, [sp, #0x28]
	sub     r0, r0, r4
	lsl     r0, r0, #12
	blx     0x20e1f6c
	str     r0, [sp, #0x10]
	b       branch_2256670
@ 0x225666c

.thumb
branch_225666c: @ 225666c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_2256670: @ 2256670 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r1, r4, #12
	add     r7, r1, r0
	ldr     r0, [sp, #0x4]
	add     r5, r5, r0
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	beq     branch_2256730
	mov     r1, #0x96
	mov     r0, r5
	mul     r0, r1
	add     r4, r6, r0
	ldr     r0, [sp, #0x4]
	mul     r1, r0
	str     r1, [sp, #0xc]
.thumb
branch_225668e: @ 225668e :thumb
	asr     r1, r7, #12
	cmp     r5, #0x9c
	bcs     branch_22566b2
	cmp     r1, #0x96
	bcs     branch_22566b2
	add     r0, r4, r1
	ldrb    r2, [r0, #0x10]
	cmp     r2, #0x0
	bne     branch_22566b2
	mov     r2, #0x0
	strb    r2, [r0, #0x10]
	str     r5, [r6, #0x4]
	str     r1, [r6, #0x8]
	ldr     r0, [pc, #0xa4] @ 0x2256750, (=0x5b7c)
	mov     r1, #0x3
	ldr     r0, [r6, r0]
	bl      Function_225688c
.thumb
branch_22566b2: @ 22566b2 :thumb
	ldr     r0, [sp, #0xc]
	add     r4, r4, r0
	ldr     r0, [sp, #0x4]
	add     r5, r5, r0
	ldr     r0, [sp, #0x10]
	add     r7, r7, r0
	ldr     r0, [sp, #0x0]
	cmp     r5, r0
	bne     branch_225668e
	b       branch_2256730
@ 0x22566c6

.thumb
branch_22566c6: @ 22566c6 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, r4
	bls     branch_22566d0
	mov     r7, #0x1
	b       branch_22566d4
@ 0x22566d0

.thumb
branch_22566d0: @ 22566d0 :thumb
	mov     r7, #0x0
	mvn     r7, r7
.thumb
branch_22566d4: @ 22566d4 :thumb
	cmp     r2, #0x0
	beq     branch_22566e8
	ldr     r0, [sp, #0x0]
	mov     r1, r2
	sub     r0, r0, r5
	lsl     r0, r0, #12
	blx     0x20e1f6c
	str     r0, [sp, #0x8]
	b       branch_22566ec
@ 0x22566e8

.thumb
branch_22566e8: @ 22566e8 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
.thumb
branch_22566ec: @ 22566ec :thumb
	ldr     r0, [sp, #0x8]
	lsl     r1, r5, #12
	add     r5, r1, r0
	ldr     r0, [sp, #0x28]
	add     r4, r4, r7
	cmp     r4, r0
	beq     branch_2256730
.thumb
branch_22566fa: @ 22566fa :thumb
	asr     r1, r5, #12
	cmp     r4, #0x96
	bcs     branch_2256724
	cmp     r1, #0x9c
	bcs     branch_2256724
	mov     r0, #0x96
	mul     r0, r1
	add     r0, r6, r0
	add     r0, r0, r4
	ldrb    r2, [r0, #0x10]
	cmp     r2, #0x0
	bne     branch_2256724
	mov     r2, #0x1
	strb    r2, [r0, #0x10]
	str     r1, [r6, #0x4]
	ldr     r0, [pc, #0x34] @ 0x2256750, (=0x5b7c)
	str     r4, [r6, #0x8]
	ldr     r0, [r6, r0]
	mov     r1, #0x3
	bl      Function_225688c
.thumb
branch_2256724: @ 2256724 :thumb
	ldr     r0, [sp, #0x8]
	add     r4, r4, r7
	add     r5, r5, r0
	ldr     r0, [sp, #0x28]
	cmp     r4, r0
	bne     branch_22566fa
.thumb
branch_2256730: @ 2256730 :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x96
	bcs     branch_225674c
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x9c
	bcs     branch_225674c
	str     r0, [r6, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x3
	str     r0, [r6, #0x8]
	ldr     r0, [pc, #0x8] @ 0x2256750, (=0x5b7c)
	ldr     r0, [r6, r0]
	bl      Function_225688c
.thumb
branch_225674c: @ 225674c :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256750

.word 0x5b7c @ 0x2256750
.thumb
Function_2256754: @ 2256754 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256764
	cmp     r0, #0x1
	beq     branch_2256776
	b       branch_2256786
@ 0x2256764

.thumb
branch_2256764: @ 2256764 :thumb
	ldr     r0, [pc, #0x24] @ 0x225678c, (=0x5b7c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_225688c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256786
@ 0x2256776

.thumb
branch_2256776: @ 2256776 :thumb
	ldr     r0, [pc, #0x14] @ 0x225678c, (=0x5b7c)
	ldr     r0, [r4, r0]
	bl      Function_22568bc
	cmp     r0, #0x0
	beq     branch_2256786
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256786

.thumb
branch_2256786: @ 2256786 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225678a


.align 2


.word 0x5b7c @ 0x225678c
.thumb
Function_2256790: @ 2256790 :thumb
	push    {r4,r5}
	mov     r4, #0x0
	mov     r2, r4
	mov     r3, r4
.thumb
branch_2256798: @ 2256798 :thumb
	mov     r5, r3
.thumb
branch_225679a: @ 225679a :thumb
	add     r1, r0, r5
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r2, [r1, #0xc]
	cmp     r5, #0x96
	blt     branch_225679a
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x96
	cmp     r4, #0x9c
	blt     branch_2256798
	pop     {r4,r5}
	bx      lr
@ 0x22567b0

.thumb
Function_22567b0: @ 22567b0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x70
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_22567f4
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225680c
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22567f4
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22567f4

.thumb
branch_22567f4: @ 22567f4 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22567f8

.thumb
Function_22567f8: @ 22567f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256808
	bl      Function_2256864
	mov     r0, r4
	bl      free
.thumb
branch_2256808: @ 2256808 :thumb
	pop     {r4,pc}
@ 0x225680a


.align 2, 0


.thumb
Function_225680c: @ 225680c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r7, r0
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x59
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x34
	mov     r1, #0xc
	mov     r2, #0x57
	mov     r3, #0x58
	bl      0x2255958
	mov     r0, r7
	str     r0, [sp, #0xc]
	add     r0, #0x34
	ldr     r4, [pc, #0x20] @ 0x2256860, (=0x2256dc0)
	mov     r6, #0x0
	mov     r5, r7
	str     r0, [sp, #0xc]
.thumb
branch_2256846: @ 2256846 :thumb
	ldr     r0, [r7, #0x20]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x24]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_2256846
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256860

.word 0x2256dc0 @ 0x2256860
.thumb
Function_2256864: @ 2256864 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225686c: @ 225686c :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_2256878
	ldr     r0, [r6, #0x20]
	bl      0x22558b0
.thumb
branch_2256878: @ 2256878 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_225686c
	add     r6, #0x34
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x225688a


.align 2, 0


.thumb
Function_225688c: @ 225688c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22568ac, (=0x2256e00)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22568aa


.align 2


.word 0x2256e00 @ 0x22568ac
.thumb
Function_22568b0: @ 22568b0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22568b8, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22568b6


.align 2


.word 0x2255131 @ 0x22568b8
.thumb
Function_22568bc: @ 22568bc :thumb
	ldr     r3, [pc, #0x4] @ 0x22568c4, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22568c2


.align 2


.word 0x2255155 @ 0x22568c4
.thumb
Function_22568c8: @ 22568c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22568da


.align 2, 0


.thumb
Function_22568dc: @ 22568dc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r0, #0x8
	mov     r5, r1
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22568f0
	bl      0x2022974
.thumb
branch_22568f0: @ 22568f0 :thumb
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xb0] @ 0x22569ac, (=0x2256d88)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xa8] @ 0x22569b0, (=0x2256da4)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_225691e
	bl      0x2022974
.thumb
branch_225691e: @ 225691e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x56
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x55
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_225696a
	bl      0x2022974
.thumb
branch_225696a: @ 225696a :thumb
	mov     r0, r4
	lsr     r1, r6, #5
	bl      Function_22569bc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x7
	bl      0x2019448
	ldr     r1, [pc, #0x38] @ 0x22569b4, (=0x4001000)
	ldr     r0, [pc, #0x38] @ 0x22569b8, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x14
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_22568c8
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22569a8
	bl      0x2022974
.thumb
branch_22569a8: @ 22569a8 :thumb
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22569ac

.word 0x2256d88 @ 0x22569ac
.word 0x2256da4 @ 0x22569b0
.word 0x4001000 @ 0x22569b4
.word 0xffffe0ff @ 0x22569b8
.thumb
Function_22569bc: @ 22569bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	ldr     r3, [pc, #0x54] @ 0x2256a18, (=0x2256d80)
	mov     r4, r0
	ldrh    r5, [r3, #0x0]
	add     r0, sp, #0x0
	add     r2, sp, #0x0
	strh    r5, [r0, #0x0]
	ldrh    r5, [r3, #0x2]
	strh    r5, [r0, #0x2]
	ldrh    r5, [r3, #0x4]
	ldrh    r3, [r3, #0x6]
	strh    r5, [r0, #0x4]
	strh    r3, [r0, #0x6]
	str     r1, [r4, #0x58]
	strh    r1, [r0, #0x6]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	bl      0x201a8d4
	ldr     r0, [r4, #0x0]
	mov     r2, #0xbe
	ldr     r0, [r0, #0x8]
	ldr     r1, [r4, #0x54]
	lsl     r2, r2, #6
	bl      0x2099dd0
	cmp     r0, #0x0
	bne     branch_2256a02
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x4
	bl      Function_201ada4
.thumb
branch_2256a02: @ 2256a02 :thumb
	mov     r0, r4
	add     r0, #0x48
	bl      0x201a9f4
	add     r4, #0x48
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2256a16


.align 2


.word 0x2256d80 @ 0x2256a18
.thumb
Function_2256a1c: @ 2256a1c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256a38
	cmp     r0, #0x1
	beq     branch_2256a44
	pop     {r3-r5,pc}
@ 0x2256a38

.thumb
branch_2256a38: @ 2256a38 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x5c]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256a44

.thumb
branch_2256a44: @ 2256a44 :thumb
	ldr     r0, [r4, #0x0]
	mov     r2, #0xbe
	ldr     r0, [r0, #0x8]
	ldr     r1, [r4, #0x54]
	lsl     r2, r2, #6
	bl      0x2099da8
	mov     r0, r4
	add     r0, #0x48
	bl      Function_201a8fc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r5
	bl      Function_22568c8
	pop     {r3-r5,pc}
@ 0x2256a72


.align 2, 0


.thumb
Function_2256a74: @ 2256a74 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	add     r0, #0x48
	bl      0x201accc
	mov     r0, r4
	bl      Function_22568c8
	pop     {r4,pc}
@ 0x2256a8c

.thumb
Function_2256a8c: @ 2256a8c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	ldr     r0, [r1, #0x0]
	lsl     r2, r0, #1
	ldr     r0, [r1, #0x4]
	mov     r1, #0x14
	lsl     r3, r0, #1
	asr     r5, r3, #3
	asr     r0, r2, #3
	mul     r1, r5
	add     r5, r0, r1
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	lsl     r2, r2, #16
	lsl     r3, r3, #16
	add     r0, #0x48
	mov     r1, #0x1
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x201ae78
	ldr     r1, [r4, #0x54]
	lsl     r0, r5, #5
	add     r0, r1, r0
	ldr     r1, [r4, #0x58]
	mov     r2, #0x20
	add     r1, r1, r5
	lsl     r1, r1, #5
	blx     0x20c090c
	mov     r0, r6
	bl      Function_22568c8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2256ae2


.align 2, 0


.thumb
Function_2256ae4: @ 2256ae4 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	add     r0, #0x48
	bl      0x201accc
	mov     r0, r4
	bl      Function_22568c8
	pop     {r4,pc}
@ 0x2256afc

.thumb
Function_2256afc: @ 2256afc :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	ldr     r0, [pc, #0x40] @ 0x2256b54, (=0x5b74)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256b1c
	mov     r1, #0x2
	b       branch_2256b1e
@ 0x2256b1c

.thumb
branch_2256b1c: @ 2256b1c :thumb
	mov     r1, #0x1
.thumb
branch_2256b1e: @ 2256b1e :thumb
	ldr     r0, [r4, #0x28]
	bl      0x22558c4
	ldr     r0, [pc, #0x30] @ 0x2256b58, (=0x5b75)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256b30
	mov     r1, #0x4
	b       branch_2256b32
@ 0x2256b30

.thumb
branch_2256b30: @ 2256b30 :thumb
	mov     r1, #0x3
.thumb
branch_2256b32: @ 2256b32 :thumb
	ldr     r0, [r4, #0x2c]
	bl      0x22558c4
	ldr     r0, [pc, #0x20] @ 0x2256b5c, (=0x5b76)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256b44
	mov     r1, #0x6
	b       branch_2256b46
@ 0x2256b44

.thumb
branch_2256b44: @ 2256b44 :thumb
	mov     r1, #0x5
.thumb
branch_2256b46: @ 2256b46 :thumb
	ldr     r0, [r4, #0x30]
	bl      0x22558c4
	mov     r0, r6
	bl      Function_22568c8
	pop     {r4-r6,pc}
@ 0x2256b54

.word 0x5b74 @ 0x2256b54
.word 0x5b75 @ 0x2256b58
.word 0x5b76 @ 0x2256b5c
.thumb
Function_2256b60: @ 2256b60 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x4
	bl      Function_201ada4
	add     r4, #0x48
	mov     r0, r4
	bl      0x201accc
	mov     r0, r5
	bl      Function_22568c8
	pop     {r3-r5,pc}
@ 0x2256b8c

.thumb
Function_2256b8c: @ 2256b8c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256bb6
	ldr     r1, [r4, #0x5c]
	cmp     r1, #0x0
	beq     branch_2256bb6
	mov     r0, r5
	bl      Function_22568c8
	pop     {r3-r5,pc}
@ 0x2256bb6

.thumb
branch_2256bb6: @ 2256bb6 :thumb
	cmp     r0, #0x4
	bls     branch_2256bbc
	b       branch_2256d1a
@ 0x2256bbc

.thumb
branch_2256bbc: @ 2256bbc :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2256bc8

Jumppoints_2256bc8:
.hword branch_2256bd2 - Jumppoints_2256bc8 - 2
.hword branch_2256c06 - Jumppoints_2256bc8 - 2
.hword branch_2256c58 - Jumppoints_2256bc8 - 2
.hword branch_2256ca2 - Jumppoints_2256bc8 - 2
.hword branch_2256cd6 - Jumppoints_2256bc8 - 2
.thumb
branch_2256bd2: @ 2256bd2 :thumb
	mov     r0, r4
	add     r0, #0x68
	ldrh    r0, [r0, #0x0]
	mov     r1, #0x15
	lsl     r1, r1, #4
	add     r2, r0, r1
	mov     r0, r4
	add     r0, #0x68
	strh    r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x68
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r4, #0x24]
	bl      0x2255950
	mov     r0, #0x0
	str     r0, [r4, #0x64]
	str     r0, [r4, #0x60]
	str     r0, [r4, #0x5c]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256c06

.thumb
branch_2256c06: @ 2256c06 :thumb
	mov     r0, r4
	add     r0, #0x68
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x68
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r4, #0x24]
	bl      0x2255950
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x15
	lsl     r0, r0, #4
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x6a
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	mov     r1, #0x3
	ldrh    r0, [r0, #0x0]
	lsl     r1, r1, #12
	cmp     r0, r1
	bcc     branch_2256d1a
	mov     r0, r4
	add     r0, #0x6a
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x64]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256c58

.thumb
branch_2256c58: @ 2256c58 :thumb
	mov     r0, r4
	add     r0, #0x68
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x68
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r4, #0x24]
	bl      0x2255950
	ldr     r0, [r4, #0x60]
	cmp     r0, #0x0
	beq     branch_2256d1a
	bl      0x201d35c
	mov     r1, #0x7
	and     r0, r1
	str     r0, [r4, #0x6c]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x1a
	lsl     r0, r0, #8
	cmp     r1, r0
	bls     branch_2256c9a
	add     r4, #0x6a
	strh    r0, [r4, #0x0]
.thumb
branch_2256c9a: @ 2256c9a :thumb
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256ca2

.thumb
branch_2256ca2: @ 2256ca2 :thumb
	mov     r0, r4
	add     r0, #0x68
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x68
	ldrh    r1, [r1, #0x0]
	ldr     r0, [r4, #0x24]
	bl      0x2255950
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	bne     branch_2256cce
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x6c]
	pop     {r3-r5,pc}
@ 0x2256cce

.thumb
branch_2256cce: @ 2256cce :thumb
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256cd6

.thumb
branch_2256cd6: @ 2256cd6 :thumb
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x50
	bls     branch_2256d0e
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	sub     r1, #0x50
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x68
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x6a
	ldrh    r0, [r0, #0x0]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x68
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x24]
	add     r4, #0x68
	ldrh    r1, [r4, #0x0]
	bl      0x2255950
	pop     {r3-r5,pc}
@ 0x2256d0e

.thumb
branch_2256d0e: @ 2256d0e :thumb
	mov     r0, #0x0
	add     r4, #0x6a
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_22568c8
.thumb
branch_2256d1a: @ 2256d1a :thumb
	pop     {r3-r5,pc}
@ 0x2256d1c

.thumb
Function_2256d1c: @ 2256d1c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256d3e
	cmp     r0, #0x1
	beq     branch_2256d4a
	pop     {r3-r5,pc}
@ 0x2256d3e

.thumb
branch_2256d3e: @ 2256d3e :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x60]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256d4a

.thumb
branch_2256d4a: @ 2256d4a :thumb
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_22568b0
	cmp     r0, #0x0
	beq     branch_2256d62
	ldr     r0, [pc, #0xc] @ 0x2256d64, (=0x66a)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22568c8
branch_2256d62: @ 2256d62 :thumb
	pop     {r3-r5,pc}
@ 0x2256d64

.word 0x66a @ 0x2256d64



Unknown_2256d68: @ 0x2256d68
.incbin "./baserom/overlay/overlay_0041.bin", 0xba8, 0x2256e80 - 0x2256d68


@end 0x2256e80




