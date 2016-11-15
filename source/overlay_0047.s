

.section .iwram47, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22563b9)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22563b9 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x9c
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256385)
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


.word 0x2256385 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, r1
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	bl      0x2254540
	str     r0, [r5, #0x78]
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x11
	mov     r7, r5
	mov     r6, #0x0
	mov     r4, r5
	str     r0, [sp, #0x8]
	add     r7, #0x10
.thumb
branch_225623e: @ 225623e :thumb
	mov     r0, #0x1
	strb    r0, [r4, #0x13]
	strb    r6, [r4, #0x12]
	ldr     r0, [r5, #0x78]
	ldr     r3, [sp, #0x8]
	mov     r1, r6
	mov     r2, r7
	bl      0x20569e8
	ldrb    r0, [r4, #0x10]
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r0, #0x10
	strb    r0, [r4, #0x10]
	ldrb    r0, [r4, #0x11]
	add     r0, #0x10
	strb    r0, [r4, #0x11]
	mov     r0, #0x0
	strb    r0, [r4, #0x13]
	add     r0, r5, r6
	add     r0, #0x94
	strb    r6, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x8]
	cmp     r6, #0x6
	blt     branch_225623e
	mov     r0, #0x0
	str     r0, [r5, #0x28]
	str     r0, [r5, #0x2c]
	str     r0, [r5, #0xc]
	ldr     r0, [sp, #0x0]
	bl      0x2254544
	bl      0x20507e4
	mov     r7, r0
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_225628e: @ 225628e :thumb
	mov     r0, r7
	mov     r1, r4
	bl      0x206b1f0
	str     r0, [r6, #0x30]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_225628e
	ldr     r0, [sp, #0x0]
	bl      0x2254544
	bl      0x202d834
	str     r0, [sp, #0xc]
	mov     r4, #0x0
	mov     r7, r5
	mov     r6, r5
.thumb
branch_22562b2: @ 22562b2 :thumb
	lsl     r1, r4, #24
	ldr     r0, [sp, #0xc]
	lsr     r1, r1, #24
	bl      0x202d924
	mov     r1, #0x8
	str     r0, [r7, #0x7c]
	bl      0x202d93c
	str     r0, [r6, #0x40]
	mov     r1, r5
	add     r1, #0x9a
	mov     r0, #0x0
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r1, #0x0]
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r6, #0x8
	cmp     r4, #0x6
	blt     branch_22562b2
	ldr     r0, [sp, #0x0]
	bl      0x225453c
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x203a790
	bl      0x203a72c
	mov     r6, r0
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      0x203a24c
	cmp     r0, #0x0
	beq     branch_2256304
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x8]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0xc]
	b       branch_225630a
@ 0x2256304

.thumb
branch_2256304: @ 2256304 :thumb
	ldr     r0, [r6, #0x8]
	str     r0, [r5, #0x4]
	ldr     r0, [r6, #0xc]
.thumb
branch_225630a: @ 225630a :thumb
	str     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
	ldr     r2, [sp, #0x4]
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r0, r0, #5
	str     r0, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r0, r0, #5
	str     r0, [r5, #0x8]
	mov     r0, r5
	add     r0, #0x70
	add     r1, r5, #0x4
	bl      Function_2256634
	cmp     r0, #0x0
	beq     branch_2256346
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	ldr     r0, [sp, #0x0]
	add     sp, #0x10
	str     r0, [r5, #0x74]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256346

.thumb
branch_2256346: @ 2256346 :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225634c

.thumb
Function_225634c: @ 225634c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256354: @ 2256354 :thumb
	ldrb    r2, [r5, #0x10]
	ldrb    r3, [r5, #0x11]
	ldr     r0, [r6, #0x78]
	sub     r2, #0x10
	sub     r3, #0x10
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	mov     r1, r4
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x20569c4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2256354
	ldr     r0, [r6, #0x70]
	bl      Function_2256670
	mov     r0, r6
	bl      free
	pop     {r4-r6,pc}
@ 0x2256382


.align 2, 0


.thumb
Function_2256384: @ 2256384 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x4
	bcs     branch_22563b0
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x22563b4, (=Unknown_2256a4c)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22563b0
	mov     r0, r4
	bl      Function_225634c
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x74]
	bl      0x2254260
.thumb
branch_22563b0: @ 22563b0 :thumb
	pop     {r3-r5,pc}
@ 0x22563b2

.align 2
.word Unknown_2256a4c @ 0x22563b4



.thumb
Function_22563b8: @ 22563b8 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22563be


.align 2, 0
.thumb
Function_22563c0: @ 22563c0 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22563c8
	b       branch_22563ca
@ 0x22563c8

.thumb
branch_22563c8: @ 22563c8 :thumb
	mov     r1, #0x3
.thumb
branch_22563ca: @ 22563ca :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22563d2


.align 2, 0


.thumb
Function_22563d4: @ 22563d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563e4
	cmp     r0, #0x1
	beq     branch_22563f4
	b       branch_225640e
@ 0x22563e4

.thumb
branch_22563e4: @ 22563e4 :thumb
	ldr     r0, [r4, #0x70]
	mov     r1, #0x0
	bl      Function_225686c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225640e
@ 0x22563f4

.thumb
branch_22563f4: @ 22563f4 :thumb
	ldr     r0, [r4, #0x70]
	mov     r1, #0x0
	bl      Function_2256890
	cmp     r0, #0x0
	beq     branch_225640e
	ldr     r0, [r4, #0x74]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22563c0
.thumb
branch_225640e: @ 225640e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256412


.align 2, 0


.thumb
Function_2256414: @ 2256414 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_225642c
	mov     r1, #0x3
	bl      Function_22563c0
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x225642c

.thumb
branch_225642c: @ 225642c :thumb
	bl      Function_2256584
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	bl      0x22544bc
	cmp     r0, #0x0
	beq     branch_22564a0
	ldr     r5, [sp, #0x8]
	ldr     r6, [sp, #0x4]
	mov     r3, #0x0
.thumb
branch_2256448: @ 2256448 :thumb
	add     r0, r4, r3
	add     r0, #0x94
	ldrb    r7, [r0, #0x0]
	lsl     r0, r7, #2
	add     r2, r4, r0
	str     r0, [sp, #0x0]
	ldrb    r0, [r2, #0x10]
	sub     r1, r0, r5
	mov     r0, #0x7
	mvn     r0, r0
	cmp     r1, r0
	blt     branch_225649a
	cmp     r1, #0x8
	bgt     branch_225649a
	ldrb    r0, [r2, #0x11]
	sub     r1, r0, r6
	mov     r0, #0x7
	mvn     r0, r0
	cmp     r1, r0
	blt     branch_225649a
	cmp     r1, #0x8
	bgt     branch_225649a
	mov     r0, r4
	mov     r1, r7
	bl      Function_2256534
	ldr     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	add     r1, r4, r0
	strb    r2, [r1, #0x10]
	ldr     r0, [sp, #0x4]
	strb    r0, [r1, #0x11]
	mov     r0, #0x1
	strb    r0, [r1, #0x13]
	str     r7, [r4, #0x28]
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22563c0
	b       branch_22564a0
@ 0x225649a

.thumb
branch_225649a: @ 225649a :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x6
	blt     branch_2256448
.thumb
branch_22564a0: @ 22564a0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22564a6


.align 2, 0


.thumb
Function_22564a8: @ 22564a8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22564c0
	mov     r1, #0x3
	bl      Function_22563c0
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564c0

.thumb
branch_22564c0: @ 22564c0 :thumb
	bl      Function_2256584
	str     r0, [r4, #0xc]
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_22564e8
	ldr     r0, [r4, #0x28]
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #2
	add     r0, r4, r0
	strb    r1, [r0, #0x10]
	ldr     r0, [r4, #0x28]
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	strb    r1, [r0, #0x11]
	b       branch_22564fa
@ 0x22564e8

.thumb
branch_22564e8: @ 22564e8 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	lsl     r0, r0, #2
	add     r0, r4, r0
	strb    r1, [r0, #0x13]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22563c0
.thumb
branch_22564fa: @ 22564fa :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2256500

.thumb
Function_2256500: @ 2256500 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256510
	cmp     r0, #0x1
	beq     branch_2256520
	b       branch_225652e
@ 0x2256510

.thumb
branch_2256510: @ 2256510 :thumb
	ldr     r0, [r4, #0x70]
	mov     r1, #0x1
	bl      Function_225686c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225652e
@ 0x2256520

.thumb
branch_2256520: @ 2256520 :thumb
	ldr     r0, [r4, #0x70]
	bl      Function_225689c
	cmp     r0, #0x0
	beq     branch_225652e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225652e

.thumb
branch_225652e: @ 225652e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256532


.align 2, 0


.thumb
Function_2256534: @ 2256534 :thumb
	push    {r3,r4}
	mov     r2, r0
	add     r2, #0x94
	ldrb    r2, [r2, #0x0]
	cmp     r2, r1
	beq     branch_2256580
	mov     r4, #0x0
.thumb
branch_2256542: @ 2256542 :thumb
	add     r2, r0, r4
	add     r2, #0x94
	ldrb    r2, [r2, #0x0]
	cmp     r1, r2
	beq     branch_2256552
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x6
	blt     branch_2256542
.thumb
branch_2256552: @ 2256552 :thumb
	cmp     r4, #0x0
	beq     branch_2256566
.thumb
branch_2256556: @ 2256556 :thumb
	add     r2, r0, r4
	add     r2, #0x93
	ldrb    r3, [r2, #0x0]
	add     r2, r0, r4
	add     r2, #0x94
	strb    r3, [r2, #0x0]
	.hword  0x1e64 @ sub r4, r4, #0x1
	bne     branch_2256556
.thumb
branch_2256566: @ 2256566 :thumb
	mov     r2, r0
	add     r2, #0x94
	strb    r1, [r2, #0x0]
	mov     r2, #0x0
.thumb
branch_225656e: @ 225656e :thumb
	add     r1, r0, r2
	add     r1, #0x94
	ldrb    r1, [r1, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	strb    r2, [r1, #0x12]
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x6
	blt     branch_225656e
.thumb
branch_2256580: @ 2256580 :thumb
	pop     {r3,r4}
	bx      lr
@ 0x2256584

.thumb
Function_2256584: @ 2256584 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x74]
	mov     r7, #0x0
	bl      0x2254534
	cmp     r0, #0x0
	beq     branch_225662e
	ldr     r0, [r5, #0x74]
	bl      0x225453c
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x203a790
	bl      0x203a72c
	mov     r6, r0
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      0x203a24c
	cmp     r0, #0x0
	beq     branch_22565bc
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0xc]
	b       branch_22565c0
@ 0x22565bc

.thumb
branch_22565bc: @ 22565bc :thumb
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0xc]
.thumb
branch_22565c0: @ 22565c0 :thumb
	asr     r2, r0, #4
	lsr     r2, r2, #27
	add     r2, r0, r2
	asr     r0, r2, #5
	asr     r2, r1, #4
	lsr     r2, r2, #27
	add     r2, r1, r2
	asr     r1, r2, #5
	ldr     r2, [r5, #0x4]
	cmp     r0, r2
	bne     branch_22565dc
	ldr     r2, [r5, #0x8]
	cmp     r1, r2
	beq     branch_22565e2
.thumb
branch_22565dc: @ 22565dc :thumb
	str     r0, [r5, #0x4]
	str     r1, [r5, #0x8]
	mov     r7, #0x1
.thumb
branch_22565e2: @ 22565e2 :thumb
	mov     r0, r5
	add     r0, #0x9a
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0x9a
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x9a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bcc     branch_225662e
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_22565fe: @ 22565fe :thumb
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x0
	bne     branch_2256614
	ldr     r0, [r4, #0x7c]
	mov     r1, #0x8
	bl      0x202d93c
	str     r0, [r5, #0x40]
	cmp     r0, #0x0
	beq     branch_2256614
	mov     r7, #0x1
.thumb
branch_2256614: @ 2256614 :thumb
	cmp     r0, #0x0
	beq     branch_2256624
	ldr     r0, [r4, #0x7c]
	mov     r1, #0x1
	bl      0x202d93c
	str     r0, [r5, #0x44]
	mov     r7, #0x1
.thumb
branch_2256624: @ 2256624 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_22565fe
.thumb
branch_225662e: @ 225662e :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2256632


.align 2, 0


.thumb
Function_2256634: @ 2256634 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x80
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_225666a
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	mov     r0, r4
	mov     r1, r5
	bl      Function_2256684
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225666a

.thumb
branch_225666a: @ 225666a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225666e


.align 2, 0


.thumb
Function_2256670: @ 2256670 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256680
	bl      Function_22567fc
	mov     r0, r4
	bl      free
.thumb
branch_2256680: @ 2256680 :thumb
	pop     {r4,pc}
@ 0x2256682


.align 2, 0


.thumb
Function_2256684: @ 2256684 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r5, r0
	mov     r7, r1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x78
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x68
	mov     r1, #0xc
	mov     r2, #0x76
	mov     r3, #0x77
	bl      0x2255958
	mov     r2, #0x0
	add     r0, sp, #0x24
	strb    r2, [r0, #0x12]
	mov     r1, #0x2
	strb    r1, [r0, #0x13]
	strb    r2, [r0, #0x15]
	ldr     r0, [r7, #0x0]
	ldr     r1, [r7, #0x4]
	add     r2, sp, #0x28
	add     r3, sp, #0x24
	bl      0x2255dbc
	ldr     r0, [sp, #0x28]
	mov     r2, r5
	lsl     r0, r0, #12
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x24]
	mov     r1, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	add     r0, sp, #0x24
	strb    r1, [r0, #0x14]
	mov     r1, #0x0
	strh    r1, [r0, #0x10]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x2c
	add     r2, #0x68
	bl      0x2255810
	str     r0, [r5, #0x64]
	mov     r1, #0x1
	add     r0, sp, #0x24
	strb    r1, [r0, #0x15]
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0x68
	mov     r6, #0x0
	mov     r4, r7
	str     r5, [sp, #0xc]
	str     r0, [sp, #0x14]
.thumb
branch_2256702: @ 2256702 :thumb
	ldrb    r0, [r4, #0xc]
	ldr     r2, [sp, #0x14]
	lsl     r0, r0, #12
	str     r0, [sp, #0x2c]
	ldrb    r0, [r4, #0xd]
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	ldrb    r0, [r4, #0xe]
	add     r1, r0, #0x2
	add     r0, sp, #0x24
	strb    r1, [r0, #0x14]
	add     r1, r6, #0x1
	strh    r1, [r0, #0x10]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x2c
	bl      0x2255810
	ldr     r1, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r0, [r1, #0x24]
	mov     r0, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0xc]
	cmp     r6, #0x6
	blt     branch_2256702
	mov     r0, r5
	str     r0, [sp, #0x18]
	add     r0, #0x68
	mov     r6, #0x0
	mov     r4, r5
	str     r7, [sp, #0x10]
	str     r0, [sp, #0x18]
.thumb
branch_2256744: @ 2256744 :thumb
	mov     r0, r6
	add     r1, sp, #0x28
	add     r2, sp, #0x24
	bl      0x2255dfc
	ldr     r0, [sp, #0x28]
	mov     r1, #0x9
	lsl     r0, r0, #12
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	add     r0, sp, #0x24
	strb    r1, [r0, #0x14]
	mov     r1, r6
	add     r1, #0xe
	strh    r1, [r0, #0x10]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x2c
	bl      0x2255810
	str     r0, [r4, #0x3c]
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x2c]
	cmp     r0, #0x0
	bne     branch_2256782
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_2256782: @ 2256782 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	str     r0, [sp, #0x10]
	cmp     r6, #0x4
	blt     branch_2256744
	mov     r0, r5
	str     r0, [sp, #0x20]
	add     r0, #0x68
	mov     r6, #0x0
	mov     r4, r5
	str     r0, [sp, #0x20]
.thumb
branch_225679c: @ 225679c :thumb
	ldr     r0, [r7, #0x40]
	add     r1, sp, #0x28
	add     r2, sp, #0x24
	bl      0x2255e24
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x8
	lsl     r0, r0, #12
	str     r0, [sp, #0x2c]
	ldr     r0, [sp, #0x24]
	ldr     r2, [sp, #0x20]
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	add     r0, sp, #0x24
	strb    r1, [r0, #0x14]
	mov     r1, #0x12
	strh    r1, [r0, #0x10]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x2c
	bl      0x2255810
	str     r0, [r4, #0x4c]
	ldr     r0, [r7, #0x3c]
	cmp     r0, #0x0
	beq     branch_22567d6
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_22567de
.thumb
branch_22567d6: @ 22567d6 :thumb
	ldr     r0, [r4, #0x4c]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_22567de: @ 22567de :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r7, #0x8
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_225679c
	ldr     r0, [pc, #0xc] @ 0x22567f8, (=0x2256969)
	mov     r1, r5
	mov     r2, #0x3
	bl      0x200d9e8
	str     r0, [r5, #0x7c]
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x22567f8

.word 0x2256969 @ 0x22567f8
.thumb
Function_22567fc: @ 22567fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x7c]
	bl      Function_200da58
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_225680c: @ 225680c :thumb
	ldr     r1, [r4, #0x24]
	cmp     r1, #0x0
	beq     branch_225681a
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	str     r7, [r4, #0x24]
.thumb
branch_225681a: @ 225681a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_225680c
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_2256828: @ 2256828 :thumb
	ldr     r1, [r4, #0x3c]
	cmp     r1, #0x0
	beq     branch_2256836
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	str     r7, [r4, #0x3c]
.thumb
branch_2256836: @ 2256836 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_2256828
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_2256844: @ 2256844 :thumb
	ldr     r1, [r4, #0x4c]
	cmp     r1, #0x0
	beq     branch_2256852
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	str     r7, [r4, #0x4c]
.thumb
branch_2256852: @ 2256852 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_2256844
	ldr     r0, [r5, #0x20]
	ldr     r1, [r5, #0x64]
	bl      0x22558b0
	add     r5, #0x68
	mov     r0, r5
	bl      0x22559b0
	pop     {r3-r7,pc}
@ 0x225686c

.thumb
Function_225686c: @ 225686c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x225688c, (=0x2256a78)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225688a


.align 2


.word 0x2256a78 @ 0x225688c
.thumb
Function_2256890: @ 2256890 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256898, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256896


.align 2


.word 0x2255131 @ 0x2256898
.thumb
Function_225689c: @ 225689c :thumb
	ldr     r3, [pc, #0x4] @ 0x22568a4, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22568a2


.align 2


.word 0x2255155 @ 0x22568a4
.thumb
Function_22568a8: @ 22568a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22568ba


.align 2, 0


.thumb
Function_22568bc: @ 22568bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x2256940, (=0x2256a5c)
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
	mov     r1, #0x75
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
	mov     r1, #0x73
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x2256944, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256948, (=0xffffe0ff)
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
	bl      Function_22568a8
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225693e


.align 2


.word 0x2256a5c @ 0x2256940
.word 0x4001000 @ 0x2256944
.word 0xffffe0ff @ 0x2256948
.thumb
Function_225694c: @ 225694c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22568a8
	pop     {r4,pc}
@ 0x2256966


.align 2, 0


.thumb
Function_2256968: @ 2256968 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_22569de
	ldr     r7, [r4, #0x24]
	lsl     r6, r7, #2
	add     r2, r4, r6
	ldrb    r0, [r2, #0xf]
	cmp     r0, #0x0
	beq     branch_22569a8
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x24
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	add     r0, r0, r6
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x20]
	ldr     r1, [r1, r6]
	mov     r2, #0x0
	bl      0x225591c
	ldr     r0, [sp, #0x4]
	add     r7, #0x8
	ldr     r0, [r0, r6]
	mov     r1, r7
	bl      0x22558c4
	b       branch_22569cc
@ 0x22569a8

.thumb
branch_22569a8: @ 22569a8 :thumb
	mov     r0, r5
	str     r0, [sp, #0x8]
	add     r0, #0x24
	str     r0, [sp, #0x8]
	ldr     r1, [sp, #0x8]
	ldrb    r2, [r2, #0xe]
	add     r0, r0, r6
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x20]
	ldr     r1, [r1, r6]
	.hword  0x1c92 @ add r2, r2, #0x2
	bl      0x225591c
	ldr     r0, [sp, #0x8]
	add     r1, r7, #0x1
	ldr     r0, [r0, r6]
	bl      0x22558c4
.thumb
branch_22569cc: @ 22569cc :thumb
	add     r2, r4, r6
	ldrb    r1, [r2, #0xc]
	ldr     r0, [sp, #0x0]
	ldrb    r2, [r2, #0xd]
	ldr     r0, [r0, #0x0]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
.thumb
branch_22569de: @ 22569de :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2256a48
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, #0x4]
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      0x2255dbc
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	ldr     r0, [r5, #0x64]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	mov     r6, #0x0
	add     r7, sp, #0x10
.thumb
branch_2256a02: @ 2256a02 :thumb
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_2256a36
	ldr     r0, [r4, #0x40]
	mov     r1, r7
	add     r2, sp, #0xc
	bl      0x2255e24
	cmp     r0, #0x0
	ldr     r0, [r5, #0x4c]
	beq     branch_2256a2e
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x0
	bl      0x2255914
	b       branch_2256a3e
@ 0x2256a2e

.thumb
branch_2256a2e: @ 2256a2e :thumb
	mov     r1, #0x1
	bl      0x2255914
	b       branch_2256a3e
@ 0x2256a36

.thumb
branch_2256a36: @ 2256a36 :thumb
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_2256a3e: @ 2256a3e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x6
	bcc     branch_2256a02
branch_2256a48: @ 2256a48 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256a4c


Unknown_2256a4c: @ 0x2256a4c
.incbin "./baserom/overlay/overlay_0047.bin", 0x88c, 0x2256ac0 - 0x2256a4c


@end 0x2256ac0




