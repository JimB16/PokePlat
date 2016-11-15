

.section .iwram39, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562c9)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562c9 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x38
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x225628d)
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


.word 0x225628d @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x24
	add     r1, r5, #0x4
	bl      Function_22563dc
	cmp     r0, #0x0
	beq     branch_225625c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0x28]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2256260, (=0x22565fc)
	ldr     r2, [pc, #0x24] @ 0x2256264, (=0x2256285)
	mov     r1, #0x6
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x2c]
	mov     r1, #0x0
	str     r1, [r5, #0x30]
	mov     r0, #0x1
.thumb
branch_2256250: @ 2256250 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r5, #0x8]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r1, #0x6
	blt     branch_2256250
	pop     {r3-r5,pc}
@ 0x225625c

.thumb
branch_225625c: @ 225625c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256260

.word 0x22565fc @ 0x2256260
.word Function_2256284+1 @ =0x2256285, 0x2256264
.thumb
Function_2256268: @ 2256268 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	beq     branch_2256276
	bl      0x2255b34
.thumb
branch_2256276: @ 2256276 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_225640c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256284

.thumb
Function_2256284: @ 2256284 :thumb
	str     r1, [r3, #0x30]
	str     r0, [r3, #0x34]
	bx      lr
@ 0x225628a


.align 2, 0


.thumb
Function_225628c: @ 225628c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562c2
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x2c]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562c4, (=Unknown_22565f0)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562c2
	mov     r0, r4
	bl      Function_2256268
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x28]
	bl      0x2254260
branch_22562c2: @ 22562c2 :thumb
	pop     {r3-r5,pc}
@ 0x22562c4

.word Unknown_22565f0 @ 0x22562c4



.thumb
Function_22562c8: @ 22562c8 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562ce


.align 2, 0
.thumb
Function_22562d0: @ 22562d0 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562d8
	b       branch_22562da
@ 0x22562d8

.thumb
branch_22562d8: @ 22562d8 :thumb
	mov     r1, #0x2
.thumb
branch_22562da: @ 22562da :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562e2


.align 2, 0


.thumb
Function_22562e4: @ 22562e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562f4
	cmp     r0, #0x1
	beq     branch_2256304
	b       branch_225631e
@ 0x22562f4

.thumb
branch_22562f4: @ 22562f4 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2256418
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225631e
@ 0x2256304

.thumb
branch_2256304: @ 2256304 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_225643c
	cmp     r0, #0x0
	beq     branch_225631e
	ldr     r0, [r4, #0x28]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562d0
.thumb
branch_225631e: @ 225631e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256322


.align 2, 0


.thumb
Function_2256324: @ 2256324 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256338
	mov     r1, #0x2
	bl      Function_22562d0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256338

.thumb
branch_2256338: @ 2256338 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256344
	cmp     r0, #0x1
	beq     branch_2256376
	b       branch_225639a
@ 0x2256344

.thumb
branch_2256344: @ 2256344 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x1
	bne     branch_225639a
	ldr     r1, [r4, #0x34]
	lsl     r0, r1, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_225636e
	strh    r1, [r4, #0x20]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_2256418
	ldr     r0, [pc, #0x3c] @ 0x22563a0, (=0x663)
	bl      0x2254424
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225639a
@ 0x225636e

.thumb
branch_225636e: @ 225636e :thumb
	ldr     r0, [pc, #0x34] @ 0x22563a4, (=0x66e)
	bl      0x2254424
	b       branch_225639a
@ 0x2256376

.thumb
branch_2256376: @ 2256376 :thumb
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x2
	bne     branch_225638a
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      Function_2256418
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_225639a
@ 0x225638a

.thumb
branch_225638a: @ 225638a :thumb
	cmp     r0, #0x3
	bne     branch_225639a
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      Function_2256418
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_225639a: @ 225639a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225639e


.align 2


.word 0x663 @ 0x22563a0
.word 0x66e @ 0x22563a4
.thumb
Function_22563a8: @ 22563a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563b8
	cmp     r0, #0x1
	beq     branch_22563c8
	b       branch_22563d6
@ 0x22563b8

.thumb
branch_22563b8: @ 22563b8 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_2256418
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563d6
@ 0x22563c8

.thumb
branch_22563c8: @ 22563c8 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_2256448
	cmp     r0, #0x0
	beq     branch_22563d6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22563d6

.thumb
branch_22563d6: @ 22563d6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563da


.align 2, 0


.thumb
Function_22563dc: @ 22563dc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x20
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256408
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256408
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256408

.thumb
branch_2256408: @ 2256408 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225640c

.thumb
Function_225640c: @ 225640c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2256416
	bl      free
.thumb
branch_2256416: @ 2256416 :thumb
	pop     {r3,pc}
@ 0x2256418

.thumb
Function_2256418: @ 2256418 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256438, (=0x225663c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256436


.align 2


.word 0x225663c @ 0x2256438
.thumb
Function_225643c: @ 225643c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256444, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256442


.align 2


.word 0x2255131 @ 0x2256444
.thumb
Function_2256448: @ 2256448 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256450, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225644e


.align 2


.word 0x2255155 @ 0x2256450
.thumb
Function_2256454: @ 2256454 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256466


.align 2, 0


.thumb
Function_2256468: @ 2256468 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r0, r1
	bl      0x225523c
	mov     r6, r0
	ldr     r0, [sp, #0x10]
	bl      0x2255240
	mov     r5, r0
	ldr     r0, [r6, #0x4]
	ldr     r2, [pc, #0x88] @ 0x225650c, (=0x2256620)
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
	ldr     r2, [r6, #0x4]
	mov     r0, #0xc
	mov     r1, #0x3b
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r6, #0x4]
	mov     r0, #0xc
	mov     r1, #0x3a
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r4, #0x0
	mov     r7, r4
.thumb
branch_22564ca: @ 22564ca :thumb
	ldr     r2, [r5, #0x4]
	mov     r0, r6
	mov     r1, r4
	mov     r3, r7
	bl      Function_225659c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_22564ca
	ldr     r0, [r6, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r0, [pc, #0x28] @ 0x2256510, (=0x4001000)
	ldr     r1, [pc, #0x28] @ 0x2256514, (=0xffffe0ff)
	ldr     r2, [r0, #0x0]
	ldr     r4, [r0, #0x0]
	mov     r3, r2
	and     r3, r1
	lsl     r1, r4, #19
	lsr     r2, r1, #27
	mov     r1, #0x4
	orr     r1, r2
	lsl     r1, r1, #8
	orr     r1, r3
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x10]
	str     r4, [sp, #0x14]
	bl      Function_2256454
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225650c

.word 0x2256620 @ 0x225650c
.word 0x4001000 @ 0x2256510
.word 0xffffe0ff @ 0x2256514
.thumb
Function_2256518: @ 2256518 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_2256454
	pop     {r4,pc}
@ 0x2256532


.align 2, 0


.thumb
Function_2256534: @ 2256534 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r3, r0
	ldrh    r1, [r3, #0x1c]
	mov     r0, r4
	lsl     r2, r1, #2
	add     r2, r3, r2
	ldr     r2, [r2, #0x4]
	mov     r3, #0x1
	bl      Function_225659c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_2256454
	pop     {r3-r5,pc}
@ 0x2256568

.thumb
Function_2256568: @ 2256568 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r3, r0
	ldrh    r1, [r3, #0x1c]
	mov     r0, r4
	lsl     r2, r1, #2
	add     r2, r3, r2
	ldr     r2, [r2, #0x4]
	mov     r3, #0x0
	bl      Function_225659c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_2256454
	pop     {r3-r5,pc}
@ 0x225659c

.thumb
Function_225659c: @ 225659c :thumb
	push    {r4-r6,lr}
	ldr     r0, [r0, #0x4]
	mov     r5, r1
	mov     r1, #0x6
	mov     r4, r2
	mov     r6, r3
	bl      0x2019fe4
	ldr     r1, [pc, #0x3c] @ 0x22565ec, (=0x2256614)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	lsl     r1, r1, #1
	add     r2, r0, r1
	cmp     r4, #0x0
	beq     branch_22565c4
	add     r1, r5, #0x1
	mov     r0, #0x48
	mov     r5, r1
	mul     r5, r0
	b       branch_22565c6
@ 0x22565c4

.thumb
branch_22565c4: @ 22565c4 :thumb
	mov     r5, #0x0
.thumb
branch_22565c6: @ 22565c6 :thumb
	cmp     r6, #0x0
	beq     branch_22565cc
	add     r5, #0x24
.thumb
branch_22565cc: @ 22565cc :thumb
	mov     r3, #0x0
	mov     r0, r3
.thumb
branch_22565d0: @ 22565d0 :thumb
	mov     r1, r0
	mov     r4, r2
.thumb
branch_22565d4: @ 22565d4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r5, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r1, #0x6
	blt     branch_22565d4
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r2, #0x40
	cmp     r3, #0x6
	blt     branch_22565d0
	pop     {r4-r6,pc}
@ 0x22565ea

.align 2
.word 0x2256614 @ 0x22565ec



Unknown_22565f0: @ 0x22565f0
.incbin "./baserom/overlay/overlay_0039.bin", 0x430, 0x2256680 - 0x22565f0


@end 0x2256680




