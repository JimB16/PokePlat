

.section .iwram43, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256311)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256311 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x24
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562cd)
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


.word 0x22562cd @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	mov     r6, r2
	mov     r0, r3
	add     r1, #0x8
	mov     r2, #0xc
	str     r3, [r5, #0x4]
	bl      0x2099d7c
	cmp     r0, #0x0
	bne     branch_2256240
	mov     r0, r5
	add     r0, #0x8
	bl      Function_2256288
.thumb
branch_2256240: @ 2256240 :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x14
	add     r1, #0x8
	mov     r2, r6
	bl      Function_2256544
	cmp     r0, #0x0
	beq     branch_2256278
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2256280, (=0x2256a98)
	ldr     r2, [pc, #0x20] @ 0x2256284, (=0x2256309)
	mov     r1, #0x6
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x1c]
	mov     r0, #0x0
	str     r0, [r5, #0x20]
	add     sp, #0x4
	str     r4, [r5, #0x18]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x2256278

.thumb
branch_2256278: @ 2256278 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x225627e


.align 2


.word 0x2256a98 @ 0x2256280
.word Function_2256308+1 @ =0x2256309, 0x2256284
.thumb
Function_2256288: @ 2256288 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	strh    r0, [r4, #0x6]
	strh    r0, [r4, #0x8]
	mov     r0, #0x12
	strh    r0, [r4, #0xa]
	ldrh    r0, [r4, #0x6]
	ldrh    r1, [r4, #0x8]
	ldrh    r2, [r4, #0xa]
	bl      Function_22564ac
	strh    r0, [r4, #0x4]
	pop     {r4,pc}
@ 0x22562a6


.align 2, 0


.thumb
Function_22562a8: @ 22562a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8
	mov     r2, #0xc
	bl      0x2099d54
	ldr     r0, [r4, #0x1c]
	bl      0x2255b34
	ldr     r0, [r4, #0x14]
	bl      Function_2256680
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562cc

.thumb
Function_22562cc: @ 22562cc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_2256302
	ldr     r0, [r4, #0x18]
	ldr     r1, [r4, #0x1c]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256304, (=Unknown_2256a8c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256302
	mov     r0, r4
	bl      Function_22562a8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x18]
	bl      0x2254260
branch_2256302: @ 2256302 :thumb
	pop     {r3-r5,pc}
@ 0x2256304

.word Unknown_2256a8c @ 0x2256304



.thumb
Function_2256308: @ 2256308 :thumb
	str     r0, [r3, #0x8]
	str     r1, [r3, #0x20]
	bx      lr
@ 0x225630e


.align 2, 0
.thumb
Function_2256310: @ 2256310 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x2256316


.align 2, 0


.thumb
Function_2256318: @ 2256318 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256320
	b       branch_2256322
@ 0x2256320

.thumb
branch_2256320: @ 2256320 :thumb
	mov     r1, #0x2
.thumb
branch_2256322: @ 2256322 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225632a


.align 2, 0


.thumb
Function_225632c: @ 225632c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225633c
	cmp     r0, #0x1
	beq     branch_225634c
	b       branch_2256366
@ 0x225633c

.thumb
branch_225633c: @ 225633c :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22566b0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256366
@ 0x225634c

.thumb
branch_225634c: @ 225634c :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22566d4
	cmp     r0, #0x0
	beq     branch_2256366
	ldr     r0, [r4, #0x18]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256318
.thumb
branch_2256366: @ 2256366 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225636a


.align 2, 0


.thumb
Function_225636c: @ 225636c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_225638c
	ldr     r0, [r4, #0x14]
	bl      Function_22566e0
	cmp     r0, #0x0
	beq     branch_2256388
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256318
.thumb
branch_2256388: @ 2256388 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225638c

.thumb
branch_225638c: @ 225638c :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225639c
	cmp     r0, #0x1
	beq     branch_22563b2
	cmp     r0, #0x2
	beq     branch_2256464
	b       branch_2256472
@ 0x225639c

.thumb
branch_225639c: @ 225639c :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x1
	bne     branch_2256472
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_22566b0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256472
@ 0x22563b2

.thumb
branch_22563b2: @ 22563b2 :thumb
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x2
	bne     branch_22563c6
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_22566b0
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_2256472
@ 0x22563c6

.thumb
branch_22563c6: @ 22563c6 :thumb
	cmp     r0, #0x3
	bne     branch_2256472
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x5
	bhi     branch_2256440
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22563dc

Jumppoints_22563dc:
.hword branch_22563e8 - Jumppoints_22563dc - 2
.hword branch_22563f8 - Jumppoints_22563dc - 2
.hword branch_2256406 - Jumppoints_22563dc - 2
.hword branch_2256416 - Jumppoints_22563dc - 2
.hword branch_2256424 - Jumppoints_22563dc - 2
.hword branch_2256434 - Jumppoints_22563dc - 2
.thumb
branch_22563e8: @ 22563e8 :thumb
	ldrh    r0, [r4, #0xe]
	mov     r1, #0x0
	mvn     r1, r1
	mov     r2, #0x0
	bl      Function_22564ec
	strh    r0, [r4, #0xe]
	b       branch_2256440
@ 0x22563f8

.thumb
branch_22563f8: @ 22563f8 :thumb
	ldrh    r0, [r4, #0xe]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_22564ec
	strh    r0, [r4, #0xe]
	b       branch_2256440
@ 0x2256406

.thumb
branch_2256406: @ 2256406 :thumb
	ldrh    r0, [r4, #0x10]
	mov     r1, #0x0
	mvn     r1, r1
	mov     r2, #0x0
	bl      Function_22564ec
	strh    r0, [r4, #0x10]
	b       branch_2256440
@ 0x2256416

.thumb
branch_2256416: @ 2256416 :thumb
	ldrh    r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_22564ec
	strh    r0, [r4, #0x10]
	b       branch_2256440
@ 0x2256424

.thumb
branch_2256424: @ 2256424 :thumb
	ldrh    r0, [r4, #0x12]
	mov     r1, #0x0
	mvn     r1, r1
	mov     r2, #0x1
	bl      Function_22564ec
	strh    r0, [r4, #0x12]
	b       branch_2256440
@ 0x2256434

.thumb
branch_2256434: @ 2256434 :thumb
	ldrh    r0, [r4, #0x12]
	mov     r1, #0x1
	mov     r2, r1
	bl      Function_22564ec
	strh    r0, [r4, #0x12]
.thumb
branch_2256440: @ 2256440 :thumb
	ldrh    r0, [r4, #0xe]
	ldrh    r1, [r4, #0x10]
	ldrh    r2, [r4, #0x12]
	bl      Function_22564ac
	strh    r0, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_22566b0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_22566b0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256472
@ 0x2256464

.thumb
branch_2256464: @ 2256464 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22566e0
	cmp     r0, #0x0
	beq     branch_2256472
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256472: @ 2256472 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256476


.align 2, 0


.thumb
Function_2256478: @ 2256478 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256488
	cmp     r0, #0x1
	beq     branch_2256498
	b       branch_22564a6
@ 0x2256488

.thumb
branch_2256488: @ 2256488 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_22566b0
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22564a6
@ 0x2256498

.thumb
branch_2256498: @ 2256498 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22566e0
	cmp     r0, #0x0
	beq     branch_22564a6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22564a6

.thumb
branch_22564a6: @ 22564a6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564aa


.align 2, 0


.thumb
Function_22564ac: @ 22564ac :thumb
	push    {r4,r5}
	ldr     r5, [pc, #0x38] @ 0x22564e8, (=0x2256ab0)
	mov     r3, #0x12
	mov     r4, r0
	mul     r4, r3
	add     r4, r5, r4
	mov     r0, r3
	ldsb    r5, [r4, r1]
	sub     r0, #0x1c
	cmp     r5, r0
	beq     branch_22564ce
	cmp     r2, #0x12
	beq     branch_22564d4
	ldsb    r0, [r4, r2]
	sub     r3, #0x1c
	cmp     r0, r3
	bne     branch_22564d4
.thumb
branch_22564ce: @ 22564ce :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x22564d4

.thumb
branch_22564d4: @ 22564d4 :thumb
	mov     r0, #0x3
	add     r0, r0, r5
	cmp     r2, #0x12
	beq     branch_22564e4
	cmp     r2, r1
	beq     branch_22564e4
	ldsb    r1, [r4, r2]
	add     r0, r0, r1
.thumb
branch_22564e4: @ 22564e4 :thumb
	pop     {r4,r5}
	bx      lr
@ 0x22564e8

.word 0x2256ab0 @ 0x22564e8
.thumb
Function_22564ec: @ 22564ec :thumb
	push    {r4,r5}
	ldr     r5, [pc, #0x50] @ 0x2256540, (=0x2256bf4)
	mov     r4, #0x0
.thumb
branch_22564f2: @ 22564f2 :thumb
	ldrb    r3, [r5, #0x0]
	cmp     r3, r0
	beq     branch_2256500
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r4, #0x11
	bcc     branch_22564f2
.thumb
branch_2256500: @ 2256500 :thumb
	cmp     r4, #0x11
	bne     branch_2256514
	cmp     r1, #0x0
	ble     branch_225650e
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x225650e

.thumb
branch_225650e: @ 225650e :thumb
	mov     r0, #0x8
	pop     {r4,r5}
	bx      lr
@ 0x2256514

.thumb
branch_2256514: @ 2256514 :thumb
	add     r4, r4, r1
	cmp     r4, #0x11
	blt     branch_2256526
	cmp     r2, #0x0
	beq     branch_2256524
	mov     r0, #0x12
	pop     {r4,r5}
	bx      lr
@ 0x2256524

.thumb
branch_2256524: @ 2256524 :thumb
	mov     r4, #0x0
.thumb
branch_2256526: @ 2256526 :thumb
	cmp     r4, #0x0
	bge     branch_2256536
	cmp     r2, #0x0
	beq     branch_2256534
	mov     r0, #0x12
	pop     {r4,r5}
	bx      lr
@ 0x2256534

.thumb
branch_2256534: @ 2256534 :thumb
	mov     r4, #0x10
.thumb
branch_2256536: @ 2256536 :thumb
	ldr     r0, [pc, #0x8] @ 0x2256540, (=0x2256bf4)
	ldrb    r0, [r0, r4]
	pop     {r4,r5}
	bx      lr
@ 0x225653e


.align 2


.word 0x2256bf4 @ 0x2256540
.thumb
Function_2256544: @ 2256544 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0xc0
	bl      malloc
	mov     r4, r0
	beq     branch_22565ae
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	mov     r2, #0x27
	str     r0, [r4, #0x30]
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #4
	mov     r3, #0x8
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r2, #0x72
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x8
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x80
	mov     r1, #0x8
	bl      Function_2023790
	mov     r1, r4
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_22565b4
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22565ae

.thumb
branch_22565ae: @ 22565ae :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22565b2


.align 2, 0


.thumb
Function_22565b4: @ 22565b4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r6, r0
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x40
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r0, #0x60
	mov     r1, #0xc
	mov     r2, #0x3e
	mov     r3, #0x3f
	bl      0x2255958
	mov     r0, r6
	str     r0, [sp, #0xc]
	add     r0, #0x60
	ldr     r4, [pc, #0x50] @ 0x2256638, (=0x2256c7c)
	mov     r7, #0x0
	mov     r5, r6
	str     r0, [sp, #0xc]
.thumb
branch_22565ee: @ 22565ee :thumb
	ldr     r0, [r6, #0x30]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x34]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x6
	blt     branch_22565ee
	mov     r0, r6
	str     r0, [sp, #0x10]
	add     r0, #0x60
	mov     r7, #0x0
	mov     r4, r6
	mov     r5, #0x2c
	str     r0, [sp, #0x10]
.thumb
branch_2256612: @ 2256612 :thumb
	ldr     r0, [r6, #0x30]
	ldr     r1, [pc, #0x24] @ 0x225663c, (=0x2256c08)
	ldr     r2, [sp, #0x10]
	bl      0x2255810
	mov     r2, #0x3
	lsl     r1, r5, #12
	lsl     r2, r2, #16
	str     r0, [r4, #0x4c]
	bl      0x2255900
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x8
	cmp     r7, #0x5
	blt     branch_2256612
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256636


.align 2


.word 0x2256c7c @ 0x2256638
.word 0x2256c08 @ 0x225663c
.thumb
Function_2256640: @ 2256640 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_2256648: @ 2256648 :thumb
	ldr     r1, [r4, #0x34]
	cmp     r1, #0x0
	beq     branch_2256654
	ldr     r0, [r5, #0x30]
	bl      0x22558b0
.thumb
branch_2256654: @ 2256654 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x6
	blt     branch_2256648
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_2256660: @ 2256660 :thumb
	ldr     r1, [r4, #0x4c]
	cmp     r1, #0x0
	beq     branch_225666c
	ldr     r0, [r5, #0x30]
	bl      0x22558b0
.thumb
branch_225666c: @ 225666c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x5
	blt     branch_2256660
	add     r5, #0x60
	mov     r0, r5
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x225667e


.align 2, 0


.thumb
Function_2256680: @ 2256680 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_22566ae
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	mov     r0, r4
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	mov     r0, r4
	bl      Function_2256640
	mov     r0, r4
	bl      free
.thumb
branch_22566ae: @ 22566ae :thumb
	pop     {r4,pc}
@ 0x22566b0

.thumb
Function_22566b0: @ 22566b0 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22566d0, (=0x2256c34)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22566ce


.align 2


.word 0x2256c34 @ 0x22566d0
.thumb
Function_22566d4: @ 22566d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22566dc, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22566da


.align 2


.word 0x2255131 @ 0x22566dc
.thumb
Function_22566e0: @ 22566e0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22566e8, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22566e6


.align 2


.word 0x2255155 @ 0x22566e8
.thumb
Function_22566ec: @ 22566ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22566fe


.align 2, 0


.thumb
Function_2256700: @ 2256700 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r7, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x7c] @ 0x2256798, (=0x2256c18)
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
	mov     r1, #0x3d
	mov     r3, #0x6
	bl      0x2006e3c
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
	mov     r1, #0x3c
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r5
	mov     r1, r7
	lsr     r2, r4, #5
	bl      Function_22567a4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x225679c, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x22567a0, (=0xffffe0ff)
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
	mov     r0, r6
	bl      Function_22566ec
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256796


.align 2


.word 0x2256c18 @ 0x2256798
.word 0x4001000 @ 0x225679c
.word 0xffffe0ff @ 0x22567a0
.thumb
Function_22567a4: @ 22567a4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0xf
	mov     r4, r2
	str     r0, [sp, #0x0]
	mov     r2, #0x6
	str     r2, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r6, r1
	str     r0, [sp, #0x10]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0x74
	mov     r3, r2
	bl      0x201a7e8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r2, #0x6
	mov     r1, r5
	str     r2, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xc
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, #0x84
	mov     r3, #0x10
	bl      0x201a7e8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r2, #0x6
	mov     r1, r5
	str     r2, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0x18
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, #0x94
	mov     r3, #0x10
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x16
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r5
	add     r4, #0x24
	str     r0, [sp, #0xc]
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, #0xa4
	mov     r2, #0x6
	mov     r3, #0x3
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x74
	bl      0x201a9f4
	mov     r0, r5
	add     r0, #0x84
	bl      0x201a9f4
	mov     r0, r5
	add     r0, #0x94
	bl      0x201a9f4
	mov     r0, r5
	add     r0, #0xa4
	bl      0x201a9f4
	mov     r0, r5
	mov     r1, r6
	bl      Function_2256948
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225686e


.align 2, 0


.thumb
Function_2256870: @ 2256870 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x74
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x84
	bl      Function_201a8fc
	mov     r0, r4
	add     r0, #0x94
	bl      Function_201a8fc
	add     r4, #0xa4
	mov     r0, r4
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x2256894

.thumb
Function_2256894: @ 2256894 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_2256870
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r5
	bl      Function_22566ec
	pop     {r3-r5,pc}
@ 0x22568b4

.thumb
Function_22568b4: @ 22568b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	ldr     r2, [r0, #0x0]
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_22568d2
	mov     r1, #0x3
.thumb
branch_22568d2: @ 22568d2 :thumb
	lsl     r0, r2, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x34]
	bl      0x22558c4
	ldr     r0, [pc, #0xc] @ 0x22568ec, (=0x663)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22566ec
	pop     {r3-r5,pc}
@ 0x22568ea


.align 2


.word 0x663 @ 0x22568ec
.thumb
Function_22568f0: @ 22568f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	ldr     r2, [r0, #0x0]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_225690e
	mov     r1, #0x2
	b       branch_2256910
@ 0x225690e

.thumb
branch_225690e: @ 225690e :thumb
	mov     r1, #0x0
.thumb
branch_2256910: @ 2256910 :thumb
	lsl     r0, r2, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x34]
	bl      0x22558c4
	mov     r0, r5
	bl      Function_22566ec
	pop     {r3-r5,pc}
@ 0x2256922


.align 2, 0


.thumb
Function_2256924: @ 2256924 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_2256948
	mov     r0, r5
	bl      Function_22566ec
	pop     {r3-r5,pc}
@ 0x2256946


.align 2, 0


.thumb
Function_2256948: @ 2256948 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, r5
	ldrh    r2, [r4, #0x6]
	add     r1, #0x74
	bl      Function_2256988
	mov     r1, r5
	ldrh    r2, [r4, #0x8]
	mov     r0, r5
	add     r1, #0x84
	bl      Function_2256988
	mov     r1, r5
	ldrh    r2, [r4, #0xa]
	mov     r0, r5
	add     r1, #0x94
	bl      Function_2256988
	mov     r1, r5
	ldrh    r2, [r4, #0x4]
	mov     r0, r5
	add     r1, #0xa4
	bl      Function_2256a00
	ldrh    r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_2256a4c
	pop     {r3-r5,pc}
@ 0x2256986


.align 2, 0


.thumb
Function_2256988: @ 2256988 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x4
	mov     r6, r2
	bl      Function_201ada4
	cmp     r6, #0x12
	bne     branch_22569b2
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xb8
	add     r2, #0xbc
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x6
	bl      Function_200b1b8
	b       branch_22569c4
@ 0x22569b2

.thumb
branch_22569b2: @ 22569b2 :thumb
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xb4
	add     r2, #0xbc
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r1, r6
	bl      Function_200b1b8
.thumb
branch_22569c4: @ 22569c4 :thumb
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x0
	ldr     r1, [r1, #0x0]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x22569fc, (=0x10804)
	add     r5, #0xbc
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r5, #0x30
	sub     r3, r5, r3
	mov     r0, r4
	lsr     r3, r3, #1
	bl      0x201d78c
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x22569fc

.word 0x10804 @ 0x22569fc
.thumb
Function_2256a00: @ 2256a00 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x4
	mov     r6, r2
	bl      Function_201ada4
	mov     r0, r5
	mov     r2, r5
	add     r0, #0xb8
	add     r2, #0xbc
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r1, r6
	bl      Function_200b1b8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2256a48, (=0x10804)
	add     r5, #0xbc
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      0x201d78c
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2256a48

.word 0x10804 @ 0x2256a48
.thumb
Function_2256a4c: @ 2256a4c :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	mov     r6, r1
	ldr     r4, [pc, #0x34] @ 0x2256a88, (=0x0)
	beq     branch_2256a6a
	mov     r5, r0
	mov     r7, #0x4
.thumb
branch_2256a5a: @ 2256a5a :thumb
	ldr     r0, [r5, #0x4c]
	mov     r1, r7
	bl      0x22558c4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	bcc     branch_2256a5a
.thumb
branch_2256a6a: @ 2256a6a :thumb
	cmp     r4, #0x5
	bcs     branch_2256a86
	ldr     r0, [sp, #0x0]
	lsl     r1, r4, #2
	add     r5, r0, r1
	mov     r6, #0x5
.thumb
branch_2256a76: @ 2256a76 :thumb
	ldr     r0, [r5, #0x4c]
	mov     r1, r6
	bl      0x22558c4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	bcc     branch_2256a76
branch_2256a86: @ 2256a86 :thumb
	pop     {r3-r7,pc}
@ 0x2256a88

.word 0x0 @ 0x2256a88



Unknown_2256a8c: @ 0x2256a8c
.incbin "./baserom/overlay/overlay_0043.bin", 0x8cc, 0x2256d00 - 0x2256a8c


@end 0x2256d00




