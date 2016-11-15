

.section .iwram35, "ax"


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
	bl      free
.thumb
branch_2256212: @ 2256212 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256216


.align 2


.word 0x22562b1 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x1
	mov     r1, r5
	mov     r7, r2
	mov     r4, r3
	str     r0, [r5, #0xc]
	mov     r0, r4
	add     r1, #0x8
	mov     r2, #0x4
	bl      0x2099d7c
	cmp     r0, #0x0
	bne     branch_225623e
	mov     r0, #0x0
	str     r0, [r5, #0x8]
.thumb
branch_225623e: @ 225623e :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x10
	add     r1, #0x8
	mov     r2, r7
	str     r4, [r5, #0x4]
	bl      Function_2256410
	cmp     r0, #0x0
	beq     branch_2256276
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x225627c, (=Unknown_2256720)
	ldr     r2, [pc, #0x1c] @ 0x2256280, (=0x2256285)
	mov     r1, #0x1
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x18]
	mov     r0, #0x0
	str     r0, [r5, #0x1c]
	str     r6, [r5, #0x14]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256276

.thumb
branch_2256276: @ 2256276 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x225627a

.align 2
.word Unknown_2256720 @ 0x225627c
.word Function_2256284+1 @ =0x2256285, 0x2256280



.thumb
Function_2256284: @ 2256284 :thumb
	cmp     r0, #0x0
	bne     branch_225628a
	str     r1, [r3, #0x1c]
branch_225628a: @ 225628a :thumb
	bx      lr
@ 0x225628c

.thumb
Function_225628c: @ 225628c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8
	mov     r2, #0x4
	bl      0x2099d54
	ldr     r0, [r4, #0x18]
	bl      0x2255b34
	ldr     r0, [r4, #0x10]
	bl      Function_225644c
	mov     r0, r4
	bl      free
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
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x18]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x22562e8, (=0x2256724)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_22562e6
	mov     r0, r4
	bl      Function_225628c
	mov     r0, r5
	bl      Function_200da58
	ldr     r0, [r4, #0x14]
	bl      0x2254260
.thumb
branch_22562e6: @ 22562e6 :thumb
	pop     {r3-r5,pc}
@ 0x22562e8

.word 0x2256724 @ 0x22562e8
.thumb
Function_22562ec: @ 22562ec :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562f2


.align 2, 0


.thumb
Function_22562f4: @ 22562f4 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562fc
	b       branch_22562fe
@ 0x22562fc

.thumb
branch_22562fc: @ 22562fc :thumb
	mov     r1, #0x2
.thumb
branch_22562fe: @ 22562fe :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x2256306


.align 2, 0


.thumb
Function_2256308: @ 2256308 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256318
	cmp     r0, #0x1
	beq     branch_2256328
	b       branch_2256342
@ 0x2256318

.thumb
branch_2256318: @ 2256318 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_2256548
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256342
@ 0x2256328

.thumb
branch_2256328: @ 2256328 :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      Function_225656c
	cmp     r0, #0x0
	beq     branch_2256342
	ldr     r0, [r4, #0x14]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562f4
.thumb
branch_2256342: @ 2256342 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256346


.align 2, 0


.thumb
Function_2256348: @ 2256348 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x2]
	mov     r1, r4
	add     r1, #0x8
	cmp     r2, #0x0
	beq     branch_2256360
	mov     r1, #0x2
	bl      Function_22562f4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256360

.thumb
branch_2256360: @ 2256360 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225636c
	cmp     r0, #0x1
	beq     branch_225638a
	b       branch_22563d2
@ 0x225636c

.thumb
branch_225636c: @ 225636c :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x1
	bne     branch_22563d2
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_2256548
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563d2
@ 0x225638a

.thumb
branch_225638a: @ 225638a :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x2
	bne     branch_22563a4
	mov     r0, #0x1
	str     r0, [r1, #0x4]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_2256548
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	strb    r0, [r4, #0x1]
	b       branch_22563d2
@ 0x22563a4

.thumb
branch_22563a4: @ 22563a4 :thumb
	cmp     r0, #0x3
	bne     branch_22563d2
	mov     r0, #0x1
	str     r0, [r1, #0x4]
	ldr     r0, [r1, #0x0]
	add     r2, r0, #0x1
	ldr     r0, [pc, #0x24] @ 0x22563d8, (=0x270f)
	str     r2, [r1, #0x0]
	cmp     r2, r0
	bls     branch_22563bc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
.thumb
branch_22563bc: @ 22563bc :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x2
	bl      Function_2256548
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      Function_2256548
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	strb    r0, [r4, #0x1]
.thumb
branch_22563d2: @ 22563d2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563d6


.align 2


.word 0x270f @ 0x22563d8
.thumb
Function_22563dc: @ 22563dc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563ec
	cmp     r0, #0x1
	beq     branch_22563fc
	b       branch_225640a
@ 0x22563ec

.thumb
branch_22563ec: @ 22563ec :thumb
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_2256548
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225640a
@ 0x22563fc

.thumb
branch_22563fc: @ 22563fc :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_2256578
	cmp     r0, #0x0
	beq     branch_225640a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225640a

.thumb
branch_225640a: @ 225640a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225640e


.align 2, 0


.thumb
Function_2256410: @ 2256410 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x60
	bl      malloc_maybe
	mov     r4, r0
	beq     branch_2256446
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
	bl      Function_2256460
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256446

.thumb
branch_2256446: @ 2256446 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x225644a


.align 2, 0


.thumb
Function_225644c: @ 225644c :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_225645c
	bl      Function_2256514
	mov     r0, r4
	bl      free
.thumb
branch_225645c: @ 225645c :thumb
	pop     {r4,pc}
@ 0x225645e


.align 2, 0


.thumb
Function_2256460: @ 2256460 :thumb
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
	mov     r1, #0x2f
	lsl     r3, r3, #8
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x38
	mov     r1, #0xc
	mov     r2, #0x2d
	mov     r3, #0x2e
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x4c
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      0x2255958
	mov     r2, r7
	ldr     r0, [r7, #0x20]
	ldr     r1, [pc, #0x4c] @ 0x225650c, (=0x2256730)
	add     r2, #0x38
	bl      0x2255810
	mov     r1, #0x50
	str     r0, [r7, #0x24]
	bl      0x2255940
	mov     r0, r7
	mov     r5, #0x16
	str     r0, [sp, #0x10]
	add     r0, #0x4c
	mov     r6, #0x0
	mov     r4, r7
	lsl     r5, r5, #14
	str     r0, [sp, #0x10]
.thumb
branch_22564dc: @ 22564dc :thumb
	ldr     r0, [r7, #0x20]
	ldr     r1, [pc, #0x30] @ 0x2256510, (=0x2256740)
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
	cmp     r6, #0x4
	blt     branch_22564dc
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_22566a8
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x225650c

.word 0x2256730 @ 0x225650c
.word 0x2256740 @ 0x2256510
.thumb
Function_2256514: @ 2256514 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x20]
	ldr     r1, [r6, #0x24]
	bl      0x22558b0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256524: @ 2256524 :thumb
	ldr     r0, [r6, #0x20]
	ldr     r1, [r5, #0x28]
	bl      0x22558b0
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2256524
	mov     r0, r6
	add     r0, #0x38
	bl      0x22559b0
	add     r6, #0x4c
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x2256546


.align 2, 0


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
	ldr     r0, [pc, #0xc] @ 0x2256568, (=0x225676c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256566


.align 2


.word 0x225676c @ 0x2256568
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
	ldr     r2, [pc, #0x70] @ 0x225661c, (=0x2256750)
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
	mov     r1, #0x2c
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
	mov     r1, #0x2b
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x28] @ 0x2256620, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256624, (=0xffffe0ff)
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
	bl      Function_2256584
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225661a


.align 2


.word 0x2256750 @ 0x225661c
.word 0x4001000 @ 0x2256620
.word 0xffffe0ff @ 0x2256624
.thumb
Function_2256628: @ 2256628 :thumb
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
@ 0x2256642


.align 2, 0


.thumb
Function_2256644: @ 2256644 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_225665e
	cmp     r0, #0x1
	beq     branch_225666e
	b       branch_2256676
@ 0x225665e

.thumb
branch_225665e: @ 225665e :thumb
	ldr     r0, [pc, #0x20] @ 0x2256680, (=0x669)
	bl      0x2254424
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1
	bl      0x22558c4
	b       branch_2256676
@ 0x225666e

.thumb
branch_225666e: @ 225666e :thumb
	ldr     r0, [r4, #0x24]
	mov     r1, #0x0
	bl      0x22558c4
.thumb
branch_2256676: @ 2256676 :thumb
	mov     r0, r5
	bl      Function_2256584
	pop     {r3-r5,pc}
@ 0x225667e


.align 2


.word 0x669 @ 0x2256680
.thumb
Function_2256684: @ 2256684 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_22566a8
	mov     r0, r5
	bl      Function_2256584
	pop     {r3-r5,pc}
@ 0x22566a6


.align 2, 0


.thumb
Function_22566a8: @ 22566a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	ldr     r0, [r1, #0x0]
	ldr     r5, [pc, #0x58] @ 0x225670c, (=0x4000280)
	str     r0, [sp, #0x4]
	mov     r0, #0xfa
	lsl     r0, r0, #2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	lsr     r4, r5, #11
	lsr     r6, r5, #11
.thumb
branch_22566c2: @ 22566c2 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x44] @ 0x2256710, (=0x4000290)
	str     r1, [r0, #0x0]
	ldr     r1, [sp, #0x0]
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x40] @ 0x2256714, (=0x4000298)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
.thumb
branch_22566d6: @ 22566d6 :thumb
	ldrh    r0, [r5, #0x0]
	tst     r0, r4
	bne     branch_22566d6
	ldr     r1, [pc, #0x38] @ 0x2256718, (=0x40002a0)
	ldr     r0, [r7, #0x28]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
.thumb
branch_22566e6: @ 22566e6 :thumb
	ldrh    r0, [r5, #0x0]
	tst     r0, r6
	bne     branch_22566e6
	ldr     r0, [pc, #0x2c] @ 0x225671c, (=0x40002a8)
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
	cmp     r0, #0x4
	blt     branch_22566c2
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x225670c

.word 0x4000280 @ 0x225670c
.word 0x4000290 @ 0x2256710
.word 0x4000298 @ 0x2256714
.word 0x40002a0 @ 0x2256718
.word 0x40002a8 @ 0x225671c



Unknown_2256720: @ 0x2256720
.incbin "./baserom/overlay/overlay_0035.bin", 0x560, 0x22567c0 - 0x2256720


@end 0x22567c0




