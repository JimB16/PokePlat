

.section .iwram54, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256339)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256339 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0xac
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562f5)
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList1
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


.word 0x22562f5 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	mov     r0, r1
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	bl      0x2254540
	str     r0, [sp, #0x10]
	bl      Function_2056aac
	ldr     r1, [sp, #0x4]
	mov     r4, #0x0
	add     r1, #0x94
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bls     branch_2256276
	ldr     r0, [sp, #0x4]
	ldr     r6, [sp, #0x4]
	add     r7, r0, #0x4
	add     r6, #0xc
	mov     r5, r0
.thumb
branch_225624e: @ 225624e :thumb
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	mov     r2, r7
	mov     r3, r6
	bl      Function_2056ac8
	ldr     r0, [sp, #0x10]
	mov     r1, r4
	bl      Function_2056afc
	str     r0, [r5, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r6, #0xc
	add     r7, #0xc
	add     r5, #0xc
	cmp     r4, r0
	bcc     branch_225624e
.thumb
branch_2256276: @ 2256276 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	add     r0, #0x98
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_225642c
	cmp     r0, #0x0
	beq     branch_22562c6
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x22562cc, (=0x22566e0)
	ldr     r2, [pc, #0x34] @ 0x22562d0, (=0x2256341)
	ldr     r3, [sp, #0x4]
	mov     r1, #0xc
	bl      0x2255acc
	ldr     r1, [sp, #0x4]
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	add     r0, #0x9c
	str     r0, [sp, #0x4]
	str     r1, [r0, #0x0]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22562c6

.thumb
branch_22562c6: @ 22562c6 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22562cc

.word 0x22566e0 @ 0x22562cc
.word Function_2256340+1 @ =0x2256341, 0x22562d0
.thumb
Function_22562d4: @ 22562d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	bl      0x2255b34
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_2256460
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562f2


.align 2, 0


.thumb
Function_22562f4: @ 22562f4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_2256332
	mov     r0, r4
	add     r0, #0x9c
	add     r1, #0xa0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256334, (=Unknown_22566d4)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256332
	mov     r0, r4
	bl      Function_22562d4
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     r4, #0x9c
	ldr     r0, [r4, #0x0]
	bl      0x2254260
branch_2256332: @ 2256332 :thumb
	pop     {r3-r5,pc}
@ 0x2256334

.word Unknown_22566d4 @ 0x2256334



.thumb
Function_2256338: @ 2256338 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225633e


.align 2, 0
.thumb
Function_2256340: @ 2256340 :thumb
	mov     r2, r3
	add     r2, #0xa8
	str     r0, [r2, #0x0]
	add     r3, #0xa4
	str     r1, [r3, #0x0]
	bx      lr
@ 0x225634c

.thumb
Function_225634c: @ 225634c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256354
	b       branch_2256356
@ 0x2256354

.thumb
branch_2256354: @ 2256354 :thumb
	mov     r1, #0x2
.thumb
branch_2256356: @ 2256356 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225635e


.align 2, 0


.thumb
Function_2256360: @ 2256360 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256370
	cmp     r0, #0x1
	beq     branch_2256384
	b       branch_22563a6
@ 0x2256370

.thumb
branch_2256370: @ 2256370 :thumb
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_225646c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563a6
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2256490
	cmp     r0, #0x0
	beq     branch_22563a6
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225634c
.thumb
branch_22563a6: @ 22563a6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563aa


.align 2, 0


.thumb
Function_22563ac: @ 22563ac :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22563c0
	mov     r1, #0x2
	bl      Function_225634c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563c0

.thumb
branch_22563c0: @ 22563c0 :thumb
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22563f0
	mov     r0, r4
	add     r0, #0xa8
	ldr     r1, [r0, #0x0]
	mov     r0, #0xb
	sub     r1, r0, r1
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bcs     branch_22563ea
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r4, r0
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x8]
	bl      0x2254444
.thumb
branch_22563ea: @ 22563ea :thumb
	mov     r0, #0x0
	add     r4, #0xa4
	str     r0, [r4, #0x0]
.thumb
branch_22563f0: @ 22563f0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563f4

.thumb
Function_22563f4: @ 22563f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256404
	cmp     r0, #0x1
	beq     branch_2256418
	b       branch_2256428
@ 0x2256404

.thumb
branch_2256404: @ 2256404 :thumb
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_225646c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256428
@ 0x2256418

.thumb
branch_2256418: @ 2256418 :thumb
	add     r4, #0x98
	ldr     r0, [r4, #0x0]
	bl      Function_225649c
	cmp     r0, #0x0
	beq     branch_2256428
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256428

.thumb
branch_2256428: @ 2256428 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225642c

.thumb
Function_225642c: @ 225642c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x98
	bl      malloc
	mov     r4, r0
	beq     branch_225645a
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225645a

.thumb
branch_225645a: @ 225645a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225645e


.align 2, 0


.thumb
Function_2256460: @ 2256460 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_225646a
	bl      free
.thumb
branch_225646a: @ 225646a :thumb
	pop     {r3,pc}
@ 0x225646c

.thumb
Function_225646c: @ 225646c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x225648c, (=0x225672c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225648a


.align 2


.word 0x225672c @ 0x225648c
.thumb
Function_2256490: @ 2256490 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256498, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256496


.align 2


.word 0x2255131 @ 0x2256498
.thumb
Function_225649c: @ 225649c :thumb
	ldr     r3, [pc, #0x4] @ 0x22564a4, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22564a2


.align 2


.word 0x2255155 @ 0x22564a4
.thumb
Function_22564a8: @ 22564a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564ba


.align 2, 0


.thumb
Function_22564bc: @ 22564bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r7, r1
	mov     r0, r7
	bl      0x225523c
	mov     r5, r0
	mov     r0, r7
	bl      0x2255240
	str     r0, [sp, #0x14]
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xe0] @ 0x22565b8, (=0x2256710)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_20196c0
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
	bl      Function_2019cb8
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r3, #0x2
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x1c
	mov     r2, #0x6
	bl      Function_201a7e8
	add     r0, sp, #0x1c
	mov     r1, #0x4
	bl      Function_201ada4
	add     r0, sp, #0x1c
	bl      Function_201a9f4
	ldr     r1, [pc, #0x80] @ 0x22565bc, (=0x1ca)
	mov     r0, #0x1a
	mov     r2, #0x0
	mov     r3, #0x8
	bl      Function_200b010
	mov     r4, r0
	beq     branch_225657c
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	bl      Function_2002d7c
	mov     r1, #0x0
	mov     r6, r0
	mov     r3, #0xc0
	sub     r3, r3, r6
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x22565c0, (=0x10804)
	mov     r2, r4
	str     r0, [sp, #0x8]
	add     r0, sp, #0x1c
	lsr     r3, r3, #1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     r0, sp, #0x1c
	bl      Function_201accc
	mov     r0, r4
	bl      Function_20237bc
.thumb
branch_225657c: @ 225657c :thumb
	add     r0, sp, #0x1c
	bl      Function_201a8fc
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_22565ec
	ldr     r1, [pc, #0x30] @ 0x22565c4, (=0x4001000)
	ldr     r0, [pc, #0x30] @ 0x22565c8, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x18]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x4
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r7
	bl      Function_22564a8
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x22565b6


.align 2


.word 0x2256710 @ 0x22565b8
.word 0x1ca @ 0x22565bc
.word 0x10804 @ 0x22565c0
.word 0x4001000 @ 0x22565c4
.word 0xffffe0ff @ 0x22565c8
.thumb
Function_22565cc: @ 22565cc :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_22566a8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_22564a8
	pop     {r3-r5,pc}
@ 0x22565ec

.thumb
Function_22565ec: @ 22565ec :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r1, [sp, #0x8]
	bl      0x2255360
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0xc
	add     r0, #0x54
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	ldr     r0, [sp, #0x8]
	mov     r4, #0x0
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bls     branch_2256672
	ldr     r5, [sp, #0x4]
	ldr     r6, [sp, #0x8]
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x54
	ldr     r7, [pc, #0x80] @ 0x22566a4, (=0x2256750)
	str     r4, [sp, #0xc]
	str     r0, [sp, #0x10]
.thumb
branch_2256628: @ 2256628 :thumb
	ldr     r0, [r6, #0x0]
	ldr     r2, [r6, #0x8]
	mov     r1, #0x0
	bl      Function_2079d8c
	str     r0, [r5, #0x68]
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	ldr     r0, [r0, #0x20]
	mov     r1, r7
	bl      0x2255810
	ldr     r1, [sp, #0xc]
	str     r0, [r5, #0x24]
	bl      0x2255940
	ldr     r0, [r6, #0x0]
	ldr     r1, [r6, #0x8]
	mov     r2, #0x0
	bl      Function_2079edc
	mov     r1, r0
	ldr     r0, [r5, #0x24]
	bl      0x2255938
	ldr     r0, [sp, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x10
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r6, #0xc
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r7, #0x10
	cmp     r4, r0
	bcc     branch_2256628
.thumb
branch_2256672: @ 2256672 :thumb
	cmp     r4, #0xc
	bge     branch_2256688
	ldr     r0, [sp, #0x4]
	lsl     r1, r4, #2
	add     r1, r0, r1
	mov     r0, #0x0
.thumb
branch_225667e: @ 225667e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r1, #0x24]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r4, #0xc
	blt     branch_225667e
.thumb
branch_2256688: @ 2256688 :thumb
	ldr     r2, [sp, #0x8]
	ldr     r1, [sp, #0x4]
	add     r2, #0x90
	mov     r0, #0x0
	str     r2, [sp, #0x8]
	add     r1, #0x68
	ldr     r2, [r2, #0x0]
	mov     r3, r0
	str     r1, [sp, #0x4]
	bl      0x22553a0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22566a2


.align 2


.word 0x2256750 @ 0x22566a4
.thumb
Function_22566a8: @ 22566a8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_22566b2: @ 22566b2 :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_22566c0
	ldr     r0, [r6, #0x20]
	bl      0x22558b0
	str     r7, [r5, #0x24]
.thumb
branch_22566c0: @ 22566c0 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xc
	blt     branch_22566b2
	add     r6, #0x54
	mov     r0, r6
	bl      0x22559b0
	pop     {r3-r7,pc}
@ 0x22566d2


.align 2, 0
Unknown_22566d4: @ 0x22566d4
.incbin "./baserom/overlay/overlay_0054.bin", 0x514, 0x2256820 - 0x22566d4


@end 0x2256820




