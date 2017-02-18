

.section .iwram46, "ax"


.thumb
Function_22561c0: @ 22561c0 :thumb
	ldr     r3, [pc, #0x4] @ 0x22561c8, (=0x2254239)
	ldr     r0, [pc, #0x8] @ 0x22561cc, (=0x22561d5)
	ldr     r1, [pc, #0x8] @ 0x22561d0, (=0x2256459)
	bx      r3
@ 0x22561c8

.word 0x2254239 @ 0x22561c8
.word 0x22561d5 @ 0x22561cc
.word 0x2256459 @ 0x22561d0



.thumb
Function_22561d4: @ 22561d4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x8
	mov     r1, #0x90
	mov     r7, r2
	str     r3, [sp, #0x0]
	bl      malloc
	mov     r4, r0
	beq     branch_2256212
	ldr     r3, [sp, #0x0]
	mov     r1, r6
	mov     r2, r7
	bl      Function_2256310
	cmp     r0, #0x0
	beq     branch_225620c
	ldr     r0, [pc, #0x1c] @ 0x2256218, (=0x2256409)
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


.word 0x2256409 @ 0x2256218
.thumb
Function_225621c: @ 225621c :thumb
	push    {r4,r5}
	mov     r4, #0x0
	mov     r5, r0
	mov     r3, #0x1
	mov     r2, r4
.thumb
branch_2256226: @ 2256226 :thumb
	add     r1, r0, r4
	str     r3, [r5, #0x5c]
	add     r1, #0x4c
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	strb    r2, [r1, #0x0]
	cmp     r4, #0x3
	blt     branch_2256226
	str     r3, [r0, #0x44]
	pop     {r4,r5}
	bx      lr
@ 0x225623c

.thumb
Function_225623c: @ 225623c :thumb
	lsl     r3, r1, #2
	add     r3, r0, r3
	str     r2, [r3, #0x5c]
	cmp     r2, #0x0
	beq     branch_225624a
	mov     r2, #0x0
	b       branch_225624c
@ 0x225624a

.thumb
branch_225624a: @ 225624a :thumb
	mov     r2, #0x1
.thumb
branch_225624c: @ 225624c :thumb
	add     r1, r0, r1
	add     r1, #0x4c
	strb    r2, [r1, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x44]
	bx      lr
@ 0x2256258

.thumb
Function_2256258: @ 2256258 :thumb
	lsl     r3, r1, #2
	add     r3, r0, r3
	ldr     r3, [r3, #0x5c]
	cmp     r3, #0x0
	beq     branch_225626c
	add     r1, r0, r1
	add     r1, #0x4c
	strb    r2, [r1, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x44]
.thumb
branch_225626c: @ 225626c :thumb
	bx      lr
@ 0x225626e


.align 2, 0


.thumb
Function_2256270: @ 2256270 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r1
	bl      Function_225710c
	str     r0, [r4, #0x10]
	ldr     r0, [r5, #0x4]
	mov     r1, r4
	mov     r2, #0x48
	bl      Function_2099d54
	pop     {r3-r5,pc}
@ 0x225628a


.align 2, 0


.thumb
Function_225628c: @ 225628c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x48
	bl      Function_2099d7c
	cmp     r0, #0x0
	beq     branch_22562cc
	mov     r0, r4
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_22562d2
	mov     r0, r4
	bl      Function_2256a88
	mov     r0, r4
	bl      Function_2256a78
	cmp     r0, #0x0
	beq     branch_22562d2
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x50]
	mov     r0, #0x2
	str     r0, [r4, #0x54]
	pop     {r4,pc}
@ 0x22562cc

.thumb
branch_22562cc: @ 22562cc :thumb
	mov     r0, r4
	bl      Function_22562d4
.thumb
branch_22562d2: @ 22562d2 :thumb
	pop     {r4,pc}
@ 0x22562d4

.thumb
Function_22562d4: @ 22562d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	mov     r3, r4
	mov     r2, #0x1
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	mov     r1, #0x0
	add     r3, #0x48
	strb    r1, [r3, #0x0]
	mov     r3, r4
	add     r3, #0x49
	strb    r1, [r3, #0x0]
	mov     r3, r4
	add     r3, #0x4a
	strb    r1, [r3, #0x0]
	mov     r3, r4
	add     r3, #0x4b
	strb    r1, [r3, #0x0]
	str     r2, [r4, #0x50]
	str     r1, [r4, #0x54]
	str     r1, [r4, #0x58]
	bl      Function_225621c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	pop     {r4,pc}
@ 0x2256310

.thumb
Function_2256310: @ 2256310 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	str     r3, [r5, #0x4]
	bl      Function_225628c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0x8
	add     r1, #0x48
	mov     r2, r6
	bl      Function_2256bcc
	cmp     r0, #0x0
	beq     branch_22563a8
	mov     r0, #0x0
	strb    r0, [r5, #0x0]
	strb    r0, [r5, #0x1]
	strb    r0, [r5, #0x3]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x22563b0, (=0x2257130)
	ldr     r2, [pc, #0x70] @ 0x22563b4, (=0x22563d9)
	mov     r1, #0xb
	mov     r3, r5
	bl      0x2255acc
	str     r0, [r5, #0x10]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	ldr     r0, [r5, #0x10]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r2, #0x4
	bl      Function_25_2255c5c
	mov     r1, #0x4
	ldr     r0, [r5, #0x10]
	mov     r2, r1
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x6
	mov     r2, #0x4
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x7
	mov     r2, #0x4
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x9
	mov     r2, #0x4
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x8
	mov     r2, #0x4
	bl      Function_25_2255c5c
	ldr     r0, [r5, #0x10]
	mov     r1, #0xa
	mov     r2, #0x4
	bl      Function_25_2255c5c
	add     sp, #0x4
	str     r4, [r5, #0xc]
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x22563a8

.thumb
branch_22563a8: @ 22563a8 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x22563ae


.align 2


.word 0x2257130 @ 0x22563b0
.word 0x22563d9 @ 0x22563b4
.thumb
Function_22563b8: @ 22563b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r1, #0x48
	bl      Function_2256270
	ldr     r0, [r4, #0x10]
	bl      0x2255b34
	ldr     r0, [r4, #0x8]
	bl      Function_2256c0c
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x22563d8

.thumb
Function_22563d8: @ 22563d8 :thumb
	push    {r3,lr}
	mov     r2, r0
	str     r2, [r3, #0x14]
	str     r1, [r3, #0x18]
	cmp     r2, #0x3
	bcs     branch_2256404
	cmp     r1, #0x1
	bne     branch_22563f4
	mov     r1, r2
	mov     r0, r3
	mov     r2, #0x1
	bl      Function_2256258
	pop     {r3,pc}
@ 0x22563f4

.thumb
branch_22563f4: @ 22563f4 :thumb
	.hword  0x1e88 @ sub r0, r1, #0x2
	cmp     r0, #0x1
	bhi     branch_2256404
	mov     r1, r2
	mov     r0, r3
	mov     r2, #0x0
	bl      Function_2256258
.thumb
branch_2256404: @ 2256404 :thumb
	pop     {r3,pc}
@ 0x2256406


.align 2, 0


.thumb
Function_2256408: @ 2256408 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x7
	bcs     branch_2256450
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	bl      0x2254518
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	beq     branch_225642e
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256d24
	mov     r0, #0x0
	str     r0, [r4, #0x44]
branch_225642e: @ 225642e :thumb
	ldrb    r1, [r4, #0x0]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x1c] @ 0x2256454, (=Unknown_2257114)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	beq     branch_2256450
	mov     r0, r4
	bl      Function_22563b8
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [r4, #0xc]
	bl      0x2254260
branch_2256450: @ 2256450 :thumb
	pop     {r3-r5,pc}
@ 0x2256452

.align 2
.word Unknown_2257114 @ 0x2256454



.thumb
Function_2256458: @ 2256458 :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x225645e


.align 2, 0
.thumb
Function_2256460: @ 2256460 :thumb
	ldrb    r3, [r0, #0x3]
	ldrb    r2, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_225646a
	mov     r1, #0x6
.thumb
branch_225646a: @ 225646a :thumb
	strb    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_225647a
	cmp     r1, #0x6
	beq     branch_225647a
	mov     r3, r0
	add     r3, #0x8c
	str     r2, [r3, #0x0]
.thumb
branch_225647a: @ 225647a :thumb
	cmp     r1, #0x6
	bhi     branch_22564d0
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x225648a

Jumppoints_225648a:
.hword branch_22564d0 - Jumppoints_225648a - 2
.hword branch_2256498 - Jumppoints_225648a - 2
.hword branch_22564a2 - Jumppoints_225648a - 2
.hword branch_22564ac - Jumppoints_225648a - 2
.hword branch_22564b6 - Jumppoints_225648a - 2
.hword branch_22564c0 - Jumppoints_225648a - 2
.hword branch_22564ca - Jumppoints_225648a - 2
.thumb
branch_2256498: @ 2256498 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x50]
	mov     r1, #0x0
	str     r1, [r0, #0x54]
	b       branch_22564d0
@ 0x22564a2

.thumb
branch_22564a2: @ 22564a2 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x50]
	mov     r1, #0x1
	str     r1, [r0, #0x54]
	b       branch_22564d0
@ 0x22564ac

.thumb
branch_22564ac: @ 22564ac :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x50]
	mov     r1, #0x1
	str     r1, [r0, #0x54]
	b       branch_22564d0
@ 0x22564b6

.thumb
branch_22564b6: @ 22564b6 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x50]
	mov     r1, #0x2
	str     r1, [r0, #0x54]
	b       branch_22564d0
@ 0x22564c0

.thumb
branch_22564c0: @ 22564c0 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x50]
	mov     r1, #0x3
	str     r1, [r0, #0x54]
	b       branch_22564d0
@ 0x22564ca

.thumb
branch_22564ca: @ 22564ca :thumb
	mov     r1, r0
	add     r1, #0x8c
	str     r2, [r1, #0x0]
.thumb
branch_22564d0: @ 22564d0 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	bx      lr
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
	beq     branch_22564f8
	b       branch_2256514
@ 0x22564e8

.thumb
branch_22564e8: @ 22564e8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256d24
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_2256514
@ 0x22564f8

.thumb
branch_22564f8: @ 22564f8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	bl      Function_2256d48
	cmp     r0, #0x0
	beq     branch_2256514
	ldr     r0, [r4, #0xc]
	bl      0x225424c
	mov     r0, r4
	add     r4, #0x8c
	ldr     r1, [r4, #0x0]
	bl      Function_2256460
.thumb
branch_2256514: @ 2256514 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256518

.thumb
Function_2256518: @ 2256518 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	beq     branch_225652c
	mov     r1, #0x6
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225652c

.thumb
branch_225652c: @ 225652c :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2256d54
	cmp     r0, #0x0
	bne     branch_225653a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225653a

.thumb
branch_225653a: @ 225653a :thumb
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x1
	bne     branch_22565b6
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x2
	bhi     branch_22565b6
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_225656e
	cmp     r0, #0x1
	beq     branch_22565ac
	cmp     r0, #0x2
	bne     branch_22565b2
	mov     r0, r4
	bl      Function_2256af0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	ldr     r0, [pc, #0x130] @ 0x2256698, (=0x663)
	bl      0x2254424
	b       branch_22565b2
@ 0x225656e

.thumb
branch_225656e: @ 225656e :thumb
	ldr     r0, [pc, #0x128] @ 0x2256698, (=0x663)
	bl      0x2254424
	mov     r0, r4
	bl      Function_22569cc
	mov     r3, #0x0
	mov     r2, #0x0
	eor     r1, r3
	eor     r0, r2
	orr     r0, r1
	beq     branch_22565b2
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x3
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256460
	b       branch_22565b2
@ 0x22565ac

.thumb
branch_22565ac: @ 22565ac :thumb
	ldr     r0, [pc, #0xec] @ 0x225669c, (=0x66e)
	bl      0x2254424
.thumb
branch_22565b2: @ 22565b2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22565b6

.thumb
branch_22565b6: @ 22565b6 :thumb
	cmp     r1, #0x1
	beq     branch_22565be
	cmp     r1, #0x7
	bne     branch_2256692
.thumb
branch_22565be: @ 22565be :thumb
	ldr     r1, [r4, #0x14]
	mov     r0, r4
	add     r0, #0x48
	cmp     r1, #0xa
	bhi     branch_2256686
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22565d4

Jumppoints_22565d4:
.hword branch_2256686 - Jumppoints_22565d4 - 2
.hword branch_2256686 - Jumppoints_22565d4 - 2
.hword branch_2256686 - Jumppoints_22565d4 - 2
.hword branch_22565ea - Jumppoints_22565d4 - 2
.hword branch_22565fc - Jumppoints_22565d4 - 2
.hword branch_2256610 - Jumppoints_22565d4 - 2
.hword branch_2256624 - Jumppoints_22565d4 - 2
.hword branch_2256638 - Jumppoints_22565d4 - 2
.hword branch_225664c - Jumppoints_22565d4 - 2
.hword branch_2256660 - Jumppoints_22565d4 - 2
.hword branch_2256674 - Jumppoints_22565d4 - 2
.thumb
branch_22565ea: @ 22565ea :thumb
	mov     r1, #0x0
	ldsb    r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, #0x0]
	ldsb    r2, [r0, r1]
	cmp     r2, #0x9
	ble     branch_2256686
	strb    r1, [r0, #0x0]
	b       branch_2256686
@ 0x22565fc

.thumb
branch_22565fc: @ 22565fc :thumb
	mov     r1, #0x1
	ldsb    r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, #0x1]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x9
	ble     branch_2256686
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
	b       branch_2256686
@ 0x2256610

.thumb
branch_2256610: @ 2256610 :thumb
	mov     r1, #0x0
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x0]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_2256686
	mov     r1, #0x9
	strb    r1, [r0, #0x0]
	b       branch_2256686
@ 0x2256624

.thumb
branch_2256624: @ 2256624 :thumb
	mov     r1, #0x1
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x1]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_2256686
	mov     r1, #0x9
	strb    r1, [r0, #0x1]
	b       branch_2256686
@ 0x2256638

.thumb
branch_2256638: @ 2256638 :thumb
	mov     r1, #0x2
	ldsb    r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, #0x2]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x5
	ble     branch_2256686
	mov     r1, #0x0
	strb    r1, [r0, #0x2]
	b       branch_2256686
@ 0x225664c

.thumb
branch_225664c: @ 225664c :thumb
	mov     r1, #0x3
	ldsb    r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, #0x3]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x9
	ble     branch_2256686
	mov     r1, #0x0
	strb    r1, [r0, #0x3]
	b       branch_2256686
@ 0x2256660

.thumb
branch_2256660: @ 2256660 :thumb
	mov     r1, #0x2
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x2]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_2256686
	mov     r1, #0x5
	strb    r1, [r0, #0x2]
	b       branch_2256686
@ 0x2256674

.thumb
branch_2256674: @ 2256674 :thumb
	mov     r1, #0x3
	ldsb    r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	strb    r2, [r0, #0x3]
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	bge     branch_2256686
	mov     r1, #0x9
	strb    r1, [r0, #0x3]
.thumb
branch_2256686: @ 2256686 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	mov     r0, #0x0
	str     r0, [r4, #0x18]
.thumb
branch_2256692: @ 2256692 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256696


.align 2


.word 0x663 @ 0x2256698
.word 0x66e @ 0x225669c
.thumb
Function_22566a0: @ 22566a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	beq     branch_22566b4
	mov     r1, #0x6
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22566b4

.thumb
branch_22566b4: @ 22566b4 :thumb
	bl      Function_2256a88
	cmp     r0, #0x0
	beq     branch_22566ec
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	mov     r0, r4
	bl      Function_2256a78
	cmp     r0, #0x0
	beq     branch_22566ec
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22566ec

.thumb
branch_22566ec: @ 22566ec :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_2256780
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2256706
	cmp     r0, #0x1
	beq     branch_225670e
	cmp     r0, #0x2
	beq     branch_2256740
	b       branch_2256780
@ 0x2256706

.thumb
branch_2256706: @ 2256706 :thumb
	ldr     r0, [pc, #0x7c] @ 0x2256784, (=0x66e)
	bl      0x2254424
	b       branch_2256780
@ 0x225670e

.thumb
branch_225670e: @ 225670e :thumb
	ldr     r0, [pc, #0x78] @ 0x2256788, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	bl      Function_2256a3c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2256460
	b       branch_2256780
@ 0x2256740

.thumb
branch_2256740: @ 2256740 :thumb
	ldr     r0, [pc, #0x44] @ 0x2256788, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	mov     r0, r4
	bl      Function_2256af0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256460
.thumb
branch_2256780: @ 2256780 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256784

.word 0x66e @ 0x2256784
.word 0x663 @ 0x2256788
.thumb
Function_225678c: @ 225678c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	beq     branch_22567a0
	mov     r1, #0x6
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22567a0

.thumb
branch_22567a0: @ 22567a0 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_225682c
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_22567ba
	cmp     r0, #0x1
	beq     branch_22567e4
	cmp     r0, #0x2
	beq     branch_22567ec
	b       branch_225682c
@ 0x22567ba

.thumb
branch_22567ba: @ 22567ba :thumb
	ldr     r0, [pc, #0x74] @ 0x2256830, (=0x663)
	bl      0x2254424
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	mov     r0, r4
	bl      Function_2256a50
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2256460
	b       branch_225682c
@ 0x22567e4

.thumb
branch_22567e4: @ 22567e4 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2256834, (=0x66e)
	bl      0x2254424
	b       branch_225682c
@ 0x22567ec

.thumb
branch_22567ec: @ 22567ec :thumb
	ldr     r0, [pc, #0x40] @ 0x2256830, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	mov     r0, r4
	bl      Function_2256af0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256460
.thumb
branch_225682c: @ 225682c :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2256830

.word 0x663 @ 0x2256830
.word 0x66e @ 0x2256834
.thumb
Function_2256838: @ 2256838 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	beq     branch_225684c
	mov     r1, #0x6
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225684c

.thumb
branch_225684c: @ 225684c :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_22568d2
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_2256866
	cmp     r0, #0x1
	beq     branch_225686e
	cmp     r0, #0x2
	beq     branch_22568a0
	b       branch_22568d2
@ 0x2256866

.thumb
branch_2256866: @ 2256866 :thumb
	ldr     r0, [pc, #0x70] @ 0x22568d8, (=0x66e)
	bl      0x2254424
	b       branch_22568d2
@ 0x225686e

.thumb
branch_225686e: @ 225686e :thumb
	ldr     r0, [pc, #0x6c] @ 0x22568dc, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2256460
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22568d2
@ 0x22568a0

.thumb
branch_22568a0: @ 22568a0 :thumb
	ldr     r0, [pc, #0x38] @ 0x22568dc, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256460
.thumb
branch_22568d2: @ 22568d2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22568d6


.align 2


.word 0x66e @ 0x22568d8
.word 0x663 @ 0x22568dc
.thumb
Function_22568e0: @ 22568e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x3]
	cmp     r1, #0x0
	beq     branch_22568f4
	mov     r1, #0x6
	bl      Function_2256460
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22568f4

.thumb
branch_22568f4: @ 22568f4 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1
	bne     branch_225698a
	mov     r0, #0x0
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_225690e
	cmp     r0, #0x1
	beq     branch_225693a
	cmp     r0, #0x2
	beq     branch_2256942
	b       branch_225698a
@ 0x225690e

.thumb
branch_225690e: @ 225690e :thumb
	ldr     r0, [pc, #0x80] @ 0x2256990, (=0x663)
	bl      0x2254424
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_225623c
	ldr     r0, [r4, #0x8]
	mov     r1, #0x6
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2256460
	b       branch_225698a
@ 0x225693a

.thumb
branch_225693a: @ 225693a :thumb
	ldr     r0, [pc, #0x58] @ 0x2256994, (=0x66e)
	bl      0x2254424
	b       branch_225698a
@ 0x2256942

.thumb
branch_2256942: @ 2256942 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2256990, (=0x663)
	bl      0x2254424
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_225623c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_225623c
	mov     r0, r4
	bl      Function_2256af0
	ldr     r0, [r4, #0x8]
	mov     r1, #0x7
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x4
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x5
	bl      Function_2256d24
	ldr     r0, [r4, #0x8]
	mov     r1, #0x2
	bl      Function_2256d24
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2256460
.thumb
branch_225698a: @ 225698a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x225698e


.align 2


.word 0x663 @ 0x2256990
.word 0x66e @ 0x2256994
.thumb
Function_2256998: @ 2256998 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x0
	beq     branch_22569a8
	cmp     r0, #0x1
	beq     branch_22569b8
	b       branch_22569c6
@ 0x22569a8

.thumb
branch_22569a8: @ 22569a8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x1
	bl      Function_2256d24
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	b       branch_22569c6
@ 0x22569b8

.thumb
branch_22569b8: @ 22569b8 :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_2256d54
	cmp     r0, #0x0
	beq     branch_22569c6
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22569c6

.thumb
branch_22569c6: @ 22569c6 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22569ca


.align 2, 0
.thumb
Function_22569cc: @ 22569cc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r5
	add     r4, #0x48
	bl      Function_202293c
	str     r0, [r5, #0x68]
	str     r1, [r5, #0x6c]
	mov     r2, #0x0
	str     r2, [r5, #0x70]
	mov     r0, r5
	str     r2, [r5, #0x74]
	mov     r1, #0x1
	add     r0, #0x88
	str     r1, [r0, #0x0]
	str     r2, [r5, #0x78]
	str     r2, [r5, #0x7c]
	mov     r2, #0x2
	ldsb    r3, [r4, r2]
	mov     r0, #0x3
	ldsb    r0, [r4, r0]
	mov     r6, r3
	ldsb    r3, [r4, r1]
	mov     r1, #0x48
	mov     r2, #0xa
	mul     r6, r2
	ldsb    r1, [r5, r1]
	add     r0, r0, r6
	mul     r2, r1
	add     r2, r3, r2
	mov     r1, #0x3c
	mul     r1, r2
	add     r2, r0, r1
	mov     r0, r5
	add     r0, #0x80
	str     r2, [r0, #0x0]
	mov     r0, r5
	asr     r1, r2, #31
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r1, r5
	mov     r2, r5
	add     r1, #0x80
	add     r2, #0x84
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r0, r5
	bl      Function_2256b10
	mov     r0, r5
	add     r0, #0x80
	add     r5, #0x84
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x2256a3a


.align 2, 0


.thumb
Function_2256a3c: @ 2256a3c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	add     r0, #0x88
	str     r1, [r0, #0x0]
	bl      Function_202293c
	str     r0, [r4, #0x70]
	str     r1, [r4, #0x74]
	pop     {r4,pc}
@ 0x2256a50

.thumb
Function_2256a50: @ 2256a50 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	bl      Function_202293c
	mov     r5, r4
	add     r5, #0x68
	ldr     r7, [r4, #0x70]
	ldr     r2, [r4, #0x68]
	ldr     r6, [r4, #0x74]
	sub     r0, r0, r7
	sbc     r1, r6
	ldr     r3, [r5, #0x4]
	add     r0, r2, r0
	adc     r3, r1
	str     r0, [r4, #0x68]
	str     r3, [r5, #0x4]
	mov     r0, #0x1
	add     r4, #0x88
	str     r0, [r4, #0x0]
	pop     {r3-r7,pc}
@ 0x2256a78

.thumb
Function_2256a78: @ 2256a78 :thumb
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2256a84
	mov     r0, #0x1
	bx      lr
@ 0x2256a84

.thumb
branch_2256a84: @ 2256a84 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2256a88

.thumb
Function_2256a88: @ 2256a88 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256aea
	bl      Function_202293c
	ldr     r3, [r4, #0x68]
	ldr     r2, [r4, #0x6c]
	sub     r0, r0, r3
	sbc     r1, r2
	bl      Function_202295c
	mov     r5, r0
	mov     r0, r4
	add     r0, #0x80
	mov     r6, r1
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x84
	ldr     r2, [r0, #0x0]
	sub     r0, r5, r1
	mov     r12, r6
	mov     r0, r12
	sbc     r0, r2
	bcc     branch_2256ac8
	mov     r0, r4
	bl      Function_2256af0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256ac8

.thumb
branch_2256ac8: @ 2256ac8 :thumb
	ldr     r3, [r4, #0x78]
	ldr     r0, [r4, #0x7c]
	eor     r3, r5
	eor     r0, r6
	orr     r0, r3
	beq     branch_2256ae6
	mov     r0, r4
	sub     r1, r1, r5
	sbc     r2, r6
	bl      Function_2256b10
	str     r5, [r4, #0x78]
	str     r6, [r4, #0x7c]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256ae6

.thumb
branch_2256ae6: @ 2256ae6 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256aea

.thumb
branch_2256aea: @ 2256aea :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256aee


.align 2, 0


.thumb
Function_2256af0: @ 2256af0 :thumb
	mov     r1, r0
	mov     r2, #0x0
	add     r1, #0x88
	str     r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x48
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x49
	strb    r2, [r1, #0x0]
	mov     r1, r0
	add     r1, #0x4a
	strb    r2, [r1, #0x0]
	add     r0, #0x4b
	strb    r2, [r0, #0x0]
	bx      lr
@ 0x2256b10

.thumb
Function_2256b10: @ 2256b10 :thumb
	push    {r3-r6}
	mov     r3, r0
	ldr     r0, [pc, #0xa8] @ 0x2256bc0, (=0x4000280)
	mov     r4, #0x1
	strh    r4, [r0, #0x0]
	mov     r4, r0
	add     r4, #0x10
	str     r1, [r4, #0x0]
	str     r2, [r4, #0x4]
	mov     r1, r0
	mov     r4, #0x3c
	add     r1, #0x18
	mov     r2, #0x0
	str     r4, [r1, #0x0]
	str     r2, [r1, #0x4]
	lsr     r1, r0, #11
.thumb
branch_2256b30: @ 2256b30 :thumb
	ldrh    r2, [r0, #0x0]
	tst     r2, r1
	bne     branch_2256b30
	ldr     r0, [pc, #0x8c] @ 0x2256bc4, (=0x40002a0)
	ldr     r6, [pc, #0x84] @ 0x2256bc0, (=0x4000280)
	ldr     r0, [r0, #0x0]
	lsr     r1, r6, #11
.thumb
branch_2256b3e: @ 2256b3e :thumb
	ldrh    r2, [r6, #0x0]
	tst     r2, r1
	bne     branch_2256b3e
	ldr     r5, [pc, #0x80] @ 0x2256bc8, (=0x40002a8)
	mov     r4, #0x0
	ldr     r2, [r5, #0x0]
	mov     r1, r5
	strh    r4, [r6, #0x0]
	sub     r1, #0x18
	str     r0, [r1, #0x0]
	mov     r0, #0xa
	sub     r5, #0x10
	str     r0, [r5, #0x0]
	str     r4, [r5, #0x4]
	ldr     r4, [pc, #0x64] @ 0x2256bc0, (=0x4000280)
	lsr     r0, r4, #11
.thumb
branch_2256b5e: @ 2256b5e :thumb
	ldrh    r1, [r4, #0x0]
	tst     r1, r0
	bne     branch_2256b5e
	ldr     r0, [pc, #0x5c] @ 0x2256bc4, (=0x40002a0)
	ldr     r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x48
	strb    r1, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x2256bc0, (=0x4000280)
	lsr     r0, r1, #11
.thumb
branch_2256b72: @ 2256b72 :thumb
	ldrh    r4, [r1, #0x0]
	tst     r4, r0
	bne     branch_2256b72
	ldr     r0, [pc, #0x4c] @ 0x2256bc8, (=0x40002a8)
	mov     r4, r3
	ldr     r5, [r0, #0x0]
	add     r4, #0x49
	strb    r5, [r4, #0x0]
	mov     r4, #0x0
	strh    r4, [r1, #0x0]
	mov     r1, r0
	sub     r1, #0x18
	str     r2, [r1, #0x0]
	mov     r1, #0xa
	sub     r0, #0x10
	str     r1, [r0, #0x0]
	ldr     r2, [pc, #0x2c] @ 0x2256bc0, (=0x4000280)
	str     r4, [r0, #0x4]
	lsr     r0, r2, #11
.thumb
branch_2256b98: @ 2256b98 :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256b98
	ldr     r0, [pc, #0x24] @ 0x2256bc4, (=0x40002a0)
	ldr     r2, [pc, #0x1c] @ 0x2256bc0, (=0x4000280)
	ldr     r1, [r0, #0x0]
	mov     r0, r3
	add     r0, #0x4a
	strb    r1, [r0, #0x0]
	lsr     r0, r2, #11
.thumb
branch_2256bac: @ 2256bac :thumb
	ldrh    r1, [r2, #0x0]
	tst     r1, r0
	bne     branch_2256bac
	ldr     r0, [pc, #0x14] @ 0x2256bc8, (=0x40002a8)
	add     r3, #0x4b
	ldr     r0, [r0, #0x0]
	strb    r0, [r3, #0x0]
	pop     {r3-r6}
	bx      lr
@ 0x2256bbe


.align 2


.word 0x4000280 @ 0x2256bc0
.word 0x40002a0 @ 0x2256bc4
.word 0x40002a8 @ 0x2256bc8
.thumb
Function_2256bcc: @ 2256bcc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x8
	mov     r1, #0xac
	bl      malloc
	mov     r4, r0
	beq     branch_2256c08
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
	bl      Function_2256c20
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2256c08
	str     r4, [r6, #0x0]
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2256c08

.thumb
branch_2256c08: @ 2256c08 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2256c0c

.thumb
Function_2256c0c: @ 2256c0c :thumb
	push    {r4,lr}
	mov     r4, r0
	beq     branch_2256c1c
	bl      Function_2256cf4
	mov     r0, r4
	bl      free
.thumb
branch_2256c1c: @ 2256c1c :thumb
	pop     {r4,pc}
@ 0x2256c1e


.align 2, 0


.thumb
Function_2256c20: @ 2256c20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
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
	bl      Function_2006ec0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r3, #0xa
	str     r2, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xc
	mov     r1, #0x5e
	lsl     r3, r3, #8
	bl      Function_2006ec0
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x78
	mov     r1, #0xc
	mov     r2, #0x5c
	mov     r3, #0x5d
	bl      0x2255958
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r0, #0x8c
	mov     r1, #0xc
	mov     r2, #0x3
	mov     r3, #0x4
	bl      0x2255958
	mov     r0, r7
	str     r0, [sp, #0x14]
	add     r0, #0x78
	str     r0, [sp, #0x14]
	mov     r0, r7
	str     r0, [sp, #0x10]
	add     r0, #0x8c
	ldr     r6, [pc, #0x68] @ 0x2256cf0, (=0x22571e4)
	mov     r4, #0x0
	mov     r5, r7
	str     r0, [sp, #0x10]
.thumb
branch_2256c8e: @ 2256c8e :thumb
	cmp     r4, #0xd
	blt     branch_2256ca4
	cmp     r4, #0x10
	bgt     branch_2256ca4
	ldr     r0, [r7, #0x30]
	ldr     r2, [sp, #0x10]
	mov     r1, r6
	bl      0x2255810
	str     r0, [r5, #0x34]
	b       branch_2256cb6
@ 0x2256ca4

.thumb
branch_2256ca4: @ 2256ca4 :thumb
	ldr     r0, [r7, #0x30]
	ldr     r2, [sp, #0x14]
	mov     r1, r6
	bl      0x2255810
	mov     r1, #0x50
	str     r0, [r5, #0x34]
	bl      0x2255940
.thumb
branch_2256cb6: @ 2256cb6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r6, #0x10
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x11
	blt     branch_2256c8e
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_2257054
	ldr     r1, [sp, #0xc]
	mov     r0, r7
	bl      Function_2257094
	ldr     r0, [sp, #0xc]
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_2256cdc
	mov     r1, #0x1
	b       branch_2256cde
@ 0x2256cdc

.thumb
branch_2256cdc: @ 2256cdc :thumb
	mov     r1, #0x0
.thumb
branch_2256cde: @ 2256cde :thumb
	mov     r0, r7
	bl      Function_22570c4
	mov     r0, #0x0
	add     r7, #0xa8
	str     r0, [r7, #0x0]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2256cee


.align 2


.word 0x22571e4 @ 0x2256cf0
.thumb
Function_2256cf4: @ 2256cf4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2256cfc: @ 2256cfc :thumb
	ldr     r1, [r5, #0x34]
	cmp     r1, #0x0
	beq     branch_2256d08
	ldr     r0, [r6, #0x30]
	bl      0x22558b0
.thumb
branch_2256d08: @ 2256d08 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x11
	blt     branch_2256cfc
	mov     r0, r6
	add     r0, #0x78
	bl      0x22559b0
	add     r6, #0x8c
	mov     r0, r6
	bl      0x22559b0
	pop     {r4-r6,pc}
@ 0x2256d22


.align 2, 0


.thumb
Function_2256d24: @ 2256d24 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, r0
	add     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2256d44, (=0x2257178)
	ldr     r3, [r2, #0x0]
	bl      0x225517c
	add     sp, #0xc
	pop     {pc}
@ 0x2256d42


.align 2


.word 0x2257178 @ 0x2256d44
.thumb
Function_2256d48: @ 2256d48 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256d50, (=0x2255131)
	add     r0, #0x8
	bx      r3
@ 0x2256d4e


.align 2


.word 0x2255131 @ 0x2256d50
.thumb
Function_2256d54: @ 2256d54 :thumb
	ldr     r3, [pc, #0x4] @ 0x2256d5c, (=0x2255155)
	add     r0, #0x8
	bx      r3
@ 0x2256d5a


.align 2


.word 0x2255155 @ 0x2256d5c
.thumb
Function_2256d60: @ 2256d60 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x225523c
	add     r0, #0x8
	mov     r1, r4
	bl      0x2255224
	pop     {r4,pc}
@ 0x2256d72


.align 2, 0


.thumb
Function_2256d74: @ 2256d74 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0xc4] @ 0x2256e4c, (=0x225715c)
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
	mov     r1, #0x5b
	mov     r3, #0x6
	bl      LoadFromNARC_RGCN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0xc
	mov     r1, #0x5a
	mov     r3, #0x6
	bl      LoadFromNARC_RCSN
	mov     r0, #0x0
	mov     r1, r0
	bl      0x22546b8
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019448
	ldr     r1, [pc, #0x7c] @ 0x2256e50, (=0x4001000)
	ldr     r0, [pc, #0x7c] @ 0x2256e54, (=0xffffe0ff)
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
	ldr     r1, [r4, #0x0]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x1
	beq     branch_2256e08
	cmp     r0, #0x2
	beq     branch_2256dfe
	cmp     r0, #0x3
	beq     branch_2256e1a
	b       branch_2256e40
@ 0x2256dfe

.thumb
branch_2256dfe: @ 2256dfe :thumb
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2256d24
	b       branch_2256e40
@ 0x2256e08

.thumb
branch_2256e08: @ 2256e08 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	b       branch_2256e40
@ 0x2256e1a

.thumb
branch_2256e1a: @ 2256e1a :thumb
	ldr     r0, [r1, #0x10]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x34]
	beq     branch_2256e32
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	b       branch_2256e40
@ 0x2256e32

.thumb
branch_2256e32: @ 2256e32 :thumb
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
.thumb
branch_2256e40: @ 2256e40 :thumb
	mov     r0, r5
	bl      Function_2256d60
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x2256e4a


.align 2


.word 0x225715c @ 0x2256e4c
.word 0x4001000 @ 0x2256e50
.word 0xffffe0ff @ 0x2256e54
.thumb
Function_2256e58: @ 2256e58 :thumb
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
	beq     branch_2256e7a
	cmp     r0, #0x1
	beq     branch_2256e88
	pop     {r3-r5,pc}
@ 0x2256e7a

.thumb
branch_2256e7a: @ 2256e7a :thumb
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2256e88: @ 2256e88 :thumb
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2256d48
	cmp     r0, #0x0
	beq     branch_2256ea2
	ldr     r0, [r4, #0x4]
	mov     r1, #0x6
	bl      Function_2019044
	mov     r0, r5
	bl      Function_2256d60
.thumb
branch_2256ea2: @ 2256ea2 :thumb
	pop     {r3-r5,pc}
@ 0x2256ea4

.thumb
Function_2256ea4: @ 2256ea4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_22570c4
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, r5
	bl      Function_2256d60
	pop     {r3-r5,pc}
@ 0x2256ed6


.align 2, 0


.thumb
Function_2256ed8: @ 2256ed8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22570c4
	ldr     r0, [r4, #0x34]
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	mov     r0, r5
	bl      Function_2256d60
	pop     {r3-r5,pc}
@ 0x2256f0a


.align 2, 0


.thumb
Function_2256f0c: @ 2256f0c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_2257054
	mov     r0, r5
	bl      Function_2256d60
	pop     {r3-r5,pc}
@ 0x2256f2e


.align 2, 0


.thumb
Function_2256f30: @ 2256f30 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r0, r5
	bl      0x225523c
	mov     r4, r0
	mov     r0, r5
	bl      0x2255240
	mov     r1, r0
	mov     r0, r4
	bl      Function_2257094
	mov     r0, r5
	bl      Function_2256d60
	pop     {r3-r5,pc}
@ 0x2256f52


.align 2, 0


.thumb
Function_2256f54: @ 2256f54 :thumb
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
	beq     branch_2256f76
	cmp     r0, #0x1
	beq     branch_2256f9a
	pop     {r3-r5,pc}
@ 0x2256f76

.thumb
branch_2256f76: @ 2256f76 :thumb
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2256f9a: @ 2256f9a :thumb
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2256fac
	mov     r0, r5
	bl      Function_2256d60
	pop     {r3-r5,pc}
@ 0x2256fac

.thumb
branch_2256fac: @ 2256fac :thumb
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x8
	bcc     branch_225700a
	mov     r0, r4
	add     r0, #0xa8
	ldr     r1, [r0, #0x0]
	mov     r0, #0x1
	eor     r1, r0
	mov     r0, r4
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x34]
	beq     branch_2256ff0
	mov     r1, #0x2
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x1
	bl      0x22558c4
	b       branch_2256ffe
@ 0x2256ff0

.thumb
branch_2256ff0: @ 2256ff0 :thumb
	mov     r1, #0x3
	bl      0x22558c4
	ldr     r0, [r4, #0x38]
	mov     r1, #0x0
	bl      0x22558c4
.thumb
branch_2256ffe: @ 2256ffe :thumb
	ldr     r0, [pc, #0xc] @ 0x225700c, (=0x677)
	bl      0x2254424
	mov     r0, #0x0
	add     r4, #0xa4
	str     r0, [r4, #0x0]
.thumb
branch_225700a: @ 225700a :thumb
	pop     {r3-r5,pc}
@ 0x225700c

.word 0x677 @ 0x225700c
.thumb
Function_2257010: @ 2257010 :thumb
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
	beq     branch_2257032
	cmp     r0, #0x1
	beq     branch_2257040
	pop     {r3-r5,pc}
@ 0x2257032

.thumb
branch_2257032: @ 2257032 :thumb
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xa0
	str     r1, [r0, #0x0]
	mov     r0, r5
	bl      0x225524c
.thumb
branch_2257040: @ 2257040 :thumb
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2256d48
	cmp     r0, #0x0
	beq     branch_2257052
	mov     r0, r5
	bl      Function_2256d60
.thumb
branch_2257052: @ 2257052 :thumb
	pop     {r3-r5,pc}
@ 0x2257054

.thumb
Function_2257054: @ 2257054 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldrb    r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2257064
	mov     r1, #0x6
	b       branch_2257066
@ 0x2257064

.thumb
branch_2257064: @ 2257064 :thumb
	mov     r1, #0x5
.thumb
branch_2257066: @ 2257066 :thumb
	ldr     r0, [r5, #0x3c]
	bl      0x22558c4
	ldrb    r0, [r4, #0x5]
	cmp     r0, #0x0
	beq     branch_2257076
	mov     r1, #0x8
	b       branch_2257078
@ 0x2257076

.thumb
branch_2257076: @ 2257076 :thumb
	mov     r1, #0x7
.thumb
branch_2257078: @ 2257078 :thumb
	ldr     r0, [r5, #0x40]
	bl      0x22558c4
	ldrb    r0, [r4, #0x6]
	cmp     r0, #0x0
	beq     branch_2257088
	mov     r1, #0xa
	b       branch_225708a
@ 0x2257088

.thumb
branch_2257088: @ 2257088 :thumb
	mov     r1, #0x9
.thumb
branch_225708a: @ 225708a :thumb
	ldr     r0, [r5, #0x44]
	bl      0x22558c4
	pop     {r3-r5,pc}
@ 0x2257092


.align 2, 0


.thumb
Function_2257094: @ 2257094 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x0
	mov     r5, r0
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, #0x68]
	bl      0x22558c4
	mov     r1, #0x1
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, #0x6c]
	bl      0x22558c4
	mov     r1, #0x2
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, #0x70]
	bl      0x22558c4
	mov     r1, #0x3
	ldsb    r1, [r4, r1]
	ldr     r0, [r5, #0x74]
	bl      0x22558c4
	pop     {r3-r5,pc}
@ 0x22570c4

.thumb
Function_22570c4: @ 22570c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x48]
	mov     r4, r1
	bl      0x2255914
	ldr     r0, [r5, #0x4c]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x50]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x54]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x58]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x5c]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x60]
	mov     r1, r4
	bl      0x2255914
	ldr     r0, [r5, #0x64]
	mov     r1, r4
	bl      0x2255914
	pop     {r3-r5,pc}
@ 0x225710a


.align 2, 0
.thumb
Function_225710c: @ 225710c :thumb
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x2257112


.align 2, 0
Unknown_2257114: @ 0x2257114
.incbin "./baserom/overlay/overlay_0046.bin", 0xf54, 0x2257300 - 0x2257114


@end 0x2257300




