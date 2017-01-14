

.section .iwram42, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562b5)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562b5 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x14
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256281)
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


.word 0x2256281 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	mov     r6, r2
	mov     r0, r3
	add     r1, #0x8
	mov     r2, #0x4
	str     r3, [r5, #0x4]
	bl      Function_2099d7c
	cmp     r0, #0x0
	bne     branch_225623a
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_225623a: @ 225623a :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xc
	add     r1, #0x8
	mov     r2, r6
	bl      Function_22563d4
	cmp     r0, #0x0
	beq     branch_225625a
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0x10]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225625a

.thumb
branch_225625a: @ 225625a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225625e


.align 2, 0


.thumb
Function_2256260: @ 2256260 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8
	mov     r2, #0x4
	bl      Function_2099d54
	ldr     r0, [r4, #0xc]
	bl      Function_225648c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225627e


.align 2, 0


.thumb
Function_2256280: @ 2256280 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_22562ac
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x22562b0, (=Unknown_22566a8)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562ac
	mov     r0, r4
	bl      Function_2256260
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x10]
	bl      0x2254260
.thumb
branch_22562ac: @ 22562ac :thumb
	pop     {r3-r5,pc}
@ 0x22562ae

.align 2
.word Unknown_22566a8 @ 0x22562b0



.thumb
Function_22562b4: @ 22562b4 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562ba


.align 2, 0
.thumb
Function_22562bc: @ 22562bc :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562c4
	b       branch_22562c6
@ 0x22562c4

.thumb
branch_22562c4: @ 22562c4 :thumb
	mov     r1, #0x2
.thumb
branch_22562c6: @ 22562c6 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562ce


.align 2, 0


.thumb
Function_22562d0: @ 22562d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562e0
	cmp     r0, #0x1
	beq     branch_22562f0
	b       branch_225630a
@ 0x22562e0

.thumb
branch_22562e0: @ 22562e0 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_22564a0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225630a
@ 0x22562f0

.thumb
branch_22562f0: @ 22562f0 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_22564c4
	cmp     r0, #0x0
	beq     branch_225630a
	ldr     r0, [r4, #0x10]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562bc
.thumb
branch_225630a: @ 225630a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225630e


.align 2, 0


.thumb
Function_2256310: @ 2256310 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256320
	mov     r1, #0x2
	bl      Function_22562bc
.thumb
branch_2256320: @ 2256320 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225632c
	cmp     r0, #0x1
	beq     branch_225634e
	b       branch_225635e
@ 0x225632c

.thumb
branch_225632c: @ 225632c :thumb
	bl      Function_2256398
	cmp     r0, #0x0
	beq     branch_225635e
	bl      Function_201d35c
	mov     r1, #0x1
	and     r0, r1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_22564a0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225635e
@ 0x225634e

.thumb
branch_225634e: @ 225634e :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_22564c4
	cmp     r0, #0x0
	beq     branch_225635e
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_225635e: @ 225635e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256362


.align 2, 0


.thumb
Function_2256364: @ 2256364 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256374
	cmp     r0, #0x1
	beq     branch_2256384
	b       branch_2256392
@ 0x2256374

.thumb
branch_2256374: @ 2256374 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_22564a0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256392
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_22564d0
	cmp     r0, #0x0
	beq     branch_2256392
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256392

.thumb
branch_2256392: @ 2256392 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256396


.align 2, 0


.thumb
Function_2256398: @ 2256398 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x22544bc
	cmp     r0, #0x0
	beq     branch_22563ce
	ldr     r1, [sp, #0x4]
	mov     r0, #0x70
	sub     r0, r0, r1
	mov     r3, r0
	mul     r3, r0
	ldr     r1, [sp, #0x0]
	mov     r0, #0x90
	sub     r2, r0, r1
	mov     r1, r2
	mul     r1, r2
	str     r1, [sp, #0x0]
	add     r1, r3, r1
	lsl     r0, r0, #2
	str     r3, [sp, #0x4]
	cmp     r1, r0
	bcs     branch_22563ce
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22563ce

.thumb
branch_22563ce: @ 22563ce :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3,pc}
@ 0x22563d4

.thumb
Function_22563d4: @ 22563d4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x48
	bl      malloc
	mov     r4, r0
	beq     branch_2256414
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	mov     r0, r4
	bl      Function_2256420
	ldr     r1, [pc, #0x14] @ 0x2256418, (=0xffff5800)
	ldr     r0, [pc, #0x14] @ 0x225641c, (=0x2256720)
	str     r1, [r0, #0x0]
	mov     r1, #0xb
	lsl     r1, r1, #8
	str     r1, [r0, #0x4]
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256414

.thumb
branch_2256414: @ 2256414 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256418

.word 0xffff5800 @ 0x2256418
.word 0x2256720 @ 0x225641c
.thumb
Function_2256420: @ 2256420 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r4, r0
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x39
	bl      Function_2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x28
	mov     r1, #0xc
	mov     r2, #0x37
	mov     r3, #0x38
	bl      0x2255958
	mov     r2, r4
	ldr     r0, [r4, #0x20]
	ldr     r1, [pc, #0x1c] @ 0x2256470, (=0x22566b4)
	add     r2, #0x28
	bl      0x2255810
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225646a
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      0x22558c4
.thumb
branch_225646a: @ 225646a :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x225646e


.align 2


.word 0x22566b4 @ 0x2256470
.thumb
Function_2256474: @ 2256474 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x24]
	bl      0x22558b0
	add     r4, #0x28
	mov     r0, r4
	bl      0x22559b0
	pop     {r4,pc}
@ 0x225648a


.align 2, 0


.thumb
Function_225648c: @ 225648c :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_225649c
	bl      Function_2256474
	mov     r0, r4
	bl      free
.thumb
branch_225649c: @ 225649c :thumb
	pop     {r4,pc}
@ 0x225649e


.align 2, 0


.thumb
Function_22564a0: @ 22564a0 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22564c0, (=0x22566e0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22564be


.align 2


.word 0x22566e0 @ 0x22564c0
.thumb
Function_22564c4: @ 22564c4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564cc, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22564ca


.align 2


.word 0x2255131 @ 0x22564cc
.thumb
Function_22564d0: @ 22564d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564d8, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22564d6


.align 2


.word 0x2255155 @ 0x22564d8
.thumb
Function_22564dc: @ 22564dc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564ee


.align 2, 0


.thumb
Function_22564f0: @ 22564f0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x2256574, (=0x22566c4)
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
	mov     r1, #0x36
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
	mov     r1, #0x35
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x28] @ 0x2256578, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x225657c, (=0xffffe0ff)
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
	bl      Function_22564dc
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256572


.align 2


.word 0x22566c4 @ 0x2256574
.word 0x4001000 @ 0x2256578
.word 0xffffe0ff @ 0x225657c
.thumb
Function_2256580: @ 2256580 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_225659c
	cmp     r0, #0x1
	beq     branch_22565a6
	pop     {r3-r5,pc}
@ 0x225659c

.thumb
branch_225659c: @ 225659c :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x44]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_22565a6: @ 22565a6 :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22564c4
	cmp     r0, #0x0
	beq     branch_22565c0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_22564dc
.thumb
branch_22565c0: @ 22565c0 :thumb
	pop     {r3-r5,pc}
@ 0x22565c2


.align 2, 0


.thumb
Function_22565c4: @ 22565c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_22565ec
	cmp     r0, #0x1
	beq     branch_2256610
	cmp     r0, #0x2
	beq     branch_2256690
	pop     {r4-r6,pc}
@ 0x22565ec

.thumb
branch_22565ec: @ 22565ec :thumb
	ldr     r0, [pc, #0xa8] @ 0x2256698, (=0x675)
	bl      0x2254424
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, #0x9
	lsl     r0, r0, #16
	str     r0, [r4, #0x3c]
	ldr     r0, [pc, #0x98] @ 0x225669c, (=0x2256720)
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [r4, #0x44]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2256610: @ 2256610 :thumb
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	beq     branch_225661e
	mov     r0, r5
	bl      Function_22564dc
	pop     {r4-r6,pc}
@ 0x225661e

.thumb
branch_225661e: @ 225661e :thumb
	ldr     r1, [r4, #0x3c]
	ldr     r0, [r4, #0x40]
	add     r0, r1, r0
	str     r0, [r4, #0x3c]
	ldr     r0, [pc, #0x74] @ 0x225669c, (=0x2256720)
	ldr     r1, [r4, #0x40]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r0
	str     r1, [r4, #0x40]
	cmp     r1, #0x0
	ble     branch_2256682
	mov     r0, #0x9
	ldr     r2, [r4, #0x3c]
	lsl     r0, r0, #16
	cmp     r2, r0
	blt     branch_2256682
	mov     r0, #0x38
	mul     r0, r1
	mov     r1, #0x64
	blx     _s32_div_f
	neg     r1, r0
	ldr     r0, [pc, #0x54] @ 0x22566a0, (=0xffffe000)
	str     r1, [r4, #0x40]
	cmp     r1, r0
	ldr     r0, [pc, #0x50] @ 0x22566a4, (=0x676)
	bge     branch_2256660
	bl      0x2254424
	mov     r0, #0x9
	lsl     r0, r0, #16
	str     r0, [r4, #0x3c]
	b       branch_2256682
@ 0x2256660

.thumb
branch_2256660: @ 2256660 :thumb
	bl      0x2254424
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_225666e
	mov     r1, #0x1
	b       branch_2256670
@ 0x225666e

.thumb
branch_225666e: @ 225666e :thumb
	mov     r1, #0x2
.thumb
branch_2256670: @ 2256670 :thumb
	ldr     r0, [r4, #0x24]
	bl      0x22558c4
	mov     r0, #0x9
	lsl     r0, r0, #16
	str     r0, [r4, #0x3c]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2256682: @ 2256682 :thumb
	mov     r1, #0x7
	ldr     r0, [r4, #0x24]
	ldr     r2, [r4, #0x3c]
	lsl     r1, r1, #16
	bl      0x2255900
	pop     {r4-r6,pc}
@ 0x2256690

.thumb
branch_2256690: @ 2256690 :thumb
	mov     r0, r5
	bl      Function_22564dc
	pop     {r4-r6,pc}
@ 0x2256698

.word 0x675 @ 0x2256698
.word 0x2256720 @ 0x225669c
.word 0xffffe000 @ 0x22566a0
.word 0x676 @ 0x22566a4



Unknown_22566a8: @ 0x22566a8
.incbin "./baserom/overlay/overlay_0042.bin", 0x4e8, 0x2256720 - 0x22566a8


@end 0x2256720




