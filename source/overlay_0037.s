

.section .iwram37, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562dd)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562dd @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x1c
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562a1)
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


.word 0x22562a1 @ 0x2256218



.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	add     r1, sp, #0x4
	mov     r6, r2
	blx     PM_GetBackLight
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	bne     branch_2256238
	mov     r0, #0x1
	b       branch_225623a
@ 0x2256238

.thumb
branch_2256238: @ 2256238 :thumb
	mov     r0, #0x0
.thumb
branch_225623a: @ 225623a :thumb
	str     r0, [r5, #0x4]
	mov     r0, r5
	add     r0, #0x8
	add     r1, r5, #0x4
	mov     r2, r6
	bl      Function_22563d4
	cmp     r0, #0x0
	beq     branch_2256272
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2256278, (=Unknown_22565d4)
	ldr     r2, [pc, #0x20] @ 0x225627c, (=0x2256299)
	mov     r1, #0x2
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	str     r0, [r5, #0x14]
	add     sp, #0x8
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256272

.thumb
branch_2256272: @ 2256272 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2256278

.word Unknown_22565d4 @ 0x2256278
.word Function_2256298+1 @ =0x2256299, 0x225627c



.thumb
Function_2256280: @ 2256280 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x10]
	bl      0x2255b34
	ldr     r0, [r4, #0x8]
	bl      Function_2256410
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256298

.thumb
Function_2256298: @ 2256298 :thumb
	str     r0, [r3, #0x18]
	str     r1, [r3, #0x14]
	bx      lr
@ 0x225629e


.align 2, 0


.thumb
Function_22562a0: @ 22562a0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562d6
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562d8, (=0x22565dc)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562d6
	mov     r0, r4
	bl      Function_2256280
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
.thumb
branch_22562d6: @ 22562d6 :thumb
	pop     {r3-r5,pc}
@ 0x22562d8

.word 0x22565dc @ 0x22562d8
.thumb
Function_22562dc: @ 22562dc :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562e2


.align 2, 0


.thumb
Function_22562e4: @ 22562e4 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562ec
	b       branch_22562ee
@ 0x22562ec

.thumb
branch_22562ec: @ 22562ec :thumb
	mov     r1, #0x2
.thumb
branch_22562ee: @ 22562ee :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
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
	b       branch_2256332
@ 0x2256308

.thumb
branch_2256308: @ 2256308 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256488
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256332
@ 0x2256318

.thumb
branch_2256318: @ 2256318 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_22564ac
	cmp     r0, #0x0
	beq     branch_2256332
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562e4
.thumb
branch_2256332: @ 2256332 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256336


.align 2, 0


.thumb
Function_2256338: @ 2256338 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_225634c
	mov     r1, #0x2
	bl      Function_22562e4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225634c

.thumb
branch_225634c: @ 225634c :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256358
	cmp     r0, #0x1
	beq     branch_225638c
	b       branch_225639c
@ 0x2256358

.thumb
branch_2256358: @ 2256358 :thumb
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x1
	bne     branch_225639c
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x0
	bne     branch_225636a
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256374
.thumb
branch_225636a: @ 225636a :thumb
	cmp     r1, #0x1
	bne     branch_2256384
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_2256384
.thumb
branch_2256374: @ 2256374 :thumb
	ldr     r1, [r4, #0x4]
	mov     r0, #0x1
	eor     r0, r1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256488
.thumb
branch_2256384: @ 2256384 :thumb
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225639c
@ 0x225638c

.thumb
branch_225638c: @ 225638c :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_22564ac
	cmp     r0, #0x0
	beq     branch_225639c
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_225639c: @ 225639c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563a0

.thumb
Function_22563a0: @ 22563a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563b0
	cmp     r0, #0x1
	beq     branch_22563c0
	b       branch_22563ce
@ 0x22563b0

.thumb
branch_22563b0: @ 22563b0 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2256488
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ce
@ 0x22563c0

.thumb
branch_22563c0: @ 22563c0 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22564b8
	cmp     r0, #0x0
	beq     branch_22563ce
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22563ce

.thumb
branch_22563ce: @ 22563ce :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563d2


.align 2, 0


.thumb
Function_22563d4: @ 22563d4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x3c
	bl      malloc
	mov     r4, r0
	beq     branch_225640a
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
	bl      Function_225641c
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225640a

.thumb
branch_225640a: @ 225640a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225640e


.align 2, 0


.thumb
Function_2256410: @ 2256410 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_225641a
	bl      free
.thumb
branch_225641a: @ 225641a :thumb
	pop     {r3,pc}
@ 0x225641c

.thumb
Function_225641c: @ 225641c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r5, r0
	mov     r4, r1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x68
	bl      Function_2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0xc
	mov     r2, #0x66
	mov     r3, #0x67
	bl      0x2255958
	mov     r2, r5
	ldr     r0, [r5, #0x20]
	ldr     r1, [pc, #0x1c] @ 0x225646c, (=0x22565e8)
	add     r2, #0x28
	bl      0x2255810
	str     r0, [r5, #0x24]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_2256466
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1
	bl      0x22558c4
.thumb
branch_2256466: @ 2256466 :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x225646a


.align 2


.word 0x22565e8 @ 0x225646c
.thumb
Function_2256470: @ 2256470 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x24]
	bl      0x22558b0
	add     r4, #0x28
	mov     r0, r4
	bl      0x22559b0
	pop     {r4,pc}
@ 0x2256486


.align 2, 0


.thumb
Function_2256488: @ 2256488 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22564a8, (=0x2256614)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22564a6


.align 2


.word 0x2256614 @ 0x22564a8
.thumb
Function_22564ac: @ 22564ac :thumb
	ldr     r3, [pc, #0x4] @ 0x22564b4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22564b2


.align 2


.word 0x2255131 @ 0x22564b4
.thumb
Function_22564b8: @ 22564b8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564c0, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22564be


.align 2


.word 0x2255155 @ 0x22564c0
.thumb
Function_22564c4: @ 22564c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564d6


.align 2, 0


.thumb
Function_22564d8: @ 22564d8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x225655c, (=0x22565f8)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x65
	mov     r3, #0x6
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x64
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x28] @ 0x2256560, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256564, (=0xffffe0ff)
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
	bl      Function_22564c4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225655a


.align 2


.word 0x22565f8 @ 0x225655c
.word 0x4001000 @ 0x2256560
.word 0xffffe0ff @ 0x2256564
.thumb
Function_2256568: @ 2256568 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_2256470
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_22564c4
	pop     {r3-r5,pc}
@ 0x2256588

.thumb
Function_2256588: @ 2256588 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x22565d0, (=0x663)
	bl      0x2254424
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x24]
	beq     branch_22565ba
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, #0x1
	mov     r1, r0
	blx     PM_SetBackLight
	b       branch_22565c8

branch_22565ba: @ 22565ba :thumb
	mov     r1, #0x1
	bl      0x22558c4
	mov     r0, #0x1
	mov     r1, #0x0
	blx     PM_SetBackLight
branch_22565c8: @ 22565c8 :thumb
	mov     r0, r6
	bl      Function_22564c4
	pop     {r4-r6,pc}
@ 0x22565d0

.word 0x663 @ 0x22565d0



Unknown_22565d4: @ 0x22565d4
.incbin "./baserom/overlay/overlay_0037.bin", 0x414, 0x2256660 - 0x22565d4


@end 0x2256660




