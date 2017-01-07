

.section .iwram51, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256289)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256289 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x10
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256255)
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


.word 0x2256255 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x8
	add     r1, r5, #0x4
	bl      Function_225632c
	cmp     r0, #0x0
	beq     branch_225623c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225623c

.thumb
branch_225623c: @ 225623c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256240

.thumb
Function_2256240: @ 2256240 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_225635c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256252


.align 2, 0


.thumb
Function_2256254: @ 2256254 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_2256280
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x2256284, (=0x2256474)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256280
	mov     r0, r4
	bl      Function_2256240
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
branch_2256280: @ 2256280 :thumb
	pop     {r3-r5,pc}
@ 0x2256282

.align 2
.word Unknown_2256474 @ 0x2256284



.thumb
Function_2256288: @ 2256288 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225628e


.align 2, 0
.thumb
Function_2256290: @ 2256290 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256298
	b       branch_225629a
@ 0x2256298

.thumb
branch_2256298: @ 2256298 :thumb
	mov     r1, #0x2
.thumb
branch_225629a: @ 225629a :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562a2


.align 2, 0


.thumb
Function_22562a4: @ 22562a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562b4
	cmp     r0, #0x1
	beq     branch_22562c4
	b       branch_22562de
@ 0x22562b4

.thumb
branch_22562b4: @ 22562b4 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256368
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562de
@ 0x22562c4

.thumb
branch_22562c4: @ 22562c4 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_225638c
	cmp     r0, #0x0
	beq     branch_22562de
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256290
.thumb
branch_22562de: @ 22562de :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562e2


.align 2, 0


.thumb
Function_22562e4: @ 22562e4 :thumb
	push    {r3,lr}
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x0
	beq     branch_22562f2
	mov     r1, #0x2
	bl      Function_2256290
.thumb
branch_22562f2: @ 22562f2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22562f6


.align 2, 0


.thumb
Function_22562f8: @ 22562f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256308
	cmp     r0, #0x1
	beq     branch_2256318
	b       branch_2256326
@ 0x2256308

.thumb
branch_2256308: @ 2256308 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2256368
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256326
@ 0x2256318

.thumb
branch_2256318: @ 2256318 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2256398
	cmp     r0, #0x0
	beq     branch_2256326
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256326

.thumb
branch_2256326: @ 2256326 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x30
	bl      malloc
	mov     r4, r0
	beq     branch_2256358
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256358
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256358

.thumb
branch_2256358: @ 2256358 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225635c

.thumb
Function_225635c: @ 225635c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2256366
	bl      free
.thumb
branch_2256366: @ 2256366 :thumb
	pop     {r3,pc}
@ 0x2256368

.thumb
Function_2256368: @ 2256368 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256388, (=0x225649c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256386


.align 2


.word 0x225649c @ 0x2256388
.thumb
Function_225638c: @ 225638c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256394, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256392


.align 2


.word 0x2255131 @ 0x2256394
.thumb
Function_2256398: @ 2256398 :thumb
	ldr     r3, [pc, #0x4] @ 0x22563a0, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225639e


.align 2


.word 0x2255155 @ 0x22563a0
.thumb
Function_22563a4: @ 22563a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22563b6


.align 2, 0


.thumb
Function_22563b8: @ 22563b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x80] @ 0x225644c, (=0x2256480)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x8
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r1, #0x9
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	ldr     r0, [r5, #0x4]
	mov     r1, #0x1a
	mov     r2, #0x6
	bl      0x2255440
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x2256450, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256454, (=0xffffe0ff)
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
	bl      Function_22563a4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225644a


.align 2


.word 0x2256480 @ 0x225644c
.word 0x4001000 @ 0x2256450
.word 0xffffe0ff @ 0x2256454
.thumb
Function_2256458: @ 2256458 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22563a4
	pop     {r4,pc}
@ 0x2256472


.align 2, 0
Unknown_2256474: @ 0x2256474
.incbin "./baserom/overlay/overlay_0051.bin", 0x2b4, 0x22564e0 - 0x2256474


@end 0x22564e0




