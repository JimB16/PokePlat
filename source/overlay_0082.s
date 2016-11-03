

.section .iwram82, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_223b160
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_223b160
	ldr     r0, [r4, #0x0]
	bl      0x2006814
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223b160

.thumb
branch_223b160: @ 223b160 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b164

.thumb
Function_223b164: @ 223b164 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x37
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r0, r4
	mov     r1, #0x28
	mov     r2, #0x37
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0x28
	mov     r4, r0
	blx 0x20c4cf4
	mov     r0, #0x37
	str     r0, [r4, #0x0]
	str     r5, [r4, #0x10]
	ldr     r1, [r5, #0x20]
	cmp     r1, #0x0
	beq     branch_223b1a4
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_223b1a4
	bl      0x21d1e74
.thumb
branch_223b1a4: @ 223b1a4 :thumb
	mov     r0, r4
	ldr     r1, [r5, #0x20]
	add     r0, #0x26
	strb    r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [r5, #0x24]
	add     r0, #0x27
	strb    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	bl      0x207d99c
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x1
	bne     branch_223b1ce
	ldrh    r1, [r4, #0x6]
	mov     r0, #0xff
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strh    r0, [r4, #0x6]
.thumb
branch_223b1ce: @ 223b1ce :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b1d2


.align 2, 0


.thumb
Function_223b1d4: @ 223b1d4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x200682c
	mov     r6, r0
	mov     r0, r5
	bl      0x2006840
	ldr     r5, [r4, #0x0]
	cmp     r5, #0x4
	bhi     branch_223b23e
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b1f8

Jumppoints_223b1f8:
.hword branch_223b202 - Jumppoints_223b1f8 - 2
.hword branch_223b210 - Jumppoints_223b1f8 - 2
.hword branch_223b21e - Jumppoints_223b1f8 - 2
.hword branch_223b22c - Jumppoints_223b1f8 - 2
.hword branch_223b23a - Jumppoints_223b1f8 - 2
.thumb
branch_223b202: @ 223b202 :thumb
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x14
	bl      Function_223b2e0
	str     r0, [r4, #0x0]
	b       branch_223b23e
@ 0x223b210

.thumb
branch_223b210: @ 223b210 :thumb
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x14
	bl      Function_223b330
	str     r0, [r4, #0x0]
	b       branch_223b23e
@ 0x223b21e

.thumb
branch_223b21e: @ 223b21e :thumb
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x14
	bl      Function_223b35c
	str     r0, [r4, #0x0]
	b       branch_223b23e
@ 0x223b22c

.thumb
branch_223b22c: @ 223b22c :thumb
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x14
	bl      Function_223b37c
	str     r0, [r4, #0x0]
	b       branch_223b23e
@ 0x223b23a

.thumb
branch_223b23a: @ 223b23a :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223b23e

.thumb
branch_223b23e: @ 223b23e :thumb
	ldr     r0, [r4, #0x0]
	cmp     r5, r0
	beq     branch_223b248
	mov     r0, #0x0
	str     r0, [r6, #0x14]
.thumb
branch_223b248: @ 223b248 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223b24c

.thumb
Function_223b24c: @ 223b24c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	bl      0x200682c
	mov     r6, r0
	mov     r0, r7
	bl      0x2006840
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223b26c
	cmp     r0, #0x1
	beq     branch_223b2bc
	b       branch_223b2d8
@ 0x223b26c

.thumb
branch_223b26c: @ 223b26c :thumb
	ldr     r0, [r6, #0x0]
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0xc]
	bl      0x20181c4
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x28
	blx 0x20c4cf4
	mov     r0, r7
	bl      0x2006830
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_223b296
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_223b296
	bl      0x21d1f18
.thumb
branch_223b296: @ 223b296 :thumb
	ldr     r0, [sp, #0x0]
	bl      0x201807c
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	bne     branch_223b2a6
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b2a6

.thumb
branch_223b2a6: @ 223b2a6 :thumb
	mov     r0, #0x0
	mov     r1, #0x1
	bl      0x20388f4
	mov     r0, #0x4
	bl      0x20364f0
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b2dc
@ 0x223b2bc

.thumb
branch_223b2bc: @ 223b2bc :thumb
	mov     r0, #0x4
	bl      0x2036540
	cmp     r0, #0x0
	bne     branch_223b2d4
	bl      0x2035e18
	mov     r4, r0
	bl      0x2032e64
	cmp     r4, r0
	bge     branch_223b2dc
.thumb
branch_223b2d4: @ 223b2d4 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b2d8

.thumb
branch_223b2d8: @ 223b2d8 :thumb
	bl      0x2022974
.thumb
branch_223b2dc: @ 223b2dc :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223b2e0

.thumb
Function_223b2e0: @ 223b2e0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x5
	bhi     branch_223b32a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b2f6

Jumppoints_223b2f6:
.hword branch_223b302 - Jumppoints_223b2f6 - 2
.hword branch_223b30a - Jumppoints_223b2f6 - 2
.hword branch_223b312 - Jumppoints_223b2f6 - 2
.hword branch_223b31a - Jumppoints_223b2f6 - 2
.hword branch_223b322 - Jumppoints_223b2f6 - 2
.hword branch_223b326 - Jumppoints_223b2f6 - 2
.thumb
branch_223b302: @ 223b302 :thumb
	bl      Function_223b380
	str     r0, [r4, #0x0]
	b       branch_223b32a
@ 0x223b30a

.thumb
branch_223b30a: @ 223b30a :thumb
	bl      Function_223b3dc
	str     r0, [r4, #0x0]
	b       branch_223b32a
@ 0x223b312

.thumb
branch_223b312: @ 223b312 :thumb
	bl      Function_223b470
	str     r0, [r4, #0x0]
	b       branch_223b32a
@ 0x223b31a

.thumb
branch_223b31a: @ 223b31a :thumb
	bl      Function_223b510
	str     r0, [r4, #0x0]
	b       branch_223b32a
@ 0x223b322

.thumb
branch_223b322: @ 223b322 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223b326

.thumb
branch_223b326: @ 223b326 :thumb
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x223b32a

.thumb
branch_223b32a: @ 223b32a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b32e


.align 2, 0
.thumb
Function_223b330: @ 223b330 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x20] @ 0x223b358, (=0x223b564)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	ldr     r2, [r4, #0x0]
	mov     r1, r4
	bl      0x20067e8
	str     r0, [r4, #0x1c]
	mov     r0, #0x2
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223b356

.align 2
.word 0x223b564 @ 0x223b358



.thumb
Function_223b35c: @ 223b35c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x1c
	bl      Function_223b140
	cmp     r0, #0x0
	bne     branch_223b36e
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x223b36e

.thumb
branch_223b36e: @ 223b36e :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_223b378
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223b378

.thumb
branch_223b378: @ 223b378 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223b37c

.thumb
Function_223b37c: @ 223b37c :thumb
	mov     r0, #0x4
	bx      lr
@ 0x223b380

.thumb
Function_223b380: @ 223b380 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r3, [pc, #0x4c] @ 0x223b3d4, (=0x223b554)
	add     r2, sp, #0x0
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x10]
	ldr     r1, [pc, #0x40] @ 0x223b3d8, (=Unknown_223b550)
	ldr     r0, [r0, #0x14]
	ldr     r2, [r5, #0x0]
	bl      0x207d824
	mov     r4, r0
	ldrh    r0, [r5, #0x6]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0x1
	bne     branch_223b3ae
	mov     r2, #0x5
	b       branch_223b3b0
@ 0x223b3ae

.thumb
branch_223b3ae: @ 223b3ae :thumb
	mov     r2, #0x4
.thumb
branch_223b3b0: @ 223b3b0 :thumb
	ldr     r1, [r5, #0x10]
	lsl     r2, r2, #24
	ldr     r1, [r1, #0xc]
	ldr     r3, [r5, #0xc]
	mov     r0, r4
	lsr     r2, r2, #24
	bl      0x207cb2c
	ldr     r2, [r5, #0x0]
	add     r0, sp, #0x0
	mov     r1, r4
	bl      0x20067e8
	str     r0, [r5, #0x1c]
	str     r4, [r5, #0x18]
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223b3d4

.word 0x223b554 @ 0x223b3d4
.word Unknown_223b550 @ 0x223b3d8



.thumb
Function_223b3dc: @ 223b3dc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	add     r0, #0x1c
	bl      Function_223b140
	cmp     r0, #0x0
	bne     branch_223b3ee
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_223b3ee: @ 223b3ee :thumb
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x207cb08
	mov     r5, r0
	bl      0x207cb20
	mov     r2, r0
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	blx 0x20d50b8
	ldr     r0, [r4, #0x18]
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	mov     r0, r5
	bl      0x207cb94
	str     r0, [r4, #0x8]
	mov     r0, r5
	bl      0x20181c4
	mov     r0, r5
	bl      0x207cb9c
	cmp     r0, #0x5
	bhi     branch_223b44a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b436

Jumppoints_223b436:
.hword branch_223b452 - Jumppoints_223b436 - 2
.hword branch_223b442 - Jumppoints_223b436 - 2
.hword branch_223b452 - Jumppoints_223b436 - 2
.hword branch_223b452 - Jumppoints_223b436 - 2
.hword branch_223b452 - Jumppoints_223b436 - 2
.hword branch_223b446 - Jumppoints_223b436 - 2
.thumb
branch_223b442: @ 223b442 :thumb
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x223b446

.thumb
branch_223b446: @ 223b446 :thumb
	mov     r0, #0x5
	pop     {r3-r5,pc}
@ 0x223b44a

.thumb
branch_223b44a: @ 223b44a :thumb
	bl      0x2022974
	mov     r0, #0x95
	str     r0, [r4, #0x8]
.thumb
branch_223b452: @ 223b452 :thumb
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #16
	ldr     r3, [r4, #0x0]
	lsr     r1, r1, #16
	mov     r2, #0x1
	bl      0x207d60c
	cmp     r0, #0x0
	bne     branch_223b46c
	bl      0x2022974
.thumb
branch_223b46c: @ 223b46c :thumb
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x223b470

.thumb
Function_223b470: @ 223b470 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	ldr     r3, [pc, #0x90] @ 0x223b50c, (=0x223b574)
	ldr     r0, [r0, #0x14]
	add     r2, sp, #0x8
	str     r0, [sp, #0x0]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x20972fc
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x8]
	mov     r2, #0x1
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	bl      0x2097320
	mov     r6, #0x0
	mov     r4, r6
.thumb
branch_223b4a4: @ 223b4a4 :thumb
	mov     r0, r4
	bl      0x207d354
	lsl     r0, r0, #24
	lsr     r7, r0, #24
	ldr     r0, [sp, #0x0]
	ldr     r3, [r5, #0x0]
	mov     r1, r7
	mov     r2, #0x1
	bl      0x207d688
	cmp     r0, #0x1
	bne     branch_223b4ce
	ldr     r0, [r5, #0x18]
	mov     r1, r7
	mov     r2, #0x0
	bl      0x2097320
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_223b4ce: @ 223b4ce :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x40
	bcc     branch_223b4a4
	add     r3, sp, #0x4
	ldr     r0, [r5, #0xc]
	mov     r1, #0x4
	add     r2, sp, #0x4
	add     r3, #0x1
	bl      0x207d9b4
	add     r2, sp, #0x4
	ldrb    r1, [r2, #0x1]
	add     r3, r6, #0x2
	lsl     r3, r3, #24
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r5, #0x18]
	lsr     r3, r3, #24
	bl      0x209733c
	ldr     r1, [r5, #0x18]
	ldr     r2, [r5, #0x0]
	add     r0, sp, #0x8
	bl      0x20067e8
	str     r0, [r5, #0x1c]
	mov     r0, #0x3
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223b50a

.align 2
.word 0x223b574 @ 0x223b50c



.thumb
Function_223b510: @ 223b510 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	add     r0, #0x1c
	bl      Function_223b140
	cmp     r0, #0x0
	bne     branch_223b526
	add     sp, #0x4
	mov     r0, #0x3
	pop     {r3,r4,pc}

branch_223b526: @ 223b526 :thumb
	add     r1, sp, #0x0
	ldr     r0, [r4, #0x18]
	add     r1, #0x1
	add     r2, sp, #0x0
	bl      0x2097390
	add     r3, sp, #0x0
	ldrb    r2, [r3, #0x0]
	ldrb    r3, [r3, #0x1]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x4
	bl      0x207d9c8
	ldr     r0, [r4, #0x18]
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	add     sp, #0x4
	pop     {r3,r4,pc}



.align 2, 0
Unknown_223b550: @ 0x223b550
.incbin "./baserom/overlay/overlay_0082.bin", 0x410, 0x223b554 - 0x223b550


.word 0x223b5a1 @ 0x223b554
.word 0x223b76d @ 0x223b558
.word 0x223b901 @ 0x223b55c
.word 0x54 @ 0x223b560
.word 0x223b5b1 @ 0x223b564
.word 0x223b65d @ 0x223b568
.word 0x223b711 @ 0x223b56c
.word 0x53 @ 0x223b570
.word 0x2241441 @ 0x223b574
.word 0x224154d @ 0x223b578
.word 0x22415a1 @ 0x223b57c
@ 0x223b580


.incbin "./baserom/overlay/overlay_0082.bin", 0x440, 0x223b5a0 - 0x223b580


@end 0x223b5a0




