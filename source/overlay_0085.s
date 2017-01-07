

.section .iwram85, "ax"


.thumb
Function_2241440: @ 2241440 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xe0] @ 0x2241540, (=0xffffe0ff)
	ldr     r3, [pc, #0xe0] @ 0x2241544, (=0x4001000)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r1, [r3, #0x0]
	and     r0, r1
	str     r0, [r3, #0x0]
	mov     r0, r2
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	add     r3, #0x50
	strh    r1, [r3, #0x0]
	mov     r0, #0x3
	mov     r1, #0x24
	lsr     r2, r2, #9
	bl      0x2017fc8
	mov     r1, #0x81
	mov     r0, r4
	lsl     r1, r1, #2
	mov     r2, #0x24
	bl      0x200681c
	mov     r2, #0x81
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r5, r0
	blx     0x20d5124
	mov     r0, r4
	bl      0x2006840
	mov     r1, #0x7e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x24
	bl      0x2018340
	str     r0, [r5, #0x0]
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x24
	ldrb    r0, [r0, #0x8]
	bl      0x20973b8
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x0
	mov     r1, #0x24
	bl      0x208c120
	mov     r0, #0x35
	mov     r1, #0x24
	bl      0x2006c24
	mov     r4, r0
	bl      Function_2241614
	ldr     r0, [r5, #0x0]
	bl      Function_2241634
	mov     r0, r5
	mov     r1, r4
	bl      Function_2241718
	bl      Function_22417cc
	mov     r0, r5
	bl      Function_22417e4
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, r5
	mov     r1, r4
	bl      Function_2241e60
	mov     r0, r5
	bl      Function_224183c
	mov     r0, r5
	bl      Function_2241cd0
	mov     r0, r5
	bl      Function_2242038
	mov     r0, r5
	bl      Function_2242218
	ldr     r0, [pc, #0x24] @ 0x2241548, (=0x22415f5)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	bl      0x20397e4
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, r4
	bl      0x2006ca8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241540

.word 0xffffe0ff @ 0x2241540
.word 0x4001000 @ 0x2241544
.word 0x22415f5 @ 0x2241548
.thumb
Function_224154c: @ 224154c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	bl      0x200682c
	ldr     r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bhi     branch_2241594
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241568

Jumppoints_2241568:
.hword branch_2241570 - Jumppoints_2241568 - 2
.hword branch_2241578 - Jumppoints_2241568 - 2
.hword branch_2241580 - Jumppoints_2241568 - 2
.hword branch_2241588 - Jumppoints_2241568 - 2
.thumb
branch_2241570: @ 2241570 :thumb
	bl      Function_2241ce8
	str     r0, [r4, #0x0]
	b       branch_2241594
@ 0x2241578

.thumb
branch_2241578: @ 2241578 :thumb
	bl      Function_2241d10
	str     r0, [r4, #0x0]
	b       branch_2241594
@ 0x2241580

.thumb
branch_2241580: @ 2241580 :thumb
	bl      Function_2241df8
	str     r0, [r4, #0x0]
	b       branch_2241594
@ 0x2241588

.thumb
branch_2241588: @ 2241588 :thumb
	bl      Function_2241dec
	cmp     r0, #0x1
	bne     branch_2241594
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2241594

.thumb
branch_2241594: @ 2241594 :thumb
	mov     r0, r5
	bl      Function_2241ff0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224159e


.align 2, 0


.thumb
Function_22415a0: @ 22415a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, r4, #0x4
	bl      Function_2241860
	ldr     r0, [r4, #0x0]
	bl      Function_22416e8
	bl      0x201e530
	mov     r0, r4
	bl      Function_224181c
	mov     r0, r4
	bl      Function_224202c
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x24
	bl      0x201807c
	ldr     r0, [pc, #0x8] @ 0x22415f0, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22415ee


.align 2


.word 0x4000050 @ 0x22415f0
.thumb
Function_22415f4: @ 22415f4 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x224160c, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2241610, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x224160a


.align 2


.word 0x27e0000 @ 0x224160c
.word 0x3ff8 @ 0x2241610
.thumb
Function_2241614: @ 2241614 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2241630, (=0x22428b0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_224161e: @ 224161e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_224161e
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2241630

.word 0x22428b0 @ 0x2241630
.thumb
Function_2241634: @ 2241634 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x64
	ldr     r5, [pc, #0x9c] @ 0x22416d8, (=0x224284c)
	add     r3, sp, #0x54
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	bl      Function_2241f5c
	ldr     r5, [pc, #0x88] @ 0x22416dc, (=0x2242894)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0x64] @ 0x22416e0, (=0x224285c)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x3
	mov     r3, #0x8
	bl      Function_201c63c
	ldr     r5, [pc, #0x3c] @ 0x22416e4, (=0x2242878)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x24
	bl      0x2019690
	add     sp, #0x64
	pop     {r4,r5,pc}
@ 0x22416d6


.align 2


.word 0x224284c @ 0x22416d8
.word 0x2242894 @ 0x22416dc
.word 0x224285c @ 0x22416e0
.word 0x2242878 @ 0x22416e4
.thumb
Function_22416e8: @ 22416e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xf
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, #0x24
	mov     r1, r4
	bl      0x2018238
	pop     {r4,pc}
@ 0x2241716


.align 2, 0


.thumb
Function_2241718: @ 2241718 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x24
	str     r0, [sp, #0xc]
	mov     r5, r1
	mov     r1, #0x2
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	mov     r3, r1
	bl      0x20070e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x24
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	mov     r3, #0x2
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x24
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0x1
	mov     r3, #0x3
	bl      0x200710c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2007130
	mov     r0, #0x24
	mov     r1, #0x80
	bl      malloc
	mov     r5, r0
	ldr     r0, [pc, #0x44] @ 0x22417c8, (=0x3001)
	mov     r2, #0x0
	mov     r3, r5
.thumb
branch_2241788: @ 2241788 :thumb
	add     r1, r2, r0
	strh    r1, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x40
	bcc     branch_2241788
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, r5
	mov     r3, #0x2
	bl      0x20198c0
	mov     r0, r5
	bl      free
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x2019448
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x24
	bl      0x2002e7c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22417c8

.word 0x3001 @ 0x22417c8
.thumb
Function_22417cc: @ 22417cc :thumb
	push    {r3,lr}
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc] @ 0x22417e0, (=0x4000050)
	mov     r1, #0x1
	mov     r2, #0xe
	mov     r3, #0x17
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x22417e0

.word 0x4000050 @ 0x22417e0
.thumb
Function_22417e4: @ 22417e4 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x30] @ 0x2241818, (=0x18e)
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x24
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0xc4
	str     r0, [r1, #0x0]
	mov     r0, #0xf
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x24
	bl      0x200c440
	mov     r1, r4
	add     r1, #0xcc
	str     r0, [r1, #0x0]
	mov     r0, #0x24
	bl      0x200b358
	add     r4, #0xc8
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2241818

.word 0x18e @ 0x2241818
.thumb
Function_224181c: @ 224181c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	mov     r0, r4
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	bl      0x200c560
	add     r4, #0xc8
	ldr     r0, [r4, #0x0]
	bl      0x200b3f0
	pop     {r4,pc}
@ 0x224183c

.thumb
Function_224183c: @ 224183c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r4, [pc, #0x18] @ 0x224185c, (=0x22428d8)
	mov     r6, #0x0
	add     r5, r7, #0x4
.thumb
branch_2241846: @ 2241846 :thumb
	ldr     r0, [r7, #0x0]
	mov     r1, r5
	mov     r2, r4
	bl      0x201a8d4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0x10
	cmp     r6, #0xc
	bcc     branch_2241846
	pop     {r3-r7,pc}
@ 0x224185c

.word 0x22428d8 @ 0x224185c
.thumb
Function_2241860: @ 2241860 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2241866: @ 2241866 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xc
	bcc     branch_2241866
	pop     {r3-r5,pc}
@ 0x2241876


.align 2, 0


.thumb
Function_2241878: @ 2241878 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	add     r5, r0, #0x4
	add     r0, #0xc4
	lsl     r4, r1, #4
	ldr     r0, [r0, #0x0]
	mov     r1, r2
	mov     r6, r3
	bl      Function_200b1ec
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	ldr     r1, [sp, #0x10]
	mov     r2, r0
	bl      0x2002d7c
	mov     r7, r0
	add     r0, r5, r4
	bl      0x201c294
	mov     r3, r0
	mov     r1, #0x0
	lsl     r3, r3, #3
	sub     r3, r3, r7
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r2, [sp, #0x10]
	add     r0, r5, r4
	lsr     r3, r3, #1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	add     r0, r5, r4
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22418cc

.thumb
Function_22418cc: @ 22418cc :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4
	mov     r1, #0x4
	bl      Function_201ada4
	mov     r1, #0x0
	ldr     r3, [pc, #0xc] @ 0x22418e8, (=0x10204)
	mov     r0, r4
	mov     r2, r1
	bl      Function_2241878
	pop     {r4,pc}
@ 0x22418e6


.align 2


.word 0x10204 @ 0x22418e8
.thumb
Function_22418ec: @ 22418ec :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x24
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r3, [pc, #0xc] @ 0x2241908, (=0xf0200)
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_2241878
	pop     {r4,pc}
@ 0x2241906


.align 2


.word 0xf0200 @ 0x2241908
.thumb
Function_224190c: @ 224190c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x34
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r3, [pc, #0xc] @ 0x2241928, (=0xf0200)
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x2
	bl      Function_2241878
	pop     {r4,pc}
@ 0x2241926


.align 2


.word 0xf0200 @ 0x2241928
.thumb
Function_224192c: @ 224192c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x44
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r3, [pc, #0xc] @ 0x2241948, (=0xf0200)
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x3
	bl      Function_2241878
	pop     {r4,pc}
@ 0x2241946


.align 2


.word 0xf0200 @ 0x2241948
.thumb
Function_224194c: @ 224194c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x54
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r3, [pc, #0xc] @ 0x2241968, (=0xf0200)
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	bl      Function_2241878
	pop     {r4,pc}
@ 0x2241966


.align 2


.word 0xf0200 @ 0x2241968
.thumb
Function_224196c: @ 224196c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x64
	mov     r1, #0x0
	bl      Function_201ada4
	ldr     r3, [pc, #0xc] @ 0x2241988, (=0xf0200)
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x5
	bl      Function_2241878
	pop     {r4,pc}
@ 0x2241986


.align 2


.word 0xf0200 @ 0x2241988
.thumb
Function_224198c: @ 224198c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x14
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x0
	bl      0x200c578
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      Function_200b1ec
	mov     r7, r0
	mov     r0, #0x6
	mov     r1, #0x24
	bl      Function_2023790
	mov     r3, #0x2
	mov     r6, r0
	mov     r2, #0x7e
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	lsl     r2, r2, #2
	ldr     r2, [r5, r2]
	mov     r0, r5
	ldrb    r2, [r2, #0x8]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      0x200b60c
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x54] @ 0x2241a54, (=0xf0200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r3, #0x10
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r7
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x24
	ldrb    r0, [r0, #0x8]
	bl      0x209742c
	mov     r5, r0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2241a54, (=0xf0200)
	mov     r2, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r3, #0x28
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2241a52


.align 2


.word 0xf0200 @ 0x2241a54
.thumb
Function_2241a58: @ 2241a58 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r4
	add     r5, #0xb4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x24
	ldrb    r0, [r0, #0x8]
	bl      0x2097454
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2241aa4, (=0x10200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2241aa2


.align 2


.word 0x10200 @ 0x2241aa4
.thumb
Function_2241aa8: @ 2241aa8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r4
	add     r5, #0x94
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2241af0, (=0xf0200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2241aee


.align 2


.word 0xf0200 @ 0x2241af0
.thumb
Function_2241af4: @ 2241af4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r4
	add     r5, #0xa4
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x20973d4
	mov     r1, r0
	beq     branch_2241b18
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_2241b18: @ 2241b18 :thumb
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	add     r1, #0xb
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2241b4c, (=0xf0200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2241b4c

.word 0xf0200 @ 0x2241b4c
.thumb
Function_2241b50: @ 2241b50 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r5, r4
	add     r5, #0x74
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	add     r4, #0xc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x8
	bl      Function_200b1ec
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2241b98, (=0xf0200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r5
	bl      Function_201a9a4
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2241b96


.align 2


.word 0xf0200 @ 0x2241b98
.thumb
Function_2241b9c: @ 2241b9c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r6, r5
	add     r6, #0x84
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x20973d4
	mov     r1, #0xfa
	lsl     r1, r1, #2
	mul     r1, r0
	mov     r0, r1
	mov     r1, #0xfe
	blx     0x20e2178
	.hword  0x1d40 @ add r0, r0, #0x5
	mov     r1, #0xa
	blx     0x20e2178
	mov     r7, r0
	mov     r0, r5
	add     r0, #0xc4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9
	bl      Function_200b1ec
	str     r0, [sp, #0x10]
	mov     r0, #0x20
	mov     r1, #0x24
	bl      Function_2023790
	mov     r4, r0
	mov     r0, r7
	mov     r1, #0xa
	blx     0x20e2178
	mov     r1, #0x0
	mov     r2, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r3, #0x2
	bl      0x200b60c
	mov     r0, r7
	mov     r1, #0xa
	blx     0x20e2178
	mov     r0, #0x0
	mov     r2, r1
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, r5
	str     r1, [sp, #0x4]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r3, r1
	bl      0x200b60c
	add     r5, #0xc8
	ldr     r0, [r5, #0x0]
	ldr     r2, [sp, #0x10]
	mov     r1, r4
	bl      Function_200c388
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x2241c60, (=0xf0200)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_20237bc
	mov     r0, r6
	bl      Function_201a9a4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2241c60

.word 0xf0200 @ 0x2241c60
.thumb
Function_2241c64: @ 2241c64 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x7
	bhi     branch_2241cce
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241c78

Jumppoints_2241c78:
.hword branch_2241c88 - Jumppoints_2241c78 - 2
.hword branch_2241c8e - Jumppoints_2241c78 - 2
.hword branch_2241c94 - Jumppoints_2241c78 - 2
.hword branch_2241c9a - Jumppoints_2241c78 - 2
.hword branch_2241ca6 - Jumppoints_2241c78 - 2
.hword branch_2241cb2 - Jumppoints_2241c78 - 2
.hword branch_2241cbe - Jumppoints_2241c78 - 2
.hword branch_2241cca - Jumppoints_2241c78 - 2
.thumb
branch_2241c88: @ 2241c88 :thumb
	bl      Function_22418cc
	pop     {r4,pc}
@ 0x2241c8e

.thumb
branch_2241c8e: @ 2241c8e :thumb
	bl      Function_22418ec
	pop     {r4,pc}
@ 0x2241c94

.thumb
branch_2241c94: @ 2241c94 :thumb
	bl      Function_224198c
	pop     {r4,pc}
@ 0x2241c9a

.thumb
branch_2241c9a: @ 2241c9a :thumb
	bl      Function_224196c
	mov     r0, r4
	bl      Function_224190c
	pop     {r4,pc}
@ 0x2241ca6

.thumb
branch_2241ca6: @ 2241ca6 :thumb
	bl      Function_224192c
	mov     r0, r4
	bl      Function_224194c
	pop     {r4,pc}
@ 0x2241cb2

.thumb
branch_2241cb2: @ 2241cb2 :thumb
	bl      Function_2241b50
	mov     r0, r4
	bl      Function_2241b9c
	pop     {r4,pc}
@ 0x2241cbe

.thumb
branch_2241cbe: @ 2241cbe :thumb
	bl      Function_2241aa8
	mov     r0, r4
	bl      Function_2241af4
	pop     {r4,pc}
@ 0x2241cca

.thumb
branch_2241cca: @ 2241cca :thumb
	bl      Function_2241a58
.thumb
branch_2241cce: @ 2241cce :thumb
	pop     {r4,pc}
@ 0x2241cd0

.thumb
Function_2241cd0: @ 2241cd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_2241cd6: @ 2241cd6 :thumb
	lsl     r1, r4, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_2241c64
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	bcc     branch_2241cd6
	pop     {r3-r5,pc}
@ 0x2241ce8

.thumb
Function_2241ce8: @ 2241ce8 :thumb
	push    {r3,lr}
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_2241d06
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2241d0c, (=0x4000050)
	mov     r1, #0x2
	mov     r2, #0x4
	mov     r3, #0x10
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2241d06

.thumb
branch_2241d06: @ 2241d06 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2241d0a


.align 2


.word 0x4000050 @ 0x2241d0c
.thumb
Function_2241d10: @ 2241d10 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0xd0] @ 0x2241de4, (=0x21bf67c)
	mov     r4, r0
	ldr     r3, [r1, #0x44]
	mov     r2, #0x40
	mov     r0, r3
	tst     r0, r2
	beq     branch_2241d6c
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	sub     r2, #0x41
	ldrb    r1, [r0, #0x8]
	bl      Function_2241eb8
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r3, [r4, r1]
	ldrb    r2, [r3, #0x8]
	cmp     r2, r0
	beq     branch_2241d68
	strb    r0, [r3, #0x8]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x9
	strb    r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x8
	strb    r2, [r4, r0]
	ldr     r1, [r4, r1]
	ldrb    r0, [r1, #0xa]
	cmp     r0, #0x3
	bne     branch_2241d5e
	ldrb    r0, [r1, #0x9]
	cmp     r0, #0x0
	beq     branch_2241d5e
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r1, #0x9]
	b       branch_2241d64
@ 0x2241d5e

.thumb
branch_2241d5e: @ 2241d5e :thumb
	ldrb    r0, [r1, #0xa]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r1, #0xa]
.thumb
branch_2241d64: @ 2241d64 :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2241d68

.thumb
branch_2241d68: @ 2241d68 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241d6c

.thumb
branch_2241d6c: @ 2241d6c :thumb
	mov     r0, #0x80
	tst     r0, r3
	beq     branch_2241dc4
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r2, #0x1
	ldrb    r1, [r0, #0x8]
	bl      Function_2241eb8
	mov     r1, #0x7e
	lsl     r1, r1, #2
	ldr     r3, [r4, r1]
	ldrb    r2, [r3, #0x8]
	cmp     r2, r0
	beq     branch_2241dc0
	strb    r0, [r3, #0x8]
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0x9
	strb    r2, [r4, r0]
	mov     r0, r1
	add     r0, #0x8
	strb    r2, [r4, r0]
	ldr     r3, [r4, r1]
	ldrb    r0, [r3, #0xa]
	cmp     r0, #0x5
	bne     branch_2241db6
	ldrb    r1, [r3, #0x9]
	ldrb    r0, [r3, #0xb]
	mov     r2, r1
	add     r2, #0x9
	cmp     r2, r0
	bge     branch_2241db6
	add     r0, r1, #0x1
	strb    r0, [r3, #0x9]
	b       branch_2241dbc
@ 0x2241db6

.thumb
branch_2241db6: @ 2241db6 :thumb
	ldrb    r0, [r3, #0xa]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r3, #0xa]
.thumb
branch_2241dbc: @ 2241dbc :thumb
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2241dc0

.thumb
branch_2241dc0: @ 2241dc0 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241dc4

.thumb
branch_2241dc4: @ 2241dc4 :thumb
	ldr     r1, [r1, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2241dd4
	ldr     r0, [pc, #0x18] @ 0x2241de8, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_2241de0
.thumb
branch_2241dd4: @ 2241dd4 :thumb
	mov     r0, #0x1
	mov     r1, #0x24
	bl      0x208c120
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241de0

.thumb
branch_2241de0: @ 2241de0 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241de4

.word 0x21bf67c @ 0x2241de4
.word 0x21bf6bc @ 0x2241de8
.thumb
Function_2241dec: @ 2241dec :thumb
	push    {r3,lr}
	bl      0x200f2ac
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x2241df8

.thumb
Function_2241df8: @ 2241df8 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x2
	mov     r5, r0
	lsl     r1, r4, #8
	ldrb    r1, [r5, r1]
	cmp     r1, #0x0
	bne     branch_2241e1c
	ldr     r0, [pc, #0x50] @ 0x2241e58, (=0x201)
	ldrb    r1, [r5, r0]
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r1, [r5, r0]
	ldrb    r0, [r5, r0]
	cmp     r0, #0x10
	bne     branch_2241e42
	mov     r1, #0x1
	lsl     r0, r1, #9
	strb    r1, [r5, r0]
	b       branch_2241e42
@ 0x2241e1c

.thumb
branch_2241e1c: @ 2241e1c :thumb
	cmp     r1, #0x1
	bne     branch_2241e2c
	bl      Function_2241f0c
	mov     r1, r4
	lsl     r0, r1, #8
	strb    r1, [r5, r0]
	b       branch_2241e42
@ 0x2241e2c

.thumb
branch_2241e2c: @ 2241e2c :thumb
	ldr     r0, [pc, #0x28] @ 0x2241e58, (=0x201)
	ldrb    r1, [r5, r0]
	.hword  0x1f09 @ sub r1, r1, #0x4
	strb    r1, [r5, r0]
	ldrb    r1, [r5, r0]
	cmp     r1, #0x0
	bne     branch_2241e42
	mov     r1, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r1, [r5, r0]
	mov     r4, #0x1
.thumb
branch_2241e42: @ 2241e42 :thumb
	ldr     r0, [pc, #0x14] @ 0x2241e58, (=0x201)
	ldrb    r2, [r5, r0]
	mov     r0, #0x10
	sub     r1, r0, r2
	lsl     r0, r2, #8
	orr     r1, r0
	ldr     r0, [pc, #0xc] @ 0x2241e5c, (=0x4000052)
	strh    r1, [r0, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2241e56


.align 2


.word 0x201 @ 0x2241e58
.word 0x4000052 @ 0x2241e5c
.thumb
Function_2241e60: @ 2241e60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	ldrb    r0, [r0, #0x8]
	bl      Function_2241eb0
	mov     r3, #0x1
	mov     r1, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x24
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	bl      0x20070e8
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldrb    r0, [r0, #0x8]
	bl      Function_2241eb4
	mov     r1, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	mov     r3, #0x60
	bl      0x2007130
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2241eb0

.thumb
Function_2241eb0: @ 2241eb0 :thumb
	.hword  0x1d80 @ add r0, r0, #0x6
	bx      lr
@ 0x2241eb4

.thumb
Function_2241eb4: @ 2241eb4 :thumb
	add     r0, #0x46
	bx      lr
@ 0x2241eb8

.thumb
Function_2241eb8: @ 2241eb8 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r2
	mov     r6, r0
	mov     r4, r7
	cmp     r5, #0x0
	bge     branch_2241ee6
	cmp     r7, #0x0
	beq     branch_2241f06
.thumb
branch_2241eca: @ 2241eca :thumb
	.hword  0x1e64 @ sub r4, r4, #0x1
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      0x2097368
	cmp     r0, #0x1
	bne     branch_2241ee0
	mov     r7, r4
	.hword  0x1c6d @ add r5, r5, #0x1
	beq     branch_2241f06
.thumb
branch_2241ee0: @ 2241ee0 :thumb
	cmp     r4, #0x0
	beq     branch_2241f06
	b       branch_2241eca
@ 0x2241ee6

.thumb
branch_2241ee6: @ 2241ee6 :thumb
	cmp     r7, #0x3f
	beq     branch_2241f06
.thumb
branch_2241eea: @ 2241eea :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r1, r4, #16
	mov     r0, r6
	lsr     r1, r1, #16
	bl      0x2097368
	cmp     r0, #0x1
	bne     branch_2241f02
	lsl     r0, r4, #16
	lsr     r7, r0, #16
	.hword  0x1e6d @ sub r5, r5, #0x1
	beq     branch_2241f06
.thumb
branch_2241f02: @ 2241f02 :thumb
	cmp     r4, #0x3f
	bne     branch_2241eea
.thumb
branch_2241f06: @ 2241f06 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x2241f0a


.align 2, 0


.thumb
Function_2241f0c: @ 2241f0c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x7e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x24
	ldrb    r0, [r0, #0x8]
	bl      0x20973b8
	mov     r1, #0x7f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_2241cd0
	mov     r0, #0x35
	mov     r1, #0x24
	bl      0x2006c24
	mov     r5, r0
	mov     r0, r4
	mov     r1, r5
	bl      Function_2241e60
	mov     r0, r5
	bl      0x2006ca8
	mov     r0, r4
	bl      Function_2242578
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x2019448
	pop     {r3-r5,pc}
@ 0x2241f5c

.thumb
Function_2241f5c: @ 2241f5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	blx     0x20bf9ac
	blx     0x20bfb4c
	ldr     r0, [pc, #0x68] @ 0x2241fd4, (=0x4000060)
	ldr     r1, [pc, #0x6c] @ 0x2241fd8, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	ldr     r3, [pc, #0x6c] @ 0x2241fdc, (=0xcffb)
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r4, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	sub     r3, #0x1c
	and     r4, r2
	mov     r2, #0x8
	orr     r2, r4
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	mov     r1, #0x10
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r3
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     0x20bfc74
	mov     r0, #0x0
	ldr     r2, [pc, #0x34] @ 0x2241fe0, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x2c] @ 0x2241fe4, (=0x4000540)
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x2241fe8, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r1, [pc, #0x24] @ 0x2241fec, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	strh    r2, [r1, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2241fd4

.word 0x4000060 @ 0x2241fd4
.word 0xffffcffd @ 0x2241fd8
.word 0xcffb @ 0x2241fdc
.word 0x7fff @ 0x2241fe0
.word 0x4000540 @ 0x2241fe4
.word 0xbfff0000 @ 0x2241fe8
.word 0x4000008 @ 0x2241fec
.thumb
Function_2241ff0: @ 2241ff0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Call_G3X_Reset
	bl      0x20203ec
	ldr     r2, [pc, #0x24] @ 0x2242024, (=0x4000440)
	mov     r3, #0x0
	mov     r1, r2
	str     r3, [r2, #0x0]
	add     r1, #0x14
	str     r3, [r1, #0x0]
	mov     r0, #0x2
	str     r0, [r2, #0x0]
	mov     r0, r4
	add     r0, #0xd4
	str     r3, [r1, #0x0]
	bl      Function_22420a8
	mov     r0, r4
	bl      Function_2242144
	ldr     r0, [pc, #0x8] @ 0x2242028, (=0x4000540)
	mov     r1, #0x1
	str     r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x2242024

.word 0x4000440 @ 0x2242024
.word 0x4000540 @ 0x2242028
.thumb
Function_224202c: @ 224202c :thumb
	ldr     r3, [pc, #0x4] @ 0x2242034, (=0x20203b9)
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x2242034

.word 0x20203b9 @ 0x2242034



.thumb
Function_2242038: @ 2242038 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	ldr     r3, [pc, #0x60] @ 0x22420a0, (=Unknown_2242840)
	mov     r4, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r1, sp, #0x8
	str     r0, [r2, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	strh    r0, [r1, #0x2]
	strh    r0, [r1, #0x4]
	strh    r0, [r1, #0x6]
	mov     r0, #0x24
	bl      0x20203ac
	mov     r1, r4
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [sp, #0x0]
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x34] @ 0x22420a4, (=0x5c1)
	str     r0, [sp, #0x4]
	add     r0, sp, #0x10
	lsl     r1, r1, #16
	add     r2, sp, #0x8
	bl      0x2020738
	mov     r2, r4
	add     r2, #0xd0
	mov     r1, #0x19
	ldr     r2, [r2, #0x0]
	mov     r0, #0x0
	lsl     r1, r1, #14
	bl      0x20206bc
	mov     r0, r4
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x20206b0
	add     r4, #0xd0
	ldr     r0, [r4, #0x0]
	bl      0x20203d4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x22420a0

.word Unknown_2242840 @ 0x22420a0
.word 0x5c1 @ 0x22420a4



.thumb
Function_22420a8: @ 22420a8 :thumb
	push    {r4-r7}
	mov     r4, r0
	ldr     r0, [pc, #0x60] @ 0x2242110, (=0x121800c0)
	ldr     r1, [pc, #0x64] @ 0x2242114, (=0x40004a4)
	ldr     r2, [pc, #0x64] @ 0x2242118, (=0x3fe8)
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	str     r0, [r1, #0x5c]
	ldr     r0, [pc, #0x60] @ 0x224211c, (=0x400048c)
	mov     r3, #0x0
	sub     r1, #0x24
.thumb
branch_22420be: @ 22420be :thumb
	str     r2, [r1, #0x0]
	ldrh    r7, [r4, #0x2]
	ldrh    r5, [r4, #0x0]
	ldrh    r6, [r4, #0x4]
	lsl     r7, r7, #16
	orr     r5, r7
	str     r5, [r0, #0x0]
	str     r6, [r0, #0x0]
	str     r2, [r1, #0x0]
	ldrh    r7, [r4, #0x8]
	ldrh    r5, [r4, #0x6]
	ldrh    r6, [r4, #0xa]
	lsl     r7, r7, #16
	orr     r5, r7
	str     r5, [r0, #0x0]
	str     r6, [r0, #0x0]
	str     r2, [r1, #0x0]
	ldrh    r7, [r4, #0x14]
	ldrh    r5, [r4, #0x12]
	ldrh    r6, [r4, #0x16]
	lsl     r7, r7, #16
	orr     r5, r7
	str     r5, [r0, #0x0]
	str     r6, [r0, #0x0]
	str     r2, [r1, #0x0]
	ldrh    r7, [r4, #0xe]
	ldrh    r5, [r4, #0xc]
	ldrh    r6, [r4, #0x10]
	lsl     r7, r7, #16
	orr     r5, r7
	str     r5, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r4, #0x18
	str     r6, [r0, #0x0]
	cmp     r3, #0x4
	bcc     branch_22420be
	ldr     r0, [pc, #0x18] @ 0x2242120, (=0x4000504)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r4-r7}
	bx      lr
@ 0x2242110

.word 0x121800c0 @ 0x2242110
.word 0x40004a4 @ 0x2242114
.word 0x3fe8 @ 0x2242118
.word 0x400048c @ 0x224211c
.word 0x4000504 @ 0x2242120
.thumb
Function_2242124: @ 2242124 :thumb
	mov     r2, #0x0
	ldsh    r3, [r0, r2]
	ldsh    r2, [r1, r2]
	add     r2, r3, r2
	strh    r2, [r0, #0x0]
	mov     r2, #0x2
	ldsh    r3, [r0, r2]
	ldsh    r2, [r1, r2]
	add     r2, r3, r2
	strh    r2, [r0, #0x2]
	mov     r2, #0x4
	ldsh    r3, [r0, r2]
	ldsh    r1, [r1, r2]
	add     r1, r3, r1
	strh    r1, [r0, #0x4]
	bx      lr
@ 0x2242144

.thumb
Function_2242144: @ 2242144 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x7d
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #2
	ldr     r1, [r1, r0]
	cmp     r1, #0x4
	beq     branch_2242212
	cmp     r1, #0x3
	bne     branch_224217e
	ldr     r6, [sp, #0x0]
	mov     r5, #0x0
	sub     r0, #0x60
.thumb
branch_2242160: @ 2242160 :thumb
	mov     r3, r6
	add     r4, r6, r0
	add     r3, #0xd4
	mov     r2, #0xc
.thumb
branch_2242168: @ 2242168 :thumb
	ldrh    r1, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r1, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2242168
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x18
	cmp     r5, #0x4
	bcc     branch_2242160
	b       branch_2242204
@ 0x224217e

.thumb
branch_224217e: @ 224217e :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r2, r0
	ldr     r1, [sp, #0x0]
	sub     r2, #0xc0
	add     r1, r1, r2
	str     r1, [sp, #0x14]
	ldr     r1, [sp, #0x0]
	mov     r2, r0
	str     r1, [sp, #0x10]
	add     r1, #0xd4
	str     r1, [sp, #0x10]
	ldr     r1, [sp, #0x0]
	sub     r2, #0xba
	add     r1, r1, r2
	mov     r2, r0
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x0]
	sub     r2, #0xb4
	str     r1, [sp, #0x8]
	add     r1, #0xda
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	sub     r0, #0xae
	mov     r4, r1
	mov     r5, r1
	add     r7, r1, r2
	add     r4, #0xe0
	add     r6, r1, r0
	add     r5, #0xe6
.thumb
branch_22421ba: @ 22421ba :thumb
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	bl      Function_2242124
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0xc]
	bl      Function_2242124
	mov     r0, r4
	mov     r1, r7
	bl      Function_2242124
	mov     r0, r5
	mov     r1, r6
	bl      Function_2242124
	ldr     r0, [sp, #0x14]
	add     r7, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r4, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r6, #0x18
	add     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r5, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	bcc     branch_22421ba
.thumb
branch_2242204: @ 2242204 :thumb
	mov     r1, #0x7d
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	add     r2, r0, #0x1
	ldr     r0, [sp, #0x0]
	str     r2, [r0, r1]
.thumb
branch_2242212: @ 2242212 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2242216


.align 2, 0


.thumb
Function_2242218: @ 2242218 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	ldr     r2, [pc, #0x170] @ 0x2242390, (=0x2242940)
	mov     r5, r0
	ldrh    r3, [r2, #0x34]
	add     r1, sp, #0x0
	add     r5, #0xd8
	strh    r3, [r1, #0x12]
	ldrh    r3, [r2, #0x36]
	strh    r3, [r1, #0x14]
	ldrh    r2, [r2, #0x38]
	strh    r2, [r1, #0x16]
	mov     r2, r0
	ldrh    r4, [r1, #0x12]
	add     r2, #0xd4
	strh    r4, [r2, #0x0]
	mov     r2, r0
	ldrh    r3, [r1, #0x14]
	add     r2, #0xd6
	strh    r3, [r2, #0x0]
	ldrh    r2, [r1, #0x16]
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xda
	strh    r4, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xdc
	strh    r3, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xde
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xe0
	strh    r4, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xe2
	strh    r3, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xe4
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xe6
	strh    r4, [r5, #0x0]
	mov     r4, r0
	add     r4, #0xe8
	strh    r3, [r4, #0x0]
	mov     r3, r0
	add     r3, #0xea
	strh    r2, [r3, #0x0]
	ldr     r2, [pc, #0x118] @ 0x2242394, (=0x2242980)
	mov     r5, r0
	ldrh    r3, [r2, #0x2a]
	add     r5, #0xf0
	strh    r3, [r1, #0xc]
	ldrh    r3, [r2, #0x2c]
	strh    r3, [r1, #0xe]
	ldrh    r2, [r2, #0x2e]
	strh    r2, [r1, #0x10]
	mov     r2, r0
	ldrh    r4, [r1, #0xc]
	add     r2, #0xec
	strh    r4, [r2, #0x0]
	mov     r2, r0
	ldrh    r3, [r1, #0xe]
	add     r2, #0xee
	strh    r3, [r2, #0x0]
	ldrh    r2, [r1, #0x10]
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xf2
	strh    r4, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xf4
	strh    r3, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xf6
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xf8
	strh    r4, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xfa
	strh    r3, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xfc
	strh    r2, [r5, #0x0]
	mov     r5, r0
	add     r5, #0xfe
	strh    r4, [r5, #0x0]
	mov     r5, #0x1
	lsl     r5, r5, #8
	strh    r3, [r0, r5]
	add     r3, r5, #0x2
	strh    r2, [r0, r3]
	ldr     r2, [pc, #0xc0] @ 0x2242398, (=0x22429c0)
	add     r4, r5, #0x6
	ldrh    r3, [r2, #0x20]
	strh    r3, [r1, #0x6]
	ldrh    r3, [r2, #0x22]
	strh    r3, [r1, #0x8]
	ldrh    r2, [r2, #0x24]
	strh    r2, [r1, #0xa]
	ldrh    r3, [r1, #0x6]
	add     r2, r5, #0x4
	strh    r3, [r0, r2]
	ldrh    r2, [r1, #0x8]
	strh    r2, [r0, r4]
	mov     r4, r5
	ldrh    r6, [r1, #0xa]
	add     r4, #0x8
	strh    r6, [r0, r4]
	mov     r4, r5
	add     r4, #0xa
	strh    r3, [r0, r4]
	mov     r4, r5
	add     r4, #0xc
	strh    r2, [r0, r4]
	mov     r4, r5
	add     r4, #0xe
	strh    r6, [r0, r4]
	mov     r4, r5
	add     r4, #0x10
	strh    r3, [r0, r4]
	mov     r4, r5
	add     r4, #0x12
	strh    r2, [r0, r4]
	mov     r4, r5
	add     r4, #0x14
	strh    r6, [r0, r4]
	mov     r4, r5
	add     r4, #0x16
	strh    r3, [r0, r4]
	mov     r3, r5
	add     r3, #0x18
	strh    r2, [r0, r3]
	mov     r2, r5
	add     r2, #0x1a
	strh    r6, [r0, r2]
	ldr     r2, [pc, #0x6c] @ 0x224239c, (=0x2242a00)
	mov     r4, r5
	ldrh    r3, [r2, #0x16]
	add     r4, #0x1e
	strh    r3, [r1, #0x0]
	ldrh    r3, [r2, #0x18]
	strh    r3, [r1, #0x2]
	ldrh    r2, [r2, #0x1a]
	strh    r2, [r1, #0x4]
	mov     r2, r5
	ldrh    r3, [r1, #0x0]
	add     r2, #0x1c
	strh    r3, [r0, r2]
	ldrh    r2, [r1, #0x2]
	strh    r2, [r0, r4]
	mov     r4, r5
	ldrh    r1, [r1, #0x4]
	add     r4, #0x20
	strh    r1, [r0, r4]
	mov     r4, r5
	add     r4, #0x22
	strh    r3, [r0, r4]
	mov     r4, r5
	add     r4, #0x24
	strh    r2, [r0, r4]
	mov     r4, r5
	add     r4, #0x26
	strh    r1, [r0, r4]
	mov     r4, r5
	add     r4, #0x28
	strh    r3, [r0, r4]
	mov     r4, r5
	add     r4, #0x2a
	strh    r2, [r0, r4]
	mov     r4, r5
	add     r4, #0x2c
	strh    r1, [r0, r4]
	mov     r4, r5
	add     r4, #0x2e
	strh    r3, [r0, r4]
	mov     r3, r5
	add     r3, #0x30
	strh    r2, [r0, r3]
	add     r5, #0x32
	strh    r1, [r0, r5]
	bl      Function_2242578
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x224238e


.align 2


.word 0x2242940 @ 0x2242390
.word 0x2242980 @ 0x2242394
.word 0x22429c0 @ 0x2242398
.word 0x2242a00 @ 0x224239c
.thumb
Function_22423a0: @ 22423a0 :thumb
	push    {r4,r5}
	cmp     r2, #0xff
	bne     branch_22423b6
	ldrh    r2, [r0, #0x0]
	strh    r2, [r1, #0x0]
	ldrh    r2, [r0, #0x2]
	strh    r2, [r1, #0x2]
	ldrh    r0, [r0, #0x4]
	strh    r0, [r1, #0x4]
	pop     {r4,r5}
	bx      lr
@ 0x22423b6

.thumb
branch_22423b6: @ 22423b6 :thumb
	cmp     r2, #0x0
	bne     branch_22423ca
	ldrh    r2, [r0, #0x6]
	strh    r2, [r1, #0x0]
	ldrh    r2, [r0, #0x8]
	strh    r2, [r1, #0x2]
	ldrh    r0, [r0, #0xa]
	strh    r0, [r1, #0x4]
	pop     {r4,r5}
	bx      lr
@ 0x22423ca

.thumb
branch_22423ca: @ 22423ca :thumb
	mov     r3, #0x6
	ldsh    r5, [r0, r3]
	mov     r3, #0xc
	ldsh    r3, [r0, r3]
	mov     r4, r3
	mul     r4, r2
	add     r3, r5, r4
	strh    r3, [r1, #0x0]
	mov     r3, #0x8
	ldsh    r5, [r0, r3]
	mov     r3, #0xe
	ldsh    r3, [r0, r3]
	mov     r4, r3
	mul     r4, r2
	add     r3, r5, r4
	strh    r3, [r1, #0x2]
	mov     r3, #0xa
	ldsh    r4, [r0, r3]
	mov     r3, #0x10
	ldsh    r0, [r0, r3]
	mul     r2, r0
	add     r0, r4, r2
	strh    r0, [r1, #0x4]
	pop     {r4,r5}
	bx      lr
@ 0x22423fc

.thumb
Function_22423fc: @ 22423fc :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, #0x0
	ldsh    r1, [r4, r0]
	ldsh    r0, [r5, r0]
	mov     r6, r2
	sub     r7, r1, r0
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0x15c] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x158] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, #0x0
	blx     0x20e1108
	bls     branch_2242450
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0x140] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x140] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0x134] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     0x20e0b00
	blx     0x20e1740
	b       branch_2242476
@ 0x2242450

.thumb
branch_2242450: @ 2242450 :thumb
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0x118] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x114] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0x108] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
	blx     0x20e1740
.thumb
branch_2242476: @ 2242476 :thumb
	lsl     r0, r0, #16
	asr     r0, r0, #16
	strh    r0, [r6, #0x0]
	mov     r0, #0x2
	ldsh    r1, [r4, r0]
	ldsh    r0, [r5, r0]
	sub     r7, r1, r0
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0xe4] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0xe0] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, #0x0
	blx     0x20e1108
	bls     branch_22424c8
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0xc8] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0xc8] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0xbc] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     0x20e0b00
	blx     0x20e1740
	b       branch_22424ee
@ 0x22424c8

.thumb
branch_22424c8: @ 22424c8 :thumb
	mov     r0, r7
	blx     0x20e17b4
	ldr     r1, [pc, #0xa0] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x9c] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0x90] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
	blx     0x20e1740
.thumb
branch_22424ee: @ 22424ee :thumb
	lsl     r0, r0, #16
	asr     r0, r0, #16
	strh    r0, [r6, #0x2]
	mov     r0, #0x4
	ldsh    r1, [r4, r0]
	ldsh    r0, [r5, r0]
	sub     r4, r1, r0
	mov     r0, r4
	blx     0x20e17b4
	ldr     r1, [pc, #0x6c] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x68] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, #0x0
	blx     0x20e1108
	bls     branch_2242540
	mov     r0, r4
	blx     0x20e17b4
	ldr     r1, [pc, #0x50] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x50] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0x44] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     0x20e0b00
	blx     0x20e1740
	b       branch_2242566
@ 0x2242540

.thumb
branch_2242540: @ 2242540 :thumb
	mov     r0, r4
	blx     0x20e17b4
	ldr     r1, [pc, #0x28] @ 0x2242570, (=0x45800000)
	blx     0x20e1304
	ldr     r1, [pc, #0x24] @ 0x2242574, (=0x40800000)
	blx     0x20e1304
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x2242570, (=0x45800000)
	blx     0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
	blx     0x20e1740
.thumb
branch_2242566: @ 2242566 :thumb
	lsl     r0, r0, #16
	asr     r0, r0, #16
	strh    r0, [r6, #0x4]
	pop     {r3-r7,pc}
@ 0x224256e


.align 2


.word 0x45800000 @ 0x2242570
.word 0x40800000 @ 0x2242574
.thumb
Function_2242578: @ 2242578 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x65
	lsl     r1, r1, #2
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x24c] @ 0x22427e0, (=0x2242938)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x238] @ 0x22427e4, (=0x19a)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x238] @ 0x22427e8, (=0x224294a)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x224] @ 0x22427ec, (=0x1a6)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x224] @ 0x22427f0, (=0x224295c)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r1, #0x1a
	lsl     r1, r1, #4
	ldr     r0, [pc, #0x218] @ 0x22427f4, (=0x224296e)
	add     r1, r5, r1
	mov     r2, #0x0
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x6b
	lsl     r1, r1, #2
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x200] @ 0x22427f8, (=0x2242980)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x1ec] @ 0x22427fc, (=0x1b2)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x1ec] @ 0x2242800, (=0x2242992)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	ldr     r1, [pc, #0x1e4] @ 0x2242804, (=0x1be)
	ldr     r0, [pc, #0x1e8] @ 0x2242808, (=0x22429a4)
	add     r1, r5, r1
	mov     r2, #0x0
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x6e
	lsl     r1, r1, #2
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x1cc] @ 0x224280c, (=0x22429b6)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x71
	lsl     r1, r1, #2
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x1b4] @ 0x2242810, (=0x22429c8)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	ldr     r1, [pc, #0x1ac] @ 0x2242814, (=0x1ca)
	ldr     r0, [pc, #0x1b0] @ 0x2242818, (=0x22429da)
	add     r1, r5, r1
	mov     r2, #0x0
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x19c] @ 0x224281c, (=0x1d6)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x19c] @ 0x2242820, (=0x22429ec)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x1d
	lsl     r1, r1, #4
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x180] @ 0x2242824, (=0x22429fe)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r1, #0x77
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x178] @ 0x2242828, (=0x2242a10)
	add     r1, r5, r1
	mov     r2, #0x0
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x164] @ 0x224282c, (=0x1e2)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x164] @ 0x2242830, (=0x2242a22)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x7
	bl      0x20973d4
	mov     r2, r0
	ldr     r1, [pc, #0x150] @ 0x2242834, (=0x1ee)
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x150] @ 0x2242838, (=0x2242a34)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x7f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      0x20973d4
	mov     r2, r0
	mov     r1, #0x7a
	lsl     r1, r1, #2
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x134] @ 0x224283c, (=0x2242a46)
	add     r1, r5, r1
	lsr     r2, r2, #24
	bl      Function_22423a0
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	add     r1, r5, r0
	str     r1, [sp, #0x20]
	mov     r1, r0
	add     r1, #0x60
	add     r1, r5, r1
	str     r1, [sp, #0x1c]
	mov     r1, r5
	str     r1, [sp, #0x18]
	add     r1, #0xd4
	str     r1, [sp, #0x18]
	add     r1, r0, #0x6
	add     r1, r5, r1
	str     r1, [sp, #0x14]
	mov     r1, r0
	add     r1, #0x66
	add     r1, r5, r1
	str     r1, [sp, #0x10]
	mov     r1, r5
	str     r1, [sp, #0xc]
	add     r1, #0xda
	str     r1, [sp, #0xc]
	mov     r1, r0
	add     r1, #0xc
	add     r1, r5, r1
	str     r1, [sp, #0x8]
	mov     r1, r0
	add     r1, #0x6c
	add     r1, r5, r1
	str     r1, [sp, #0x4]
	mov     r1, r5
	str     r1, [sp, #0x0]
	add     r1, #0xe0
	str     r1, [sp, #0x0]
	mov     r1, r0
	add     r1, #0x12
	add     r0, #0x72
	mov     r4, r5
	add     r7, r5, r1
	add     r6, r5, r0
	add     r4, #0xe6
.thumb
branch_2242766: @ 2242766 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	bl      Function_22423fc
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	bl      Function_22423fc
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x8]
	bl      Function_22423fc
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	bl      Function_22423fc
	ldr     r0, [sp, #0x20]
	add     r7, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	add     r6, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r4, #0x18
	add     r0, #0x18
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	add     r0, #0x18
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r0, #0x18
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r0, #0x18
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x8]
	add     r0, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r0, #0x18
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	add     r0, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x4
	bcc     branch_2242766
	mov     r0, #0x7d
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x22427e0

.word 0x2242938 @ 0x22427e0
.word 0x19a @ 0x22427e4
.word 0x224294a @ 0x22427e8
.word 0x1a6 @ 0x22427ec
.word 0x224295c @ 0x22427f0
.word 0x224296e @ 0x22427f4
.word 0x2242980 @ 0x22427f8
.word 0x1b2 @ 0x22427fc
.word 0x2242992 @ 0x2242800
.word 0x1be @ 0x2242804
.word 0x22429a4 @ 0x2242808
.word 0x22429b6 @ 0x224280c
.word 0x22429c8 @ 0x2242810
.word 0x1ca @ 0x2242814
.word 0x22429da @ 0x2242818
.word 0x1d6 @ 0x224281c
.word 0x22429ec @ 0x2242820
.word 0x22429fe @ 0x2242824
.word 0x2242a10 @ 0x2242828
.word 0x1e2 @ 0x224282c
.word 0x2242a22 @ 0x2242830
.word 0x1ee @ 0x2242834
.word 0x2242a34 @ 0x2242838
.word 0x2242a46 @ 0x224283c



Unknown_2242840: @ 0x2242840
.incbin "./baserom/overlay/overlay_0085.bin", 0x1400, 0x2242a60 - 0x2242840


@end 0x2242a60




