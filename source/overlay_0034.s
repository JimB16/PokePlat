

.section .iwram34, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256295)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256295 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x54
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256261)
	mov     r1, r4
	mov     r2, #0x1
	bl      AddTaskToTaskList1
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


.word 0x2256261 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x48
	add     r1, r5, #0x4
	bl      Function_2256540
	cmp     r0, #0x0
	beq     branch_225623e
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	str     r0, [r5, #0x50]
	str     r4, [r5, #0x4c]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x225623e

.thumb
branch_225623e: @ 225623e :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256242


.align 2, 0


.thumb
Function_2256244: @ 2256244 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x0
	beq     branch_2256252
	bl      free
.thumb
branch_2256252: @ 2256252 :thumb
	ldr     r0, [r4, #0x48]
	bl      Function_2256604
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256260

.thumb
Function_2256260: @ 2256260 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldrb    r1, [r4, #0x0]
	mov     r5, r0
	cmp     r1, #0x3
	bcs     branch_225628c
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x20] @ 0x2256290, (=0x2256a1c)
	mov     r0, r4
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225628c
	mov     r0, r4
	bl      Function_2256244
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x4c]
	bl      0x2254260
.thumb
branch_225628c: @ 225628c :thumb
	pop     {r3-r5,pc}
@ 0x225628e


.align 2


.word 0x2256a1c @ 0x2256290
.thumb
Function_2256294: @ 2256294 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225629a


.align 2, 0


.thumb
Function_225629c: @ 225629c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562a4
	b       branch_22562a6
@ 0x22562a4

.thumb
branch_22562a4: @ 22562a4 :thumb
	mov     r1, #0x2
.thumb
branch_22562a6: @ 22562a6 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562ae


.align 2, 0


.thumb
Function_22562b0: @ 22562b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562c0
	cmp     r0, #0x1
	beq     branch_22562d0
	b       branch_22562ea
@ 0x22562c0

.thumb
branch_22562c0: @ 22562c0 :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	bl      Function_2256640
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562ea
@ 0x22562d0

.thumb
branch_22562d0: @ 22562d0 :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x0
	bl      Function_2256664
	cmp     r0, #0x0
	beq     branch_22562ea
	ldr     r0, [r4, #0x4c]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225629c
.thumb
branch_22562ea: @ 22562ea :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562ee


.align 2, 0


.thumb
Function_22562f0: @ 22562f0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256310
	ldr     r0, [r4, #0x48]
	bl      Function_2256a0c
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_225629c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256310

.thumb
branch_2256310: @ 2256310 :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x3
	bhi     branch_22563da
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2256322

Jumppoints_2256322:
.hword branch_225632a - Jumppoints_2256322 - 2
.hword branch_2256354 - Jumppoints_2256322 - 2
.hword branch_22563aa - Jumppoints_2256322 - 2
.hword branch_22563bc - Jumppoints_2256322 - 2
.thumb
branch_225632a: @ 225632a :thumb
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_22563e4
	cmp     r0, #0x0
	beq     branch_22563da
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	bl      Function_2256428
	ldr     r0, [pc, #0x9c] @ 0x22563e0, (=0x668)
	bl      0x2254424
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2256640
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563da
@ 0x2256354

.thumb
branch_2256354: @ 2256354 :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2256664
	cmp     r0, #0x0
	beq     branch_2256366
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_22563da
@ 0x2256366

.thumb
branch_2256366: @ 2256366 :thumb
	ldr     r0, [r4, #0x4c]
	bl      0x2254534
	cmp     r0, #0x1
	beq     branch_225637a
	ldr     r0, [r4, #0x4c]
	bl      0x225450c
	cmp     r0, #0x0
	beq     branch_2256386
.thumb
branch_225637a: @ 225637a :thumb
	ldr     r0, [r4, #0x48]
	bl      Function_2256a0c
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	b       branch_22563da
@ 0x2256386

.thumb
branch_2256386: @ 2256386 :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_22563e4
	cmp     r0, #0x0
	beq     branch_22563da
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r4
	bl      Function_2256428
	ldr     r0, [r4, #0x48]
	bl      Function_2256a0c
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
	b       branch_22563da
@ 0x22563aa

.thumb
branch_22563aa: @ 22563aa :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2256664
	cmp     r0, #0x0
	beq     branch_22563da
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_22563da
@ 0x22563bc

.thumb
branch_22563bc: @ 22563bc :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2256664
	cmp     r0, #0x0
	beq     branch_22563da
	ldr     r0, [pc, #0x14] @ 0x22563e0, (=0x668)
	bl      0x2254424
	ldr     r0, [r4, #0x48]
	mov     r1, #0x2
	bl      Function_2256640
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_22563da: @ 22563da :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x22563e0

.word 0x668 @ 0x22563e0
.thumb
Function_22563e4: @ 22563e4 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x4c]
	mov     r5, r1
	mov     r4, r2
	bl      0x225450c
	cmp     r0, #0x0
	bne     branch_2256424
	mov     r0, r5
	mov     r1, r4
	bl      Function_20227c0
	cmp     r0, #0x0
	beq     branch_2256424
	ldr     r0, [r5, #0x0]
	sub     r0, #0x18
	cmp     r0, #0xb0
	bcs     branch_225640c
	mov     r1, #0x1
	b       branch_225640e
@ 0x225640c

.thumb
branch_225640c: @ 225640c :thumb
	mov     r1, #0x0
.thumb
branch_225640e: @ 225640e :thumb
	ldr     r0, [r4, #0x0]
	sub     r0, #0x18
	cmp     r0, #0x90
	bcs     branch_225641a
	mov     r0, #0x1
	b       branch_225641c
@ 0x225641a

.thumb
branch_225641a: @ 225641a :thumb
	mov     r0, #0x0
.thumb
branch_225641c: @ 225641c :thumb
	tst     r0, r1
	beq     branch_2256424
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2256424

.thumb
branch_2256424: @ 2256424 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2256428

.thumb
Function_2256428: @ 2256428 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [r5, #0x4c]
	mov     r7, r1
	str     r2, [sp, #0x0]
	bl      0x225453c
	mov     r1, #0x8
	bl      Function_203f478
	str     r0, [sp, #0x4]
	add     r4, r5, #0x4
	mov     r1, #0x0
	str     r1, [r4, #0x8]
	ldr     r0, [sp, #0x0]
	str     r7, [r5, #0x4]
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	str     r1, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_22564e6
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0xff
	beq     branch_22564e0
	mov     r6, r4
	ldr     r5, [sp, #0x4]
	add     r6, #0xc
.thumb
branch_2256460: @ 2256460 :thumb
	ldrh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x2]
	add     r2, sp, #0xc
	add     r3, sp, #0x8
	bl      Function_22564f0
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	sub     r0, r1, r0
	ldr     r1, [sp, #0xc]
	sub     r1, r1, r7
	mov     r2, r1
	mul     r2, r1
	mov     r1, r0
	mul     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #12
	blx     FX_Sqrt
	ldrb    r1, [r5, #0x4]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x60] @ 0x22564ec, (=0x2256a28)
	ldr     r1, [r1, r2]
	cmp     r0, r1
	bgt     branch_22564c6
	ldr     r1, [r4, #0xc]
	cmp     r1, #0x8
	bcs     branch_22564d8
	mov     r2, #0x6
	mul     r2, r1
	ldr     r0, [sp, #0xc]
	add     r1, r4, r2
	strh    r0, [r1, #0x10]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x6
	mul     r1, r2
	ldr     r0, [sp, #0x8]
	add     r1, r4, r1
	strh    r0, [r1, #0x12]
	ldr     r2, [r4, #0xc]
	mov     r1, #0x6
	mul     r1, r2
	ldrb    r0, [r5, #0x4]
	add     r1, r4, r1
	strh    r0, [r1, #0x14]
	ldr     r0, [r6, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r6, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x8]
	b       branch_22564d8
@ 0x22564c6

.thumb
branch_22564c6: @ 22564c6 :thumb
	mov     r1, #0x3
	lsl     r1, r1, #16
	cmp     r0, r1
	bgt     branch_22564d8
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	bne     branch_22564d8
	mov     r0, #0x1
	str     r0, [r4, #0x8]
.thumb
branch_22564d8: @ 22564d8 :thumb
	.hword  0x1dad @ add r5, r5, #0x6
	ldrb    r0, [r5, #0x4]
	cmp     r0, #0xff
	bne     branch_2256460
.thumb
branch_22564e0: @ 22564e0 :thumb
	ldr     r0, [sp, #0x4]
	bl      free
.thumb
branch_22564e6: @ 22564e6 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22564ea


.align 2


.word 0x2256a28 @ 0x22564ec
.thumb
Function_22564f0: @ 22564f0 :thumb
	push    {r4,r5}
	.hword  0x1fc4 @ sub r4, r0, #0x7
	mov     r0, #0xb
	mov     r5, r4
	mul     r5, r0
	.hword  0x1fc9 @ sub r1, r1, #0x7
	add     r5, #0x70
	mul     r0, r1
	str     r5, [r2, #0x0]
	add     r0, #0x65
	str     r0, [r3, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x225650a


.align 2, 0


.thumb
Function_225650c: @ 225650c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_225651c
	cmp     r0, #0x1
	beq     branch_225652c
	b       branch_225653a
@ 0x225651c

.thumb
branch_225651c: @ 225651c :thumb
	ldr     r0, [r4, #0x48]
	mov     r1, #0x1
	bl      Function_2256640
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225653a
@ 0x225652c

.thumb
branch_225652c: @ 225652c :thumb
	ldr     r0, [r4, #0x48]
	bl      Function_2256670
	cmp     r0, #0x0
	beq     branch_225653a
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225653a

.thumb
branch_225653a: @ 225653a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225653e


.align 2, 0


.thumb
Function_2256540: @ 2256540 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x90
	bl      malloc
	mov     r4, r0
	beq     branch_2256584
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r6, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	bl      0x2254664
	str     r0, [r4, #0x30]
	mov     r1, #0x0
	str     r1, [r4, #0x34]
	mov     r2, r4
	mov     r0, r1
.thumb
branch_2256574: @ 2256574 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r0, [r2, #0x38]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r1, #0x8
	blt     branch_2256574
	str     r4, [r5, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256584

.thumb
branch_2256584: @ 2256584 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256588

.thumb
Function_2256588: @ 2256588 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r0, #0x58
	mov     r1, #0xc
	mov     r2, #0x28
	mov     r3, #0x29
	bl      0x2255958
	cmp     r0, #0x0
	beq     branch_22565f4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x2a
	bl      Function_2006ec0
	mov     r2, r6
	ldr     r0, [r6, #0x30]
	ldr     r1, [pc, #0x3c] @ 0x22565fc, (=0x2256a40)
	add     r2, #0x58
	bl      0x2255810
	mov     r1, #0x1
	str     r0, [r6, #0x34]
	bl      0x2255914
	mov     r7, r6
	mov     r4, #0x0
	mov     r5, r6
	add     r7, #0x58
.thumb
branch_22565d4: @ 22565d4 :thumb
	ldr     r0, [r6, #0x30]
	ldr     r1, [pc, #0x28] @ 0x2256600, (=0x2256a50)
	mov     r2, r7
	bl      0x2255810
	mov     r1, #0x1
	str     r0, [r5, #0x38]
	bl      0x2255914
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_22565d4
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22565f4

.thumb
branch_22565f4: @ 22565f4 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22565fa


.align 2


.word 0x2256a40 @ 0x22565fc
.word 0x2256a50 @ 0x2256600
.thumb
Function_2256604: @ 2256604 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	beq     branch_225663c
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225660e: @ 225660e :thumb
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x0
	beq     branch_225661a
	ldr     r0, [r6, #0x30]
	bl      0x22558b0
.thumb
branch_225661a: @ 225661a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_225660e
	ldr     r1, [r6, #0x34]
	cmp     r1, #0x0
	beq     branch_225662e
	ldr     r0, [r6, #0x30]
	bl      0x22558b0
.thumb
branch_225662e: @ 225662e :thumb
	mov     r0, r6
	add     r0, #0x58
	bl      0x22559b0
	mov     r0, r6
	bl      free
.thumb
branch_225663c: @ 225663c :thumb
	pop     {r4-r6,pc}
@ 0x225663e


.align 2, 0


.thumb
Function_2256640: @ 2256640 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256660, (=0x2256a7c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x225665e


.align 2


.word 0x2256a7c @ 0x2256660
.thumb
Function_2256664: @ 2256664 :thumb
	ldr     r3, [pc, #0x4] @ 0x225666c, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x225666a


.align 2


.word 0x2255131 @ 0x225666c
.thumb
Function_2256670: @ 2256670 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256678, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x2256676


.align 2


.word 0x2255155 @ 0x2256678
.thumb
Function_225667c: @ 225667c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x225668e


.align 2, 0


.thumb
Function_2256690: @ 2256690 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xc4] @ 0x2256768, (=0x2256a60)
	mov     r1, #0x6
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x27
	mov     r3, #0x6
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x26
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r0, r4
	add     r0, #0x70
	bl      0x2254728
	mov     r0, r4
	add     r0, #0x80
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x72
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x70
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, r4
	mov     r1, #0x1a
	add     r0, #0x70
	lsl     r1, r1, #4
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	mov     r0, r4
	add     r0, #0x8e
	ldrh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x72
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x70
	mov     r1, #0x20
	blx     DC_FlushRange
	mov     r0, r4
	mov     r1, #0x7
	add     r0, #0x70
	lsl     r1, r1, #6
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x2c] @ 0x225676c, (=0x4001000)
	ldr     r0, [pc, #0x2c] @ 0x2256770, (=0xffffe0ff)
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
	bl      Function_2256588
	mov     r0, r5
	bl      Function_225667c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256768

.word 0x2256a60 @ 0x2256768
.word 0x4001000 @ 0x225676c
.word 0xffffe0ff @ 0x2256770
.thumb
Function_2256774: @ 2256774 :thumb
	push    {r4,lr}
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	ldr     r0, [r0, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r4
	bl      Function_225667c
	pop     {r4,pc}
@ 0x225678e


.align 2, 0


.thumb
Function_2256790: @ 2256790 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      0x225523c
	mov     r6, r0
	mov     r0, r5
	bl      0x2255240
	mov     r7, r0
	mov     r0, r5
	bl      0x2255244
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	bne     branch_22567c0
	mov     r0, #0x1
	str     r0, [r6, #0x6c]
	ldr     r0, [r7, #0x8]
	str     r0, [r4, #0x0]
.thumb
branch_22567c0: @ 22567c0 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	lsl     r3, r2, #2
	ldr     r2, [pc, #0x8] @ 0x22567d0, (=0x2256a34)
	mov     r1, r5
	ldr     r2, [r2, r3]
	blx     r2
	pop     {r3-r7,pc}
@ 0x22567d0

.word 0x2256a34 @ 0x22567d0
.thumb
Function_22567d4: @ 22567d4 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_22567f8
	cmp     r0, #0x1
	beq     branch_225681e
	pop     {r4-r6,pc}
@ 0x22567f8

.thumb
branch_22567f8: @ 22567f8 :thumb
	ldr     r1, [r6, #0x0]
	ldr     r2, [r6, #0x4]
	ldr     r0, [r4, #0x34]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x225681e

.thumb
branch_225681e: @ 225681e :thumb
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	bne     branch_2256832
	mov     r0, r4
	bl      Function_22569e8
	mov     r0, r5
	bl      Function_225667c
	pop     {r4-r6,pc}
@ 0x2256832

.thumb
branch_2256832: @ 2256832 :thumb
	ldr     r0, [r4, #0x34]
	bl      0x22558e0
	cmp     r0, #0x0
	beq     branch_2256848
	mov     r0, r4
	bl      Function_22569e8
	mov     r0, r5
	bl      Function_225667c
.thumb
branch_2256848: @ 2256848 :thumb
	pop     {r4-r6,pc}
@ 0x225684a


.align 2, 0


.thumb
Function_225684c: @ 225684c :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	mov     r0, r6
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256870
	cmp     r0, #0x1
	beq     branch_2256896
	pop     {r4-r6,pc}
@ 0x2256870

.thumb
branch_2256870: @ 2256870 :thumb
	ldr     r1, [r4, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r5, #0x34]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	mov     r0, r6
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256896

.thumb
branch_2256896: @ 2256896 :thumb
	ldr     r0, [r5, #0x6c]
	cmp     r0, #0x0
	bne     branch_22568aa
	mov     r0, r5
	bl      Function_22569e8
	mov     r0, r6
	bl      Function_225667c
	pop     {r4-r6,pc}
@ 0x22568aa

.thumb
branch_22568aa: @ 22568aa :thumb
	ldr     r0, [r5, #0x34]
	bl      0x22558e0
	cmp     r0, #0x0
	beq     branch_22568bc
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	bl      0x22558c4
.thumb
branch_22568bc: @ 22568bc :thumb
	pop     {r4-r6,pc}
@ 0x22568be


.align 2, 0


.thumb
Function_22568c0: @ 22568c0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_22568e8
	cmp     r0, #0x1
	beq     branch_2256916
	cmp     r0, #0x2
	beq     branch_2256944
	pop     {r4-r6,pc}
@ 0x22568e8

.thumb
branch_22568e8: @ 22568e8 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256974
	ldr     r1, [r6, #0x0]
	ldr     r2, [r6, #0x4]
	ldr     r0, [r4, #0x34]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256916

.thumb
branch_2256916: @ 2256916 :thumb
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	bne     branch_225692a
	mov     r0, r4
	bl      Function_22569e8
	mov     r0, r5
	bl      Function_225667c
	pop     {r4-r6,pc}
@ 0x225692a

.thumb
branch_225692a: @ 225692a :thumb
	ldr     r0, [r4, #0x34]
	bl      0x22558e0
	cmp     r0, #0x0
	beq     branch_2256972
	mov     r0, r4
	mov     r1, r6
	bl      Function_22569a0
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256944

.thumb
branch_2256944: @ 2256944 :thumb
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	bne     branch_2256958
	mov     r0, r4
	bl      Function_22569e8
	mov     r0, r5
	bl      Function_225667c
	pop     {r4-r6,pc}
@ 0x2256958

.thumb
branch_2256958: @ 2256958 :thumb
	mov     r0, r4
	bl      Function_22569dc
	cmp     r0, #0x0
	beq     branch_2256972
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2255254
.thumb
branch_2256972: @ 2256972 :thumb
	pop     {r4-r6,pc}
@ 0x2256974

.thumb
Function_2256974: @ 2256974 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	ldr     r0, [r7, #0xc]
	mov     r6, #0x0
	cmp     r0, #0x0
	bls     branch_225699e
	mov     r4, r7
.thumb
branch_2256984: @ 2256984 :thumb
	ldrh    r1, [r4, #0x10]
	ldrh    r2, [r4, #0x12]
	ldr     r0, [r5, #0x38]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	bl      0x2255900
	ldr     r0, [r7, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	bcc     branch_2256984
.thumb
branch_225699e: @ 225699e :thumb
	pop     {r3-r7,pc}
@ 0x22569a0

.thumb
Function_22569a0: @ 22569a0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r1
	ldr     r0, [r0, #0xc]
	mov     r6, #0x0
	str     r1, [sp, #0x0]
	cmp     r0, #0x0
	bls     branch_22569da
	mov     r4, r1
.thumb
branch_22569b2: @ 22569b2 :thumb
	ldrh    r0, [r4, #0x14]
	add     r7, r0, #0x1
	cmp     r7, #0x3
	bcc     branch_22569bc
	mov     r7, #0x3
.thumb
branch_22569bc: @ 22569bc :thumb
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r5, #0x38]
	mov     r1, r7
	bl      0x22558c4
	ldr     r0, [sp, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	ldr     r0, [r0, #0xc]
	.hword  0x1da4 @ add r4, r4, #0x6
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r0
	bcc     branch_22569b2
.thumb
branch_22569da: @ 22569da :thumb
	pop     {r3-r7,pc}
@ 0x22569dc

.thumb
Function_22569dc: @ 22569dc :thumb
	ldr     r3, [pc, #0x4] @ 0x22569e4, (=0x22558e1)
	ldr     r0, [r0, #0x38]
	bx      r3
@ 0x22569e2


.align 2


.word 0x22558e1 @ 0x22569e4
.thumb
Function_22569e8: @ 22569e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x1
	bl      0x2255914
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_22569f8: @ 22569f8 :thumb
	ldr     r0, [r5, #0x38]
	mov     r1, r6
	bl      0x2255914
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_22569f8
	pop     {r4-r6,pc}
@ 0x2256a0a


.align 2, 0
.thumb
Function_2256a0c: @ 2256a0c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22569e8
	mov     r0, #0x0
	str     r0, [r4, #0x6c]
	pop     {r4,pc}
@ 0x2256a1a


.align 2, 0
Unknown_2256a1c: @ 0x2256a1c
.incbin "./baserom/overlay/overlay_0034.bin", 0x85c, 0x2256ac0 - 0x2256a1c


@end 0x2256ac0




