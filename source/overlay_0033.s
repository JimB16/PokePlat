

.section .iwram33, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256375)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256375 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x64
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256341)
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


.word 0x2256341 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r4, r1
	add     r0, #0x5c
	add     r1, r7, #0x4
	bl      Function_2256474
	cmp     r0, #0x0
	beq     branch_2256306
	mov     r0, #0x0
	strb    r0, [r7, #0x0]
	strb    r0, [r7, #0x1]
	strb    r0, [r7, #0x2]
	str     r4, [r7, #0x60]
	bl      0x20245a4
	bl      0x207a268
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x0]
	bl      0x207a0f8
	mov     r6, #0x0
	str     r0, [r7, #0x4]
	cmp     r0, #0x0
	ble     branch_22562ea
	mov     r4, r7
.thumb
branch_2256256: @ 2256256 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      0x207a0fc
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r5, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_22562e2
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0xc]
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r4, #0x10]
	mov     r0, r5
	bl      0x2079d40
	str     r0, [r4, #0x8]
	mov     r0, r5
	mov     r1, #0x9
	mov     r2, #0x0
	bl      GetPkmnData
	bl      Function_225630c
	cmp     r0, #0x6
	bhi     branch_22562c4
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22562aa

Jumppoints_22562aa:
.hword branch_22562b8 - Jumppoints_22562aa - 2
.hword branch_22562b8 - Jumppoints_22562aa - 2
.hword branch_22562b8 - Jumppoints_22562aa - 2
.hword branch_22562c4 - Jumppoints_22562aa - 2
.hword branch_22562ce - Jumppoints_22562aa - 2
.hword branch_22562ce - Jumppoints_22562aa - 2
.hword branch_22562ce - Jumppoints_22562aa - 2
.thumb
branch_22562b8: @ 22562b8 :thumb
	mov     r1, #0x1
	strb    r1, [r4, #0x12]
	mov     r1, #0x3
	sub     r0, r1, r0
	strb    r0, [r4, #0x13]
	b       branch_22562da
@ 0x22562c4

.thumb
branch_22562c4: @ 22562c4 :thumb
	mov     r0, #0x2
	strb    r0, [r4, #0x12]
	mov     r0, #0x0
	strb    r0, [r4, #0x13]
	b       branch_22562da
@ 0x22562ce

.thumb
branch_22562ce: @ 22562ce :thumb
	mov     r1, #0x0
	strb    r1, [r4, #0x12]
	mov     r1, #0x3
	sub     r0, r1, r0
	neg     r0, r0
	strb    r0, [r4, #0x13]
.thumb
branch_22562da: @ 22562da :thumb
	ldr     r0, [sp, #0x0]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x0]
.thumb
branch_22562e2: @ 22562e2 :thumb
	ldr     r0, [r7, #0x4]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, r0
	blt     branch_2256256
.thumb
branch_22562ea: @ 22562ea :thumb
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r0, [r7, #0x4]
	mov     r0, r7
	add     r0, #0x50
	strh    r1, [r0, #0x0]
	mov     r0, r7
	add     r0, #0x52
	strh    r1, [r0, #0x0]
	str     r1, [r7, #0x54]
	add     sp, #0x8
	str     r1, [r7, #0x58]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256306

.thumb
branch_2256306: @ 2256306 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x225630c


.thumb
Function_225630c: @ 225630c :thumb
	ldr     r3, [pc, #0x18] @ 0x2256328, (=Unknown_22577fc)
	mov     r2, #0x0
branch_2256310: @ 2256310 :thumb
	ldrb    r1, [r3, #0x0]
	cmp     r0, r1
	bcs     branch_225631a
	mov     r0, r2
	bx      lr

branch_225631a: @ 225631a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x6
	bcc     branch_2256310
	mov     r0, #0x6
	bx      lr
@ 0x2256326

.align 2
.word Unknown_22577fc @ 0x2256328



.thumb
Function_225632c: @ 225632c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x5c]
	bl      Function_22564f0
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225633e


.align 2, 0


.thumb
Function_2256340: @ 2256340 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_225636c
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x2256370, (=0x2257804)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225636c
	mov     r0, r4
	bl      Function_225632c
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x60]
	bl      0x2254260
.thumb
branch_225636c: @ 225636c :thumb
	pop     {r3-r5,pc}
@ 0x225636e


.align 2


.word 0x2257804 @ 0x2256370
.thumb
Function_2256374: @ 2256374 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225637a


.align 2, 0


.thumb
Function_225637c: @ 225637c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256384
	b       branch_2256386
@ 0x2256384

.thumb
branch_2256384: @ 2256384 :thumb
	mov     r1, #0x2
.thumb
branch_2256386: @ 2256386 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225638e


.align 2, 0


.thumb
Function_2256390: @ 2256390 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563a0
	cmp     r0, #0x1
	beq     branch_22563b0
	b       branch_22563ca
@ 0x22563a0

.thumb
branch_22563a0: @ 22563a0 :thumb
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_2256548
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ca
@ 0x22563b0

.thumb
branch_22563b0: @ 22563b0 :thumb
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_225656c
	cmp     r0, #0x0
	beq     branch_22563ca
	ldr     r0, [r4, #0x60]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225637c
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
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22563e4
	mov     r1, #0x2
	bl      Function_225637c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563e4

.thumb
branch_22563e4: @ 22563e4 :thumb
	mov     r1, r4
	add     r0, #0x54
	add     r1, #0x58
	bl      0x225446c
	mov     r1, r4
	add     r1, #0x50
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x50
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256432
	ldr     r0, [r4, #0x54]
	sub     r0, #0x10
	cmp     r0, #0xbf
	bcs     branch_225640a
	mov     r1, #0x1
	b       branch_225640c
@ 0x225640a

.thumb
branch_225640a: @ 225640a :thumb
	mov     r1, #0x0
.thumb
branch_225640c: @ 225640c :thumb
	ldr     r0, [r4, #0x58]
	sub     r0, #0x10
	cmp     r0, #0x9f
	bcs     branch_2256418
	mov     r0, #0x1
	b       branch_225641a
@ 0x2256418

.thumb
branch_2256418: @ 2256418 :thumb
	mov     r0, #0x0
.thumb
branch_225641a: @ 225641a :thumb
	tst     r0, r1
	beq     branch_225642a
	bl      0x2022798
	add     r4, #0x52
	strh    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225642a

.thumb
branch_225642a: @ 225642a :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x50
	strh    r1, [r0, #0x0]
.thumb
branch_2256432: @ 2256432 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x54]
	str     r0, [r4, #0x58]
	add     r4, #0x52
	strh    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x225643e


.align 2, 0


.thumb
Function_2256440: @ 2256440 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256450
	cmp     r0, #0x1
	beq     branch_2256460
	b       branch_225646e
@ 0x2256450

.thumb
branch_2256450: @ 2256450 :thumb
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_2256548
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225646e
@ 0x2256460

.thumb
branch_2256460: @ 2256460 :thumb
	ldr     r0, [r4, #0x5c]
	bl      Function_2256578
	cmp     r0, #0x0
	beq     branch_225646e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225646e

.thumb
branch_225646e: @ 225646e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256472


.align 2, 0


.thumb
Function_2256474: @ 2256474 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r1
	mov     r1, #0xa3
	mov     r5, r0
	mov     r0, #0x8
	lsl     r1, r1, #2
	bl      malloc
	mov     r4, r0
	beq     branch_22564ea
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x30]
	mov     r0, r4
	mov     r3, #0x0
	add     r0, #0xb0
	str     r3, [r0, #0x0]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	mov     r6, r4
	mov     r2, r3
	add     r1, r0, #0x4
.thumb
branch_22564b2: @ 22564b2 :thumb
	str     r2, [r6, r0]
	str     r2, [r6, r1]
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r6, #0x38
	cmp     r3, #0x6
	blt     branch_22564b2
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x34
	mov     r1, #0xc
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0xc
	mov     r2, #0x24
	mov     r3, #0x25
	bl      0x2255958
	add     sp, #0x4
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x22564ea

.thumb
branch_22564ea: @ 22564ea :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22564f0

.thumb
Function_22564f0: @ 22564f0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	beq     branch_2256546
	mov     r7, #0x4d
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_22564fe: @ 22564fe :thumb
	ldr     r1, [r4, r7]
	cmp     r1, #0x0
	beq     branch_225650a
	ldr     r0, [r5, #0x30]
	bl      0x22558b0
.thumb
branch_225650a: @ 225650a :thumb
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_225651a
	ldr     r0, [r5, #0x30]
	bl      0x22558b0
.thumb
branch_225651a: @ 225651a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	cmp     r6, #0x6
	blt     branch_22564fe
	mov     r0, r5
	add     r0, #0x34
	bl      0x22559b0
	mov     r0, r5
	add     r0, #0x48
	bl      0x22559b0
	mov     r0, r5
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256540
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_2256540: @ 2256540 :thumb
	mov     r0, r5
	bl      free
.thumb
branch_2256546: @ 2256546 :thumb
	pop     {r3-r7,pc}
@ 0x2256548

.thumb
Function_2256548: @ 2256548 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256568, (=0x2257878)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256566


.align 2


.word 0x2257878 @ 0x2256568
.thumb
Function_225656c: @ 225656c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256574, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256572


.align 2


.word 0x2255131 @ 0x2256574
.thumb
Function_2256578: @ 2256578 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256580, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225657e


.align 2


.word 0x2255155 @ 0x2256580
.thumb
Function_2256584: @ 2256584 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256596


.align 2, 0


.thumb
Function_2256598: @ 2256598 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x7c] @ 0x2256628, (=0x225785c)
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
	mov     r1, #0x7
	mov     r3, #0x6
	bl      0x2006e3c
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x18
	str     r0, [sp, #0x8]
	str     r2, [sp, #0xc]
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	bl      Function_2256634
	ldr     r1, [r5, #0x0]
	mov     r0, r5
	bl      Function_225681c
	ldr     r1, [pc, #0x24] @ 0x225662c, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256630, (=0xffffe0ff)
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
	bl      Function_2256584
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256628

.word 0x225785c @ 0x2256628
.word 0x4001000 @ 0x225662c
.word 0xffffe0ff @ 0x2256630
.thumb
Function_2256634: @ 2256634 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r1, [sp, #0x10]
	bl      0x2255360
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x23
	lsl     r3, r0, #9
	bl      0x2006ec0
	mov     r0, #0x13
	mov     r1, #0x8
	bl      0x2006c24
	str     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_2256668
	b       branch_22567c8
@ 0x2256668

.thumb
branch_2256668: @ 2256668 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	mov     r1, r0
	add     r0, sp, #0x2c
	strh    r1, [r0, #0xc]
	ldr     r1, [sp, #0x18]
	strb    r1, [r0, #0xe]
	mov     r1, #0x2
	strb    r1, [r0, #0xf]
	mov     r1, #0x1
	strb    r1, [r0, #0x11]
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bgt     branch_2256688
	b       branch_22567c2
@ 0x2256688

.thumb
branch_2256688: @ 2256688 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r5, [sp, #0xc]
	str     r0, [sp, #0x14]
	mov     r7, r0
	mov     r0, r5
	str     r0, [sp, #0x24]
	add     r0, #0x34
	str     r0, [sp, #0x24]
	mov     r0, r5
	str     r0, [sp, #0x28]
	add     r0, #0x48
	ldr     r4, [sp, #0x10]
	ldr     r6, [pc, #0x128] @ 0x22567cc, (=0x2257844)
	str     r0, [sp, #0x28]
.thumb
branch_22566a4: @ 22566a4 :thumb
	ldr     r0, [sp, #0x1c]
	ldr     r1, [r4, #0x4]
	mov     r2, #0x8
	bl      0x2006cb8
	add     r1, sp, #0x2c
	str     r0, [sp, #0x20]
	blx     0x20a7118
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x1
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #10
	blx     DC_FlushRange
	ldr     r0, [sp, #0x2c]
	mov     r2, #0x1
	ldr     r0, [r0, #0x14]
	ldr     r1, [sp, #0x14]
	lsl     r2, r2, #10
	blx     0x20c0314
	ldr     r0, [sp, #0x20]
	bl      free
	ldrh    r0, [r6, #0x0]
	mov     r1, #0x1
	ldr     r2, [sp, #0x24]
	lsl     r0, r0, #12
	str     r0, [sp, #0x30]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	add     r0, sp, #0x2c
	strb    r1, [r0, #0x10]
	ldr     r0, [sp, #0xc]
	add     r1, sp, #0x30
	ldr     r0, [r0, #0x30]
	bl      0x2255810
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      0x2255940
	ldrh    r0, [r4, #0x8]
	ldrh    r1, [r4, #0xc]
	mov     r2, #0x0
	bl      0x2079edc
	mov     r1, r0
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2255938
	mov     r1, #0x0
	add     r0, sp, #0x2c
	strb    r1, [r0, #0x10]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x28]
	ldr     r0, [r0, #0x30]
	add     r1, sp, #0x30
	bl      0x2255810
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_225675c
	mov     r1, #0x1
	bl      0x2255914
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0xc0
	bl      0x2255940
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2255938
	b       branch_2256760
@ 0x225675c

.thumb
branch_225675c: @ 225675c :thumb
	bl      0x2022974
.thumb
branch_2256760: @ 2256760 :thumb
	ldrh    r0, [r4, #0x8]
	ldrh    r1, [r4, #0xc]
	mov     r2, #0x1c
	bl      0x20759cc
	mov     r1, #0x59
	lsl     r1, r1, #2
	strb    r0, [r5, r1]
	ldr     r0, [pc, #0x5c] @ 0x22567d0, (=0x165)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	mov     r1, #0x52
	ldr     r0, [sp, #0x34]
	ldr     r2, [sp, #0x30]
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r5, r1]
	mov     r0, #0x15
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x56
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, #0x1
	ldr     r1, [sp, #0x14]
	lsl     r0, r0, #10
	add     r0, r1, r0
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	add     r4, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	.hword  0x1d36 @ add r6, r6, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x18]
	add     r5, #0x38
	add     r7, #0x20
	cmp     r0, r1
	bge     branch_22567c2
	b       branch_22566a4
@ 0x22567c2

.thumb
branch_22567c2: @ 22567c2 :thumb
	ldr     r0, [sp, #0x1c]
	bl      0x2006ca8
.thumb
branch_22567c8: @ 22567c8 :thumb
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x22567cc

.word 0x2257844 @ 0x22567cc
.word 0x165 @ 0x22567d0
.thumb
Function_22567d4: @ 22567d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x201d35c
	mov     r1, #0x3f
	and     r0, r1
	sub     r0, #0x20
	lsl     r4, r0, #12
	bl      0x201d35c
	mov     r1, #0x3f
	and     r0, r1
	sub     r0, #0x20
	lsl     r0, r0, #12
	str     r4, [r5, #0x0]
	str     r0, [r5, #0x4]
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	mov     r0, r5
	mov     r1, r5
	blx     0x20bd3e4
	ldr     r1, [r5, #0x0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [r5, #0x4]
	pop     {r3-r5,pc}
@ 0x225681a


.align 2, 0


.thumb
Function_225681c: @ 225681c :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2256878
	mov     r1, #0x4f
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r4, r0, r1
	mov     r5, r0
.thumb
branch_2256834: @ 2256834 :thumb
	mov     r0, r4
	bl      Function_22567d4
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256852
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6
	bl      0x22558c4
	b       branch_225686c
@ 0x2256852

.thumb
branch_2256852: @ 2256852 :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	ble     branch_2256860
	mov     r1, #0x7
	b       branch_2256862
@ 0x2256860

.thumb
branch_2256860: @ 2256860 :thumb
	mov     r1, #0x6
.thumb
branch_2256862: @ 2256862 :thumb
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x22558c4
.thumb
branch_225686c: @ 225686c :thumb
	ldr     r0, [r7, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x38
	add     r5, #0x38
	cmp     r6, r0
	blt     branch_2256834
.thumb
branch_2256878: @ 2256878 :thumb
	ldr     r0, [sp, #0x0]
	bl      Function_22568b4
	ldr     r0, [pc, #0x14] @ 0x2256894, (=0x2256905)
	ldr     r1, [sp, #0x0]
	mov     r2, #0x1
	bl      0x200d9e8
	ldr     r1, [sp, #0x0]
	add     r1, #0xb0
	str     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x2256892


.align 2


.word 0x2256905 @ 0x2256894
.thumb
Function_2256898: @ 2256898 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r4
	bl      Function_2256584
	pop     {r4,pc}
@ 0x22568b2


.align 2, 0


.thumb
Function_22568b4: @ 22568b4 :thumb
	push    {r3-r6}
	mov     r1, r0
	mov     r5, #0x0
	add     r1, #0xe4
	str     r5, [r1, #0x0]
	ldr     r1, [r0, #0x0]
	ldr     r3, [r1, #0x0]
	cmp     r3, #0x0
	ble     branch_22568e0
	mov     r1, #0x16
	lsl     r1, r1, #4
	mov     r6, r0
	mov     r4, r5
	add     r2, r1, #0x3
.thumb
branch_22568d0: @ 22568d0 :thumb
	strb    r4, [r6, r1]
	strb    r4, [r6, r2]
	ldr     r3, [r0, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r3, [r3, #0x0]
	add     r6, #0x38
	cmp     r5, r3
	blt     branch_22568d0
.thumb
branch_22568e0: @ 22568e0 :thumb
	mov     r1, r0
	add     r1, #0xec
	str     r3, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xec
	ldr     r1, [r1, #0x0]
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x22568f4

.thumb
Function_22568f4: @ 22568f4 :thumb
	mov     r2, r0
	add     r2, #0xe4
	str     r1, [r2, #0x0]
	mov     r1, #0x0
	add     r0, #0xe8
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2256902


.align 2, 0


.thumb
Function_2256904: @ 2256904 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r4, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_225697e
	mov     r0, #0xa1
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [r4, #0x54]
	.hword  0x1d00 @ add r0, r0, #0x4
	sub     r1, #0x8
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_22569c0
	mov     r1, r5
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xec
	ldr     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	cmp     r1, r0
	bcs     branch_2256940
	mov     r1, #0x1
	b       branch_2256942
@ 0x2256940

.thumb
branch_2256940: @ 2256940 :thumb
	mov     r1, #0x0
.thumb
branch_2256942: @ 2256942 :thumb
	mov     r0, r5
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256970
	mov     r0, r5
	add     r0, #0xec
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf0
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2256970
	mov     r0, #0xc
	mul     r0, r1
	add     r1, r4, r0
	ldrh    r0, [r1, #0x8]
	ldrh    r1, [r1, #0xc]
	bl      0x2254444
.thumb
branch_2256970: @ 2256970 :thumb
	mov     r0, r5
	add     r0, #0xec
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	b       branch_225698e
@ 0x225697e

.thumb
branch_225697e: @ 225697e :thumb
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r5
	ldr     r1, [r4, #0x0]
	add     r0, #0xf0
	str     r1, [r0, #0x0]
.thumb
branch_225698e: @ 225698e :thumb
	mov     r2, r5
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x20] @ 0x22569bc, (=0x2257818)
	mov     r1, r4
	ldr     r2, [r2, r3]
	blx     r2
	mov     r0, r5
	mov     r1, r4
	bl      Function_2256b44
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x4
	beq     branch_22569ba
	mov     r0, r5
	mov     r1, r4
	bl      Function_22572a0
.thumb
branch_22569ba: @ 22569ba :thumb
	pop     {r3-r5,pc}
@ 0x22569bc

.word 0x2257818 @ 0x22569bc
.thumb
Function_22569c0: @ 22569c0 :thumb
	push    {r4-r7}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldr     r4, [r0, #0x0]
	cmp     r4, #0x0
	ble     branch_2256a0c
	mov     r0, #0xa1
	lsl     r0, r0, #2
	ldr     r2, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r3, [r5, r0]
.thumb
branch_22569d8: @ 22569d8 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	mov     r6, #0x53
	ldr     r0, [r5, r0]
	lsl     r6, r6, #2
	ldr     r6, [r5, r6]
	asr     r0, r0, #12
	asr     r6, r6, #12
	sub     r0, r2, r0
	sub     r7, r3, r6
	mov     r6, r0
	mul     r6, r0
	mov     r0, r7
	mul     r0, r7
	add     r6, r6, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	cmp     r6, r0
	bge     branch_2256a04
	mov     r0, r1
	pop     {r4-r7}
	bx      lr
@ 0x2256a04

.thumb
branch_2256a04: @ 2256a04 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, #0x38
	cmp     r1, r4
	blt     branch_22569d8
.thumb
branch_2256a0c: @ 2256a0c :thumb
	mov     r0, r4
	pop     {r4-r7}
	bx      lr
@ 0x2256a12


.align 2, 0


.thumb
Function_2256a14: @ 2256a14 :thumb
	push    {r4,r5}
	lsl     r4, r0, #12
	ldr     r0, [r3, #0x0]
	sub     r0, r4, r0
	lsl     r4, r1, #12
	ldr     r1, [r3, #0x4]
	sub     r5, r4, r1
	asr     r1, r0, #12
	mov     r4, r0
	mul     r4, r1
	mov     r1, r2
	mul     r1, r2
	asr     r0, r5, #12
	mov     r3, r5
	mul     r3, r0
	lsl     r2, r1, #12
	add     r1, r4, r3
	mov     r0, #0x0
	cmp     r2, r1
	ble     branch_2256a3e
	mov     r0, #0x1
.thumb
branch_2256a3e: @ 2256a3e :thumb
	pop     {r4,r5}
	bx      lr
@ 0x2256a42


.align 2, 0


.thumb
Function_2256a44: @ 2256a44 :thumb
	push    {r3,lr}
	add     r1, #0x4e
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256a60
	mov     r1, r0
	add     r1, #0xf8
	ldr     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xfc
	str     r2, [r1, #0x0]
	mov     r1, #0x1
	bl      Function_22568f4
.thumb
branch_2256a60: @ 2256a60 :thumb
	pop     {r3,pc}
@ 0x2256a62


.align 2, 0


.thumb
Function_2256a64: @ 2256a64 :thumb
	push    {r3,lr}
	add     r1, #0x4c
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256a8e
	mov     r1, r0
	add     r1, #0xe8
	ldr     r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xe8
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x6
	bls     branch_2256aa6
	mov     r1, #0x2
	bl      Function_22568f4
	pop     {r3,pc}
@ 0x2256a8e

.thumb
branch_2256a8e: @ 2256a8e :thumb
	mov     r1, r0
	add     r1, #0xfc
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256aa0
	mov     r1, #0x0
	bl      Function_22568f4
	pop     {r3,pc}
@ 0x2256aa0

.thumb
branch_2256aa0: @ 2256aa0 :thumb
	mov     r1, #0x3
	bl      Function_22568f4
.thumb
branch_2256aa6: @ 2256aa6 :thumb
	pop     {r3,pc}
@ 0x2256aa8

.thumb
Function_2256aa8: @ 2256aa8 :thumb
	push    {r3,lr}
	add     r1, #0x4c
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2256ab8
	mov     r1, #0x0
	bl      Function_22568f4
.thumb
branch_2256ab8: @ 2256ab8 :thumb
	pop     {r3,pc}
@ 0x2256aba


.align 2, 0


.thumb
Function_2256abc: @ 2256abc :thumb
	push    {r3,lr}
	add     r1, #0x4e
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2256ae6
	mov     r1, r0
	add     r1, #0xe8
	ldr     r1, [r1, #0x0]
	add     r2, r1, #0x1
	mov     r1, r0
	add     r1, #0xe8
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x6
	bls     branch_2256b04
	mov     r1, #0x0
	bl      Function_22568f4
	pop     {r3,pc}
@ 0x2256ae6

.thumb
branch_2256ae6: @ 2256ae6 :thumb
	mov     r1, r0
	add     r1, #0xf8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256afe
	mov     r2, r0
	mov     r1, #0x1
	add     r2, #0xfc
	str     r1, [r2, #0x0]
	bl      Function_22568f4
	pop     {r3,pc}
@ 0x2256afe

.thumb
branch_2256afe: @ 2256afe :thumb
	mov     r1, #0x4
	bl      Function_22568f4
.thumb
branch_2256b04: @ 2256b04 :thumb
	pop     {r3,pc}
@ 0x2256b06


.align 2, 0


.thumb
Function_2256b08: @ 2256b08 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0xe8
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_2256b28
	bl      Function_2256c08
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	add     r4, #0xe8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2256b28

.thumb
branch_2256b28: @ 2256b28 :thumb
	bl      Function_2256c40
	cmp     r0, #0x0
	beq     branch_2256b38
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22568f4
.thumb
branch_2256b38: @ 2256b38 :thumb
	pop     {r4,pc}
@ 0x2256b3a


.align 2, 0


.thumb
Function_2256b3c: @ 2256b3c :thumb
	push    {r0-r3}
	add     sp, #0x10
	bx      lr
@ 0x2256b42


.align 2, 0


.thumb
Function_2256b44: @ 2256b44 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_2256b92
	ldr     r5, [sp, #0x0]
.thumb
branch_2256b54: @ 2256b54 :thumb
	ldr     r0, [pc, #0x44] @ 0x2256b9c, (=0x163)
	ldrb    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2256b74
	ldr     r0, [pc, #0x3c] @ 0x2256b9c, (=0x163)
	ldr     r2, [pc, #0x3c] @ 0x2256b9c, (=0x163)
	ldrb    r0, [r5, r0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [pc, #0x34] @ 0x2256b9c, (=0x163)
	strb    r1, [r5, r0]
	ldrb    r2, [r5, r2]
	ldr     r0, [pc, #0x34] @ 0x2256ba0, (=0x22578c0)
	mov     r1, r4
	bl      Function_2256b3c
	b       branch_2256b88
@ 0x2256b74

.thumb
branch_2256b74: @ 2256b74 :thumb
	mov     r3, #0x16
	lsl     r3, r3, #4
	ldrb    r3, [r5, r3]
	ldr     r0, [sp, #0x0]
	mov     r1, r7
	lsl     r6, r3, #2
	ldr     r3, [pc, #0x20] @ 0x2256ba4, (=0x225782c)
	mov     r2, r4
	ldr     r3, [r3, r6]
	blx     r3
.thumb
branch_2256b88: @ 2256b88 :thumb
	ldr     r0, [r7, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x38
	cmp     r4, r0
	blt     branch_2256b54
.thumb
branch_2256b92: @ 2256b92 :thumb
	ldr     r0, [pc, #0x14] @ 0x2256ba8, (=0x22578d4)
	bl      Function_2256b3c
	pop     {r3-r7,pc}
@ 0x2256b9a


.align 2


.word 0x163 @ 0x2256b9c
.word 0x22578c0 @ 0x2256ba0
.word 0x225782c @ 0x2256ba4
.word 0x22578d4 @ 0x2256ba8
.thumb
Function_2256bac: @ 2256bac :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	mov     r2, #0x38
	mov     r4, r6
	mul     r4, r2
	mov     r5, r0
	mov     r2, #0x16
	add     r3, r5, r4
	lsl     r2, r2, #4
	ldrb    r2, [r3, r2]
	cmp     r2, #0x3
	bne     branch_2256bca
	bl      Function_2256cc4
.thumb
branch_2256bca: @ 2256bca :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	add     r2, r5, r0
	mov     r3, #0x16
	lsl     r3, r3, #4
	strb    r7, [r2, r4]
	mov     r1, #0x0
	add     r0, r5, r4
	add     r3, #0x8
	str     r1, [r0, r3]
	mov     r3, #0x16
	lsl     r3, r3, #4
	sub     r3, #0xc
	str     r1, [r0, r3]
	mov     r3, #0x16
	lsl     r3, r3, #4
	sub     r3, #0x8
	str     r1, [r0, r3]
	mov     r3, #0x16
	lsl     r3, r3, #4
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r1, [r0, r3]
	ldrb    r0, [r2, r4]
	cmp     r0, #0x3
	bne     branch_2256c04
	mov     r0, r5
	mov     r1, r6
	bl      Function_2256c54
.thumb
branch_2256c04: @ 2256c04 :thumb
	pop     {r3-r7,pc}
@ 0x2256c06


.align 2, 0


.thumb
Function_2256c08: @ 2256c08 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r4, #0x0
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	ble     branch_2256c34
	mov     r5, r6
	mov     r7, r4
.thumb
branch_2256c1a: @ 2256c1a :thumb
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x5
	bl      Function_2256bac
	ldr     r0, [pc, #0x14] @ 0x2256c3c, (=0x163)
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r7, [r5, r0]
	ldr     r0, [r6, #0x0]
	add     r5, #0x38
	ldr     r1, [r0, #0x0]
	cmp     r4, r1
	blt     branch_2256c1a
.thumb
branch_2256c34: @ 2256c34 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x2256c3c

.word 0x163 @ 0x2256c3c
.thumb
Function_2256c40: @ 2256c40 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_2256c4e
	mov     r0, #0x1
	bx      lr
@ 0x2256c4e

.thumb
branch_2256c4e: @ 2256c4e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256c52


.align 2, 0


.thumb
Function_2256c54: @ 2256c54 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xc
	mov     r7, r1
	mul     r7, r0
	ldr     r0, [r5, #0x0]
	add     r0, r0, r7
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x0
	bne     branch_2256c94
	mov     r0, #0x4e
	lsl     r0, r0, #2
	add     r4, r5, r0
	mov     r0, #0x38
	mov     r6, r1
	mul     r6, r0
	ldr     r0, [r5, #0x30]
	ldr     r1, [r4, r6]
	mov     r2, #0x0
	bl      0x225591c
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, r6]
	add     r1, r1, r7
	ldrb    r1, [r1, #0xf]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      0x22558c4
	ldr     r0, [r4, r6]
	mov     r1, #0x0
	bl      0x2255914
.thumb
branch_2256c94: @ 2256c94 :thumb
	pop     {r3-r7,pc}
@ 0x2256c96


.align 2, 0


.thumb
Function_2256c98: @ 2256c98 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x4e
	lsl     r2, r2, #2
	add     r4, r0, r2
	mov     r2, #0x38
	mov     r5, r1
	mul     r5, r2
	ldr     r0, [r0, #0x30]
	ldr     r1, [r4, r5]
	mov     r2, #0x2
	bl      0x225591c
	ldr     r0, [r4, r5]
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r4, r5]
	mov     r1, #0x0
	bl      0x2255914
	pop     {r3-r5,pc}
@ 0x2256cc2


.align 2, 0


.thumb
Function_2256cc4: @ 2256cc4 :thumb
	mov     r2, #0x38
	mul     r2, r1
	add     r1, r0, r2
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x4] @ 0x2256cd8, (=0x2255915)
	mov     r1, #0x1
	bx      r3
@ 0x2256cd6


.align 2


.word 0x2255915 @ 0x2256cd8
.thumb
Function_2256cdc: @ 2256cdc :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r4, r1
	blx     0x20bd384
	cmp     r0, r5
	ble     branch_2256d1a
	mov     r1, r0
	mul     r1, r4
	mov     r0, r1
	mov     r1, #0x64
	blx     0x20e2178
	mov     r4, r0
	mov     r0, r6
	add     r1, sp, #0x0
	blx     0x20bd3e4
	mov     r0, #0x0
	str     r0, [r6, #0x0]
	str     r0, [r6, #0x4]
	str     r0, [r6, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	mov     r2, r6
	mov     r3, r6
	blx     0x20bd628
.thumb
branch_2256d1a: @ 2256d1a :thumb
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2256d1e


.align 2, 0


.thumb
Function_2256d20: @ 2256d20 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_2256d30
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_2256d30
	mov     r0, #0x1
	bx      lr
@ 0x2256d30

.thumb
branch_2256d30: @ 2256d30 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256d34

.thumb
Function_2256d34: @ 2256d34 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r1
	ldr     r0, [pc, #0xd8] @ 0x2256e18, (=0x22578e4)
	mov     r1, r4
	bl      Function_2256b3c
	mov     r0, r6
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256d66
	mov     r1, #0x60
	mov     r2, r1
	add     r2, #0xdc
	add     r3, r5, r2
	mov     r2, #0x38
	mov     r0, #0x3
	mul     r2, r4
	lsl     r0, r0, #8
	add     r2, r3, r2
	bl      Function_2256cdc
	pop     {r3-r7,pc}
@ 0x2256d66

.thumb
branch_2256d66: @ 2256d66 :thumb
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256dc8
	mov     r1, #0xa1
	mov     r3, #0x52
	lsl     r1, r1, #2
	lsl     r3, r3, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r7, r5, r3
	mov     r3, #0x38
	mul     r3, r4
	ldr     r1, [r5, r1]
	mov     r2, #0x30
	add     r3, r7, r3
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2256e14
	mov     r0, #0xc
	mul     r0, r4
	add     r0, r6, r0
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x1
	beq     branch_2256db2
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2256bac
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2256e1c
	pop     {r3-r7,pc}
@ 0x2256db2

.thumb
branch_2256db2: @ 2256db2 :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_2256bac
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2256f34
	pop     {r3-r7,pc}
@ 0x2256dc8

.thumb
branch_2256dc8: @ 2256dc8 :thumb
	mov     r0, r5
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_2256e14
	mov     r1, #0xa1
	mov     r3, #0x52
	lsl     r1, r1, #2
	lsl     r3, r3, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r7, r5, r3
	mov     r3, #0x38
	mul     r3, r4
	ldr     r1, [r5, r1]
	mov     r2, #0x8
	add     r3, r7, r3
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2256e14
	mov     r0, #0xc
	mul     r0, r4
	add     r0, r6, r0
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x1
	beq     branch_2256e0a
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_2256bac
	pop     {r3-r7,pc}
@ 0x2256e0a

.thumb
branch_2256e0a: @ 2256e0a :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x4
	bl      Function_2256bac
.thumb
branch_2256e14: @ 2256e14 :thumb
	pop     {r3-r7,pc}
@ 0x2256e16


.align 2


.word 0x22578e4 @ 0x2256e18
.thumb
Function_2256e1c: @ 2256e1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r4, r2
	mov     r6, r1
	ldr     r0, [pc, #0x104] @ 0x2256f2c, (=0x22578f8)
	mov     r1, r4
	bl      Function_2256b3c
	mov     r0, r6
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256f1c
	mov     r0, #0x52
	lsl     r0, r0, #2
	add     r7, r5, r0
	mov     r0, #0x38
	mul     r0, r4
	mov     r1, #0xa1
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, #0x40
	add     r3, r7, r3
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2256f1c
	mov     r0, r5
	add     r0, #0xf8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256e70
	mov     r0, r5
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, r4
	bne     branch_2256f26
.thumb
branch_2256e70: @ 2256e70 :thumb
	mov     r1, #0xa1
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, #0x8
	add     r3, r7, r3
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2256e96
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x3
	bl      Function_2256bac
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256e96

.thumb
branch_2256e96: @ 2256e96 :thumb
	mov     r1, #0xa2
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r5, r1]
	lsl     r0, r0, #12
	lsl     r1, r1, #12
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x4
	add     r1, r7, r1
	mov     r2, r0
	blx     0x20bd1b0
	add     r0, sp, #0x4
	mov     r1, r0
	blx     0x20bd3e4
	mov     r0, #0xc
	mov     r7, r4
	mul     r7, r0
	add     r6, #0xf
	ldrb    r2, [r6, r7]
	ldr     r0, [pc, #0x64] @ 0x2256f30, (=0x2257814)
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r0, r2]
	mul     r0, r1
	mov     r1, #0x64
	blx     0x20e1f6c
	str     r0, [sp, #0x4]
	ldrb    r2, [r6, r7]
	ldr     r0, [pc, #0x50] @ 0x2256f30, (=0x2257814)
	ldr     r1, [sp, #0x8]
	ldrb    r0, [r0, r2]
	mul     r0, r1
	mov     r1, #0x64
	blx     0x20e1f6c
	ldr     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	asr     r1, r2, #3
	lsr     r1, r1, #28
	add     r1, r2, r1
	asr     r1, r1, #4
	str     r1, [sp, #0x4]
	asr     r1, r0, #3
	lsr     r1, r1, #28
	add     r1, r0, r1
	asr     r0, r1, #4
	str     r0, [sp, #0x8]
	mov     r0, #0x38
	mul     r0, r4
	add     r1, r5, r0
	mov     r0, #0x4f
	add     r3, sp, #0x4
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     sp, #0x10
	str     r0, [r2, #0x0]
	pop     {r3-r7,pc}
@ 0x2256f1c

.thumb
branch_2256f1c: @ 2256f1c :thumb
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2256bac
.thumb
branch_2256f26: @ 2256f26 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256f2a


.align 2


.word 0x22578f8 @ 0x2256f2c
.word 0x2257814 @ 0x2256f30
.thumb
Function_2256f34: @ 2256f34 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r2
	mov     r4, r1
	ldr     r0, [pc, #0xc8] @ 0x2257008, (=0x225790c)
	mov     r1, r6
	bl      Function_2256b3c
	mov     r0, r4
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256ffa
	mov     r0, #0x52
	lsl     r0, r0, #2
	add     r7, r5, r0
	mov     r0, #0x38
	mul     r0, r6
	mov     r1, #0xa1
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r3, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r2, #0x40
	add     r3, r7, r3
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2256ffa
	mov     r1, #0xa2
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r5, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	lsl     r1, r1, #12
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	add     r1, sp, #0x4
	add     r0, r7, r0
	mov     r2, r1
	blx     0x20bd1b0
	add     r0, sp, #0x4
	mov     r1, r0
	blx     0x20bd3e4
	mov     r0, #0xc
	mov     r7, r6
	mul     r7, r0
	add     r4, #0xf
	ldrb    r2, [r4, r7]
	ldr     r0, [pc, #0x60] @ 0x225700c, (=0x2257810)
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r0, r2]
	mul     r0, r1
	mov     r1, #0x64
	blx     0x20e1f6c
	str     r0, [sp, #0x4]
	ldrb    r2, [r4, r7]
	ldr     r0, [pc, #0x50] @ 0x225700c, (=0x2257810)
	ldr     r1, [sp, #0x8]
	ldrb    r0, [r0, r2]
	mul     r0, r1
	mov     r1, #0x64
	blx     0x20e1f6c
	ldr     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	asr     r1, r2, #3
	lsr     r1, r1, #28
	add     r1, r2, r1
	asr     r1, r1, #4
	str     r1, [sp, #0x4]
	asr     r1, r0, #3
	lsr     r1, r1, #28
	add     r1, r0, r1
	asr     r0, r1, #4
	str     r0, [sp, #0x8]
	mov     r0, #0x38
	mul     r0, r6
	add     r1, r5, r0
	mov     r0, #0x4f
	add     r3, sp, #0x4
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     sp, #0x10
	str     r0, [r2, #0x0]
	pop     {r3-r7,pc}
@ 0x2256ffa

.thumb
branch_2256ffa: @ 2256ffa :thumb
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2256bac
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2257008

.word 0x225790c @ 0x2257008
.word 0x2257810 @ 0x225700c
.thumb
Function_2257010: @ 2257010 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r7, r2
	mov     r4, r1
	ldr     r0, [pc, #0xc8] @ 0x22570e4, (=0x2257920)
	mov     r1, r7
	bl      Function_2256b3c
	add     r4, #0x4c
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_22570d6
	mov     r1, #0xa2
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	mov     r4, r7
	lsl     r2, r0, #12
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x38
	mul     r4, r0
	mov     r0, #0x52
	lsl     r0, r0, #2
	add     r6, r5, r0
	str     r2, [sp, #0x4]
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x8
	add     r3, r6, r4
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_22570b2
	add     r0, sp, #0x0
	add     r1, r6, r4
	mov     r2, r0
	blx     0x20bd1b0
	add     r0, sp, #0x0
	blx     0x20bd384
	mov     r1, #0x6
	lsl     r1, r1, #8
	cmp     r0, r1
	ble     branch_2257084
	add     r0, sp, #0x0
	mov     r1, r0
	blx     0x20bd3e4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
.thumb
branch_2257084: @ 2257084 :thumb
	ldr     r1, [sp, #0x0]
	add     r3, sp, #0x0
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	asr     r0, r1, #3
	lsr     r0, r0, #28
	add     r0, r1, r0
	asr     r0, r0, #4
	str     r0, [sp, #0x4]
	mov     r0, #0x4f
	add     r1, r5, r4
	lsl     r0, r0, #2
	add     r2, r1, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     sp, #0xc
	str     r0, [r2, #0x0]
	pop     {r4-r7,pc}
@ 0x22570b2

.thumb
branch_22570b2: @ 22570b2 :thumb
	mov     r1, #0xa1
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x40
	add     r3, r6, r4
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_22570d6
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_2256bac
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22570d6

.thumb
branch_22570d6: @ 22570d6 :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2256bac
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22570e4

.word 0x2257920 @ 0x22570e4
.thumb
Function_22570e8: @ 22570e8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r4, r1
	ldr     r0, [pc, #0x94] @ 0x2257188, (=0x2257934)
	mov     r1, r7
	bl      Function_2256b3c
	add     r4, #0x4c
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2257158
	mov     r0, #0x38
	mov     r4, r7
	mul     r4, r0
	mov     r0, #0x52
	mov     r1, #0xa1
	lsl     r0, r0, #2
	add     r6, r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x8
	add     r3, r6, r4
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_2257136
	mov     r1, #0x4f
	lsl     r1, r1, #2
	mov     r3, #0x0
	add     r2, r5, r4
	str     r3, [r2, r1]
	add     r0, r1, #0x4
	str     r3, [r2, r0]
	add     r1, #0x8
	str     r3, [r2, r1]
	pop     {r3-r7,pc}
@ 0x2257136

.thumb
branch_2257136: @ 2257136 :thumb
	mov     r1, #0xa1
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x40
	add     r3, r6, r4
	bl      Function_2256a14
	cmp     r0, #0x0
	beq     branch_225717a
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x2
	bl      Function_2256bac
	pop     {r3-r7,pc}
@ 0x2257158

.thumb
branch_2257158: @ 2257158 :thumb
	mov     r0, #0x38
	mov     r4, r7
	mul     r4, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, r0, r4
	bl      Function_2256d20
	cmp     r0, #0x0
	beq     branch_225717a
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r0, r5, r0
	add     r0, r0, r4
	bl      Function_22567d4
.thumb
branch_225717a: @ 225717a :thumb
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x0
	bl      Function_2256bac
	pop     {r3-r7,pc}
@ 0x2257186


.align 2


.word 0x2257934 @ 0x2257188
.thumb
Function_225718c: @ 225718c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r0, #0x4d
	lsl     r0, r0, #2
	add     r1, r5, r0
	mov     r6, r2
	mov     r0, #0x38
	mul     r0, r6
	add     r4, r1, r0
	ldr     r0, [pc, #0xf8] @ 0x2257298, (=0x2257948)
	mov     r1, r6
	bl      Function_2256b3c
	mov     r0, r4
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22571b6
	cmp     r0, #0x1
	beq     branch_22571da
	pop     {r4-r6,pc}
@ 0x22571b6

.thumb
branch_22571b6: @ 22571b6 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x10]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2256c98
	ldr     r0, [pc, #0xd4] @ 0x225729c, (=0x669)
	bl      0x2254424
	mov     r0, r4
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x34
	strb    r1, [r0, #0x0]
.thumb
branch_22571da: @ 22571da :thumb
	mov     r0, r4
	add     r0, #0x35
	ldrb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x35
	add     r1, #0x8
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_225720c
	mov     r0, r4
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x8c
	bls     branch_225720c
	mov     r0, r5
	mov     r1, r6
	bl      Function_2256cc4
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x36
	strb    r1, [r0, #0x0]
.thumb
branch_225720c: @ 225720c :thumb
	mov     r0, r4
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xb4
	bls     branch_2257226
	mov     r0, r4
	mov     r1, #0xb4
	add     r0, #0x35
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x36
	strb    r1, [r0, #0x0]
.thumb
branch_2257226: @ 2257226 :thumb
	mov     r0, r4
	add     r0, #0x35
	ldrb    r0, [r0, #0x0]
	bl      0x201d15c
	mov     r1, #0x13
	mvn     r1, r1
	mul     r1, r0
	mov     r0, #0x0
	str     r0, [r4, #0x20]
	str     r1, [r4, #0x24]
	str     r0, [r4, #0x28]
	mov     r0, r4
	mov     r1, r4
	mov     r2, r5
	add     r0, #0x14
	add     r1, #0x20
	add     r2, #0xa4
	blx     0x20bd17c
	mov     r1, r5
	mov     r2, r5
	add     r1, #0xa4
	add     r2, #0xa8
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      0x2255900
	mov     r2, #0x2
	ldr     r3, [r4, #0x18]
	lsl     r2, r2, #14
	ldr     r0, [r4, #0x4]
	ldr     r1, [r4, #0x14]
	add     r2, r3, r2
	bl      0x2255900
	mov     r0, r4
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2257296
	add     r4, #0x8
	mov     r0, r4
	bl      Function_22567d4
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	bl      Function_2256bac
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r1, [r5, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r5, r0]
.thumb
branch_2257296: @ 2257296 :thumb
	pop     {r4-r6,pc}
@ 0x2257298

.word 0x2257948 @ 0x2257298
.word 0x669 @ 0x225729c
.thumb
Function_22572a0: @ 22572a0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r0, r0, #16
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x34]
.thumb
branch_22572ae: @ 22572ae :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x4]
	ldr     r4, [sp, #0x34]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_22572f4
	mov     r1, #0x52
	ldr     r5, [sp, #0x0]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r7, r0, r1
	sub     r1, #0xc
	add     r5, #0x5c
	add     r6, r0, r1
.thumb
branch_22572d0: @ 22572d0 :thumb
	ldr     r0, [sp, #0x34]
	mov     r1, r6
	mov     r2, r7
	mov     r3, r5
	blx     0x20bd628
	ldr     r0, [sp, #0x24]
	add     r5, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x0]
	add     r7, #0x38
	add     r6, #0x38
	str     r0, [sp, #0x10]
	cmp     r1, r0
	blt     branch_22572d0
.thumb
branch_22572f4: @ 22572f4 :thumb
	ldr     r0, [sp, #0x10]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_22573be
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x14]
	mov     r6, r0
.thumb
branch_2257302: @ 2257302 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r7, [r0, #0x5c]
	ldr     r0, [pc, #0x31c] @ 0x2257624, (=0xffff6000)
	cmp     r7, r0
	bge     branch_225732e
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_225732e
	mov     r0, #0xa
	lsl     r0, r0, #12
	add     r0, r7, r0
	blx     0x20e1f6c
	sub     r1, r4, r0
	cmp     r1, r4
	bge     branch_225732e
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	str     r5, [sp, #0x30]
	mov     r4, r1
.thumb
branch_225732e: @ 225732e :thumb
	mov     r0, #0xd9
	lsl     r0, r0, #12
	cmp     r7, r0
	ble     branch_2257358
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_2257358
	mov     r0, #0xd9
	lsl     r0, r0, #12
	sub     r0, r7, r0
	blx     0x20e1f6c
	sub     r1, r4, r0
	cmp     r1, r4
	bge     branch_2257358
	mov     r0, #0x3
	str     r0, [sp, #0x28]
	str     r5, [sp, #0x30]
	mov     r4, r1
.thumb
branch_2257358: @ 2257358 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r7, [r0, #0x60]
	ldr     r0, [pc, #0x2c8] @ 0x2257628, (=0xfffea000)
	cmp     r7, r0
	bge     branch_2257384
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_2257384
	mov     r0, #0x16
	lsl     r0, r0, #12
	add     r0, r7, r0
	blx     0x20e1f6c
	sub     r1, r4, r0
	cmp     r1, r4
	bge     branch_2257384
	mov     r0, #0x4
	str     r0, [sp, #0x28]
	str     r5, [sp, #0x30]
	mov     r4, r1
.thumb
branch_2257384: @ 2257384 :thumb
	mov     r0, #0xb7
	lsl     r0, r0, #12
	cmp     r7, r0
	ble     branch_22573ae
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r1, [r6, r0]
	cmp     r1, #0x0
	beq     branch_22573ae
	mov     r0, #0xb7
	lsl     r0, r0, #12
	sub     r0, r7, r0
	blx     0x20e1f6c
	sub     r1, r4, r0
	cmp     r1, r4
	bge     branch_22573ae
	mov     r0, #0x5
	str     r0, [sp, #0x28]
	str     r5, [sp, #0x30]
	mov     r4, r1
.thumb
branch_22573ae: @ 22573ae :thumb
	ldr     r0, [sp, #0x14]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0xc
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	add     r6, #0x38
	cmp     r5, r0
	blt     branch_2257302
.thumb
branch_22573be: @ 22573be :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_225746e
	ldr     r0, [sp, #0x0]
	mov     r1, #0x4f
	str     r0, [sp, #0x1c]
	add     r0, #0x5c
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x1c]
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x18]
	str     r0, [sp, #0x3c]
.thumb
branch_22573e2: @ 22573e2 :thumb
	ldr     r0, [sp, #0x20]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_2257450
	ldr     r7, [sp, #0x38]
	ldr     r6, [sp, #0x3c]
.thumb
branch_22573ee: @ 22573ee :thumb
	ldr     r1, [sp, #0x1c]
	mov     r0, r7
	add     r2, sp, #0x68
	blx     0x20bd1b0
	add     r0, sp, #0x68
	blx     0x20bd384
	mov     r1, #0x2
	lsl     r1, r1, #16
	str     r0, [sp, #0x40]
	cmp     r0, r1
	bge     branch_2257444
	add     r0, sp, #0x68
	add     r1, sp, #0x5c
	blx     0x20bd3e4
	ldr     r1, [sp, #0x18]
	mov     r0, r6
	add     r2, sp, #0x50
	blx     0x20bd1b0
	add     r0, sp, #0x50
	add     r1, sp, #0x5c
	blx     0x20bd218
	mov     r2, r0
	mov     r1, #0x2
	ldr     r0, [sp, #0x40]
	lsl     r1, r1, #16
	sub     r0, r1, r0
	neg     r1, r2
	blx     0x20e1f6c
	sub     r0, r4, r0
	cmp     r0, r4
	bge     branch_2257444
	mov     r1, #0x1
	str     r1, [sp, #0x28]
	ldr     r1, [sp, #0x20]
	str     r5, [sp, #0x30]
	str     r1, [sp, #0x2c]
	mov     r4, r0
.thumb
branch_2257444: @ 2257444 :thumb
	ldr     r0, [sp, #0x20]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r7, #0xc
	add     r6, #0x38
	cmp     r5, r0
	blt     branch_22573ee
.thumb
branch_2257450: @ 2257450 :thumb
	ldr     r0, [sp, #0x1c]
	add     r0, #0xc
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	add     r0, #0x38
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x20]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x10]
	cmp     r1, r0
	blt     branch_22573e2
.thumb
branch_225746e: @ 225746e :thumb
	cmp     r4, #0x0
	bgt     branch_2257474
	b       branch_225774c
@ 0x2257474

.thumb
branch_2257474: @ 2257474 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	ble     branch_22574ae
	mov     r1, #0x52
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r7, r0, r1
	sub     r1, #0xc
	mov     r6, r7
	add     r5, r0, r1
.thumb
branch_225748c: @ 225748c :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, r6
	mov     r3, r7
	blx     0x20bd628
	ldr     r0, [sp, #0x8]
	add     r7, #0x38
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     r6, #0x38
	ldr     r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	add     r5, #0x38
	cmp     r0, r1
	blt     branch_225748c
.thumb
branch_22574ae: @ 22574ae :thumb
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x5
	bls     branch_22574b6
	b       branch_225773e
@ 0x22574b6

.thumb
branch_22574b6: @ 22574b6 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22574c2

Jumppoints_22574c2:
.hword branch_225773e - Jumppoints_22574c2 - 2
.hword branch_22574ce - Jumppoints_22574c2 - 2
.hword branch_2257700 - Jumppoints_22574c2 - 2
.hword branch_2257700 - Jumppoints_22574c2 - 2
.hword branch_2257720 - Jumppoints_22574c2 - 2
.hword branch_2257720 - Jumppoints_22574c2 - 2
.thumb
branch_22574ce: @ 22574ce :thumb
	ldr     r1, [sp, #0x30]
	mov     r0, #0x38
	mov     r6, r1
	ldr     r1, [sp, #0x0]
	mul     r6, r0
	add     r1, r1, r6
	str     r1, [sp, #0xc]
	mov     r1, #0x16
	ldr     r2, [sp, #0xc]
	lsl     r1, r1, #4
	ldrb    r2, [r2, r1]
	cmp     r2, #0x3
	bne     branch_225759c
	ldr     r2, [sp, #0x2c]
	sub     r1, #0x24
	mov     r7, r2
	mul     r7, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r1
	add     r5, r0, r7
	ldr     r0, [r0, r7]
	cmp     r0, #0x0
	bne     branch_2257502
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_225750e
.thumb
branch_2257502: @ 2257502 :thumb
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0x124] @ 0x225762c, (=0x166)
	add     r0, r0, r7
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2257582
.thumb
branch_225750e: @ 225750e :thumb
	mov     r1, #0x52
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	add     r0, r1, r7
	add     r1, r1, r6
	add     r2, sp, #0x68
	blx     0x20bd1b0
	add     r0, sp, #0x68
	add     r1, sp, #0x5c
	blx     0x20bd3e4
	ldr     r0, [sp, #0x5c]
	ldr     r2, [pc, #0x104] @ 0x2257630, (=0x19a)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r5, #0x0]
	ldr     r0, [sp, #0x60]
	ldr     r2, [pc, #0xe4] @ 0x2257630, (=0x19a)
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, r0
	mov     r0, #0x2
	mov     r3, #0x0
	lsl     r0, r0, #10
	add     r0, r2, r0
	adc     r1, r3
	lsl     r1, r1, #20
	lsr     r0, r0, #12
	orr     r0, r1
	str     r0, [r5, #0x4]
	ldr     r0, [sp, #0x0]
	ldr     r1, [pc, #0xc0] @ 0x225762c, (=0x166)
	add     r0, r0, r7
	mov     r2, #0x1
	strb    r2, [r0, r1]
	ldr     r1, [sp, #0x30]
	cmp     r1, #0x1
	bne     branch_225757c
	ldr     r1, [sp, #0x2c]
	cmp     r1, #0x2
	beq     branch_2257594
.thumb
branch_225757c: @ 225757c :thumb
	ldr     r1, [sp, #0x2c]
	cmp     r1, #0x1
	b       branch_2257594
@ 0x2257582

.thumb
branch_2257582: @ 2257582 :thumb
	ldr     r2, [r5, #0x0]
	mov     r1, #0x0
	mvn     r1, r1
	mov     r3, r2
	mul     r3, r1
	str     r3, [r5, #0x0]
	ldr     r2, [r5, #0x4]
	mul     r1, r2
	str     r1, [r5, #0x4]
.thumb
branch_2257594: @ 2257594 :thumb
	ldr     r1, [pc, #0x9c] @ 0x2257634, (=0x163)
	mov     r2, #0x14
	strb    r2, [r0, r1]
	b       branch_225773e
@ 0x225759c

.thumb
branch_225759c: @ 225759c :thumb
	ldr     r2, [sp, #0x2c]
	mov     r7, r2
	mul     r7, r0
	ldr     r0, [sp, #0x0]
	add     r0, r0, r7
	ldrb    r0, [r0, r1]
	cmp     r0, #0x3
	bne     branch_225766c
	ldr     r0, [sp, #0x0]
	sub     r1, #0x24
	add     r0, r0, r1
	add     r5, r0, r6
	ldr     r0, [r0, r6]
	cmp     r0, #0x0
	bne     branch_22575c0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	beq     branch_22575ca
.thumb
branch_22575c0: @ 22575c0 :thumb
	ldr     r1, [pc, #0x68] @ 0x225762c, (=0x166)
	ldr     r0, [sp, #0xc]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2257650
.thumb
branch_22575ca: @ 22575ca :thumb
	mov     r1, #0x52
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r1, r0, r1
	add     r0, r1, r6
	add     r1, r1, r7
	add     r2, sp, #0x68
	blx     0x20bd1b0
	add     r0, sp, #0x68
	add     r1, sp, #0x5c
	blx     0x20bd3e4
	ldr     r0, [sp, #0x5c]
	ldr     r2, [pc, #0x48] @ 0x2257630, (=0x19a)
	asr     r1, r0, #31
	mov     r3, #0x0
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x0]
	ldr     r0, [sp, #0x60]
	ldr     r2, [pc, #0x28] @ 0x2257630, (=0x19a)
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r5, #0x4]
	ldr     r1, [pc, #0xc] @ 0x225762c, (=0x166)
	b       branch_2257638
@ 0x2257622


.align 2


.word 0xffff6000 @ 0x2257624
.word 0xfffea000 @ 0x2257628
.word 0x166 @ 0x225762c
.word 0x19a @ 0x2257630
.word 0x163 @ 0x2257634
.thumb
branch_2257638: @ 2257638 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x1
	strb    r2, [r0, r1]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	bne     branch_225764a
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x2
	beq     branch_2257662
.thumb
branch_225764a: @ 225764a :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x1
	b       branch_2257662
@ 0x2257650

.thumb
branch_2257650: @ 2257650 :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	mov     r2, r1
	mul     r2, r0
	str     r2, [r5, #0x0]
	ldr     r1, [r5, #0x4]
	mul     r0, r1
	str     r0, [r5, #0x4]
.thumb
branch_2257662: @ 2257662 :thumb
	ldr     r1, [pc, #0x194] @ 0x22577f8, (=0x163)
	ldr     r0, [sp, #0xc]
	mov     r2, #0x14
	strb    r2, [r0, r1]
	b       branch_225773e
@ 0x225766c

.thumb
branch_225766c: @ 225766c :thumb
	ldr     r0, [sp, #0x0]
	sub     r1, #0x18
	add     r1, r0, r1
	add     r0, r1, r6
	add     r1, r1, r7
	add     r2, sp, #0x68
	blx     0x20bd1b0
	add     r0, sp, #0x68
	blx     0x20bd384
	add     r0, sp, #0x68
	add     r1, sp, #0x5c
	blx     0x20bd3e4
	mov     r1, #0x4f
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	add     r0, r0, r1
	str     r0, [sp, #0x4c]
	ldr     r1, [sp, #0x4c]
	add     r0, r0, r6
	add     r1, r1, r7
	add     r2, sp, #0x50
	blx     0x20bd1b0
	add     r0, sp, #0x50
	add     r1, sp, #0x5c
	blx     0x20bd218
	mov     r5, #0x4f
	ldr     r2, [sp, #0x4c]
	str     r0, [sp, #0x44]
	ldr     r3, [sp, #0x0]
	lsl     r5, r5, #2
	add     r3, r3, r5
	neg     r0, r0
	add     r1, sp, #0x5c
	add     r2, r2, r6
	add     r3, r3, r6
	blx     0x20bd628
	ldr     r3, [sp, #0x0]
	ldr     r2, [sp, #0x4c]
	add     r3, r3, r5
	ldr     r0, [sp, #0x44]
	add     r1, sp, #0x5c
	add     r2, r2, r7
	add     r3, r3, r7
	blx     0x20bd628
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	ldr     r3, [sp, #0x0]
	add     r1, #0x27
	add     r0, r0, r6
	mov     r2, #0x14
	strb    r2, [r0, r1]
	add     r3, r3, r7
	strb    r2, [r3, r1]
	mov     r2, #0x0
	add     r5, r1, #0x3
	strb    r2, [r0, r5]
	mov     r0, r5
	strb    r2, [r3, r0]
	ldr     r0, [sp, #0x30]
	cmp     r0, #0x1
	bne     branch_22576fa
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x2
	beq     branch_225773e
.thumb
branch_22576fa: @ 22576fa :thumb
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x1
	b       branch_225773e
@ 0x2257700

.thumb
branch_2257700: @ 2257700 :thumb
	ldr     r0, [sp, #0x30]
	mov     r1, #0x38
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [sp, #0x0]
	sub     r1, #0x39
	add     r0, r0, r2
	mov     r2, #0x4f
	lsl     r2, r2, #2
	ldr     r3, [r0, r2]
	mul     r1, r3
	str     r1, [r0, r2]
	mov     r1, #0x0
	add     r2, #0x2a
	strb    r1, [r0, r2]
	b       branch_225773e
@ 0x2257720

.thumb
branch_2257720: @ 2257720 :thumb
	ldr     r0, [sp, #0x30]
	mov     r1, #0x38
	mov     r2, r0
	mul     r2, r1
	ldr     r0, [sp, #0x0]
	sub     r1, #0x39
	add     r0, r0, r2
	mov     r2, #0x5
	lsl     r2, r2, #6
	ldr     r3, [r0, r2]
	mul     r1, r3
	str     r1, [r0, r2]
	mov     r1, #0x0
	add     r2, #0x26
	strb    r1, [r0, r2]
.thumb
branch_225773e: @ 225773e :thumb
	ldr     r0, [sp, #0x34]
	sub     r0, r0, r4
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_225774c
	b       branch_22572ae
@ 0x225774c

.thumb
branch_225774c: @ 225774c :thumb
	ldr     r0, [sp, #0x4]
	mov     r5, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_22577f2
	ldr     r4, [sp, #0x0]
	mov     r1, #0x55
	mov     r0, r4
	lsl     r1, r1, #2
	add     r7, r0, r1
	sub     r1, #0xc
	add     r6, r0, r1
	str     r0, [sp, #0x48]
	add     r0, #0xa4
	str     r0, [sp, #0x48]
.thumb
branch_225776a: @ 225776a :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bcs     branch_22577a6
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_225778c
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x6
	bl      0x22558c4
	b       branch_22577a6
@ 0x225778c

.thumb
branch_225778c: @ 225778c :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	ble     branch_225779a
	mov     r1, #0x7
	b       branch_225779c
@ 0x225779a

.thumb
branch_225779a: @ 225779a :thumb
	mov     r1, #0x6
.thumb
branch_225779c: @ 225779c :thumb
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x22558c4
.thumb
branch_22577a6: @ 22577a6 :thumb
	ldr     r2, [sp, #0x48]
	mov     r0, r6
	mov     r1, r7
	blx     0x20bd17c
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x0]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	add     r1, #0xa4
	add     r2, #0xa8
	ldr     r0, [r4, r0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      0x2255900
	mov     r2, #0x53
	mov     r0, #0x4e
	mov     r1, #0x52
	lsl     r2, r2, #2
	lsl     r0, r0, #2
	lsl     r1, r1, #2
	ldr     r3, [r4, r2]
	mov     r2, #0x2
	lsl     r2, r2, #14
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	add     r2, r3, r2
	bl      0x2255900
	ldr     r0, [sp, #0x4]
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r0, [r0, #0x0]
	add     r4, #0x38
	add     r7, #0x38
	add     r6, #0x38
	cmp     r5, r0
	blt     branch_225776a
.thumb
branch_22577f2: @ 22577f2 :thumb
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x22577f6

.align 2
.word 0x163 @ 0x22577f8



Unknown_22577fc: @ 0x22577fc
.incbin "./baserom/overlay/overlay_0033.bin", 0x163c, 0x2257960 - 0x22577fc


@end 0x2257960




