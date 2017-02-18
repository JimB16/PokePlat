

.section .iwram48, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562f1)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562f1 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0xb0
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562bd)
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


.word 0x22562bd @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r1, r5
	add     r1, #0xac
	str     r7, [r1, #0x0]
	str     r2, [sp, #0x0]
	bl      Function_2256408
	str     r0, [r5, #0xc]
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x225453c
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData4
	mov     r6, r0
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      IsMapMatrixEqualZero
	cmp     r0, #0x0
	beq     branch_2256260
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x8]
	str     r0, [r5, #0x4]
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0xc]
	b       branch_2256266
@ 0x2256260

.thumb
branch_2256260: @ 2256260 :thumb
	ldr     r0, [r6, #0x8]
	str     r0, [r5, #0x4]
	ldr     r0, [r6, #0xc]
.thumb
branch_2256266: @ 2256266 :thumb
	str     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
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
	mov     r1, r7
	bl      Function_22564e0
	mov     r0, r5
	ldr     r2, [sp, #0x0]
	add     r0, #0xa8
	add     r1, r5, #0x4
	bl      Function_225650c
	cmp     r0, #0x0
	beq     branch_22562a4
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22562a4

.thumb
branch_22562a4: @ 22562a4 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22562a8

.thumb
Function_22562a8: @ 22562a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      Function_225654c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562bc

.thumb
Function_22562bc: @ 22562bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_22562ea
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x22562ec, (=Unknown_2256a2c)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562ea
	mov     r0, r4
	bl      Function_22562a8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	add     r4, #0xac
	ldr     r0, [r4, #0x0]
	bl      0x2254260
branch_22562ea: @ 22562ea :thumb
	pop     {r3-r5,pc}
@ 0x22562ec

.word Unknown_2256a2c @ 0x22562ec



.thumb
Function_22562f0: @ 22562f0 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562f6


.align 2, 0
.thumb
Function_22562f8: @ 22562f8 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256300
	b       branch_2256302
@ 0x2256300

.thumb
branch_2256300: @ 2256300 :thumb
	mov     r1, #0x2
.thumb
branch_2256302: @ 2256302 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225630a


.align 2, 0


.thumb
Function_225630c: @ 225630c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225631c
	cmp     r0, #0x1
	beq     branch_2256330
	b       branch_2256352
@ 0x225631c

.thumb
branch_225631c: @ 225631c :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2256558
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256352
@ 0x2256330

.thumb
branch_2256330: @ 2256330 :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_225657c
	cmp     r0, #0x0
	beq     branch_2256352
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562f8
.thumb
branch_2256352: @ 2256352 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256356


.align 2, 0


.thumb
Function_2256358: @ 2256358 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256370
	mov     r1, #0x2
	bl      Function_22562f8
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256370

.thumb
branch_2256370: @ 2256370 :thumb
	bl      Function_2256478
	mov     r1, r4
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_225657c
	cmp     r0, #0x0
	beq     branch_22563c8
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x22544bc
	cmp     r0, #0x0
	beq     branch_22563c8
	ldr     r0, [sp, #0x4]
	sub     r0, #0x10
	cmp     r0, #0xc0
	bcs     branch_22563a2
	mov     r1, #0x1
	b       branch_22563a4
@ 0x22563a2

.thumb
branch_22563a2: @ 22563a2 :thumb
	mov     r1, #0x0
.thumb
branch_22563a4: @ 22563a4 :thumb
	ldr     r0, [sp, #0x0]
	sub     r0, #0x10
	cmp     r0, #0xc0
	bcs     branch_22563b0
	mov     r0, #0x1
	b       branch_22563b2
@ 0x22563b0

.thumb
branch_22563b0: @ 22563b0 :thumb
	mov     r0, #0x0
.thumb
branch_22563b2: @ 22563b2 :thumb
	tst     r0, r1
	beq     branch_22563c8
	mov     r0, r4
	bl      Function_2256408
	str     r0, [r4, #0xc]
	add     r4, #0xa8
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	bl      Function_2256558
.thumb
branch_22563c8: @ 22563c8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22563ce


.align 2, 0


.thumb
Function_22563d0: @ 22563d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563e0
	cmp     r0, #0x1
	beq     branch_22563f4
	b       branch_2256404
@ 0x22563e0

.thumb
branch_22563e0: @ 22563e0 :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2256558
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256404
@ 0x22563f4

.thumb
branch_22563f4: @ 22563f4 :thumb
	add     r4, #0xa8
	ldr     r0, [r4, #0x0]
	bl      Function_2256588
	cmp     r0, #0x0
	beq     branch_2256404
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256404

.thumb
branch_2256404: @ 2256404 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256408

.thumb
Function_2256408: @ 2256408 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x2254544
	bl      LoadVariableAreaAdress_a
	mov     r4, #0x0
	mov     r6, r0
	mov     r7, r4
.thumb
branch_225641e: @ 225641e :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_2027d84
	cmp     r0, #0x1
	bne     branch_225646a
	mov     r0, r6
	mov     r1, r4
	bl      Function_2027d04
	cmp     r0, #0x5
	bne     branch_225646a
	ldr     r1, [pc, #0x3c] @ 0x2256474, (=0x2256a38)
	lsl     r0, r4, #1
	ldr     r2, [pc, #0x38] @ 0x2256474, (=0x2256a38)
	add     r1, r1, r0
	ldrb    r0, [r2, r0]
	strb    r0, [r5, #0x10]
	ldrb    r0, [r1, #0x1]
	strb    r0, [r5, #0x11]
	b       branch_225644c
@ 0x2256448

.thumb
branch_2256448: @ 2256448 :thumb
	.hword  0x1c89 @ add r1, r1, #0x2
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_225644c: @ 225644c :thumb
	add     r0, r4, #0x1
	cmp     r0, #0x76
	bcs     branch_2256462
	ldrb    r2, [r5, #0x10]
	ldrb    r0, [r1, #0x2]
	cmp     r2, r0
	bne     branch_2256462
	ldrb    r2, [r5, #0x11]
	ldrb    r0, [r1, #0x3]
	cmp     r2, r0
	beq     branch_2256448
.thumb
branch_2256462: @ 2256462 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x40
	bge     branch_2256470
.thumb
branch_225646a: @ 225646a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x76
	bcc     branch_225641e
.thumb
branch_2256470: @ 2256470 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2256474

.word 0x2256a38 @ 0x2256474
.thumb
Function_2256478: @ 2256478 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	mov     r6, #0x0
	bl      0x2254534
	cmp     r0, #0x0
	beq     branch_22564dc
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      0x225453c
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      LoadVariableAreaAdress_6
	bl      AddVariableAreaAdress_6_MapData4
	mov     r7, r0
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      IsMapMatrixEqualZero
	cmp     r0, #0x0
	beq     branch_22564b6
	ldr     r1, [r4, #0x1c]
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0xc]
	b       branch_22564ba
@ 0x22564b6

.thumb
branch_22564b6: @ 22564b6 :thumb
	ldr     r0, [r7, #0x8]
	ldr     r1, [r7, #0xc]
.thumb
branch_22564ba: @ 22564ba :thumb
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
	bne     branch_22564d6
	ldr     r2, [r5, #0x8]
	cmp     r1, r2
	beq     branch_22564dc
.thumb
branch_22564d6: @ 22564d6 :thumb
	str     r0, [r5, #0x4]
	str     r1, [r5, #0x8]
	mov     r6, #0x1
.thumb
branch_22564dc: @ 22564dc :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x22564e0

.thumb
Function_22564e0: @ 22564e0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, r1
	bl      0x2254544
	bl      LoadFlagAdress
	mov     r6, r0
	mov     r4, #0x0
.thumb
branch_22564f2: @ 22564f2 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_206b1f0
	mov     r1, r5
	add     r1, #0x98
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r0, [r1, #0x0]
	cmp     r4, #0x4
	blt     branch_22564f2
	pop     {r4-r6,pc}
@ 0x225650a


.align 2, 0


.thumb
Function_225650c: @ 225650c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r1, #0x16
	mov     r6, r0
	mov     r0, #0x8
	lsl     r1, r1, #4
	bl      malloc
	mov     r4, r0
	beq     branch_2256546
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x20]
	add     r5, #0x8c
	mov     r0, #0x15
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256546

.thumb
branch_2256546: @ 2256546 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225654a


.align 2, 0


.thumb
Function_225654c: @ 225654c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_2256556
	bl      free
.thumb
branch_2256556: @ 2256556 :thumb
	pop     {r3,pc}
@ 0x2256558

.thumb
Function_2256558: @ 2256558 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256578, (=0x2256b40)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256576


.align 2


.word 0x2256b40 @ 0x2256578
.thumb
Function_225657c: @ 225657c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256584, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256582


.align 2


.word 0x2255131 @ 0x2256584
.thumb
Function_2256588: @ 2256588 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256590, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225658e


.align 2


.word 0x2255155 @ 0x2256590
.thumb
Function_2256594: @ 2256594 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22565a6


.align 2, 0


.thumb
Function_22565a8: @ 22565a8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x2256640, (=0x400104c)
	mov     r3, #0x0
	strb    r3, [r0, #0x0]
	strb    r3, [r0, #0x1]
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x80] @ 0x2256644, (=0x2256b24)
	mov     r1, #0x6
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
	mov     r1, #0x75
	mov     r3, #0x6
	bl      LoadFromNARC_RGCN
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x74
	mov     r3, #0x6
	bl      LoadFromNARC_RCSN
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r5
	lsr     r1, r4, #5
	bl      Function_2256650
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x30] @ 0x2256648, (=0x4001000)
	ldr     r0, [pc, #0x30] @ 0x225664c, (=0xffffe0ff)
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
	mov     r0, r5
	bl      Function_22567fc
	mov     r0, r6
	bl      Function_2256594
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2256640

.word 0x400104c @ 0x2256640
.word 0x2256b24 @ 0x2256644
.word 0x4001000 @ 0x2256648
.word 0xffffe0ff @ 0x225664c
.thumb
Function_2256650: @ 2256650 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x24
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0x6c] @ 0x22566c8, (=0x1cb)
	mov     r0, #0x1a
	mov     r2, #0x0
	mov     r3, #0x8
	bl      Function_200b010_LoadFromNARCCallMsgDecrypt
	mov     r6, r0
	beq     branch_22566c2
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, sp, #0x14
	mov     r2, #0x6
	mov     r3, #0x12
	bl      Function_201a7e8
	add     r0, sp, #0x14
	mov     r1, #0x4
	bl      Function_201ada4_ClearTextBox
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x22566cc, (=0x10804)
	mov     r2, r6
	str     r0, [sp, #0x8]
	add     r0, sp, #0x14
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     r0, sp, #0x14
	bl      Function_201a9f4
	add     r0, sp, #0x14
	bl      Function_201accc
	add     r0, sp, #0x14
	bl      Function_201a8fc
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
.thumb
branch_22566c2: @ 22566c2 :thumb
	add     sp, #0x24
	pop     {r3-r6,pc}
@ 0x22566c6


.align 2


.word 0x1cb @ 0x22566c8
.word 0x10804 @ 0x22566cc
.thumb
Function_22566d0: @ 22566d0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_22566ec
	cmp     r0, #0x1
	beq     branch_22566fc
	pop     {r3-r5,pc}
@ 0x22566ec

.thumb
branch_22566ec: @ 22566ec :thumb
	mov     r0, #0x57
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x22566fc

.thumb
branch_22566fc: @ 22566fc :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_225657c
	cmp     r0, #0x0
	beq     branch_2256724
	mov     r0, r4
	bl      Function_2256984
	ldr     r0, [pc, #0x18] @ 0x2256728, (=0x400104c)
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_2256594
.thumb
branch_2256724: @ 2256724 :thumb
	pop     {r3-r5,pc}
@ 0x2256726


.align 2


.word 0x400104c @ 0x2256728
.thumb
Function_225672c: @ 225672c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256752
	cmp     r0, #0x1
	beq     branch_2256786
	cmp     r0, #0x2
	beq     branch_2256794
	pop     {r3-r5,pc}
@ 0x2256752

.thumb
branch_2256752: @ 2256752 :thumb
	mov     r1, #0x55
	mov     r0, #0x6
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r2, #0x0
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x8
	str     r2, [r4, r0]
	ldr     r2, [r4, r1]
	lsl     r0, r2, #4
	orr     r0, r2
	ldr     r2, [pc, #0x84] @ 0x22567f4, (=0x400104c)
	strb    r0, [r2, #0x0]
	ldr     r1, [r4, r1]
	lsl     r0, r1, #4
	orr     r0, r1
	strb    r0, [r2, #0x1]
	ldr     r0, [pc, #0x7c] @ 0x22567f8, (=0x678)
	bl      0x2254424
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256786

.thumb
branch_2256786: @ 2256786 :thumb
	mov     r0, r4
	bl      Function_2256920
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256794

.thumb
branch_2256794: @ 2256794 :thumb
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22567a6
	mov     r0, r5
	bl      Function_2256594
	pop     {r3-r5,pc}
@ 0x22567a6

.thumb
branch_22567a6: @ 22567a6 :thumb
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	ldr     r1, [r4, r1]
	cmp     r1, #0x3
	blt     branch_22567f2
	mov     r2, #0x0
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0x8
	ldr     r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	mov     r1, r0
	sub     r1, #0x8
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0x8
	ldr     r2, [r4, r1]
	lsl     r1, r2, #4
	orr     r2, r1
	ldr     r1, [pc, #0x1c] @ 0x22567f4, (=0x400104c)
	strb    r2, [r1, #0x0]
	mov     r2, r0
	sub     r2, #0x8
	ldr     r3, [r4, r2]
	sub     r0, #0x8
	lsl     r2, r3, #4
	orr     r2, r3
	strb    r2, [r1, #0x1]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22567f2
	mov     r0, r5
	bl      Function_2256594
.thumb
branch_22567f2: @ 22567f2 :thumb
	pop     {r3-r5,pc}
@ 0x22567f4

.word 0x400104c @ 0x22567f4
.word 0x678 @ 0x22567f8
.thumb
Function_22567fc: @ 22567fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	ldr     r7, [r6, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x78
	bl      Function_2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	lsl     r0, r0, #2
	add     r0, r6, r0
	mov     r1, #0xc
	mov     r2, #0x76
	mov     r3, #0x77
	bl      0x2255958
	mov     r2, #0x0
	add     r0, sp, #0xc
	strb    r2, [r0, #0x12]
	mov     r1, #0x2
	strb    r1, [r0, #0x13]
	strb    r2, [r0, #0x15]
	ldr     r0, [r7, #0x0]
	ldr     r1, [r7, #0x4]
	add     r2, sp, #0x10
	add     r3, sp, #0xc
	bl      0x2255dbc
	ldr     r0, [sp, #0x10]
	mov     r2, #0x4e
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	lsl     r2, r2, #2
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	mov     r1, #0x0
	add     r0, sp, #0xc
	strb    r1, [r0, #0x14]
	strh    r1, [r0, #0x10]
	ldr     r0, [r6, #0x20]
	add     r1, sp, #0x14
	add     r2, r6, r2
	bl      0x2255810
	mov     r1, #0x1
	str     r0, [r6, #0x24]
	bl      0x2255948
	mov     r1, #0x1
	add     r0, sp, #0xc
	strb    r1, [r0, #0x14]
	mov     r1, #0x7
	strh    r1, [r0, #0x10]
	mov     r5, #0x0
	str     r5, [sp, #0x14]
	str     r5, [sp, #0x18]
	mov     r4, r6
.thumb
branch_2256880: @ 2256880 :thumb
	mov     r2, #0x4e
	lsl     r2, r2, #2
	ldr     r0, [r6, #0x20]
	add     r1, sp, #0x14
	add     r2, r6, r2
	bl      0x2255810
	mov     r1, #0x1
	str     r0, [r4, #0x28]
	bl      0x2255948
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x40
	blt     branch_2256880
	mov     r0, r6
	bl      Function_2256920
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_22568a8: @ 22568a8 :thumb
	mov     r0, r5
	add     r1, sp, #0x10
	add     r2, sp, #0xc
	bl      0x2255dfc
	ldr     r0, [sp, #0x10]
	mov     r1, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	mov     r2, #0x4e
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	add     r0, sp, #0xc
	strb    r1, [r0, #0x14]
	mov     r1, r5
	add     r1, #0xe
	strh    r1, [r0, #0x10]
	lsl     r2, r2, #2
	ldr     r0, [r6, #0x20]
	add     r1, sp, #0x14
	add     r2, r6, r2
	bl      0x2255810
	mov     r1, #0x4a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2255948
	mov     r0, r7
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22568fe
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_22568fe: @ 22568fe :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r5, #0x4
	blt     branch_22568a8
	ldr     r0, [pc, #0x10] @ 0x225691c, (=0x22569fd)
	mov     r1, r6
	mov     r2, #0x3
	bl      AddTaskToTaskList1
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x225691c

.word 0x22569fd @ 0x225691c
.thumb
Function_2256920: @ 2256920 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	ldr     r1, [r7, #0x0]
	mov     r4, #0x0
	ldr     r0, [r1, #0x8]
	cmp     r0, #0x0
	ble     branch_2256966
	mov     r6, r4
	mov     r5, r7
.thumb
branch_2256934: @ 2256934 :thumb
	add     r1, r1, r6
	ldrb    r0, [r1, #0xc]
	ldrb    r1, [r1, #0xd]
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      0x2255dbc
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	ldr     r0, [r5, #0x28]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r5, #0x28]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r1, [r7, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r1, #0x8]
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_2256934
.thumb
branch_2256966: @ 2256966 :thumb
	cmp     r4, #0x40
	bge     branch_2256980
	lsl     r0, r4, #2
	add     r5, r7, r0
	mov     r6, #0x1
.thumb
branch_2256970: @ 2256970 :thumb
	ldr     r0, [r5, #0x28]
	mov     r1, r6
	bl      0x2255914
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x40
	blt     branch_2256970
.thumb
branch_2256980: @ 2256980 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2256984

.thumb
Function_2256984: @ 2256984 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_225699e
	bl      Call_RemoveTaskFromTaskList
	mov     r0, #0x53
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
.thumb
branch_225699e: @ 225699e :thumb
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_22569a4: @ 22569a4 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22569ba
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	mov     r0, #0x4a
	lsl     r0, r0, #2
	str     r7, [r4, r0]
.thumb
branch_22569ba: @ 22569ba :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_22569a4
	mov     r6, #0x0
	mov     r4, r5
	mov     r7, r6
.thumb
branch_22569c8: @ 22569c8 :thumb
	ldr     r1, [r4, #0x28]
	cmp     r1, #0x0
	beq     branch_22569d6
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	str     r7, [r4, #0x28]
.thumb
branch_22569d6: @ 22569d6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x40
	blt     branch_22569c8
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_22569ee
	ldr     r0, [r5, #0x20]
	bl      0x22558b0
	mov     r0, #0x0
	str     r0, [r5, #0x24]
.thumb
branch_22569ee: @ 22569ee :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x22559b0
	pop     {r3-r7,pc}
@ 0x22569fa


.align 2, 0


.thumb
Function_22569fc: @ 22569fc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	mov     r0, r1
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256a26
	ldmia   r1!, {r0,r1}
	add     r2, sp, #0x4
	add     r3, sp, #0x0
	bl      0x2255dbc
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	ldr     r0, [r4, #0x24]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
branch_2256a26: @ 2256a26 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2256a2a


.align 2, 0
Unknown_2256a2c: @ 0x2256a2c
.incbin "./baserom/overlay/overlay_0048.bin", 0x86c, 0x2256b80 - 0x2256a2c


@end 0x2256b80




