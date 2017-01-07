

.section .iwram26, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562f9)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562f9 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x2c
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


.word 0x22562bd @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	add     r0, #0x24
	add     r1, #0x14
	bl      Function_2256404
	cmp     r0, #0x0
	beq     branch_2256298
	mov     r1, #0x0
	strb    r1, [r5, #0x0]
	strb    r1, [r5, #0x1]
	strb    r1, [r5, #0x2]
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
	strb    r1, [r5, #0x7]
	mov     r0, r5
	str     r1, [r5, #0x20]
	add     r0, #0x14
	bl      0x2013880
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x18
	bcc     branch_2256256
	mov     r1, #0x18
	blx     0x20e2178
	str     r1, [r5, #0x14]
.thumb
branch_2256256: @ 2256256 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x3c
	bcc     branch_2256270
	ldr     r0, [r5, #0x14]
	mov     r1, #0x3c
	blx     0x20e2178
	str     r1, [r5, #0x14]
	ldr     r0, [r5, #0x18]
	mov     r1, #0x3c
	blx     0x20e2178
	str     r1, [r5, #0x18]
.thumb
branch_2256270: @ 2256270 :thumb
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0x28] @ 0x225629c, (=0x2256301)
	strb    r0, [r5, #0x6]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x1
	strb    r0, [r5, #0x5]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x22562a0, (=Unknown_2256718)
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_2256292
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2256292: @ 2256292 :thumb
	str     r4, [r5, #0x28]
	mov     r0, #0x1
	pop     {r3-r5,pc}

branch_2256298: @ 2256298 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225629c

.word Function_2256300+1 @ =0x2256301, 0x225629c
.word Unknown_2256718 @ 0x22562a0



.thumb
Function_22562a4: @ 22562a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	bl      Function_225649c
	ldr     r0, [r4, #0x10]
	bl      0x2255b34
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562bc

.thumb
Function_22562bc: @ 22562bc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562f2
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x10]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562f4, (=0x225671c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562f2
	mov     r0, r4
	bl      Function_22562a4
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x28]
	bl      0x2254260
.thumb
branch_22562f2: @ 22562f2 :thumb
	pop     {r3-r5,pc}
@ 0x22562f4

.word 0x225671c @ 0x22562f4
.thumb
Function_22562f8: @ 22562f8 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562fe


.align 2, 0


.thumb
Function_2256300: @ 2256300 :thumb
	cmp     r2, #0x0
	beq     branch_2256310
	cmp     r2, #0x1
	bne     branch_2256318
	mov     r0, #0x1
	str     r0, [r3, #0x20]
	strb    r0, [r3, #0x7]
	bx      lr
@ 0x2256310

.thumb
branch_2256310: @ 2256310 :thumb
	mov     r0, #0x0
	str     r0, [r3, #0x20]
	mov     r0, #0x1
	strb    r0, [r3, #0x7]
.thumb
branch_2256318: @ 2256318 :thumb
	bx      lr
@ 0x225631a


.align 2, 0


.thumb
Function_225631c: @ 225631c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256324
	b       branch_2256326
@ 0x2256324

.thumb
branch_2256324: @ 2256324 :thumb
	mov     r1, #0x2
.thumb
branch_2256326: @ 2256326 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225632e


.align 2, 0


.thumb
Function_2256330: @ 2256330 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256340
	cmp     r0, #0x1
	beq     branch_2256350
	b       branch_225636a
@ 0x2256340

.thumb
branch_2256340: @ 2256340 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_22564a8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225636a
@ 0x2256350

.thumb
branch_2256350: @ 2256350 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_22564cc
	cmp     r0, #0x0
	beq     branch_225636a
	ldr     r0, [r4, #0x28]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225631c
.thumb
branch_225636a: @ 225636a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225636e


.align 2, 0


.thumb
Function_2256370: @ 2256370 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256384
	mov     r1, #0x2
	bl      Function_225631c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	ldrb    r0, [r4, #0x7]
	cmp     r0, #0x0
	beq     branch_2256396
	mov     r0, #0x0
	strb    r0, [r4, #0x7]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_22564a8
.thumb
branch_2256396: @ 2256396 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_22564cc
	cmp     r0, #0x0
	beq     branch_22563ca
	ldr     r0, [r4, #0x18]
	strb    r0, [r4, #0x6]
	ldr     r0, [r4, #0x14]
	strb    r0, [r4, #0x5]
	mov     r0, r4
	add     r0, #0x14
	bl      0x2013880
	ldrb    r1, [r4, #0x6]
	ldr     r0, [r4, #0x18]
	cmp     r1, r0
	bne     branch_22563c2
	ldrb    r1, [r4, #0x5]
	ldr     r0, [r4, #0x14]
	cmp     r1, r0
	beq     branch_22563ca
.thumb
branch_22563c2: @ 22563c2 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_22564a8
.thumb
branch_22563ca: @ 22563ca :thumb
	mov     r0, #0x0
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
	beq     branch_22563f0
	b       branch_22563fe
@ 0x22563e0

.thumb
branch_22563e0: @ 22563e0 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      Function_22564a8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563fe
@ 0x22563f0

.thumb
branch_22563f0: @ 22563f0 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_22564d8
	cmp     r0, #0x0
	beq     branch_22563fe
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22563fe

.thumb
branch_22563fe: @ 22563fe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256402


.align 2, 0


.thumb
Function_2256404: @ 2256404 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r1
	mov     r1, #0x3
	mov     r5, r0
	mov     r0, #0x8
	lsl     r1, r1, #8
	bl      malloc
	mov     r4, r0
	beq     branch_2256464
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xc
	mov     r1, #0x19
	mov     r2, #0x1
	add     r3, sp, #0x4
	bl      0x2006f6c
	mov     r6, r0
	bne     branch_225644a
	mov     r0, r4
	bl      free
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225644a

.thumb
branch_225644a: @ 225644a :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	add     r0, #0xc
	add     r1, #0x30
	bl      Function_225646c
	mov     r0, r6
	bl      free
	add     sp, #0x8
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256464

.thumb
branch_2256464: @ 2256464 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x225646a


.align 2, 0


.thumb
Function_225646c: @ 225646c :thumb
	push    {r3-r7,lr}
	mov     r6, #0x9
	mov     r5, r0
	mov     r4, r1
	mov     r7, #0x0
	lsl     r6, r6, #6
.thumb
branch_2256478: @ 2256478 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x40
	blx     MIi_CpuCopy16
	mov     r1, r4
	add     r0, r5, r6
	add     r1, #0x40
	mov     r2, #0x10
	blx     MIi_CpuCopy16
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x40
	add     r4, #0x50
	sub     r6, #0x30
	cmp     r7, #0x9
	blt     branch_2256478
	pop     {r3-r7,pc}
@ 0x225649c

.thumb
Function_225649c: @ 225649c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_22564a6
	bl      free
.thumb
branch_22564a6: @ 22564a6 :thumb
	pop     {r3,pc}
@ 0x22564a8

.thumb
Function_22564a8: @ 22564a8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22564c8, (=0x2256744)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22564c6


.align 2


.word 0x2256744 @ 0x22564c8
.thumb
Function_22564cc: @ 22564cc :thumb
	ldr     r3, [pc, #0x4] @ 0x22564d4, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22564d2


.align 2


.word 0x2255131 @ 0x22564d4
.thumb
Function_22564d8: @ 22564d8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564e0, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22564de


.align 2


.word 0x2255155 @ 0x22564e0
.thumb
Function_22564e4: @ 22564e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564f6


.align 2, 0


.thumb
Function_22564f8: @ 22564f8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x74] @ 0x2256580, (=0x2256728)
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
	mov     r1, #0x17
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
	mov     r1, #0x18
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r5
	bl      Function_22565f4
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x24] @ 0x2256584, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256588, (=0xffffe0ff)
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
	bl      Function_22564e4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256580

.word 0x2256728 @ 0x2256580
.word 0x4001000 @ 0x2256584
.word 0xffffe0ff @ 0x2256588
.thumb
Function_225658c: @ 225658c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_22565f4
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_22564e4
	pop     {r3-r5,pc}
@ 0x22565ac

.thumb
Function_22565ac: @ 22565ac :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_22565c8
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546f0
	b       branch_22565d0
@ 0x22565c8

.thumb
branch_22565c8: @ 22565c8 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
.thumb
branch_22565d0: @ 22565d0 :thumb
	mov     r0, r4
	bl      Function_22564e4
	pop     {r4,pc}
@ 0x22565d8

.thumb
Function_22565d8: @ 22565d8 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22564e4
	pop     {r4,pc}
@ 0x22565f2


.align 2, 0


.thumb
Function_22565f4: @ 22565f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x10c] @ 0x225670c, (=0x4000280)
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256612: @ 2256612 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256612
	ldr     r0, [pc, #0xf4] @ 0x2256710, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_2256622: @ 2256622 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_2256622
	ldr     r0, [pc, #0xe8] @ 0x2256714, (=0x40002a8)
	mov     r2, r4
	ldr     r5, [r0, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	lsl     r1, r1, #26
	str     r0, [sp, #0x4]
	add     r2, #0x30
	str     r2, [sp, #0x8]
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	mov     r1, #0x28
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x7
	bl      0x20198e8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r1, #0x30
	str     r1, [sp, #0x8]
	lsl     r1, r5, #26
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	mov     r1, #0x28
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x8
	mov     r3, #0x7
	bl      0x20198e8
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x88] @ 0x225670c, (=0x4000280)
	ldr     r0, [r0, #0x4]
	mov     r3, #0x0
	strh    r3, [r2, #0x0]
	str     r0, [r2, #0x10]
	mov     r0, r2
	mov     r1, #0xa
	add     r0, #0x18
	str     r1, [r0, #0x0]
	str     r3, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256698: @ 2256698 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256698
	ldr     r0, [pc, #0x70] @ 0x2256710, (=0x40002a0)
	mov     r3, r0
	ldr     r1, [r0, #0x0]
	sub     r3, #0x20
	lsr     r0, r0, #11
.thumb
branch_22566a8: @ 22566a8 :thumb
	ldrh    r2, [r3, #0x0]
	tst     r2, r0
	bne     branch_22566a8
	ldr     r0, [pc, #0x64] @ 0x2256714, (=0x40002a8)
	mov     r2, r4
	ldr     r5, [r0, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	lsl     r1, r1, #26
	str     r0, [sp, #0x4]
	add     r2, #0x30
	str     r2, [sp, #0x8]
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	mov     r1, #0x28
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0xf
	mov     r3, #0x7
	bl      0x20198e8
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r1, #0x30
	str     r1, [sp, #0x8]
	lsl     r1, r5, #26
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	mov     r1, #0x28
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	mov     r2, #0x14
	mov     r3, #0x7
	bl      0x20198e8
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x225670a

.align 2
.word 0x4000280 @ 0x225670c
.word 0x40002a0 @ 0x2256710
.word 0x40002a8 @ 0x2256714



Unknown_2256718: @ 0x2256718
.incbin "./baserom/overlay/overlay_0026.bin", 0x558, 0x22567a0 - 0x2256718


@end 0x22567a0




