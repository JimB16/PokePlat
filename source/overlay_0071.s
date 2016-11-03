

.section .iwram71, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x1f4] @ 0x223b35c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x1f4] @ 0x223b360, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r2, #0xa
	mov     r0, #0x3
	mov     r1, #0x19
	lsl     r2, r2, #14
	bl      0x2017fc8
	mov     r0, #0x33
	mov     r1, #0x19
	bl      0x2006c24
	str     r0, [sp, #0xc]
	ldr     r1, [pc, #0x1d0] @ 0x223b364, (=0x3320)
	mov     r0, r5
	mov     r2, #0x19
	bl      0x200681c
	ldr     r2, [pc, #0x1c8] @ 0x223b364, (=0x3320)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, r5
	bl      0x2006840
	mov     r1, r4
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, #0x19
	bl      0x2018340
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_223b620
	bl      Function_223b688
	ldr     r0, [r4, #0x0]
	bl      Function_223b858
	ldr     r1, [sp, #0xc]
	mov     r0, r4
	bl      Function_223b968
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r1, #0x0
	mov     r0, #0x38
	mov     r2, r1
	bl      0x2004550
	ldr     r0, [pc, #0x180] @ 0x223b368, (=0x32f0)
	add     r0, r4, r0
	bl      Function_223d324
	ldr     r0, [pc, #0x17c] @ 0x223b36c, (=0x695)
	bl      0x2005748
	ldr     r0, [pc, #0x17c] @ 0x223b370, (=0x30e4)
	ldr     r1, [sp, #0xc]
	add     r0, r4, r0
	bl      Function_223cf0c
	mov     r0, #0x0
	mov     r1, r0
	add     r2, sp, #0x10
	mov     r5, r0
	mov     r6, #0x1
.thumb
branch_223b206: @ 223b206 :thumb
	mov     r3, r4
	add     r3, #0xb4
	ldr     r3, [r3, #0x0]
	add     r3, r3, r1
	ldr     r3, [r3, #0x48]
	lsl     r3, r3, #31
	asr     r3, r3, #31
	beq     branch_223b21a
	strb    r6, [r2, #0x0]
	b       branch_223b21c
@ 0x223b21a

.thumb
branch_223b21a: @ 223b21a :thumb
	strb    r5, [r2, #0x0]
.thumb
branch_223b21c: @ 223b21c :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r0, #0x8
	blt     branch_223b206
	ldr     r0, [pc, #0x148] @ 0x223b370, (=0x30e4)
	add     r1, sp, #0x10
	add     r0, r4, r0
	bl      Function_223d070
	ldr     r0, [r4, #0x0]
	add     r1, r4, #0x4
	bl      Function_223c69c
	mov     r5, #0x0
	mov     r6, #0x1
.thumb
branch_223b23c: @ 223b23c :thumb
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x2]
	asr     r0, r5
	tst     r0, r6
	beq     branch_223b252
	mov     r0, r4
	mov     r1, r5
	bl      Function_223c128
.thumb
branch_223b252: @ 223b252 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x8
	bcc     branch_223b23c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x3
	bl      0x2019448
	mov     r1, r4
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	add     r0, r4, #0x4
	bl      Function_223c6f0
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_223b28c
	ldr     r2, [pc, #0xf4] @ 0x223b374, (=0x330c)
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x54
	mov     r1, #0x1
	bl      Function_223cecc
.thumb
branch_223b28c: @ 223b28c :thumb
	mov     r1, #0xc3
	mov     r5, #0x0
	lsl     r1, r1, #6
	str     r5, [r4, r1]
	ldr     r0, [pc, #0xe0] @ 0x223b378, (=0x3318)
	.hword  0x1e6a @ sub r2, r5, #0x1
	strb    r5, [r4, r0]
	add     r1, #0x14
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0x2c
	str     r5, [r4, r1]
	.hword  0x1d40 @ add r0, r0, #0x5
	ldr     r7, [pc, #0xc8] @ 0x223b370, (=0x30e4)
	strb    r5, [r4, r0]
.thumb
branch_223b2aa: @ 223b2aa :thumb
	ldr     r0, [pc, #0xd0] @ 0x223b37c, (=0x3310)
	add     r2, r4, r5
	mov     r1, #0x0
	strb    r1, [r2, r0]
	mov     r0, r4
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	lsl     r0, r5, #2
	add     r1, #0x48
	ldr     r0, [r1, r0]
	lsl     r1, r0, #31
	asr     r1, r1, #31
	beq     branch_223b316
	asr     r0, r0, #1
	bl      Function_223c40c
	mov     r6, r0
	cmp     r6, #0x4
	bhi     branch_223b2ee
	bne     branch_223b2de
	add     r0, r4, r7
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_223d298
	b       branch_223b2ee
@ 0x223b2de

.thumb
branch_223b2de: @ 223b2de :thumb
	mov     r2, #0x3
	sub     r2, r2, r6
	lsl     r2, r2, #24
	add     r0, r4, r7
	mov     r1, r5
	lsr     r2, r2, #24
	bl      Function_223d298
.thumb
branch_223b2ee: @ 223b2ee :thumb
	cmp     r6, #0x3
	bne     branch_223b302
	lsl     r0, r5, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x88] @ 0x223b380, (=0x3260)
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_223b316
@ 0x223b302

.thumb
branch_223b302: @ 223b302 :thumb
	cmp     r6, #0x4
	bne     branch_223b316
	lsl     r0, r5, #2
	add     r1, r4, r0
	mov     r0, #0xca
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_223b316: @ 223b316 :thumb
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	cmp     r5, #0x8
	bcc     branch_223b2aa
	bl      Function_223c288
	ldr     r0, [pc, #0x5c] @ 0x223b384, (=0x223c18d)
	mov     r1, #0x0
	bl      0x2017798
	bl      0x20397e4
	mov     r0, #0x1
	mov     r1, #0x2a
	bl      0x200544c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	mov     r1, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	ldr     r0, [sp, #0xc]
	bl      0x2006ca8
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223b35c

.word 0xffffe0ff @ 0x223b35c
.word 0x4001000 @ 0x223b360
.word 0x3320 @ 0x223b364
.word 0x32f0 @ 0x223b368
.word 0x695 @ 0x223b36c
.word 0x30e4 @ 0x223b370
.word 0x330c @ 0x223b374
.word 0x3318 @ 0x223b378
.word 0x3310 @ 0x223b37c
.word 0x3260 @ 0x223b380
.word 0x223c18d @ 0x223b384
.thumb
Function_223b388: @ 223b388 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x4
	bhi     branch_223b3b8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223b3a6

Jumppoints_223b3a6:
.hword branch_223b3b0 - Jumppoints_223b3a6 - 2
.hword branch_223b3c0 - Jumppoints_223b3a6 - 2
.hword branch_223b4de - Jumppoints_223b3a6 - 2
.hword branch_223b4ec - Jumppoints_223b3a6 - 2
.hword branch_223b4fa - Jumppoints_223b3a6 - 2
.thumb
branch_223b3b0: @ 223b3b0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	bne     branch_223b3ba
.thumb
branch_223b3b8: @ 223b3b8 :thumb
	b       branch_223b580
@ 0x223b3ba

.thumb
branch_223b3ba: @ 223b3ba :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b580
@ 0x223b3c0

.thumb
branch_223b3c0: @ 223b3c0 :thumb
	bl      Function_223bef8
	mov     r6, r0
	cmp     r6, #0x1
	bne     branch_223b43e
	ldr     r0, [pc, #0x1c8] @ 0x223b594, (=0x30d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b412
	ldr     r2, [pc, #0x1c4] @ 0x223b598, (=0x32ec)
	mov     r1, #0x1
	mov     r0, r2
	str     r1, [r4, r2]
	add     r0, #0x31
	sub     r2, #0x4c
	strb    r1, [r4, r0]
	ldr     r0, [r4, r2]
	bl      0x2021cac
	ldr     r0, [pc, #0x1b4] @ 0x223b59c, (=0x32a0)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cc8
	ldr     r0, [pc, #0x1a8] @ 0x223b59c, (=0x32a0)
	mov     r1, #0xa
	ldr     r0, [r4, r0]
	bl      0x2021d6c
	ldr     r0, [pc, #0x1a4] @ 0x223b5a0, (=0x331a)
	mov     r2, #0x0
	strb    r2, [r4, r0]
	add     r1, r0, #0x2
	strb    r2, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r2, [r4, r0]
	ldr     r0, [pc, #0x198] @ 0x223b5a4, (=0x30d8)
	str     r2, [r4, r0]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_223b4ca
@ 0x223b412

.thumb
branch_223b412: @ 223b412 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r0, r0, #24
	lsr     r5, r0, #24
	mov     r0, r4
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	lsl     r0, r5, #2
	add     r1, #0x48
	ldr     r0, [r1, r0]
	lsl     r1, r0, #31
	asr     r1, r1, #31
	beq     branch_223b4ca
	asr     r0, r0, #1
	bl      Function_223c40c
	mov     r2, r0
	ldr     r0, [pc, #0x174] @ 0x223b5a8, (=0x32f0)
	mov     r1, r5
	add     r0, r4, r0
	bl      Function_223d338
	b       branch_223b4ca
@ 0x223b43e

.thumb
branch_223b43e: @ 223b43e :thumb
	cmp     r6, #0x2
	ldr     r1, [pc, #0x154] @ 0x223b598, (=0x32ec)
	bne     branch_223b464
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_223b45c
	ldr     r0, [pc, #0x148] @ 0x223b594, (=0x30d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223b45c
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, #0x2
	add     r1, #0x31
	strb    r0, [r4, r1]
.thumb
branch_223b45c: @ 223b45c :thumb
	mov     r0, r4
	bl      Function_223bfbc
	b       branch_223b4ca
@ 0x223b464

.thumb
branch_223b464: @ 223b464 :thumb
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_223b47e
	mov     r0, r1
	add     r0, #0x31
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b47e
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, #0x2
	add     r1, #0x31
	strb    r0, [r4, r1]
.thumb
branch_223b47e: @ 223b47e :thumb
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_223b496
	mov     r0, #0x33
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_223c44c
.thumb
branch_223b496: @ 223b496 :thumb
	cmp     r6, #0x3
	bne     branch_223b4a6
	ldr     r0, [pc, #0x104] @ 0x223b5a0, (=0x331a)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_223b4ca
@ 0x223b4a6

.thumb
branch_223b4a6: @ 223b4a6 :thumb
	cmp     r6, #0x4
	bne     branch_223b4ca
	ldr     r0, [pc, #0x100] @ 0x223b5ac, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x19
	str     r1, [sp, #0x8]
	mov     r1, #0x4
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	mov     r0, #0x2
	str     r0, [r5, #0x0]
.thumb
branch_223b4ca: @ 223b4ca :thumb
	mov     r1, r4
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	mov     r0, r4
	ldrb    r1, [r1, #0x4]
	lsl     r1, r1, #30
	lsr     r1, r1, #31
	bl      Function_223c5a4
	b       branch_223b580
@ 0x223b4de

.thumb
branch_223b4de: @ 223b4de :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b580
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x223b4ec

.thumb
branch_223b4ec: @ 223b4ec :thumb
	bl      Function_223bc20
	cmp     r0, #0x0
	beq     branch_223b580
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b580
@ 0x223b4fa

.thumb
branch_223b4fa: @ 223b4fa :thumb
	ldr     r1, [pc, #0xb4] @ 0x223b5b0, (=0x331d)
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_223b55e
	bl      Function_223bef8
	cmp     r0, #0x1
	bne     branch_223b52c
	ldr     r0, [pc, #0x88] @ 0x223b594, (=0x30d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b55e
	ldr     r1, [pc, #0x84] @ 0x223b598, (=0x32ec)
	mov     r2, #0x1
	mov     r0, r1
	str     r2, [r4, r1]
	add     r0, #0x31
	strb    r2, [r4, r0]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x30
	strb    r2, [r4, r0]
	add     r1, #0x2f
	strb    r2, [r4, r1]
	b       branch_223b55e
@ 0x223b52c

.thumb
branch_223b52c: @ 223b52c :thumb
	cmp     r0, #0x2
	bne     branch_223b54c
	ldr     r1, [pc, #0x64] @ 0x223b598, (=0x32ec)
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	beq     branch_223b55e
	ldr     r0, [pc, #0x58] @ 0x223b594, (=0x30d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223b55e
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r0, #0x2
	add     r1, #0x31
	strb    r0, [r4, r1]
	b       branch_223b55e
@ 0x223b54c

.thumb
branch_223b54c: @ 223b54c :thumb
	ldr     r0, [pc, #0x48] @ 0x223b598, (=0x32ec)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223b55e
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r1, #0x2
	add     r0, #0x31
	strb    r1, [r4, r0]
.thumb
branch_223b55e: @ 223b55e :thumb
	ldr     r0, [pc, #0x44] @ 0x223b5a4, (=0x30d8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223b570
	mov     r0, r4
	bl      Function_223bdf8
	ldr     r1, [pc, #0x34] @ 0x223b5a4, (=0x30d8)
	str     r0, [r4, r1]
.thumb
branch_223b570: @ 223b570 :thumb
	ldr     r0, [pc, #0x30] @ 0x223b5a4, (=0x30d8)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223b580
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
.thumb
branch_223b580: @ 223b580 :thumb
	mov     r0, r4
	bl      Function_223c2f4
	ldr     r0, [pc, #0x2c] @ 0x223b5b4, (=0x30e4)
	ldr     r0, [r4, r0]
	bl      0x20219f8
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223b594

.word 0x30d4 @ 0x223b594
.word 0x32ec @ 0x223b598
.word 0x32a0 @ 0x223b59c
.word 0x331a @ 0x223b5a0
.word 0x30d8 @ 0x223b5a4
.word 0x32f0 @ 0x223b5a8
.word 0x5dc @ 0x223b5ac
.word 0x331d @ 0x223b5b0
.word 0x30e4 @ 0x223b5b4
.thumb
Function_223b5b8: @ 223b5b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      Function_223c288
	mov     r0, r4
	bl      Function_223b668
	ldr     r0, [pc, #0x44] @ 0x223b614, (=0x30e4)
	add     r0, r4, r0
	bl      Function_223d238
	ldr     r0, [pc, #0x40] @ 0x223b618, (=0x30b8)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x3c] @ 0x223b61c, (=0x32f8)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	add     r0, r4, #0x4
	bl      Function_223c6d4
	ldr     r0, [r4, #0x0]
	bl      Function_223bbdc
	bl      0x201e530
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x19
	bl      0x201807c
	mov     r0, #0x1
	mov     r1, #0x7f
	bl      0x200544c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b614

.word 0x30e4 @ 0x223b614
.word 0x30b8 @ 0x223b618
.word 0x32f8 @ 0x223b61c
.thumb
Function_223b620: @ 223b620 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x4
	mov     r1, #0x19
	bl      0x2023790
	ldr     r1, [pc, #0x30] @ 0x223b660, (=0x3308)
	str     r0, [r5, r1]
	mov     r0, #0x5
	mov     r1, #0x19
	bl      0x2023790
	ldr     r1, [pc, #0x28] @ 0x223b664, (=0x330c)
	mov     r2, #0x9a
	str     r0, [r5, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x19
	bl      0x200b144
	ldr     r2, [pc, #0x18] @ 0x223b664, (=0x330c)
	mov     r4, r0
	ldr     r2, [r5, r2]
	mov     r1, #0xb
	bl      0x200b1b8
	mov     r0, r4
	bl      0x200b190
	pop     {r3-r5,pc}
@ 0x223b65e


.align 2


.word 0x3308 @ 0x223b660
.word 0x330c @ 0x223b664
.thumb
Function_223b668: @ 223b668 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223b680, (=0x3308)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0xc] @ 0x223b684, (=0x330c)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x223b67e


.align 2


.word 0x3308 @ 0x223b680
.word 0x330c @ 0x223b684
.thumb
Function_223b688: @ 223b688 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223b6a4, (=0x223d57c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223b692: @ 223b692 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223b692
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223b6a4

.word 0x223d57c @ 0x223b6a4
.thumb
Function_223b6a8: @ 223b6a8 :thumb
	push    {r3-r5,lr}
	cmp     r1, #0x0
	beq     branch_223b72a
	cmp     r0, #0x5
	bhi     branch_223b738
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b6be

Jumppoints_223b6be:
.hword branch_223b6ca - Jumppoints_223b6be - 2
.hword branch_223b6da - Jumppoints_223b6be - 2
.hword branch_223b6ea - Jumppoints_223b6be - 2
.hword branch_223b6fa - Jumppoints_223b6be - 2
.hword branch_223b70a - Jumppoints_223b6be - 2
.hword branch_223b71a - Jumppoints_223b6be - 2
.thumb
branch_223b6ca: @ 223b6ca :thumb
	mov     r0, r2
	mov     r1, #0x0
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b6da

.thumb
branch_223b6da: @ 223b6da :thumb
	mov     r0, r2
	mov     r1, #0x1
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b6ea

.thumb
branch_223b6ea: @ 223b6ea :thumb
	mov     r0, r2
	mov     r1, #0x2
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b6fa

.thumb
branch_223b6fa: @ 223b6fa :thumb
	mov     r0, r2
	mov     r1, #0x3
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b70a

.thumb
branch_223b70a: @ 223b70a :thumb
	mov     r0, r2
	mov     r1, #0x4
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b71a

.thumb
branch_223b71a: @ 223b71a :thumb
	mov     r0, r2
	mov     r1, #0x5
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b738
@ 0x223b72a

.thumb
branch_223b72a: @ 223b72a :thumb
	mov     r0, r2
	mov     r1, #0x6
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
.thumb
branch_223b738: @ 223b738 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #8
	blx     0x20c2c54
	ldr     r0, [sp, #0x0]
	mov     r1, #0x20
	ldr     r5, [r0, #0xc]
	mov     r2, #0x60
	mov     r0, r5
	add     r0, #0x20
	blx     0x20c0108
	mov     r1, #0x1e
	lsl     r1, r1, #4
	add     r0, r5, r1
	mov     r2, #0x20
	blx     0x20c0108
	mov     r0, r4
	bl      0x20181c4
	pop     {r3-r5,pc}
@ 0x223b768

.thumb
Function_223b768: @ 223b768 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	cmp     r0, #0xc
	bhi     branch_223b7e6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b77c

Jumppoints_223b77c:
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b7c6 - Jumppoints_223b77c - 2
.hword branch_223b7d6 - Jumppoints_223b77c - 2
.hword branch_223b7e6 - Jumppoints_223b77c - 2
.hword branch_223b796 - Jumppoints_223b77c - 2
.hword branch_223b7a6 - Jumppoints_223b77c - 2
.hword branch_223b7b6 - Jumppoints_223b77c - 2
.thumb
branch_223b796: @ 223b796 :thumb
	mov     r0, r1
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b7f4
@ 0x223b7a6

.thumb
branch_223b7a6: @ 223b7a6 :thumb
	mov     r0, r1
	mov     r1, #0x8
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b7f4
@ 0x223b7b6

.thumb
branch_223b7b6: @ 223b7b6 :thumb
	mov     r0, r1
	mov     r1, #0xa
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b7f4
@ 0x223b7c6

.thumb
branch_223b7c6: @ 223b7c6 :thumb
	mov     r0, r1
	mov     r1, #0xb
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b7f4
@ 0x223b7d6

.thumb
branch_223b7d6: @ 223b7d6 :thumb
	mov     r0, r1
	mov     r1, #0xc
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
	b       branch_223b7f4
@ 0x223b7e6

.thumb
branch_223b7e6: @ 223b7e6 :thumb
	mov     r0, r1
	mov     r1, #0x9
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r4, r0
.thumb
branch_223b7f4: @ 223b7f4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x20
	ldr     r0, [r0, #0xc]
	blx     0x20c2c54
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     0x20c00b4
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x20
	blx     0x20c0108
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b820

.thumb
Function_223b820: @ 223b820 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x30
	add     r2, sp, #0x0
	mov     r3, #0x19
	bl      0x20071ec
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	lsl     r4, r4, #5
	ldr     r5, [r0, #0xc]
	mov     r1, #0x20
	add     r0, r5, r4
	blx     0x20c2c54
	add     r0, r5, r4
	mov     r1, #0x80
	mov     r2, #0x20
	blx     0x20c0108
	mov     r0, r6
	bl      0x20181c4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223b856


.align 2, 0


.thumb
Function_223b858: @ 223b858 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r2, [pc, #0xe8] @ 0x223b948, (=0x4000304)
	mov     r4, r0
	ldrh    r1, [r2, #0x0]
	ldr     r0, [pc, #0xe8] @ 0x223b94c, (=0xffff7fff)
	ldr     r5, [pc, #0xe8] @ 0x223b950, (=0x223d4e0)
	and     r0, r1
	strh    r0, [r2, #0x0]
	add     r3, sp, #0x8c
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xd4] @ 0x223b954, (=0x223d4f0)
	add     r3, sp, #0x70
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x2
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019ebc
	ldr     r5, [pc, #0xb0] @ 0x223b958, (=0x223d50c)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019ebc
	ldr     r5, [pc, #0x8c] @ 0x223b95c, (=0x223d544)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x1
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019ebc
	ldr     r5, [pc, #0x68] @ 0x223b960, (=0x223d560)
	add     r3, sp, #0x1c
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
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x44] @ 0x223b964, (=0x223d528)
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
	mov     r3, #0x1
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019ebc
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223b948

.word 0x4000304 @ 0x223b948
.word 0xffff7fff @ 0x223b94c
.word 0x223d4e0 @ 0x223b950
.word 0x223d4f0 @ 0x223b954
.word 0x223d50c @ 0x223b958
.word 0x223d544 @ 0x223b95c
.word 0x223d560 @ 0x223b960
.word 0x223d528 @ 0x223b964
.thumb
Function_223b968: @ 223b968 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x0
	add     r2, sp, #0x14
	mov     r3, #0x19
	bl      0x20071ec
	mov     r6, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0x2
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #8
	blx     0x20c2c54
	ldr     r0, [sp, #0x14]
	mov     r2, #0x2
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20c0108
	mov     r0, r6
	bl      0x20181c4
	mov     r0, r5
	add     r0, #0xb4
	ldr     r1, [r0, #0x0]
	mov     r2, r4
	ldrb    r0, [r1, #0x3]
	ldrb    r1, [r1, #0x4]
	lsl     r1, r1, #28
	lsr     r1, r1, #31
	bl      Function_223b6a8
	mov     r0, r4
	mov     r1, #0xd
	add     r2, sp, #0x10
	mov     r3, #0x19
	bl      0x20071ec
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #8
	blx     0x20c2c54
	ldr     r0, [sp, #0x10]
	mov     r2, #0x2
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #8
	blx     0x20c00b4
	mov     r0, r6
	bl      0x20181c4
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	ldrb    r0, [r0, #0x0]
	bl      Function_223b768
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	ldrb    r1, [r0, #0x5]
	cmp     r1, #0xff
	bne     branch_223ba9a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xa
	beq     branch_223ba04
	cmp     r0, #0xb
	bne     branch_223ba0c
.thumb
branch_223ba04: @ 223ba04 :thumb
	mov     r1, #0x20
	mov     r7, #0x2a
	mov     r6, #0x1a
	b       branch_223ba14
@ 0x223ba0c

.thumb
branch_223ba0c: @ 223ba0c :thumb
	mov     r7, #0x28
	mov     r6, r7
	mov     r1, #0x1f
	sub     r6, #0x29
.thumb
branch_223ba14: @ 223ba14 :thumb
	mov     r2, #0x0
	mov     r0, r4
	mov     r3, #0x19
	str     r2, [sp, #0x0]
	bl      0x200723c
	ldr     r1, [pc, #0x1a8] @ 0x223bbcc, (=0x30b8)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_223ba2e
	bl      ErrorHandling
.thumb
branch_223ba2e: @ 223ba2e :thumb
	ldr     r1, [pc, #0x19c] @ 0x223bbcc, (=0x30b8)
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r5, r1
	blx     0x20a7164
	cmp     r0, #0x0
	bne     branch_223ba42
	bl      ErrorHandling
.thumb
branch_223ba42: @ 223ba42 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_223ba5e
	mov     r0, #0x40
	str     r0, [sp, #0x0]
	mov     r0, #0x19
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r2, #0x4
	mov     r3, #0x80
	bl      0x2007130
.thumb
branch_223ba5e: @ 223ba5e :thumb
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x168] @ 0x223bbd0, (=0x32fc)
	ldrb    r0, [r0, #0x4]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_223ba84
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r7
	mov     r2, #0x0
	add     r3, r5, r3
	bl      0x20071d0
	ldr     r1, [pc, #0x154] @ 0x223bbd4, (=0x32f8)
	str     r0, [r5, r1]
	b       branch_223baf2
@ 0x223ba84

.thumb
branch_223ba84: @ 223ba84 :thumb
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r1, r7, #0x1
	mov     r2, #0x0
	add     r3, r5, r3
	bl      0x20071d0
	ldr     r1, [pc, #0x13c] @ 0x223bbd4, (=0x32f8)
	str     r0, [r5, r1]
	b       branch_223baf2
@ 0x223ba9a

.thumb
branch_223ba9a: @ 223ba9a :thumb
	lsl     r3, r1, #2
	ldr     r1, [pc, #0x138] @ 0x223bbd8, (=0x223d604)
	mov     r2, #0x0
	ldr     r1, [r1, r3]
	mov     r0, r4
	mov     r3, #0x19
	str     r2, [sp, #0x0]
	bl      0x200723c
	ldr     r1, [pc, #0x11c] @ 0x223bbcc, (=0x30b8)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	bne     branch_223baba
	bl      ErrorHandling
.thumb
branch_223baba: @ 223baba :thumb
	ldr     r1, [pc, #0x110] @ 0x223bbcc, (=0x30b8)
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r5, r1
	blx     0x20a7164
	cmp     r0, #0x0
	bne     branch_223bace
	bl      ErrorHandling
.thumb
branch_223bace: @ 223bace :thumb
	ldr     r3, [pc, #0x100] @ 0x223bbd0, (=0x32fc)
	mov     r0, #0x19
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x31
	mov     r2, #0x0
	add     r3, r5, r3
	bl      0x20071d0
	ldr     r1, [pc, #0xf0] @ 0x223bbd4, (=0x32f8)
	str     r0, [r5, r1]
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	ldrb    r0, [r0, #0x5]
	bl      Function_223b820
.thumb
branch_223baf2: @ 223baf2 :thumb
	mov     r0, r5
	bl      Function_223c390
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1b
	mov     r3, #0x6
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x23
	mov     r3, #0x6
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1c
	mov     r3, #0x5
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x25
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1d
	mov     r3, #0x2
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x1e
	mov     r3, #0x3
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x27
	mov     r3, #0x3
	bl      0x200710c
	mov     r0, r5
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	add     r5, #0xb8
	add     r0, #0x68
	mov     r1, r5
	bl      Function_223c4dc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223bbcc

.word 0x30b8 @ 0x223bbcc
.word 0x32fc @ 0x223bbd0
.word 0x32f8 @ 0x223bbd4
.word 0x223d604 @ 0x223bbd8
.thumb
Function_223bbdc: @ 223bbdc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x13
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	mov     r0, r4
	bl      0x20181c4
	pop     {r4,pc}
@ 0x223bc20

.thumb
Function_223bc20: @ 223bc20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	ldr     r2, [pc, #0x1b4] @ 0x223bddc, (=0x331a)
	mov     r4, r0
	ldrb    r0, [r4, r2]
	mov     r5, #0x0
	cmp     r0, #0x3
	bls     branch_223bc32
	b       branch_223bd92
@ 0x223bc32

.thumb
branch_223bc32: @ 223bc32 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bc3e

Jumppoints_223bc3e:
.hword branch_223bc46 - Jumppoints_223bc3e - 2
.hword branch_223bc74 - Jumppoints_223bc3e - 2
.hword branch_223bcb0 - Jumppoints_223bc3e - 2
.hword branch_223bd4c - Jumppoints_223bc3e - 2
.thumb
branch_223bc46: @ 223bc46 :thumb
	mov     r0, #0x8
	sub     r2, #0x36
	str     r0, [r4, r2]
	ldr     r1, [pc, #0x190] @ 0x223bde0, (=0x30c8)
	lsl     r2, r0, #9
	str     r2, [r4, r1]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r1]
	add     r0, #0x80
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r2, [r4, r0]
	add     r2, #0x80
	str     r2, [r4, r0]
	ldr     r0, [pc, #0x17c] @ 0x223bde4, (=0x696)
	bl      0x2005748
	ldr     r0, [pc, #0x170] @ 0x223bddc, (=0x331a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_223bd92
@ 0x223bc74

.thumb
branch_223bc74: @ 223bc74 :thumb
	mov     r0, r2
	sub     r0, #0x36
	ldr     r3, [r4, r0]
	ldr     r1, [pc, #0x164] @ 0x223bde0, (=0x30c8)
	mov     r0, #0xc
	mov     r7, #0x2
	sub     r0, r0, r3
	mov     r3, r7
	ldr     r6, [r4, r1]
	lsl     r3, r0
	sub     r0, r6, r3
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bgt     branch_223bc9c
	mov     r0, #0x24
	str     r0, [r4, r1]
	ldrb    r0, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r2]
.thumb
branch_223bc9c: @ 223bc9c :thumb
	ldr     r0, [pc, #0x148] @ 0x223bde8, (=0x32e4)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bgt     branch_223bd92
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_223bd92
@ 0x223bcb0

.thumb
branch_223bcb0: @ 223bcb0 :thumb
	mov     r0, #0xc3
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_223bd06
	mov     r1, #0x1
	str     r1, [r4, r0]
	str     r5, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x33
	mov     r1, #0x24
	mov     r3, #0x6
	bl      0x2006e60
	add     r0, r4, #0x4
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_223cd44
	mov     r0, r4
	bl      Function_223c3e8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r1, r4
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	add     r0, r4, #0x4
	bl      Function_223ca28
	mov     r2, r4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	add     r2, #0xb8
	bl      Function_223c530
	b       branch_223bd42
@ 0x223bd06

.thumb
branch_223bd06: @ 223bd06 :thumb
	str     r5, [r4, r0]
	str     r5, [sp, #0x0]
	str     r5, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, #0x19
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x33
	mov     r1, #0x23
	mov     r3, #0x6
	bl      0x2006e60
	add     r0, r4, #0x4
	mov     r1, #0x7
	mov     r2, #0xa
	bl      Function_223cd44
	ldr     r0, [r4, #0x0]
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r0, r4
	bl      Function_223c390
	mov     r1, r4
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	add     r0, r4, #0x4
	bl      Function_223c6f0
.thumb
branch_223bd42: @ 223bd42 :thumb
	ldr     r0, [pc, #0x98] @ 0x223bddc, (=0x331a)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	b       branch_223bd92
@ 0x223bd4c

.thumb
branch_223bd4c: @ 223bd4c :thumb
	mov     r0, r2
	sub     r0, #0x36
	ldr     r0, [r4, r0]
	add     r1, r0, #0x1
	mov     r0, r2
	sub     r0, #0x36
	str     r1, [r4, r0]
	mov     r0, r2
	sub     r0, #0x36
	ldr     r0, [r4, r0]
	cmp     r0, #0x8
	ble     branch_223bd6a
	mov     r0, #0x8
	sub     r2, #0x36
	str     r0, [r4, r2]
.thumb
branch_223bd6a: @ 223bd6a :thumb
	ldr     r2, [pc, #0x7c] @ 0x223bde8, (=0x32e4)
	ldr     r3, [pc, #0x70] @ 0x223bde0, (=0x30c8)
	ldr     r6, [r4, r2]
	mov     r2, #0xc
	mov     r0, #0x2
	sub     r2, r2, r6
	mov     r6, r0
	ldr     r1, [r4, r3]
	lsl     r6, r2
	add     r1, r1, r6
	str     r1, [r4, r3]
	ldr     r2, [r4, r3]
	lsl     r1, r0, #11
	cmp     r2, r1
	blt     branch_223bd92
	str     r1, [r4, r3]
	str     r1, [r4, r3]
	add     r0, r3, #0x4
	str     r1, [r4, r0]
	mov     r5, #0x1
.thumb
branch_223bd92: @ 223bd92 :thumb
	ldr     r0, [pc, #0x4c] @ 0x223bde0, (=0x30c8)
	ldr     r0, [r4, r0]
	blx     0x20bcfe0
	mov     r6, r0
	ldr     r0, [pc, #0x4c] @ 0x223bdec, (=0x30cc)
	ldr     r0, [r4, r0]
	blx     0x20bcfe0
	mov     r1, #0x0
	str     r6, [sp, #0x10]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	blx     0x20c3e14
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x223bdf0, (=0x4001020)
	add     r1, sp, #0x10
	mov     r2, #0x80
	mov     r3, #0x60
	blx     0x20bf4ac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x223bdf4, (=0x4001030)
	add     r1, sp, #0x10
	mov     r2, #0x80
	mov     r3, #0x60
	blx     0x20bf4ac
	mov     r0, r5
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223bddc

.word 0x331a @ 0x223bddc
.word 0x30c8 @ 0x223bde0
.word 0x696 @ 0x223bde4
.word 0x32e4 @ 0x223bde8
.word 0x30cc @ 0x223bdec
.word 0x4001020 @ 0x223bdf0
.word 0x4001030 @ 0x223bdf4
.thumb
Function_223bdf8: @ 223bdf8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [pc, #0xe4] @ 0x223bee4, (=0x331a)
	ldrb    r1, [r4, r0]
	cmp     r1, #0x3
	bhi     branch_223beae
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223be12

Jumppoints_223be12:
.hword branch_223be1a - Jumppoints_223be12 - 2
.hword branch_223be42 - Jumppoints_223be12 - 2
.hword branch_223be70 - Jumppoints_223be12 - 2
.hword branch_223bea8 - Jumppoints_223be12 - 2
.thumb
branch_223be1a: @ 223be1a :thumb
	mov     r2, #0x0
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r2, [r4, r1]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrb    r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_223be34
	mov     r2, #0x1
	ldr     r1, [pc, #0xbc] @ 0x223bee8, (=0x30d0)
	lsl     r2, r2, #12
	str     r2, [r4, r1]
	mov     r1, #0x1
	b       branch_223be36
@ 0x223be34

.thumb
branch_223be34: @ 223be34 :thumb
	mov     r1, #0x2
.thumb
branch_223be36: @ 223be36 :thumb
	strb    r1, [r4, r0]
	ldr     r0, [pc, #0xb0] @ 0x223beec, (=0x3318)
	ldrb    r0, [r4, r0]
	bl      Function_223c594
	b       branch_223beae
@ 0x223be42

.thumb
branch_223be42: @ 223be42 :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r2, [r4, r1]
	mov     r1, r2
	add     r3, r1, #0x1
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r3, [r4, r1]
	ldr     r3, [pc, #0x98] @ 0x223bee8, (=0x30d0)
	lsl     r5, r2, #2
	ldr     r2, [pc, #0x9c] @ 0x223bef0, (=0x223d5cc)
	ldr     r1, [r4, r3]
	ldr     r2, [r2, r5]
	sub     r1, r1, r2
	str     r1, [r4, r3]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0xe
	bne     branch_223beae
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r2, [r4, r1]
	mov     r1, #0x3
	strb    r1, [r4, r0]
	b       branch_223beae
@ 0x223be70

.thumb
branch_223be70: @ 223be70 :thumb
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r2, [r4, r1]
	ldr     r5, [pc, #0x70] @ 0x223bee8, (=0x30d0)
	mov     r1, r2
	add     r3, r1, #0x1
	.hword  0x1e41 @ sub r1, r0, #0x1
	strb    r3, [r4, r1]
	mov     r3, #0xd
	sub     r2, r3, r2
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x68] @ 0x223bef0, (=0x223d5cc)
	ldr     r1, [r4, r5]
	ldr     r2, [r2, r3]
	add     r1, r1, r2
	str     r1, [r4, r5]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldrb    r1, [r4, r1]
	cmp     r1, #0xe
	bne     branch_223beae
	mov     r2, #0x0
	.hword  0x1e81 @ sub r1, r0, #0x2
	strb    r2, [r4, r1]
	mov     r1, #0x1
	lsl     r1, r1, #12
	str     r1, [r4, r5]
	mov     r1, #0x3
	strb    r1, [r4, r0]
	b       branch_223beae
@ 0x223bea8

.thumb
branch_223bea8: @ 223bea8 :thumb
	add     sp, #0x18
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223beae

.thumb
branch_223beae: @ 223beae :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	blx     0x20bcfe0
	mov     r5, r0
	ldr     r0, [pc, #0x2c] @ 0x223bee8, (=0x30d0)
	ldr     r0, [r4, r0]
	blx     0x20bcfe0
	mov     r1, #0x0
	str     r5, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	blx     0x20c3e14
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223bef4, (=0x4000030)
	add     r1, sp, #0x8
	mov     r2, #0x80
	str     r3, [sp, #0x4]
	blx     0x20bf4ac
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x223bee4

.word 0x331a @ 0x223bee4
.word 0x30d0 @ 0x223bee8
.word 0x3318 @ 0x223beec
.word 0x223d5cc @ 0x223bef0
.word 0x4000030 @ 0x223bef4
.thumb
Function_223bef8: @ 223bef8 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x0
	mov     r5, r0
	ldr     r0, [pc, #0xa8] @ 0x223bfa8, (=0x30d4)
	.hword  0x1e71 @ sub r1, r6, #0x1
	str     r1, [r5, r0]
	ldr     r1, [pc, #0xa4] @ 0x223bfac, (=0x21bf6bc)
	mov     r4, r6
	ldrh    r1, [r1, #0x20]
	cmp     r1, #0x0
	beq     branch_223bf14
	mov     r1, #0x1
	sub     r0, #0x10
	str     r1, [r5, r0]
.thumb
branch_223bf14: @ 223bf14 :thumb
	mov     r1, r5
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0x94] @ 0x223bfb0, (=0x223d4d0)
	ldrb    r1, [r1, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	lsl     r3, r1, #3
	ldr     r1, [pc, #0x8c] @ 0x223bfb4, (=0x3318)
	add     r2, r2, r3
	ldrb    r1, [r5, r1]
	lsl     r1, r1, #2
	ldr     r1, [r1, r2]
	bl      Function_223c60c
	ldr     r1, [pc, #0x70] @ 0x223bfa8, (=0x30d4)
	str     r0, [r5, r1]
	mov     r0, #0x0
	ldr     r2, [r5, r1]
	mvn     r0, r0
	cmp     r2, r0
	beq     branch_223bf48
	mov     r6, #0x1
	mov     r4, r6
	b       branch_223bf88
@ 0x223bf48

.thumb
branch_223bf48: @ 223bf48 :thumb
	ldr     r0, [pc, #0x60] @ 0x223bfac, (=0x21bf6bc)
	ldrh    r0, [r0, #0x22]
	cmp     r0, #0x0
	beq     branch_223bf82
	mov     r1, r5
	add     r1, #0xb4
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0x58] @ 0x223bfb0, (=0x223d4d0)
	ldrb    r1, [r1, #0x4]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #31
	lsl     r3, r1, #3
	ldr     r1, [pc, #0x50] @ 0x223bfb4, (=0x3318)
	add     r2, r2, r3
	ldrb    r1, [r5, r1]
	lsl     r1, r1, #2
	ldr     r1, [r1, r2]
	bl      Function_223c654
	ldr     r1, [pc, #0x34] @ 0x223bfa8, (=0x30d4)
	str     r0, [r5, r1]
	sub     r1, #0x10
	ldr     r0, [r5, r1]
	cmp     r0, #0x0
	beq     branch_223bf88
	mov     r6, #0x1
	mov     r4, #0x2
	b       branch_223bf88
@ 0x223bf82

.thumb
branch_223bf82: @ 223bf82 :thumb
	mov     r0, #0x0
	sub     r1, #0x10
	str     r0, [r5, r1]
.thumb
branch_223bf88: @ 223bf88 :thumb
	cmp     r6, #0x0
	bne     branch_223bfa2
	ldr     r0, [pc, #0x28] @ 0x223bfb8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223bf9a
	mov     r4, #0x3
	b       branch_223bfa2
@ 0x223bf9a

.thumb
branch_223bf9a: @ 223bf9a :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223bfa2
	mov     r4, #0x4
.thumb
branch_223bfa2: @ 223bfa2 :thumb
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223bfa6


.align 2


.word 0x30d4 @ 0x223bfa8
.word 0x21bf6bc @ 0x223bfac
.word 0x223d4d0 @ 0x223bfb0
.word 0x3318 @ 0x223bfb4
.word 0x21bf67c @ 0x223bfb8
.thumb
Function_223bfbc: @ 223bfbc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xf8] @ 0x223c0bc, (=0x21bf6bc)
	ldr     r6, [pc, #0xfc] @ 0x223c0c0, (=0xffff)
	ldrh    r3, [r0, #0x1c]
	mov     r4, #0x0
	cmp     r3, r6
	beq     branch_223c0ac
	ldrh    r0, [r0, #0x1e]
	cmp     r0, r6
	beq     branch_223c0ac
	ldr     r1, [pc, #0xf0] @ 0x223c0c4, (=0x30dc)
	ldr     r2, [r5, r1]
	cmp     r2, r6
	beq     branch_223c0ac
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, r6
	beq     branch_223c0ac
	sub     r1, #0x8
	ldr     r1, [r5, r1]
	.hword  0x1e60 @ sub r0, r4, #0x1
	cmp     r1, r0
	beq     branch_223c0ac
	cmp     r1, #0x0
	beq     branch_223c0ac
	mov     r0, r5
	add     r0, #0xb4
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	ldr     r0, [r0, #0x48]
	lsl     r0, r0, #31
	asr     r0, r0, #31
	beq     branch_223c0ac
	cmp     r2, r3
	ble     branch_223c00e
	sub     r2, r2, r3
	.hword  0x1e61 @ sub r1, r4, #0x1
	b       branch_223c012
@ 0x223c00e

.thumb
branch_223c00e: @ 223c00e :thumb
	sub     r2, r3, r2
	mov     r1, #0x1
.thumb
branch_223c012: @ 223c012 :thumb
	ldr     r0, [pc, #0xb4] @ 0x223c0c8, (=0x3302)
	cmp     r2, #0x3
	strb    r1, [r5, r0]
	blt     branch_223c058
	cmp     r2, #0x28
	bgt     branch_223c058
	ldr     r0, [pc, #0x9c] @ 0x223c0bc, (=0x21bf6bc)
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [pc, #0xa8] @ 0x223c0cc, (=0x30e0)
	ldr     r0, [r5, r0]
	cmp     r0, r1
	ble     branch_223c032
	sub     r2, r0, r1
	mov     r1, #0x0
	mvn     r1, r1
	b       branch_223c036
@ 0x223c032

.thumb
branch_223c032: @ 223c032 :thumb
	sub     r2, r1, r0
	mov     r1, #0x1
.thumb
branch_223c036: @ 223c036 :thumb
	ldr     r0, [pc, #0x98] @ 0x223c0d0, (=0x3303)
	cmp     r2, #0x28
	strb    r1, [r5, r0]
	bgt     branch_223c04c
	mov     r0, #0x33
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r4, #0x1
	bl      Function_223c45c
	b       branch_223c098
@ 0x223c04c

.thumb
branch_223c04c: @ 223c04c :thumb
	mov     r0, #0x33
	lsl     r0, r0, #8
	add     r0, r5, r0
	bl      Function_223c444
	b       branch_223c098
@ 0x223c058

.thumb
branch_223c058: @ 223c058 :thumb
	cmp     r2, #0x28
	bgt     branch_223c098
	ldr     r0, [pc, #0x5c] @ 0x223c0bc, (=0x21bf6bc)
	ldrh    r1, [r0, #0x1e]
	ldr     r0, [pc, #0x68] @ 0x223c0cc, (=0x30e0)
	ldr     r0, [r5, r0]
	cmp     r0, r1
	ble     branch_223c070
	sub     r2, r0, r1
	mov     r1, #0x0
	mvn     r1, r1
	b       branch_223c074
@ 0x223c070

.thumb
branch_223c070: @ 223c070 :thumb
	sub     r2, r1, r0
	mov     r1, #0x1
.thumb
branch_223c074: @ 223c074 :thumb
	ldr     r0, [pc, #0x58] @ 0x223c0d0, (=0x3303)
	cmp     r2, #0x3
	strb    r1, [r5, r0]
	blt     branch_223c08e
	cmp     r2, #0x28
	bgt     branch_223c08e
	mov     r0, #0x33
	lsl     r0, r0, #8
	add     r0, r5, r0
	mov     r4, #0x1
	bl      Function_223c45c
	b       branch_223c098
@ 0x223c08e

.thumb
branch_223c08e: @ 223c08e :thumb
	mov     r0, #0x33
	lsl     r0, r0, #8
	add     r0, r5, r0
	bl      Function_223c444
.thumb
branch_223c098: @ 223c098 :thumb
	cmp     r4, #0x0
	beq     branch_223c0ac
	ldr     r1, [pc, #0x34] @ 0x223c0d4, (=0x30d4)
	mov     r0, r5
	ldr     r1, [r5, r1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      Function_223c1ac
.thumb
branch_223c0ac: @ 223c0ac :thumb
	ldr     r1, [pc, #0xc] @ 0x223c0bc, (=0x21bf6bc)
	ldr     r0, [pc, #0x14] @ 0x223c0c4, (=0x30dc)
	ldrh    r2, [r1, #0x1c]
	str     r2, [r5, r0]
	ldrh    r1, [r1, #0x1e]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	pop     {r4-r6,pc}
@ 0x223c0bc

.word 0x21bf6bc @ 0x223c0bc
.word 0xffff @ 0x223c0c0
.word 0x30dc @ 0x223c0c4
.word 0x3302 @ 0x223c0c8
.word 0x30e0 @ 0x223c0cc
.word 0x3303 @ 0x223c0d0
.word 0x30d4 @ 0x223c0d4
.thumb
Function_223c0d8: @ 223c0d8 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      0x2019fe4
	mov     r7, r0
	lsl     r0, r4, #2
	add     r0, #0x80
	lsl     r0, r0, #16
	mov     r2, #0x0
	lsr     r3, r0, #16
.thumb
branch_223c0f2: @ 223c0f2 :thumb
	lsl     r0, r2, #5
	add     r4, r3, r0
	mov     r0, r2
	add     r0, #0x13
	lsl     r0, r0, #6
	mov     r1, #0x0
	add     r5, r7, r0
.thumb
branch_223c100: @ 223c100 :thumb
	lsl     r6, r1, #1
	add     r0, r1, r4
	add     r6, r5, r6
	strh    r0, [r6, #0x1c]
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	cmp     r1, #0x4
	bcc     branch_223c100
	add     r0, r2, #0x1
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r2, #0x4
	bcc     branch_223c0f2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x0]
	bl      0x2019448
	pop     {r3-r7,pc}
@ 0x223c128

.thumb
Function_223c128: @ 223c128 :thumb
	push    {r3-r7,lr}
	lsr     r5, r1, #31
	lsl     r4, r1, #30
	sub     r4, r4, r5
	mov     r2, #0x1e
	ror     r4, r2
	add     r2, r5, r4
	lsl     r2, r2, #24
	lsr     r4, r2, #24
	lsl     r1, r1, #22
	mov     r2, #0x7
	mov     r5, r4
	lsr     r1, r1, #24
	mul     r5, r2
	mov     r6, #0x3
	add     r4, r6, r5
	lsl     r4, r4, #24
	mov     r3, #0x4
	mul     r2, r1
	add     r1, r3, r2
	lsl     r1, r1, #24
	lsr     r5, r1, #24
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	lsr     r4, r4, #24
	bl      0x2019fe4
	mov     r2, #0x0
	add     r3, r0, r4
	mov     r0, r2
.thumb
branch_223c164: @ 223c164 :thumb
	add     r6, r2, r5
	lsl     r4, r2, #4
	lsl     r6, r6, #5
	mov     r1, r0
	add     r4, #0xba
	add     r6, r3, r6
.thumb
branch_223c170: @ 223c170 :thumb
	add     r7, r1, r4
	strb    r7, [r6, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, #0x5
	bcc     branch_223c170
	add     r1, r2, #0x1
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	cmp     r2, #0x5
	bcc     branch_223c164
	pop     {r3-r7,pc}
@ 0x223c18a


.align 2, 0


.thumb
Function_223c18c: @ 223c18c :thumb
	push    {r3,lr}
	bl      0x201dcac
	bl      0x200a858
	ldr     r3, [pc, #0xc] @ 0x223c1a4, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x223c1a8, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x223c1a4

.word 0x27e0000 @ 0x223c1a4
.word 0x3ff8 @ 0x223c1a8
.thumb
Function_223c1ac: @ 223c1ac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0xb4
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	lsl     r6, r4, #2
	add     r0, r0, r6
	ldr     r0, [r0, #0x48]
	asr     r0, r0, #1
	add     r1, r0, #0x1
	str     r1, [sp, #0x0]
	cmp     r1, #0xc8
	bge     branch_223c278
	bl      Function_223c40c
	mov     r7, r0
	ldr     r0, [pc, #0xac] @ 0x223c27c, (=0x3310)
	ldr     r2, [pc, #0xb0] @ 0x223c280, (=0x223d4b0)
	add     r1, r5, r0
	ldrb    r0, [r1, r4]
	ldrb    r2, [r2, r7]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r4]
	ldrb    r0, [r1, r4]
	cmp     r0, r2
	bcc     branch_223c278
	mov     r0, #0x0
	strb    r0, [r1, r4]
	mov     r0, r5
	add     r0, #0xb4
	ldr     r2, [r0, #0x0]
	mov     r1, #0x1
	add     r2, #0x48
	ldr     r0, [r2, r6]
	and     r1, r0
	asr     r0, r0, #1
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #1
	orr     r0, r1
	str     r0, [r2, r6]
	ldr     r0, [sp, #0x0]
	bl      Function_223c40c
	mov     r6, r0
	cmp     r7, r6
	bls     branch_223c20c
	bl      ErrorHandling
.thumb
branch_223c20c: @ 223c20c :thumb
	cmp     r7, r6
	bcs     branch_223c278
	cmp     r6, #0x4
	bhi     branch_223c236
	cmp     r6, #0x4
	ldr     r0, [pc, #0x6c] @ 0x223c284, (=0x30e4)
	bne     branch_223c226
	add     r0, r5, r0
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223d298
	b       branch_223c236
@ 0x223c226

.thumb
branch_223c226: @ 223c226 :thumb
	mov     r2, #0x3
	sub     r2, r2, r6
	lsl     r2, r2, #24
	add     r0, r5, r0
	mov     r1, r4
	lsr     r2, r2, #24
	bl      Function_223d298
.thumb
branch_223c236: @ 223c236 :thumb
	cmp     r6, #0x3
	bne     branch_223c24e
	add     r4, #0x8
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xc9
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
	pop     {r3-r7,pc}
@ 0x223c24e

.thumb
branch_223c24e: @ 223c24e :thumb
	cmp     r6, #0x4
	bne     branch_223c278
	mov     r0, r4
	add     r0, #0x8
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r0, #0xc9
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	add     r4, #0x10
	lsl     r0, r4, #2
	add     r1, r5, r0
	mov     r0, #0xc9
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_223c278: @ 223c278 :thumb
	pop     {r3-r7,pc}
@ 0x223c27a


.align 2


.word 0x3310 @ 0x223c27c
.word 0x223d4b0 @ 0x223c280
.word 0x30e4 @ 0x223c284
.thumb
Function_223c288: @ 223c288 :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r0, #0x1
	lsl     r0, r0, #12
	blx     0x20bcfe0
	mov     r4, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	blx     0x20bcfe0
	mov     r1, #0x0
	str     r4, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r0, [sp, #0x14]
	blx     0x20c3e14
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x223c2e8, (=0x4001020)
	add     r1, sp, #0x8
	mov     r2, #0x80
	mov     r3, #0x60
	blx     0x20bf4ac
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x223c2ec, (=0x4001030)
	add     r1, sp, #0x8
	mov     r2, #0x80
	mov     r3, #0x60
	blx     0x20bf4ac
	blx     0x20c3e14
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223c2f0, (=0x4000030)
	add     r1, sp, #0x8
	mov     r2, #0x80
	str     r3, [sp, #0x4]
	blx     0x20bf4ac
	add     sp, #0x18
	pop     {r4,pc}
@ 0x223c2e8

.word 0x4001020 @ 0x223c2e8
.word 0x4001030 @ 0x223c2ec
.word 0x4000030 @ 0x223c2f0
.thumb
Function_223c2f4: @ 223c2f4 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x223c32c, (=0x331d)
	mov     r4, r0
	ldrb    r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_223c314
	ldr     r1, [pc, #0x2c] @ 0x223c330, (=0x223d4b8)
	ldr     r1, [r1, #0x10]
	bl      Function_223c334
	cmp     r0, #0x0
	beq     branch_223c32a
	ldr     r0, [pc, #0x1c] @ 0x223c32c, (=0x331d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c314

.thumb
branch_223c314: @ 223c314 :thumb
	cmp     r1, #0x2
	bne     branch_223c32a
	ldr     r1, [pc, #0x14] @ 0x223c330, (=0x223d4b8)
	ldr     r1, [r1, #0x14]
	bl      Function_223c334
	cmp     r0, #0x0
	beq     branch_223c32a
	ldr     r0, [pc, #0x4] @ 0x223c32c, (=0x331d)
	mov     r1, #0x0
	strb    r1, [r4, r0]
.thumb
branch_223c32a: @ 223c32a :thumb
	pop     {r4,pc}
@ 0x223c32c

.word 0x331d @ 0x223c32c
.word 0x223d4b8 @ 0x223c330
.thumb
Function_223c334: @ 223c334 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x50] @ 0x223c388, (=0x331c)
	mov     r4, r0
	ldrb    r0, [r4, r2]
	lsl     r0, r0, #1
	ldrb    r3, [r1, r0]
	cmp     r3, #0x0
	bne     branch_223c350
	mov     r1, #0x0
	.hword  0x1e50 @ sub r0, r2, #0x1
	strb    r1, [r4, r0]
	strb    r1, [r4, r2]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c350

.thumb
branch_223c350: @ 223c350 :thumb
	.hword  0x1e50 @ sub r0, r2, #0x1
	ldrb    r0, [r4, r0]
	cmp     r0, r3
	bcc     branch_223c364
	mov     r3, #0x0
	.hword  0x1e50 @ sub r0, r2, #0x1
	strb    r3, [r4, r0]
	ldrb    r0, [r4, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, r2]
.thumb
branch_223c364: @ 223c364 :thumb
	ldr     r0, [pc, #0x20] @ 0x223c388, (=0x331c)
	ldrb    r2, [r4, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	ldrb    r0, [r4, r0]
	lsl     r2, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	ldrb    r1, [r1, r2]
	cmp     r0, #0x0
	bne     branch_223c37c
	mov     r0, r4
	bl      Function_223c0d8
.thumb
branch_223c37c: @ 223c37c :thumb
	ldr     r0, [pc, #0xc] @ 0x223c38c, (=0x331b)
	ldrb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223c388

.word 0x331c @ 0x223c388
.word 0x331b @ 0x223c38c
.thumb
Function_223c390: @ 223c390 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x48] @ 0x223c3e0, (=0x32fc)
	mov     r1, #0x7
	ldr     r0, [r5, r0]
	ldr     r4, [r0, #0x8]
	ldr     r0, [pc, #0x44] @ 0x223c3e4, (=0x30bc)
	ldr     r3, [r5, r0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0x0]
	ldr     r3, [r3, #0x10]
	bl      0x201958c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	bl      0x2019fe4
	cmp     r0, #0x0
	beq     branch_223c3ca
	ldr     r2, [pc, #0x24] @ 0x223c3e0, (=0x32fc)
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, r2]
	mov     r1, #0x7
	add     r2, #0xc
	mov     r3, r4
	bl      0x2019574
.thumb
branch_223c3ca: @ 223c3ca :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [pc, #0x10] @ 0x223c3e0, (=0x32fc)
	ldr     r0, [r5, #0x0]
	ldr     r2, [r5, r2]
	mov     r1, #0x7
	add     r2, #0xc
	mov     r3, r4
	bl      0x2019460
	pop     {r3-r5,pc}
@ 0x223c3e0

.word 0x32fc @ 0x223c3e0
.word 0x30bc @ 0x223c3e4
.thumb
Function_223c3e8: @ 223c3e8 :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x9
	str     r1, [sp, #0x8]
	mov     r1, #0x10
	str     r1, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, #0x14
	bl      0x2019cb8
	add     sp, #0x10
	pop     {r3,pc}
@ 0x223c40a


.align 2, 0


.thumb
Function_223c40c: @ 223c40c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	blt     branch_223c41a
	cmp     r0, #0x64
	bge     branch_223c41a
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223c41a

.thumb
branch_223c41a: @ 223c41a :thumb
	cmp     r0, #0x8c
	bge     branch_223c422
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223c422

.thumb
branch_223c422: @ 223c422 :thumb
	cmp     r0, #0xaa
	bge     branch_223c42a
	mov     r0, #0x2
	pop     {r3,pc}
@ 0x223c42a

.thumb
branch_223c42a: @ 223c42a :thumb
	cmp     r0, #0xbe
	bge     branch_223c432
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223c432

.thumb
branch_223c432: @ 223c432 :thumb
	cmp     r0, #0xc8
	bge     branch_223c43a
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x223c43a

.thumb
branch_223c43a: @ 223c43a :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223c442


.align 2, 0


.thumb
Function_223c444: @ 223c444 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x223c44c

.thumb
Function_223c44c: @ 223c44c :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	strb    r1, [r0, #0x3]
	strb    r1, [r0, #0x4]
	bx      lr
@ 0x223c45a


.align 2, 0


.thumb
Function_223c45c: @ 223c45c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [pc, #0x70] @ 0x223c4d4, (=0x223d4b8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223c482
	mov     r0, #0x1
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223c482
	ldr     r0, [pc, #0x58] @ 0x223c4d8, (=0x692)
	bl      0x2005748
.thumb
branch_223c482: @ 223c482 :thumb
	mov     r0, #0x0
	ldsb    r1, [r4, r0]
	mov     r0, #0x2
	ldsb    r0, [r4, r0]
	mul     r0, r1
	bmi     branch_223c49a
	mov     r0, #0x1
	ldsb    r1, [r4, r0]
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	mul     r0, r1
	bpl     branch_223c4bc
.thumb
branch_223c49a: @ 223c49a :thumb
	ldrb    r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r2, r0, #31
	lsl     r1, r0, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	strb    r0, [r4, #0x4]
	ldrb    r0, [r4, #0x4]
	lsl     r1, r0, #2
	add     r0, sp, #0x0
	ldr     r0, [r0, r1]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x2005748
.thumb
branch_223c4bc: @ 223c4bc :thumb
	mov     r0, #0x2
	ldsb    r0, [r4, r0]
	strb    r0, [r4, #0x0]
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	strb    r0, [r4, #0x1]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223c4d2


.align 2


.word 0x223d4b8 @ 0x223c4d4
.word 0x692 @ 0x223c4d8
.thumb
Function_223c4dc: @ 223c4dc :thumb
	push    {r4-r7}
	mov     r2, #0x3
	mov     r4, #0x0
	lsl     r2, r2, #12
.thumb
branch_223c4e4: @ 223c4e4 :thumb
	asr     r3, r4, #2
	lsr     r3, r3, #29
	add     r3, r4, r3
	asr     r3, r3, #3
	lsr     r6, r3, #31
	lsl     r5, r3, #29
	sub     r5, r5, r6
	mov     r3, #0x1d
	ror     r5, r3
	add     r3, r6, r5
	asr     r5, r4, #5
	lsr     r5, r5, #26
	lsl     r3, r3, #24
	add     r5, r4, r5
	lsr     r3, r3, #24
	asr     r5, r5, #6
	lsl     r5, r5, #3
	add     r3, r0, r3
	ldrb    r3, [r5, r3]
	lsr     r7, r4, #31
	lsl     r6, r4, #29
	sub     r6, r6, r7
	mov     r5, #0x1d
	ror     r6, r5
	add     r5, r7, r6
	lsl     r5, r5, #24
	mov     r6, r3
	lsr     r5, r5, #24
	asr     r6, r5
	mov     r3, #0x1
	and     r3, r6
	strb    r3, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r2
	blt     branch_223c4e4
	pop     {r4-r7}
	bx      lr
@ 0x223c52e


.align 2, 0


.thumb
Function_223c530: @ 223c530 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	lsl     r1, r7, #24
	mov     r3, #0x3
	str     r0, [sp, #0x4]
	lsr     r1, r1, #24
	lsl     r3, r3, #12
	bl      0x201958c
	lsl     r1, r7, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      0x2019fe4
	mov     r4, #0x0
	mov     r1, r0
	mov     r3, r4
	mov     r0, r4
.thumb
branch_223c55a: @ 223c55a :thumb
	mov     r5, r3
	add     r5, #0xe
	lsl     r5, r5, #6
	mov     r2, r0
	add     r5, r1, r5
.thumb
branch_223c564: @ 223c564 :thumb
	lsl     r6, r2, #1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r4, r4, #16
	lsl     r2, r2, #24
	lsr     r4, r4, #16
	add     r6, r5, r6
	lsr     r2, r2, #24
	strh    r4, [r6, #0x8]
	cmp     r2, #0x18
	bcc     branch_223c564
	add     r2, r3, #0x1
	lsl     r2, r2, #24
	lsr     r3, r2, #24
	cmp     r3, #0x8
	bcc     branch_223c55a
	lsl     r1, r7, #24
	ldr     r0, [sp, #0x4]
	lsr     r1, r1, #24
	bl      0x2019448
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223c592


.align 2, 0


.thumb
Function_223c594: @ 223c594 :thumb
	ldr     r3, [pc, #0x4] @ 0x223c59c, (=0x2005749)
	ldr     r0, [pc, #0x8] @ 0x223c5a0, (=0x699)
	bx      r3
@ 0x223c59a


.align 2


.word 0x2005749 @ 0x223c59c
.word 0x699 @ 0x223c5a0
.thumb
Function_223c5a4: @ 223c5a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_223c600
	mov     r0, #0xc3
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223c5f0
	ldr     r2, [pc, #0x4c] @ 0x223c604, (=0x331e)
	ldrb    r0, [r4, r2]
	cmp     r0, #0xf
	bne     branch_223c5de
	mov     r1, r4
	add     r1, #0xb4
	sub     r2, #0x16
	ldr     r1, [r1, #0x0]
	ldr     r2, [r4, r2]
	add     r0, r4, #0x4
	bl      Function_223cde8
	ldr     r2, [pc, #0x38] @ 0x223c608, (=0x330c)
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x54
	mov     r1, #0x1
	bl      Function_223cecc
	b       branch_223c5f0
@ 0x223c5de

.thumb
branch_223c5de: @ 223c5de :thumb
	cmp     r0, #0x0
	bne     branch_223c5f0
	sub     r2, #0x12
	mov     r0, r4
	ldr     r2, [r4, r2]
	add     r0, #0x54
	mov     r1, #0x0
	bl      Function_223cecc
.thumb
branch_223c5f0: @ 223c5f0 :thumb
	ldr     r0, [pc, #0x10] @ 0x223c604, (=0x331e)
	mov     r1, #0x1e
	ldrb    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     _s32_div_f
	ldr     r0, [pc, #0x4] @ 0x223c604, (=0x331e)
	strb    r1, [r4, r0]
.thumb
branch_223c600: @ 223c600 :thumb
	pop     {r4,pc}
@ 0x223c602


.align 2


.word 0x331e @ 0x223c604
.word 0x330c @ 0x223c608
.thumb
Function_223c60c: @ 223c60c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, r1
	bl      0x2022664
	mov     r1, #0x0
	mov     r4, r0
	mvn     r1, r1
	cmp     r4, r1
	beq     branch_223c64a
	cmp     r4, #0x0
	beq     branch_223c64c
	mov     r1, #0x40
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x1c] @ 0x223c650, (=0x21bf6bc)
	mov     r0, r5
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x2
	bl      0x201c784
	cmp     r0, #0x0
	bne     branch_223c64a
	mov     r0, #0x0
	add     sp, #0x8
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x223c64a

.thumb
branch_223c64a: @ 223c64a :thumb
	mov     r0, r4
.thumb
branch_223c64c: @ 223c64c :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223c650

.word 0x21bf6bc @ 0x223c650
.thumb
Function_223c654: @ 223c654 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, r1
	bl      0x2022644
	mov     r1, #0x0
	mov     r4, r0
	mvn     r1, r1
	cmp     r4, r1
	beq     branch_223c692
	cmp     r4, #0x0
	beq     branch_223c694
	mov     r1, #0x40
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x1c] @ 0x223c698, (=0x21bf6bc)
	mov     r0, r5
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x2
	bl      0x201c784
	cmp     r0, #0x0
	bne     branch_223c692
	mov     r0, #0x0
	add     sp, #0x8
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x223c692

.thumb
branch_223c692: @ 223c692 :thumb
	mov     r0, r4
.thumb
branch_223c694: @ 223c694 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223c698

.word 0x21bf6bc @ 0x223c698
.thumb
Function_223c69c: @ 223c69c :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x30] @ 0x223c6d0, (=0x223d670)
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
.thumb
branch_223c6a6: @ 223c6a6 :thumb
	lsl     r1, r4, #4
	lsl     r2, r4, #3
	mov     r0, r5
	add     r1, r6, r1
	add     r2, r7, r2
	bl      0x201a8d4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xb
	bcc     branch_223c6a6
	mov     r2, #0x0
	mov     r0, r5
	mov     r1, #0x7
	mov     r3, #0x1
	str     r2, [sp, #0x0]
	bl      0x20196c0
	pop     {r3-r7,pc}
@ 0x223c6ce


.align 2


.word 0x223d670 @ 0x223c6d0
.thumb
Function_223c6d4: @ 223c6d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223c6da: @ 223c6da :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      0x201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0xb
	bcc     branch_223c6da
	pop     {r3-r5,pc}
@ 0x223c6ee


.align 2, 0


.thumb
Function_223c6f0: @ 223c6f0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	mov     r1, #0x88
	str     r1, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, r1
	mov     r7, r0
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x10
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x20
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x30
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0x88
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x40
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x50
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	add     r0, #0x60
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r2, #0x9a
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x19
	bl      0x200b144
	str     r0, [sp, #0x14]
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223c7aa: @ 223c7aa :thumb
	cmp     r4, #0x3
	bne     branch_223c7b8
	bne     branch_223c7e2
	ldrb    r0, [r6, #0x4]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_223c7e2
.thumb
branch_223c7b8: @ 223c7b8 :thumb
	ldr     r1, [pc, #0x264] @ 0x223ca20, (=0x223d644)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	ldr     r0, [sp, #0x14]
	mov     r2, r5
	bl      0x200b1b8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x254] @ 0x223ca24, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #4
	add     r0, r7, r0
	mov     r2, r5
	mov     r3, r1
	bl      0x201d78c
.thumb
branch_223c7e2: @ 223c7e2 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x7
	bcc     branch_223c7aa
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	str     r0, [sp, #0x10]
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x19
	bl      0x200b368
	mov     r2, #0x0
	str     r5, [sp, #0x0]
	mov     r4, r0
	ldrh    r0, [r6, #0x28]
	mov     r1, #0x88
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, r7
	bl      Function_223cd64
	mov     r1, r6
	mov     r0, r5
	add     r1, #0x8
	bl      0x2023d28
	mov     r0, r7
	mov     r2, #0x0
	add     r0, #0x10
	mov     r1, #0x88
	mov     r3, r2
	str     r5, [sp, #0x0]
	bl      Function_223cdb0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [r6, #0x1c]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x6
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r1, #0xe
	bl      0x200b1b8
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x88
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x1b0] @ 0x223ca24, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r7
	str     r1, [sp, #0xc]
	add     r0, #0x20
	mov     r2, r5
	bl      0x201d78c
	ldrb    r0, [r6, #0x4]
	lsl     r0, r0, #28
	lsr     r0, r0, #31
	beq     branch_223c8d6
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [r6, #0x20]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x3
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x15
	bl      0x200b1b8
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x88
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x15c] @ 0x223ca24, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r7
	add     r0, #0x30
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
.thumb
branch_223c8d6: @ 223c8d6 :thumb
	str     r5, [sp, #0x0]
	ldr     r0, [r6, #0x24]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, r7
	add     r0, #0x40
	mov     r1, #0x88
	mov     r3, r2
	bl      Function_223cd64
	ldrb    r0, [r6, #0x4]
	lsl     r0, r0, #30
	lsr     r0, r0, #31
	beq     branch_223c934
	ldr     r0, [r6, #0x18]
	bl      0x202cc58
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	ldr     r0, [r6, #0x18]
	bl      0x202cc5c
	mov     r3, #0x2
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [sp, #0x4]
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x10
	bl      0x200b1b8
	b       branch_223c964
@ 0x223c934

.thumb
branch_223c934: @ 223c934 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrh    r2, [r6, #0x2a]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r3, #0x2
	mov     r2, r6
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	add     r2, #0x2e
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r1, #0xf
	bl      0x200b1b8
.thumb
branch_223c964: @ 223c964 :thumb
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x223ca24, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r7
	add     r0, #0x50
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r1, #0x2
	mov     r2, r6
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r2, #0x2f
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      0x200b60c
	mov     r2, r6
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	bl      0x200c2e0
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r6, #0x31
	ldrb    r2, [r6, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	bl      0x200b60c
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x10]
	mov     r1, #0x11
	bl      0x200b1b8
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223ca24, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r7, #0x60
	mov     r0, r7
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	bl      0x20237bc
	mov     r0, r4
	bl      0x200b3f0
	mov     r0, r5
	bl      0x20237bc
	ldr     r0, [sp, #0x14]
	bl      0x200b190
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223ca1e


.align 2


.word 0x223d644 @ 0x223ca20
.word 0x10200 @ 0x223ca24
.thumb
Function_223ca28: @ 223ca28 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r1, [sp, #0x10]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0x70
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0x80
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0x90
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x0
	mov     r0, #0xe0
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r0, #0xa0
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r2, #0x9a
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x19
	bl      0x200b144
	mov     r7, r0
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	mov     r5, r0
	mov     r4, #0x7
.thumb
branch_223caa4: @ 223caa4 :thumb
	ldr     r1, [pc, #0x294] @ 0x223cd3c, (=0x223d644)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r0, r7
	mov     r2, r5
	bl      0x200b1b8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x284] @ 0x223cd40, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #4
	add     r0, r6, r0
	mov     r2, r5
	mov     r3, r1
	bl      0x201d78c
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0xb
	bcc     branch_223caa4
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	str     r0, [sp, #0x14]
	mov     r0, #0x6
	mov     r1, #0x20
	mov     r2, #0x19
	bl      0x200b368
	ldr     r1, [sp, #0x10]
	mov     r4, r0
	add     r1, #0x33
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_223cb6e
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r3, r1
	add     r2, #0x32
	ldrb    r2, [r2, #0x0]
	bl      0x200b60c
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	add     r2, #0x33
	ldrb    r2, [r2, #0x0]
	mov     r1, #0x3
	bl      0x200c2e0
	mov     r3, #0x2
	ldr     r2, [sp, #0x10]
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	add     r2, #0x34
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	bl      0x200b60c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	ldrh    r2, [r2, #0x2c]
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r3, #0x2
	ldr     r2, [sp, #0x10]
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	add     r2, #0x35
	ldrb    r2, [r2, #0x0]
	mov     r0, r4
	bl      0x200b60c
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x11
	bl      0x200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	b       branch_223cba6
@ 0x223cb6e

.thumb
branch_223cb6e: @ 223cb6e :thumb
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0xc
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r3, r1
	bl      0x200b48c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, #0x1
	bl      0x200b48c
	mov     r0, r7
	mov     r1, #0x14
	mov     r2, r5
	bl      0x200b1b8
.thumb
branch_223cba6: @ 223cba6 :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x184] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x70
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0xf
	bl      0x200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x14c] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x70
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	ldr     r2, [r2, #0x38]
	mov     r1, #0x5
	mov     r3, #0x6
	bl      0x200b60c
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x16
	bl      0x200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0xfc] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x80
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r7
	mov     r1, #0x12
	mov     r2, r5
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0xdc] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x90
	mov     r2, r5
	mov     r3, #0x70
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r2, #0x0
	ldr     r0, [sp, #0x10]
	str     r5, [sp, #0x0]
	ldr     r0, [r0, #0x40]
	mov     r1, #0xe0
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, r6
	add     r0, #0x90
	mov     r3, r2
	bl      Function_223cd64
	mov     r0, r7
	mov     r1, #0x13
	mov     r2, r5
	bl      0x200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x9c] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x90
	mov     r2, r5
	mov     r3, #0xb0
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	str     r5, [sp, #0x0]
	ldr     r0, [r0, #0x3c]
	mov     r1, #0xe0
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, r6
	add     r0, #0x90
	mov     r2, #0x40
	mov     r3, #0x0
	bl      Function_223cd64
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r0, r4
	ldr     r2, [r2, #0x44]
	mov     r1, #0x5
	mov     r3, #0x6
	bl      0x200b60c
	ldr     r2, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x16
	bl      0x200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	mov     r1, r5
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223cd40, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r6, #0xa0
	mov     r0, r6
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	mov     r0, r4
	bl      0x200b3f0
	mov     r0, r5
	bl      0x20237bc
	mov     r0, r7
	bl      0x200b190
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223cd3c

.word 0x223d644 @ 0x223cd3c
.word 0x10200 @ 0x223cd40
.thumb
Function_223cd44: @ 223cd44 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	cmp     r4, r6
	bhi     branch_223cd62
.thumb
branch_223cd50: @ 223cd50 :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      0x201acf4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, r6
	bls     branch_223cd50
.thumb
branch_223cd62: @ 223cd62 :thumb
	pop     {r4-r6,pc}
@ 0x223cd64

.thumb
Function_223cd64: @ 223cd64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r0, #0x1
	mov     r4, r2
	str     r0, [sp, #0x0]
	add     r2, sp, #0x18
	mov     r5, r1
	mov     r6, r3
	ldrb    r2, [r2, #0x18]
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x2c]
	ldr     r3, [sp, #0x34]
	bl      0x20238a0
	mov     r0, #0x0
	ldr     r1, [sp, #0x28]
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	add     r3, r3, r4
	str     r6, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x14] @ 0x223cdac, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	mov     r0, r7
	sub     r3, r5, r3
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223cdaa


.align 2


.word 0x10200 @ 0x223cdac
.thumb
Function_223cdb0: @ 223cdb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x0
	mov     r4, r2
	ldr     r1, [sp, #0x28]
	mov     r6, r3
	mov     r2, r0
	bl      0x2002d7c
	mov     r3, r0
	add     r3, r3, r4
	str     r6, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x14] @ 0x223cde4, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r2, [sp, #0x28]
	mov     r0, r7
	sub     r3, r5, r3
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223cde4

.word 0x10200 @ 0x223cde4
.thumb
Function_223cde8: @ 223cde8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r7, r0
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x0
	bne     branch_223cdfa
	bl      ErrorHandling
.thumb
branch_223cdfa: @ 223cdfa :thumb
	ldr     r0, [r5, #0x18]
	bl      0x202cc58
	mov     r0, #0x28
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, #0x0
	add     r0, #0x50
	mov     r2, #0xb8
	mov     r3, r1
	bl      0x201ae78
	mov     r2, #0x9a
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x19
	bl      0x200b144
	str     r0, [sp, #0x10]
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0x20
	mov     r1, #0x19
	bl      0x2023790
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x19
	bl      0x200b368
	mov     r6, r0
	ldr     r0, [r5, #0x18]
	bl      0x202cc58
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	ldr     r0, [r5, #0x18]
	bl      0x202cc5c
	mov     r3, #0x2
	mov     r2, r0
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, r6
	str     r1, [sp, #0x4]
	bl      0x200b60c
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	mov     r1, #0x10
	bl      0x200b1b8
	ldr     r2, [sp, #0x14]
	mov     r0, r6
	mov     r1, r4
	bl      0x200c388
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xe0
	sub     r3, r1, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223cec8, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r7, #0x50
	mov     r0, r7
	mov     r2, r4
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	bl      0x200b190
	mov     r0, r4
	bl      0x20237bc
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	mov     r0, r6
	bl      0x200b3f0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223cec8

.word 0x10200 @ 0x223cec8
.thumb
Function_223cecc: @ 223cecc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_223ceec
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x223cf08, (=0x10200)
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r3, #0xcd
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223ceec

.thumb
branch_223ceec: @ 223ceec :thumb
	mov     r1, #0x5
	str     r1, [sp, #0x0]
	mov     r1, #0x10
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xcd
	mov     r3, r1
	bl      0x201ae78
	mov     r0, r4
	bl      0x201a954
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223cf08

.word 0x10200 @ 0x223cf08
.thumb
Function_223cf0c: @ 223cf0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r7, r0
	str     r1, [sp, #0x14]
	bl      Function_223d2f4
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x19
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r0, #0x19
	add     r1, r7, #0x4
	mov     r2, r0
	bl      0x20095c4
	ldr     r4, [pc, #0x128] @ 0x223d068, (=0x223d6c8)
	str     r0, [r7, #0x0]
	mov     r6, #0x0
	mov     r5, r7
.thumb
branch_223cf46: @ 223cf46 :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r6
	mov     r2, #0x19
	bl      0x2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_223cf46
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	str     r0, [sp, #0x8]
	mov     r0, r1
	ldr     r0, [r7, r0]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x21
	mov     r3, #0x0
	bl      0x2009a4c
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x8]
	mov     r0, #0x19
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r7, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0xe
	mov     r3, #0x0
	bl      0x2009b04
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r7, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r7, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x2c
	mov     r3, #0x0
	bl      0x2009bc4
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x19
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r7, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x2e
	mov     r3, #0x0
	bl      0x2009bc4
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r7, r1]
	sub     r1, #0xc
	ldr     r0, [r7, r1]
	bl      0x200a328
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r7, r0]
	bl      0x200a5c8
	ldr     r3, [pc, #0x78] @ 0x223d06c, (=0x223d6dc)
	add     r2, sp, #0x20
	str     r2, [sp, #0x18]
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, #0x1e
	lsl     r0, r0, #4
	add     r0, r7, r0
	mov     r4, #0x0
	str     r0, [sp, #0x1c]
.thumb
branch_223d012: @ 223d012 :thumb
	ldr     r1, [sp, #0x18]
	lsl     r6, r4, #2
	ldr     r0, [sp, #0x14]
	ldr     r1, [r1, r6]
	mov     r2, #0x19
	add     r5, r7, r6
	bl      0x2006cb8
	mov     r1, #0x7
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223d04c
	ldr     r1, [sp, #0x1c]
	add     r1, r1, r6
	blx     0x20a71b0
	cmp     r0, #0x0
	bne     branch_223d050
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      0x20181c4
	bl      ErrorHandling
	b       branch_223d050
@ 0x223d04c

.thumb
branch_223d04c: @ 223d04c :thumb
	bl      ErrorHandling
.thumb
branch_223d050: @ 223d050 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x8
	bcc     branch_223d012
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x223d066


.align 2


.word 0x223d6c8 @ 0x223d068
.word 0x223d6dc @ 0x223d06c
.thumb
Function_223d070: @ 223d070 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x88
	mov     r7, r1
	mov     r1, #0x1
	str     r0, [sp, #0x2c]
	str     r1, [sp, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r3, [sp, #0x2c]
	str     r1, [sp, #0x10]
	ldr     r3, [r3, r0]
	add     r4, r0, #0x4
	str     r3, [sp, #0x14]
	ldr     r3, [sp, #0x2c]
	ldr     r3, [r3, r4]
	mov     r4, r0
	str     r3, [sp, #0x18]
	ldr     r3, [sp, #0x2c]
	add     r4, #0x8
	ldr     r3, [r3, r4]
	add     r0, #0xc
	str     r3, [sp, #0x1c]
	ldr     r3, [sp, #0x2c]
	ldr     r0, [r3, r0]
	mov     r3, r1
	str     r0, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	add     r0, sp, #0x64
	mov     r2, r1
	bl      0x20093b4
	ldr     r0, [sp, #0x2c]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	ldr     r6, [pc, #0x16c] @ 0x223d230, (=0x223d73c)
	str     r0, [sp, #0x34]
	add     r0, sp, #0x64
	str     r0, [sp, #0x38]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r4, [sp, #0x3c]
	str     r4, [sp, #0x40]
	str     r4, [sp, #0x44]
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	str     r0, [sp, #0x50]
	add     r0, sp, #0x34
	strh    r4, [r0, #0x20]
	mov     r0, #0x2
	str     r0, [sp, #0x58]
	mov     r0, #0x1
	str     r0, [sp, #0x5c]
	mov     r0, #0x19
	ldr     r5, [sp, #0x2c]
	str     r0, [sp, #0x60]
.thumb
branch_223d0ea: @ 223d0ea :thumb
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x3c]
	ldr     r0, [r6, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x40]
	add     r0, sp, #0x34
	bl      0x2021aa0
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021d6c
	ldrb    r0, [r7, r4]
	cmp     r0, #0x0
	bne     branch_223d12a
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_223d12a: @ 223d12a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_223d0ea
	mov     r0, #0x8
	ldr     r4, [pc, #0xfc] @ 0x223d234, (=0x223d6fc)
	ldr     r5, [sp, #0x2c]
	str     r0, [sp, #0x30]
	mov     r6, #0x0
	mov     r7, #0x1
.thumb
branch_223d140: @ 223d140 :thumb
	ldr     r0, [r4, #0x0]
	str     r7, [sp, #0x58]
	lsl     r0, r0, #12
	str     r0, [sp, #0x3c]
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x40]
	add     r0, sp, #0x34
	bl      0x2021aa0
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      0x2021d6c
	mov     r0, #0x5f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_223d140
	ldr     r0, [sp, #0x30]
	ldr     r4, [pc, #0xa8] @ 0x223d234, (=0x223d6fc)
	add     r0, #0x8
	str     r0, [sp, #0x30]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x30]
	mov     r6, #0x0
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x2c]
	mov     r7, #0x1
	add     r5, r0, r1
.thumb
branch_223d1a0: @ 223d1a0 :thumb
	ldr     r0, [r4, #0x0]
	str     r7, [sp, #0x58]
	lsl     r0, r0, #12
	str     r0, [sp, #0x3c]
	ldr     r0, [r4, #0x4]
	lsl     r0, r0, #12
	str     r0, [sp, #0x40]
	add     r0, sp, #0x34
	bl      0x2021aa0
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	bl      0x2021d6c
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_223d1a0
	mov     r1, #0x0
	add     r0, sp, #0x84
	strb    r1, [r0, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #16
	str     r0, [sp, #0x3c]
	mov     r0, #0x22
	lsl     r0, r0, #14
	str     r0, [sp, #0x40]
	str     r1, [sp, #0x58]
	mov     r1, #0x57
	ldr     r0, [sp, #0x2c]
	lsl     r1, r1, #2
	add     r4, r0, r1
	ldr     r0, [sp, #0x30]
	add     r0, #0x8
	str     r0, [sp, #0x30]
	lsl     r0, r0, #24
	lsr     r5, r0, #22
	add     r0, sp, #0x34
	bl      0x2021aa0
	str     r0, [r4, r5]
	ldr     r0, [r4, r5]
	mov     r1, #0x0
	bl      0x2021cc8
	ldr     r0, [r4, r5]
	mov     r1, #0xa
	bl      0x2021d6c
	ldr     r0, [r4, r5]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x88
	pop     {r3-r7,pc}
@ 0x223d230

.word 0x223d73c @ 0x223d230
.word 0x223d6fc @ 0x223d234
.thumb
Function_223d238: @ 223d238 :thumb
	push    {r4-r6,lr}
	mov     r6, #0x7
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #6
.thumb
branch_223d242: @ 223d242 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x20181c4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x8
	bcc     branch_223d242
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x200a4e4
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      0x200a6dc
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_223d270: @ 223d270 :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_223d270
	ldr     r0, [r5, #0x0]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	pop     {r4-r6,pc}
@ 0x223d298

.thumb
Function_223d298: @ 223d298 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x8
	bcc     branch_223d2aa
	bl      ErrorHandling
.thumb
branch_223d2aa: @ 223d2aa :thumb
	cmp     r6, #0x3
	bls     branch_223d2b2
	bl      ErrorHandling
.thumb
branch_223d2b2: @ 223d2b2 :thumb
	lsl     r7, r4, #2
	mov     r0, #0x57
	add     r1, r5, r7
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      0x2021f9c
	mov     r1, #0x1
	blx     0x20a81fc
	str     r0, [sp, #0x0]
	lsl     r0, r4, #5
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	add     r1, r5, r7
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	lsl     r5, r6, #5
	ldr     r4, [r0, #0xc]
	mov     r1, #0x20
	add     r0, r4, r5
	blx     0x20c2c54
	ldr     r2, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r0, r4, r5
	add     r1, r2, r1
	mov     r2, #0x20
	blx     0x20c0160
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d2f2


.align 2, 0


.thumb
Function_223d2f4: @ 223d2f4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x223d320, (=0x223d6cc)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x2
	mov     r1, #0x19
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d320

.word 0x223d6cc @ 0x223d320
.thumb
Function_223d324: @ 223d324 :thumb
	mov     r2, #0x0
	mov     r1, #0xff
.thumb
branch_223d328: @ 223d328 :thumb
	strb    r2, [r0, #0x0]
	strb    r1, [r0, #0x1]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r2, #0x4
	blt     branch_223d328
	bx      lr
@ 0x223d336


.align 2, 0


.thumb
Function_223d338: @ 223d338 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_223d370
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_223d3a0
	cmp     r0, #0x1
	beq     branch_223d36c
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_223d3d8
	cmp     r0, #0x1
	beq     branch_223d36c
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_223d410
	cmp     r0, #0x1
.thumb
branch_223d36c: @ 223d36c :thumb
	pop     {r4-r6,pc}
@ 0x223d36e


.align 2, 0


.thumb
Function_223d370: @ 223d370 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	mov     r5, r7
	mov     r6, #0xff
.thumb
branch_223d37a: @ 223d37a :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0xff
	beq     branch_223d38e
	ldrb    r0, [r5, #0x0]
	.hword  0x1cc0 @ add r0, r0, #0x3
	bl      0x2004b04
	cmp     r0, #0x0
	bne     branch_223d38e
	strb    r6, [r5, #0x1]
.thumb
branch_223d38e: @ 223d38e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, #0x4
	blt     branch_223d37a
	mov     r0, r7
	bl      Function_223d454
	pop     {r3-r7,pc}
@ 0x223d39e


.align 2, 0


.thumb
Function_223d3a0: @ 223d3a0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, #0x0
	mov     r1, r6
.thumb
branch_223d3aa: @ 223d3aa :thumb
	ldrb    r0, [r1, #0x1]
	cmp     r5, r0
	bne     branch_223d3ca
	lsl     r7, r4, #1
	ldrb    r0, [r6, r7]
	mov     r1, r5
	bl      Function_223d470
	ldrb    r2, [r6, r7]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r5
	bl      Function_223d42c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223d3ca

.thumb
branch_223d3ca: @ 223d3ca :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r4, #0x4
	blt     branch_223d3aa
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d3d6


.align 2, 0


.thumb
Function_223d3d8: @ 223d3d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r4, #0x0
	mov     r1, r5
.thumb
branch_223d3e2: @ 223d3e2 :thumb
	ldrb    r0, [r1, #0x1]
	cmp     r0, #0xff
	bne     branch_223d402
	lsl     r6, r4, #1
	ldrb    r0, [r5, r6]
	mov     r1, r7
	bl      Function_223d470
	ldrb    r2, [r5, r6]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r7
	bl      Function_223d42c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223d402

.thumb
branch_223d402: @ 223d402 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r4, #0x4
	blt     branch_223d3e2
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223d40e


.align 2, 0


.thumb
Function_223d410: @ 223d410 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x6]
	mov     r4, r1
	bl      Function_223d470
	ldrb    r2, [r5, #0x6]
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r4
	bl      Function_223d42c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223d42c

.thumb
Function_223d42c: @ 223d42c :thumb
	push    {r4,r5}
	cmp     r1, #0x0
	ble     branch_223d44a
	lsl     r4, r1, #1
	add     r4, r0, r4
.thumb
branch_223d436: @ 223d436 :thumb
	.hword  0x1ea5 @ sub r5, r4, #0x2
	ldrb    r5, [r5, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r5, [r4, #0x0]
	.hword  0x1e65 @ sub r5, r4, #0x1
	ldrb    r5, [r5, #0x0]
	strb    r5, [r4, #0x1]
	.hword  0x1ea4 @ sub r4, r4, #0x2
	cmp     r1, #0x0
	bgt     branch_223d436
.thumb
branch_223d44a: @ 223d44a :thumb
	strb    r2, [r0, #0x0]
	strb    r3, [r0, #0x1]
	pop     {r4,r5}
	bx      lr
@ 0x223d452


.align 2, 0


.thumb
Function_223d454: @ 223d454 :thumb
	mov     r3, #0x0
	mov     r1, #0xff
.thumb
branch_223d458: @ 223d458 :thumb
	ldrb    r2, [r0, #0x0]
	cmp     r2, #0xff
	bne     branch_223d464
	ldrb    r2, [r0, #0x2]
	strb    r2, [r0, #0x0]
	strb    r1, [r0, #0x2]
.thumb
branch_223d464: @ 223d464 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	cmp     r3, #0x4
	blt     branch_223d458
	bx      lr
@ 0x223d46e


.align 2, 0


.thumb
Function_223d470: @ 223d470 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r2
	add     r0, r5, #0x3
	mov     r4, r1
	ldr     r2, [pc, #0x20] @ 0x223d49c, (=0x694)
	mov     r1, r0
	bl      0x2004ae8
	ldr     r2, [pc, #0x1c] @ 0x223d4a0, (=0x223d77c)
	lsl     r3, r4, #1
	ldrh    r2, [r2, r3]
	mov     r3, #0x4
	sub     r4, r3, r6
	mov     r3, #0x98
	mul     r3, r4
	ldr     r1, [pc, #0x10] @ 0x223d4a4, (=0xffff)
	add     r0, r5, #0x3
	sub     r2, r2, r3
	bl      0x2004f68
	pop     {r4-r6,pc}
@ 0x223d49c

.word 0x694 @ 0x223d49c
.word 0x223d77c @ 0x223d4a0
.word 0xffff @ 0x223d4a4
@ 0x223d4a8


.incbin "./baserom/overlay/overlay_0071.bin", 0x2368, 0x223d7a0 - 0x223d4a8


@end 0x223d7a0




