

.section .iwram44, "ax"


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
	mov     r1, #0x68
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
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256339)
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


.word 0x2256339 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x4]
	mov     r0, r1
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	bl      0x2254544
	bl      LoadPokePartyAdress
	mov     r1, #0x0
	str     r0, [sp, #0x14]
	str     r1, [sp, #0x10]
	bl      GetNrOfPkmnInParty
	ldr     r1, [sp, #0x4]
	mov     r7, #0x0
	add     r1, #0x34
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_225629e
	ldr     r6, [sp, #0x4]
	mov     r5, r6
branch_2256250: @ 2256250 :thumb
	ldr     r0, [sp, #0x14]
	mov     r1, r7
	bl      GetAdrOfPkmnInParty
	mov     r1, #0x4c
	mov     r2, #0x0
	mov     r4, r0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2256292
	mov     r0, r4
	bl      Function_2079d40
	str     r0, [r6, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x1c]
	mov     r0, r4
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	strh    r0, [r5, #0x28]
	ldr     r0, [sp, #0x10]
	str     r4, [r6, #0x48]
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1cad @ add r5, r5, #0x2
	str     r0, [sp, #0x10]
.thumb
branch_2256292: @ 2256292 :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r7, r0
	blt     branch_2256250
.thumb
branch_225629e: @ 225629e :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	add     r1, #0x34
	strb    r0, [r1, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0x36
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bls     branch_22562ba
	mov     r1, #0x1
.thumb
branch_22562ba: @ 22562ba :thumb
	ldr     r0, [sp, #0x4]
	ldr     r2, [sp, #0xc]
	add     r0, #0x37
	strb    r1, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	add     r0, #0x38
	.hword  0x1d09 @ add r1, r1, #0x4
	bl      Function_22565bc
	cmp     r0, #0x0
	beq     branch_2256304
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	strb    r1, [r0, #0x2]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x225630c, (=Unknown_2256cb4)
	ldr     r2, [pc, #0x2c] @ 0x2256310, (=0x225632d)
	ldr     r3, [sp, #0x4]
	mov     r1, #0x3
	bl      0x2255acc
	ldr     r1, [sp, #0x4]
	str     r0, [r1, #0x40]
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	add     r0, #0x46
	strh    r1, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	add     sp, #0x18
	str     r1, [r0, #0x3c]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256304

.thumb
branch_2256304: @ 2256304 :thumb
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x225630a

.align 2
.word Unknown_2256cb4 @ 0x225630c
.word Function_225632c+1 @ =0x225632d, 0x2256310



.thumb
Function_2256314: @ 2256314 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x40]
	bl      0x2255b34
	ldr     r0, [r4, #0x38]
	bl      Function_22565f8
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x225632c

.thumb
Function_225632c: @ 225632c :thumb
	mov     r2, r3
	add     r2, #0x44
	strh    r0, [r2, #0x0]
	add     r3, #0x46
	strh    r1, [r3, #0x0]
	bx      lr
@ 0x2256338

.thumb
Function_2256338: @ 2256338 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x3
	bcs     branch_225636e
	ldr     r0, [r4, #0x3c]
	ldr     r1, [r4, #0x40]
	bl      0x2254518
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256370, (=0x2256cc0)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_225636e
	mov     r0, r4
	bl      Function_2256314
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0x3c]
	bl      0x2254260
.thumb
branch_225636e: @ 225636e :thumb
	pop     {r3-r5,pc}
@ 0x2256370

.word 0x2256cc0 @ 0x2256370
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
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      Function_2256744
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22563ca
@ 0x22563b0

.thumb
branch_22563b0: @ 22563b0 :thumb
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      Function_2256768
	cmp     r0, #0x0
	beq     branch_22563ca
	ldr     r0, [r4, #0x3c]
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
	ldrb    r1, [r4, #0x1]
	cmp     r1, #0x3
	bhi     branch_22564e8
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22563f6

Jumppoints_22563f6:
.hword branch_22563fe - Jumppoints_22563f6 - 2
.hword branch_225646c - Jumppoints_22563f6 - 2
.hword branch_225647c - Jumppoints_22563f6 - 2
.hword branch_22564d8 - Jumppoints_22563f6 - 2
.thumb
branch_22563fe: @ 22563fe :thumb
	mov     r1, r4
	add     r1, #0x46
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_22564e8
	mov     r1, r4
	add     r1, #0x44
	ldrh    r1, [r1, #0x0]
	cmp     r1, #0x0
	beq     branch_2256448
	cmp     r1, #0x1
	beq     branch_225641c
	cmp     r1, #0x2
	beq     branch_2256432
	b       branch_2256464
@ 0x225641c

.thumb
branch_225641c: @ 225641c :thumb
	bl      Function_22564f0
	cmp     r0, #0x0
	beq     branch_2256464
	ldr     r0, [r4, #0x38]
	mov     r1, #0x4
	bl      Function_2256744
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256464
@ 0x2256432

.thumb
branch_2256432: @ 2256432 :thumb
	bl      Function_225653c
	cmp     r0, #0x0
	beq     branch_2256464
	ldr     r0, [r4, #0x38]
	mov     r1, #0x5
	bl      Function_2256744
	mov     r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256464
@ 0x2256448

.thumb
branch_2256448: @ 2256448 :thumb
	add     r0, #0x34
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bls     branch_225645e
	ldr     r0, [r4, #0x38]
	mov     r1, #0x2
	bl      Function_2256744
	mov     r0, #0x2
	strb    r0, [r4, #0x1]
	b       branch_2256464
@ 0x225645e

.thumb
branch_225645e: @ 225645e :thumb
	ldr     r0, [pc, #0x8c] @ 0x22564ec, (=0x66e)
	bl      0x2254424
.thumb
branch_2256464: @ 2256464 :thumb
	mov     r0, #0x0
	add     r4, #0x46
	strh    r0, [r4, #0x0]
	b       branch_22564e8
@ 0x225646c

.thumb
branch_225646c: @ 225646c :thumb
	ldr     r0, [r4, #0x38]
	bl      Function_2256774
	cmp     r0, #0x0
	beq     branch_22564e8
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_22564e8
@ 0x225647c

.thumb
branch_225647c: @ 225647c :thumb
	add     r0, #0x46
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_2256492
	ldr     r0, [r4, #0x38]
	mov     r1, #0x3
	bl      Function_2256744
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
	b       branch_22564e8
@ 0x2256492

.thumb
branch_2256492: @ 2256492 :thumb
	cmp     r0, #0x3
	bne     branch_22564e8
	mov     r0, r4
	add     r0, #0x36
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x48]
	str     r0, [r4, #0x60]
	mov     r0, r4
	add     r0, #0x37
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r0, [r0, #0x48]
	str     r0, [r4, #0x64]
	mov     r0, r4
	add     r0, #0x60
	bl      0x21e7790
	mov     r1, r4
	add     r1, #0x35
	strb    r0, [r1, #0x0]
	ldr     r0, [r4, #0x38]
	mov     r1, #0x3
	bl      Function_2256744
	ldr     r0, [r4, #0x38]
	mov     r1, #0x6
	bl      Function_2256744
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22564e8
@ 0x22564d8

.thumb
branch_22564d8: @ 22564d8 :thumb
	ldr     r0, [r4, #0x38]
	mov     r1, #0x6
	bl      Function_2256768
	cmp     r0, #0x0
	beq     branch_22564e8
	mov     r0, #0x0
	strb    r0, [r4, #0x1]
.thumb
branch_22564e8: @ 22564e8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22564ec

.word 0x66e @ 0x22564ec
.thumb
Function_22564f0: @ 22564f0 :thumb
	push    {r3,r4}
	mov     r1, r0
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x2
	bls     branch_2256534
	mov     r2, r0
	mov     r1, #0x0
	add     r2, #0x36
.thumb
branch_2256502: @ 2256502 :thumb
	ldrb    r3, [r2, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r3, [r2, #0x0]
	mov     r3, r0
	add     r3, #0x36
	ldrb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x34
	ldrb    r3, [r3, #0x0]
	cmp     r4, r3
	bcc     branch_225651e
	mov     r3, r0
	add     r3, #0x36
	strb    r1, [r3, #0x0]
.thumb
branch_225651e: @ 225651e :thumb
	mov     r3, r0
	add     r3, #0x36
	ldrb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x37
	ldrb    r3, [r3, #0x0]
	cmp     r4, r3
	beq     branch_2256502
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2256534

.thumb
branch_2256534: @ 2256534 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x225653a


.align 2, 0


.thumb
Function_225653c: @ 225653c :thumb
	push    {r3,r4}
	mov     r1, r0
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x2
	bls     branch_2256580
	mov     r2, r0
	mov     r1, #0x0
	add     r2, #0x37
.thumb
branch_225654e: @ 225654e :thumb
	ldrb    r3, [r2, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r3, [r2, #0x0]
	mov     r3, r0
	add     r3, #0x37
	ldrb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x34
	ldrb    r3, [r3, #0x0]
	cmp     r4, r3
	bcc     branch_225656a
	mov     r3, r0
	add     r3, #0x37
	strb    r1, [r3, #0x0]
.thumb
branch_225656a: @ 225656a :thumb
	mov     r3, r0
	add     r3, #0x37
	ldrb    r4, [r3, #0x0]
	mov     r3, r0
	add     r3, #0x36
	ldrb    r3, [r3, #0x0]
	cmp     r4, r3
	beq     branch_225654e
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2256580

.thumb
branch_2256580: @ 2256580 :thumb
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2256586


.align 2, 0


.thumb
Function_2256588: @ 2256588 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_2256598
	cmp     r0, #0x1
	beq     branch_22565a8
	b       branch_22565b6
@ 0x2256598

.thumb
branch_2256598: @ 2256598 :thumb
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      Function_2256744
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22565b6
@ 0x22565a8

.thumb
branch_22565a8: @ 22565a8 :thumb
	ldr     r0, [r4, #0x38]
	bl      Function_2256774
	cmp     r0, #0x0
	beq     branch_22565b6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22565b6

.thumb
branch_22565b6: @ 22565b6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22565ba


.align 2, 0


.thumb
Function_22565bc: @ 22565bc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0x88
	bl      malloc
	mov     r4, r0
	beq     branch_22565f2
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
	bl      Function_225660c
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22565f2

.thumb
branch_22565f2: @ 22565f2 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22565f6


.align 2, 0


.thumb
Function_22565f8: @ 22565f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256608
	bl      Function_2256718
	mov     r0, r4
	bl      free
.thumb
branch_2256608: @ 2256608 :thumb
	pop     {r4,pc}
@ 0x225660a


.align 2, 0


.thumb
Function_225660c: @ 225660c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x1
	str     r1, [sp, #0xc]
	bl      0x2255360
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x4a
	bl      Function_2006ec0
	mov     r1, #0x14
	blx     _u32_div_f
	ldr     r1, [sp, #0xc]
	str     r0, [r5, #0x64]
	mov     r2, r1
	add     r2, #0x30
	ldrb    r2, [r2, #0x0]
	mov     r3, #0x0
	bl      0x22553a0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x3c
	mov     r1, #0xc
	mov     r2, #0x48
	mov     r3, #0x49
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x50
	mov     r1, #0xc
	mov     r2, #0x5
	mov     r3, #0x6
	bl      0x2255958
	mov     r0, r5
	str     r0, [sp, #0x10]
	add     r0, #0x3c
	ldr     r7, [pc, #0xa4] @ 0x2256714, (=0x2256dbc)
	mov     r4, #0x0
	mov     r6, r5
	str     r0, [sp, #0x10]
.thumb
branch_2256676: @ 2256676 :thumb
	ldr     r0, [r5, #0x20]
	ldr     r2, [sp, #0x10]
	mov     r1, r7
	bl      0x2255810
	str     r0, [r6, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x10
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_2256676
	cmp     r4, #0x6
	bge     branch_22566b8
	ldr     r1, [pc, #0x80] @ 0x2256714, (=0x2256dbc)
	lsl     r0, r4, #4
	add     r7, r1, r0
	lsl     r0, r4, #2
	add     r6, r5, r0
	mov     r0, r5
	str     r0, [sp, #0x14]
	add     r0, #0x50
	str     r0, [sp, #0x14]
.thumb
branch_22566a2: @ 22566a2 :thumb
	ldr     r0, [r5, #0x20]
	ldr     r2, [sp, #0x14]
	mov     r1, r7
	bl      0x2255810
	str     r0, [r6, #0x24]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0x10
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x6
	blt     branch_22566a2
.thumb
branch_22566b8: @ 22566b8 :thumb
	ldr     r0, [sp, #0xc]
	add     r0, #0x32
	ldrb    r2, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	lsl     r1, r2, #1
	add     r3, r0, r1
	ldrh    r0, [r3, #0x24]
	mov     r1, #0x4
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x18]
	mov     r0, r5
	bl      Function_2256954
	ldr     r0, [sp, #0xc]
	add     r0, #0x33
	ldrb    r2, [r0, #0x0]
	ldr     r0, [sp, #0xc]
	lsl     r1, r2, #1
	add     r3, r0, r1
	ldrh    r0, [r3, #0x24]
	mov     r1, #0x5
	str     r0, [sp, #0x0]
	ldrh    r3, [r3, #0x18]
	mov     r0, r5
	bl      Function_2256954
	ldr     r0, [sp, #0xc]
	add     r0, #0x30
	str     r0, [sp, #0xc]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bhi     branch_2256710
	ldr     r0, [r5, #0x38]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      0x2255914
	ldr     r0, [r5, #0x24]
	mov     r1, #0xa
	bl      0x22558c4
.thumb
branch_2256710: @ 2256710 :thumb
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2256714

.word 0x2256dbc @ 0x2256714
.thumb
Function_2256718: @ 2256718 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	add     r0, #0x50
	bl      0x22559b0
	mov     r0, r6
	add     r0, #0x3c
	bl      0x22559b0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_225672e: @ 225672e :thumb
	ldr     r1, [r5, #0x24]
	cmp     r1, #0x0
	beq     branch_225673a
	ldr     r0, [r6, #0x20]
	bl      0x22558b0
.thumb
branch_225673a: @ 225673a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_225672e
	pop     {r4-r6,pc}
@ 0x2256744

.thumb
Function_2256744: @ 2256744 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256764, (=0x2256d5c)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256762


.align 2


.word 0x2256d5c @ 0x2256764
.thumb
Function_2256768: @ 2256768 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256770, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x225676e


.align 2


.word 0x2255131 @ 0x2256770
.thumb
Function_2256774: @ 2256774 :thumb
	ldr     r3, [pc, #0x4] @ 0x225677c, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x225677a


.align 2


.word 0x2255155 @ 0x225677c
.thumb
Function_2256780: @ 2256780 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256792


.align 2, 0


.thumb
Function_2256794: @ 2256794 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r0, r4
	bl      0x225523c
	mov     r5, r0
	mov     r0, r4
	bl      0x2255240
	ldr     r0, [r5, #0x4]
	ldr     r2, [pc, #0x70] @ 0x225681c, (=0x2256ce4)
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
	mov     r1, #0x47
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
	mov     r1, #0x46
	mov     r3, #0x6
	bl      Function_2006e60
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r5, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x24] @ 0x2256820, (=0x4001000)
	ldr     r0, [pc, #0x28] @ 0x2256824, (=0xffffe0ff)
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
	bl      Function_2256780
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x225681c

.word 0x2256ce4 @ 0x225681c
.word 0x4001000 @ 0x2256820
.word 0xffffe0ff @ 0x2256824
.thumb
Function_2256828: @ 2256828 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256844
	cmp     r0, #0x1
	beq     branch_2256850
	pop     {r3-r5,pc}
@ 0x2256844

.thumb
branch_2256844: @ 2256844 :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x68]
	mov     r0, r5
	bl      0x225524c
	pop     {r3-r5,pc}
@ 0x2256850

.thumb
branch_2256850: @ 2256850 :thumb
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2256768
	cmp     r0, #0x0
	beq     branch_225686a
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_2256780
.thumb
branch_225686a: @ 225686a :thumb
	pop     {r3-r5,pc}
@ 0x225686c

.thumb
Function_225686c: @ 225686c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	ldr     r0, [pc, #0x14] @ 0x2256894, (=0x669)
	bl      0x2254424
	ldr     r0, [r4, #0x24]
	mov     r1, #0xa
	bl      0x22558c4
	mov     r0, r5
	bl      Function_2256780
	pop     {r3-r5,pc}
@ 0x2256894

.word 0x669 @ 0x2256894
.thumb
Function_2256898: @ 2256898 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	ldr     r0, [r4, #0x24]
	mov     r1, #0x9
	bl      0x22558c4
	mov     r0, r5
	bl      Function_2256780
	pop     {r3-r5,pc}
@ 0x22568ba


.align 2, 0


.thumb
Function_22568bc: @ 22568bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	mov     r0, r1
	bl      0x225523c
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	bl      0x2255240
	mov     r1, r0
	add     r1, #0x32
	ldrb    r7, [r1, #0x0]
	mov     r4, r0
	mov     r6, r0
	lsl     r5, r7, #1
	add     r4, #0x24
	add     r6, #0x18
	ldrh    r0, [r6, r5]
	ldrh    r1, [r4, r5]
	bl      0x2254444
	ldrh    r0, [r4, r5]
	mov     r1, #0x4
	mov     r2, r7
	str     r0, [sp, #0x0]
	ldrh    r3, [r6, r5]
	ldr     r0, [sp, #0x8]
	bl      Function_2256954
	ldr     r0, [sp, #0x8]
	bl      Function_22569ac
	ldr     r0, [sp, #0x4]
	bl      Function_2256780
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2256908

.thumb
Function_2256908: @ 2256908 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	mov     r0, r1
	bl      0x225523c
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	bl      0x2255240
	mov     r1, r0
	add     r1, #0x33
	ldrb    r7, [r1, #0x0]
	mov     r4, r0
	mov     r6, r0
	lsl     r5, r7, #1
	add     r4, #0x24
	add     r6, #0x18
	ldrh    r0, [r6, r5]
	ldrh    r1, [r4, r5]
	bl      0x2254444
	ldrh    r0, [r4, r5]
	mov     r1, #0x5
	mov     r2, r7
	str     r0, [sp, #0x0]
	ldrh    r3, [r6, r5]
	ldr     r0, [sp, #0x8]
	bl      Function_2256954
	ldr     r0, [sp, #0x8]
	bl      Function_22569ac
	ldr     r0, [sp, #0x4]
	bl      Function_2256780
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2256954

.thumb
Function_2256954: @ 2256954 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	lsl     r0, r1, #2
	add     r0, r5, r0
	mov     r6, r2
	mov     r7, r3
	ldr     r4, [r0, #0x24]
	cmp     r1, #0x5
	bne     branch_225696a
	mov     r1, #0x4
	b       branch_2256980
@ 0x225696a

.thumb
branch_225696a: @ 225696a :thumb
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	mov     r0, r7
	mov     r2, #0x1c
	bl      GetPkmnBaseData2
	cmp     r0, #0x0
	beq     branch_225697e
	mov     r1, #0x4
	b       branch_2256980
@ 0x225697e

.thumb
branch_225697e: @ 225697e :thumb
	mov     r1, #0x5
.thumb
branch_2256980: @ 2256980 :thumb
	mov     r0, r4
	bl      0x22558c4
	ldr     r2, [r5, #0x64]
	lsl     r1, r6, #4
	mov     r0, r4
	add     r1, r2, r1
	bl      0x2255940
	add     r1, sp, #0x8
	ldrh    r1, [r1, #0x10]
	mov     r0, r7
	mov     r2, #0x0
	bl      Function_2079edc
	mov     r1, r0
	mov     r0, r4
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      0x2255938
	pop     {r3-r7,pc}
@ 0x22569aa


.align 2, 0


.thumb
Function_22569ac: @ 22569ac :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x3
	mov     r2, #0x16
	ldr     r0, [r4, #0x2c]
	lsl     r1, r1, #16
	lsl     r2, r2, #14
	bl      0x2255900
	mov     r1, #0xb
	lsl     r1, r1, #16
	ldr     r0, [r4, #0x30]
	lsr     r2, r1, #1
	bl      0x2255900
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x5
	bl      0x22558c4
	ldr     r0, [r4, #0x30]
	mov     r1, #0x6
	bl      0x22558c4
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      0x22558c4
	pop     {r4,pc}
@ 0x22569e4

.thumb
Function_22569e4: @ 22569e4 :thumb
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
	beq     branch_2256a10
	ldr     r0, [r4, #0x68]
	cmp     r0, #0x0
	beq     branch_2256a10
	mov     r0, r5
	bl      Function_2256780
	pop     {r4-r6,pc}
@ 0x2256a10

.thumb
branch_2256a10: @ 2256a10 :thumb
	mov     r0, r5
	bl      0x2255248
	cmp     r0, #0x0
	beq     branch_2256a20
	cmp     r0, #0x1
	beq     branch_2256a3a
	pop     {r4-r6,pc}
@ 0x2256a20

.thumb
branch_2256a20: @ 2256a20 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x68]
	mov     r0, r4
	bl      Function_22569ac
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256a50
	mov     r0, r5
	bl      0x225524c
	pop     {r4-r6,pc}
@ 0x2256a3a

.thumb
branch_2256a3a: @ 2256a3a :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2256ac8
	cmp     r0, #0x0
	beq     branch_2256a4c
	mov     r0, r5
	bl      Function_2256780
.thumb
branch_2256a4c: @ 2256a4c :thumb
	pop     {r4-r6,pc}
@ 0x2256a4e


.align 2, 0


.thumb
Function_2256a50: @ 2256a50 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	mov     r1, #0x0
	str     r1, [r4, #0x70]
	str     r1, [r4, #0x74]
	str     r1, [r4, #0x78]
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x31
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bhi     branch_2256aae
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2256a78

Jumppoints_2256a78:
.hword branch_2256aa2 - Jumppoints_2256a78 - 2
.hword branch_2256a94 - Jumppoints_2256a78 - 2
.hword branch_2256a86 - Jumppoints_2256a78 - 2
.hword branch_2256a80 - Jumppoints_2256a78 - 2
.thumb
branch_2256a80: @ 2256a80 :thumb
	ldr     r0, [pc, #0x34] @ 0x2256ab8, (=0x2256d2c)
	str     r0, [r4, #0x6c]
	b       branch_2256aae
@ 0x2256a86

.thumb
branch_2256a86: @ 2256a86 :thumb
	ldr     r0, [pc, #0x34] @ 0x2256abc, (=0x2256ccc)
	mov     r1, #0x1
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x28]
	bl      0x22558c4
	b       branch_2256aae
@ 0x2256a94

.thumb
branch_2256a94: @ 2256a94 :thumb
	ldr     r0, [pc, #0x28] @ 0x2256ac0, (=0x2256d00)
	mov     r1, #0x2
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x28]
	bl      0x22558c4
	b       branch_2256aae
@ 0x2256aa2

.thumb
branch_2256aa2: @ 2256aa2 :thumb
	ldr     r0, [pc, #0x20] @ 0x2256ac4, (=0x2256e1c)
	mov     r1, #0x3
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x28]
	bl      0x22558c4
.thumb
branch_2256aae: @ 2256aae :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_2256ac8
	pop     {r3-r5,pc}
@ 0x2256ab8

.word 0x2256d2c @ 0x2256ab8
.word 0x2256ccc @ 0x2256abc
.word 0x2256d00 @ 0x2256ac0
.word 0x2256e1c @ 0x2256ac4
.thumb
Function_2256ac8: @ 2256ac8 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	mov     r5, r4
	mov     r6, r4
	mov     r7, #0x16
	add     r5, #0x84
	add     r6, #0x78
	lsl     r7, r7, #14
.thumb
branch_2256ad8: @ 2256ad8 :thumb
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	beq     branch_2256aec
	cmp     r0, #0x1
	bne     branch_2256ae4
	b       branch_2256c34
@ 0x2256ae4

.thumb
branch_2256ae4: @ 2256ae4 :thumb
	cmp     r0, #0x2
	bne     branch_2256aea
	b       branch_2256c90
@ 0x2256aea

.thumb
branch_2256aea: @ 2256aea :thumb
	b       branch_2256cae
@ 0x2256aec

.thumb
branch_2256aec: @ 2256aec :thumb
	beq     branch_2256af0
	b       branch_2256cae
@ 0x2256af0

.thumb
branch_2256af0: @ 2256af0 :thumb
	mov     r6, r4
	mov     r5, r4
	add     r6, #0x7c
	mov     r7, #0x1
	add     r5, #0x74
.thumb
branch_2256afa: @ 2256afa :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	.hword  0x1dc0 @ add r0, r0, #0x7
	cmp     r0, #0x6
	bls     branch_2256b10
	b       branch_2256c2a
@ 0x2256b10

.thumb
branch_2256b10: @ 2256b10 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2256b1c

Jumppoints_2256b1c:
.hword branch_2256c06 - Jumppoints_2256b1c - 2
.hword branch_2256bf4 - Jumppoints_2256b1c - 2
.hword branch_2256be0 - Jumppoints_2256b1c - 2
.hword branch_2256bc6 - Jumppoints_2256b1c - 2
.hword branch_2256b76 - Jumppoints_2256b1c - 2
.hword branch_2256b2e - Jumppoints_2256b1c - 2
.hword branch_2256b2a - Jumppoints_2256b1c - 2
.thumb
branch_2256b2a: @ 2256b2a :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2256b2e

.thumb
branch_2256b2e: @ 2256b2e :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	str     r0, [r4, #0x7c]
	ldr     r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [r6, #0x0]
	ldr     r1, [r4, #0x78]
	ldr     r0, [r4, #0x7c]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x84
	ldr     r0, [r6, #0x0]
	ldr     r1, [r1, #0x0]
	blx     _u32_div_f
	str     r0, [r6, #0x0]
	str     r7, [r4, #0x70]
	b       branch_2256c2a
@ 0x2256b76

.thumb
branch_2256b76: @ 2256b76 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	str     r0, [r4, #0x7c]
	ldr     r0, [r6, #0x0]
	mvn     r1, r1
	lsl     r0, r0, #12
	mul     r1, r0
	str     r1, [r6, #0x0]
	ldr     r1, [r4, #0x78]
	ldr     r0, [r4, #0x7c]
	add     r1, r1, r0
	mov     r0, r4
	add     r0, #0x80
	str     r1, [r0, #0x0]
	mov     r1, r4
	add     r1, #0x84
	ldr     r0, [r6, #0x0]
	ldr     r1, [r1, #0x0]
	blx     _u32_div_f
	str     r0, [r6, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x70]
	b       branch_2256c2a
@ 0x2256bc6

.thumb
branch_2256bc6: @ 2256bc6 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r1, [r0, r1]
	mov     r0, r4
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x2
	str     r0, [r4, #0x70]
	b       branch_2256c2a
@ 0x2256be0

.thumb
branch_2256be0: @ 2256be0 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r1, [r4, #0x74]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x6c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      0x2254424
	b       branch_2256c2a
@ 0x2256bf4

.thumb
branch_2256bf4: @ 2256bf4 :thumb
	ldr     r0, [r4, #0x2c]
	mov     r1, #0x6
	bl      0x22558c4
	ldr     r0, [r4, #0x30]
	mov     r1, #0x5
	bl      0x22558c4
	b       branch_2256c2a
@ 0x2256c06

.thumb
branch_2256c06: @ 2256c06 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r4, #0x74]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, #0x0]
	ldr     r2, [r4, #0x6c]
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	ldr     r2, [r4, #0x74]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r4, r0
	ldr     r1, [r4, #0x6c]
	lsl     r2, r2, #2
	ldr     r0, [r0, #0x24]
	ldr     r1, [r1, r2]
	bl      0x22558c4
.thumb
branch_2256c2a: @ 2256c2a :thumb
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	bne     branch_2256c32
	b       branch_2256afa
@ 0x2256c32

.thumb
branch_2256c32: @ 2256c32 :thumb
	b       branch_2256cae
@ 0x2256c34

.thumb
branch_2256c34: @ 2256c34 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256c80
	ldr     r0, [r5, #0x0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256c58
	ldr     r1, [r6, #0x0]
	ldr     r0, [r4, #0x7c]
	add     r0, r1, r0
	str     r0, [r6, #0x0]
	b       branch_2256c60
@ 0x2256c58

.thumb
branch_2256c58: @ 2256c58 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x78]
.thumb
branch_2256c60: @ 2256c60 :thumb
	mov     r1, #0x3
	ldr     r2, [r4, #0x78]
	lsl     r1, r1, #16
	add     r1, r2, r1
	ldr     r0, [r4, #0x2c]
	mov     r2, r7
	bl      0x2255900
	mov     r1, #0xb
	ldr     r2, [r4, #0x78]
	lsl     r1, r1, #16
	sub     r1, r1, r2
	ldr     r0, [r4, #0x30]
	mov     r2, r7
	bl      0x2255900
.thumb
branch_2256c80: @ 2256c80 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256cae
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	b       branch_2256ad8
@ 0x2256c90

.thumb
branch_2256c90: @ 2256c90 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256ca8
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	add     r4, #0x84
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2256cae
@ 0x2256ca8

.thumb
branch_2256ca8: @ 2256ca8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x70]
	b       branch_2256ad8

branch_2256cae: @ 2256cae :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2256cb2


.align 2, 0
Unknown_2256cb4: @ 0x2256cb4
.incbin "./baserom/overlay/overlay_0044.bin", 0xaf4, 0x2256ea0 - 0x2256cb4


@end 0x2256ea0




