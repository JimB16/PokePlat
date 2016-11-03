

.section .iwram29, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256325)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256325 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x17
	mov     r5, r0
	mov     r0, #0x8
	lsl     r1, r1, #8
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      0x2018144
	mov     r4, r0
	beq     branch_2256214
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620e
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562ad)
	mov     r1, r4
	mov     r2, #0x1
	bl      0x200d9e8
	cmp     r0, #0x0
	beq     branch_225620e
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225620e

.thumb
branch_225620e: @ 225620e :thumb
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_2256214: @ 2256214 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256218

.word 0x22562ad @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	mov     r5, r0
	mov     r4, r1
	ldr     r2, [pc, #0x4c] @ 0x2256274, (=0x16da)
	add     r0, #0x14
	mov     r1, #0x0
	mov     r6, r3
	blx 0x20d5124
	ldr     r0, [pc, #0x44] @ 0x2256278, (=0x16f0)
	mov     r1, #0x1
	str     r6, [r5, r0]
	str     r1, [r5, #0x8]
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, r5
	add     r0, r5, r0
	add     r1, #0x8
	mov     r2, r7
	bl      Function_22566c8
	cmp     r0, #0x0
	beq     branch_2256270
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	strb    r0, [r5, #0x3]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x225627c, (=Unknown_2256b3c)
	ldr     r2, [pc, #0x24] @ 0x2256280, (=0x22562f5)
	mov     r1, #0x2
	mov     r3, r5
	bl      0x2255acc
	ldr     r1, [pc, #0x1c] @ 0x2256284, (=0x16fc)
	str     r0, [r5, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r4, [r5, r0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256270

.thumb
branch_2256270: @ 2256270 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256274

.word 0x16da @ 0x2256274
.word 0x16f0 @ 0x2256278
.word Unknown_2256b3c @ 0x225627c
.word 0x22562f5 @ 0x2256280
.word 0x16fc @ 0x2256284



.thumb
Function_2256288: @ 2256288 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x22562a4, (=0x16fc)
	ldr     r0, [r4, r0]
	bl      0x2255b34
	ldr     r0, [pc, #0x10] @ 0x22562a8, (=0x16f4)
	ldr     r0, [r4, r0]
	bl      Function_2256770
	mov     r0, r4
	bl      0x20181c4
	pop     {r4,pc}
@ 0x22562a4

.word 0x16fc @ 0x22562a4
.word 0x16f4 @ 0x22562a8
.thumb
Function_22562ac: @ 22562ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562e8
	ldr     r1, [pc, #0x30] @ 0x22562ec, (=0x16f8)
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x24] @ 0x22562f0, (=0x2256b44)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562e8
	mov     r0, r4
	bl      Function_2256288
	mov     r0, r5
	bl      0x200da58
	ldr     r0, [pc, #0x8] @ 0x22562ec, (=0x16f8)
	ldr     r0, [r4, r0]
	bl      0x2254260
.thumb
branch_22562e8: @ 22562e8 :thumb
	pop     {r3-r5,pc}
@ 0x22562ea


.align 2


.word 0x16f8 @ 0x22562ec
.word 0x2256b44 @ 0x22562f0
.thumb
Function_22562f4: @ 22562f4 :thumb
	push    {r3,lr}
	cmp     r2, #0x1
	bne     branch_225631c
	ldr     r1, [r3, #0x8]
	cmp     r1, #0x1
	bne     branch_2256304
	cmp     r0, #0x0
	beq     branch_225630c
.thumb
branch_2256304: @ 2256304 :thumb
	cmp     r1, #0x0
	bne     branch_225631c
	cmp     r0, #0x1
	bne     branch_225631c
.thumb
branch_225630c: @ 225630c :thumb
	ldr     r0, [r3, #0x8]
	mov     r1, #0x1
	eor     r0, r1
	str     r0, [r3, #0x8]
	ldr     r0, [pc, #0x8] @ 0x2256320, (=0x16f4)
	ldr     r0, [r3, r0]
	bl      Function_22567b4
.thumb
branch_225631c: @ 225631c :thumb
	pop     {r3,pc}
@ 0x225631e


.align 2


.word 0x16f4 @ 0x2256320
.thumb
Function_2256324: @ 2256324 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256334
	b       branch_2256336
@ 0x2256334

.thumb
branch_2256334: @ 2256334 :thumb
	mov     r1, #0x2
.thumb
branch_2256336: @ 2256336 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225633e


.align 2, 0


.thumb
Function_2256340: @ 2256340 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256350
	cmp     r0, #0x1
	beq     branch_2256362
	b       branch_2256380
@ 0x2256350

.thumb
branch_2256350: @ 2256350 :thumb
	ldr     r0, [pc, #0x30] @ 0x2256384, (=0x16f4)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_22567b4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256380
@ 0x2256362

.thumb
branch_2256362: @ 2256362 :thumb
	ldr     r0, [pc, #0x20] @ 0x2256384, (=0x16f4)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_22567d8
	cmp     r0, #0x0
	beq     branch_2256380
	ldr     r0, [pc, #0x14] @ 0x2256388, (=0x16f8)
	ldr     r0, [r4, r0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225632c
.thumb
branch_2256380: @ 2256380 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256384

.word 0x16f4 @ 0x2256384
.word 0x16f8 @ 0x2256388
.thumb
Function_225638c: @ 225638c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldrb    r1, [r5, #0x2]
	cmp     r1, #0x0
	beq     branch_225639e
	mov     r1, #0x2
	bl      Function_225632c
.thumb
branch_225639e: @ 225639e :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	bne     branch_22563f4
	ldr     r0, [pc, #0x54] @ 0x22563fc, (=0x16f8)
	ldr     r0, [r5, r0]
	bl      0x225450c
	cmp     r0, #0x0
	bne     branch_22563f4
	ldrb    r0, [r5, #0x3]
	cmp     r0, #0x0
	beq     branch_22563dc
	mov     r0, r5
	ldr     r6, [r5, #0xc]
	ldr     r4, [r5, #0x10]
	bl      Function_2256460
	cmp     r0, #0x0
	beq     branch_22563d6
	ldr     r0, [r5, #0x10]
	mov     r1, r6
	str     r0, [sp, #0x0]
	ldr     r3, [r5, #0xc]
	mov     r0, r5
	mov     r2, r4
	bl      Function_22564f4
	b       branch_22563f4
@ 0x22563d6

.thumb
branch_22563d6: @ 22563d6 :thumb
	mov     r0, #0x0
	strb    r0, [r5, #0x3]
	b       branch_22563f4
@ 0x22563dc

.thumb
branch_22563dc: @ 22563dc :thumb
	mov     r0, r5
	bl      Function_2256404
	cmp     r0, #0x0
	beq     branch_22563f4
	ldr     r0, [pc, #0x18] @ 0x2256400, (=0x16f4)
	mov     r1, #0x3
	ldr     r0, [r5, r0]
	bl      Function_22567b4
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
.thumb
branch_22563f4: @ 22563f4 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22563fa


.align 2


.word 0x16f8 @ 0x22563fc
.word 0x16f4 @ 0x2256400
.thumb
Function_2256404: @ 2256404 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_2256458
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	sub     r1, #0x10
	sub     r2, #0x10
	cmp     r1, #0x9c
	bcs     branch_2256426
	mov     r0, #0x1
	b       branch_2256428
@ 0x2256426

.thumb
branch_2256426: @ 2256426 :thumb
	mov     r0, #0x0
.thumb
branch_2256428: @ 2256428 :thumb
	cmp     r2, #0x96
	bcs     branch_2256430
	mov     r3, #0x1
	b       branch_2256432
@ 0x2256430

.thumb
branch_2256430: @ 2256430 :thumb
	mov     r3, #0x0
.thumb
branch_2256432: @ 2256432 :thumb
	tst     r0, r3
	beq     branch_2256458
	lsr     r3, r1, #1
	lsr     r2, r2, #1
	mov     r0, #0x4b
	mul     r0, r3
	add     r0, r4, r0
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x0]
	ldr     r1, [r4, #0x8]
	add     r0, r0, r2
	strb    r1, [r0, #0x14]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256458

.thumb
branch_2256458: @ 2256458 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225645e


.align 2, 0


.thumb
Function_2256460: @ 2256460 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_22564a6
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	sub     r1, #0x10
	sub     r2, #0x10
	cmp     r1, #0x9c
	bcs     branch_2256482
	mov     r0, #0x1
	b       branch_2256484
@ 0x2256482

.thumb
branch_2256482: @ 2256482 :thumb
	mov     r0, #0x0
.thumb
branch_2256484: @ 2256484 :thumb
	cmp     r2, #0x96
	bcs     branch_225648c
	mov     r3, #0x1
	b       branch_225648e
@ 0x225648c

.thumb
branch_225648c: @ 225648c :thumb
	mov     r3, #0x0
.thumb
branch_225648e: @ 225648e :thumb
	tst     r0, r3
	beq     branch_22564a6
	lsr     r1, r1, #1
	lsr     r0, r2, #1
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	str     r1, [r4, #0xc]
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	str     r0, [r4, #0x10]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22564a6

.thumb
branch_22564a6: @ 22564a6 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22564ac

.thumb
Function_22564ac: @ 22564ac :thumb
	push    {r4-r7}
	.hword  0x1e8b @ sub r3, r1, #0x2
	bpl     branch_22564b4
	mov     r3, #0x0
.thumb
branch_22564b4: @ 22564b4 :thumb
	.hword  0x1e94 @ sub r4, r2, #0x2
	bpl     branch_22564ba
	mov     r4, #0x0
.thumb
branch_22564ba: @ 22564ba :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r1, #0x4e
	blt     branch_22564c2
	mov     r1, #0x4e
.thumb
branch_22564c2: @ 22564c2 :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r2, #0x4b
	blt     branch_22564ca
	mov     r2, #0x4b
.thumb
branch_22564ca: @ 22564ca :thumb
	cmp     r3, r1
	bge     branch_22564ee
	mov     r5, #0x4b
	mul     r5, r3
	add     r7, r0, r5
	mov     r5, #0x0
.thumb
branch_22564d6: @ 22564d6 :thumb
	mov     r6, r4
	cmp     r4, r2
	bge     branch_22564e6
.thumb
branch_22564dc: @ 22564dc :thumb
	add     r0, r7, r6
	.hword  0x1c76 @ add r6, r6, #0x1
	strb    r5, [r0, #0x14]
	cmp     r6, r2
	blt     branch_22564dc
.thumb
branch_22564e6: @ 22564e6 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r7, #0x4b
	cmp     r3, r1
	blt     branch_22564d6
.thumb
branch_22564ee: @ 22564ee :thumb
	pop     {r4-r7}
	bx      lr
@ 0x22564f2


.align 2, 0


.thumb
Function_22564f4: @ 22564f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [sp, #0x30]
	mov     r4, r2
	mov     r6, r1
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x30]
	cmp     r4, r0
	bne     branch_2256510
	mov     r0, r3
	cmp     r6, r0
	bne     branch_2256510
	b       branch_2256684
@ 0x2256510

.thumb
branch_2256510: @ 2256510 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, r6
	bls     branch_225651a
	sub     r1, r0, r6
	b       branch_225651c
@ 0x225651a

.thumb
branch_225651a: @ 225651a :thumb
	sub     r1, r6, r0
.thumb
branch_225651c: @ 225651c :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, r4
	bls     branch_2256526
	sub     r2, r0, r4
	b       branch_2256528
@ 0x2256526

.thumb
branch_2256526: @ 2256526 :thumb
	sub     r2, r4, r0
.thumb
branch_2256528: @ 2256528 :thumb
	cmp     r1, r2
	bls     branch_22565c8
	ldr     r0, [sp, #0x0]
	cmp     r0, r6
	bls     branch_2256538
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_225653e
@ 0x2256538

.thumb
branch_2256538: @ 2256538 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x8]
.thumb
branch_225653e: @ 225653e :thumb
	cmp     r1, #0x0
	beq     branch_2256550
	ldr     r0, [sp, #0x30]
	sub     r0, r0, r4
	lsl     r0, r0, #12
	blx 0x20e1f6c
	str     r0, [sp, #0x14]
	b       branch_2256554
@ 0x2256550

.thumb
branch_2256550: @ 2256550 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.thumb
branch_2256554: @ 2256554 :thumb
	ldr     r0, [sp, #0x14]
	lsl     r1, r4, #12
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x8]
	add     r6, r6, r0
	ldr     r0, [sp, #0x0]
	cmp     r6, r0
	beq     branch_2256656
	mov     r1, #0x4b
	mov     r0, r6
	mul     r0, r1
	add     r7, r5, r0
	ldr     r0, [sp, #0x8]
	mul     r1, r0
	str     r1, [sp, #0x10]
.thumb
branch_2256574: @ 2256574 :thumb
	ldr     r0, [sp, #0x18]
	asr     r4, r0, #12
	cmp     r6, #0x4e
	bcs     branch_22565b0
	cmp     r4, #0x4b
	bcs     branch_22565b0
	ldr     r1, [r5, #0x8]
	cmp     r1, #0x0
	beq     branch_225658e
	add     r0, r7, r4
	ldrb    r0, [r0, #0x14]
	cmp     r1, r0
	beq     branch_22565b0
.thumb
branch_225658e: @ 225658e :thumb
	cmp     r1, #0x0
	bne     branch_225659c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22564ac
.thumb
branch_225659c: @ 225659c :thumb
	ldr     r1, [r5, #0x8]
	add     r0, r7, r4
	strb    r1, [r0, #0x14]
	str     r6, [r5, #0xc]
	ldr     r0, [pc, #0xe0] @ 0x2256688, (=0x16f4)
	str     r4, [r5, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_22567b4
.thumb
branch_22565b0: @ 22565b0 :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x18]
	add     r7, r7, r0
	ldr     r0, [sp, #0x8]
	add     r6, r6, r0
	ldr     r0, [sp, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	cmp     r6, r0
	bne     branch_2256574
	b       branch_2256656
@ 0x22565c8

.thumb
branch_22565c8: @ 22565c8 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, r4
	bls     branch_22565d4
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_22565da
@ 0x22565d4

.thumb
branch_22565d4: @ 22565d4 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
.thumb
branch_22565da: @ 22565da :thumb
	cmp     r2, #0x0
	beq     branch_22565ee
	ldr     r0, [sp, #0x0]
	mov     r1, r2
	sub     r0, r0, r6
	lsl     r0, r0, #12
	blx 0x20e1f6c
	str     r0, [sp, #0xc]
	b       branch_22565f2
@ 0x22565ee

.thumb
branch_22565ee: @ 22565ee :thumb
	mov     r0, #0x0
	str     r0, [sp, #0xc]
.thumb
branch_22565f2: @ 22565f2 :thumb
	ldr     r0, [sp, #0xc]
	lsl     r1, r6, #12
	add     r7, r1, r0
	ldr     r0, [sp, #0x4]
	add     r4, r4, r0
	ldr     r0, [sp, #0x30]
	cmp     r4, r0
	beq     branch_2256656
.thumb
branch_2256602: @ 2256602 :thumb
	asr     r6, r7, #12
	cmp     r4, #0x4b
	bcs     branch_2256648
	cmp     r6, #0x4e
	bcs     branch_2256648
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2256620
	mov     r1, #0x4b
	mul     r1, r6
	add     r1, r5, r1
	add     r1, r4, r1
	ldrb    r1, [r1, #0x14]
	cmp     r0, r1
	beq     branch_2256648
.thumb
branch_2256620: @ 2256620 :thumb
	cmp     r0, #0x0
	bne     branch_225662e
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_22564ac
.thumb
branch_225662e: @ 225662e :thumb
	mov     r1, #0x4b
	mul     r1, r6
	add     r1, r5, r1
	ldr     r0, [r5, #0x8]
	add     r1, r4, r1
	strb    r0, [r1, #0x14]
	str     r6, [r5, #0xc]
	ldr     r0, [pc, #0x48] @ 0x2256688, (=0x16f4)
	str     r4, [r5, #0x10]
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_22567b4
.thumb
branch_2256648: @ 2256648 :thumb
	ldr     r0, [sp, #0x4]
	add     r4, r4, r0
	ldr     r0, [sp, #0xc]
	add     r7, r7, r0
	ldr     r0, [sp, #0x30]
	cmp     r4, r0
	bne     branch_2256602
.thumb
branch_2256656: @ 2256656 :thumb
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x4b
	bcs     branch_2256684
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x4e
	bcs     branch_2256684
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_2256672
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x30]
	mov     r0, r5
	bl      Function_22564ac
.thumb
branch_2256672: @ 2256672 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x30]
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x8] @ 0x2256688, (=0x16f4)
	ldr     r0, [r5, r0]
	bl      Function_22567b4
.thumb
branch_2256684: @ 2256684 :thumb
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2256688

.word 0x16f4 @ 0x2256688
.thumb
Function_225668c: @ 225668c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225669c
	cmp     r0, #0x1
	beq     branch_22566ae
	b       branch_22566be
@ 0x225669c

.thumb
branch_225669c: @ 225669c :thumb
	ldr     r0, [pc, #0x24] @ 0x22566c4, (=0x16f4)
	mov     r1, #0x5
	ldr     r0, [r4, r0]
	bl      Function_22567b4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22566be
@ 0x22566ae

.thumb
branch_22566ae: @ 22566ae :thumb
	ldr     r0, [pc, #0x14] @ 0x22566c4, (=0x16f4)
	ldr     r0, [r4, r0]
	bl      Function_22567e4
	cmp     r0, #0x0
	beq     branch_22566be
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22566be

.thumb
branch_22566be: @ 22566be :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22566c2


.align 2


.word 0x16f4 @ 0x22566c4
.thumb
Function_22566c8: @ 22566c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x74
	bl      0x2018144
	mov     r4, r0
	beq     branch_2256722
	mov     r0, #0x7
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22566e8
	bl      0x2022974
.thumb
branch_22566e8: @ 22566e8 :thumb
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x10
	bl      0x2255090
	mov     r0, #0x7
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_2256700
	bl      0x2022974
.thumb
branch_2256700: @ 2256700 :thumb
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x50]
	mov     r0, #0x7
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_225671c
	bl      0x2022974
.thumb
branch_225671c: @ 225671c :thumb
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256722

.thumb
branch_2256722: @ 2256722 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256726


.align 2, 0


.thumb
Function_2256728: @ 2256728 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x1
	bl      0x201a778
	str     r0, [r4, #0x70]
	mov     r1, r0
	beq     branch_2256764
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x28] @ 0x2256768, (=0x2256b50)
	bl      0x201a8d4
	mov     r2, #0xbe
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x24] @ 0x225676c, (=0x16e8)
	lsl     r2, r2, #6
	ldr     r0, [r1, r0]
	ldr     r1, [r4, #0x70]
	ldr     r1, [r1, #0xc]
	bl      0x2099dd0
	cmp     r0, #0x0
	bne     branch_2256760
	ldr     r0, [r4, #0x70]
	mov     r1, #0x4
	bl      0x201ada4
.thumb
branch_2256760: @ 2256760 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256764

.thumb
branch_2256764: @ 2256764 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256768

.word 0x2256b50 @ 0x2256768
.word 0x16e8 @ 0x225676c
.thumb
Function_2256770: @ 2256770 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22567ac
	mov     r0, #0x7
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_2256784
	bl      0x2022974
.thumb
branch_2256784: @ 2256784 :thumb
	ldr     r2, [r4, #0x70]
	cmp     r2, #0x0
	beq     branch_22567a6
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x20] @ 0x22567b0, (=0x16e8)
	ldr     r0, [r1, r0]
	ldr     r1, [r2, #0xc]
	mov     r2, #0xbe
	lsl     r2, r2, #6
	bl      0x2099da8
	ldr     r0, [r4, #0x70]
	bl      0x201a8fc
	ldr     r0, [r4, #0x70]
	bl      0x20181c4
.thumb
branch_22567a6: @ 22567a6 :thumb
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_22567ac: @ 22567ac :thumb
	pop     {r4,pc}
@ 0x22567ae


.align 2


.word 0x16e8 @ 0x22567b0
.thumb
Function_22567b4: @ 22567b4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22567d4, (=0x2256bb0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22567d2


.align 2


.word 0x2256bb0 @ 0x22567d4
.thumb
Function_22567d8: @ 22567d8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22567e0, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22567de


.align 2


.word 0x2255131 @ 0x22567e0
.thumb
Function_22567e4: @ 22567e4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22567ec, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22567ea


.align 2


.word 0x2255155 @ 0x22567ec
.thumb
Function_22567f0: @ 22567f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256802


.align 2, 0


.thumb
Function_2256804: @ 2256804 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r0, #0x8
	mov     r4, r1
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_2256818
	bl      0x2022974
.thumb
branch_2256818: @ 2256818 :thumb
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xd4] @ 0x22568f8, (=0x2256b58)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xcc] @ 0x22568fc, (=0x2256b74)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_2256846
	bl      0x2022974
.thumb
branch_2256846: @ 2256846 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x1e
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x1f
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_2256890
	bl      0x2022974
.thumb
branch_2256890: @ 2256890 :thumb
	mov     r0, r5
	bl      Function_2256728
	ldr     r0, [r5, #0x70]
	bl      0x201a954
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22568aa
	bl      0x2022974
.thumb
branch_22568aa: @ 22568aa :thumb
	mov     r0, r5
	bl      Function_2256abc
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22568be
	bl      0x2022974
.thumb
branch_22568be: @ 22568be :thumb
	ldr     r0, [r5, #0x4]
	mov     r1, #0x7
	bl      0x2019448
	ldr     r1, [pc, #0x38] @ 0x2256900, (=0x4001000)
	ldr     r0, [pc, #0x38] @ 0x2256904, (=0xffffe0ff)
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
	mov     r0, r4
	bl      Function_22567f0
	mov     r0, #0x8
	bl      0x201833c
	cmp     r0, #0x0
	bne     branch_22568f4
	bl      0x2022974
.thumb
branch_22568f4: @ 22568f4 :thumb
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22568f8

.word 0x2256b58 @ 0x22568f8
.word 0x2256b74 @ 0x22568fc
.word 0x4001000 @ 0x2256900
.word 0xffffe0ff @ 0x2256904
.thumb
Function_2256908: @ 2256908 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	ldr     r0, [r4, #0x68]
	bne     branch_225692e
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r4, #0x6c]
	mov     r1, #0x3
	bl      0x22558c4
	b       branch_225693c
@ 0x225692e

.thumb
branch_225692e: @ 225692e :thumb
	mov     r1, #0x1
	bl      0x22558c4
	ldr     r0, [r4, #0x6c]
	mov     r1, #0x2
	bl      0x22558c4
.thumb
branch_225693c: @ 225693c :thumb
	ldr     r0, [pc, #0xc] @ 0x225694c, (=0x663)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567f0
	pop     {r3-r5,pc}
@ 0x225694a


.align 2


.word 0x663 @ 0x225694c
.thumb
Function_2256950: @ 2256950 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x70]
	bl      0x201accc
	mov     r0, r4
	bl      Function_22567f0
	pop     {r4,pc}
@ 0x2256968

.thumb
Function_2256968: @ 2256968 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r4, r0, #3
	.hword  0x1e58 @ sub r0, r3, #0x1
	add     r1, r1, r0
	asr     r0, r1, #2
	lsr     r0, r0, #29
	add     r0, r1, r0
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	asr     r3, r1, #3
	ldr     r1, [sp, #0x18]
	asr     r0, r0, #3
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r2, r2, r1
	asr     r1, r2, #2
	lsr     r1, r1, #29
	add     r1, r2, r1
	asr     r1, r1, #3
	sub     r1, r1, r3
	mov     r2, #0x14
	sub     r0, r0, r4
	mul     r2, r3
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, r4, r2
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r2, [sp, #0x0]
	cmp     r1, #0x0
	beq     branch_22569da
	lsl     r5, r4, #5
	lsl     r7, r0, #5
.thumb
branch_22569b0: @ 22569b0 :thumb
	add     r0, r6, r5
	mov     r1, r7
	blx 0x20c2c54
	mov     r1, r4
	add     r1, #0xc
	add     r0, r6, r5
	lsl     r1, r1, #5
	mov     r2, r7
	blx 0x20c090c
	mov     r0, #0xa
	lsl     r0, r0, #6
	ldr     r1, [sp, #0x0]
	add     r5, r5, r0
	mov     r0, r1
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     r4, #0x14
	str     r0, [sp, #0x0]
	cmp     r1, #0x0
	bne     branch_22569b0
.thumb
branch_22569da: @ 22569da :thumb
	pop     {r3-r7,pc}
@ 0x22569dc

.thumb
Function_22569dc: @ 22569dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r0, r1
	str     r1, [sp, #0x8]
	bl      0x225523c
	mov     r7, r0
	ldr     r0, [r7, #0x0]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_2256a44
	ldr     r1, [r0, #0x4]
	ldr     r0, [r0, #0x8]
	lsl     r1, r1, #1
	mov     r5, #0x8
	lsl     r0, r0, #1
	.hword  0x1f0e @ sub r6, r1, #0x4
	.hword  0x1f04 @ sub r4, r0, #0x4
	str     r5, [sp, #0xc]
	cmp     r6, #0x0
	bge     branch_2256a0c
	add     r0, r5, r6
	str     r0, [sp, #0xc]
	mov     r6, #0x0
.thumb
branch_2256a0c: @ 2256a0c :thumb
	cmp     r4, #0x0
	bge     branch_2256a14
	add     r5, r5, r4
	mov     r4, #0x0
.thumb
branch_2256a14: @ 2256a14 :thumb
	ldr     r0, [sp, #0xc]
	lsl     r2, r6, #16
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r3, r4, #16
	ldr     r0, [r7, #0x70]
	mov     r1, #0x4
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x201ae78
	str     r5, [sp, #0x0]
	ldr     r0, [r7, #0x70]
	ldr     r3, [sp, #0xc]
	ldr     r0, [r0, #0xc]
	mov     r1, r6
	mov     r2, r4
	bl      Function_2256968
	b       branch_2256a72
@ 0x2256a44

.thumb
branch_2256a44: @ 2256a44 :thumb
	ldr     r1, [r0, #0x4]
	ldr     r0, [r0, #0x8]
	lsl     r5, r1, #1
	lsl     r4, r0, #1
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r2, r5, #16
	lsl     r3, r4, #16
	ldr     r0, [r7, #0x70]
	mov     r1, #0x1
	lsr     r2, r2, #16
	lsr     r3, r3, #16
	bl      0x201ae78
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	ldr     r0, [r7, #0x70]
	mov     r1, r5
	ldr     r0, [r0, #0xc]
	mov     r2, r4
	bl      Function_2256968
.thumb
branch_2256a72: @ 2256a72 :thumb
	ldr     r0, [sp, #0x8]
	bl      Function_22567f0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256a7c

.thumb
Function_2256a7c: @ 2256a7c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x70]
	bl      0x201accc
	mov     r0, r4
	bl      Function_22567f0
	pop     {r4,pc}
@ 0x2256a94

.thumb
Function_2256a94: @ 2256a94 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_2256b18
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r5
	bl      Function_22567f0
	pop     {r3-r5,pc}
@ 0x2256abc

.thumb
Function_2256abc: @ 2256abc :thumb
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
	mov     r1, #0x20
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x54
	mov     r1, #0xc
	mov     r2, #0x21
	mov     r3, #0x22
	bl      0x2255958
	cmp     r0, #0x0
	beq     branch_2256b10
	mov     r0, r7
	str     r0, [sp, #0xc]
	add     r0, #0x54
	ldr     r4, [pc, #0x20] @ 0x2256b14, (=0x2256b90)
	mov     r6, #0x0
	mov     r5, r7
	str     r0, [sp, #0xc]
.thumb
branch_2256afa: @ 2256afa :thumb
	ldr     r0, [r7, #0x50]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x68]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_2256afa
.thumb
branch_2256b10: @ 2256b10 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256b14

.word 0x2256b90 @ 0x2256b14
.thumb
Function_2256b18: @ 2256b18 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256b20: @ 2256b20 :thumb
	ldr     r0, [r6, #0x50]
	ldr     r1, [r5, #0x68]
	bl      0x22558b0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	bcc     branch_2256b20
	add     r6, #0x54
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x2256b3a


.align 2, 0
Unknown_2256b3c: @ 0x2256b3c
.incbin "./baserom/overlay/overlay_0029.bin", 0x97c, 0x2256c20 - 0x2256b3c


@end 0x2256c20




