

.section .iwram50, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22563b1)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22563b1 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0xb0
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x225636d)
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


.word 0x225636d @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0x4
	mov     r6, r2
	bl      0x20138a4
	mov     r0, r4
	bl      0x2254540
	mov     r1, r5
	add     r1, #0x98
	str     r0, [r1, #0x0]
	add     r0, r5, #0x4
	mov     r1, r5
	add     r2, sp, #0x4
	bl      Function_22562ac
	mov     r0, r5
	ldrb    r1, [r5, #0x12]
	add     r0, #0xa8
	mov     r2, r6
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r1, [r0, #0x0]
	ldr     r0, [r5, #0x8]
	.hword  0x1e40 @ sub r0, r0, #0x1
	add     r1, r1, r0
	mov     r0, r5
	add     r0, #0xac
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x90
	add     r1, r5, #0x4
	bl      Function_2256510
	cmp     r0, #0x0
	beq     branch_225629c
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x22562a4, (=0x2256998)
	ldr     r2, [pc, #0x2c] @ 0x22562a8, (=0x2256361)
	mov     r1, #0x25
	mov     r3, r5
	bl      0x2255acc
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	add     r5, #0x94
	add     sp, #0x14
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x225629c

.thumb
branch_225629c: @ 225629c :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22562a2


.align 2


.word 0x2256998 @ 0x22562a4
.word Function_2256360+1 @ =0x2256361, 0x22562a8
.thumb
Function_22562ac: @ 22562ac :thumb
	push    {r3-r7,lr}
	mov     r4, r2
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	str     r1, [sp, #0x0]
	str     r0, [r6, #0x0]
	ldr     r0, [r4, #0x8]
	str     r0, [r6, #0x8]
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x225633c, (=0x2256a2b)
	ldrb    r0, [r0, r1]
	str     r0, [r6, #0x4]
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x2
	bne     branch_22562f0
	ldr     r5, [r4, #0x0]
	mov     r1, #0x19
	mov     r0, r5
	lsl     r1, r1, #4
	blx     0x20e2178
	cmp     r1, #0x0
	beq     branch_22562ec
	mov     r0, r5
	mov     r1, #0x64
	blx     0x20e2178
	cmp     r1, #0x0
	beq     branch_22562f0
	mov     r0, #0x3
	tst     r0, r5
	bne     branch_22562f0
.thumb
branch_22562ec: @ 22562ec :thumb
	mov     r0, #0x1d
	str     r0, [r6, #0x4]
.thumb
branch_22562f0: @ 22562f0 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	.hword  0x1e40 @ sub r0, r0, #0x1
	blx     0x20e2178
	mov     r2, #0x7
	ldr     r3, [r4, #0xc]
	sub     r0, r2, r1
	add     r7, r3, r0
	cmp     r7, #0x7
	bcc     branch_2256310
	mov     r0, r7
	mov     r1, r2
	blx     0x20e2178
	mov     r7, r1
.thumb
branch_2256310: @ 2256310 :thumb
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_225633a
	mov     r5, r6
.thumb
branch_225631a: @ 225631a :thumb
	ldr     r0, [sp, #0x0]
	add     r2, r4, #0x1
	strh    r2, [r5, #0xc]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [r6, #0x0]
	bl      0x20569a8
	strb    r0, [r5, #0xf]
	add     r0, r7, r4
	strb    r0, [r5, #0xe]
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_225631a
.thumb
branch_225633a: @ 225633a :thumb
	pop     {r3-r7,pc}
@ 0x225633c

.word 0x2256a2b @ 0x225633c
.thumb
Function_2256340: @ 2256340 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x2255b34
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	bl      Function_225654c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225635e


.align 2, 0


.thumb
Function_2256360: @ 2256360 :thumb
	mov     r2, r3
	add     r2, #0xa4
	str     r0, [r2, #0x0]
	add     r3, #0xa0
	str     r1, [r3, #0x0]
	bx      lr
@ 0x225636c

.thumb
Function_225636c: @ 225636c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_22563aa
	mov     r0, r4
	add     r0, #0x94
	add     r1, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22563ac, (=Unknown_225698c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22563aa
	mov     r0, r4
	bl      Function_2256340
	mov     r0, r5
	bl      Function_200da58
	add     r4, #0x94
	ldr     r0, [r4, #0x0]
	bl      0x2254260
branch_22563aa: @ 22563aa :thumb
	pop     {r3-r5,pc}
@ 0x22563ac

.word Unknown_225698c @ 0x22563ac



.thumb
Function_22563b0: @ 22563b0 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22563b6


.align 2, 0
.thumb
Function_22563b8: @ 22563b8 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22563c0
	b       branch_22563c2
@ 0x22563c0

.thumb
branch_22563c0: @ 22563c0 :thumb
	mov     r1, #0x2
.thumb
branch_22563c2: @ 22563c2 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22563ca


.align 2, 0


.thumb
Function_22563cc: @ 22563cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563dc
	cmp     r0, #0x1
	beq     branch_22563f0
	b       branch_2256412
@ 0x22563dc

.thumb
branch_22563dc: @ 22563dc :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_22565fc
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256412
@ 0x22563f0

.thumb
branch_22563f0: @ 22563f0 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2256620
	cmp     r0, #0x0
	beq     branch_2256412
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22563b8
.thumb
branch_2256412: @ 2256412 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256416


.align 2, 0


.thumb
Function_2256418: @ 2256418 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrb    r1, [r5, #0x2]
	cmp     r1, #0x0
	beq     branch_225642c
	mov     r1, #0x2
	bl      Function_22563b8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225642c

.thumb
branch_225642c: @ 225642c :thumb
	ldrb    r0, [r5, #0x1]
	cmp     r0, #0x0
	beq     branch_2256438
	cmp     r0, #0x1
	beq     branch_22564be
	b       branch_22564d2
@ 0x2256438

.thumb
branch_2256438: @ 2256438 :thumb
	mov     r0, r5
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_22564d2
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r2, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xa4
	ldr     r1, [r0, #0x0]
	cmp     r1, r2
	bcc     branch_22564d2
	mov     r0, r5
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	bhi     branch_22564d2
	mov     r0, r5
	add     r0, #0x98
	sub     r4, r1, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x4]
	add     r2, r4, #0x1
	bl      0x20569a8
	cmp     r0, #0x0
	beq     branch_2256488
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x4]
	add     r2, r4, #0x1
	bl      0x2056970
	b       branch_2256496
@ 0x2256488

.thumb
branch_2256488: @ 2256488 :thumb
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x4]
	add     r2, r4, #0x1
	bl      0x2056934
.thumb
branch_2256496: @ 2256496 :thumb
	mov     r3, r5
	add     r3, #0x13
	lsl     r2, r4, #2
	ldrb    r1, [r3, r2]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r3, r2]
	mov     r0, r5
	add     r0, #0x8c
	str     r4, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_22565fc
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_22564d2
@ 0x22564be

.thumb
branch_22564be: @ 22564be :thumb
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	bl      Function_2256620
	cmp     r0, #0x0
	beq     branch_22564d2
	mov     r0, #0x0
	strb    r0, [r5, #0x1]
.thumb
branch_22564d2: @ 22564d2 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22564d6


.align 2, 0


.thumb
Function_22564d8: @ 22564d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22564e8
	cmp     r0, #0x1
	beq     branch_22564fc
	b       branch_225650c
@ 0x22564e8

.thumb
branch_22564e8: @ 22564e8 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_22565fc
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225650c
@ 0x22564fc

.thumb
branch_22564fc: @ 22564fc :thumb
	add     r4, #0x90
	ldr     r0, [r4, #0x0]
	bl      Function_225662c
	cmp     r0, #0x0
	beq     branch_225650c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225650c

.thumb
branch_225650c: @ 225650c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256510

.thumb
Function_2256510: @ 2256510 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x3c
	bl      malloc_maybe
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
	mov     r0, r4
	mov     r1, r5
	bl      Function_2256560
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
	push    {r4,lr}
	mov     r4, r0
	beq     branch_225655c
	bl      Function_22565e4
	mov     r0, r4
	bl      free
.thumb
branch_225655c: @ 225655c :thumb
	pop     {r4,pc}
@ 0x225655e


.align 2, 0


.thumb
Function_2256560: @ 2256560 :thumb
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
	mov     r1, #0x72
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0xc
	mov     r2, #0x70
	mov     r3, #0x71
	bl      0x2255958
	mov     r2, r5
	ldr     r0, [r5, #0x20]
	ldr     r1, [pc, #0x18] @ 0x22565ac, (=0x2256a38)
	add     r2, #0x28
	bl      0x2255810
	str     r0, [r5, #0x24]
	ldr     r1, [r4, #0x8]
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldrb    r1, [r1, #0xa]
	bl      Function_22565b0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22565ac

.word 0x2256a38 @ 0x22565ac
.thumb
Function_22565b0: @ 22565b0 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x7
	blx     0x20e2178
	mov     r4, r1
	mov     r0, r6
	mov     r1, #0x7
	blx     0x20e2178
	mov     r2, r0
	lsl     r1, r4, #1
	lsl     r3, r2, #1
	add     r1, r4, r1
	add     r2, r2, r3
	.hword  0x1d49 @ add r1, r1, #0x5
	.hword  0x1d92 @ add r2, r2, #0x6
	mov     r0, r5
	lsl     r1, r1, #15
	lsl     r2, r2, #15
	bl      0x2255900
	pop     {r4-r6,pc}
@ 0x22565e2


.align 2, 0


.thumb
Function_22565e4: @ 22565e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	ldr     r1, [r4, #0x24]
	bl      0x22558b0
	add     r4, #0x28
	mov     r0, r4
	bl      0x22559b0
	pop     {r4,pc}
@ 0x22565fa


.align 2, 0


.thumb
Function_22565fc: @ 22565fc :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x225661c, (=0x2256ac0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225661a


.align 2


.word 0x2256ac0 @ 0x225661c
.thumb
Function_2256620: @ 2256620 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256628, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256626


.align 2


.word 0x2255131 @ 0x2256628
.thumb
Function_225662c: @ 225662c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256634, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x2256632


.align 2


.word 0x2255155 @ 0x2256634
.thumb
Function_2256638: @ 2256638 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x225664a


.align 2, 0


.thumb
Function_225664c: @ 225664c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x78] @ 0x22566e0, (=0x2256a7c)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x22566e4, (=0x2256a60)
	mov     r1, #0x7
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r5
	mov     r1, r4
	bl      Function_225675c
	mov     r0, r5
	mov     r1, r4
	bl      Function_22567f4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x6f
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r0, [r5, #0x4]
	mov     r1, #0x7
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x22566e8, (=0x4001000)
	ldr     r0, [pc, #0x2c] @ 0x22566ec, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x10]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0xc
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r6
	bl      Function_2256638
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x22566e0

.word 0x2256a7c @ 0x22566e0
.word 0x2256a60 @ 0x22566e4
.word 0x4001000 @ 0x22566e8
.word 0xffffe0ff @ 0x22566ec
.thumb
Function_22566f0: @ 22566f0 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r5
	bl      Function_2256638
	pop     {r3-r5,pc}
@ 0x2256714

.thumb
Function_2256714: @ 2256714 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	mov     r0, r4
	bl      0x2255240
	mov     r2, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	lsl     r3, r0, #2
	add     r0, r2, r3
	ldrb    r0, [r0, #0xf]
	cmp     r0, #0x0
	beq     branch_225673a
	mov     r1, #0x8f
	b       branch_225673c
@ 0x225673a

.thumb
branch_225673a: @ 225673a :thumb
	mov     r1, #0x83
.thumb
branch_225673c: @ 225673c :thumb
	add     r2, r2, r3
	ldrb    r2, [r2, #0xe]
	lsl     r1, r1, #16
	ldr     r0, [r5, #0x4]
	lsr     r1, r1, #16
	bl      Function_22567a8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x7
	bl      0x2019448
	mov     r0, r4
	bl      Function_2256638
	pop     {r3-r5,pc}
@ 0x225675a


.align 2, 0


.thumb
Function_225675c: @ 225675c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	mov     r6, r1
	ldr     r2, [r7, #0x4]
	mov     r0, #0xc
	mov     r1, #0x6e
	mov     r3, #0x7
	bl      0x2006e60
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_22567a2
	mov     r5, r6
.thumb
branch_2256788: @ 2256788 :thumb
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x0
	beq     branch_2256798
	ldrb    r2, [r5, #0xe]
	ldr     r0, [r7, #0x4]
	mov     r1, #0x8f
	bl      Function_22567a8
.thumb
branch_2256798: @ 2256798 :thumb
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_2256788
.thumb
branch_22567a2: @ 22567a2 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22567a6


.align 2, 0


.thumb
Function_22567a8: @ 22567a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r7, r2
	mov     r5, r0
	mov     r6, r1
	mov     r0, r7
	mov     r1, #0x7
	blx     0x20e2178
	mov     r4, r1
	mov     r0, r7
	mov     r1, #0x7
	blx     0x20e2178
	lsl     r1, r0, #1
	add     r0, r0, r1
	.hword  0x1d40 @ add r0, r0, #0x5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r3, r4, #1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	add     r3, r4, r3
	str     r0, [sp, #0x4]
	.hword  0x1d1b @ add r3, r3, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	lsl     r3, r3, #24
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x7
	mov     r2, r6
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22567f2


.align 2, 0


.thumb
Function_22567f4: @ 22567f4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r3, #0x0
	mov     r7, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r6, r1
	ldr     r0, [r7, #0x4]
	mov     r1, #0x6
	mov     r2, #0x82
	bl      0x2019cb8
	ldr     r0, [r7, #0x4]
	ldr     r1, [r6, #0x0]
	bl      Function_225683c
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_2256838
	mov     r5, r6
.thumb
branch_2256824: @ 2256824 :thumb
	ldrb    r2, [r5, #0xe]
	ldr     r0, [r7, #0x4]
	add     r1, r4, #0x1
	bl      Function_2256894
	ldr     r0, [r6, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	bcc     branch_2256824
.thumb
branch_2256838: @ 2256838 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x225683c

.thumb
Function_225683c: @ 225683c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	ldr     r0, [pc, #0x4c] @ 0x2256890, (=0x2256a46)
	lsl     r1, r1, #1
	ldrh    r4, [r0, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_225684c: @ 225684c :thumb
	ldr     r0, [sp, #0x10]
	mov     r5, #0x0
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r0, r0, #24
	lsr     r6, r0, #24
.thumb
branch_2256856: @ 2256856 :thumb
	mov     r3, r5
	add     r2, r4, r5
	add     r3, #0xc
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r7
	mov     r1, #0x6
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_2256856
	ldr     r0, [sp, #0x10]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x2
	blt     branch_225684c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225688e


.align 2


.word 0x2256a46 @ 0x2256890
.thumb
Function_2256894: @ 2256894 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r2
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x7
	blx     0x20e2178
	mov     r6, r1
	lsl     r0, r6, #1
	add     r0, r6, r0
	add     r4, r0, #0x4
	mov     r0, r5
	mov     r1, #0x7
	blx     0x20e2178
	lsl     r1, r0, #1
	add     r0, r0, r1
	add     r5, r0, #0x5
	cmp     r6, #0x0
	bne     branch_22568c4
	mov     r6, #0x1
	b       branch_22568c6
@ 0x22568c4

.thumb
branch_22568c4: @ 22568c4 :thumb
	mov     r6, #0x0
.thumb
branch_22568c6: @ 22568c6 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa
	blx     0x20e2178
	mov     r7, r0
	ldr     r0, [sp, #0x14]
	mov     r1, #0xa
	blx     0x20e2178
	str     r1, [sp, #0x18]
	cmp     r7, #0x0
	beq     branch_225692e
	mov     r0, #0x14
	mov     r2, r6
	mul     r2, r0
	ldr     r0, [pc, #0xa0] @ 0x2256988, (=0x2256a98)
	lsl     r1, r7, #1
	add     r0, r0, r2
	ldrh    r7, [r1, r0]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r3, r4, #24
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	mov     r2, r7
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	add     r7, #0xc
	str     r0, [sp, #0xc]
	lsl     r2, r7, #16
	lsl     r3, r4, #24
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
.thumb
branch_225692e: @ 225692e :thumb
	mov     r0, #0x14
	mov     r3, r6
	mul     r3, r0
	ldr     r0, [sp, #0x18]
	ldr     r2, [pc, #0x50] @ 0x2256988, (=0x2256a98)
	lsl     r1, r0, #1
	add     r0, r2, r3
	ldrh    r6, [r1, r0]
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	add     r3, r4, #0x1
	str     r0, [sp, #0xc]
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	mov     r2, r6
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     r0, r5, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	add     r6, #0xc
	add     r3, r4, #0x1
	str     r0, [sp, #0xc]
	lsl     r2, r6, #16
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x10]
	mov     r1, #0x6
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x2019cb8
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2256988

.word 0x2256a98 @ 0x2256988



Unknown_225698c: @ 0x225698c
.incbin "./baserom/overlay/overlay_0050.bin", 0x7cc, 0x2256b00 - 0x225698c


@end 0x2256b00




