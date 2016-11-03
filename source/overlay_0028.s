

.section .iwram28, "ax"


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
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x28
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      0x2018144
	mov     r4, r0
	beq     branch_2256208
	ldr     r1, [sp, #0x0]
	mov     r2, r7
	bl      Function_2256210
	cmp     r0, #0x0
	beq     branch_2256208
	ldr     r0, [pc, #0x14] @ 0x225620c, (=0x22562cd)
	str     r6, [r4, #0x10]
	mov     r1, r4
	mov     r2, #0x1
	bl      0x200d9e8
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256208

.thumb
branch_2256208: @ 2256208 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225620c

.word 0x22562cd @ 0x225620c
.thumb
Function_2256210: @ 2256210 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r1, r4
	add     r0, #0x14
	add     r1, #0x18
	bl      Function_225697c
	cmp     r0, #0x0
	beq     branch_225628a
	mov     r0, #0x0
	strb    r0, [r4, #0x0]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x3]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x4]
	mov     r0, #0x11
	strh    r0, [r4, #0x6]
	sub     r0, #0x12
	str     r0, [r4, #0x8]
	mov     r0, r4
	add     r0, #0x1c
	mov     r1, #0xa
	bl      Function_2256e9c
	mov     r0, r4
	add     r0, #0x20
	mov     r1, #0xa
	bl      Function_2256e9c
	mov     r0, r4
	add     r0, #0x24
	mov     r1, #0xa
	bl      Function_2256e9c
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_2256268
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_2256268
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	bne     branch_225626e
.thumb
branch_2256268: @ 2256268 :thumb
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x225626e

.thumb
branch_225626e: @ 225626e :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2256290, (=0x2257658)
	ldr     r2, [pc, #0x1c] @ 0x2256294, (=0x2256345)
	mov     r1, #0x11
	mov     r3, r4
	bl      0x2255acc
	str     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_225628a
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x225628a

.thumb
branch_225628a: @ 225628a :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2256290

.word 0x2257658 @ 0x2256290
.word 0x2256345 @ 0x2256294
.thumb
Function_2256298: @ 2256298 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_22562a6
	bl      Function_2256ec0
.thumb
branch_22562a6: @ 22562a6 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_22562b0
	bl      Function_2256ec0
.thumb
branch_22562b0: @ 22562b0 :thumb
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	beq     branch_22562ba
	bl      Function_2256ec0
.thumb
branch_22562ba: @ 22562ba :thumb
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22562c4
	bl      0x2255b34
.thumb
branch_22562c4: @ 22562c4 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22569ac
	pop     {r4,pc}
@ 0x22562cc

.thumb
Function_22562cc: @ 22562cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x0
	beq     branch_22562e4
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_225632c
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
.thumb
branch_22562e4: @ 22562e4 :thumb
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x7
	bcs     branch_225631e
	mov     r0, #0x11
	strh    r0, [r4, #0x6]
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0xc]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x2256320, (=Unknown_225763c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225631e
	mov     r0, r4
	bl      Function_2256298
	mov     r0, r4
	bl      0x20181c4
	mov     r0, r5
	bl      0x200da58
	ldr     r0, [r4, #0x10]
	bl      0x2254260
branch_225631e: @ 225631e :thumb
	pop     {r3-r5,pc}
@ 0x2256320

.word Unknown_225763c @ 0x2256320



.thumb
Function_2256324: @ 2256324 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	ldrb    r2, [r0, #0x3]
	cmp     r2, #0x0
	bne     branch_2256334
	b       branch_2256336
@ 0x2256334

.thumb
branch_2256334: @ 2256334 :thumb
	mov     r1, #0x6
.thumb
branch_2256336: @ 2256336 :thumb
	strb    r1, [r0, #0x0]
	ldrb    r1, [r0, #0x0]
	strb    r1, [r0, #0x2]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x2256342


.align 2, 0


.thumb
Function_2256344: @ 2256344 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r3
	cmp     r2, #0x0
	beq     branch_2256356
	cmp     r2, #0x1
	beq     branch_2256362
	b       branch_225636c
@ 0x2256356

.thumb
branch_2256356: @ 2256356 :thumb
	strh    r5, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_22569b8
	b       branch_225636c
@ 0x2256362

.thumb
branch_2256362: @ 2256362 :thumb
	strh    r5, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_22569b8
.thumb
branch_225636c: @ 225636c :thumb
	cmp     r6, #0x3
	bne     branch_2256372
	strh    r5, [r4, #0x6]
.thumb
branch_2256372: @ 2256372 :thumb
	pop     {r4-r6,pc}
@ 0x2256374

.thumb
Function_2256374: @ 2256374 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256384
	cmp     r0, #0x1
	beq     branch_2256394
	b       branch_22563ae
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ae
@ 0x2256394

.thumb
branch_2256394: @ 2256394 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_22563ae
	ldr     r0, [r4, #0x10]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225632c
.thumb
branch_22563ae: @ 22563ae :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563b2


.align 2, 0


.thumb
Function_22563b4: @ 22563b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_22563c4
	cmp     r1, #0x1
	beq     branch_2256468
	b       branch_2256488
@ 0x22563c4

.thumb
branch_22563c4: @ 22563c4 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x6]
	mov     r2, r1
	sub     r2, #0xa
	cmp     r2, #0x7
	bhi     branch_225641e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22563e0

Jumppoints_22563e0:
.hword branch_22563fa - Jumppoints_22563e0 - 2
.hword branch_2256400 - Jumppoints_22563e0 - 2
.hword branch_2256400 - Jumppoints_22563e0 - 2
.hword branch_2256400 - Jumppoints_22563e0 - 2
.hword branch_2256400 - Jumppoints_22563e0 - 2
.hword branch_2256410 - Jumppoints_22563e0 - 2
.hword branch_22563f0 - Jumppoints_22563e0 - 2
.hword branch_2256440 - Jumppoints_22563e0 - 2
.thumb
branch_22563f0: @ 22563f0 :thumb
	bl      Function_2256868
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	b       branch_2256440
@ 0x22563fa

.thumb
branch_22563fa: @ 22563fa :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_2256440
@ 0x2256400

.thumb
branch_2256400: @ 2256400 :thumb
	strh    r1, [r4, #0x1a]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	b       branch_2256440
@ 0x2256410

.thumb
branch_2256410: @ 2256410 :thumb
	ldr     r1, [r4, #0x1c]
	bl      Function_2256914
	ldr     r0, [r4, #0x1c]
	bl      Function_2256ec8
	b       branch_2256440
@ 0x225641e

.thumb
branch_225641e: @ 225641e :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x1c]
	beq     branch_2256434
	bl      Function_22571b8
	cmp     r0, #0x0
	beq     branch_2256440
	mov     r0, #0x3
	str     r0, [r4, #0x8]
	b       branch_2256440
@ 0x2256434

.thumb
branch_2256434: @ 2256434 :thumb
	bl      Function_225717c
	cmp     r0, #0x0
	beq     branch_2256440
	mov     r0, #0x3
	str     r0, [r4, #0x8]
.thumb
branch_2256440: @ 2256440 :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x8]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2256458
	ldr     r0, [r4, #0x14]
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256488
@ 0x2256458

.thumb
branch_2256458: @ 2256458 :thumb
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256488
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256488
@ 0x2256468

.thumb
branch_2256468: @ 2256468 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_2256488
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256484
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256488
@ 0x2256484

.thumb
branch_2256484: @ 2256484 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256488: @ 2256488 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225648c

.thumb
Function_225648c: @ 225648c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_225649c
	cmp     r1, #0x1
	beq     branch_2256564
	b       branch_2256584
@ 0x225649c

.thumb
branch_225649c: @ 225649c :thumb
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x6]
	mov     r2, r1
	sub     r2, #0xa
	cmp     r2, #0x7
	bhi     branch_2256522
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22564b8

Jumppoints_22564b8:
.hword branch_22564d6 - Jumppoints_22564b8 - 2
.hword branch_22564ea - Jumppoints_22564b8 - 2
.hword branch_22564ea - Jumppoints_22564b8 - 2
.hword branch_22564ea - Jumppoints_22564b8 - 2
.hword branch_22564ea - Jumppoints_22564b8 - 2
.hword branch_22564f2 - Jumppoints_22564b8 - 2
.hword branch_22564c8 - Jumppoints_22564b8 - 2
.hword branch_225653c - Jumppoints_22564b8 - 2
.thumb
branch_22564c8: @ 22564c8 :thumb
	bl      Function_2256868
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_225653c
@ 0x22564d6

.thumb
branch_22564d6: @ 22564d6 :thumb
	ldr     r0, [r4, #0x20]
	bl      Function_2256ec8
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	mov     r0, #0x3
	strb    r0, [r4, #0x2]
	b       branch_225653c
@ 0x22564ea

.thumb
branch_22564ea: @ 22564ea :thumb
	strh    r1, [r4, #0x1a]
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	b       branch_225653c
@ 0x22564f2

.thumb
branch_22564f2: @ 22564f2 :thumb
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x1c]
	bl      Function_2256ed8
	ldrh    r1, [r4, #0x1a]
	mov     r0, r4
	bl      Function_2256888
	cmp     r0, #0x0
	beq     branch_2256518
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_2256914
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	mov     r0, #0x4
	strb    r0, [r4, #0x2]
	b       branch_225653c
@ 0x2256518

.thumb
branch_2256518: @ 2256518 :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	mov     r0, #0x5
	strb    r0, [r4, #0x2]
	b       branch_225653c
@ 0x2256522

.thumb
branch_2256522: @ 2256522 :thumb
	ldr     r0, [r4, #0x20]
	bl      Function_2256ec8
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0x20]
	bl      Function_225717c
	cmp     r0, #0x0
	beq     branch_225653c
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	mov     r0, #0x3
	strb    r0, [r4, #0x2]
.thumb
branch_225653c: @ 225653c :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x8]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2256554
	ldr     r0, [r4, #0x14]
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256584
@ 0x2256554

.thumb
branch_2256554: @ 2256554 :thumb
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256584
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256584
@ 0x2256564

.thumb
branch_2256564: @ 2256564 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_2256584
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256580
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256584
@ 0x2256580

.thumb
branch_2256580: @ 2256580 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256584: @ 2256584 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256588

.thumb
Function_2256588: @ 2256588 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_2256598
	cmp     r1, #0x1
	beq     branch_225667a
	b       branch_225669a
@ 0x2256598

.thumb
branch_2256598: @ 2256598 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x6]
	mov     r2, r1
	sub     r2, #0xa
	cmp     r2, #0x7
	bhi     branch_2256630
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22565b4

Jumppoints_22565b4:
.hword branch_22565d2 - Jumppoints_22565b4 - 2
.hword branch_22565d8 - Jumppoints_22565b4 - 2
.hword branch_22565d8 - Jumppoints_22565b4 - 2
.hword branch_22565d8 - Jumppoints_22565b4 - 2
.hword branch_22565d8 - Jumppoints_22565b4 - 2
.hword branch_2256606 - Jumppoints_22565b4 - 2
.hword branch_22565c4 - Jumppoints_22565b4 - 2
.hword branch_2256652 - Jumppoints_22565b4 - 2
.thumb
branch_22565c4: @ 22565c4 :thumb
	bl      Function_2256868
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_2256652
@ 0x22565d2

.thumb
branch_22565d2: @ 22565d2 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	b       branch_2256652
@ 0x22565d8

.thumb
branch_22565d8: @ 22565d8 :thumb
	ldrh    r1, [r4, #0x1a]
	bl      Function_2256888
	cmp     r0, #0x0
	beq     branch_22565fc
	ldrh    r0, [r4, #0x6]
	strh    r0, [r4, #0x1a]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	bl      Function_2256ed8
	mov     r0, #0x7
	str     r0, [r4, #0x8]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	b       branch_2256652
@ 0x22565fc

.thumb
branch_22565fc: @ 22565fc :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	mov     r0, #0x5
	strb    r0, [r4, #0x2]
	b       branch_2256652
@ 0x2256606

.thumb
branch_2256606: @ 2256606 :thumb
	ldrh    r1, [r4, #0x1a]
	bl      Function_2256888
	cmp     r0, #0x0
	beq     branch_2256626
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_2256914
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	mov     r0, #0x4
	strb    r0, [r4, #0x2]
	b       branch_2256652
@ 0x2256626

.thumb
branch_2256626: @ 2256626 :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	mov     r0, #0x5
	strb    r0, [r4, #0x2]
	b       branch_2256652
@ 0x2256630

.thumb
branch_2256630: @ 2256630 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x20]
	beq     branch_2256646
	bl      Function_22571b8
	cmp     r0, #0x0
	beq     branch_2256652
	mov     r0, #0x5
	str     r0, [r4, #0x8]
	b       branch_2256652
@ 0x2256646

.thumb
branch_2256646: @ 2256646 :thumb
	bl      Function_225717c
	cmp     r0, #0x0
	beq     branch_2256652
	mov     r0, #0x5
	str     r0, [r4, #0x8]
.thumb
branch_2256652: @ 2256652 :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x8]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_225666a
	ldr     r0, [r4, #0x14]
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225669a
@ 0x225666a

.thumb
branch_225666a: @ 225666a :thumb
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_225669a
	mov     r0, r4
	bl      Function_225632c
	b       branch_225669a
@ 0x225667a

.thumb
branch_225667a: @ 225667a :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_225669a
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256696
	mov     r0, r4
	bl      Function_225632c
	b       branch_225669a
@ 0x2256696

.thumb
branch_2256696: @ 2256696 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_225669a: @ 225669a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225669e


.align 2, 0


.thumb
Function_22566a0: @ 22566a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_22566b0
	cmp     r1, #0x1
	beq     branch_2256784
	b       branch_22567a4
@ 0x22566b0

.thumb
branch_22566b0: @ 22566b0 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x6]
	mov     r2, r1
	sub     r2, #0xa
	cmp     r2, #0x7
	bhi     branch_2256742
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22566cc

Jumppoints_22566cc:
.hword branch_22566ea - Jumppoints_22566cc - 2
.hword branch_22566fa - Jumppoints_22566cc - 2
.hword branch_22566fa - Jumppoints_22566cc - 2
.hword branch_22566fa - Jumppoints_22566cc - 2
.hword branch_22566fa - Jumppoints_22566cc - 2
.hword branch_2256712 - Jumppoints_22566cc - 2
.hword branch_22566dc - Jumppoints_22566cc - 2
.hword branch_225675c - Jumppoints_22566cc - 2
.thumb
branch_22566dc: @ 22566dc :thumb
	bl      Function_2256868
	mov     r0, #0x4
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_225675c
@ 0x22566ea

.thumb
branch_22566ea: @ 22566ea :thumb
	bl      Function_2256868
	mov     r0, #0x3
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x2]
	b       branch_225675c
@ 0x22566fa

.thumb
branch_22566fa: @ 22566fa :thumb
	strh    r1, [r4, #0x1a]
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	bl      Function_2256ed8
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
	b       branch_225675c
@ 0x2256712

.thumb
branch_2256712: @ 2256712 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	bl      Function_2256ed8
	ldrh    r1, [r4, #0x1a]
	mov     r0, r4
	bl      Function_2256888
	cmp     r0, #0x0
	beq     branch_2256738
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	bl      Function_2256914
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	b       branch_225675c
@ 0x2256738

.thumb
branch_2256738: @ 2256738 :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	mov     r0, #0x5
	strb    r0, [r4, #0x2]
	b       branch_225675c
@ 0x2256742

.thumb
branch_2256742: @ 2256742 :thumb
	ldr     r0, [r4, #0x1c]
	bl      Function_2256ec8
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0x1c]
	bl      Function_225717c
	cmp     r0, #0x0
	beq     branch_2256758
	mov     r0, #0x3
	str     r0, [r4, #0x8]
.thumb
branch_2256758: @ 2256758 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
.thumb
branch_225675c: @ 225675c :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x8]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2256774
	ldr     r0, [r4, #0x14]
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22567a4
@ 0x2256774

.thumb
branch_2256774: @ 2256774 :thumb
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_22567a4
	mov     r0, r4
	bl      Function_225632c
	b       branch_22567a4
@ 0x2256784

.thumb
branch_2256784: @ 2256784 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_22567a4
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_22567a0
	mov     r0, r4
	bl      Function_225632c
	b       branch_22567a4
@ 0x22567a0

.thumb
branch_22567a0: @ 22567a0 :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_22567a4: @ 22567a4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22567a8

.thumb
Function_22567a8: @ 22567a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_22567b8
	cmp     r1, #0x1
	beq     branch_2256842
	b       branch_2256862
@ 0x22567b8

.thumb
branch_22567b8: @ 22567b8 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x8]
	ldrh    r1, [r4, #0x6]
	sub     r1, #0xa
	cmp     r1, #0x7
	bhi     branch_2256800
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22567d2

Jumppoints_22567d2:
.hword branch_22567f0 - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.hword branch_22567e2 - Jumppoints_22567d2 - 2
.hword branch_225681a - Jumppoints_22567d2 - 2
.thumb
branch_22567e2: @ 22567e2 :thumb
	bl      Function_2256868
	mov     r0, #0x3
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
	b       branch_225681a
@ 0x22567f0

.thumb
branch_22567f0: @ 22567f0 :thumb
	bl      Function_2256868
	mov     r0, #0x3
	str     r0, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x4]
	strb    r0, [r4, #0x2]
	b       branch_225681a
@ 0x2256800

.thumb
branch_2256800: @ 2256800 :thumb
	mov     r0, r4
	bl      Function_2256868
	ldrh    r1, [r4, #0x6]
	ldr     r0, [r4, #0x1c]
	bl      Function_225717c
	cmp     r0, #0x0
	beq     branch_2256816
	mov     r0, #0x3
	str     r0, [r4, #0x8]
.thumb
branch_2256816: @ 2256816 :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x2]
.thumb
branch_225681a: @ 225681a :thumb
	mov     r0, #0x0
	ldr     r1, [r4, #0x8]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2256832
	ldr     r0, [r4, #0x14]
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256862
@ 0x2256832

.thumb
branch_2256832: @ 2256832 :thumb
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_2256862
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256862
@ 0x2256842

.thumb
branch_2256842: @ 2256842 :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x8]
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_2256862
	ldrb    r1, [r4, #0x2]
	ldrb    r0, [r4, #0x0]
	cmp     r1, r0
	beq     branch_225685e
	mov     r0, r4
	bl      Function_225632c
	b       branch_2256862
@ 0x225685e

.thumb
branch_225685e: @ 225685e :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256862: @ 2256862 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256866


.align 2, 0


.thumb
Function_2256868: @ 2256868 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	bl      Function_2256ec8
	ldr     r0, [r4, #0x20]
	bl      Function_2256ec8
	ldr     r0, [r4, #0x24]
	bl      Function_2256ec8
	mov     r0, #0x11
	strh    r0, [r4, #0x1a]
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x2256888

.thumb
Function_2256888: @ 2256888 :thumb
	push    {r4,lr}
	sub     r1, #0xb
	mov     r4, r0
	cmp     r1, #0x3
	bhi     branch_22568d4
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225689e

Jumppoints_225689e:
.hword branch_22568b2 - Jumppoints_225689e - 2
.hword branch_22568a6 - Jumppoints_225689e - 2
.hword branch_22568be - Jumppoints_225689e - 2
.hword branch_22568ca - Jumppoints_225689e - 2
.thumb
branch_22568a6: @ 22568a6 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	bl      Function_2256ee8
	b       branch_22568d4
@ 0x22568b2

.thumb
branch_22568b2: @ 22568b2 :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	bl      Function_2256f74
	b       branch_22568d4
@ 0x22568be

.thumb
branch_22568be: @ 22568be :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	bl      Function_2257028
	b       branch_22568d4
@ 0x22568ca

.thumb
branch_22568ca: @ 22568ca :thumb
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	bl      Function_2257058
.thumb
branch_22568d4: @ 22568d4 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0xa
	bl      Function_2257240
	pop     {r4,pc}
@ 0x22568de


.align 2, 0


.thumb
Function_22568e0: @ 22568e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22568f0
	cmp     r0, #0x1
	beq     branch_2256900
	b       branch_225690e
@ 0x22568f0

.thumb
branch_22568f0: @ 22568f0 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0xa
	bl      Function_22569b8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225690e
@ 0x2256900

.thumb
branch_2256900: @ 2256900 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22569e8
	cmp     r0, #0x0
	beq     branch_225690e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225690e

.thumb
branch_225690e: @ 225690e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256912


.align 2, 0


.thumb
Function_2256914: @ 2256914 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, r1
	bl      Function_2257468
	mov     r4, r0
	mov     r2, #0x0
	mov     r0, #0x0
	sub     r0, r0, r4
	sbc     r2, r1
	bge     branch_2256976
	mov     r2, #0x0
	ldr     r0, [pc, #0x48] @ 0x2256978, (=0x1ed)
	sub     r0, r0, r4
	sbc     r2, r1
	blt     branch_2256976
	ldr     r0, [r5, #0x10]
	bl      0x2254544
	bl      0x2027560
	mov     r5, r0
	bl      0x2027474
	cmp     r0, #0x0
	beq     branch_225694e
	lsl     r0, r4, #16
	lsr     r4, r0, #16
	b       branch_2256958
@ 0x225694e

.thumb
branch_225694e: @ 225694e :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      0x20775c4
	mov     r4, r0
.thumb
branch_2256958: @ 2256958 :thumb
	cmp     r4, #0x0
	beq     branch_2256976
	ldr     r0, [pc, #0x18] @ 0x2256978, (=0x1ed)
	cmp     r4, r0
	bhi     branch_2256976
	mov     r0, r5
	mov     r1, r4
	bl      0x2026fe8
	cmp     r0, #0x0
	beq     branch_2256976
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2254444
.thumb
branch_2256976: @ 2256976 :thumb
	pop     {r3-r5,pc}
@ 0x2256978

.word 0x1ed @ 0x2256978
.thumb
Function_225697c: @ 225697c :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r5, r0
	ldr     r1, [pc, #0x24] @ 0x22569a8, (=0x48c)
	mov     r0, #0x8
	mov     r7, r2
	bl      0x2018144
	mov     r4, r0
	beq     branch_22569a2
	str     r6, [r4, #0x0]
	str     r7, [r4, #0x4]
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22569a2

.thumb
branch_22569a2: @ 22569a2 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22569a6


.align 2


.word 0x48c @ 0x22569a8
.thumb
Function_22569ac: @ 22569ac :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_22569b6
	bl      0x20181c4
.thumb
branch_22569b6: @ 22569b6 :thumb
	pop     {r3,pc}
@ 0x22569b8

.thumb
Function_22569b8: @ 22569b8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22569d8, (=0x22579c0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22569d6


.align 2


.word 0x22579c0 @ 0x22569d8
.thumb
Function_22569dc: @ 22569dc :thumb
	ldr     r3, [pc, #0x4] @ 0x22569e4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22569e2


.align 2


.word 0x2255131 @ 0x22569e4
.thumb
Function_22569e8: @ 22569e8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22569f0, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22569ee


.align 2


.word 0x2255155 @ 0x22569f0
.thumb
Function_22569f4: @ 22569f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256a06


.align 2, 0


.thumb
Function_2256a08: @ 2256a08 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x2255240
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x78] @ 0x2256a98, (=0x225769c)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x10
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
	mov     r1, #0x11
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, r5
	bl      Function_2256aa4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x2256a9c, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256aa0, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x4
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_22569f4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256a96


.align 2


.word 0x225769c @ 0x2256a98
.word 0x4001000 @ 0x2256a9c
.word 0xffffe0ff @ 0x2256aa0
.thumb
Function_2256aa4: @ 2256aa4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	mov     r1, #0x6
	bl      0x2019fe4
	mov     r12, r0
	mov     r0, #0x0
	ldr     r3, [pc, #0x68] @ 0x2256b20, (=0x2257938)
	str     r0, [sp, #0x4]
.thumb
branch_2256aba: @ 2256aba :thumb
	ldrb    r7, [r3, #0x1]
	ldrb    r0, [r3, #0x3]
	mov     r2, #0x0
	add     r0, r7, r0
	cmp     r7, r0
	bcs     branch_2256b0c
	lsl     r0, r7, #5
	str     r0, [sp, #0x0]
.thumb
branch_2256aca: @ 2256aca :thumb
	ldrb    r1, [r3, #0x0]
	ldrb    r0, [r3, #0x2]
	add     r0, r1, r0
	cmp     r1, r0
	bcs     branch_2256afa
	ldr     r0, [sp, #0x0]
	lsl     r4, r0, #1
	mov     r0, r12
	add     r4, r0, r4
	lsl     r0, r1, #1
	add     r4, r4, r0
.thumb
branch_2256ae0: @ 2256ae0 :thumb
	lsl     r5, r2, #1
	ldrh    r0, [r4, #0x0]
	add     r5, r6, r5
	add     r5, #0x4c
	strh    r0, [r5, #0x0]
	ldrb    r5, [r3, #0x0]
	ldrb    r0, [r3, #0x2]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, r5, r0
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, r0
	bcc     branch_2256ae0
.thumb
branch_2256afa: @ 2256afa :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r1, [r3, #0x1]
	add     r0, #0x20
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x3]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, r1, r0
	cmp     r7, r0
	bcc     branch_2256aca
.thumb
branch_2256b0c: @ 2256b0c :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1d1b @ add r3, r3, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r6, #0x40
	str     r0, [sp, #0x4]
	cmp     r0, #0x11
	bcc     branch_2256aba
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2256b1e


.align 2


.word 0x2257938 @ 0x2256b20
.thumb
Function_2256b24: @ 2256b24 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	ldrh    r5, [r5, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2256b78, (=0x663)
	bl      0x2254424
	lsl     r3, r5, #2
	ldr     r0, [pc, #0x34] @ 0x2256b7c, (=0x2257939)
	ldr     r2, [pc, #0x38] @ 0x2256b80, (=0x225797c)
	ldrb    r0, [r0, r3]
	ldr     r5, [pc, #0x38] @ 0x2256b84, (=0x2257938)
	ldr     r2, [r2, r3]
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x2256b88, (=0x225793a)
	mov     r1, #0x6
	ldrb    r0, [r0, r3]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2256b8c, (=0x225793b)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x20198c0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2256b78

.word 0x663 @ 0x2256b78
.word 0x2257939 @ 0x2256b7c
.word 0x225797c @ 0x2256b80
.word 0x2257938 @ 0x2256b84
.word 0x225793a @ 0x2256b88
.word 0x225793b @ 0x2256b8c
.thumb
Function_2256b90: @ 2256b90 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	ldrh    r5, [r0, #0x0]
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	lsl     r3, r5, #2
	ldr     r0, [pc, #0x34] @ 0x2256be0, (=0x2257939)
	mov     r2, r4
	ldrb    r0, [r0, r3]
	add     r2, #0x4c
	lsl     r5, r5, #6
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2256be4, (=0x225793a)
	add     r2, r2, r5
	ldrb    r0, [r0, r3]
	ldr     r5, [pc, #0x2c] @ 0x2256be8, (=0x2257938)
	mov     r1, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x28] @ 0x2256bec, (=0x225793b)
	ldrb    r0, [r0, r3]
	ldrb    r3, [r5, r3]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x20198c0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2256be0

.word 0x2257939 @ 0x2256be0
.word 0x225793a @ 0x2256be4
.word 0x2257938 @ 0x2256be8
.word 0x225793b @ 0x2256bec
.thumb
Function_2256bf0: @ 2256bf0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r5, #0x4]
	add     r1, #0x30
	bl      Function_225726c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	pop     {r4-r6,pc}
@ 0x2256c28

.thumb
Function_2256c28: @ 2256c28 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r5, #0x4]
	add     r1, #0x30
	bl      Function_225726c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	bl      Function_2256dcc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	pop     {r4-r6,pc}
@ 0x2256c66


.align 2, 0


.thumb
Function_2256c68: @ 2256c68 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r5, #0x8]
	add     r1, #0x30
	bl      Function_225726c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	pop     {r4-r6,pc}
@ 0x2256ca0

.thumb
Function_2256ca0: @ 2256ca0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r5, #0xc]
	add     r1, #0x30
	bl      Function_225726c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	bl      Function_2256dcc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	pop     {r4-r6,pc}
@ 0x2256cde


.align 2, 0


.thumb
Function_2256ce0: @ 2256ce0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r5, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r5, #0xc]
	add     r1, #0x30
	bl      Function_225726c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	bl      Function_2256d90
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r6
	bl      Function_22569f4
	pop     {r4-r6,pc}
@ 0x2256d20

.thumb
Function_2256d20: @ 2256d20 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r2, #0x0
	mov     r1, r4
	mov     r0, #0xc
.thumb
branch_2256d32: @ 2256d32 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r1, #0x30]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r2, #0xa
	bcc     branch_2256d32
	lsl     r0, r2, #1
	mov     r1, #0xd
	add     r0, r4, r0
	strh    r1, [r0, #0x30]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x30
	bl      Function_2256e0c
	ldr     r0, [r4, #0x4]
	bl      Function_2256dcc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_22569f4
	pop     {r3-r5,pc}
@ 0x2256d64

.thumb
Function_2256d64: @ 2256d64 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	ldr     r0, [r4, #0x4]
	bl      Function_2256d90
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_22569f4
	pop     {r3-r5,pc}
@ 0x2256d8e


.align 2, 0


.thumb
Function_2256d90: @ 2256d90 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r1, #0x6
	mov     r4, r0
	bl      0x2019fe4
	ldrh    r1, [r5, #0x2]
	cmp     r1, #0x11
	bne     branch_2256dae
	mov     r0, r4
	bl      Function_2256dcc
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2256dae

.thumb
branch_2256dae: @ 2256dae :thumb
	sub     r1, #0xb
	lsl     r1, r1, #1
	add     r1, #0xf0
	str     r1, [sp, #0x0]
	mov     r1, #0x28
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	mov     r2, r1
	mov     r3, #0x20
	bl      0x2255258
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2256dcc

.thumb
Function_2256dcc: @ 2256dcc :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r1, #0x6
	bl      0x2019fe4
	mov     r1, #0x29
	str     r1, [sp, #0x0]
	mov     r1, #0x28
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	mov     r2, r1
	mov     r3, #0x20
	bl      0x2255258
	add     sp, #0xc
	pop     {pc}
@ 0x2256df0

.thumb
Function_2256df0: @ 2256df0 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22569f4
	pop     {r4,pc}
@ 0x2256e0a


.align 2, 0


.thumb
Function_2256e0c: @ 2256e0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r1, #0x6
	bl      0x2019fe4
	mov     r7, r0
	ldrh    r0, [r6, #0x0]
	mov     r1, #0x0
	cmp     r0, #0xd
	beq     branch_2256e2e
	mov     r2, r6
.thumb
branch_2256e24: @ 2256e24 :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r0, [r2, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	cmp     r0, #0xd
	bne     branch_2256e24
.thumb
branch_2256e2e: @ 2256e2e :thumb
	mov     r0, #0xa
	mov     r4, #0x0
	sub     r0, r0, r1
	str     r0, [sp, #0xc]
	beq     branch_2256e5c
	mov     r5, #0x5
.thumb
branch_2256e3a: @ 2256e3a :thumb
	mov     r0, #0x2b
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x3
	mov     r3, #0x20
	bl      0x2255258
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r4, r0
	bcc     branch_2256e3a
.thumb
branch_2256e5c: @ 2256e5c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	cmp     r4, #0xa
	bcs     branch_2256e96
	bcs     branch_2256e96
	lsl     r0, r4, #1
	add     r5, r0, #0x5
.thumb
branch_2256e6a: @ 2256e6a :thumb
	ldrh    r0, [r6, #0x0]
	mov     r1, r5
	mov     r2, #0x3
	lsl     r0, r0, #1
	add     r0, #0xa5
	str     r0, [sp, #0x0]
	mov     r0, #0x28
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r7
	mov     r3, #0x20
	bl      0x2255258
	ldr     r0, [sp, #0x10]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	str     r0, [sp, #0x10]
	cmp     r4, #0xa
	bcc     branch_2256e6a
.thumb
branch_2256e96: @ 2256e96 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256e9a


.align 2, 0


.thumb
Function_2256e9c: @ 2256e9c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x8
	mov     r1, #0xc
	bl      0x2018144
	str     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_2256ebc
	strb    r4, [r0, #0xa]
	ldr     r0, [r5, #0x0]
	bl      Function_2256ec8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2256ebc

.thumb
branch_2256ebc: @ 2256ebc :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256ec0

.thumb
Function_2256ec0: @ 2256ec0 :thumb
	ldr     r3, [pc, #0x0] @ 0x2256ec4, (=0x20181c5)
	bx      r3
@ 0x2256ec4

.word 0x20181c5 @ 0x2256ec4
.thumb
Function_2256ec8: @ 2256ec8 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	strb    r1, [r0, #0x9]
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0xb]
	bx      lr
@ 0x2256ed6


.align 2, 0


.thumb
Function_2256ed8: @ 2256ed8 :thumb
	mov     r2, r1
	mov     r3, r0
	ldmia   r2!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r3, #0x0]
	bx      lr
@ 0x2256ee6


.align 2, 0


.thumb
Function_2256ee8: @ 2256ee8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r5, r0
	mov     r3, r1
	ldrb    r1, [r5, #0x9]
	mov     r4, r2
	cmp     r1, #0x0
	bne     branch_2256f1a
	ldrb    r0, [r3, #0x9]
	cmp     r0, #0x1
	bne     branch_2256f1a
	ldmia   r3!, {r0,r1}
	add     r6, sp, #0x24
	mov     r4, r6
	stmia   r6!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r4
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	strb    r0, [r4, #0x9]
	mov     r0, r5
	bl      Function_2256f74
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2256f1a

.thumb
branch_2256f1a: @ 2256f1a :thumb
	cmp     r1, #0x1
	bne     branch_2256f42
	ldrb    r0, [r3, #0x9]
	cmp     r0, #0x0
	bne     branch_2256f42
	ldmia   r5!, {r0,r1}
	add     r6, sp, #0x18
	mov     r2, r6
	stmia   r6!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r6, #0x0]
	mov     r0, #0x0
	strb    r0, [r2, #0x9]
	mov     r0, r3
	mov     r2, r4
	bl      Function_2256f74
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2256f42

.thumb
branch_2256f42: @ 2256f42 :thumb
	mov     r1, r3
	mov     r0, r5
	add     r2, sp, #0xc
	add     r3, sp, #0x0
	bl      Function_22575ec
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	ldr     r3, [sp, #0x10]
	ldr     r0, [sp, #0x4]
	add     r1, r2, r1
	adc     r3, r0
	str     r1, [r4, #0x0]
	str     r3, [r4, #0x4]
	add     r0, sp, #0x0
	ldrb    r1, [r0, #0x14]
	strb    r1, [r4, #0x8]
	ldrb    r0, [r0, #0x15]
	strb    r0, [r4, #0x9]
	mov     r0, r4
	bl      Function_22574fc
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2256f72


.align 2, 0


.thumb
Function_2256f74: @ 2256f74 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0x9]
	mov     r6, r2
	cmp     r1, #0x0
	bne     branch_2256f8a
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x1
	beq     branch_2256f94
.thumb
branch_2256f8a: @ 2256f8a :thumb
	cmp     r1, #0x1
	bne     branch_2256fb6
	ldrb    r0, [r4, #0x9]
	cmp     r0, #0x0
	bne     branch_2256fb6
.thumb
branch_2256f94: @ 2256f94 :thumb
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x18
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	ldrb    r1, [r2, #0x9]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r2, #0x9]
	mov     r1, r2
	mov     r0, r5
	mov     r2, r6
	bl      Function_2256ee8
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x2256fb6

.thumb
branch_2256fb6: @ 2256fb6 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_22571f4
	cmp     r0, #0x0
	beq     branch_2256fcc
	mov     r0, r6
	bl      Function_2256ec8
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x2256fcc

.thumb
branch_2256fcc: @ 2256fcc :thumb
	mov     r0, r5
	mov     r1, r4
	add     r2, sp, #0xc
	add     r3, sp, #0x0
	bl      Function_22575ec
	ldr     r3, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	add     r5, sp, #0xc
	add     r4, sp, #0x0
	sub     r0, r3, r0
	sbc     r2, r1
	bcs     branch_2256fee
	mov     r1, #0x1
	b       branch_2256ff0
@ 0x2256fee

.thumb
branch_2256fee: @ 2256fee :thumb
	mov     r1, #0x0
.thumb
branch_2256ff0: @ 2256ff0 :thumb
	add     r0, sp, #0x0
	ldrb    r0, [r0, #0x15]
	eor     r0, r1
	beq     branch_2257006
	mov     r0, r5
	mov     r5, r4
	ldrb    r1, [r5, #0x9]
	mov     r4, r0
	mov     r0, #0x1
	eor     r0, r1
	b       branch_2257008
@ 0x2257006

.thumb
branch_2257006: @ 2257006 :thumb
	ldrb    r0, [r5, #0x9]
.thumb
branch_2257008: @ 2257008 :thumb
	strb    r0, [r6, #0x9]
	ldr     r2, [r5, #0x0]
	ldr     r1, [r4, #0x0]
	ldr     r3, [r5, #0x4]
	ldr     r0, [r4, #0x4]
	sub     r1, r2, r1
	sbc     r3, r0
	str     r1, [r6, #0x0]
	str     r3, [r6, #0x4]
	ldrb    r0, [r5, #0x8]
	strb    r0, [r6, #0x8]
	mov     r0, r6
	bl      Function_22574fc
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x2257028

.thumb
Function_2257028: @ 2257028 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	ldr     r2, [r6, #0x0]
	ldr     r3, [r6, #0x4]
	blx 0x20e1f1c
	str     r0, [r4, #0x0]
	str     r1, [r4, #0x4]
	ldrb    r1, [r5, #0x8]
	ldrb    r0, [r6, #0x8]
	add     r0, r1, r0
	strb    r0, [r4, #0x8]
	ldrb    r1, [r5, #0x9]
	ldrb    r0, [r6, #0x9]
	eor     r0, r1
	strb    r0, [r4, #0x9]
	mov     r0, r4
	bl      Function_22574fc
	pop     {r4-r6,pc}
@ 0x2257058

.thumb
Function_2257058: @ 2257058 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r2
	mov     r2, r1
	mov     r3, r1
	ldr     r6, [r3, #0x4]
	mov     r3, #0x0
	ldr     r2, [r2, #0x0]
	mov     r4, #0x0
	eor     r3, r6
	eor     r2, r4
	str     r1, [sp, #0x0]
	orr     r2, r3
	bne     branch_225707c
	mov     r0, #0x1
	add     sp, #0x1c
	strb    r0, [r5, #0xb]
	pop     {r4-r7,pc}
@ 0x225707c

.thumb
branch_225707c: @ 225707c :thumb
	add     r2, sp, #0x10
	add     r3, sp, #0x4
	bl      Function_22575ec
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r4, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	ldr     r0, [pc, #0xd8] @ 0x225716c, (=0x4000280)
	mov     r6, #0x2
	strh    r6, [r0, #0x0]
	mov     r6, r0
	add     r6, #0x10
	str     r2, [r6, #0x0]
	str     r1, [r6, #0x4]
	mov     r1, r0
	add     r1, #0x18
	str     r4, [r1, #0x0]
	str     r3, [r1, #0x4]
	lsr     r1, r0, #11
.thumb
branch_22570a8: @ 22570a8 :thumb
	ldrh    r2, [r0, #0x0]
	tst     r2, r1
	bne     branch_22570a8
	ldr     r0, [pc, #0xc0] @ 0x2257170, (=0x40002a0)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r1, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	strb    r0, [r5, #0x8]
	mov     r0, r5
	bl      Function_2257498
	ldr     r2, [pc, #0xa8] @ 0x225716c, (=0x4000280)
	mov     r7, r0
	lsr     r0, r2, #11
.thumb
branch_22570c8: @ 22570c8 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22570c8
	ldr     r0, [pc, #0xa4] @ 0x2257174, (=0x40002a8)
	mov     r1, #0x0
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0, #0x0]
	mov     r0, #0x0
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	beq     branch_225715c
.thumb
branch_22570e0: @ 22570e0 :thumb
	ldrb    r0, [r5, #0x8]
	add     r1, r7, #0x1
	add     r1, r1, r0
	ldrb    r0, [r5, #0xa]
	cmp     r1, r0
	bcs     branch_225715c
	ldr     r4, [sp, #0x4]
	ldr     r6, [sp, #0x8]
	ldr     r0, [pc, #0x78] @ 0x225716c, (=0x4000280)
	mov     r1, #0x2
	strh    r1, [r0, #0x0]
	mov     r0, r3
	mov     r1, r2
	mov     r2, #0xa
	mov     r3, #0x0
	blx 0x20e1f1c
	ldr     r2, [pc, #0x74] @ 0x2257178, (=0x4000290)
	mov     r3, #0x0
	str     r0, [r2, #0x0]
	str     r1, [r2, #0x4]
	add     r2, #0x8
	str     r4, [r2, #0x0]
	str     r6, [r2, #0x4]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	mov     r2, #0xa
	blx 0x20e1f1c
	str     r0, [r5, #0x0]
	ldr     r2, [pc, #0x4c] @ 0x225716c, (=0x4000280)
	str     r1, [r5, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2257122: @ 2257122 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2257122
	ldr     r0, [pc, #0x44] @ 0x2257170, (=0x40002a0)
	ldr     r2, [r5, #0x0]
	ldr     r1, [r0, #0x0]
	ldr     r3, [r5, #0x4]
	add     r1, r2, r1
	ldr     r0, [r0, #0x4]
	ldr     r2, [pc, #0x34] @ 0x225716c, (=0x4000280)
	adc     r3, r0
	str     r1, [r5, #0x0]
	str     r3, [r5, #0x4]
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	lsr     r0, r2, #11
.thumb
branch_2257144: @ 2257144 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2257144
	ldr     r0, [pc, #0x28] @ 0x2257174, (=0x40002a8)
	mov     r1, #0x0
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0, #0x0]
	mov     r0, #0x0
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	bne     branch_22570e0
.thumb
branch_225715c: @ 225715c :thumb
	add     r0, sp, #0x10
	ldrb    r1, [r0, #0x9]
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x9]
	eor     r0, r1
	strb    r0, [r5, #0x9]
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x225716c

.word 0x4000280 @ 0x225716c
.word 0x40002a0 @ 0x2257170
.word 0x40002a8 @ 0x2257174
.word 0x4000290 @ 0x2257178
.thumb
Function_225717c: @ 225717c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22574e8
	ldrb    r1, [r5, #0xa]
	cmp     r0, r1
	bcc     branch_2257190
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2257190

.thumb
branch_2257190: @ 2257190 :thumb
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	bne     branch_22571b2
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	mov     r2, #0xa
	mov     r3, #0x0
	blx 0x20e1f1c
	str     r0, [r5, #0x0]
	str     r1, [r5, #0x4]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x0
	add     r2, r2, r4
	adc     r1, r0
	str     r2, [r5, #0x0]
	str     r1, [r5, #0x4]
.thumb
branch_22571b2: @ 22571b2 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22571b6


.align 2, 0


.thumb
Function_22571b8: @ 22571b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22574e8
	ldrb    r1, [r5, #0xa]
	cmp     r0, r1
	bcc     branch_22571cc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22571cc

.thumb
branch_22571cc: @ 22571cc :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	mov     r2, #0xa
	mov     r3, #0x0
	blx 0x20e1f1c
	str     r0, [r5, #0x0]
	str     r1, [r5, #0x4]
	ldr     r2, [r5, #0x0]
	mov     r0, #0x0
	add     r2, r2, r4
	adc     r1, r0
	str     r2, [r5, #0x0]
	str     r1, [r5, #0x4]
	ldrb    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22571f2


.align 2, 0


.thumb
Function_22571f4: @ 22571f4 :thumb
	push    {r3-r6}
	ldr     r2, [r0, #0x4]
	ldr     r3, [r0, #0x0]
	ldr     r4, [r1, #0x4]
	mov     r5, r2
	eor     r5, r4
	ldr     r6, [r1, #0x0]
	mov     r4, r3
	eor     r4, r6
	orr     r4, r5
	beq     branch_2257210
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2257210

.thumb
branch_2257210: @ 2257210 :thumb
	ldrb    r5, [r0, #0x8]
	ldrb    r4, [r1, #0x8]
	cmp     r5, r4
	beq     branch_225721e
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x225721e

.thumb
branch_225721e: @ 225721e :thumb
	ldrb    r4, [r0, #0x9]
	ldrb    r0, [r1, #0x9]
	cmp     r4, r0
	beq     branch_2257238
	mov     r1, #0x0
	mov     r0, #0x0
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	beq     branch_2257238
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x2257238

.thumb
branch_2257238: @ 2257238 :thumb
	mov     r0, #0x1
	pop     {r3-r6}
	bx      lr
@ 0x225723e


.align 2, 0


.thumb
Function_2257240: @ 2257240 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldrb    r1, [r5, #0xb]
	cmp     r1, #0x0
	beq     branch_2257250
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2257250

.thumb
branch_2257250: @ 2257250 :thumb
	bl      Function_2257498
	ldrb    r1, [r5, #0x8]
	cmp     r1, #0x0
	beq     branch_225725e
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, r0, r1
.thumb
branch_225725e: @ 225725e :thumb
	cmp     r0, r4
	bls     branch_2257266
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2257266

.thumb
branch_2257266: @ 2257266 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225726a


.align 2, 0


.thumb
Function_225726c: @ 225726c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x0]
	ldrb    r0, [r0, #0xb]
	str     r1, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_2257280
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2257280

.thumb
branch_2257280: @ 2257280 :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r7, [r0, #0x4]
	ldr     r6, [r0, #0x0]
	mov     r0, #0x0
	eor     r1, r7
	eor     r0, r6
	orr     r0, r1
	bne     branch_22572d6
	ldr     r1, [sp, #0x10]
	mov     r0, r1
	add     r2, r0, #0x2
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	ldr     r1, [sp, #0x0]
	str     r2, [sp, #0x10]
	ldrb    r1, [r1, #0x8]
	cmp     r1, #0x0
	beq     branch_22572ca
	add     r1, r2, #0x2
	str     r1, [sp, #0x10]
	mov     r1, #0xa
	strh    r1, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	ldrb    r1, [r1, #0x8]
	cmp     r1, #0x0
	ble     branch_22572ca
	mov     r2, r0
.thumb
branch_22572b8: @ 22572b8 :thumb
	ldr     r1, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0x0]
	ldrb    r1, [r1, #0x8]
	cmp     r0, r1
	blt     branch_22572b8
.thumb
branch_22572ca: @ 22572ca :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, #0xd
	strh    r1, [r0, #0x0]
	add     sp, #0x20
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22572d6

.thumb
branch_22572d6: @ 22572d6 :thumb
	mov     r2, #0xa
	mov     r0, #0x1
	mov     r1, #0x0
	sub     r2, r6, r2
	mov     r12, r7
	mov     r2, r12
	sbc     r2, r1
	bcc     branch_22572fa
	ldr     r2, [pc, #0x164] @ 0x225744c, (=0x2257a58)
.thumb
branch_22572e8: @ 22572e8 :thumb
	add     r2, #0x8
	ldr     r3, [r2, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldr     r1, [r2, #0x4]
	sub     r3, r6, r3
	mov     r12, r7
	mov     r3, r12
	sbc     r3, r1
	bcs     branch_22572e8
.thumb
branch_22572fa: @ 22572fa :thumb
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0x8]
	ldrb    r1, [r1, #0x8]
	sub     r3, r1, r0
	bmi     branch_225730c
	add     r1, r3, #0x2
	add     r1, r0, r1
	str     r1, [sp, #0x8]
	b       branch_2257314
@ 0x225730c

.thumb
branch_225730c: @ 225730c :thumb
	cmp     r1, #0x0
	beq     branch_2257314
	add     r1, r0, #0x1
	str     r1, [sp, #0x8]
.thumb
branch_2257314: @ 2257314 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r4, [sp, #0x0]
	ldrb    r2, [r1, #0x9]
	ldr     r1, [sp, #0x8]
	ldrb    r4, [r4, #0xa]
	add     r1, r1, r2
	cmp     r1, r4
	bls     branch_225732a
	add     sp, #0x20
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225732a

.thumb
branch_225732a: @ 225732a :thumb
	cmp     r2, #0x1
	bne     branch_2257338
	ldr     r1, [sp, #0x10]
	mov     r2, #0xb
	strh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r1, [sp, #0x10]
.thumb
branch_2257338: @ 2257338 :thumb
	ldr     r5, [sp, #0x10]
	cmp     r3, #0x0
	blt     branch_2257362
	mov     r0, r5
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0xa
	add     r5, r0, #0x4
	strh    r1, [r0, #0x2]
	mov     r0, r3
	.hword  0x1e5b @ sub r3, r3, #0x1
	cmp     r0, #0x0
	beq     branch_22573ce
	mov     r0, #0x0
.thumb
branch_2257354: @ 2257354 :thumb
	mov     r1, r3
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1e5b @ sub r3, r3, #0x1
	cmp     r1, #0x0
	bne     branch_2257354
	b       branch_22573ce
@ 0x2257362

.thumb
branch_2257362: @ 2257362 :thumb
	neg     r1, r3
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	ble     branch_22573c0
	ldr     r4, [pc, #0xdc] @ 0x2257450, (=0x4000280)
	.hword  0x1e40 @ sub r0, r0, #0x1
	mov     lr, r0
	lsr     r3, r4, #11
	lsr     r2, r4, #11
.thumb
branch_225737a: @ 225737a :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x2257454, (=0x4000290)
	mov     r1, lr
	str     r6, [r0, #0x0]
	str     r7, [r0, #0x4]
	ldr     r0, [sp, #0x14]
	sub     r0, r1, r0
	lsl     r1, r0, #3
	ldr     r0, [pc, #0xc8] @ 0x2257458, (=0x2257a50)
	add     r6, r0, r1
	ldr     r1, [r0, r1]
	ldr     r6, [r6, #0x4]
	ldr     r0, [pc, #0xc4] @ 0x225745c, (=0x4000298)
	str     r1, [r0, #0x0]
	str     r6, [r0, #0x4]
.thumb
branch_225739a: @ 225739a :thumb
	ldrh    r0, [r4, #0x0]
	tst     r0, r3
	bne     branch_225739a
	ldr     r0, [pc, #0xbc] @ 0x2257460, (=0x40002a0)
	ldr     r0, [r0, #0x0]
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
.thumb
branch_22573a8: @ 22573a8 :thumb
	ldrh    r0, [r4, #0x0]
	tst     r0, r2
	bne     branch_22573a8
	ldr     r0, [pc, #0xb4] @ 0x2257464, (=0x40002a8)
	ldr     r1, [sp, #0x4]
	ldr     r6, [r0, #0x0]
	ldr     r7, [r0, #0x4]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, r1
	blt     branch_225737a
.thumb
branch_22573c0: @ 22573c0 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_22573ce
	mov     r0, #0xa
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
.thumb
branch_22573ce: @ 22573ce :thumb
	ldr     r0, [sp, #0x10]
	sub     r1, r5, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	ldr     r0, [sp, #0x8]
	cmp     r1, r0
	bcs     branch_2257440
	sub     r0, r0, r1
	str     r0, [sp, #0x18]
	mov     r0, #0x0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	ble     branch_2257440
	ldr     r4, [pc, #0x60] @ 0x2257450, (=0x4000280)
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0xc]
	lsr     r3, r4, #11
	lsr     r2, r4, #11
.thumb
branch_22573f6: @ 22573f6 :thumb
	mov     r0, #0x2
	strh    r0, [r4, #0x0]
	ldr     r0, [pc, #0x58] @ 0x2257454, (=0x4000290)
	ldr     r1, [sp, #0xc]
	str     r6, [r0, #0x0]
	str     r7, [r0, #0x4]
	ldr     r0, [sp, #0x1c]
	ldr     r6, [pc, #0x50] @ 0x2257458, (=0x2257a50)
	sub     r0, r1, r0
	lsl     r1, r0, #3
	ldr     r0, [pc, #0x4c] @ 0x2257458, (=0x2257a50)
	add     r0, r0, r1
	ldr     r1, [r6, r1]
	ldr     r0, [r0, #0x4]
	ldr     r6, [pc, #0x48] @ 0x225745c, (=0x4000298)
	str     r1, [r6, #0x0]
	mov     r1, r6
	str     r0, [r1, #0x4]
.thumb
branch_225741a: @ 225741a :thumb
	ldrh    r0, [r4, #0x0]
	tst     r0, r3
	bne     branch_225741a
	ldr     r0, [pc, #0x3c] @ 0x2257460, (=0x40002a0)
	ldr     r0, [r0, #0x0]
	strh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
.thumb
branch_2257428: @ 2257428 :thumb
	ldrh    r0, [r4, #0x0]
	tst     r0, r2
	bne     branch_2257428
	ldr     r0, [pc, #0x34] @ 0x2257464, (=0x40002a8)
	ldr     r1, [sp, #0x18]
	ldr     r6, [r0, #0x0]
	ldr     r7, [r0, #0x4]
	ldr     r0, [sp, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x1c]
	cmp     r0, r1
	blt     branch_22573f6
.thumb
branch_2257440: @ 2257440 :thumb
	mov     r0, #0xd
	strh    r0, [r5, #0x0]
	mov     r0, #0x1
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x225744a


.align 2


.word 0x2257a58 @ 0x225744c
.word 0x4000280 @ 0x2257450
.word 0x4000290 @ 0x2257454
.word 0x2257a50 @ 0x2257458
.word 0x4000298 @ 0x225745c
.word 0x40002a0 @ 0x2257460
.word 0x40002a8 @ 0x2257464
.thumb
Function_2257468: @ 2257468 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	lsl     r5, r2, #3
	ldr     r2, [pc, #0x1c] @ 0x2257494, (=0x2257a50)
	add     r3, r2, r5
	ldr     r2, [r2, r5]
	ldr     r3, [r3, #0x4]
	blx 0x20e1ed4
	ldrb    r2, [r4, #0x9]
	cmp     r2, #0x1
	bne     branch_2257490
	mov     r2, #0x0
	mvn     r2, r2
	mov     r3, r2
	blx 0x20e1f1c
.thumb
branch_2257490: @ 2257490 :thumb
	pop     {r3-r5,pc}
@ 0x2257492


.align 2


.word 0x2257a50 @ 0x2257494
.thumb
Function_2257498: @ 2257498 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, #0xa
	ldr     r5, [r2, #0x0]
	ldr     r6, [r2, #0x4]
	mov     r2, #0xa
	mov     r1, #0x0
	mov     r4, #0x1
	mov     r3, #0x0
	sub     r2, r5, r2
	mov     r12, r6
	mov     r2, r12
	sbc     r2, r3
	bcc     branch_22574d2
	ldr     r2, [sp, #0x0]
	ldrb    r7, [r2, #0xa]
.thumb
branch_22574ba: @ 22574ba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r7
	bhi     branch_22574d2
	mov     r2, #0xa
	mov     r3, #0x0
	blx 0x20e1f1c
	sub     r2, r5, r0
	mov     r12, r6
	mov     r2, r12
	sbc     r2, r1
	bcs     branch_22574ba
.thumb
branch_22574d2: @ 22574d2 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x8]
	cmp     r4, r0
	bls     branch_22574de
	sub     r4, r4, r0
	b       branch_22574e0
@ 0x22574de

.thumb
branch_22574de: @ 22574de :thumb
	mov     r4, #0x1
.thumb
branch_22574e0: @ 22574e0 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, #0x9]
	add     r0, r4, r0
	pop     {r3-r7,pc}
@ 0x22574e8

.thumb
Function_22574e8: @ 22574e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2257498
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x0
	beq     branch_22574fa
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, r0, r1
.thumb
branch_22574fa: @ 22574fa :thumb
	pop     {r4,pc}
@ 0x22574fc

.thumb
Function_22574fc: @ 22574fc :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2257582
	ldr     r5, [pc, #0xd4] @ 0x22575dc, (=0x4000280)
	ldr     r2, [r4, #0x0]
	mov     r3, r5
	ldr     r1, [r4, #0x4]
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	add     r3, #0x10
	str     r2, [r3, #0x0]
	mov     r0, r5
	str     r1, [r3, #0x4]
	add     r0, #0x18
	mov     r2, #0xa
	mov     r1, #0x0
	str     r2, [r0, #0x0]
	str     r1, [r0, #0x4]
	mov     r1, r4
	mov     r12, r0
	add     r1, #0x8
	b       branch_2257564
@ 0x225752c

.thumb
branch_225752c: @ 225752c :thumb
	mov     r0, #0x2
	lsl     r0, r0, #14
.thumb
branch_2257530: @ 2257530 :thumb
	ldrh    r2, [r5, #0x0]
	tst     r2, r0
	bne     branch_2257530
	ldr     r0, [pc, #0xa8] @ 0x22575e0, (=0x40002a0)
	ldr     r2, [pc, #0xa4] @ 0x22575e0, (=0x40002a0)
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x4]
	str     r0, [r4, #0x0]
	str     r2, [r4, #0x4]
	ldr     r6, [r4, #0x0]
	mov     r0, #0x1
	strh    r0, [r5, #0x0]
	str     r6, [r3, #0x0]
	str     r2, [r3, #0x4]
	mov     r2, #0xa
	mov     r0, r12
	str     r2, [r0, #0x0]
	mov     r2, #0x0
	mov     r0, r12
	str     r2, [r0, #0x4]
	ldrb    r0, [r1, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r1, #0x0]
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2257582
.thumb
branch_2257564: @ 2257564 :thumb
	ldrh    r2, [r5, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	tst     r0, r2
	bne     branch_2257564
	ldr     r0, [pc, #0x74] @ 0x22575e4, (=0x40002a8)
	mov     r7, #0x0
	ldr     r6, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	mov     r0, #0x0
	eor     r0, r2
	mov     r2, r6
	eor     r2, r7
	orr     r0, r2
	beq     branch_225752c
.thumb
branch_2257582: @ 2257582 :thumb
	mov     r0, r4
	bl      Function_2257498
	ldrb    r2, [r4, #0x8]
	cmp     r2, #0x0
	beq     branch_22575d8
	add     r1, r2, #0x1
	add     r1, r0, r1
	ldrb    r0, [r4, #0xa]
	cmp     r1, r0
	bls     branch_22575d8
	sub     r1, r1, r0
	cmp     r1, r2
	bhi     branch_22575d8
	ldr     r5, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	ldr     r0, [pc, #0x38] @ 0x22575dc, (=0x4000280)
	mov     r2, #0x1
	strh    r2, [r0, #0x0]
	mov     r2, r0
	add     r2, #0x10
	str     r5, [r2, #0x0]
	str     r3, [r2, #0x4]
	ldr     r2, [pc, #0x34] @ 0x22575e8, (=0x2257a50)
	lsl     r3, r1, #3
	ldr     r5, [r2, r3]
	mov     r2, r0
	add     r2, #0x18
	mov     r3, #0x0
	str     r5, [r2, #0x0]
	str     r3, [r2, #0x4]
	lsr     r2, r0, #11
.thumb
branch_22575c2: @ 22575c2 :thumb
	ldrh    r3, [r0, #0x0]
	tst     r3, r2
	bne     branch_22575c2
	ldr     r0, [pc, #0x14] @ 0x22575e0, (=0x40002a0)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r2, [r4, #0x0]
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x8]
	sub     r0, r0, r1
	strb    r0, [r4, #0x8]
.thumb
branch_22575d8: @ 22575d8 :thumb
	pop     {r3-r7,pc}
@ 0x22575da


.align 2


.word 0x4000280 @ 0x22575dc
.word 0x40002a0 @ 0x22575e0
.word 0x40002a8 @ 0x22575e4
.word 0x2257a50 @ 0x22575e8
.thumb
Function_22575ec: @ 22575ec :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	ldmia   r6!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r4, r3
	str     r0, [r2, #0x0]
	ldmia   r7!, {r0,r1}
	mov     r2, r4
	stmia   r2!, {r0,r1}
	ldr     r0, [r7, #0x0]
	str     r0, [r2, #0x0]
	ldrb    r1, [r5, #0x8]
	ldrb    r0, [r4, #0x8]
	cmp     r1, r0
	bcs     branch_2257616
	mov     r0, r5
	mov     r5, r4
	mov     r4, r0
.thumb
branch_2257616: @ 2257616 :thumb
	ldrb    r3, [r5, #0x8]
	ldrb    r2, [r4, #0x8]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	sub     r2, r3, r2
	lsl     r6, r2, #3
	ldr     r2, [pc, #0x14] @ 0x2257638, (=0x2257a50)
	add     r3, r2, r6
	ldr     r2, [r2, r6]
	ldr     r3, [r3, #0x4]
	blx 0x20e1f1c
	str     r0, [r4, #0x0]
	str     r1, [r4, #0x4]
	ldrb    r0, [r5, #0x8]
	strb    r0, [r4, #0x8]
	pop     {r3-r7,pc}
@ 0x2257638

.word 0x2257a50 @ 0x2257638



Unknown_225763c: @ 0x225763c
.incbin "./baserom/overlay/overlay_0028.bin", 0x147c, 0x2257ac0 - 0x225763c


@end 0x2257ac0




