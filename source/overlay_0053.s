

.section .iwram53, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x225630d)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x225630d @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x40
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_225621c
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x22562d1)
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


.word 0x22562d1 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r0, r1
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	bl      0x225453c
	mov     r6, r0
	bl      0x2243140
	str     r0, [r7, #0x8]
	cmp     r0, #0x0
	beq     branch_2256240
	mov     r0, r6
	bl      0x2243148
	b       branch_2256242
@ 0x2256240

.thumb
branch_2256240: @ 2256240 :thumb
	mov     r0, #0x0
.thumb
branch_2256242: @ 2256242 :thumb
	str     r0, [r7, #0x4]
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2256248: @ 2256248 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      0x2243114
	lsl     r1, r4, #24
	str     r0, [r5, #0x18]
	mov     r0, r6
	lsr     r1, r1, #24
	bl      0x22430e8
	str     r0, [r5, #0xc]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_2256248
	mov     r0, r6
	bl      0x22430c4
	str     r0, [r7, #0x24]
	mov     r0, r7
	ldr     r2, [sp, #0x8]
	add     r0, #0x2c
	add     r1, r7, #0x4
	bl      Function_2256420
	cmp     r0, #0x0
	beq     branch_22562aa
	mov     r0, #0x0
	strb    r0, [r7, #0x0]
	strb    r0, [r7, #0x1]
	strb    r0, [r7, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x22562b0, (=Unknown_22568e0)
	ldr     r2, [pc, #0x24] @ 0x22562b4, (=0x2256315)
	mov     r1, #0x3
	mov     r3, r7
	bl      0x2255acc
	str     r0, [r7, #0x34]
	mov     r0, #0x0
	str     r0, [r7, #0x38]
	str     r0, [r7, #0x3c]
	ldr     r0, [sp, #0x4]
	add     sp, #0xc
	str     r0, [r7, #0x30]
	mov     r0, #0x1
	pop     {r4-r7,pc}

branch_22562aa: @ 22562aa :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22562b0

.word Unknown_22568e0 @ 0x22562b0
.word Function_2256314+1 @ =0x2256315, 0x22562b4



.thumb
Function_22562b8: @ 22562b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	bl      0x2255b34
	ldr     r0, [r4, #0x2c]
	bl      Function_2256454
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22562d0

.thumb
Function_22562d0: @ 22562d0 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_2256306
	ldr     r0, [r4, #0x30]
	ldr     r1, [r4, #0x34]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256308, (=0x22568ec)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256306
	mov     r0, r4
	bl      Function_22562b8
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x30]
	bl      0x2254260
.thumb
branch_2256306: @ 2256306 :thumb
	pop     {r3-r5,pc}
@ 0x2256308

.word 0x22568ec @ 0x2256308
.thumb
Function_225630c: @ 225630c :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x2256312


.align 2, 0


.thumb
Function_2256314: @ 2256314 :thumb
	str     r0, [r3, #0x3c]
	str     r1, [r3, #0x38]
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
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x0
	bl      Function_2256460
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225636a
@ 0x2256350

.thumb
branch_2256350: @ 2256350 :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x0
	bl      Function_2256484
	cmp     r0, #0x0
	beq     branch_225636a
	ldr     r0, [r4, #0x30]
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
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256384
	mov     r1, #0x2
	bl      Function_225631c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	ldr     r0, [r4, #0x30]
	bl      0x225453c
	mov     r5, r0
	bl      0x2243140
	str     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_225639a
	mov     r0, #0x0
	b       branch_22563a0
@ 0x225639a

.thumb
branch_225639a: @ 225639a :thumb
	mov     r0, r5
	bl      0x2243148
.thumb
branch_22563a0: @ 22563a0 :thumb
	ldr     r1, [r4, #0x4]
	cmp     r0, r1
	beq     branch_22563b4
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x2
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22563b4

.thumb
branch_22563b4: @ 22563b4 :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x3
	bl      Function_2256484
	cmp     r0, #0x0
	beq     branch_22563e6
	ldr     r0, [r4, #0x38]
	cmp     r0, #0x1
	bne     branch_22563e6
	ldr     r1, [r4, #0x3c]
	ldr     r0, [r4, #0x24]
	cmp     r1, r0
	bcs     branch_22563e2
	lsl     r0, r1, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_22563e2
	str     r1, [r4, #0x28]
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x3
	bl      Function_2256460
.thumb
branch_22563e2: @ 22563e2 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x38]
.thumb
branch_22563e6: @ 22563e6 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22563ea


.align 2, 0


.thumb
Function_22563ec: @ 22563ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563fc
	cmp     r0, #0x1
	beq     branch_225640c
	b       branch_225641a
@ 0x22563fc

.thumb
branch_22563fc: @ 22563fc :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x1
	bl      Function_2256460
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225641a
@ 0x225640c

.thumb
branch_225640c: @ 225640c :thumb
	ldr     r0, [r4, #0x2c]
	bl      Function_2256490
	cmp     r0, #0x0
	beq     branch_225641a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225641a

.thumb
branch_225641a: @ 225641a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225641e


.align 2, 0


.thumb
Function_2256420: @ 2256420 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0xb0
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_225644e
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
@ 0x225644e

.thumb
branch_225644e: @ 225644e :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256452


.align 2, 0


.thumb
Function_2256454: @ 2256454 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_225645e
	bl      free
.thumb
branch_225645e: @ 225645e :thumb
	pop     {r3,pc}
@ 0x2256460

.thumb
Function_2256460: @ 2256460 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256480, (=0x2256914)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225647e


.align 2


.word 0x2256914 @ 0x2256480
.thumb
Function_2256484: @ 2256484 :thumb
	ldr     r3, [pc, #0x4] @ 0x225648c, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x225648a


.align 2


.word 0x2255131 @ 0x225648c
.thumb
Function_2256490: @ 2256490 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256498, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x2256496


.align 2


.word 0x2255155 @ 0x2256498
.thumb
Function_225649c: @ 225649c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564ae


.align 2, 0


.thumb
Function_22564b0: @ 22564b0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x70] @ 0x225653c, (=0x22568f8)
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
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x7a
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x79
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r4
	mov     r1, r6
	bl      Function_22566ac
	ldr     r1, [pc, #0x28] @ 0x2256540, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256544, (=0xffffe0ff)
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
	bl      Function_225649c
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x225653a


.align 2


.word 0x22568f8 @ 0x225653c
.word 0x4001000 @ 0x2256540
.word 0xffffe0ff @ 0x2256544
.thumb
Function_2256548: @ 2256548 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	bl      Function_2256840
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r5
	bl      Function_225649c
	pop     {r3-r5,pc}
@ 0x2256568

.thumb
Function_2256568: @ 2256568 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r0, r7
	bl      0x225523c
	mov     r5, r0
	mov     r0, r7
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22565bc
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2079d8c
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xac
	mov     r2, #0x1
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	mov     r3, r2
	bl      0x22553a0
	mov     r1, #0x0
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [r5, #0x24]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2255938
	add     r5, #0x34
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	bl      Function_2256874
	b       branch_22565d8
@ 0x22565bc

.thumb
branch_22565bc: @ 22565bc :thumb
	ldr     r0, [r5, #0x24]
	mov     r1, #0x1
	bl      0x2255914
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_22565c8: @ 22565c8 :thumb
	ldr     r0, [r5, #0x34]
	mov     r1, r6
	bl      0x2255914
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_22565c8
.thumb
branch_22565d8: @ 22565d8 :thumb
	mov     r0, r7
	bl      Function_225649c
	pop     {r3-r7,pc}
@ 0x22565e0

.thumb
Function_22565e0: @ 22565e0 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r0, r7
	bl      0x225523c
	mov     r4, r0
	mov     r0, r7
	bl      0x2255240
	mov     r6, r0
	mov     r0, r7
	bl      0x2255248
	mov     r5, r0
	beq     branch_2256604
	cmp     r5, #0x10
	beq     branch_2256682
	b       branch_2256648
@ 0x2256604

.thumb
branch_2256604: @ 2256604 :thumb
	ldr     r0, [r6, #0x24]
	mov     r2, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r1, [r0, #0x24]
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	add     r1, #0xa4
	add     r2, #0xa0
	bl      0x2255908
	ldr     r0, [r6, #0x24]
	mov     r1, #0x0
	lsl     r0, r0, #2
	add     r0, r6, r0
	ldr     r0, [r0, #0x8]
	bl      0x2254444
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	mov     r1, #0x6
	bl      0x22558c4
	mov     r0, r7
	bl      0x225524c
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2256648: @ 2256648 :thumb
	mov     r0, #0x2d
	lsl     r0, r0, #10
	mov     r1, r5
	mul     r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #10
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      0x201d15c
	mov     r2, r0
	mov     r1, #0x18
	mul     r2, r1
	mov     r0, r4
	mov     r1, r4
	add     r4, #0xa0
	add     r0, #0x9c
	add     r1, #0xa4
	ldr     r3, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	sub     r2, r3, r2
	bl      0x2255900
	mov     r0, r7
	bl      0x225524c
	pop     {r3-r7,pc}
@ 0x2256682

.thumb
branch_2256682: @ 2256682 :thumb
	mov     r0, r4
	mov     r1, r4
	mov     r2, r4
	add     r0, #0x9c
	add     r1, #0xa4
	add     r2, #0xa0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      0x2255900
	add     r4, #0x9c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x4
	bl      0x22558c4
	mov     r0, r7
	bl      Function_225649c
	pop     {r3-r7,pc}
@ 0x22566aa


.align 2, 0


.thumb
Function_22566ac: @ 22566ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	mov     r4, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	str     r1, [sp, #0xc]
	add     r0, #0x78
	mov     r1, #0xc
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x64
	mov     r1, #0xc
	mov     r2, #0x7b
	mov     r3, #0x7c
	bl      0x2255958
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x7d
	bl      0x2006ec0
	mov     r1, r4
	lsr     r0, r0, #5
	add     r1, #0xac
	str     r0, [r1, #0x0]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0xc]
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x30]
	add     r3, sp, #0x30
.thumb
branch_2256702: @ 2256702 :thumb
	ldr     r0, [r2, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r3, #0x4]
	.hword  0x1d12 @ add r2, r2, #0x4
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0x3
	blt     branch_2256702
	mov     r7, #0x0
	add     r5, sp, #0x30
	mov     r6, r4
.thumb
branch_2256716: @ 2256716 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	bne     branch_225671e
	mov     r0, #0x1
.thumb
branch_225671e: @ 225671e :thumb
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2079d8c
	mov     r1, r6
	add     r1, #0x8c
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r1, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_2256716
	mov     r1, r4
	ldr     r0, [sp, #0x28]
	add     r1, #0x8c
	mov     r2, #0x4
	mov     r3, #0x1
	bl      0x22553a0
	mov     r0, #0x1
	bl      0x2255360
	mov     r2, #0x0
	mov     r0, r2
	mov     r1, r4
	str     r0, [sp, #0x10]
.thumb
branch_2256752: @ 2256752 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r0, [r1, #0x24]
	.hword  0x1d09 @ add r1, r1, #0x4
	cmp     r2, #0x10
	blt     branch_2256752
	ldr     r0, [pc, #0xdc] @ 0x225683c, (=0x2256950)
	str     r4, [sp, #0x20]
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x10]
	mov     r6, #0x4
	str     r0, [sp, #0x1c]
	add     r0, sp, #0x30
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	str     r0, [sp, #0x14]
.thumb
branch_2256772: @ 2256772 :thumb
	mov     r2, r4
	ldr     r0, [r4, #0x20]
	ldr     r1, [sp, #0x24]
	add     r2, #0x78
	bl      0x2255810
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x28]
	str     r0, [r1, #0x24]
	ldr     r1, [sp, #0x1c]
	add     r1, r2, r1
	bl      0x2255940
	mov     r0, r4
	str     r0, [sp, #0x2c]
	add     r0, #0x64
	mov     r5, #0x0
	str     r0, [sp, #0x2c]
.thumb
branch_2256796: @ 2256796 :thumb
	add     r7, r5, r6
	ldr     r1, [pc, #0xa0] @ 0x225683c, (=0x2256950)
	lsl     r2, r7, #4
	add     r1, r1, r2
	ldr     r0, [r4, #0x20]
	ldr     r2, [sp, #0x2c]
	bl      0x2255810
	lsl     r1, r7, #2
	add     r1, r4, r1
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r0, [r1, #0x24]
	cmp     r5, #0x3
	blt     branch_2256796
	ldr     r0, [sp, #0x18]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22567de
	ldr     r0, [sp, #0x20]
	mov     r1, #0x1
	ldr     r0, [r0, #0x24]
	bl      0x2255914
	mov     r5, #0x0
	mov     r7, #0x1
.thumb
branch_22567c8: @ 22567c8 :thumb
	add     r0, r5, r6
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x24]
	mov     r1, r7
	bl      0x2255914
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_22567c8
	b       branch_225680e
@ 0x22567de

.thumb
branch_22567de: @ 22567de :thumb
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [sp, #0x20]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r0, [r0, #0x24]
	bl      0x2255938
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_22567fe
	ldr     r0, [sp, #0xc]
	ldr     r1, [r0, #0x4]
	b       branch_2256802
@ 0x22567fe

.thumb
branch_22567fe: @ 22567fe :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [r0, #0x10]
.thumb
branch_2256802: @ 2256802 :thumb
	mov     r2, r4
	add     r2, #0x24
	lsl     r0, r6, #2
	add     r0, r2, r0
	bl      Function_2256874
.thumb
branch_225680e: @ 225680e :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1cf6 @ add r6, r6, #0x3
	add     r0, #0x10
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x1c]
	add     r0, #0x20
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_2256772
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x225683c

.word 0x2256950 @ 0x225683c
.thumb
Function_2256840: @ 2256840 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_225684a: @ 225684a :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_2256858
	ldr     r0, [r6, #0x20]
	bl      0x22558b0
	str     r7, [r5, #0x24]
.thumb
branch_2256858: @ 2256858 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x10
	blt     branch_225684a
	mov     r0, r6
	add     r0, #0x78
	bl      0x22559b0
	add     r6, #0x64
	mov     r0, r6
	bl      0x22559b0
	pop     {r3-r7,pc}
@ 0x2256872


.align 2, 0


.thumb
Function_2256874: @ 2256874 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x58] @ 0x22568dc, (=0x3e7)
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bls     branch_225688a
	str     r1, [sp, #0x0]
.thumb
branch_225688a: @ 225688a :thumb
	mov     r4, #0x0
	mov     r6, #0x64
.thumb
branch_225688e: @ 225688e :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	blx     0x20e2178
	mov     r7, r0
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x1
	beq     branch_22568a6
	cmp     r7, #0x0
	bne     branch_22568a6
	cmp     r4, #0x2
	bne     branch_22568b4
.thumb
branch_22568a6: @ 22568a6 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	bl      0x22558c4
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	b       branch_22568bc
@ 0x22568b4

.thumb
branch_22568b4: @ 22568b4 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	bl      0x2255914
.thumb
branch_22568bc: @ 22568bc :thumb
	mov     r1, r7
	ldr     r0, [sp, #0x0]
	mul     r1, r6
	sub     r0, r0, r1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0xa
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1c64 @ add r4, r4, #0x1
	blx     0x20e1f6c
	mov     r6, r0
	cmp     r4, #0x3
	blt     branch_225688e
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22568dc

.word 0x3e7 @ 0x22568dc



Unknown_22568e0: @ 0x22568e0
.incbin "./baserom/overlay/overlay_0053.bin", 0x720, 0x2256a60 - 0x22568e0


@end 0x2256a60




