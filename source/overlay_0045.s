

.section .iwram45, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256355)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256355 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x34
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256319)
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


.word 0x2256319 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	bl      0x2254540
	str     r0, [r5, #0x10]
	bl      Function_20568d8
	strb    r0, [r5, #0x3]
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0x8
	add     r2, sp, #0x4
	bl      Function_20568e0
	ldr     r0, [sp, #0x8]
	strb    r0, [r5, #0x6]
	ldr     r0, [sp, #0x4]
	strb    r0, [r5, #0x7]
	add     r0, r5, #0x3
	bl      Function_22562c0
	mov     r0, r5
	add     r0, #0x8
	add     r1, r5, #0x3
	mov     r2, r6
	bl      Function_22566ec
	cmp     r0, #0x0
	beq     branch_22562b0
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x22562b8, (=0x2256cac)
	ldr     r2, [pc, #0x50] @ 0x22562bc, (=0x2256311)
	mov     r1, #0x6
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x14]
	mov     r1, #0x2
	mov     r2, #0x4
	bl      0x2255c5c
	ldr     r0, [r5, #0x14]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      0x2255c5c
	mov     r1, #0x4
	ldr     r0, [r5, #0x14]
	mov     r2, r1
	bl      0x2255c5c
	ldr     r0, [r5, #0x14]
	mov     r1, #0x5
	mov     r2, #0x4
	bl      0x2255c5c
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	str     r0, [r5, #0x30]
	add     sp, #0xc
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x22562b0

.thumb
branch_22562b0: @ 22562b0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22562b6


.align 2


.word 0x2256cac @ 0x22562b8
.word Function_2256310+1 @ =0x2256311, 0x22562bc
.thumb
Function_22562c0: @ 22562c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	add     r0, sp, #0x0
	bl      Function_2013880
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x18
	bcc     branch_22562da
	mov     r1, #0x18
	blx     _u32_div_f
	str     r1, [sp, #0x0]
.thumb
branch_22562da: @ 22562da :thumb
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x3c
	bcc     branch_22562ea
	ldr     r0, [sp, #0x0]
	mov     r1, #0x3c
	blx     _u32_div_f
	str     r1, [sp, #0x0]
.thumb
branch_22562ea: @ 22562ea :thumb
	ldr     r0, [sp, #0x0]
	strb    r0, [r4, #0x1]
	ldr     r0, [sp, #0x4]
	strb    r0, [r4, #0x2]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22562f6


.align 2, 0


.thumb
Function_22562f8: @ 22562f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	bl      0x2255b34
	ldr     r0, [r4, #0x8]
	bl      Function_2256728
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x2256310

.thumb
Function_2256310: @ 2256310 :thumb
	str     r0, [r3, #0x18]
	str     r1, [r3, #0x1c]
	bx      lr
@ 0x2256316


.align 2, 0


.thumb
Function_2256318: @ 2256318 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x5
	bcs     branch_225634e
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x14]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256350, (=Unknown_2256c98)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225634e
	mov     r0, r4
	bl      Function_22562f8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
branch_225634e: @ 225634e :thumb
	pop     {r3-r5,pc}
@ 0x2256350

.word Unknown_2256c98 @ 0x2256350



.thumb
Function_2256354: @ 2256354 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	bx      lr
@ 0x225635a


.align 2, 0
.thumb
Function_225635c: @ 225635c :thumb
	ldrb    r2, [r0, #0x2]
	cmp     r2, #0x0
	bne     branch_2256364
	b       branch_2256366
@ 0x2256364

.thumb
branch_2256364: @ 2256364 :thumb
	mov     r1, #0x4
.thumb
branch_2256366: @ 2256366 :thumb
	strb    r1, [r0, #0x0]
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
@ 0x225636e


.align 2, 0


.thumb
Function_2256370: @ 2256370 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256380
	cmp     r0, #0x1
	beq     branch_2256390
	b       branch_22563ba
@ 0x2256380

.thumb
branch_2256380: @ 2256380 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256918
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ba
@ 0x2256390

.thumb
branch_2256390: @ 2256390 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_225693c
	cmp     r0, #0x0
	beq     branch_22563ba
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x0
	beq     branch_22563b2
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_225635c
	b       branch_22563ba
@ 0x22563b2

.thumb
branch_22563b2: @ 22563b2 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225635c
.thumb
branch_22563ba: @ 22563ba :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563be


.align 2, 0


.thumb
Function_22563c0: @ 22563c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22563d4
	mov     r1, #0x4
	bl      Function_225635c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22563d4

.thumb
branch_22563d4: @ 22563d4 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22563e0
	cmp     r0, #0x1
	beq     branch_22564b2
	b       branch_22564c6
@ 0x22563e0

.thumb
branch_22563e0: @ 22563e0 :thumb
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x1
	bne     branch_225641a
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_225641a
	mov     r0, #0x1
	strb    r0, [r4, #0x3]
	add     r0, r4, #0x3
	bl      Function_22562c0
	mov     r2, #0x6
	mov     r3, #0x7
	ldsb    r2, [r4, r2]
	ldsb    r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      Function_20568f4
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256918
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22564c6
@ 0x225641a

.thumb
branch_225641a: @ 225641a :thumb
	cmp     r1, #0x1
	bne     branch_2256430
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_2256430
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0xa0] @ 0x22564cc, (=0x66e)
	bl      0x2254424
	b       branch_22564c6
@ 0x2256430

.thumb
branch_2256430: @ 2256430 :thumb
	cmp     r1, #0x1
	beq     branch_2256438
	cmp     r1, #0x7
	bne     branch_22564c6
.thumb
branch_2256438: @ 2256438 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x5
	bhi     branch_22564a4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x225644a

Jumppoints_225644a:
.hword branch_22564a4 - Jumppoints_225644a - 2
.hword branch_22564a4 - Jumppoints_225644a - 2
.hword branch_2256456 - Jumppoints_225644a - 2
.hword branch_225646a - Jumppoints_225644a - 2
.hword branch_225647e - Jumppoints_225644a - 2
.hword branch_2256492 - Jumppoints_225644a - 2
.thumb
branch_2256456: @ 2256456 :thumb
	mov     r0, #0x6
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x6]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x17
	ble     branch_22564a4
	mov     r0, #0x0
	strb    r0, [r4, #0x6]
	b       branch_22564a4
@ 0x225646a

.thumb
branch_225646a: @ 225646a :thumb
	mov     r0, #0x6
	ldsb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x6]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_22564a4
	mov     r0, #0x17
	strb    r0, [r4, #0x6]
	b       branch_22564a4
@ 0x225647e

.thumb
branch_225647e: @ 225647e :thumb
	mov     r0, #0x7
	ldsb    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x3b
	ble     branch_22564a4
	mov     r0, #0x0
	strb    r0, [r4, #0x7]
	b       branch_22564a4
@ 0x2256492

.thumb
branch_2256492: @ 2256492 :thumb
	mov     r0, #0x7
	ldsb    r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r4, #0x7]
	ldsb    r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_22564a4
	mov     r0, #0x3b
	strb    r0, [r4, #0x7]
.thumb
branch_22564a4: @ 22564a4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256918
	b       branch_22564c6
@ 0x22564b2

.thumb
branch_22564b2: @ 22564b2 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_225693c
	cmp     r0, #0x0
	beq     branch_22564c6
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_225635c
.thumb
branch_22564c6: @ 22564c6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564ca


.align 2


.word 0x66e @ 0x22564cc
.thumb
Function_22564d0: @ 22564d0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22564e8
	mov     r1, #0x4
	bl      Function_225635c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564e8

.thumb
branch_22564e8: @ 22564e8 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22564f4
	cmp     r0, #0x1
	beq     branch_2256582
	b       branch_2256592
@ 0x22564f4

.thumb
branch_22564f4: @ 22564f4 :thumb
	add     r0, r4, #0x3
	bl      Function_22566cc
	cmp     r0, #0x0
	beq     branch_225650c
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_225635c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225650c

.thumb
branch_225650c: @ 225650c :thumb
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x1
	bne     branch_2256532
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_2256532
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      Function_2256918
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225635c
	b       branch_2256592
@ 0x2256532

.thumb
branch_2256532: @ 2256532 :thumb
	cmp     r1, #0x1
	bne     branch_2256544
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_2256544
	ldr     r0, [pc, #0x58] @ 0x2256598, (=0x66e)
	bl      0x2254424
	b       branch_2256592
@ 0x2256544

.thumb
branch_2256544: @ 2256544 :thumb
	mov     r0, r4
	bl      Function_2256664
	cmp     r0, #0x0
	bne     branch_2256554
	mov     r0, r4
	bl      Function_2256668
.thumb
branch_2256554: @ 2256554 :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2256680
	cmp     r0, #0x0
	beq     branch_2256592
	mov     r0, #0x5
	ldsb    r0, [r4, r0]
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	beq     branch_2256592
	strb    r1, [r4, #0x5]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	strb    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2256918
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256592
@ 0x2256582

.thumb
branch_2256582: @ 2256582 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_225693c
	cmp     r0, #0x0
	beq     branch_2256592
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_2256592: @ 2256592 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2256598

.word 0x66e @ 0x2256598
.thumb
Function_225659c: @ 225659c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0x2]
	cmp     r1, #0x0
	beq     branch_22565b4
	mov     r1, #0x4
	bl      Function_225635c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22565b4

.thumb
branch_22565b4: @ 22565b4 :thumb
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22565c0
	cmp     r0, #0x1
	beq     branch_22565d0
	b       branch_225665c
@ 0x22565c0

.thumb
branch_22565c0: @ 22565c0 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256918
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_225665c
@ 0x22565d0

.thumb
branch_22565d0: @ 22565d0 :thumb
	add     r0, r4, #0x3
	bl      Function_22566cc
	cmp     r0, #0x0
	bne     branch_22565f6
	ldr     r0, [r4, #0x8]
	bl      Function_2256c90
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256918
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_225635c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22565f6

.thumb
branch_22565f6: @ 22565f6 :thumb
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x1
	bne     branch_2256626
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_2256626
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
	ldr     r0, [r4, #0x8]
	bl      Function_2256c90
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      Function_2256918
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_225635c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256626

.thumb
branch_2256626: @ 2256626 :thumb
	mov     r0, r4
	bl      Function_2256664
	cmp     r0, #0x0
	bne     branch_2256636
	mov     r0, r4
	bl      Function_2256668
.thumb
branch_2256636: @ 2256636 :thumb
	mov     r0, r4
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_2256680
	cmp     r0, #0x0
	beq     branch_225665c
	mov     r0, #0x5
	ldsb    r0, [r4, r0]
	ldr     r1, [sp, #0x0]
	cmp     r1, r0
	beq     branch_225665c
	strb    r1, [r4, #0x5]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x4
	strb    r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      Function_2256918
.thumb
branch_225665c: @ 225665c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2256662


.align 2, 0


.thumb
Function_2256664: @ 2256664 :thumb
	ldr     r0, [r0, #0x2c]
	bx      lr
@ 0x2256668

.thumb
Function_2256668: @ 2256668 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	cmp     r0, #0x0
	bne     branch_225667e
	mov     r0, r4
	add     r0, #0x20
	bl      Function_2013880
	mov     r0, #0x1
	str     r0, [r4, #0x30]
.thumb
branch_225667e: @ 225667e :thumb
	pop     {r4,pc}
@ 0x2256680

.thumb
Function_2256680: @ 2256680 :thumb
	ldr     r3, [r0, #0x30]
	cmp     r3, #0x0
	beq     branch_2256692
	ldr     r3, [r0, #0x20]
	str     r3, [r1, #0x0]
	ldr     r0, [r0, #0x24]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	bx      lr
@ 0x2256692

.thumb
branch_2256692: @ 2256692 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256696


.align 2, 0


.thumb
Function_2256698: @ 2256698 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22566a8
	cmp     r0, #0x1
	beq     branch_22566b8
	b       branch_22566c6
@ 0x22566a8

.thumb
branch_22566a8: @ 22566a8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2256918
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22566c6
@ 0x22566b8

.thumb
branch_22566b8: @ 22566b8 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2256948
	cmp     r0, #0x0
	beq     branch_22566c6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22566c6

.thumb
branch_22566c6: @ 22566c6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22566ca


.align 2, 0


.thumb
Function_22566cc: @ 22566cc :thumb
	mov     r1, #0x1
	mov     r2, #0x3
	ldsb    r3, [r0, r1]
	ldsb    r2, [r0, r2]
	cmp     r3, r2
	bne     branch_22566e4
	mov     r2, #0x2
	ldsb    r3, [r0, r2]
	mov     r2, #0x4
	ldsb    r0, [r0, r2]
	cmp     r3, r0
	beq     branch_22566e6
.thumb
branch_22566e4: @ 22566e4 :thumb
	mov     r1, #0x0
.thumb
branch_22566e6: @ 22566e6 :thumb
	mov     r0, r1
	bx      lr
@ 0x22566ea


.align 2, 0


.thumb
Function_22566ec: @ 22566ec :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x9c
	bl      malloc
	mov     r4, r0
	beq     branch_2256722
	add     r0, #0x8
	mov     r1, #0x8
	bl      0x2255090
	str     r5, [r4, #0x0]
	bl      0x2254674
	str     r0, [r4, #0x4]
	bl      0x2254664
	str     r0, [r4, #0x30]
	mov     r0, r4
	mov     r1, r5
	bl      Function_225673c
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256722

.thumb
branch_2256722: @ 2256722 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256726


.align 2, 0


.thumb
Function_2256728: @ 2256728 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256738
	bl      Function_2256864
	mov     r0, r4
	bl      free
.thumb
branch_2256738: @ 2256738 :thumb
	pop     {r4,pc}
@ 0x225673a


.align 2, 0


.thumb
Function_225673c: @ 225673c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	mov     r5, r0
	str     r1, [sp, #0xc]
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x2
	bl      Function_2006ec0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0xa
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x4f
	lsl     r3, r3, #8
	bl      Function_2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x68
	mov     r1, #0xc
	mov     r2, #0x4d
	mov     r3, #0x4e
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x7c
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      0x2255958
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0x68
	str     r0, [sp, #0x14]
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x7c
	ldr     r7, [pc, #0xbc] @ 0x2256860, (=0x2256d34)
	mov     r4, #0x0
	mov     r6, r5
	str     r0, [sp, #0x10]
.thumb
branch_22567aa: @ 22567aa :thumb
	cmp     r4, #0x9
	blt     branch_22567c0
	cmp     r4, #0xc
	bgt     branch_22567c0
	ldr     r0, [r5, #0x30]
	ldr     r2, [sp, #0x10]
	mov     r1, r7
	bl      0x2255810
	str     r0, [r6, #0x34]
	b       branch_22567d2
@ 0x22567c0

.thumb
branch_22567c0: @ 22567c0 :thumb
	ldr     r0, [r5, #0x30]
	ldr     r2, [sp, #0x14]
	mov     r1, r7
	bl      0x2255810
	mov     r1, #0x50
	str     r0, [r6, #0x34]
	bl      0x2255940
.thumb
branch_22567d2: @ 22567d2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x10
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0xd
	blt     branch_22567aa
	ldr     r0, [sp, #0xc]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x34]
	beq     branch_2256832
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r5, #0x40]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x44]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x50]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r1, [sp, #0xc]
	mov     r2, #0x1
	ldsb    r1, [r1, r2]
	ldr     r2, [sp, #0xc]
	mov     r3, #0x2
	ldsb    r2, [r2, r3]
	mov     r0, r5
	bl      Function_2256894
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2256832

.thumb
branch_2256832: @ 2256832 :thumb
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r5, #0x40]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x44]
	mov     r1, #0x4
	bl      0x22558c4
	ldr     r1, [sp, #0xc]
	mov     r2, #0x3
	ldsb    r1, [r1, r2]
	ldr     r2, [sp, #0xc]
	mov     r3, #0x4
	ldsb    r2, [r2, r3]
	mov     r0, r5
	bl      Function_2256894
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225685e


.align 2


.word 0x2256d34 @ 0x2256860
.thumb
Function_2256864: @ 2256864 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225686c: @ 225686c :thumb
	ldr     r1, [r5, #0x34]
	cmp     r1, #0x0
	beq     branch_2256878
	ldr     r0, [r6, #0x30]
	bl      0x22558b0
.thumb
branch_2256878: @ 2256878 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xd
	blt     branch_225686c
	mov     r0, r6
	add     r0, #0x68
	bl      0x22559b0
	add     r6, #0x7c
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x2256892


.align 2, 0


.thumb
Function_2256894: @ 2256894 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x70] @ 0x225690c, (=0x4000280)
	mov     r3, #0x0
	strh    r3, [r0, #0x0]
	str     r1, [r0, #0x10]
	mov     r1, r0
	mov     r4, r2
	mov     r2, #0xa
	add     r1, #0x18
	str     r2, [r1, #0x0]
	str     r3, [r1, #0x4]
	lsr     r1, r0, #11
.thumb
branch_22568ae: @ 22568ae :thumb
	ldrh    r2, [r0, #0x0]
	tst     r2, r1
	bne     branch_22568ae
	ldr     r1, [pc, #0x58] @ 0x2256910, (=0x40002a0)
	ldr     r0, [r5, #0x58]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
	ldr     r2, [pc, #0x4c] @ 0x225690c, (=0x4000280)
	lsr     r0, r2, #11
.thumb
branch_22568c2: @ 22568c2 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22568c2
	ldr     r1, [pc, #0x48] @ 0x2256914, (=0x40002a8)
	ldr     r0, [r5, #0x5c]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
	ldr     r0, [pc, #0x38] @ 0x225690c, (=0x4000280)
	mov     r3, #0x0
	strh    r3, [r0, #0x0]
	mov     r1, r0
	str     r4, [r0, #0x10]
	mov     r2, #0xa
	add     r1, #0x18
	str     r2, [r1, #0x0]
	str     r3, [r1, #0x4]
	lsr     r1, r0, #11
.thumb
branch_22568e6: @ 22568e6 :thumb
	ldrh    r2, [r0, #0x0]
	tst     r2, r1
	bne     branch_22568e6
	ldr     r1, [pc, #0x20] @ 0x2256910, (=0x40002a0)
	ldr     r0, [r5, #0x60]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
	ldr     r2, [pc, #0x14] @ 0x225690c, (=0x4000280)
	lsr     r0, r2, #11
.thumb
branch_22568fa: @ 22568fa :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_22568fa
	ldr     r1, [pc, #0x10] @ 0x2256914, (=0x40002a8)
	ldr     r0, [r5, #0x64]
	ldr     r1, [r1, #0x0]
	bl      0x22558c4
	pop     {r3-r5,pc}
@ 0x225690c

.word 0x4000280 @ 0x225690c
.word 0x40002a0 @ 0x2256910
.word 0x40002a8 @ 0x2256914
.thumb
Function_2256918: @ 2256918 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256938, (=0x2256ce0)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256936


.align 2


.word 0x2256ce0 @ 0x2256938
.thumb
Function_225693c: @ 225693c :thumb
	ldr     r3, [pc, #0x4] @ 0x2256944, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256942


.align 2


.word 0x2255131 @ 0x2256944
.thumb
Function_2256948: @ 2256948 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256950, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225694e


.align 2


.word 0x2255155 @ 0x2256950
.thumb
Function_2256954: @ 2256954 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256966


.align 2, 0


.thumb
Function_2256968: @ 2256968 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x22569ec, (=0x2256cc4)
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
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x4c
	mov     r3, #0x6
	bl      Function_2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x4]
	mov     r0, #0xc
	mov     r1, #0x4b
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x28] @ 0x22569f0, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x22569f4, (=0xffffe0ff)
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
	bl      Function_2256954
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22569ea


.align 2


.word 0x2256cc4 @ 0x22569ec
.word 0x4001000 @ 0x22569f0
.word 0xffffe0ff @ 0x22569f4
.thumb
Function_22569f8: @ 22569f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256a14
	cmp     r0, #0x1
	beq     branch_2256a22
	pop     {r3-r5,pc}
@ 0x2256a14

.thumb
branch_2256a14: @ 2256a14 :thumb
	mov     r0, r4
	bl      Function_2256c90
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256a22

.thumb
branch_2256a22: @ 2256a22 :thumb
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_225693c
	cmp     r0, #0x0
	beq     branch_2256a3c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_2256954
.thumb
branch_2256a3c: @ 2256a3c :thumb
	pop     {r3-r5,pc}
@ 0x2256a3e


.align 2, 0


.thumb
Function_2256a40: @ 2256a40 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [pc, #0x60] @ 0x2256ab8, (=0x663)
	bl      0x2254424
	ldr     r0, [r5, #0x34]
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r5, #0x40]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x44]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r5, #0x48]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x50]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x54]
	mov     r1, #0x1
	bl      0x2255914
	mov     r1, #0x1
	mov     r2, #0x2
	ldsb    r1, [r4, r1]
	ldsb    r2, [r4, r2]
	mov     r0, r5
	bl      Function_2256894
	mov     r0, r6
	bl      Function_2256954
	pop     {r4-r6,pc}
@ 0x2256ab8

.word 0x663 @ 0x2256ab8
.thumb
Function_2256abc: @ 2256abc :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r0, r6
	bl      0x225523c
	mov     r5, r0
	mov     r0, r6
	bl      0x2255240
	mov     r4, r0
	ldr     r0, [pc, #0x60] @ 0x2256b34, (=0x663)
	bl      0x2254424
	ldr     r0, [r5, #0x34]
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r5, #0x40]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r5, #0x44]
	mov     r1, #0x4
	bl      0x22558c4
	ldr     r0, [r5, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r5, #0x3c]
	mov     r1, #0x0
	bl      0x22558c4
	ldr     r0, [r5, #0x48]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r5, #0x4c]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r5, #0x50]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r5, #0x54]
	mov     r1, #0x0
	bl      0x2255914
	mov     r1, #0x3
	mov     r2, #0x4
	ldsb    r1, [r4, r1]
	ldsb    r2, [r4, r2]
	mov     r0, r5
	bl      Function_2256894
	mov     r0, r6
	bl      Function_2256954
	pop     {r4-r6,pc}
@ 0x2256b34

.word 0x663 @ 0x2256b34
.thumb
Function_2256b38: @ 2256b38 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r2, r0
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0x0
	beq     branch_2256b62
	mov     r1, #0x1
	mov     r3, #0x2
	ldsb    r1, [r2, r1]
	ldsb    r2, [r2, r3]
	mov     r0, r4
	bl      Function_2256894
	b       branch_2256b70
@ 0x2256b62

.thumb
branch_2256b62: @ 2256b62 :thumb
	mov     r1, #0x3
	mov     r3, #0x4
	ldsb    r1, [r2, r1]
	ldsb    r2, [r2, r3]
	mov     r0, r4
	bl      Function_2256894
.thumb
branch_2256b70: @ 2256b70 :thumb
	mov     r0, r5
	bl      Function_2256954
	pop     {r3-r5,pc}
@ 0x2256b78

.thumb
Function_2256b78: @ 2256b78 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256b9a
	cmp     r0, #0x1
	beq     branch_2256be4
	pop     {r3-r5,pc}
@ 0x2256b9a

.thumb
branch_2256b9a: @ 2256b9a :thumb
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x90
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x40]
	mov     r1, #0x4
	bl      0x22558c4
	ldr     r0, [r4, #0x44]
	mov     r1, #0x4
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	ldr     r0, [r4, #0x3c]
	mov     r1, #0x1
	bl      0x22558c4
	ldr     r0, [pc, #0xc4] @ 0x2256c88, (=0x663)
	bl      0x2254424
	ldr     r0, [pc, #0xc0] @ 0x2256c8c, (=0x126)
	mov     r1, #0x0
	bl      0x2254444
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x94
	str     r1, [r0, #0x0]
	add     r4, #0x98
	mov     r0, r5
	str     r1, [r4, #0x0]
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256be4

.thumb
branch_2256be4: @ 2256be4 :thumb
	mov     r0, r4
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256c16
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x60]
	mov     r1, #0x0
	bl      0x2255914
	ldr     r0, [r4, #0x64]
	mov     r1, #0x0
	bl      0x2255914
	mov     r0, r5
	bl      Function_2256954
	pop     {r3-r5,pc}
@ 0x2256c16

.thumb
branch_2256c16: @ 2256c16 :thumb
	bl      Function_200598c
	cmp     r0, #0x0
	bne     branch_2256c26
	ldr     r0, [pc, #0x6c] @ 0x2256c8c, (=0x126)
	mov     r1, #0x0
	bl      0x2254444
.thumb
branch_2256c26: @ 2256c26 :thumb
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xf
	bcc     branch_2256c84
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x98
	ldr     r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x98
	ldr     r0, [r4, #0x58]
	ldr     r1, [r1, #0x0]
	bl      0x2255914
	mov     r1, r4
	add     r1, #0x98
	ldr     r0, [r4, #0x5c]
	ldr     r1, [r1, #0x0]
	bl      0x2255914
	mov     r1, r4
	add     r1, #0x98
	ldr     r0, [r4, #0x60]
	ldr     r1, [r1, #0x0]
	bl      0x2255914
	ldr     r0, [r4, #0x64]
	add     r4, #0x98
	ldr     r1, [r4, #0x0]
	bl      0x2255914
.thumb
branch_2256c84: @ 2256c84 :thumb
	pop     {r3-r5,pc}
@ 0x2256c86

.align 2
.word 0x663 @ 0x2256c88
.word 0x126 @ 0x2256c8c



.thumb
Function_2256c90: @ 2256c90 :thumb
	mov     r1, #0x1
	add     r0, #0x90
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2256c98



Unknown_2256c98: @ 0x2256c98
.incbin "./baserom/overlay/overlay_0045.bin", 0xad8, 0x2256e20 - 0x2256c98


@end 0x2256e20




