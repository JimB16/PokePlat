

.section .iwram27, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256359)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256359 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x68
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256212
	ldr     r2, [sp, #0x0]
	mov     r1, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x20] @ 0x2256218, (=0x22562fd)
	mov     r1, r4
	mov     r2, #0x1
	str     r6, [r4, #0x64]
	bl      0x200d9e8
	cmp     r0, #0x0
	beq     branch_2256212
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


.word 0x22562fd @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	str     r2, [r5, #0x8]
	mov     r0, r2
	add     r1, #0x38
	mov     r2, #0x24
	bl      0x2099d7c
	cmp     r0, #0x0
	beq     branch_2256270
	mov     r0, r5
	add     r0, #0x4c
	ldmia   r0!, {r2,r3}
	mov     r0, r5
	add     r0, #0xc
	stmia   r0!, {r2,r3}
	mov     r0, r5
	add     r0, #0x54
	ldmia   r0!, {r2,r3}
	mov     r0, r5
	add     r0, #0x14
	stmia   r0!, {r2,r3}
	ldr     r0, [r5, #0x3c]
	str     r0, [r5, #0x30]
	ldr     r0, [r5, #0x40]
	str     r0, [r5, #0x2c]
	ldr     r0, [r5, #0x44]
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x48]
	str     r0, [r5, #0x24]
	ldr     r0, [r5, #0x38]
	str     r0, [r5, #0x1c]
	cmp     r0, #0x0
	beq     branch_225626a
	mov     r0, #0x2
	str     r0, [r5, #0x34]
	b       branch_225627a
@ 0x225626a

.thumb
branch_225626a: @ 225626a :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x34]
	b       branch_225627a
@ 0x2256270

.thumb
branch_2256270: @ 2256270 :thumb
	mov     r0, r5
	bl      Function_2256664
	mov     r0, #0x0
	str     r0, [r5, #0x34]
.thumb
branch_225627a: @ 225627a :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x60
	add     r1, #0x1c
	mov     r2, r4
	bl      Function_225680c
	cmp     r0, #0x0
	beq     branch_22562a6
	mov     r1, #0x0
	strb    r1, [r5, #0x0]
	strb    r1, [r5, #0x1]
	ldrb    r0, [r5, #0x0]
	strb    r0, [r5, #0x3]
	mov     r0, r5
	strb    r1, [r5, #0x2]
	bl      Function_2256608
	cmp     r0, #0x0
	beq     branch_22562a6
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22562a6

.thumb
branch_22562a6: @ 22562a6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22562aa


.align 2, 0


.thumb
Function_22562ac: @ 22562ac :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc
	ldmia   r0!, {r2,r3}
	mov     r0, r4
	add     r0, #0x4c
	stmia   r0!, {r2,r3}
	mov     r0, r4
	add     r0, #0x14
	ldmia   r0!, {r2,r3}
	mov     r0, r4
	add     r0, #0x54
	stmia   r0!, {r2,r3}
	ldr     r0, [r4, #0x30]
	mov     r1, r4
	str     r0, [r4, #0x3c]
	ldr     r0, [r4, #0x2c]
	add     r1, #0x38
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x28]
	mov     r2, #0x24
	str     r0, [r4, #0x44]
	ldr     r0, [r4, #0x24]
	str     r0, [r4, #0x48]
	ldr     r0, [r4, #0x1c]
	str     r0, [r4, #0x38]
	ldr     r0, [r4, #0x8]
	bl      0x2099d54
	mov     r0, r4
	bl      Function_2256654
	ldr     r0, [r4, #0x60]
	bl      Function_2256890
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562fa


.align 2, 0


.thumb
Function_22562fc: @ 22562fc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x6
	bcs     branch_2256352
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_225631e
	cmp     r1, #0x5
	beq     branch_225631e
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2256360
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
.thumb
branch_225631e: @ 225631e :thumb
	ldr     r0, [r4, #0x64]
	ldr     r1, [r4, #0x5c]
	bl      0x2254518
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x1c
	bl      Function_22566d8
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256354, (=0x2256f9c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256352
	mov     r0, r4
	bl      Function_22562ac
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x64]
	bl      0x2254260
.thumb
branch_2256352: @ 2256352 :thumb
	pop     {r3-r5,pc}
@ 0x2256354

.word 0x2256f9c @ 0x2256354
.thumb
Function_2256358: @ 2256358 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225635e


.align 2, 0


.thumb
Function_2256360: @ 2256360 :thumb
	ldrb    r2, [r0, #0x0]
	strb    r2, [r0, #0x3]
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_225636e
	strb    r1, [r0, #0x0]
	b       branch_2256376
@ 0x225636e

.thumb
branch_225636e: @ 225636e :thumb
	mov     r1, #0x5
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
.thumb
branch_2256376: @ 2256376 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225637c

.thumb
Function_225637c: @ 225637c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225638c
	cmp     r0, #0x1
	beq     branch_225639c
	b       branch_22563c6
@ 0x225638c

.thumb
branch_225638c: @ 225638c :thumb
	ldr     r0, [r4, #0x60]
	mov     r1, #0x0
	bl      Function_22569c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563c6
@ 0x225639c

.thumb
branch_225639c: @ 225639c :thumb
	ldr     r0, [r4, #0x60]
	mov     r1, #0x0
	bl      Function_22569ec
	cmp     r0, #0x0
	beq     branch_22563c6
	ldr     r0, [r4, #0x64]
	bl      0x225424c
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	beq     branch_22563be
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256360
	b       branch_22563c6
@ 0x22563be

.thumb
branch_22563be: @ 22563be :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256360
.thumb
branch_22563c6: @ 22563c6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563ca


.align 2, 0


.thumb
Function_22563cc: @ 22563cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563dc
	cmp     r0, #0x1
	beq     branch_22563f4
	b       branch_2256448
@ 0x22563dc

.thumb
branch_22563dc: @ 22563dc :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_2256448
	mov     r1, #0x1
	str     r1, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	bl      Function_22569c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256448
@ 0x22563f4

.thumb
branch_22563f4: @ 22563f4 :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x2
	beq     branch_2256404
	cmp     r0, #0x3
	beq     branch_2256418
	cmp     r0, #0x5
	beq     branch_2256434
	b       branch_2256448
@ 0x2256404

.thumb
branch_2256404: @ 2256404 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256448
@ 0x2256418

.thumb
branch_2256418: @ 2256418 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	bl      Function_2256680
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256360
	b       branch_2256448
@ 0x2256434

.thumb
branch_2256434: @ 2256434 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2256360
.thumb
branch_2256448: @ 2256448 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225644c

.thumb
Function_225644c: @ 225644c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_225645c
	cmp     r1, #0x1
	beq     branch_225647a
	b       branch_22564ca
@ 0x225645c

.thumb
branch_225645c: @ 225645c :thumb
	ldrb    r1, [r4, #0x4]
	cmp     r1, #0x1
	bne     branch_22564ca
	mov     r1, #0x1
	str     r1, [r4, #0x34]
	bl      Function_22566c4
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22564ca
@ 0x225647a

.thumb
branch_225647a: @ 225647a :thumb
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x2
	beq     branch_225648a
	cmp     r0, #0x3
	beq     branch_22564a0
	cmp     r0, #0x5
	beq     branch_22564b6
	b       branch_22564ca
@ 0x225648a

.thumb
branch_225648a: @ 225648a :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256360
	b       branch_22564ca
@ 0x22564a0

.thumb
branch_22564a0: @ 22564a0 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256360
	b       branch_22564ca
@ 0x22564b6

.thumb
branch_22564b6: @ 22564b6 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2256360
.thumb
branch_22564ca: @ 22564ca :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564ce


.align 2, 0


.thumb
Function_22564d0: @ 22564d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x4]
	cmp     r1, #0x2
	beq     branch_2256504
	cmp     r1, #0x3
	beq     branch_22564e4
	cmp     r1, #0x6
	beq     branch_225651a
	b       branch_225652e
@ 0x22564e4

.thumb
branch_22564e4: @ 22564e4 :thumb
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x1
	bne     branch_2256504
	bl      Function_2256680
	mov     r0, #0x2
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256360
	b       branch_225652e
@ 0x2256504

.thumb
branch_2256504: @ 2256504 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256360
	b       branch_225652e
@ 0x225651a

.thumb
branch_225651a: @ 225651a :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2256360
.thumb
branch_225652e: @ 225652e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256532


.align 2, 0


.thumb
Function_2256534: @ 2256534 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x3
	bhi     branch_22565ca
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225654a

Jumppoints_225654a:
.hword branch_2256552 - Jumppoints_225654a - 2
.hword branch_225655c - Jumppoints_225654a - 2
.hword branch_2256580 - Jumppoints_225654a - 2
.hword branch_22565aa - Jumppoints_225654a - 2
.thumb
branch_2256552: @ 2256552 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_225655c: @ 225655c :thumb
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x5a
	bcc     branch_22565ca
	mov     r0, #0x5
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22565ca
@ 0x2256580

.thumb
branch_2256580: @ 2256580 :thumb
	ldrh    r0, [r4, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x6]
	ldrh    r0, [r4, #0x6]
	cmp     r0, #0x3c
	bcc     branch_22565ca
	mov     r0, #0x6
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	bl      Function_2256664
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22565ca
@ 0x22565aa

.thumb
branch_22565aa: @ 22565aa :thumb
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569ec
	cmp     r0, #0x0
	beq     branch_22565ca
	mov     r0, #0x0
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_22569c8
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256360
.thumb
branch_22565ca: @ 22565ca :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22565ce


.align 2, 0


.thumb
Function_22565d0: @ 22565d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22565e0
	cmp     r0, #0x1
	beq     branch_22565f4
	b       branch_2256602
@ 0x22565e0

.thumb
branch_22565e0: @ 22565e0 :thumb
	mov     r0, #0x7
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x60]
	mov     r1, #0x3
	bl      Function_22569c8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256602
@ 0x22565f4

.thumb
branch_22565f4: @ 22565f4 :thumb
	ldr     r0, [r4, #0x60]
	bl      Function_22569f8
	cmp     r0, #0x0
	beq     branch_2256602
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256602

.thumb
branch_2256602: @ 2256602 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256606


.align 2, 0


.thumb
Function_2256608: @ 2256608 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x225664c, (=Unknown_2256f98)
	ldr     r2, [pc, #0x38] @ 0x2256650, (=0x2256661)
	mov     r1, #0x1
	mov     r3, r4
	bl      0x2255acc
	str     r0, [r4, #0x5c]
	cmp     r0, #0x0
	beq     branch_2256644
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, #0xf
	bl      0x2255c48
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x4b
	bl      0x2255c48
	mov     r0, #0x0
	strb    r0, [r4, #0x4]
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x2256644

.thumb
branch_2256644: @ 2256644 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x225664a

.align 2
.word Unknown_2256f98 @ 0x225664c
.word Function_2256660+1 @ =0x2256661, 0x2256650



.thumb
Function_2256654: @ 2256654 :thumb
	ldr     r3, [pc, #0x4] @ 0x225665c, (=0x2255b35)
	ldr     r0, [r0, #0x5c]
	bx      r3
@ 0x225665a

.align 2
.word 0x2255b35 @ 0x225665c



.thumb
Function_2256660: @ 2256660 :thumb
	strb    r1, [r3, #0x4]
	bx      lr
@ 0x2256664

.thumb
Function_2256664: @ 2256664 :thumb
	mov     r2, #0x0
	str     r2, [r0, #0x1c]
	mov     r1, #0x1
	str     r1, [r0, #0x20]
	str     r2, [r0, #0x24]
	str     r2, [r0, #0x28]
	str     r2, [r0, #0x2c]
	str     r2, [r0, #0x30]
	str     r2, [r0, #0xc]
	str     r2, [r0, #0x10]
	str     r2, [r0, #0x14]
	str     r2, [r0, #0x18]
	bx      lr
@ 0x225667e


.align 2, 0


.thumb
Function_2256680: @ 2256680 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r3, [r4, #0xc]
	mov     r0, #0x0
	ldr     r2, [r4, #0x10]
	mov     r1, #0x0
	eor     r1, r2
	eor     r0, r3
	orr     r0, r1
	beq     branch_22566b2
	bl      0x202293c
	mov     r5, r4
	add     r5, #0xc
	ldr     r7, [r4, #0x14]
	ldr     r2, [r4, #0xc]
	ldr     r6, [r4, #0x18]
	sub     r0, r0, r7
	sbc     r1, r6
	ldr     r3, [r5, #0x4]
	add     r0, r2, r0
	adc     r3, r1
	str     r0, [r4, #0xc]
	str     r3, [r5, #0x4]
	b       branch_22566ba
@ 0x22566b2

.thumb
branch_22566b2: @ 22566b2 :thumb
	bl      0x202293c
	str     r0, [r4, #0xc]
	str     r1, [r4, #0x10]
.thumb
branch_22566ba: @ 22566ba :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	pop     {r3-r7,pc}
@ 0x22566c4

.thumb
Function_22566c4: @ 22566c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x202293c
	str     r0, [r4, #0x14]
	str     r1, [r4, #0x18]
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x22566d6


.align 2, 0


.thumb
Function_22566d8: @ 22566d8 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_22566e6
	b       branch_22567fc
@ 0x22566e6

.thumb
branch_22566e6: @ 22566e6 :thumb
	bl      0x202293c
	ldr     r3, [r5, #0xc]
	ldr     r2, [r5, #0x10]
	sub     r0, r0, r3
	sbc     r1, r2
	bl      0x2022944
	ldr     r2, [pc, #0x108] @ 0x2256800, (=0x4000280)
	mov     r3, #0x1
	strh    r3, [r2, #0x0]
	mov     r3, r2
	add     r3, #0x10
	str     r0, [r3, #0x0]
	str     r1, [r3, #0x4]
	mov     r3, #0xfa
	mov     r0, r2
	lsl     r3, r3, #2
	add     r0, #0x18
	mov     r1, #0x0
	str     r3, [r0, #0x0]
	str     r1, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256714: @ 2256714 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256714
	ldr     r0, [pc, #0xe8] @ 0x2256804, (=0x40002a0)
	mov     r3, r0
	ldr     r6, [r0, #0x0]
	ldr     r5, [r0, #0x4]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_2256726: @ 2256726 :thumb
	ldrh    r1, [r3, #0x0]
	tst     r1, r0
	bne     branch_2256726
	ldr     r2, [pc, #0xd8] @ 0x2256808, (=0x40002a8)
	mov     r0, #0x1
	ldr     r1, [r2, #0x0]
	ldr     r7, [r2, #0x4]
	strh    r0, [r3, #0x0]
	mov     r0, r2
	sub     r0, #0x18
	str     r1, [r0, #0x0]
	str     r7, [r0, #0x4]
	mov     r1, #0xa
	sub     r2, #0x10
	str     r1, [r2, #0x0]
	mov     r0, #0x0
	ldr     r1, [pc, #0xb8] @ 0x2256800, (=0x4000280)
	str     r0, [r2, #0x4]
	lsr     r0, r1, #11
.thumb
branch_225674c: @ 225674c :thumb
	ldrh    r2, [r1, #0x0]
	tst     r2, r0
	bne     branch_225674c
	ldr     r0, [pc, #0xb0] @ 0x2256804, (=0x40002a0)
	ldr     r2, [r0, #0x0]
	str     r2, [r4, #0x8]
	mov     r2, #0x1
	strh    r2, [r1, #0x0]
	mov     r1, r0
	sub     r1, #0x10
	str     r6, [r1, #0x0]
	str     r5, [r1, #0x4]
	mov     r2, #0x3c
	sub     r0, #0x8
	str     r2, [r0, #0x0]
	mov     r1, #0x0
	ldr     r2, [pc, #0x90] @ 0x2256800, (=0x4000280)
	str     r1, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256772: @ 2256772 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256772
	ldr     r0, [pc, #0x88] @ 0x2256804, (=0x40002a0)
	mov     r1, r0
	ldr     r3, [r0, #0x0]
	ldr     r2, [r0, #0x4]
	sub     r1, #0x20
	lsr     r0, r0, #11
.thumb
branch_2256784: @ 2256784 :thumb
	ldrh    r5, [r1, #0x0]
	tst     r5, r0
	bne     branch_2256784
	ldr     r0, [pc, #0x7c] @ 0x2256808, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	str     r5, [r4, #0xc]
	mov     r5, #0x1
	strh    r5, [r1, #0x0]
	mov     r1, r0
	sub     r1, #0x18
	str     r3, [r1, #0x0]
	str     r2, [r1, #0x4]
	mov     r2, #0x3c
	sub     r0, #0x10
	str     r2, [r0, #0x0]
	mov     r1, #0x0
	ldr     r2, [pc, #0x58] @ 0x2256800, (=0x4000280)
	str     r1, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_22567aa: @ 22567aa :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22567aa
	ldr     r0, [pc, #0x50] @ 0x2256804, (=0x40002a0)
	mov     r2, r0
	ldr     r5, [r0, #0x0]
	ldr     r3, [r0, #0x4]
	sub     r2, #0x20
	lsr     r0, r0, #11
.thumb
branch_22567bc: @ 22567bc :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22567bc
	ldr     r1, [pc, #0x44] @ 0x2256808, (=0x40002a8)
	mov     r6, #0x18
	ldr     r0, [r1, #0x0]
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	sub     r6, r5, r6
	mov     r12, r3
	mov     r6, r12
	sbc     r6, r0
	bcc     branch_22567fa
	mov     r0, #0x1
	strh    r0, [r2, #0x0]
	mov     r0, r1
	sub     r0, #0x18
	str     r5, [r0, #0x0]
	str     r3, [r0, #0x4]
	mov     r2, #0x18
	sub     r1, #0x10
	str     r2, [r1, #0x0]
	mov     r0, #0x0
	ldr     r2, [pc, #0x14] @ 0x2256800, (=0x4000280)
	str     r0, [r1, #0x4]
	lsr     r0, r2, #11
.thumb
branch_22567f0: @ 22567f0 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22567f0
	ldr     r0, [pc, #0x10] @ 0x2256808, (=0x40002a8)
	ldr     r5, [r0, #0x0]
.thumb
branch_22567fa: @ 22567fa :thumb
	str     r5, [r4, #0x14]
.thumb
branch_22567fc: @ 22567fc :thumb
	pop     {r3-r7,pc}
@ 0x22567fe


.align 2


.word 0x4000280 @ 0x2256800
.word 0x40002a0 @ 0x2256804
.word 0x40002a8 @ 0x2256808
.thumb
Function_225680c: @ 225680c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x88
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256888
	str     r6, [r4, #0x0]
	bl      0x2254664
	str     r0, [r4, #0x5c]
	mov     r0, #0x8
	bl      0x2018340
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_225683a
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x225683a

.thumb
branch_225683a: @ 225683a :thumb
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x34
	mov     r1, #0xc
	mov     r2, #0x12
	mov     r3, #0x13
	bl      0x2255958
	cmp     r0, #0x0
	beq     branch_2256888
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      0x2255958
	cmp     r0, #0x0
	beq     branch_2256880
	mov     r0, r4
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x84
	str     r1, [r0, #0x0]
	add     sp, #0x4
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2256880

.thumb
branch_2256880: @ 2256880 :thumb
	add     r4, #0x34
	mov     r0, r4
	bl      0x22559b0
.thumb
branch_2256888: @ 2256888 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225688e


.align 2, 0


.thumb
Function_2256890: @ 2256890 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22568a6
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_22568a0
	bl      free
.thumb
branch_22568a0: @ 22568a0 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_22568a6: @ 22568a6 :thumb
	pop     {r4,pc}
@ 0x22568a8

.thumb
Function_22568a8: @ 22568a8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22568b0, (=0x22568b5)
	mov     r0, r1
	bx      r3
@ 0x22568ae


.align 2


.word 0x22568b5 @ 0x22568b0
.thumb
Function_22568b4: @ 22568b4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x100] @ 0x22569bc, (=0x4000280)
	ldr     r0, [r0, #0x14]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_22568d0: @ 22568d0 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22568d0
	ldr     r0, [pc, #0xe8] @ 0x22569c0, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_22568e0: @ 22568e0 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_22568e0
	ldr     r0, [pc, #0xdc] @ 0x22569c4, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x60]
	bl      0x22558c4
	ldr     r0, [r4, #0x64]
	mov     r1, r5
	bl      0x22558c4
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0xc0] @ 0x22569bc, (=0x4000280)
	ldr     r0, [r0, #0x10]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256910: @ 2256910 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256910
	ldr     r0, [pc, #0xa8] @ 0x22569c0, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_2256920: @ 2256920 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_2256920
	ldr     r0, [pc, #0x9c] @ 0x22569c4, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x68]
	bl      0x22558c4
	ldr     r0, [r4, #0x6c]
	mov     r1, r5
	bl      0x22558c4
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x80] @ 0x22569bc, (=0x4000280)
	ldr     r0, [r0, #0xc]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256950: @ 2256950 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256950
	ldr     r0, [pc, #0x68] @ 0x22569c0, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_2256960: @ 2256960 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_2256960
	ldr     r0, [pc, #0x5c] @ 0x22569c4, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x70]
	bl      0x22558c4
	ldr     r0, [r4, #0x74]
	mov     r1, r5
	bl      0x22558c4
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x40] @ 0x22569bc, (=0x4000280)
	ldr     r0, [r0, #0x8]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256990: @ 2256990 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256990
	ldr     r0, [pc, #0x28] @ 0x22569c0, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_22569a0: @ 22569a0 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_22569a0
	ldr     r0, [pc, #0x1c] @ 0x22569c4, (=0x40002a8)
	ldr     r5, [r0, #0x0]
	ldr     r0, [r4, #0x78]
	bl      0x22558c4
	ldr     r0, [r4, #0x7c]
	mov     r1, r5
	bl      0x22558c4
	pop     {r3-r5,pc}
@ 0x22569ba


.align 2


.word 0x4000280 @ 0x22569bc
.word 0x40002a0 @ 0x22569c0
.word 0x40002a8 @ 0x22569c4
.thumb
Function_22569c8: @ 22569c8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22569e8, (=0x2256ff0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22569e6


.align 2


.word 0x2256ff0 @ 0x22569e8
.thumb
Function_22569ec: @ 22569ec :thumb
	ldr     r3, [pc, #0x4] @ 0x22569f4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22569f2


.align 2


.word 0x2255131 @ 0x22569f4
.thumb
Function_22569f8: @ 22569f8 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256a00, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22569fe


.align 2


.word 0x2255155 @ 0x2256a00
.thumb
Function_2256a04: @ 2256a04 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256a16


.align 2, 0


.thumb
Function_2256a18: @ 2256a18 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r1
	mov     r0, r7
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xb0] @ 0x2256adc, (=0x2256fd4)
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
	mov     r1, #0x15
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
	mov     r1, #0x14
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r7
	bl      0x225523c
	mov     r4, r0
	mov     r0, r7
	bl      0x2255240
	mov     r6, r0
	mov     r0, r4
	bl      Function_2256aec
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256b24
	ldr     r0, [pc, #0x48] @ 0x2256ae0, (=0x22568a9)
	mov     r1, r5
	mov     r2, #0x3
	bl      0x200d9e8
	add     r5, #0x84
	str     r0, [r5, #0x0]
	mov     r0, r4
	bl      Function_22568b4
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_2256ab6
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22569c8
.thumb
branch_2256ab6: @ 2256ab6 :thumb
	ldr     r1, [pc, #0x2c] @ 0x2256ae4, (=0x4001000)
	ldr     r0, [pc, #0x2c] @ 0x2256ae8, (=0xffffe0ff)
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
	mov     r0, r7
	bl      Function_2256a04
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256ada


.align 2


.word 0x2256fd4 @ 0x2256adc
.word Function_22568a8+1 @ =0x22568a9, 0x2256ae0
.word 0x4001000 @ 0x2256ae4
.word 0xffffe0ff @ 0x2256ae8
.thumb
Function_2256aec: @ 2256aec :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x2
	bl      0x2006ec0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0xa
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x16
	lsl     r3, r3, #8
	bl      0x2006ec0
	mov     r0, #0x1
	add     sp, #0xc
	pop     {pc}
@ 0x2256b22


.align 2, 0


.thumb
Function_2256b24: @ 2256b24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	str     r0, [sp, #0x4]
	add     r0, #0x48
	ldr     r4, [pc, #0x4c] @ 0x2256b7c, (=0x2257020)
	str     r1, [sp, #0x0]
	mov     r6, #0x0
	mov     r5, r7
	str     r0, [sp, #0x4]
.thumb
branch_2256b38: @ 2256b38 :thumb
	ldr     r0, [r7, #0x5c]
	ldr     r2, [sp, #0x4]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x60]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x7
	bls     branch_2256b38
	ldr     r2, [pc, #0x2c] @ 0x2256b7c, (=0x2257020)
	lsl     r1, r6, #4
	add     r1, r2, r1
	mov     r2, r7
	ldr     r0, [r7, #0x5c]
	add     r2, #0x34
	bl      0x2255810
	mov     r1, r7
	add     r1, #0x80
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256b76
	add     r7, #0x80
	ldr     r0, [r7, #0x0]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_2256b76: @ 2256b76 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2256b7a


.align 2


.word 0x2257020 @ 0x2256b7c
.thumb
Function_2256b80: @ 2256b80 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	mov     r0, r5
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x14] @ 0x2256bac, (=0x2256fb8)
	ldr     r1, [r1, r2]
	bl      0x201cecc
	ldr     r2, [r4, #0x18]
	mov     r0, r5
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x8] @ 0x2256bac, (=0x2256fb8)
	mov     r1, r6
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r4-r6,pc}
@ 0x2256bac

.word 0x2256fb8 @ 0x2256bac
.thumb
Function_2256bb0: @ 2256bb0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_2256a04
	pop     {r3-r5,pc}
@ 0x2256be6


.align 2, 0


.thumb
Function_2256be8: @ 2256be8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x2255914
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xb
	bl      0x22558c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r0, [pc, #0xc] @ 0x2256c28, (=0x669)
	bl      0x2254424
	mov     r0, r5
	bl      Function_2256a04
	pop     {r3-r5,pc}
@ 0x2256c28

.word 0x669 @ 0x2256c28
.thumb
Function_2256c2c: @ 2256c2c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r6, #0x18]
	cmp     r0, #0x2
	beq     branch_2256c4e
	mov     r0, r5
	bl      Function_2256a04
	pop     {r4-r6,pc}
@ 0x2256c4e

.thumb
branch_2256c4e: @ 2256c4e :thumb
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256c5c
	cmp     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256c5c

.thumb
branch_2256c5c: @ 2256c5c :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	bl      0x22558c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256c80

.thumb
Function_2256c80: @ 2256c80 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r7, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r0, r6
	bl      0x2255244
	mov     r5, r0
	ldr     r0, [r7, #0x18]
	cmp     r0, #0x3
	beq     branch_2256caa
	mov     r0, r6
	bl      Function_2256a04
	pop     {r3-r7,pc}
@ 0x2256caa

.thumb
branch_2256caa: @ 2256caa :thumb
	mov     r0, r6
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256cba
	cmp     r0, #0x1
	beq     branch_2256cd8
	pop     {r3-r7,pc}
@ 0x2256cba

.thumb
branch_2256cba: @ 2256cba :thumb
	mov     r0, #0x6
	strh    r0, [r5, #0x0]
	mov     r0, #0x2
	strb    r0, [r5, #0x3]
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xd
	bl      0x22558c4
	mov     r0, r6
	bl      0x225524c
.thumb
branch_2256cd8: @ 2256cd8 :thumb
	mov     r0, r5
	mov     r1, #0x6
	bl      Function_2256e90
	cmp     r0, #0x0
	beq     branch_2256cfa
	ldr     r0, [pc, #0x14] @ 0x2256cfc, (=0x669)
	bl      0x2254424
	ldrb    r1, [r5, #0x3]
	ldr     r0, [r4, #0x4]
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
.thumb
branch_2256cfa: @ 2256cfa :thumb
	pop     {r3-r7,pc}
@ 0x2256cfc

.word 0x669 @ 0x2256cfc
.thumb
Function_2256d00: @ 2256d00 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r7, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r0, r6
	bl      0x2255244
	mov     r5, r0
	ldr     r0, [r7, #0x18]
	cmp     r0, #0x4
	beq     branch_2256d2a
	mov     r0, r6
	bl      Function_2256a04
	pop     {r3-r7,pc}
@ 0x2256d2a

.thumb
branch_2256d2a: @ 2256d2a :thumb
	mov     r0, r6
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256d3a
	cmp     r0, #0x1
	beq     branch_2256d58
	pop     {r3-r7,pc}
@ 0x2256d3a

.thumb
branch_2256d3a: @ 2256d3a :thumb
	mov     r0, #0x3
	strh    r0, [r5, #0x0]
	mov     r0, #0x2
	strb    r0, [r5, #0x3]
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xe
	bl      0x22558c4
	mov     r0, r6
	bl      0x225524c
.thumb
branch_2256d58: @ 2256d58 :thumb
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2256e90
	cmp     r0, #0x0
	beq     branch_2256d7a
	ldr     r0, [pc, #0x14] @ 0x2256d7c, (=0x669)
	bl      0x2254424
	ldrb    r1, [r5, #0x3]
	ldr     r0, [r4, #0x4]
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
.thumb
branch_2256d7a: @ 2256d7a :thumb
	pop     {r3-r7,pc}
@ 0x2256d7c

.word 0x669 @ 0x2256d7c
.thumb
Function_2256d80: @ 2256d80 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x2255240
	mov     r7, r0
	mov     r0, r6
	bl      0x225523c
	mov     r4, r0
	mov     r0, r6
	bl      0x2255244
	mov     r5, r0
	ldr     r0, [r7, #0x18]
	cmp     r0, #0x5
	beq     branch_2256daa
	mov     r0, r6
	bl      Function_2256a04
	pop     {r3-r7,pc}
@ 0x2256daa

.thumb
branch_2256daa: @ 2256daa :thumb
	mov     r0, r6
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256dba
	cmp     r0, #0x1
	beq     branch_2256de8
	pop     {r3-r7,pc}
@ 0x2256dba

.thumb
branch_2256dba: @ 2256dba :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	strb    r0, [r5, #0x2]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      0x22558c4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r0, [pc, #0x38] @ 0x2256e18, (=0x666)
	bl      0x2254424
	mov     r0, r6
	bl      0x225524c
.thumb
branch_2256de8: @ 2256de8 :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x0]
	ldrh    r0, [r5, #0x0]
	cmp     r0, #0x2
	bls     branch_2256e16
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldrb    r1, [r5, #0x2]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x2]
	.hword  0x1d40 @ add r0, r0, #0x5
	strb    r0, [r5, #0x3]
	ldrb    r1, [r5, #0x3]
	ldr     r0, [r4, #0x4]
	bl      Function_2256ec4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
.thumb
branch_2256e16: @ 2256e16 :thumb
	pop     {r3-r7,pc}
@ 0x2256e18

.word 0x666 @ 0x2256e18
.thumb
Function_2256e1c: @ 2256e1c :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x2255240
	mov     r7, r0
	mov     r0, r5
	bl      0x225523c
	mov     r6, r0
	mov     r0, r5
	bl      0x2255244
	mov     r4, r0
	ldr     r0, [r7, #0x18]
	cmp     r0, #0x6
	beq     branch_2256e46
	mov     r0, r5
	bl      Function_2256a04
	pop     {r3-r7,pc}
@ 0x2256e46

.thumb
branch_2256e46: @ 2256e46 :thumb
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256e56
	cmp     r0, #0x1
	beq     branch_2256e7c
	pop     {r3-r7,pc}
@ 0x2256e56

.thumb
branch_2256e56: @ 2256e56 :thumb
	mov     r0, r6
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	mov     r1, #0x10
	bl      0x22558c4
	ldr     r0, [r6, #0x4]
	mov     r1, #0x6
	bl      Function_2256ec4
	ldr     r0, [r6, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      0x225524c
	mov     r0, #0x0
	strh    r0, [r4, #0x0]
.thumb
branch_2256e7c: @ 2256e7c :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x0]
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x50
	bls     branch_2256e8e
	mov     r0, r5
	bl      Function_2256a04
.thumb
branch_2256e8e: @ 2256e8e :thumb
	pop     {r3-r7,pc}
@ 0x2256e90

.thumb
Function_2256e90: @ 2256e90 :thumb
	ldrh    r2, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	cmp     r2, r1
	bls     branch_2256eba
	mov     r2, #0x0
	strh    r2, [r0, #0x0]
	ldrb    r1, [r0, #0x2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x2]
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x3
	bcc     branch_2256eae
	strb    r2, [r0, #0x2]
.thumb
branch_2256eae: @ 2256eae :thumb
	ldrb    r2, [r0, #0x2]
	ldr     r1, [pc, #0xc] @ 0x2256ec0, (=0x2256fb4)
	ldrb    r1, [r1, r2]
	strb    r1, [r0, #0x3]
	mov     r0, #0x1
	bx      lr
@ 0x2256eba

.thumb
branch_2256eba: @ 2256eba :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256ebe


.align 2


.word 0x2256fb4 @ 0x2256ec0
.thumb
Function_2256ec4: @ 2256ec4 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x6
	bl      0x2019fe4
	ldr     r1, [pc, #0x50] @ 0x2256f20, (=0x252)
	mov     r7, #0x1
	add     r1, r0, r1
	lsl     r0, r4, #2
	add     r0, r4, r0
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r12, r0
	lsl     r7, r7, #10
	mov     r6, #0x9
.thumb
branch_2256ee8: @ 2256ee8 :thumb
	ldr     r3, [sp, #0x0]
	mov     r2, #0x0
	mov     r4, r1
.thumb
branch_2256eee: @ 2256eee :thumb
	sub     r5, r6, r2
	mov     r0, r3
	strh    r3, [r4, #0x0]
	orr     r0, r7
	lsl     r5, r5, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r0, [r1, r5]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x5
	bcc     branch_2256eee
	ldr     r0, [sp, #0x0]
	add     r1, #0x40
	add     r0, #0x25
	str     r0, [sp, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0xb
	bcc     branch_2256ee8
	pop     {r3-r7,pc}
@ 0x2256f1e


.align 2


.word 0x252 @ 0x2256f20
.thumb
Function_2256f24: @ 2256f24 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256f40
	cmp     r0, #0x1
	beq     branch_2256f4c
	pop     {r3-r5,pc}
@ 0x2256f40

.thumb
branch_2256f40: @ 2256f40 :thumb
	mov     r0, r4
	bl      Function_2256f7c
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2256f4c: @ 2256f4c :thumb
	mov     r0, r4
	add     r0, #0x34
	bl      0x22559b0
	mov     r0, r4
	add     r0, #0x48
	bl      0x22559b0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      Function_200da58
	mov     r0, #0x0
	add     r4, #0x84
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      Function_2256a04
	pop     {r3-r5,pc}
@ 0x2256f7c

.thumb
Function_2256f7c: @ 2256f7c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
branch_2256f84: @ 2256f84 :thumb
	ldr     r0, [r6, #0x5c]
	ldr     r1, [r5, #0x60]
	bl      0x22558b0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x9
	bcc     branch_2256f84
	pop     {r4-r6,pc}
@ 0x2256f96


.align 2, 0
Unknown_2256f98: @ 0x2256f98
.incbin "./baserom/overlay/overlay_0027.bin", 0xdd8, 0x22570c0 - 0x2256f98


@end 0x22570c0




