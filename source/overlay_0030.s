

.section .iwram30, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562ed)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562ed @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x2c
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      0x2018144
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562b1)
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
	bl      0x20181c4
.thumb
branch_2256212: @ 2256212 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256216


.align 2


.word 0x22562b1 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	add     r0, #0x24
	add     r1, #0x14
	bl      Function_22563ec
	cmp     r0, #0x0
	beq     branch_225628a
	mov     r1, #0x0
	strb    r1, [r5, #0x0]
	strb    r1, [r5, #0x1]
	strb    r1, [r5, #0x2]
	mov     r0, #0x1
	strb    r0, [r5, #0x3]
	strb    r1, [r5, #0x6]
	mov     r0, r5
	str     r1, [r5, #0x20]
	add     r0, #0x14
	bl      0x2013880
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x18
	bcc     branch_2256256
	mov     r1, #0x18
	blx 0x20e2178
	str     r1, [r5, #0x14]
.thumb
branch_2256256: @ 2256256 :thumb
	ldr     r0, [r5, #0x18]
	cmp     r0, #0x3c
	bcc     branch_2256266
	ldr     r0, [r5, #0x14]
	mov     r1, #0x3c
	blx 0x20e2178
	str     r1, [r5, #0x14]
branch_2256266: @ 2256266 :thumb
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0x24] @ 0x2256290, (=0x22562f5)
	strb    r0, [r5, #0x5]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x2256294, (=Unknown_2256678)
	mov     r1, #0x1
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x10]
	cmp     r0, #0x0
	bne     branch_2256284
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2256284: @ 2256284 :thumb
	str     r4, [r5, #0x28]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225628a

.thumb
branch_225628a: @ 225628a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225628e

.align 2
.word 0x22562f5 @ 0x2256290
.word Unknown_2256678 @ 0x2256294



.thumb
Function_2256298: @ 2256298 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	bl      Function_2256444
	ldr     r0, [r4, #0x10]
	bl      0x2255b34
	mov     r0, r4
	bl      0x20181c4
	pop     {r4,pc}
@ 0x22562b0

.thumb
Function_22562b0: @ 22562b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562e6
	ldr     r0, [r4, #0x28]
	ldr     r1, [r4, #0x10]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562e8, (=0x225667c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562e6
	mov     r0, r4
	bl      Function_2256298
	mov     r0, r5
	bl      0x200da58
	ldr     r0, [r4, #0x28]
	bl      0x2254260
.thumb
branch_22562e6: @ 22562e6 :thumb
	pop     {r3-r5,pc}
@ 0x22562e8

.word 0x225667c @ 0x22562e8
.thumb
Function_22562ec: @ 22562ec :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562f2


.incbin "./baserom/overlay/overlay_0030.bin", 0x132, 0x2256310 - 0x22562f2


.thumb
Function_2256310: @ 2256310 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256318
	b       branch_225631a
@ 0x2256318

.thumb
branch_2256318: @ 2256318 :thumb
	mov     r1, #0x2
.thumb
branch_225631a: @ 225631a :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x2256322


.align 2, 0


.thumb
Function_2256324: @ 2256324 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256334
	cmp     r0, #0x1
	beq     branch_2256344
	b       branch_225635e
@ 0x2256334

.thumb
branch_2256334: @ 2256334 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2256464
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225635e
@ 0x2256344

.thumb
branch_2256344: @ 2256344 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      Function_2256488
	cmp     r0, #0x0
	beq     branch_225635e
	ldr     r0, [r4, #0x28]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256310
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
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256378
	mov     r1, #0x2
	bl      Function_2256310
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256378

.thumb
branch_2256378: @ 2256378 :thumb
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_225638a
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x2
	bl      Function_2256464
.thumb
branch_225638a: @ 225638a :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_2256488
	cmp     r0, #0x0
	beq     branch_22563b2
	ldr     r0, [r4, #0x18]
	strb    r0, [r4, #0x5]
	mov     r0, r4
	add     r0, #0x14
	bl      0x2013880
	ldrb    r1, [r4, #0x5]
	ldr     r0, [r4, #0x18]
	cmp     r1, r0
	beq     branch_22563b2
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      Function_2256464
.thumb
branch_22563b2: @ 22563b2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563b6


.align 2, 0


.thumb
Function_22563b8: @ 22563b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563c8
	cmp     r0, #0x1
	beq     branch_22563d8
	b       branch_22563e6
@ 0x22563c8

.thumb
branch_22563c8: @ 22563c8 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x3
	bl      Function_2256464
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563e6
@ 0x22563d8

.thumb
branch_22563d8: @ 22563d8 :thumb
	ldr     r0, [r4, #0x24]
	bl      Function_2256494
	cmp     r0, #0x0
	beq     branch_22563e6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22563e6

.thumb
branch_22563e6: @ 22563e6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563ea


.align 2, 0


.thumb
Function_22563ec: @ 22563ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x54
	bl      0x2018144
	mov     r4, r0
	beq     branch_225643a
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x48]
	mov     r0, r4
	bl      Function_22565f4
	cmp     r0, #0x0
	bne     branch_2256428
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256428

.thumb
branch_2256428: @ 2256428 :thumb
	ldr     r0, [pc, #0x14] @ 0x2256440, (=0x2256461)
	mov     r1, r4
	mov     r2, #0x3
	bl      0x200d9e8
	str     r0, [r4, #0x30]
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225643a

.thumb
branch_225643a: @ 225643a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225643e


.align 2


.word Function_2256460+1 @ =0x2256461, 0x2256440
.thumb
Function_2256444: @ 2256444 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_225645e
	bl      Function_2256658
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_2256458
	bl      0x200da58
.thumb
branch_2256458: @ 2256458 :thumb
	mov     r0, r4
	bl      0x20181c4
.thumb
branch_225645e: @ 225645e :thumb
	pop     {r4,pc}
@ 0x2256460

.thumb
Function_2256460: @ 2256460 :thumb
	bx      lr
@ 0x2256462


.align 2, 0


.thumb
Function_2256464: @ 2256464 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256484, (=0x22566c4)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256482


.align 2


.word 0x22566c4 @ 0x2256484
.thumb
Function_2256488: @ 2256488 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256490, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x225648e


.align 2


.word 0x2255131 @ 0x2256490
.thumb
Function_2256494: @ 2256494 :thumb
	ldr     r3, [pc, #0x4] @ 0x225649c, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225649a


.align 2


.word 0x2255155 @ 0x225649c
.thumb
Function_22564a0: @ 22564a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564b2


.align 2, 0


.thumb
Function_22564b4: @ 22564b4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x74] @ 0x225653c, (=0x2256688)
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
	mov     r1, #0x1a
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r5
	bl      Function_22565b0
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x24] @ 0x2256540, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256544, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x14
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      Function_22564a0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225653c

.word 0x2256688 @ 0x225653c
.word 0x4001000 @ 0x2256540
.word 0xffffe0ff @ 0x2256544
.thumb
Function_2256548: @ 2256548 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_22565b0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	mov     r0, r5
	bl      Function_22564a0
	pop     {r3-r5,pc}
@ 0x2256568

.thumb
Function_2256568: @ 2256568 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_2256584
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546f0
	b       branch_225658c
@ 0x2256584

.thumb
branch_2256584: @ 2256584 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
.thumb
branch_225658c: @ 225658c :thumb
	mov     r0, r4
	bl      Function_22564a0
	pop     {r4,pc}
@ 0x2256594

.thumb
Function_2256594: @ 2256594 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22564a0
	pop     {r4,pc}
@ 0x22565ae


.align 2, 0


.thumb
Function_22565b0: @ 22565b0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x38] @ 0x22565f0, (=0x4000280)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x0
	strh    r2, [r1, #0x0]
	str     r0, [r1, #0x10]
	mov     r0, #0xa
	add     r1, #0x18
	str     r0, [r1, #0x0]
	str     r2, [r1, #0x4]
	ldr     r5, [r4, #0x0]
	mov     r1, #0xc
	ldr     r0, [r5, #0x0]
	blx 0x20e2178
	ldr     r2, [r5, #0x4]
	ldr     r0, [r4, #0x4c]
	lsr     r3, r2, #1
	mov     r2, #0x1e
	mul     r2, r1
	add     r2, #0x3c
	add     r1, r3, r2
	bl      0x22558c4
	ldr     r1, [r4, #0x0]
	ldr     r0, [r4, #0x50]
	ldr     r1, [r1, #0x4]
	bl      0x22558c4
	pop     {r3-r5,pc}
@ 0x22565f0

.word 0x4000280 @ 0x22565f0
.thumb
Function_22565f4: @ 22565f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r7, r0
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x1d
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x34
	mov     r1, #0xc
	mov     r2, #0x1b
	mov     r3, #0x1c
	bl      0x2255958
	cmp     r0, #0x0
	beq     branch_225664e
	mov     r0, r7
	str     r0, [sp, #0xc]
	add     r0, #0x34
	ldr     r4, [pc, #0x28] @ 0x2256654, (=0x22566a4)
	mov     r6, #0x0
	mov     r5, r7
	str     r0, [sp, #0xc]
.thumb
branch_2256632: @ 2256632 :thumb
	ldr     r0, [r7, #0x48]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x4c]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_2256632
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x225664e

.thumb
branch_225664e: @ 225664e :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256654

.word 0x22566a4 @ 0x2256654
.thumb
Function_2256658: @ 2256658 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0x34
	bl      0x22559b0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256666: @ 2256666 :thumb
	ldr     r0, [r6, #0x48]
	ldr     r1, [r5, #0x4c]
	bl      0x22558b0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_2256666
	pop     {r4-r6,pc}



Unknown_2256678: @ 0x2256678
.incbin "./baserom/overlay/overlay_0030.bin", 0x4b8, 0x2256720 - 0x2256678


@end 0x2256720




