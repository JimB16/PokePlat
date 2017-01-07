

.section .iwram31, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256405)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256405 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x9b
	mov     r5, r0
	mov     r0, #0x8
	lsl     r1, r1, #2
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_225621c
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2256228
	cmp     r0, #0x0
	beq     branch_2256216
	ldr     r0, [pc, #0x24] @ 0x2256220, (=0x22563cd)
	mov     r1, r4
	mov     r2, #0x1
	bl      0x200d9e8
	cmp     r0, #0x0
	beq     branch_2256216
	ldr     r0, [pc, #0x18] @ 0x2256224, (=0x22563b1)
	mov     r1, r4
	str     r4, [r5, #0x0]
	bl      0x2254274
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256216

.thumb
branch_2256216: @ 2256216 :thumb
	mov     r0, r4
	bl      free
.thumb
branch_225621c: @ 225621c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256220

.word 0x22563cd @ 0x2256220
.word 0x22563b1 @ 0x2256224
.thumb
Function_2256228: @ 2256228 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	mov     r2, #0x1f
	mov     r5, r0
	lsl     r2, r2, #4
	str     r1, [r5, r2]
	mov     r1, r5
	add     r1, #0xc
	bl      Function_2256268
	mov     r0, #0x7b
	lsl     r0, r0, #2
	mov     r1, r5
	add     r0, r5, r0
	add     r1, #0xc
	mov     r2, r4
	bl      Function_2256554
	cmp     r0, #0x0
	beq     branch_2256264
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x19
	str     r0, [r5, #0x4]
	mov     r0, #0x15
	str     r0, [r5, #0x8]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2256264

.thumb
branch_2256264: @ 2256264 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256268

.thumb
Function_2256268: @ 2256268 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      0x2254540
	mov     r6, r0
	bl      0x2056a10
	cmp     r0, #0x0
	beq     branch_225628e
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2256298
	pop     {r4-r6,pc}
@ 0x225628e

.thumb
branch_225628e: @ 225628e :thumb
	mov     r0, r4
	bl      Function_225635c
	pop     {r4-r6,pc}
@ 0x2256296


.align 2, 0


.thumb
Function_2256298: @ 2256298 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x7d
	mov     r5, r0
	lsl     r1, r1, #2
	mov     r0, r2
	add     r1, r5, r1
	bl      0x2056a18
	mov     r3, #0x0
	mov     r7, #0x7d
	mov     r12, r3
	lsl     r7, r7, #2
	mov     r0, #0x3
.thumb
branch_22562b4: @ 22562b4 :thumb
	mov     r2, #0x0
.thumb
branch_22562b6: @ 22562b6 :thumb
	asr     r1, r3, #1
	lsr     r1, r1, #30
	add     r1, r3, r1
	asr     r1, r1, #2
	add     r1, r5, r1
	mov     r6, r3
	lsl     r6, r6, #30
	ldrb    r1, [r1, r7]
	lsr     r6, r6, #29
	.hword  0x1c5b @ add r3, r3, #0x1
	asr     r1, r6
	and     r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r2, #0x18
	blt     branch_22562b6
	mov     r1, r12
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r4, #0x18
	mov     r12, r1
	cmp     r1, #0x14
	blt     branch_22562b4
	pop     {r3-r7,pc}
@ 0x22562ea


.align 2, 0


.thumb
Function_22562ec: @ 22562ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	mov     r1, #0x7d
	str     r2, [sp, #0x0]
	lsl     r1, r1, #2
	str     r0, [sp, #0x4]
	add     r0, r0, r1
	mov     r1, #0x0
	mov     r2, #0x78
	blx     MI_CpuFill8
	mov     r5, #0x0
	mov     r12, r5
.thumb
branch_2256308: @ 2256308 :thumb
	mov     r4, #0x0
.thumb
branch_225630a: @ 225630a :thumb
	asr     r0, r5, #1
	lsr     r0, r0, #30
	add     r0, r5, r0
	asr     r1, r0, #2
	ldr     r0, [sp, #0x4]
	mov     r6, r5
	add     r3, r0, r1
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldrb    r2, [r3, r0]
	ldrb    r0, [r7, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0x3
	and     r0, r1
	lsl     r1, r6, #30
	lsr     r1, r1, #29
	lsl     r0, r1
	mov     r1, r2
	orr     r1, r0
	mov     r0, #0x7d
	lsl     r0, r0, #2
	strb    r1, [r3, r0]
	cmp     r4, #0x18
	blt     branch_225630a
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r7, #0x18
	mov     r12, r0
	cmp     r0, #0x14
	blt     branch_2256308
	mov     r2, #0x7d
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x0]
	add     r1, r1, r2
	bl      0x2056a2c
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225635c

.thumb
Function_225635c: @ 225635c :thumb
	push    {r4,r5}
	mov     r4, #0x0
	ldr     r5, [pc, #0x1c] @ 0x2256380, (=0x2256770)
	mov     r2, r4
.thumb
branch_2256364: @ 2256364 :thumb
	mov     r3, r2
.thumb
branch_2256366: @ 2256366 :thumb
	ldrb    r1, [r5, r3]
	strb    r1, [r0, r3]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x18
	blt     branch_2256366
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	add     r0, #0x18
	cmp     r4, #0x14
	blt     branch_2256364
	pop     {r4,r5}
	bx      lr
@ 0x225637e


.align 2


.word 0x2256770 @ 0x2256380
.thumb
Function_2256384: @ 2256384 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2254540
	mov     r1, r4
	mov     r2, r0
	mov     r0, r4
	add     r1, #0xc
	bl      Function_22562ec
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2256584
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22563b0

.thumb
Function_22563b0: @ 22563b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2254540
	mov     r2, r0
	mov     r0, r4
	add     r4, #0xc
	mov     r1, r4
	bl      Function_22562ec
	pop     {r4,pc}
@ 0x22563cc

.thumb
Function_22563cc: @ 22563cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_22563fc
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x24] @ 0x2256400, (=0x2256764)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22563fc
	mov     r0, r4
	bl      Function_2256384
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2254260
.thumb
branch_22563fc: @ 22563fc :thumb
	pop     {r3-r5,pc}
@ 0x22563fe


.align 2


.word 0x2256764 @ 0x2256400
.thumb
Function_2256404: @ 2256404 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225640a


.align 2, 0


.thumb
Function_225640c: @ 225640c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256414
	b       branch_2256416
@ 0x2256414

.thumb
branch_2256414: @ 2256414 :thumb
	mov     r1, #0x2
.thumb
branch_2256416: @ 2256416 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225641e


.align 2, 0


.thumb
Function_2256420: @ 2256420 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256430
	cmp     r0, #0x1
	beq     branch_2256444
	b       branch_2256466
@ 0x2256430

.thumb
branch_2256430: @ 2256430 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2256590
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256466
@ 0x2256444

.thumb
branch_2256444: @ 2256444 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_22565b4
	cmp     r0, #0x0
	beq     branch_2256466
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225640c
.thumb
branch_2256466: @ 2256466 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225646a


.align 2, 0


.thumb
Function_225646c: @ 225646c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256484
	mov     r1, #0x2
	bl      Function_225640c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256484

.thumb
branch_2256484: @ 2256484 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_22565b4
	cmp     r0, #0x0
	beq     branch_2256510
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x225446c
	cmp     r0, #0x0
	beq     branch_2256510
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x10
	bcc     branch_2256510
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x10
	bcc     branch_2256510
	sub     r1, #0x10
	lsr     r2, r1, #3
	sub     r0, #0x10
	lsr     r1, r0, #3
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x0]
	cmp     r2, #0x18
	bcs     branch_2256510
	cmp     r1, #0x14
	bcs     branch_2256510
	ldr     r0, [r4, #0x4]
	cmp     r0, r2
	bne     branch_22564d4
	ldr     r0, [r4, #0x8]
	cmp     r0, r1
	bne     branch_22564d4
	bl      0x2022798
	cmp     r0, #0x1
	bne     branch_2256510
.thumb
branch_22564d4: @ 22564d4 :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x18
	mov     r3, r2
	add     r0, #0xc
	mul     r3, r1
	add     r5, r0, r3
	ldr     r3, [sp, #0x4]
	ldrb    r2, [r5, r3]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r5, r3]
	ldr     r2, [sp, #0x0]
	mul     r1, r2
	add     r2, r0, r1
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r2, r1]
	cmp     r0, #0x4
	bls     branch_22564fc
	mov     r0, #0x1
	strb    r0, [r2, r1]
.thumb
branch_22564fc: @ 22564fc :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x0]
	str     r0, [r4, #0x8]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2256590
.thumb
branch_2256510: @ 2256510 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2256516


.align 2, 0


.thumb
Function_2256518: @ 2256518 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256528
	cmp     r0, #0x1
	beq     branch_225653c
	b       branch_225654e
@ 0x2256528

.thumb
branch_2256528: @ 2256528 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x2
	bl      Function_2256590
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225654e
@ 0x225653c

.thumb
branch_225653c: @ 225653c :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22565c0
	cmp     r0, #0x0
	beq     branch_225654e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225654e

.thumb
branch_225654e: @ 225654e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256552


.align 2, 0


.thumb
Function_2256554: @ 2256554 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x30
	bl      malloc
	mov     r4, r0
	beq     branch_2256580
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256580
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256580

.thumb
branch_2256580: @ 2256580 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256584

.thumb
Function_2256584: @ 2256584 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_225658e
	bl      free
.thumb
branch_225658e: @ 225658e :thumb
	pop     {r3,pc}
@ 0x2256590

.thumb
Function_2256590: @ 2256590 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22565b0, (=0x2256970)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22565ae


.align 2


.word 0x2256970 @ 0x22565b0
.thumb
Function_22565b4: @ 22565b4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22565bc, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22565ba


.align 2


.word 0x2255131 @ 0x22565bc
.thumb
Function_22565c0: @ 22565c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22565c8, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22565c6


.align 2


.word 0x2255155 @ 0x22565c8
.thumb
Function_22565cc: @ 22565cc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22565de


.align 2, 0


.thumb
Function_22565e0: @ 22565e0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x48] @ 0x2256638, (=0x2256954)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x4]
	bl      Function_2256644
	ldr     r0, [r5, #0x4]
	ldr     r1, [r5, #0x0]
	bl      Function_225672c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x24] @ 0x225663c, (=0x4001000)
	ldr     r0, [pc, #0x24] @ 0x2256640, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x0]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x4
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_22565cc
	pop     {r3-r5,pc}
@ 0x2256638

.word 0x2256954 @ 0x2256638
.word 0x4001000 @ 0x225663c
.word 0xffffe0ff @ 0x2256640
.thumb
Function_2256644: @ 2256644 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	lsl     r1, r0, #6
	bl      malloc
	str     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_22566e8
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x10]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r7, r0
	mov     r6, r0
	mov     r4, r0
	mov     r5, r0
.thumb
branch_225666c: @ 225666c :thumb
	ldr     r1, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x1c]
	orr     r1, r0
	ldr     r0, [sp, #0x8]
	orr     r0, r1
	orr     r0, r7
	orr     r0, r6
	orr     r0, r4
	mov     r1, r5
	orr     r1, r0
	ldr     r0, [sp, #0x18]
	orr     r0, r1
	ldr     r1, [sp, #0x14]
	add     r1, r2, r1
	mov     r2, #0x20
	blx     MIi_CpuClearFast
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x10]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	mov     r0, #0x1
	lsl     r0, r0, #24
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	ldr     r1, [sp, #0xc]
	lsl     r0, r0, #28
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	ldr     r1, [sp, #0x8]
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #16
	add     r7, r7, r0
	lsr     r0, r0, #4
	add     r6, r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	add     r4, r4, r0
	ldr     r0, [sp, #0x18]
	add     r5, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x10
	blt     branch_225666c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x2
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x6
	lsl     r3, r3, #8
	bl      0x201958c
	ldr     r0, [sp, #0x1c]
	bl      free
.thumb
branch_22566e8: @ 22566e8 :thumb
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22566ec

.thumb
Function_22566ec: @ 22566ec :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x0]
	bl      Function_225672c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_22565cc
	pop     {r3-r5,pc}
@ 0x2256710

.thumb
Function_2256710: @ 2256710 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22565cc
	pop     {r4,pc}
@ 0x225672a


.align 2, 0


.thumb
Function_225672c: @ 225672c :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r1, #0x6
	bl      0x2019fe4
	mov     r5, #0x0
	ldr     r1, [pc, #0x24] @ 0x2256760, (=0x2256950)
	add     r0, #0x84
	mov     r2, r5
.thumb
branch_225673e: @ 225673e :thumb
	mov     r3, r2
	mov     r6, r0
.thumb
branch_2256742: @ 2256742 :thumb
	ldrb    r7, [r4, r3]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r7, r1, r7
	.hword  0x1e7f @ sub r7, r7, #0x1
	ldrb    r7, [r7, #0x0]
	strh    r7, [r6, #0x0]
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r3, #0x18
	blt     branch_2256742
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x40
	add     r4, #0x18
	cmp     r5, #0x14
	blt     branch_225673e
	pop     {r3-r7,pc}
@ 0x2256760

.word 0x2256950 @ 0x2256760



Unknown_2256764: @ 0x2256764
.incbin "./baserom/overlay/overlay_0031.bin", 0x5a4, 0x22569c0 - 0x2256764


@end 0x22569c0




