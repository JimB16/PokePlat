

.section .iwram52, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x225629d)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x225629d @ 0x22561d0



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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256261)
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


.word 0x2256261 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	add     r0, #0x14
	add     r1, r5, #0x4
	bl      Function_2256694
	cmp     r0, #0x0
	beq     branch_2256248
	mov     r1, #0x0
	strb    r1, [r5, #0x0]
	strb    r1, [r5, #0x1]
	mov     r0, r5
	strb    r1, [r5, #0x2]
	add     r0, #0x20
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	str     r4, [r5, #0x18]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2256248

.thumb
branch_2256248: @ 2256248 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225624c

.thumb
Function_225624c: @ 225624c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      Function_22566ec
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225625e


.align 2, 0


.thumb
Function_2256260: @ 2256260 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x6
	bcs     branch_2256294
	mov     r0, r4
	bl      Function_22565ec
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256298, (=0x2256d4c)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256294
	mov     r0, r4
	bl      Function_225624c
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x18]
	bl      0x2254260
.thumb
branch_2256294: @ 2256294 :thumb
	pop     {r3-r5,pc}
@ 0x2256296


.align 2


.word 0x2256d4c @ 0x2256298
.thumb
Function_225629c: @ 225629c :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x22562a2


.align 2, 0


.thumb
Function_22562a4: @ 22562a4 :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_22562ac
	b       branch_22562ae
@ 0x22562ac

.thumb
branch_22562ac: @ 22562ac :thumb
	mov     r1, #0x5
.thumb
branch_22562ae: @ 22562ae :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x22562b6


.align 2, 0


.thumb
Function_22562b8: @ 22562b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22562c8
	cmp     r0, #0x1
	beq     branch_22562d8
	b       branch_22562f2
@ 0x22562c8

.thumb
branch_22562c8: @ 22562c8 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22567a4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22562f2
@ 0x22562d8

.thumb
branch_22562d8: @ 22562d8 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x0
	bl      Function_22567c8
	cmp     r0, #0x0
	beq     branch_22562f2
	ldr     r0, [r4, #0x18]
	bl      0x225424c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562a4
.thumb
branch_22562f2: @ 22562f2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22562f6


.align 2, 0


.thumb
Function_22562f8: @ 22562f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_225630c
	mov     r1, #0x5
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225630c

.thumb
branch_225630c: @ 225630c :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	bne     branch_225635a
	bl      Function_2256554
	cmp     r0, #0x0
	beq     branch_225635a
	mov     r0, r4
	bl      Function_2256684
	cmp     r0, #0x0
	beq     branch_2256354
	ldr     r0, [r4, #0x18]
	bl      0x225453c
	mov     r5, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x3
	bl      Function_22567a4
	ldr     r0, [r5, #0x1c]
	ldr     r0, [r0, #0x0]
	bl      0x203a2c8
	cmp     r0, #0x0
	beq     branch_225634a
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_22562a4
	b       branch_225635a
@ 0x225634a

.thumb
branch_225634a: @ 225634a :thumb
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_22562a4
	b       branch_225635a
@ 0x2256354

.thumb
branch_2256354: @ 2256354 :thumb
	ldr     r0, [pc, #0x8] @ 0x2256360, (=0x66e)
	bl      0x2254424
.thumb
branch_225635a: @ 225635a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x225635e


.align 2


.word 0x66e @ 0x2256360
.thumb
Function_2256364: @ 2256364 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256378
	mov     r1, #0x5
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256378

.thumb
branch_2256378: @ 2256378 :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_2256388
	cmp     r1, #0x1
	beq     branch_2256398
	cmp     r1, #0x2
	beq     branch_22563e0
	b       branch_225642c
@ 0x2256388

.thumb
branch_2256388: @ 2256388 :thumb
	bl      Function_225664c
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225642c
@ 0x2256398

.thumb
branch_2256398: @ 2256398 :thumb
	bl      Function_2256430
	cmp     r0, #0x0
	beq     branch_22563ac
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563ac

.thumb
branch_22563ac: @ 22563ac :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x3c
	bcs     branch_22563b6
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_22563b6: @ 22563b6 :thumb
	mov     r0, r4
	bl      Function_225666c
	cmp     r0, #0x0
	beq     branch_225642c
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x3c
	bcc     branch_225642c
	mov     r0, r4
	bl      Function_225659c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x6
	bl      Function_22567a4
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225642c
@ 0x22563e0

.thumb
branch_22563e0: @ 22563e0 :thumb
	bl      Function_2256430
	cmp     r0, #0x0
	bne     branch_22563f2
	mov     r0, r4
	bl      Function_2256554
	cmp     r0, #0x0
	beq     branch_225640c
.thumb
branch_22563f2: @ 22563f2 :thumb
	mov     r0, r4
	bl      Function_225667c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_22567a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225640c

.thumb
branch_225640c: @ 225640c :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	cmp     r0, #0x1e
	bcc     branch_225642c
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_225659c
	cmp     r0, #0x0
	beq     branch_225642c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x6
	bl      Function_22567a4
.thumb
branch_225642c: @ 225642c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256430

.thumb
Function_2256430: @ 2256430 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	bl      0x225450c
	cmp     r0, #0x0
	beq     branch_2256442
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256442

.thumb
branch_2256442: @ 2256442 :thumb
	ldr     r0, [r4, #0x18]
	bl      0x2254534
	cmp     r0, #0x0
	beq     branch_2256450
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2256450

.thumb
branch_2256450: @ 2256450 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256454

.thumb
Function_2256454: @ 2256454 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_2256468
	mov     r1, #0x5
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256468

.thumb
branch_2256468: @ 2256468 :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_2256478
	cmp     r1, #0x1
	beq     branch_2256482
	cmp     r1, #0x2
	beq     branch_225649c
	b       branch_22564b4
@ 0x2256478

.thumb
branch_2256478: @ 2256478 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_2256482: @ 2256482 :thumb
	ldr     r0, [r4, #0x1c]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	cmp     r0, #0x3c
	bcc     branch_22564b4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x4
	bl      Function_22567a4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22564b4
@ 0x225649c

.thumb
branch_225649c: @ 225649c :thumb
	bl      Function_2256554
	cmp     r0, #0x0
	beq     branch_22564b4
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_22567a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562a4
.thumb
branch_22564b4: @ 22564b4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564b8

.thumb
Function_22564b8: @ 22564b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22564cc
	mov     r1, #0x5
	bl      Function_22562a4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564cc

.thumb
branch_22564cc: @ 22564cc :thumb
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_22564d8
	cmp     r1, #0x1
	beq     branch_22564ec
	b       branch_2256504
@ 0x22564d8

.thumb
branch_22564d8: @ 22564d8 :thumb
	bl      Function_225667c
	ldr     r0, [r4, #0x14]
	mov     r1, #0x5
	bl      Function_22567a4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256504
@ 0x22564ec

.thumb
branch_22564ec: @ 22564ec :thumb
	bl      Function_2256554
	cmp     r0, #0x0
	beq     branch_2256504
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	bl      Function_22567a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22562a4
.thumb
branch_2256504: @ 2256504 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256508

.thumb
Function_2256508: @ 2256508 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x0
	beq     branch_225651c
	cmp     r1, #0x1
	beq     branch_2256526
	cmp     r1, #0x2
	beq     branch_2256540
	b       branch_225654e
@ 0x225651c

.thumb
branch_225651c: @ 225651c :thumb
	bl      Function_225667c
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
.thumb
branch_2256526: @ 2256526 :thumb
	mov     r0, r4
	bl      Function_2256684
	cmp     r0, #0x0
	beq     branch_225654e
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_22567a4
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225654e
@ 0x2256540

.thumb
branch_2256540: @ 2256540 :thumb
	ldr     r0, [r4, #0x14]
	bl      Function_22567d4
	cmp     r0, #0x0
	beq     branch_225654e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x225654e

.thumb
branch_225654e: @ 225654e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256552


.align 2, 0


.thumb
Function_2256554: @ 2256554 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	ldr     r0, [r0, #0x18]
	bl      0x225450c
	cmp     r0, #0x0
	bne     branch_2256594
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	bl      0x20227c0
	cmp     r0, #0x0
	beq     branch_2256594
	ldr     r0, [sp, #0x4]
	sub     r0, #0x10
	cmp     r0, #0xbf
	bcs     branch_225657a
	mov     r1, #0x1
	b       branch_225657c
@ 0x225657a

.thumb
branch_225657a: @ 225657a :thumb
	mov     r1, #0x0
.thumb
branch_225657c: @ 225657c :thumb
	ldr     r0, [sp, #0x0]
	sub     r0, #0x10
	cmp     r0, #0x9f
	bcs     branch_2256588
	mov     r0, #0x1
	b       branch_225658a
@ 0x2256588

.thumb
branch_2256588: @ 2256588 :thumb
	mov     r0, #0x0
.thumb
branch_225658a: @ 225658a :thumb
	tst     r0, r1
	beq     branch_2256594
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2256594

.thumb
branch_2256594: @ 2256594 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3,pc}
@ 0x225659a


.align 2, 0


.thumb
Function_225659c: @ 225659c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r0, #0x0
	ldr     r5, [pc, #0x40] @ 0x22565e8, (=0x2256d64)
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
.thumb
branch_22565aa: @ 22565aa :thumb
	ldr     r0, [r5, #0x4]
	mov     r4, #0x0
	mov     r6, r4
	cmp     r0, #0x0
	bls     branch_22565c6
.thumb
branch_22565b4: @ 22565b4 :thumb
	ldr     r0, [r5, #0x0]
	ldrb    r0, [r0, r4]
	bl      0x2034120
	add     r6, r6, r0
	ldr     r0, [r5, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_22565b4
.thumb
branch_22565c6: @ 22565c6 :thumb
	ldr     r0, [r7, #0x4]
	cmp     r6, r0
	beq     branch_22565d2
	mov     r0, #0x1
	str     r6, [r7, #0x4]
	str     r0, [sp, #0x0]
.thumb
branch_22565d2: @ 22565d2 :thumb
	ldr     r0, [sp, #0x4]
	add     r5, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	bcc     branch_22565aa
	ldr     r0, [sp, #0x0]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22565e6


.align 2


.word 0x2256d64 @ 0x22565e8
.thumb
Function_22565ec: @ 22565ec :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2256648
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2256604

Jumppoints_2256604:
.hword branch_2256648 - Jumppoints_2256604 - 2
.hword branch_225660c - Jumppoints_2256604 - 2
.hword branch_225661c - Jumppoints_2256604 - 2
.hword branch_225663a - Jumppoints_2256604 - 2
.thumb
branch_225660c: @ 225660c :thumb
	bl      0x2037c18
	cmp     r0, #0x0
	beq     branch_2256648
	mov     r0, #0x2
	add     r4, #0x20
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x225661c

.thumb
branch_225661c: @ 225661c :thumb
	mov     r0, r4
	add     r0, #0x21
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256648
	bl      0x2037bfc
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	mov     r0, #0x3
	add     r4, #0x20
	strb    r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x225663a

.thumb
branch_225663a: @ 225663a :thumb
	bl      0x2035e38
	cmp     r0, #0x0
	bne     branch_2256648
	mov     r0, #0x0
	add     r4, #0x20
	strb    r0, [r4, #0x0]
.thumb
branch_2256648: @ 2256648 :thumb
	pop     {r4,pc}
@ 0x225664a


.align 2, 0


.thumb
Function_225664c: @ 225664c :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256668
	ldr     r0, [r4, #0x18]
	bl      0x2254544
	bl      0x2037bc0
	mov     r0, #0x1
	add     r4, #0x20
	strb    r0, [r4, #0x0]
.thumb
branch_2256668: @ 2256668 :thumb
	pop     {r4,pc}
@ 0x225666a


.align 2, 0


.thumb
Function_225666c: @ 225666c :thumb
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2256678
	mov     r0, #0x1
	bx      lr
@ 0x2256678

.thumb
branch_2256678: @ 2256678 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x225667c

.thumb
Function_225667c: @ 225667c :thumb
	mov     r1, #0x1
	add     r0, #0x21
	strb    r1, [r0, #0x0]
	bx      lr
@ 0x2256684

.thumb
Function_2256684: @ 2256684 :thumb
	add     r0, #0x20
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256690
	mov     r0, #0x1
	bx      lr
@ 0x2256690

.thumb
branch_2256690: @ 2256690 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256694

.thumb
Function_2256694: @ 2256694 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x60
	bl      malloc
	mov     r4, r0
	beq     branch_22566e2
	add     r0, #0x8
	mov     r1, #0x4
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x30]
	ldr     r2, [pc, #0x28] @ 0x22566e8, (=0x1cd)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x8
	bl      Function_200b144
	str     r0, [r4, #0x58]
	mov     r0, #0x60
	mov     r1, #0x8
	bl      Function_2023790
	str     r0, [r4, #0x5c]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225670c
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22566e2

.thumb
branch_22566e2: @ 22566e2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22566e6


.align 2


.word 0x1cd @ 0x22566e8
.thumb
Function_22566ec: @ 22566ec :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_225670a
	ldr     r0, [r4, #0x5c]
	bl      Function_20237bc
	ldr     r0, [r4, #0x58]
	bl      Function_200b190
	mov     r0, r4
	bl      Function_225677c
	mov     r0, r4
	bl      free
.thumb
branch_225670a: @ 225670a :thumb
	pop     {r4,pc}
@ 0x225670c

.thumb
Function_225670c: @ 225670c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r6, r0
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x63
	bl      0x2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r6
	add     r0, #0x44
	mov     r1, #0xc
	mov     r2, #0x61
	mov     r3, #0x62
	bl      0x2255958
	mov     r0, r6
	str     r0, [sp, #0xc]
	add     r0, #0x44
	ldr     r4, [pc, #0x38] @ 0x2256778, (=0x2256da4)
	mov     r7, #0x0
	mov     r5, r6
	str     r0, [sp, #0xc]
.thumb
branch_2256746: @ 2256746 :thumb
	ldr     r0, [r6, #0x30]
	ldr     r2, [sp, #0xc]
	mov     r1, r4
	bl      0x2255810
	str     r0, [r5, #0x34]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_2256746
	ldr     r0, [r6, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r6, #0x3c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r6, #0x40]
	mov     r1, #0x1
	bl      0x2255914
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2256778

.word 0x2256da4 @ 0x2256778
.thumb
Function_225677c: @ 225677c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256784: @ 2256784 :thumb
	ldr     r1, [r5, #0x34]
	cmp     r1, #0x0
	beq     branch_2256790
	ldr     r0, [r6, #0x30]
	bl      0x22558b0
.thumb
branch_2256790: @ 2256790 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2256784
	add     r6, #0x44
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x22567a2


.align 2, 0


.thumb
Function_22567a4: @ 22567a4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x22567c4, (=0x2256de4)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x22567c2


.align 2


.word 0x2256de4 @ 0x22567c4
.thumb
Function_22567c8: @ 22567c8 :thumb
	ldr     r3, [pc, #0x4] @ 0x22567d0, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x22567ce


.align 2


.word 0x2255131 @ 0x22567d0
.thumb
Function_22567d4: @ 22567d4 :thumb
	ldr     r3, [pc, #0x4] @ 0x22567dc, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x22567da


.align 2


.word 0x2255155 @ 0x22567dc
.thumb
Function_22567e0: @ 22567e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x22567f2


.align 2, 0


.thumb
Function_22567f4: @ 22567f4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0xa0] @ 0x22568a8, (=0x2256d88)
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
	mov     r1, #0x60
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
	mov     r1, #0x5f
	mov     r3, #0x6
	bl      0x2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	mov     r3, #0x2
	mov     r1, r5
	str     r3, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x14
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	lsl     r0, r4, #11
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	add     r1, #0x20
	mov     r2, #0x6
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x20
	bl      0x201a9f4
	mov     r0, r5
	bl      Function_2256a7c
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      0x2019448
	ldr     r1, [pc, #0x24] @ 0x22568ac, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x22568b0, (=0xffffe0ff)
	ldr     r3, [r1, #0x0]
	ldr     r2, [r1, #0x0]
	str     r3, [sp, #0x14]
	and     r0, r2
	lsl     r2, r3, #19
	lsr     r3, r2, #27
	mov     r2, #0x4
	orr     r2, r3
	lsl     r2, r2, #8
	orr     r0, r2
	str     r0, [r1, #0x0]
	mov     r0, r6
	bl      Function_22567e0
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22568a8

.word 0x2256d88 @ 0x22568a8
.word 0x4001000 @ 0x22568ac
.word 0xffffe0ff @ 0x22568b0
.thumb
Function_22568b4: @ 22568b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	add     r0, #0x20
	bl      Function_201a8fc
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      0x2019044
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x22568d6


.align 2, 0


.thumb
Function_22568d8: @ 22568d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2255914
	mov     r0, r4
	bl      Function_2256a7c
	ldr     r0, [pc, #0xc] @ 0x2256918, (=0x663)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x2256918

.word 0x663 @ 0x2256918
.thumb
Function_225691c: @ 225691c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	mov     r0, r4
	bl      Function_2256b10
	ldr     r0, [pc, #0xc] @ 0x2256964, (=0x663)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x2256964

.word 0x663 @ 0x2256964
.thumb
Function_2256968: @ 2256968 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x2
	bl      0x22558c4
	mov     r0, r4
	bl      Function_2256b64
	ldr     r0, [pc, #0xc] @ 0x22569b0, (=0x66e)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x22569b0

.word 0x66e @ 0x22569b0
.thumb
Function_22569b4: @ 22569b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x2
	bl      0x22558c4
	mov     r0, r4
	bl      Function_2256bdc
	ldr     r0, [pc, #0xc] @ 0x22569fc, (=0x66e)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x22569fc

.word 0x66e @ 0x22569fc
.thumb
Function_2256a00: @ 2256a00 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r6, r0
	ldr     r0, [r4, #0x34]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x40]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256c64
	ldr     r0, [pc, #0xc] @ 0x2256a54, (=0x663)
	bl      0x2254424
	mov     r0, r5
	bl      Function_22567e0
	pop     {r4-r6,pc}
@ 0x2256a52


.align 2


.word 0x663 @ 0x2256a54
.thumb
Function_2256a58: @ 2256a58 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_2256c64
	mov     r0, r5
	bl      Function_22567e0
	pop     {r3-r5,pc}
@ 0x2256a7a


.align 2, 0


.thumb
Function_2256a7c: @ 2256a7c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	add     r0, #0x20
	mov     r1, #0x4
	bl      Function_201ada4
	ldr     r0, [r5, #0x58]
	ldr     r2, [r5, #0x5c]
	mov     r1, #0x0
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r5, #0x5c]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x2256b0c, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	ldr     r0, [r5, #0x58]
	ldr     r2, [r5, #0x5c]
	mov     r1, #0xa
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r5, #0x5c]
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r4, r0, #1
	ldr     r0, [r5, #0x5c]
	mov     r6, #0x40
	bl      0x2023c5c
	lsl     r0, r0, #3
	sub     r0, r6, r0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x2256b0c, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x20
	mov     r3, r4
	bl      0x201d78c
	add     r5, #0x20
	mov     r0, r5
	bl      0x201accc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2256b0a


.align 2


.word 0x10804 @ 0x2256b0c
.thumb
Function_2256b10: @ 2256b10 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0x20
	mov     r1, #0x4
	bl      Function_201ada4
	ldr     r0, [r4, #0x58]
	ldr     r2, [r4, #0x5c]
	mov     r1, #0x1
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r4, #0x5c]
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2256b60, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	add     r4, #0x20
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2256b5e


.align 2


.word 0x10804 @ 0x2256b60
.thumb
Function_2256b64: @ 2256b64 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0x20
	mov     r1, #0x4
	bl      Function_201ada4
	ldr     r0, [r4, #0x58]
	ldr     r2, [r4, #0x5c]
	mov     r1, #0x2
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r4, #0x5c]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x2256bd8, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	ldr     r0, [r4, #0x58]
	ldr     r2, [r4, #0x5c]
	mov     r1, #0x3
	bl      Function_200b1b8
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2256bd8, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x20
	mov     r3, #0x10
	bl      0x201d78c
	add     r4, #0x20
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2256bd8

.word 0x10804 @ 0x2256bd8
.thumb
Function_2256bdc: @ 2256bdc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	add     r0, #0x20
	mov     r1, #0x4
	bl      Function_201ada4
	ldr     r0, [r4, #0x58]
	ldr     r2, [r4, #0x5c]
	mov     r1, #0x2
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r4, #0x5c]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x50] @ 0x2256c60, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	ldr     r0, [r4, #0x58]
	ldr     r2, [r4, #0x5c]
	mov     r1, #0x4
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r4, #0x5c]
	mov     r2, r0
	bl      0x2002eb4
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x2256c60, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r4
	ldr     r2, [r4, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	add     r4, #0x20
	mov     r0, r4
	bl      0x201accc
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2256c5e


.align 2


.word 0x10804 @ 0x2256c60
.thumb
Function_2256c64: @ 2256c64 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r1
	add     r0, #0x20
	mov     r1, #0x4
	bl      Function_201ada4
	ldr     r0, [r5, #0x58]
	ldr     r2, [r5, #0x5c]
	mov     r1, #0x5
	bl      Function_200b1b8
	mov     r0, #0x0
	ldr     r1, [r5, #0x5c]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xc0
	sub     r0, r1, r0
	lsr     r3, r0, #1
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x8c] @ 0x2256d24, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r2, [r5, #0x5c]
	add     r0, #0x20
	bl      0x201d78c
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0x20
	ldr     r6, [pc, #0x74] @ 0x2256d28, (=0x2256d84)
	mov     r4, #0x20
	str     r0, [sp, #0x14]
.thumb
branch_2256cb8: @ 2256cb8 :thumb
	ldrb    r1, [r6, #0x0]
	ldr     r0, [r5, #0x58]
	ldr     r2, [r5, #0x5c]
	bl      Function_200b1b8
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2256d24, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	ldr     r2, [r5, #0x5c]
	mov     r3, #0x8
	bl      0x201d78c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r2, #0x2
	ldr     r0, [r5, #0x5c]
	ldr     r1, [r7, #0x0]
	mov     r3, r2
	bl      0x20238a0
	str     r4, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2256d24, (=0x10804)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x14]
	ldr     r2, [r5, #0x5c]
	mov     r3, #0xa0
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r4, #0x10
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x10]
	cmp     r0, #0x4
	blt     branch_2256cb8
	add     r5, #0x20
	mov     r0, r5
	bl      0x201accc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2256d22

.align 2
.word 0x10804 @ 0x2256d24
.word 0x2256d84 @ 0x2256d28
@ 0x2256d2c



.incbin "./baserom/overlay/overlay_0052.bin", 0xb6c, 0x2256e60 - 0x2256d2c


@end 0x2256e60




