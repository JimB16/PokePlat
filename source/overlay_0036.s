

.section .iwram36, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562d5)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562d5 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x20
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256299)
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


.word 0x2256299 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	str     r1, [r5, #0x10]
	mov     r0, r1
	mov     r4, r2
	bl      0x2254540
	str     r0, [r5, #0x1c]
	mov     r0, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r5, #0x1c]
	bl      0x20568c8
	str     r0, [r5, #0x4]
	mov     r0, r5
	add     r0, #0xc
	add     r1, r5, #0x4
	mov     r2, r4
	bl      Function_2256404
	cmp     r0, #0x0
	beq     branch_225626a
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x2256270, (=Unknown_2256718)
	ldr     r2, [pc, #0x1c] @ 0x2256274, (=0x2256279)
	mov     r1, #0x1
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225626a

.thumb
branch_225626a: @ 225626a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225626e

.align 2
.word Unknown_2256718 @ 0x2256270
.word Function_2256278+1 @ =0x2256279, 0x2256274



.thumb
Function_2256278: @ 2256278 :thumb
	cmp     r0, #0x0
	bne     branch_225627e
	str     r1, [r3, #0x18]
branch_225627e: @ 225627e :thumb
	bx      lr
@ 0x2256280

.thumb
Function_2256280: @ 2256280 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      0x2255b34
	ldr     r0, [r4, #0xc]
	bl      Function_2256440
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256298

.thumb
Function_2256298: @ 2256298 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22562ce
	ldr     r0, [r4, #0x10]
	ldr     r1, [r4, #0x14]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562d0, (=0x225671c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562ce
	mov     r0, r4
	bl      Function_2256280
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x10]
	bl      0x2254260
.thumb
branch_22562ce: @ 22562ce :thumb
	pop     {r3-r5,pc}
@ 0x22562d0

.word 0x225671c @ 0x22562d0
.thumb
Function_22562d4: @ 22562d4 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562da


.align 2, 0


.thumb
Function_22562dc: @ 22562dc :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562e4
	b       branch_22562e6
@ 0x22562e4

.thumb
branch_22562e4: @ 22562e4 :thumb
	mov     r1, #0x2
.thumb
branch_22562e6: @ 22562e6 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562ee


.align 2, 0


.thumb
Function_22562f0: @ 22562f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256300
	cmp     r0, #0x1
	beq     branch_2256310
	b       branch_225632a
@ 0x2256300

.thumb
branch_2256300: @ 2256300 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_225653c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225632a
@ 0x2256310

.thumb
branch_2256310: @ 2256310 :thumb
	ldr     r0, [r4, #0xc]
	mov     r1, #0x0
	bl      Function_2256560
	cmp     r0, #0x0
	beq     branch_225632a
	ldr     r0, [r4, #0x10]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562dc
.thumb
branch_225632a: @ 225632a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225632e


.align 2, 0


.thumb
Function_2256330: @ 2256330 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256344
	mov     r1, #0x2
	bl      Function_22562dc
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256344

.thumb
branch_2256344: @ 2256344 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256350
	cmp     r0, #0x1
	beq     branch_225638a
	b       branch_22563cc
@ 0x2256350

.thumb
branch_2256350: @ 2256350 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_225636e
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_225653c
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563cc
@ 0x225636e

.thumb
branch_225636e: @ 225636e :thumb
	ldr     r0, [r4, #0x10]
	bl      0x2254538
	cmp     r0, #0x0
	beq     branch_22563cc
	ldr     r0, [r4, #0x1c]
	bl      0x20568c8
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      Function_225653c
	b       branch_22563cc
@ 0x225638a

.thumb
branch_225638a: @ 225638a :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x2
	bne     branch_22563a4
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_225653c
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	strb    r0, [r4, #0x1]
	b       branch_22563cc
@ 0x22563a4

.thumb
branch_22563a4: @ 22563a4 :thumb
	cmp     r0, #0x3
	bne     branch_22563cc
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	mov     r1, #0x0
	str     r1, [r4, #0x4]
	ldr     r0, [r4, #0x1c]
	bl      0x20568cc
	ldr     r0, [r4, #0xc]
	mov     r1, #0x2
	bl      Function_225653c
	ldr     r0, [r4, #0xc]
	mov     r1, #0x3
	bl      Function_225653c
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	strb    r0, [r4, #0x1]
.thumb
branch_22563cc: @ 22563cc :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563d0

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
	ldr     r0, [r4, #0xc]
	mov     r1, #0x1
	bl      Function_225653c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563fe
@ 0x22563f0

.thumb
branch_22563f0: @ 22563f0 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_225656c
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
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x64
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_225643a
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
	bl      Function_2256454
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x225643a

.thumb
branch_225643a: @ 225643a :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225643e


.align 2, 0


.thumb
Function_2256440: @ 2256440 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256450
	bl      Function_2256508
	mov     r0, r4
	bl      free
.thumb
branch_2256450: @ 2256450 :thumb
	pop     {r4,pc}
@ 0x2256452


.align 2, 0


.thumb
Function_2256454: @ 2256454 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r7, r0
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x2
	bl      0x2006ec0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0xa
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x34
	lsl     r3, r3, #8
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x3c
	mov     r1, #0xc
	mov     r2, #0x32
	mov     r3, #0x33
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x50
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      0x2255958
	mov     r2, r7
	ldr     r0, [r7, #0x20]
	ldr     r1, [pc, #0x4c] @ 0x2256500, (=0x2256728)
	add     r2, #0x3c
	bl      0x2255810
	mov     r1, #0x50
	str     r0, [r7, #0x24]
	bl      0x2255940
	mov     r0, r7
	mov     r5, #0x5
	str     r0, [sp, #0x10]
	add     r0, #0x50
	mov     r6, #0x0
	mov     r4, r7
	lsl     r5, r5, #16
	str     r0, [sp, #0x10]
.thumb
branch_22564d0: @ 22564d0 :thumb
	ldr     r0, [r7, #0x20]
	ldr     r1, [pc, #0x30] @ 0x2256504, (=0x2256738)
	ldr     r2, [sp, #0x10]
	bl      0x2255810
	mov     r2, #0x1
	mov     r1, r5
	lsl     r2, r2, #18
	str     r0, [r4, #0x28]
	bl      0x2255900
	mov     r0, #0x1
	lsl     r0, r0, #16
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, r5, r0
	cmp     r6, #0x5
	blt     branch_22564d0
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_225669c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2256500

.word 0x2256728 @ 0x2256500
.word 0x2256738 @ 0x2256504
.thumb
Function_2256508: @ 2256508 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x20]
	ldr     r1, [r6, #0x24]
	bl      0x22558b0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256518: @ 2256518 :thumb
	ldr     r0, [r6, #0x20]
	ldr     r1, [r5, #0x28]
	bl      0x22558b0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x5
	blt     branch_2256518
	mov     r0, r6
	add     r0, #0x3c
	bl      0x22559b0
	add     r6, #0x50
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x225653a


.align 2, 0


.thumb
Function_225653c: @ 225653c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x225655c, (=0x2256764)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225655a


.align 2


.word 0x2256764 @ 0x225655c
.thumb
Function_2256560: @ 2256560 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256568, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256566


.align 2


.word 0x2255131 @ 0x2256568
.thumb
Function_225656c: @ 225656c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256574, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x2256572


.align 2


.word 0x2255155 @ 0x2256574
.thumb
Function_2256578: @ 2256578 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x225658a


.align 2, 0


.thumb
Function_225658c: @ 225658c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x2256610, (=0x2256748)
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
	mov     r1, #0x31
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
	mov     r1, #0x30
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x2256614, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256618, (=0xffffe0ff)
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
	bl      Function_2256578
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225660e


.align 2


.word 0x2256748 @ 0x2256610
.word 0x4001000 @ 0x2256614
.word 0xffffe0ff @ 0x2256618
.thumb
Function_225661c: @ 225661c :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_2256578
	pop     {r4,pc}
@ 0x2256636


.align 2, 0


.thumb
Function_2256638: @ 2256638 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_2256652
	cmp     r0, #0x1
	beq     branch_2256662
	b       branch_225666a
@ 0x2256652

.thumb
branch_2256652: @ 2256652 :thumb
	ldr     r0, [pc, #0x20] @ 0x2256674, (=0x669)
	bl      0x2254424
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      0x22558c4
	b       branch_225666a
@ 0x2256662

.thumb
branch_2256662: @ 2256662 :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x22558c4
.thumb
branch_225666a: @ 225666a :thumb
	mov     r0, r5
	bl      Function_2256578
	pop     {r3-r5,pc}
@ 0x2256672


.align 2


.word 0x669 @ 0x2256674
.thumb
Function_2256678: @ 2256678 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_225669c
	mov     r0, r5
	bl      Function_2256578
	pop     {r3-r5,pc}
@ 0x225669a


.align 2, 0


.thumb
Function_225669c: @ 225669c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [r1, #0x0]
	ldr     r5, [pc, #0x58] @ 0x2256700, (=0x4000280)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2256704, (=0x2710)
	lsr     r4, r5, #11
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	lsr     r6, r5, #11
.thumb
branch_22566b4: @ 22566b4 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x2256708, (=0x4000290)
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x48] @ 0x225670c, (=0x4000298)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
.thumb
branch_22566c8: @ 22566c8 :thumb
	ldrh    r0, [r5, #0x0]
	tst     r0, r4
	bne     branch_22566c8
	ldr     r1, [pc, #0x40] @ 0x2256710, (=0x40002a0)
	ldr     r0, [r7, #0x28]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
.thumb
branch_22566d8: @ 22566d8 :thumb
	ldrh    r0, [r5, #0x0]
	tst     r0, r6
	bne     branch_22566d8
	ldr     r0, [pc, #0x34] @ 0x2256714, (=0x40002a8)
	mov     r1, #0xa
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	blx     0x20e2178
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	.hword  0x1d3f @ add r7, r7, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x5
	blt     branch_22566b4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22566fe

.align 2
.word 0x4000280 @ 0x2256700
.word 0x2710 @ 0x2256704
.word 0x4000290 @ 0x2256708
.word 0x4000298 @ 0x225670c
.word 0x40002a0 @ 0x2256710
.word 0x40002a8 @ 0x2256714



Unknown_2256718: @ 0x2256718
.incbin "./baserom/overlay/overlay_0036.bin", 0x558, 0x22567c0 - 0x2256718


@end 0x22567c0




