

.section .iwram49, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x22562a1)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x22562a1 @ 0x22561d0



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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x225626d)
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


.word 0x225626d @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      0x2254540
	str     r0, [r5, #0x10]
	bl      0x2056888
	str     r0, [r5, #0x4]
	strb    r0, [r5, #0x3]
	mov     r0, r5
	add     r0, #0x8
	add     r1, r5, #0x4
	mov     r2, r6
	bl      Function_22563d4
	cmp     r0, #0x0
	beq     branch_2256252
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256252

.thumb
branch_2256252: @ 2256252 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256256


.align 2, 0


.thumb
Function_2256258: @ 2256258 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      Function_2256480
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225626a


.align 2, 0


.thumb
Function_225626c: @ 225626c :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_2256298
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x225629c, (=Unknown_22565d4)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256298
	mov     r0, r4
	bl      Function_2256258
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
.thumb
branch_2256298: @ 2256298 :thumb
	pop     {r3-r5,pc}
@ 0x225629a

.align 2
.word Unknown_22565d4 @ 0x225629c



.thumb
Function_22562a0: @ 22562a0 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562a6


.align 2, 0
.thumb
Function_22562a8: @ 22562a8 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562b0
	b       branch_22562b2
@ 0x22562b0

.thumb
branch_22562b0: @ 22562b0 :thumb
	mov     r1, #0x2
.thumb
branch_22562b2: @ 22562b2 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562ba


.align 2, 0


.thumb
Function_22562bc: @ 22562bc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562cc
	cmp     r0, #0x1
	beq     branch_22562dc
	b       branch_22562f6
@ 0x22562cc

.thumb
branch_22562cc: @ 22562cc :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256494
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562f6
@ 0x22562dc

.thumb
branch_22562dc: @ 22562dc :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_22564b8
	cmp     r0, #0x0
	beq     branch_22562f6
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562a8
.thumb
branch_22562f6: @ 22562f6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562fa


.align 2, 0


.thumb
Function_22562fc: @ 22562fc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256310
	mov     r1, #0x2
	bl      Function_22562a8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256310

.thumb
branch_2256310: @ 2256310 :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_225631c
	cmp     r1, #0x1
	beq     branch_2256334
	b       branch_2256344
@ 0x225631c

.thumb
branch_225631c: @ 225631c :thumb
	bl      Function_2256348
	cmp     r0, #0x0
	beq     branch_2256344
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256494
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256344
@ 0x2256334

.thumb
branch_2256334: @ 2256334 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_22564b8
	cmp     r0, #0x0
	beq     branch_2256344
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256344: @ 2256344 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256348

.thumb
Function_2256348: @ 2256348 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x225450c
	cmp     r0, #0x0
	bne     branch_2256398
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x20227a4
	cmp     r0, #0x0
	beq     branch_2256398
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x88
	bcc     branch_2256398
	cmp     r0, #0xa0
	bcs     branch_2256398
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x30
	bcc     branch_2256398
	cmp     r0, #0xb8
	bcs     branch_2256398
	sub     r0, #0x30
	lsr     r1, r0, #4
	cmp     r1, #0x8
	bcc     branch_2256382
	mov     r1, #0x7
.thumb
branch_2256382: @ 2256382 :thumb
	ldrb    r0, [r4, #0x3]
	cmp     r1, r0
	beq     branch_2256398
	str     r1, [r4, #0x4]
	strb    r1, [r4, #0x3]
	ldr     r0, [r4, #0x10]
	bl      0x205689c
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256398

.thumb
branch_2256398: @ 2256398 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x225639e


.align 2, 0


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
	bl      Function_2256494
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ce
@ 0x22563c0

.thumb
branch_22563c0: @ 22563c0 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_22564c4
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
	bl      Function_2256410
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
	mov     r1, #0x45
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0xc
	mov     r2, #0x43
	mov     r3, #0x44
	bl      0x2255958
	mov     r2, r5
	ldr     r0, [r5, #0x20]
	ldr     r1, [pc, #0x1c] @ 0x2256460, (=0x22565e0)
	add     r2, #0x28
	bl      0x2255810
	str     r0, [r5, #0x24]
	ldr     r1, [r4, #0x0]
	mov     r2, #0x25
	lsl     r1, r1, #4
	add     r1, #0x38
	lsl     r1, r1, #12
	lsl     r2, r2, #14
	bl      0x2255900
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2256460

.word 0x22565e0 @ 0x2256460
.thumb
Function_2256464: @ 2256464 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x24]
	cmp     r1, #0x0
	beq     branch_2256474
	ldr     r0, [r4, #0x20]
	bl      0x22558b0
.thumb
branch_2256474: @ 2256474 :thumb
	add     r4, #0x28
	mov     r0, r4
	bl      0x22559b0
	pop     {r4,pc}
@ 0x225647e


.align 2, 0


.thumb
Function_2256480: @ 2256480 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256490
	bl      Function_2256464
	mov     r0, r4
	bl      free
.thumb
branch_2256490: @ 2256490 :thumb
	pop     {r4,pc}
@ 0x2256492


.align 2, 0


.thumb
Function_2256494: @ 2256494 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22564b4, (=0x225660c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22564b2


.align 2


.word 0x225660c @ 0x22564b4
.thumb
Function_22564b8: @ 22564b8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564c0, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22564be


.align 2


.word 0x2255131 @ 0x22564c0
.thumb
Function_22564c4: @ 22564c4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22564cc, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22564ca


.align 2


.word 0x2255155 @ 0x22564cc
.thumb
Function_22564d0: @ 22564d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22564e2


.align 2, 0


.thumb
Function_22564e4: @ 22564e4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	mov     r0, r4
	bl      0x2255240
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x225656c, (=0x22565f0)
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
	mov     r1, #0x42
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
	mov     r1, #0x41
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x24] @ 0x2256570, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256574, (=0xffffe0ff)
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
	bl      Function_22564d0
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225656c

.word 0x22565f0 @ 0x225656c
.word 0x4001000 @ 0x2256570
.word 0xffffe0ff @ 0x2256574
.thumb
Function_2256578: @ 2256578 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_22564d0
	pop     {r4,pc}
@ 0x2256592


.align 2, 0


.thumb
Function_2256594: @ 2256594 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x22565d0, (=0x663)
	bl      0x2254424
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r1, [r4, #0x0]
	mov     r2, #0x25
	lsl     r1, r1, #4
	add     r1, #0x38
	ldr     r0, [r5, #0x24]
	lsl     r1, r1, #12
	lsl     r2, r2, #14
	bl      0x2255900
	mov     r0, r6
	bl      Function_22564d0
	pop     {r4-r6,pc}
@ 0x22565d0

.word 0x663 @ 0x22565d0



Unknown_22565d4: @ 0x22565d4
.incbin "./baserom/overlay/overlay_0049.bin", 0x414, 0x2256660 - 0x22565d4


@end 0x2256660




