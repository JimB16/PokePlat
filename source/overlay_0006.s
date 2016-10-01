

.section .iwram6, "ax"


.thumb
Function_223e140: @ 223e140 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x38]
	cmp     r1, #0x5
	bhi     branch_223e196
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
	lsl     r2, r1, #0
	lsl     r6, r2, #0
	lsl     r6, r7, #0
	lsl     r0, r5, #0
	lsl     r4, r6, #0
	lsl     r6, r7, #0
	bl      Function_223e234
	ldr     r0, [r4, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x38]
	pop     {r4,pc}
@ 0x223e16e


.incbin "./baserom/overlay/overlay_0006.bin", 0x2e, 0x223e196 - 0x223e16e


.thumb
branch_223e196: @ 223e196 :thumb
	pop     {r4,pc}
@ 0x223e198


.incbin "./baserom/overlay/overlay_0006.bin", 0x58, 0x223e234 - 0x223e198


.thumb
Function_223e234: @ 223e234 :thumb
	ldr     r3, [pc, #0x8] @ 0x223e240, (=Function_200da3c+1)
	mov     r2, #0x1
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x223e244, (=#0x223e25d)
	lsl     r2, r2, #10
	bx      r3
@ 0x223e240

.word Function_200da3c+1 @ 0x223e240
.word 0x223e25d @ 0x223e244

.incbin "./baserom/overlay/overlay_0006.bin", 0x108, 0x2243258 - 0x223e248


.thumb
Function_2243258: @ 2243258 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r2
	ldr     r0, [sp, #0x1c]
	mov     r7, r3
	strb    r6, [r5, #0x0]
	ldr     r4, [sp, #0x18]
	strb    r7, [r5, #0x1]
	strb    r4, [r5, #0x2]
	str     r0, [sp, #0x1c]
	strb    r0, [r5, #0x3]
	ldr     r0, [sp, #0x20]
	mov     r2, #0x4
	strb    r0, [r5, #0x4]
	ldr     r0, [sp, #0x24]
	strb    r0, [r5, #0x5]
	ldr     r0, [sp, #0x28]
	strb    r0, [r5, #0x6]
	ldr     r0, [sp, #0x2c]
	strb    r0, [r5, #0x7]
	mov     r0, r1
	mov     r1, r5
	add     r1, #0xc
	bl      Function_20095c4
	str     r0, [r5, #0x8]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0xc
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4e
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x4f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x5
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r6, #3
	bl      Function_2245f44
	mov     r1, #0x51
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r7, #3
	bl      Function_2245f44
	mov     r1, #0x52
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x4
	lsl     r1, r4, #3
	bl      Function_2245f44
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x1c]
	mov     r0, #0x4
	lsl     r1, r1, #3
	bl      Function_2245f44
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r1, #0x0
	cmp     r6, #0x0
	ble     branch_2243334
	ble     branch_2243334
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	lsl     r0, r0, #16
	asr     r0, r0, #16
.thumb
branch_2243324: @ 2243324 :thumb
	mov     r3, #0x51
	lsl     r3, r3, #2
	ldr     r3, [r5, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r3, r2]
	add     r2, #0x8
	cmp     r1, r6
	blt     branch_2243324
.thumb
branch_2243334: @ 2243334 :thumb
	mov     r3, #0x0
	cmp     r7, #0x0
	ble     branch_2243354
	ble     branch_2243354
	ldr     r0, [sp, #0x24]
	mov     r6, #0x52
	lsl     r0, r0, #16
	mov     r2, r3
	asr     r1, r0, #16
	lsl     r6, r6, #2
.thumb
branch_2243348: @ 2243348 :thumb
	ldr     r0, [r5, r6]
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r0, r2]
	add     r2, #0x8
	cmp     r3, r7
	blt     branch_2243348
.thumb
branch_2243354: @ 2243354 :thumb
	mov     r1, #0x0
	cmp     r4, #0x0
	ble     branch_2243374
	ble     branch_2243374
	ldr     r2, [sp, #0x28]
	mov     r0, r1
	lsl     r2, r2, #16
	asr     r6, r2, #16
	mov     r2, #0x53
	lsl     r2, r2, #2
.thumb
branch_2243368: @ 2243368 :thumb
	ldr     r3, [r5, r2]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r6, [r3, r0]
	add     r0, #0x8
	cmp     r1, r4
	blt     branch_2243368
.thumb
branch_2243374: @ 2243374 :thumb
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	cmp     r0, #0x0
	ble     branch_2243398
	ble     branch_2243398
	ldr     r2, [sp, #0x2c]
	mov     r3, #0x15
	lsl     r2, r2, #16
	mov     r0, r1
	asr     r4, r2, #16
	lsl     r3, r3, #4
.thumb
branch_224338a: @ 224338a :thumb
	ldr     r2, [r5, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r4, [r2, r0]
	ldr     r2, [sp, #0x1c]
	add     r0, #0x8
	cmp     r1, r2
	blt     branch_224338a
.thumb
branch_2243398: @ 2243398 :thumb
	pop     {r3-r7,pc}
@ 0x224339a


.align 2, 0


.thumb
Function_224339c: @ 224339c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22433cc
	mov     r4, r6
	mov     r7, #0x4
.thumb
branch_22433ac: @ 22433ac :thumb
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_22433c2
	ldr     r0, [r0, #0x4]
	bl      Function_200a4e4
.thumb
branch_22433c2: @ 22433c2 :thumb
	ldrb    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_22433ac
.thumb
branch_22433cc: @ 22433cc :thumb
	ldrb    r0, [r5, #0x1]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_22433f8
	mov     r4, r6
	mov     r7, #0x5
.thumb
branch_22433d8: @ 22433d8 :thumb
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_22433ee
	ldr     r0, [r0, #0x4]
	bl      Function_200a6dc
.thumb
branch_22433ee: @ 22433ee :thumb
	ldrb    r0, [r5, #0x1]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_22433d8
.thumb
branch_22433f8: @ 22433f8 :thumb
	ldrb    r0, [r5, #0x2]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2243424
	mov     r4, r6
	mov     r7, #0x6
.thumb
branch_2243404: @ 2243404 :thumb
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_224341a
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_224341a: @ 224341a :thumb
	ldrb    r0, [r5, #0x2]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_2243404
.thumb
branch_2243424: @ 2243424 :thumb
	ldrb    r0, [r5, #0x3]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_2243450
	mov     r4, r6
	mov     r7, #0x7
.thumb
branch_2243430: @ 2243430 :thumb
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	ldsb    r2, [r5, r7]
	add     r0, r1, r4
	ldsh    r1, [r1, r4]
	cmp     r2, r1
	beq     branch_2243446
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
.thumb
branch_2243446: @ 2243446 :thumb
	ldrb    r0, [r5, #0x3]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_2243430
.thumb
branch_2243450: @ 2243450 :thumb
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x5
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2009754
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20181c4
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20181c4
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_20181c4
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	bl      Function_20181c4
	ldr     r0, [r5, #0x8]
	bl      Function_20219c0
	ldr     r0, [r5, #0x8]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x22434ae


.align 2, 0


.thumb
Function_22434b0: @ 22434b0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_2243516
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x4
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22434d2: @ 22434d2 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_224350e
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009a4c
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x224350e

.thumb
branch_224350e: @ 224350e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22434d2
.thumb
branch_2243516: @ 2243516 :thumb
	bl      Function_2022974
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224351e


.align 2, 0


.thumb
Function_2243520: @ 2243520 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x0]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_224354e
	mov     r4, #0x51
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243534: @ 2243534 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_2243546
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_200a3dc
	pop     {r4-r6,pc}
@ 0x2243546

.thumb
branch_2243546: @ 2243546 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243534
.thumb
branch_224354e: @ 224354e :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2243554

.thumb
Function_2243554: @ 2243554 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x0]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_2243582
	mov     r4, #0x51
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243568: @ 2243568 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_224357a
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r4-r6,pc}
@ 0x224357a

.thumb
branch_224357a: @ 224357a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243568
.thumb
branch_2243582: @ 2243582 :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2243588

.thumb
Function_2243588: @ 2243588 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x14]
	str     r1, [sp, #0x10]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_22435f0
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x5
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22435aa: @ 22435aa :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_22435e8
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x4
	str     r1, [sp, #0xc]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	bl      Function_2009b04
	mov     r1, #0x52
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x18
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r3-r7,pc}
@ 0x22435e8

.thumb
branch_22435e8: @ 22435e8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22435aa
.thumb
branch_22435f0: @ 22435f0 :thumb
	bl      Function_2022974
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22435f8

.thumb
Function_22435f8: @ 22435f8 :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x1]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_2243626
	mov     r4, #0x52
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_224360c: @ 224360c :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_224361e
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_200a640
	pop     {r4-r6,pc}
@ 0x224361e

.thumb
branch_224361e: @ 224361e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_224360c
.thumb
branch_2243626: @ 2243626 :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x224362c

.thumb
Function_224362c: @ 224362c :thumb
	push    {r4-r6,lr}
	ldrb    r3, [r0, #0x1]
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_224365a
	mov     r4, #0x52
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	mov     r4, r2
	mov     r6, r0
.thumb
branch_2243640: @ 2243640 :thumb
	ldsh    r5, [r6, r4]
	cmp     r1, r5
	bne     branch_2243652
	lsl     r1, r2, #3
	add     r0, r0, r1
	ldr     r0, [r0, #0x4]
	bl      Function_2009d4c
	pop     {r4-r6,pc}
@ 0x2243652

.thumb
branch_2243652: @ 2243652 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r6, #0x8
	cmp     r2, r3
	blt     branch_2243640
.thumb
branch_224365a: @ 224365a :thumb
	bl      Function_2022974
	pop     {r4-r6,pc}
@ 0x2243660

.thumb
Function_2243660: @ 2243660 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_22436c6
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r3, [r6, r0]
	mov     r0, #0x6
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_2243682: @ 2243682 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_22436be
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x53
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009bc4
	mov     r1, #0x53
	lsl     r1, r1, #2
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x22436be

.thumb
branch_22436be: @ 22436be :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_2243682
.thumb
branch_22436c6: @ 22436c6 :thumb
	bl      Function_2022974
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22436ce


.align 2, 0


.thumb
Function_22436d0: @ 22436d0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	ldrb    r5, [r6, #0x0]
	str     r2, [sp, #0x10]
	str     r1, [sp, #0xc]
	mov     r7, r3
	mov     r2, #0x0
	cmp     r5, #0x0
	ble     branch_2243736
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r3, [r6, r0]
	mov     r0, #0x7
	ldsb    r4, [r6, r0]
	mov     r12, r3
	mov     r0, r2
.thumb
branch_22436f2: @ 22436f2 :thumb
	ldsh    r1, [r3, r0]
	cmp     r4, r1
	bne     branch_224372e
	lsl     r4, r2, #3
	mov     r0, r12
	strh    r7, [r0, r4]
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r6, r0]
	mov     r3, #0x0
	add     r1, r1, r4
	strh    r3, [r1, #0x2]
	str     r7, [sp, #0x0]
	mov     r1, #0x3
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	sub     r0, #0x10
	ldr     r0, [r6, r0]
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x10]
	bl      Function_2009bc4
	mov     r1, #0x15
	lsl     r1, r1, #4
	ldr     r1, [r6, r1]
	add     sp, #0x14
	add     r1, r1, r4
	str     r0, [r1, #0x4]
	pop     {r4-r7,pc}
@ 0x224372e

.thumb
branch_224372e: @ 224372e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r5
	blt     branch_22436f2
.thumb
branch_2243736: @ 2243736 :thumb
	bl      Function_2022974
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x224373e


.align 2, 0


.thumb
Function_2243740: @ 2243740 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	mov     r4, r1
	mov     r1, r2
	mov     r0, #0x7
	mov     r2, r3
	ldsb    r3, [r5, r0]
	ldr     r6, [sp, #0x84]
	cmp     r6, r3
	bne     branch_224375a
	sub     r0, #0x8
	str     r0, [sp, #0x84]
.thumb
branch_224375a: @ 224375a :thumb
	ldr     r0, [sp, #0x84]
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x88]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x4d
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r5, r6]
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r5, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
	ldr     r0, [r5, #0x8]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x4
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_22437c2
	bl      Function_2022974
.thumb
branch_22437c2: @ 22437c2 :thumb
	mov     r0, r4
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x22437c8

.thumb
Function_22437c8: @ 22437c8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_2021d28
	mov     r2, r0
	ldmia   r2!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r2, #0x0]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x22437dc

.thumb
Function_22437dc: @ 22437dc :thumb
	push    {r3-r6,lr}
	add     sp, #-0x34
	mov     r4, r0
	mov     r2, #0x0
	add     r0, sp, #0x1c
	str     r2, [r0, #0x0]
	str     r2, [r0, #0x4]
	add     r3, sp, #0x28
	str     r2, [r3, #0x0]
	str     r2, [r3, #0x4]
	ldr     r6, [pc, #0x50] @ 0x2243844, (=#0x224918c)
	str     r2, [r0, #0x8]
	ldmia   r6!, {r0,r1}
	add     r5, sp, #0x10
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r2, [r3, #0x8]
	str     r0, [r5, #0x0]
	mov     r1, r3
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x84
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2243740
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0x1c
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	add     sp, #0x34
	pop     {r3-r6,pc}
@ 0x2243842


.incbin "./baserom/overlay/overlay_0006.bin", 0x5702, 0x2243844 - 0x2243842


.word 0x224918c @ 0x2243844



.thumb
Function_2243848: @ 2243848 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r3, #0x0
	add     r2, sp, #0x10
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	cmp     r1, #0x1
	bne     branch_224385c
	mov     r3, #0x1
.thumb
branch_224385c: @ 224385c :thumb
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x83
	str     r1, [sp, #0xc]
	add     r1, sp, #0x10
	bl      Function_2243740
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2243888

.thumb
Function_2243888: @ 2243888 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	add     r5, sp, #0x18
	mov     r4, #0x0
	str     r4, [r5, #0x0]
	str     r4, [r5, #0x4]
	str     r0, [sp, #0xc]
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x10]
	str     r4, [r5, #0x8]
	str     r1, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x82
	str     r0, [sp, #0x4]
	mov     r0, r1
	ldr     r1, [pc, #0xc] @ 0x22438b8, (=#0x224925c)
	mov     r2, r5
	mov     r3, r4
	bl      Function_2071330
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x22438b6


.incbin "./baserom/overlay/overlay_0006.bin", 0x5776, 0x22438b8 - 0x22438b6


.word 0x224925c @ 0x22438b8



.thumb
Function_22438bc: @ 22438bc :thumb
	push    {r3,lr}
	bl      Function_2071598
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x22438c6


.align 2, 0


.thumb
Function_22438c8: @ 22438c8 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      Function_20715bc
	mov     r2, r4
	mov     r3, r0
	add     r2, #0x58
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x64]
	bl      Function_22437dc
	str     r0, [r4, #0x68]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22438ea


.align 2, 0


.thumb
Function_22438ec: @ 22438ec :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	ldr     r0, [r4, #0x6c]
	cmp     r0, #0x0
	beq     branch_2243900
	bl      Function_207136c
.thumb
branch_2243900: @ 2243900 :thumb
	ldr     r0, [r4, #0x70]
	cmp     r0, #0x0
	beq     branch_224390a
	bl      0x21f0efc @ Function_5_21f0efc
.thumb
branch_224390a: @ 224390a :thumb
	mov     r0, r5
	bl      Function_207136c
	pop     {r3-r5,pc}
@ 0x2243912


.align 2, 0


.thumb
Function_2243914: @ 2243914 :thumb
	ldr     r3, [pc, #0x4] @ 0x224391c, (=Function_2021bd4+1)
	ldr     r0, [r1, #0x68]
	bx      r3
@ 0x224391a


.incbin "./baserom/overlay/overlay_0006.bin", 0x57da, 0x224391c - 0x224391a


.word Function_2021bd4+1 @ 0x224391c



.thumb
Function_2243920: @ 2243920 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x224393c, (=#0x2249110)
	ldr     r4, [r0, r1]
.thumb
branch_224392c: @ 224392c :thumb
	ldrb    r1, [r5, #0x1]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_224392c
	pop     {r3-r5,pc}
@ 0x224393c

.word 0x2249110 @ 0x224393c

.incbin "./baserom/overlay/overlay_0006.bin", 0x5800, 0x2243950 - 0x2243940


.thumb
Function_2243950: @ 2243950 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	ldr     r4, [pc, #0x14c] @ 0x2243aa4, (=#0x2249150)
	mov     r2, r0
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x24
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r4, [pc, #0x144] @ 0x2243aa8, (=#0x22491a4)
	str     r0, [r3, #0x0]
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x18
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r2
	bl      Function_2071598
	mov     r4, r0
	mov     r3, #0x1
	mov     r5, r4
	strb    r3, [r4, #0x0]
	mov     r2, #0x0
	strb    r2, [r4, #0x2]
	strb    r2, [r4, #0x1]
	str     r2, [r4, #0x4]
	add     r6, sp, #0x24
	ldmia   r6!, {r0,r1}
	add     r5, #0x8
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x18]
	str     r2, [r4, #0x1c]
	ldr     r0, [pc, #0x114] @ 0x2243aac, (=#0x15e000)
	mov     r2, r4
	add     r5, sp, #0x18
	str     r0, [r4, #0x38]
	ldmia   r5!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r2, #0x0]
	lsl     r0, r3, #10
	str     r0, [r4, #0x50]
	mov     r0, #0x2d
	lsl     r0, r0, #12
	str     r0, [r4, #0x40]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [r4, #0x48]
	lsl     r0, r3, #17
	str     r0, [r4, #0x4c]
	mov     r0, #0x2d
	bl      Function_201d264
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x24
	bl      Function_2021c50
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x68]
	bl      Function_2021c94
	ldr     r0, [r4, #0x68]
	mov     r1, #0x84
	bl      Function_2021f58
	ldr     r0, [r4, #0x68]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x58]
	ldr     r1, [r4, #0x60]
	bl      Function_2245b4c
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x64] @ 0x2243ab0, (=#0xfff88000)
	mov     r1, #0x1
	mov     r3, #0xc
	str     r0, [r4, #0x70]
	bl      0x21f0f10 @ Function_5_21f0f10
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x54] @ 0x2243ab4, (=#0x22491c8)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	ldr     r4, [r4, #0x60]
	mov     r0, r4
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2021d6c
	bl      Function_2243f2c
	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x2243aa2


.incbin "./baserom/overlay/overlay_0006.bin", 0x5962, 0x2243aa4 - 0x2243aa2


.word 0x2249150 @ 0x2243aa4
.word 0x22491a4 @ 0x2243aa8
.word 0x15e000 @ 0x2243aac
.word 0xfff88000 @ 0x2243ab0
.word 0x22491c8 @ 0x2243ab4



.thumb
Function_2243ab8: @ 2243ab8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r6, [r5, #0x68]
	ldr     r4, [r5, #0x60]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	bpl     branch_2243ad0
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2243ad0: @ 2243ad0 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #10
	cmp     r1, r0
	ble     branch_2243ae2
	mov     r0, #0x7
	lsl     r0, r0, #10
	sub     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2243ae2: @ 2243ae2 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2243aee
	str     r0, [r5, #0x4c]
.thumb
branch_2243aee: @ 2243aee :thumb
	mov     r0, #0x2d
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0x5a
	bge     branch_2243b36
	mov     r0, #0x1
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243b36: @ 2243b36 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	bge     branch_2243b48
	str     r0, [r5, #0x2c]
.thumb
branch_2243b48: @ 2243b48 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	bge     branch_2243b5a
	str     r0, [r5, #0x30]
.thumb
branch_2243b5a: @ 2243b5a :thumb
	mov     r1, r5
	mov     r0, r6
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, #0x12
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #12
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bne     branch_2243baa
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_2243bb0
@ 0x2243baa

.thumb
branch_2243baa: @ 2243baa :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2243bb0: @ 2243bb0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2243bb6


.align 2, 0


.thumb
Function_2243bb8: @ 2243bb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x6c]
	bl      Function_2245bc8
	ldr     r0, [r4, #0x70]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xc
	bl      0x21f0f10 @ Function_5_21f0f10
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r0, [r4, #0x50]
	lsl     r0, r0, #9
	str     r0, [r4, #0x40]
	mov     r0, #0x0
	str     r0, [r4, #0x48]
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r0, [r4, #0x4c]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243bec

.thumb
Function_2243bec: @ 2243bec :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x68]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r5, #0x4c]
	cmp     r2, r1
	ble     branch_2243c10
	lsl     r0, r0, #4
	str     r0, [r5, #0x4c]
.thumb
branch_2243c10: @ 2243c10 :thumb
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	mov     r0, #0x80
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	mov     r0, #0xa
	ldr     r1, [r5, #0x40]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_2243c54
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243c54: @ 2243c54 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #12
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	str     r1, [r5, #0x38]
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_2243c86
	str     r0, [r5, #0x2c]
.thumb
branch_2243c86: @ 2243c86 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_2243c98
	str     r0, [r5, #0x30]
.thumb
branch_2243c98: @ 2243c98 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	sub     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r1, [sp, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r1, r0, #12
	mov     r0, #0xf
	mvn     r0, r0
	cmp     r1, r0
	bgt     branch_2243cd2
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
.thumb
branch_2243cd2: @ 2243cd2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243cd8

.thumb
Function_2243cd8: @ 2243cd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x68]
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021d6c
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243cfa


.align 2, 0


.thumb
Function_2243cfc: @ 2243cfc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x14
	bge     branch_2243d12
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2243d12

.thumb
branch_2243d12: @ 2243d12 :thumb
	ldr     r3, [pc, #0xa0] @ 0x2243db4, (=#0x2249174)
	add     r2, sp, #0xc
	ldmia   r3!, {r0,r1}
	mov     r6, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x98] @ 0x2243db8, (=#0x2249180)
	str     r0, [r2, #0x0]
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r5, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r7, #0x0
	str     r0, [r2, #0x0]
	mov     r2, r4
	str     r7, [r4, #0x4]
	mov     r3, r6
	ldmia   r3!, {r0,r1}
	add     r2, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	str     r7, [r4, #0x14]
	str     r7, [r4, #0x18]
	str     r7, [r4, #0x1c]
	str     r7, [r4, #0x38]
	mov     r2, r4
	ldmia   r5!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	lsl     r1, r1, #8
	ldr     r0, [pc, #0x60] @ 0x2243dbc, (=#0x13b000)
	str     r1, [r4, #0x50]
	str     r0, [r4, #0x40]
	lsl     r0, r1, #10
	str     r0, [r4, #0x48]
	lsl     r0, r1, #4
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x68]
	mov     r1, r6
	bl      Function_2021c50
	ldr     r0, [r4, #0x68]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x68]
	bl      Function_2021c94
	ldr     r0, [r4, #0x68]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [r4, #0x60]
	mov     r1, #0x6
	bl      Function_2021d6c
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2243db2


.incbin "./baserom/overlay/overlay_0006.bin", 0x5c72, 0x2243db4 - 0x2243db2


.word 0x2249174 @ 0x2243db4
.word 0x2249180 @ 0x2243db8
.word 0x13b000 @ 0x2243dbc



.thumb
Function_2243dc0: @ 2243dc0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x68]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #16
	cmp     r1, r0
	bge     branch_2243de0
	lsr     r0, r0, #3
	add     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2243de0: @ 2243de0 :thumb
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bge     branch_2243dea
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2243dea: @ 2243dea :thumb
	ldr     r0, [pc, #0xdc] @ 0x2243ec8, (=#0x13b)
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xb4
	bge     branch_2243e32
	mov     r0, #0x1
	lsl     r0, r0, #14
	sub     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2243e32: @ 2243e32 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	bge     branch_2243e44
	str     r0, [r5, #0x2c]
.thumb
branch_2243e44: @ 2243e44 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	sub     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #10
	str     r1, [r5, #0x30]
	cmp     r1, r0
	bge     branch_2243e56
	str     r0, [r5, #0x30]
.thumb
branch_2243e56: @ 2243e56 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r0, #0x6
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #12
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	str     r1, [r5, #0x38]
	cmp     r0, #0x3c
	ble     branch_2243e7c
	mov     r0, #0xf
	lsl     r0, r0, #14
	str     r0, [r5, #0x38]
.thumb
branch_2243e7c: @ 2243e7c :thumb
	ldr     r1, [r5, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bgt     branch_2243ec0
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2021cac
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
.thumb
branch_2243ec0: @ 2243ec0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2243ec6


.incbin "./baserom/overlay/overlay_0006.bin", 0x5d86, 0x2243ec8 - 0x2243ec6


.word 0x13b @ 0x2243ec8



.thumb
Function_2243ecc: @ 2243ecc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	bne     branch_2243eea
	ldr     r0, [r4, #0x60]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x5c]
	mov     r1, #0x0
	bl      Function_2243f74
.thumb
branch_2243eea: @ 2243eea :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa
	bne     branch_2243ef8
	ldr     r0, [r4, #0x60]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_2243ef8: @ 2243ef8 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xf
	ble     branch_2243f16
	ldr     r0, [r4, #0x70]
	bl      0x21f0ef0 @ Function_5_21f0ef0
	cmp     r0, #0x1
	bne     branch_2243f16
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x1]
	mov     r0, #0x2
	strb    r0, [r4, #0x2]
.thumb
branch_2243f16: @ 2243f16 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243f1a


.align 2, 0


.thumb
Function_2243f1c: @ 2243f1c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2243f20

.thumb
Function_2243f20: @ 2243f20 :thumb
	ldr     r3, [pc, #0x4] @ 0x2243f28, (=Function_2006c24+1)
	mov     r0, #0x61
	mov     r1, #0x4
	bx      r3
@ 0x2243f28

.word Function_2006c24+1 @ 0x2243f28



.thumb
Function_2243f2c: @ 2243f2c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0xc] @ 0x2243f4c, (=#0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x2243f4a


.incbin "./baserom/overlay/overlay_0006.bin", 0x5e0a, 0x2243f4c - 0x2243f4a


.word 0x7fff @ 0x2243f4c



.thumb
Function_2243f50: @ 2243f50 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0xc] @ 0x2243f70, (=#0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x2243f70

.word 0x7fff @ 0x2243f70



.thumb
Function_2243f74: @ 2243f74 :thumb
	push    {r4,lr}
	ldr     r0, [r0, #0x3c]
	mov     r4, r1
	bl      Function_205eb3c
	mov     r1, r4
	bl      Function_2062d64
	pop     {r4,pc}
@ 0x2243f86


.incbin "./baserom/overlay/overlay_0006.bin", 0x5e46, 0x2243f88 - 0x2243f86


.thumb
Function_2243f88: @ 2243f88 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	mov     r6, r3
	bl      Function_2243fdc
	mov     r1, r0
	str     r4, [r1, #0x5c]
	str     r6, [r1, #0xc]
	str     r5, [r1, #0x20]
	cmp     r5, #0x0
	bne     branch_2243faa
	ldr     r0, [pc, #0x10] @ 0x2243fb4, (=#0x2244005)
	mov     r2, #0x85
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x2243faa

.thumb
branch_2243faa: @ 2243faa :thumb
	ldr     r0, [pc, #0xc] @ 0x2243fb8, (=#0x22443b9)
	mov     r2, #0x85
	bl      Function_200d9e8
	pop     {r4-r6,pc}
@ 0x2243fb4

.word 0x2244005 @ 0x2243fb4
.word 0x22443b9 @ 0x2243fb8



.thumb
Function_2243fbc: @ 2243fbc :thumb
	push    {r3,lr}
	bl      Function_201ced0
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x2243fc6


.align 2, 0


.thumb
Function_2243fc8: @ 2243fc8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_201ced0
	bl      Function_2243ffc
	mov     r0, r4
	bl      Function_200da58
	pop     {r4,pc}
@ 0x2243fdc

.thumb
Function_2243fdc: @ 2243fdc :thumb
	push    {r3-r5,lr}
	mov     r1, #0x87
	mov     r5, r0
	mov     r0, #0x4
	lsl     r1, r1, #2
	bl      Function_2018184
	mov     r2, #0x87
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx     Function_20d5124
	str     r5, [r4, #0x60]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2243ffc

.thumb
Function_2243ffc: @ 2243ffc :thumb
	ldr     r3, [pc, #0x0] @ 0x2244000, (=Function_20181c4+1)
	bx      r3
@ 0x2244000

.word Function_20181c4+1 @ 0x2244000



.incbin "./baserom/overlay/overlay_0006.bin", 0x5ec4, 0x2244038 - 0x2244004


.thumb
Function_2244038: @ 2244038 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224481c
	mov     r0, r4
	bl      Function_224464c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244050

.thumb
Function_2244050: @ 2244050 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244066
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244066

.thumb
branch_2244066: @ 2244066 :thumb
	ldr     r5, [pc, #0x50] @ 0x22440b8, (=#0x2249120)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r5, [pc, #0x48] @ 0x22440bc, (=#0x22491e0)
	str     r0, [r3, #0x0]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_2244cfc
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_224529c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22452bc
	mov     r0, r4
	bl      Function_224469c
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22440b8

.word 0x2249120 @ 0x22440b8
.word 0x22491e0 @ 0x22440bc



.thumb
Function_22440c0: @ 22440c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245fdc
	mov     r0, #0x0
	ldr     r1, [pc, #0x28] @ 0x22440f4, (=#0xfffc0000)
	str     r0, [r4, #0x2c]
	str     r1, [r4, #0x54]
	mov     r1, #0xfe
	lsl     r1, r1, #12
	str     r1, [r4, #0x44]
	mov     r1, #0xff
	lsl     r1, r1, #12
	str     r1, [r4, #0x48]
	mov     r1, #0x5f
	lsl     r1, r1, #12
	str     r1, [r4, #0x4c]
	mov     r1, #0x61
	lsl     r1, r1, #12
	str     r1, [r4, #0x50]
	mov     r1, #0x1
	str     r1, [r4, #0x2c]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x22440f4

.word 0xfffc0000 @ 0x22440f4



.thumb
Function_22440f8: @ 22440f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r2, #0x0
	str     r2, [r4, #0x2c]
	ldr     r1, [r4, #0x44]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x44]
	cmp     r0, #0x0
	bgt     branch_224411c
	mov     r0, #0x2
	str     r2, [r4, #0x44]
	lsl     r0, r0, #12
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_224411c: @ 224411c :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244136


.align 2, 0


.thumb
Function_2244138: @ 2244138 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x2
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244166
	lsl     r0, r0, #4
	str     r0, [r4, #0x54]
.thumb
branch_2244166: @ 2244166 :thumb
	mov     r0, #0xe
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bge     branch_2244172
	str     r0, [r4, #0x4c]
.thumb
branch_2244172: @ 2244172 :thumb
	mov     r0, #0x22
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	ble     branch_224417e
	str     r0, [r4, #0x50]
.thumb
branch_224417e: @ 224417e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0xe
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_22441b6
	mov     r0, #0x22
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_22441b6
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2244d34
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22441b6: @ 22441b6 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22441bc

.thumb
Function_22441bc: @ 22441bc :thumb
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0xf
	blt     branch_22441d4
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0xc] @ 0x22441d8, (=#0xfffc0000)
	str     r1, [r0, #0x58]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_22441d4: @ 22441d4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22441d8

.word 0xfffc0000 @ 0x22441d8



.thumb
Function_22441dc: @ 22441dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r1, r1, r0
	mov     r0, #0xa
	lsl     r0, r0, #16
	str     r1, [sp, #0x0]
	cmp     r1, r0
	bgt     branch_2244214
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244214: @ 2244214 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2244226


.align 2, 0


.thumb
Function_2244228: @ 2244228 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x58]
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	ldr     r0, [pc, #0x48] @ 0x2244280, (=#0xffffe000)
	str     r1, [r4, #0x58]
	cmp     r1, r0
	ble     branch_224424c
	str     r0, [r4, #0x58]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x5c]
	bl      Function_2077e3c
.thumb
branch_224424c: @ 224424c :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      Function_2021c50
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224427e


.incbin "./baserom/overlay/overlay_0006.bin", 0x613e, 0x2244280 - 0x224427e


.word 0xffffe000 @ 0x2244280



.thumb
Function_2244284: @ 2244284 :thumb
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0x8
	blt     branch_224429c
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0xc] @ 0x22442a0, (=#0xfffff000)
	str     r1, [r0, #0x58]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
.thumb
branch_224429c: @ 224429c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22442a0

.word 0xfffff000 @ 0x22442a0
.thumb
Function_22442a4: @ 22442a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x58]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x50] @ 0x2244300, (=#0xfffc0000)
	str     r1, [r4, #0x58]
	cmp     r1, r0
	bge     branch_22442b8
	str     r0, [r4, #0x58]
.thumb
branch_22442b8: @ 22442b8 :thumb
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2021d28
	mov     r5, r0
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x0]
	ldr     r0, [r4, #0x58]
	add     r0, r1, r0
	str     r0, [sp, #0x0]
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r2
	bl      Function_2021c50
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2244304, (=#0xfffd8000)
	cmp     r1, r0
	bgt     branch_22442f8
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x54]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22442f8: @ 22442f8 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22442fe


.incbin "./baserom/overlay/overlay_0006.bin", 0x61be, 0x2244300 - 0x22442fe


.word 0xfffc0000 @ 0x2244300
.word 0xfffd8000 @ 0x2244304



.thumb
Function_2244308: @ 2244308 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x1
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #14
	add     r2, r1, r0
	lsl     r1, r0, #3
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244336
	lsl     r0, r0, #3
	str     r0, [r4, #0x54]
.thumb
branch_2244336: @ 2244336 :thumb
	mov     r0, #0x16
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	blt     branch_2244342
	str     r0, [r4, #0x4c]
.thumb
branch_2244342: @ 2244342 :thumb
	mov     r0, #0x1a
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bgt     branch_224434e
	str     r0, [r4, #0x50]
.thumb
branch_224434e: @ 224434e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x16
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_2244382
	mov     r0, #0x1a
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_2244382
	mov     r0, r4
	bl      Function_2246018
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244382: @ 2244382 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244388

.thumb
Function_2244388: @ 2244388 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22448c8
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x224439c

.thumb
Function_224439c: @ 224439c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244fb4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22443ae


.align 2, 0


.thumb
Function_22443b0: @ 22443b0 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	mov     r0, #0x0
	bx      lr
@ 0x22443b8


.incbin "./baserom/overlay/overlay_0006.bin", 0x6278, 0x22443ec - 0x22443b8


.thumb
Function_22443ec: @ 22443ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244402
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2244402

.thumb
branch_2244402: @ 2244402 :thumb
	ldr     r5, [pc, #0x50] @ 0x2244454, (=#0x22491d4)
	add     r3, sp, #0xc
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	ldr     r5, [pc, #0x48] @ 0x2244458, (=#0x224912c)
	str     r0, [r3, #0x0]
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r4
	bl      Function_2244cfc
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_224529c
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22452bc
	mov     r0, r4
	bl      Function_224469c
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2244454

.word 0x22491d4 @ 0x2244454
.word 0x224912c @ 0x2244458



.thumb
Function_224445c: @ 224445c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22451b8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224446e


.align 2, 0


.thumb
Function_2244470: @ 2244470 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244db4
	mov     r0, r4
	bl      Function_2244674
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244488

.thumb
Function_2244488: @ 2244488 :thumb
	push    {r4,lr}
	mov     r1, #0x82
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	bne     branch_224449a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224449a

.thumb
branch_224449a: @ 224449a :thumb
	bl      Function_224469c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22444a8

.thumb
Function_22444a8: @ 22444a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_224543c
	mov     r0, r4
	bl      Function_224551c
	mov     r0, r4
	bl      Function_2244f74
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2245f64
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444ce


.align 2, 0


.thumb
Function_22444d0: @ 22444d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245470
	cmp     r0, #0x2
	beq     branch_22444e0
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444e0

.thumb
branch_22444e0: @ 22444e0 :thumb
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021d6c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22444f6


.align 2, 0


.thumb
Function_22444f8: @ 22444f8 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x8]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x8]
	cmp     r1, #0x14
	blt     branch_2244512
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldr     r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r0, #0x0]
	bl      Function_22456d4
.thumb
branch_2244512: @ 2244512 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2244516


.align 2, 0


.thumb
Function_2244518: @ 2244518 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2245470
	cmp     r0, #0x3
	beq     branch_2244528
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244528

.thumb
branch_2244528: @ 2244528 :thumb
	ldr     r0, [pc, #0x18] @ 0x2244544, (=#0x649)
	bl      Function_2005748
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [r4, #0x54]
	mov     r0, #0x2
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244542


.incbin "./baserom/overlay/overlay_0006.bin", 0x6402, 0x2244544 - 0x2244542


.word 0x649 @ 0x2244544



.thumb
Function_2244548: @ 2244548 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r1, [r4, #0x4c]
	ldr     r0, [r4, #0x54]
	add     r0, r1, r0
	str     r0, [r4, #0x4c]
	ldr     r1, [r4, #0x50]
	ldr     r0, [r4, #0x54]
	sub     r0, r1, r0
	str     r0, [r4, #0x50]
	mov     r0, #0x2
	ldr     r1, [r4, #0x54]
	lsl     r0, r0, #10
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [r4, #0x54]
	cmp     r2, r1
	ble     branch_2244576
	lsl     r0, r0, #5
	str     r0, [r4, #0x54]
.thumb
branch_2244576: @ 2244576 :thumb
	mov     r0, #0x5f
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	blt     branch_2244582
	str     r0, [r4, #0x4c]
.thumb
branch_2244582: @ 2244582 :thumb
	mov     r0, #0x61
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #12
	cmp     r1, r0
	bgt     branch_224458e
	str     r0, [r4, #0x50]
.thumb
branch_224458e: @ 224458e :thumb
	ldr     r0, [r4, #0x50]
	str     r0, [sp, #0x0]
	ldr     r1, [r4, #0x44]
	ldr     r2, [r4, #0x4c]
	ldr     r3, [r4, #0x48]
	mov     r0, r4
	bl      Function_2244f80
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_22445ba
	mov     r0, r4
	bl      Function_2245470
	cmp     r0, #0x4
	bne     branch_22445ba
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_22445ba: @ 22445ba :thumb
	mov     r0, #0x5f
	ldr     r1, [r4, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_22445e6
	mov     r0, #0x61
	ldr     r1, [r4, #0x50]
	lsl     r0, r0, #12
	cmp     r1, r0
	bne     branch_22445e6
	ldr     r0, [r4, #0x60]
	ldr     r0, [r0, #0x8]
	bl      Function_2244f20
	mov     r0, #0x1
	str     r0, [r4, #0x14]
	mov     r0, r4
	bl      Function_2244f58
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22445e6: @ 22445e6 :thumb
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22445ec

.thumb
Function_22445ec: @ 22445ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x0
	bne     branch_2244606
	bl      Function_2245470
	cmp     r0, #0x4
	bne     branch_2244606
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_2244606: @ 2244606 :thumb
	mov     r0, r4
	bl      Function_2245470
	cmp     r0, #0x2
	beq     branch_2244614
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244614

.thumb
branch_2244614: @ 2244614 :thumb
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_2244622
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	bl      Function_2243f50
.thumb
branch_2244622: @ 2244622 :thumb
	mov     r0, r4
	bl      Function_2245480
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2244632


.align 2, 0


.thumb
Function_2244634: @ 2244634 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2244646
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_2244646: @ 2244646 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224464a


.align 2, 0


.thumb
Function_224464c: @ 224464c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x2244670, (=#0x22446b9)
	mov     r1, r4
	mov     r2, #0x80
	bl      Function_200da04
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x224466e


.incbin "./baserom/overlay/overlay_0006.bin", 0x652e, 0x2244670 - 0x224466e


.word 0x22446b9 @ 0x2244670
.thumb
Function_2244674: @ 2244674 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x81
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x2244698, (=#0x22447b5)
	mov     r1, r4
	mov     r2, #0x80
	bl      Function_200da04
	mov     r1, #0x85
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244696


.incbin "./baserom/overlay/overlay_0006.bin", 0x6556, 0x2244698 - 0x2244696


.word 0x22447b5 @ 0x2244698
.thumb
Function_224469c: @ 224469c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22446b6
	bl      Function_200da58
	mov     r0, #0x85
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_22446b6: @ 22446b6 :thumb
	pop     {r4,pc}
@ 0x22446b8


.incbin "./baserom/overlay/overlay_0006.bin", 0x6578, 0x224481c - 0x22446b8


.thumb
Function_224481c: @ 224481c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_224491c
	mov     r2, #0x3
	mov     r3, #0x1
	mov     r4, r0
	lsl     r2, r2, #18
	mov     r0, r5
	mov     r1, #0x0
	lsl     r3, r3, #12
	str     r2, [sp, #0x0]
	bl      Function_2244f80
	mov     r0, r5
	bl      Function_2244f2c
	ldr     r0, [r5, #0x60]
	mov     r1, #0x0
	ldr     r0, [r0, #0x8]
	bl      Function_201a008
	strh    r0, [r5, #0x24]
	ldr     r0, [r5, #0x60]
	mov     r1, #0x3
	ldr     r0, [r0, #0x8]
	bl      Function_201a008
	strh    r0, [r5, #0x26]
	ldr     r2, [pc, #0x6c] @ 0x22448c4, (=#0x400000a)
	mov     r1, #0x3
	ldrh    r3, [r2, #0x0]
	mov     r0, #0x1
	bic     r3, r1
	orr     r0, r3
	strh    r0, [r2, #0x0]
	ldrh    r0, [r2, #0x4]
	bic     r0, r1
	strh    r0, [r2, #0x4]
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r2, r5
	mov     r0, r4
	mov     r1, #0x2
	add     r2, #0x6c
	bl      Function_2244e54
	ldr     r0, [r5, #0x60]
	mov     r3, r5
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	mov     r2, #0x0
	add     r3, #0x68
	bl      Function_2244e7c
	ldr     r0, [r5, #0x60]
	mov     r3, r5
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	mov     r2, #0x1
	add     r3, #0x64
	bl      Function_2244eb4
	mov     r0, r5
	mov     r1, r4
	bl      Function_2244928
	mov     r0, r4
	bl      Function_2006ca8
	mov     r0, #0x4
	mov     r1, #0x20
	bl      Function_20711ec
	mov     r1, #0x1e
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r3-r5,pc}
@ 0x22448c4

.word 0x400000a @ 0x22448c4
.thumb
Function_22448c8: @ 22448c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207121c
	ldr     r0, [r4, #0x60]
	ldr     r0, [r0, #0x8]
	bl      Function_2244f20
	mov     r0, r4
	bl      Function_2244b6c
	ldr     r2, [pc, #0x28] @ 0x2244918, (=#0x4000008)
	ldrh    r1, [r4, #0x24]
	ldrh    r3, [r2, #0x0]
	mov     r0, #0x3
	bic     r3, r0
	orr     r1, r3
	strh    r1, [r2, #0x0]
	ldrh    r1, [r2, #0x6]
	bic     r1, r0
	ldrh    r0, [r4, #0x26]
	orr     r0, r1
	strh    r0, [r2, #0x6]
	mov     r0, #0x0
	mov     r1, #0x1
	bl      Function_205d8cc
	mov     r0, #0x8
	mov     r1, #0x1
	bl      Function_201ff0c
	pop     {r4,pc}
@ 0x2244916


.incbin "./baserom/overlay/overlay_0006.bin", 0x67d6, 0x2244918 - 0x2244916


.word 0x4000008 @ 0x2244918
.thumb
Function_224491c: @ 224491c :thumb
	ldr     r3, [pc, #0x4] @ 0x2244924, (=#Function_2006c24+1)
	mov     r0, #0x61
	mov     r1, #0x4
	bx      r3
@ 0x2244924

.word Function_2006c24+1 @ 0x2244924



.thumb
Function_2244928: @ 2244928 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r1, #0x7d
	mov     r5, r0
	lsl     r1, r1, #2
	add     r1, r5, r1
	bl      Function_224508c
	mov     r1, r5
	mov     r0, #0x20
	add     r1, #0x74
	mov     r2, #0x4
	bl      Function_20095c4
	str     r0, [r5, #0x70]
	mov     r0, r5
	mov     r2, #0x2
	add     r0, #0x74
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	mov     r0, #0x4
	mov     r1, #0x0
	mov     r2, r0
	bl      Function_2009714
	mov     r1, #0x67
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x1a
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x4
	mov     r1, #0x2
	mov     r2, r0
	bl      Function_2009714
	mov     r1, #0x69
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2009714
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xa
	mov     r3, #0x0
	bl      Function_2009a4c
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_22449d6
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xd
	mov     r3, #0x0
	bl      Function_2009a4c
	b       branch_22449f0
@ 0x22449d6

.thumb
branch_22449d6: @ 22449d6 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x10
	mov     r3, #0x0
	bl      Function_2009a4c
.thumb
branch_22449f0: @ 22449f0 :thumb
	mov     r1, #0x1b
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r4
	bl      Function_22450f4
	mov     r1, #0x6d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r6, #0x0
	str     r6, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	sub     r1, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_2009b04
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r0, #0x0
	beq     branch_2244a52
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r2, #0x4
	str     r2, [sp, #0xc]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_2009b04
	lsl     r1, r6, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2244a52: @ 2244a52 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      Function_224514c
	lsl     r1, r6, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xb
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2244aa4
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xe
	mov     r3, #0x0
	bl      Function_2009bc4
	b       branch_2244abc
@ 0x2244aa4

.thumb
branch_2244aa4: @ 2244aa4 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x24
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x11
	mov     r3, #0x0
	bl      Function_2009bc4
.thumb
branch_2244abc: @ 2244abc :thumb
	mov     r1, #0x73
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	mov     r2, #0x6
	mov     r3, #0x0
	bl      Function_2009bc4
	mov     r1, #0x1d
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x28
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xc
	bl      Function_2009bc4
	mov     r1, #0x76
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2244b24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x30
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0xf
	mov     r3, #0x0
	bl      Function_2009bc4
	b       branch_2244b3e
@ 0x2244b24

.thumb
branch_2244b24: @ 2244b24 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	sub     r1, #0x30
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	mov     r1, r4
	mov     r2, #0x12
	mov     r3, #0x0
	bl      Function_2009bc4
.thumb
branch_2244b3e: @ 2244b3e :thumb
	mov     r1, #0x77
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x7d
	lsl     r1, r1, #2
	ldr     r0, [r5, #0x5c]
	add     r1, r5, r1
	mov     r2, #0x4
	bl      Function_224509c
	mov     r1, #0x83
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	sub     r1, #0x18
	add     r0, r5, r1
	mov     r1, #0x4
	bl      Function_22450e4
	mov     r1, #0x21
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2244b6c

.thumb
Function_2244b6c: @ 2244b6c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0x6b
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2244b78: @ 2244b78 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_2244b82
	bl      Function_200a4e4
.thumb
branch_2244b82: @ 2244b82 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_2244b78
	mov     r7, #0x6f
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244b92: @ 2244b92 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244b9c
	bl      Function_200a6dc
.thumb
branch_2244b9c: @ 2244b9c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_2244b92
	mov     r7, #0x72
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244bac: @ 2244bac :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244bb6
	bl      Function_2009d4c
.thumb
branch_2244bb6: @ 2244bb6 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x4
	blt     branch_2244bac
	mov     r7, #0x76
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2244bc6: @ 2244bc6 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2244bd0
	bl      Function_2009d4c
.thumb
branch_2244bd0: @ 2244bd0 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_2244bc6
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      Function_2009754
	ldr     r0, [r6, #0x70]
	bl      Function_20219c0
	ldr     r0, [r6, #0x70]
	bl      Function_2021964
	pop     {r3-r7,pc}
@ 0x2244c0e


.incbin "./baserom/overlay/overlay_0006.bin", 0x6ace, 0x2244c20 - 0x2244c0e


.thumb
Function_2244c20: @ 2244c20 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	ldr     r0, [sp, #0x84]
	mov     r4, r1
	mov     r1, r2
	mov     r2, r3
	cmp     r0, #0x4
	bne     branch_2244c68
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r6, #0x67
	ldr     r3, [sp, #0x88]
	str     r0, [sp, #0xc]
	lsl     r6, r6, #2
	str     r3, [sp, #0x10]
	ldr     r3, [r5, r6]
	str     r3, [sp, #0x14]
	add     r3, r6, #0x4
	ldr     r3, [r5, r3]
	add     r6, #0x8
	str     r3, [sp, #0x18]
	ldr     r3, [r5, r6]
	str     r3, [sp, #0x1c]
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
	b       branch_2244ca2
@ 0x2244c68

.thumb
branch_2244c68: @ 2244c68 :thumb
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x0
	ldr     r0, [sp, #0x88]
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x10]
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r6, [r5, r0]
	str     r6, [sp, #0x14]
	add     r6, r0, #0x4
	ldr     r6, [r5, r6]
	str     r6, [sp, #0x18]
	mov     r6, r0
	add     r6, #0x8
	ldr     r6, [r5, r6]
	add     r0, #0xc
	str     r6, [sp, #0x1c]
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x20]
	str     r3, [sp, #0x24]
	str     r3, [sp, #0x28]
	ldr     r3, [sp, #0x80]
	add     r0, sp, #0x4c
	bl      Function_20093b4
.thumb
branch_2244ca2: @ 2244ca2 :thumb
	ldr     r0, [r5, #0x70]
	add     r2, sp, #0x34
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x4
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	bl      Function_2021b90
	mov     r4, r0
	bne     branch_2244cce
	bl      Function_2022974
.thumb
branch_2244cce: @ 2244cce :thumb
	mov     r0, r4
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x2244cd4


.incbin "./baserom/overlay/overlay_0006.bin", 0x6b94, 0x2244cfc - 0x2244cd4


.thumb
Function_2244cfc: @ 2244cfc :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r2, [r0, #0xc]
	mov     r3, #0x0
	cmp     r2, #0x1
	bne     branch_2244d0a
	mov     r3, #0x1
.thumb
branch_2244d0a: @ 2244d0a :thumb
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r4, #0x1
	str     r4, [sp, #0x4]
	mov     r4, #0x0
	str     r4, [sp, #0x8]
	mov     r4, #0x83
	str     r4, [sp, #0xc]
	bl      Function_2244c20
	mov     r4, r0
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2021d6c
	mov     r0, r4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2244d34

.thumb
Function_2244d34: @ 2244d34 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      Function_2021ce4
	pop     {r4,pc}
@ 0x2244d4a


.align 2, 0


.thumb
Function_2244d4c: @ 2244d4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r4, r0
	add     r0, sp, #0x1c
	mov     r7, #0x0
	str     r7, [r0, #0x0]
	str     r7, [r0, #0x4]
	mov     r6, r2
	ldr     r5, [pc, #0x50] @ 0x2244db0, (=#0x2249168)
	mov     r3, r1
	str     r7, [r0, #0x8]
	ldmia   r5!, {r0,r1}
	add     r2, sp, #0x10
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, r3
	str     r0, [r2, #0x0]
	str     r7, [sp, #0x0]
	.hword  0x1e78 @ sub r0, r7, #0x1
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r0, r4
	mov     r2, r7
	mov     r3, r7
	str     r6, [sp, #0xc]
	bl      Function_2244c20
	mov     r4, r0
	mov     r1, #0x2
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0x1c
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x10
	bl      Function_2021c70
	mov     r0, r7
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	mov     r0, r4
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2244dae


.incbin "./baserom/overlay/overlay_0006.bin", 0x6c6e, 0x2244db0 - 0x2244dae


.word 0x2249168 @ 0x2244db0
.thumb
Function_2244db4: @ 2244db4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_224491c
	mov     r6, r0
	mov     r0, #0x6b
	mov     r5, #0x0
	mov     r2, r4
	lsl     r0, r0, #2
.thumb
branch_2244dc8: @ 2244dc8 :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2244df4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x7
	bl      Function_2009a4c
	lsl     r1, r5, #2
	add     r2, r4, r1
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	b       branch_2244dfc
@ 0x2244df4

.thumb
branch_2244df4: @ 2244df4 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r5, #0x4
	blt     branch_2244dc8
.thumb
branch_2244dfc: @ 2244dfc :thumb
	cmp     r5, #0x4
	blt     branch_2244e04
	bl      Function_2022974
.thumb
branch_2244e04: @ 2244e04 :thumb
	mov     r0, #0x72
	mov     r5, #0x0
	mov     r2, r4
	lsl     r0, r0, #2
.thumb
branch_2244e0c: @ 2244e0c :thumb
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_2244e38
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x8
	bl      Function_2009bc4
	lsl     r1, r5, #2
	add     r2, r4, r1
	mov     r1, #0x72
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	b       branch_2244e40
@ 0x2244e38

.thumb
branch_2244e38: @ 2244e38 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r5, #0x4
	blt     branch_2244e0c
.thumb
branch_2244e40: @ 2244e40 :thumb
	cmp     r5, #0x4
	blt     branch_2244e48
	bl      Function_2022974
.thumb
branch_2244e48: @ 2244e48 :thumb
	mov     r0, r6
	bl      Function_2006ca8
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2244e52


.align 2, 0


.thumb
Function_2244e54: @ 2244e54 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r5
	mov     r4, r0
	blx     Function_20a71b0
	ldr     r1, [r5, #0x0]
	mov     r0, #0x3
	ldr     r1, [r1, #0xc]
	mov     r2, #0x20
	lsl     r3, r0, #7
	bl      Function_201972c
	mov     r0, r4
	bl      Function_20181c4
	pop     {r3-r5,pc}
@ 0x2244e7c

.thumb
Function_2244e7c: @ 2244e7c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r4
	mov     r6, r0
	blx     Function_20a7118
	ldr     r3, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r3, [r3, #0x10]
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_201958c
	mov     r0, r6
	bl      Function_20181c4
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2244eb2


.align 2, 0


.thumb
Function_2244eb4: @ 2244eb4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r2
	mov     r6, r1
	mov     r2, #0x0
	mov     r4, r3
	mov     r1, #0x3
	mov     r3, r2
	mov     r5, r0
	bl      Function_2019184
	mov     r1, #0x3
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_2019184
	mov     r0, r6
	mov     r1, r7
	mov     r2, #0x4
	bl      Function_2006cb8
	mov     r1, r4
	mov     r6, r0
	blx     Function_20a7248
	ldr     r3, [r4, #0x0]
	mov     r0, r5
	mov     r2, r3
	ldr     r3, [r3, #0x8]
	mov     r1, #0x3
	add     r2, #0xc
	bl      Function_2019574
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x3
	mov     r3, r2
	bl      Function_2019e2c
	mov     r0, r5
	mov     r1, #0x3
	bl      Function_2019448
	mov     r0, r6
	bl      Function_20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2244f20

.thumb
Function_2244f20: @ 2244f20 :thumb
	ldr     r3, [pc, #0x4] @ 0x2244f28, (=#Function_2019ebc+1)
	mov     r1, #0x3
	bx      r3
@ 0x2244f26

.align 2
.word Function_2019ebc+1 @ 0x2244f28



.thumb
Function_2244f2c: @ 2244f2c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2244f8c
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_2244f58
	mov     r0, r4
	bl      Function_2244f60
	mov     r0, r4
	bl      Function_2244f50
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2244f50

.thumb
Function_2244f50: @ 2244f50 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x30]
	bx      lr
@ 0x2244f56


.align 2, 0


.thumb
Function_2244f58: @ 2244f58 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x30]
	bx      lr
@ 0x2244f5e


.align 2, 0


.thumb
Function_2244f60: @ 2244f60 :thumb
	mov     r1, #0x18
	str     r1, [r0, #0x34]
	mov     r1, #0x0
	str     r1, [r0, #0x38]
	mov     r1, #0x17
	str     r1, [r0, #0x3c]
	mov     r1, #0x1
	str     r1, [r0, #0x40]
	bx      lr
@ 0x2244f72


.align 2, 0


.thumb
Function_2244f74: @ 2244f74 :thumb
	mov     r1, #0x17
	str     r1, [r0, #0x3c]
	mov     r1, #0x1
	str     r1, [r0, #0x40]
	bx      lr
@ 0x2244f7e


.align 2, 0


.thumb
Function_2244f80: @ 2244f80 :thumb
	str     r1, [r0, #0x44]
	str     r3, [r0, #0x48]
	ldr     r1, [sp, #0x0]
	str     r2, [r0, #0x4c]
	str     r1, [r0, #0x50]
	bx      lr
@ 0x2244f8c

.thumb
Function_2244f8c: @ 2244f8c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244f9e
	bl      Function_2022974
.thumb
branch_2244f9e: @ 2244f9e :thumb
	ldr     r0, [pc, #0x10] @ 0x2244fb0, (=#0x2244fe5)
	mov     r1, r4
	mov     r2, #0x81
	bl      Function_200da04
	mov     r1, #0x86
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244fb0

.word 0x2244fe5 @ 0x2244fb0
.thumb
Function_2244fb4: @ 2244fb4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2244fc6
	bl      Function_2022974
.thumb
branch_2244fc6: @ 2244fc6 :thumb
	mov     r0, #0x86
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200da58
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x8] @ 0x2244fe0, (=#0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r4,pc}
@ 0x2244fde


.incbin "./baserom/overlay/overlay_0006.bin", 0x6e9e, 0x2244fe0 - 0x2244fde


.word 0xffff1fff @ 0x2244fe0

.incbin "./baserom/overlay/overlay_0006.bin", 0x6ea4, 0x224508c - 0x2244fe4


.thumb
Function_224508c: @ 224508c :thumb
	ldr     r3, [pc, #0x8] @ 0x2245098, (=Function_2075ef4+1)
	mov     r2, r0
	mov     r0, r1
	ldr     r1, [r2, #0x5c]
	mov     r2, #0x2
	bx      r3
@ 0x2245098

.word Function_2075ef4+1 @ 0x2245098



.thumb
Function_224509c: @ 224509c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r1, #0x32
	mov     r6, r0
	mov     r0, #0x4
	lsl     r1, r1, #6
	mov     r7, r2
	bl      Function_2018144
	mov     r4, r0
	bne     branch_22450b8
	bl      Function_2022974
.thumb
branch_22450b8: @ 22450b8 :thumb
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      GetPkmnData
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldrh    r0, [r5, #0x6]
	mov     r2, r7
	mov     r3, r4
	str     r0, [sp, #0xc]
	ldrh    r0, [r5, #0x0]
	ldrh    r1, [r5, #0x2]
	bl      Function_2013750
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22450e2


.align 2, 0


.thumb
Function_22450e4: @ 22450e4 :thumb
	mov     r3, r0
	mov     r2, r1
	ldrh    r0, [r3, #0x0]
	ldrh    r1, [r3, #0x4]
	ldr     r3, [pc, #0x0] @ 0x22450f0, (=#Function_2013660+1)
	bx      r3
@ 0x22450f0

.word Function_2013660+1 @ 0x22450f0



.thumb
Function_22450f4: @ 22450f4 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	mov     r2, #0x4
	str     r2, [sp, #0x8]
	mov     r2, #0x67
	lsl     r2, r2, #2
	ldr     r0, [r0, r2]
	mov     r2, #0x5
	mov     r3, #0x0
	bl      Function_2009a4c
	add     sp, #0xc
	pop     {pc}
@ 0x2245116


.incbin "./baserom/overlay/overlay_0006.bin", 0x6fd6, 0x224514c - 0x2245116


.thumb
Function_224514c: @ 224514c :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r2, #0x1
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x4
	str     r2, [sp, #0xc]
	mov     r2, #0x1a
	lsl     r2, r2, #4
	ldr     r0, [r0, r2]
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2009b04
	add     sp, #0x10
	pop     {r3,pc}
@ 0x2245170


.incbin "./baserom/overlay/overlay_0006.bin", 0x7030, 0x22451b8 - 0x2245170


.thumb
Function_22451b8: @ 22451b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_200a4e4
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x6b
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_22451e2: @ 22451e2 :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_22451f6
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x6b
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_22451fe
@ 0x22451f6

.thumb
branch_22451f6: @ 22451f6 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x4
	blt     branch_22451e2
.thumb
branch_22451fe: @ 22451fe :thumb
	cmp     r0, #0x4
	blt     branch_2245206
	bl      Function_2022974
.thumb
branch_2245206: @ 2245206 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x2
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_200a6dc
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x6f
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_224522c: @ 224522c :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_2245240
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x6f
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_2245248
@ 0x2245240

.thumb
branch_2245240: @ 2245240 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x3
	blt     branch_224522c
.thumb
branch_2245248: @ 2245248 :thumb
	cmp     r0, #0x3
	blt     branch_2245250
	bl      Function_2022974
.thumb
branch_2245250: @ 2245250 :thumb
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_2009dc8
	mov     r4, r0
	bl      Function_2009d4c
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_2009d68
	mov     r1, #0x72
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_2245276: @ 2245276 :thumb
	ldr     r2, [r3, r1]
	cmp     r2, r4
	bne     branch_224528a
	lsl     r1, r0, #2
	add     r2, r5, r1
	mov     r1, #0x72
	mov     r3, #0x0
	lsl     r1, r1, #2
	str     r3, [r2, r1]
	b       branch_2245292
@ 0x224528a

.thumb
branch_224528a: @ 224528a :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x4
	blt     branch_2245276
.thumb
branch_2245292: @ 2245292 :thumb
	cmp     r0, #0x4
	blt     branch_224529a
	bl      Function_2022974
.thumb
branch_224529a: @ 224529a :thumb
	pop     {r3-r5,pc}
@ 0x224529c

.thumb
Function_224529c: @ 224529c :thumb
	push    {r3,lr}
	add     sp, #-0x10
	mov     r2, #0x3
	str     r2, [sp, #0x0]
	sub     r3, r2, #0x4
	str     r3, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	mov     r3, #0x81
	str     r3, [sp, #0xc]
	mov     r3, #0x2
	bl      Function_2244c20
	add     sp, #0x10
	pop     {r3,pc}
@ 0x22452ba


.align 2, 0


.thumb
Function_22452bc: @ 22452bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	mov     r0, #0x2
	ldr     r4, [pc, #0x5c] @ 0x2245324, (=#0x224936c)
	mov     r6, r1
	str     r0, [r5, #0x14]
	mov     r7, #0x0
.thumb
branch_22452cc: @ 22452cc :thumb
	ldr     r0, [r4, #0x0]
	add     r1, sp, #0x1c
	str     r0, [sp, #0x1c]
	ldr     r0, [r4, #0x4]
	add     r2, sp, #0x10
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0xc]
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x10]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	str     r0, [sp, #0xc]
	str     r6, [sp, #0x4]
	mov     r0, r5
	bl      Function_2245328
	mov     r0, #0x1
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #20
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0xc]
	ldr     r3, [sp, #0x8]
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x1c
	add     r2, sp, #0x10
	str     r6, [sp, #0x4]
	bl      Function_2245328
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x14
	cmp     r7, #0xd
	blt     branch_22452cc
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2245322


.incbin "./baserom/overlay/overlay_0006.bin", 0x71e2, 0x2245324 - 0x2245322


.word 0x224936c @ 0x2245324
.thumb
Function_2245328: @ 2245328 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [sp, #0x34]
	str     r3, [sp, #0x8]
	str     r5, [sp, #0x10]
	mov     r4, r1
	str     r0, [sp, #0xc]
	ldmia   r2!, {r0,r1}
	add     r3, sp, #0x14
	stmia   r3!, {r0,r1}
	ldr     r0, [r2, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x2245360, (=#0x2249220)
	str     r0, [r3, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x84
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x30]
	mov     r2, r4
	bl      Function_2071330
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x224535e


.incbin "./baserom/overlay/overlay_0006.bin", 0x721e, 0x2245360 - 0x224535e


.word 0x2249220 @ 0x2245360

.incbin "./baserom/overlay/overlay_0006.bin", 0x7224, 0x224543c - 0x2245364


.thumb
Function_224543c: @ 224543c :thumb
	push    {r4,lr}
	add     sp, #-0x18
	add     r2, sp, #0xc
	mov     r3, #0x0
	mov     r4, r0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r3, [r2, #0x8]
	str     r4, [sp, #0x8]
	add     r0, sp, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x82
	str     r0, [sp, #0x4]
	mov     r0, #0x1e
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0xc] @ 0x224546c, (=#0x2249248)
	bl      Function_2071330
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x18
	pop     {r4,pc}
@ 0x224546c

.word 0x2249248 @ 0x224546c
.thumb
Function_2245470: @ 2245470 :thumb
	push    {r3,lr}
	mov     r1, #0x7b
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bl      Function_2071598
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x2245480

.thumb
Function_2245480: @ 2245480 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2071598
	mov     r5, r0
	ldr     r0, [r5, #0x60]
	cmp     r0, #0x0
	beq     branch_224549a
	bl      Function_207136c
.thumb
branch_224549a: @ 224549a :thumb
	ldr     r0, [r5, #0x64]
	cmp     r0, #0x0
	beq     branch_22454a4
	bl      0x21f0efc @ Function_5_21f0efc
.thumb
branch_22454a4: @ 22454a4 :thumb
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207136c
	pop     {r3-r5,pc}
@ 0x22454b0

.thumb
Function_22454b0: @ 22454b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r4, r1
	bl      Function_20715bc
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x0
	str     r0, [r4, #0x5c]
	mov     r0, r5
	bl      Function_20715e4
	mov     r2, #0x0
	ldr     r0, [r4, #0x5c]
	add     r1, sp, #0x0
	mov     r3, r2
	bl      Function_2244d4c
	str     r0, [r4, #0x58]
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22454dc

.thumb
Function_22454dc: @ 22454dc :thumb
	ldr     r3, [pc, #0x4] @ 0x22454e4, (=Function_2021bd4+1)
	ldr     r0, [r1, #0x58]
	bx      r3
@ 0x22454e2


.incbin "./baserom/overlay/overlay_0006.bin", 0x73a2, 0x22454e4 - 0x22454e2


.word Function_2021bd4+1 @ 0x22454e4



.thumb
Function_22454e8: @ 22454e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldrb    r0, [r5, #0x0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x10] @ 0x2245504, (=#0x2249198)
	ldr     r4, [r0, r1]
.thumb
branch_22454f4: @ 22454f4 :thumb
	ldrb    r1, [r5, #0x1]
	mov     r0, r5
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	blx     r1
	cmp     r0, #0x1
	beq     branch_22454f4
	pop     {r3-r5,pc}
@ 0x2245504

.word 0x2249198 @ 0x2245504
.thumb
Function_2245508: @ 2245508 :thumb
	bx      lr
@ 0x224550a


.incbin "./baserom/overlay/overlay_0006.bin", 0x73ca, 0x224551c - 0x224550a


.thumb
Function_224551c: @ 224551c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	ldr     r4, [pc, #0x98] @ 0x22455bc, (=#0x22491b0)
	mov     r2, r0
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0xc
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	ldr     r4, [pc, #0x90] @ 0x22455c0, (=#0x224915c)
	str     r0, [r3, #0x0]
	ldmia   r4!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldr     r0, [r4, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	bl      Function_2071598
	mov     r4, r0
	mov     r3, #0x1
	mov     r5, r4
	strb    r3, [r4, #0x0]
	mov     r2, #0x0
	strb    r2, [r4, #0x1]
	strb    r2, [r4, #0x2]
	add     r6, sp, #0xc
	ldmia   r6!, {r0,r1}
	add     r5, #0x8
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	add     r6, sp, #0x0
	str     r0, [r5, #0x0]
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x18]
	mov     r0, #0xf
	mov     r5, r4
	str     r2, [r4, #0x1c]
	lsl     r0, r0, #14
	str     r0, [r4, #0x38]
	ldmia   r6!, {r0,r1}
	add     r5, #0x2c
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	add     r1, sp, #0xc
	str     r0, [r5, #0x0]
	lsl     r0, r3, #9
	str     r0, [r4, #0x50]
	mov     r0, #0x2d
	lsl     r0, r0, #14
	str     r0, [r4, #0x40]
	str     r2, [r4, #0x48]
	lsl     r0, r3, #13
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0x58]
	bl      Function_2021c50
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x58]
	bl      Function_2021c94
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	bl      Function_2021cac
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22455bc

.word 0x22491b0 @ 0x22455bc
.word 0x224915c @ 0x22455c0

.incbin "./baserom/overlay/overlay_0006.bin", 0x7484, 0x22456d4 - 0x22455c4


.thumb
Function_22456d4: @ 22456d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r3, [pc, #0x150] @ 0x224582c, (=#0x2249144)
	mov     r5, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x24
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	ldr     r3, [pc, #0x148] @ 0x2245830, (=#0x2249138)
	str     r0, [r2, #0x0]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x2
	mov     r2, r4
	strb    r0, [r4, #0x0]
	mov     r6, #0x0
	strb    r6, [r4, #0x1]
	mov     r7, #0x1
	strb    r7, [r4, #0x2]
	str     r6, [r4, #0x4]
	add     r3, sp, #0x24
	ldmia   r3!, {r0,r1}
	add     r2, #0x8
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	add     r3, sp, #0x18
	str     r0, [r2, #0x0]
	str     r6, [r4, #0x14]
	str     r6, [r4, #0x18]
	str     r6, [r4, #0x1c]
	ldr     r6, [pc, #0x110] @ 0x2245834, (=#0x13b000)
	mov     r2, r4
	str     r6, [r4, #0x38]
	ldmia   r3!, {r0,r1}
	add     r2, #0x2c
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, r7
	add     r0, #0xff
	str     r0, [r4, #0x50]
	mov     r0, #0xe1
	lsl     r0, r0, #12
	str     r0, [r4, #0x40]
	mov     r0, #0x3
	lsl     r0, r0, #18
	str     r0, [r4, #0x48]
	lsl     r0, r7, #17
	str     r0, [r4, #0x4c]
	lsr     r0, r6, #12
	bl      Function_201d264
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x14]
	ldr     r1, [r4, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r4, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r4, #0x18]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x24]
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x28]
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x24
	bl      Function_2021c50
	ldr     r0, [r4, #0x58]
	add     r1, sp, #0x18
	bl      Function_2021c70
	ldr     r1, [r4, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	ldr     r0, [r4, #0x58]
	bl      Function_2021c94
	ldr     r0, [r4, #0x58]
	mov     r1, r7
	bl      Function_2021cac
	mov     r1, #0x1e
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	bl      Function_2245b4c
	str     r0, [r4, #0x60]
	mov     r0, r7
	str     r0, [r5, #0x1c]
	ldr     r0, [r5, #0x60]
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x60] @ 0x2245838, (=#0xfff88000)
	mov     r1, r7
	mov     r3, #0xc
	str     r0, [r4, #0x64]
	bl      0x21f0f10 @ Function_5_21f0f10
	add     r1, sp, #0xc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	str     r0, [r1, #0x4]
	ldr     r3, [pc, #0x50] @ 0x224583c, (=#0x22491bc)
	str     r0, [r1, #0x8]
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x79
	ldr     r1, [r4, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r1, #0x2
	mov     r0, r4
	bl      Function_2021cf8
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c60
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x224582a


.incbin "./baserom/overlay/overlay_0006.bin", 0x76ea, 0x224582c - 0x224582a


.word 0x2249144 @ 0x224582c
.word 0x2249138 @ 0x2245830
.word 0x13b000 @ 0x2245834
.word 0xfff88000 @ 0x2245838
.word 0x22491bc @ 0x224583c
.thumb
Function_2245840: @ 2245840 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x58]
	sub     r0, r1, r0
	str     r0, [r5, #0x48]
	bpl     branch_2245856
	mov     r0, #0x0
	str     r0, [r5, #0x48]
.thumb
branch_2245856: @ 2245856 :thumb
	mov     r0, #0x2
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #10
	cmp     r1, r0
	ble     branch_2245868
	mov     r0, #0x6
	lsl     r0, r0, #10
	sub     r0, r1, r0
	str     r0, [r5, #0x4c]
.thumb
branch_2245868: @ 2245868 :thumb
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2245874
	str     r0, [r5, #0x4c]
.thumb
branch_2245874: @ 2245874 :thumb
	ldr     r0, [pc, #0x130] @ 0x22459a8, (=#0x13b)
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r2, r0, #12
	ldr     r0, [pc, #0xf8] @ 0x22459ac, (=#0x10e)
	cmp     r2, r0
	bge     branch_22458be
	mov     r0, #0x1
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_22458be: @ 22458be :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_22458d0
	str     r0, [r5, #0x2c]
.thumb
branch_22458d0: @ 22458d0 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x6
	lsl     r0, r0, #10
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_22458e2
	str     r0, [r5, #0x30]
.thumb
branch_22458e2: @ 22458e2 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	mov     r0, #0x2
	ldr     r1, [r5, #0x38]
	lsl     r0, r0, #14
	add     r1, r1, r0
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	str     r1, [r5, #0x38]
	asr     r1, r0, #12
	mov     r0, #0x5a
	lsl     r0, r0, #2
	cmp     r1, r0
	ble     branch_224590a
	lsl     r0, r0, #12
	str     r0, [r5, #0x38]
.thumb
branch_224590a: @ 224590a :thumb
	ldr     r1, [r5, #0x38]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d2a4
	mov     r1, r0
	mov     r0, r4
	bl      Function_2021c94
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0xc]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r1, sp, #0xc
	bl      Function_2021c50
	ldr     r0, [r5, #0x48]
	cmp     r0, #0x0
	bne     branch_224594c
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	b       branch_2245952
@ 0x224594c

.thumb
branch_224594c: @ 224594c :thumb
	ldr     r0, [r5, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
.thumb
branch_2245952: @ 2245952 :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0xc
	bne     branch_224595e
	ldr     r0, [r5, #0x60]
	bl      Function_2245b80
.thumb
branch_224595e: @ 224595e :thumb
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r0, r4
	bl      Function_2021d2c
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r1, [sp, #0x0]
	mov     r0, #0x5
	add     r1, #0x80
	lsl     r0, r0, #10
	str     r1, [sp, #0x0]
	cmp     r1, r0
	ble     branch_2245988
	str     r0, [sp, #0x0]
.thumb
branch_2245988: @ 2245988 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x5
	add     r1, #0x80
	lsl     r0, r0, #10
	str     r1, [sp, #0x4]
	cmp     r1, r0
	ble     branch_2245998
	str     r0, [sp, #0x4]
.thumb
branch_2245998: @ 2245998 :thumb
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x22459a6


.incbin "./baserom/overlay/overlay_0006.bin", 0x7866, 0x22459a8 - 0x22459a6


.word 0x13b @ 0x22459a8
.word 0x10e @ 0x22459ac
.thumb
Function_22459b0: @ 22459b0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r1, #0x3
	mov     r0, r4
	bl      Function_2021d6c
	mov     r0, r4
	bl      Function_2021d28
	ldr     r4, [r0, #0x4]
	ldr     r0, [r5, #0x58]
	bl      Function_2021d28
	ldr     r0, [r0, #0x4]
	sub     r0, r4, r0
	str     r0, [r5, #0x54]
	ldr     r0, [r5, #0x60]
	bl      Function_2245b74
	ldr     r0, [r5, #0x64]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0xc
	bl      0x21f0f10 @ Function_5_21f0f10
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r1, [r5, #0x50]
	lsl     r0, r1, #11
	str     r0, [r5, #0x40]
	mov     r0, #0x0
	str     r0, [r5, #0x48]
	lsl     r0, r1, #3
	str     r0, [r5, #0x4c]
	mov     r0, #0x3
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2245a0a


.align 2, 0


.thumb
Function_2245a0c: @ 2245a0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r1, [r5, #0x48]
	ldr     r0, [r5, #0x4c]
	ldr     r4, [r5, #0x58]
	add     r0, r1, r0
	str     r0, [r5, #0x48]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4c]
	lsl     r0, r0, #12
	add     r2, r1, r0
	lsl     r1, r0, #4
	str     r2, [r5, #0x4c]
	cmp     r2, r1
	ble     branch_2245a30
	lsl     r0, r0, #4
	str     r0, [r5, #0x4c]
.thumb
branch_2245a30: @ 2245a30 :thumb
	ldr     r1, [r5, #0x40]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	lsl     r0, r0, #4
	lsr     r0, r0, #16
	bl      Function_201d264
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x14]
	mov     r0, #0x80
	bl      Function_201d250
	ldr     r2, [r5, #0x48]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	mul     r0, r1
	str     r0, [r5, #0x18]
	mov     r0, #0x87
	ldr     r1, [r5, #0x40]
	lsl     r0, r0, #12
	cmp     r1, r0
	bge     branch_2245a74
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [r5, #0x40]
.thumb
branch_2245a74: @ 2245a74 :thumb
	ldr     r1, [r5, #0x2c]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r1, [r5, #0x2c]
	cmp     r1, r0
	ble     branch_2245a86
	str     r0, [r5, #0x2c]
.thumb
branch_2245a86: @ 2245a86 :thumb
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x50]
	add     r1, r1, r0
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r1, [r5, #0x30]
	cmp     r1, r0
	ble     branch_2245a98
	str     r0, [r5, #0x30]
.thumb
branch_2245a98: @ 2245a98 :thumb
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x2c
	bl      Function_2021c70
	ldr     r1, [r5, #0x8]
	ldr     r0, [r5, #0x14]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	add     r1, sp, #0x18
	bl      Function_2021c50
	mov     r0, #0x79
	ldr     r1, [r5, #0x5c]
	lsl     r0, r0, #2
	ldr     r4, [r1, r0]
	mov     r0, r4
	bl      Function_2021d2c
	add     r2, sp, #0xc
	add     r3, sp, #0x18
	mov     r6, r0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldmia   r6!, {r0,r1}
	add     r2, sp, #0x0
	stmia   r2!, {r0,r1}
	ldr     r0, [r6, #0x0]
	str     r0, [r2, #0x0]
	mov     r0, #0x1
	ldr     r1, [r5, #0x54]
	lsl     r0, r0, #12
	sub     r1, r1, r0
	str     r1, [r5, #0x54]
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, r7
	bl      Function_2021c50
	mov     r0, #0x1
	ldr     r1, [sp, #0x0]
	lsl     r0, r0, #8
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x0]
	cmp     r2, r1
	ble     branch_2245b0e
	lsl     r0, r0, #5
	str     r0, [sp, #0x0]
.thumb
branch_2245b0e: @ 2245b0e :thumb
	mov     r0, #0x1
	ldr     r1, [sp, #0x4]
	lsl     r0, r0, #8
	add     r2, r1, r0
	lsl     r1, r0, #5
	str     r2, [sp, #0x4]
	cmp     r2, r1
	ble     branch_2245b22
	lsl     r0, r0, #5
	str     r0, [sp, #0x4]
.thumb
branch_2245b22: @ 2245b22 :thumb
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c70
	ldr     r1, [sp, #0x1c]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	cmp     r0, #0xf0
	blt     branch_2245b42
	mov     r0, #0x2
	strb    r0, [r5, #0x2]
	ldrb    r0, [r5, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x1]
.thumb
branch_2245b42: @ 2245b42 :thumb
	mov     r0, #0x0
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2245b48

.thumb
Function_2245b48: @ 2245b48 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245b4c

.thumb
Function_2245b4c: @ 2245b4c :thumb
	push    {lr}
	add     sp, #-0x1c
	add     r2, sp, #0x10
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	str     r3, [r2, #0x4]
	str     r1, [sp, #0xc]
	str     r3, [r2, #0x8]
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x81
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2245b70, (=#0x224920c)
	bl      Function_2071330
	add     sp, #0x1c
	pop     {pc}
@ 0x2245b6e


.incbin "./baserom/overlay/overlay_0006.bin", 0x7a2e, 0x2245b70 - 0x2245b6e


.word 0x224920c @ 0x2245b70
.thumb
Function_2245b74: @ 2245b74 :thumb
	push    {r3,lr}
	bl      Function_2071598
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x2245b80

.thumb
Function_2245b80: @ 2245b80 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	bl      Function_2021d28
	mov     r6, r0
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r2
	str     r0, [r3, #0x0]
	mov     r0, r5
	bl      Function_20715d4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x5
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2245bc6


.align 2, 0


.thumb
Function_2245bc8: @ 2245bc8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	bl      Function_2071598
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x20]
	add     r1, sp, #0x0
	bl      Function_22437c8
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20715d4
	ldr     r0, [r4, #0x20]
	mov     r1, #0x4
	bl      Function_2021d6c
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2245c02


.incbin "./baserom/overlay/overlay_0006.bin", 0x7ac2, 0x2245d48 - 0x2245c02


.thumb
Function_2245d48: @ 2245d48 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x14]
	mov     r1, #0x1
	bl      Function_2243f74
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245d5e


.align 2, 0


.thumb
Function_2245d60: @ 2245d60 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r0, #0x4
	mov     r1, #0x20
	bl      Function_20711ec
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r2, #0x2
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x20
	mov     r3, r2
	str     r2, [sp, #0x14]
	bl      Function_2243258
	bl      Function_2243f20
	mov     r4, r0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x7
	mov     r3, #0x0
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2243588
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x8
	mov     r3, #0x0
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_22435f8
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_2243554
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_224362c
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_2245e32
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xd
	mov     r3, #0x2
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xe
	mov     r3, #0x2
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0xf
	mov     r3, #0x1
	bl      Function_22436d0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243554
	b       branch_2245e92
@ 0x2245e32

.thumb
branch_2245e32: @ 2245e32 :thumb
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x10
	mov     r3, #0x2
	bl      Function_22434b0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x4
	mov     r3, #0x1
	bl      Function_2243588
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x11
	mov     r3, #0x2
	bl      Function_2243660
	mov     r0, r5
	add     r0, #0x18
	mov     r1, r4
	mov     r2, #0x12
	mov     r3, #0x1
	bl      Function_22436d0
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243520
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_22435f8
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x2
	bl      Function_2243554
	mov     r0, r5
	add     r0, #0x18
	mov     r1, #0x1
	bl      Function_224362c
.thumb
branch_2245e92: @ 2245e92 :thumb
	mov     r0, r4
	bl      Function_2006ca8
	ldr     r0, [r5, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x2245ea4

.thumb
Function_2245ea4: @ 2245ea4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	add     r0, #0x18
	bl      Function_2243848
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cac
	mov     r3, #0x17
	lsl     r3, r3, #4
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	mov     r2, r4
	ldr     r0, [r4, #0x14]
	ldr     r3, [r4, r3]
	add     r2, #0x18
	bl      Function_2243888
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      Function_2243950
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245eec

.thumb
Function_2245eec: @ 2245eec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22438bc
	cmp     r0, #0x2
	beq     branch_2245f02
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245f02

.thumb
branch_2245f02: @ 2245f02 :thumb
	mov     r0, #0x5d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22438ec
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2245f16


.align 2, 0


.thumb
Function_2245f18: @ 2245f18 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_207121c
	mov     r0, r4
	add     r0, #0x18
	bl      Function_224339c
	mov     r0, #0x0
	str     r0, [r4, #0x10]
	mov     r1, #0x1
	str     r1, [r4, #0x4]
	ldr     r1, [r4, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, #0x0]
	pop     {r4,pc}
@ 0x2245f3e


.align 2, 0


.thumb
Function_2245f40: @ 2245f40 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2245f44

.thumb
Function_2245f44: @ 2245f44 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      Function_2018184
	mov     r4, r0
	bne     branch_2245f54
	bl      Function_2022974
.thumb
branch_2245f54: @ 2245f54 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r5
	blx     Function_20d5124
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2245f62


.align 2, 0


.thumb
Function_2245f64: @ 2245f64 :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0x60]
	mov     r4, r1
	ldr     r0, [r0, #0x3c]
	bl      Function_205eb3c
	mov     r5, r0
	bl      Function_2062ddc
	mov     r0, r5
	mov     r1, r4
	bl      Function_2062d64
	pop     {r3-r5,pc}
@ 0x2245f80


.incbin "./baserom/overlay/overlay_0006.bin", 0x7e40, 0x2245fdc - 0x2245f80


.thumb
Function_2245fdc: @ 2245fdc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	add     r2, sp, #0x10
	mov     r3, #0x0
	str     r3, [r2, #0x0]
	mov     r4, r0
	str     r3, [r2, #0x4]
	mov     r0, #0x79
	str     r3, [r2, #0x8]
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	add     r1, sp, #0x8
	str     r1, [sp, #0x0]
	mov     r1, #0x86
	str     r1, [sp, #0x4]
	ldr     r0, [r4, r0]
	ldr     r1, [pc, #0x10] @ 0x2246014, (=#0x2249234)
	bl      Function_2071330
	mov     r1, #0x1f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x2246012


.incbin "./baserom/overlay/overlay_0006.bin", 0x7ed2, 0x2246014 - 0x2246012


.word 0x2249234 @ 0x2246014
.thumb
Function_2246018: @ 2246018 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2246032
	bl      Function_207136c
	mov     r0, #0x1f
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_2246032: @ 2246032 :thumb
	pop     {r4,pc}
@ 0x2246034


.incbin "./baserom/overlay/overlay_0006.bin", 0x7ef4, 0x2246a30 - 0x2246034


.thumb
Function_2246a30: @ 2246a30 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2246a34

.thumb
Function_2246a34: @ 2246a34 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2246a38

.thumb
Function_2246a38: @ 2246a38 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x7
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a4a


.align 2, 0


.thumb
Function_2246a4c: @ 2246a4c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, r1
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a5e


.align 2, 0


.thumb
Function_2246a60: @ 2246a60 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x9
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a72


.align 2, 0


.thumb
Function_2246a74: @ 2246a74 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0xa
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a86


.align 2, 0


.thumb
Function_2246a88: @ 2246a88 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0xb
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246a9a


.align 2, 0


.thumb
Function_2246a9c: @ 2246a9c :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	mov     r1, #0x2
	mov     r2, #0x11
	bl      Function_206af3c
	pop     {r3,pc}
@ 0x2246aae


.align 2, 0


.thumb
Function_2246ab0: @ 2246ab0 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadTrainerDataAdress
	bl      Function_2025f58
	cmp     r0, #0x5
	blt     branch_2246ac4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2246ac4

.thumb
branch_2246ac4: @ 2246ac4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2246ac8

.thumb
Function_2246ac8: @ 2246ac8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_2027560
	bl      Function_2026f0c
	pop     {r3,pc}
@ 0x2246ad6


.align 2, 0


.thumb
Function_2246ad8: @ 2246ad8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      Function_2027560
	bl      Function_2027520
	pop     {r3,pc}
@ 0x2246ae6


.align 2, 0


.thumb
Function_2246ae8: @ 2246ae8 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0xc]
	bl      LoadFlagAdress
	bl      Function_206a954
	pop     {r3,pc}
@ 0x2246af6


.incbin "./baserom/overlay/overlay_0006.bin", 0x89b6, 0x224715c - 0x2246af6


.thumb
Function_224715c: @ 224715c :thumb
	push    {r4,lr}
	mov     r0, r1
	mov     r1, #0x4
	mov     r4, r2
	bl      0x21f0eb0 @ Function_5_21f0eb0
	ldr     r2, [pc, #0x44] @ 0x22471b0, (=#0xfff6a000)
	str     r0, [r4, #0x14]
	mov     r1, #0x1
	mov     r3, #0xf
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x3c] @ 0x22471b4, (=#0x2249608)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_2247194
	cmp     r0, #0x1
	beq     branch_224719c
	cmp     r0, #0x2
	beq     branch_22471a4
	b       branch_22471aa
@ 0x2247194

.thumb
branch_2247194: @ 2247194 :thumb
	ldr     r0, [pc, #0x20] @ 0x22471b8, (=#0x603)
	bl      Function_2005748
	b       branch_22471aa
@ 0x224719c

.thumb
branch_224719c: @ 224719c :thumb
	ldr     r0, [pc, #0x18] @ 0x22471b8, (=#0x603)
	bl      Function_2005748
	b       branch_22471aa
@ 0x22471a4

.thumb
branch_22471a4: @ 22471a4 :thumb
	ldr     r0, [pc, #0x14] @ 0x22471bc, (=#0x64e)
	bl      Function_2005748
.thumb
branch_22471aa: @ 22471aa :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22471ae


.incbin "./baserom/overlay/overlay_0006.bin", 0x906e, 0x22471b0 - 0x22471ae


.word 0xfff6a000 @ 0x22471b0
.word 0x2249608 @ 0x22471b4
.word 0x603 @ 0x22471b8
.word 0x64e @ 0x22471bc
.thumb
Function_22471c0: @ 22471c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_22471d6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22471d6

.thumb
branch_22471d6: @ 22471d6 :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x5c] @ 0x224723c, (=#0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x8
	bge     branch_22471f6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x22471f6

.thumb
branch_22471f6: @ 22471f6 :thumb
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x2
	bne     branch_2247216
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	b       branch_224722e
@ 0x2247216

.thumb
branch_2247216: @ 2247216 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	ldr     r3, [pc, #0x18] @ 0x2247240, (=#0x7fff)
	mov     r1, r0
	mov     r2, r0
	bl      Function_200f174
.thumb
branch_224722e: @ 224722e :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224723a


.incbin "./baserom/overlay/overlay_0006.bin", 0x90fa, 0x224723c - 0x224723a


.word 0x22495dc @ 0x224723c
.word 0x7fff @ 0x2247240
.thumb
Function_2247244: @ 2247244 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_2247262
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x28] @ 0x2247284, (=#0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
.thumb
branch_2247262: @ 2247262 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_224726e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224726e

.thumb
branch_224726e: @ 224726e :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x14]
	bl      0x21f0efc @ Function_5_21f0efc
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2247284

.word 0x22495dc @ 0x2247284
.thumb
Function_2247288: @ 2247288 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r1, #0xc]
	mov     r4, r2
	bl      Function_203a790
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x2
	bne     branch_22472b2
	bl      Function_203a75c
	add     r1, sp, #0x0
	bl      Function_203a7f0
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_2053cd4
	b       branch_22472c0
@ 0x22472b2

.thumb
branch_22472b2: @ 22472b2 :thumb
	bl      Function_203a72c
	mov     r1, r0
	ldr     r2, [r4, #0x8]
	mov     r0, r5
	bl      Function_2053cd4
.thumb
branch_22472c0: @ 22472c0 :thumb
	mov     r0, #0x2
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x22472c6


.incbin "./baserom/overlay/overlay_0006.bin", 0x9186, 0x2247354 - 0x22472c6


.thumb
Function_2247354: @ 2247354 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r0, [r4, #0x8]
	mov     r5, r1
	cmp     r0, #0x2
	bne     branch_224737a
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	b       branch_2247390
@ 0x224737a

.thumb
branch_224737a: @ 224737a :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x34] @ 0x22473bc, (=#0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      Function_200f174
.thumb
branch_2247390: @ 2247390 :thumb
	mov     r0, r5
	mov     r1, #0x4
	bl      0x21f0eb0 @ Function_5_21f0eb0
	mov     r1, #0x1
	ldr     r2, [pc, #0x24] @ 0x22473c0, (=#0xfff6a000)
	str     r0, [r4, #0x14]
	mov     r3, r1
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x1c] @ 0x22473c4, (=#0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x22473ba


.incbin "./baserom/overlay/overlay_0006.bin", 0x927a, 0x22473bc - 0x22473ba


.word 0x7fff @ 0x22473bc
.word 0xfff6a000 @ 0x22473c0
.word 0x22495dc @ 0x22473c4
.thumb
Function_22473c8: @ 22473c8 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x1
	bne     branch_22473e6
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x18]
	ldr     r1, [pc, #0x28] @ 0x2247408, (=#0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
.thumb
branch_22473e6: @ 22473e6 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	bne     branch_22473f2
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22473f2

.thumb
branch_22473f2: @ 22473f2 :thumb
	ldr     r0, [r4, #0x14]
	mov     r1, #0x2
	mov     r2, #0x0
	mov     r3, #0x3c
	bl      0x21f0f10 @ Function_5_21f0f10
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2247408

.word 0x22495dc @ 0x2247408
.thumb
Function_224740c: @ 224740c :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_224741e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224741e

.thumb
branch_224741e: @ 224741e :thumb
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	cmp     r0, #0x4
	ldr     r0, [r4, #0x18]
	bge     branch_224743c
	ldr     r1, [pc, #0x1c] @ 0x2247450, (=#0x22495dc)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224743c

.thumb
branch_224743c: @ 224743c :thumb
	ldr     r1, [pc, #0x14] @ 0x2247454, (=#0x224966c)
	bl      Function_2065700
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224744e


.incbin "./baserom/overlay/overlay_0006.bin", 0x930e, 0x2247450 - 0x224744e


.word 0x22495dc @ 0x2247450
.word 0x224966c @ 0x2247454
.thumb
Function_2247458: @ 2247458 :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0xc]
	bl      Function_206574c
	cmp     r0, #0x0
	bne     branch_224746a
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224746a

.thumb
branch_224746a: @ 224746a :thumb
	ldr     r0, [r4, #0x14]
	bl      0x21f0ef0 @ Function_5_21f0ef0
	cmp     r0, #0x0
	bne     branch_2247478
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2247478

.thumb
branch_2247478: @ 2247478 :thumb
	ldr     r0, [r4, #0x14]
	bl      0x21f0efc @ Function_5_21f0efc
	ldr     r0, [r4, #0xc]
	bl      Function_2065758
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2247488


.incbin "./baserom/overlay/overlay_0006.bin", 0x9348, 0x22474e8 - 0x2247488


.thumb
Function_22474e8: @ 22474e8 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	ldr     r0, [r5, #0x3c]
	mov     r4, r2
	bl      Function_205eb98
	mov     r3, r0
	ldr     r2, [r4, #0x20]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_2243f88
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x224750c

.thumb
Function_224750c: @ 224750c :thumb
	push    {r4,lr}
	mov     r4, r2
	ldr     r0, [r4, #0x10]
	bl      Function_2243fbc
	cmp     r0, #0x0
	bne     branch_224751e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224751e

.thumb
branch_224751e: @ 224751e :thumb
	ldr     r0, [r4, #0x10]
	bl      Function_2243fc8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224752e


.incbin "./baserom/overlay/overlay_0006.bin", 0x93ee, 0x22480bc - 0x224752e


.thumb
Function_22480bc: @ 22480bc :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r6, r0
	add     r1, sp, #0x0
	bl      Function_205eaec
	mov     r0, r6
	bl      GetSpritePositionX
	mov     r5, r0
	mov     r0, r6
	bl      GetSpritePositionY
	mov     r4, r0
	mov     r0, r6
	bl      GetSpriteFaceDirection
	cmp     r0, #0x3
	bhi     branch_2248108
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r0, #0
	lsl     r2, r1, #0
	lsl     r6, r1, #0
	lsl     r2, r2, #0
	.hword  0x1e64 @ sub r4, r4, #0x1
	b       branch_224810c
@ 0x22480fc


.incbin "./baserom/overlay/overlay_0006.bin", 0x9fbc, 0x2248108 - 0x22480fc


.thumb
branch_2248108: @ 2248108 :thumb
	bl      Function_2022974
.thumb
branch_224810c: @ 224810c :thumb
	mov     r3, #0x2
	lsl     r1, r5, #16
	lsl     r3, r3, #14
	ldr     r2, [sp, #0x4]
	lsl     r4, r4, #16
	add     r1, r1, r3
	mov     r0, r7
	add     r3, r4, r3
	bl      Function_2017350
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2248124


.incbin "./baserom/overlay/overlay_0006.bin", 0x9fe4, 0x2248140 - 0x2248124


.thumb
Function_2248140: @ 2248140 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r1, [sp, #0x8]
	mov     r4, r2
	mov     r6, r0
	mov     r1, #0x0
	mov     r2, #0xdc
	str     r3, [sp, #0xc]
	ldr     r7, [sp, #0x2c]
	blx     Function_20d5124
	mov     r0, r6
	ldr     r1, [sp, #0x8]
	add     r0, #0x78
	mov     r2, r4
	mov     r3, #0x4
	bl      Function_20170d8
	mov     r1, r6
	mov     r0, r6
	add     r1, #0x78
	bl      Function_2017258
	mov     r0, r6
	ldr     r1, [sp, #0x28]
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_22481b8
	mov     r0, r6
	mov     r5, r6
	str     r0, [sp, #0x10]
	add     r0, #0x78
	add     r5, #0x88
	str     r0, [sp, #0x10]
.thumb
branch_224818e: @ 224818e :thumb
	ldr     r3, [sp, #0xc]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x8]
	mov     r0, r5
	add     r3, r3, r4
	str     r7, [sp, #0x4]
	bl      Function_2017164
	mov     r0, r6
	mov     r1, r5
	bl      Function_201727c
	mov     r0, r6
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_224818e
.thumb
branch_22481b8: @ 22481b8 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22481bc


.incbin "./baserom/overlay/overlay_0006.bin", 0xa07c, 0x22481f0 - 0x22481bc


.thumb
Function_22481f0: @ 22481f0 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r6, #0x1
	mov     r4, #0x0
	cmp     r0, #0x0
	bls     branch_224821e
	mov     r5, r7
	add     r5, #0x88
.thumb
branch_2248204: @ 2248204 :thumb
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	bl      Function_2017204
	and     r6, r0
	mov     r0, r7
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, r0
	bcc     branch_2248204
.thumb
branch_224821e: @ 224821e :thumb
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2248222


.incbin "./baserom/overlay/overlay_0006.bin", 0xa0e2, 0x224825c - 0x2248222


.thumb
Function_224825c: @ 224825c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r1
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xf0
	blx     Function_20d5124
	mov     r0, r4
	add     r0, #0xdc
	mov     r1, #0x4
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      Function_2006c24
	mov     r6, r0
	mov     r2, #0x3
	mov     r0, r4
	str     r2, [sp, #0x0]
	add     r0, #0xdc
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2248140
	mov     r0, r6
	bl      Function_2006ca8
	ldr     r0, [r5, #0x3c]
	mov     r1, r4
	bl      Function_22480bc
	ldr     r0, [pc, #0x10] @ 0x22482b8, (=#0x64b)
	bl      Function_2005748
	mov     r0, #0x0
	add     r4, #0xec
	str     r0, [r4, #0x0]
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22482b6


.incbin "./baserom/overlay/overlay_0006.bin", 0xa176, 0x22482b8 - 0x22482b6


.word 0x64b @ 0x22482b8
.thumb
Function_22482bc: @ 22482bc :thumb
	ldr     r3, [pc, #0x8] @ 0x22482c8, (=#0x22481bd)
	mov     r0, r2
	add     r2, #0xdc
	mov     r1, r2
	bx      r3
@ 0x22482c6


.incbin "./baserom/overlay/overlay_0006.bin", 0xa186, 0x22482c8 - 0x22482c6


.word 0x22481bd @ 0x22482c8
.thumb
Function_22482cc: @ 22482cc :thumb
	push    {r4,lr}
	mov     r4, r2
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22482de
	cmp     r0, #0x1
	pop     {r4,pc}
@ 0x22482de

.thumb
branch_22482de: @ 22482de :thumb
	mov     r0, r4
	bl      Function_22481f0
	cmp     r0, #0x1
	bne     branch_22482fc
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2017348
	mov     r0, r4
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	add     r4, #0xec
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
.thumb
branch_22482fc: @ 22482fc :thumb
	pop     {r4,pc}
@ 0x22482fe


.align 2, 0


.thumb
Function_2248300: @ 2248300 :thumb
	ldr     r3, [pc, #0x4] @ 0x2248308, (=#0x2248255)
	mov     r0, r2
	bx      r3
@ 0x2248306


.incbin "./baserom/overlay/overlay_0006.bin", 0xa1c6, 0x2248308 - 0x2248306


.word 0x2248255 @ 0x2248308
.thumb
Function_224830c: @ 224830c :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248318, (=#0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x224831c, (=#0x2249804)
	bx      r3
@ 0x2248316


.incbin "./baserom/overlay/overlay_0006.bin", 0xa1d6, 0x2248318 - 0x2248316


.word 0x21d1b6d @ 0x2248318
.word 0x2249804 @ 0x224831c
.thumb
Function_2248320: @ 2248320 :thumb
	ldr     r3, [pc, #0x0] @ 0x2248324, (=#0x21d1bed)
	bx      r3
@ 0x2248324

.word 0x21d1bed @ 0x2248324
.thumb
Function_2248328: @ 2248328 :thumb
	push    {r3,lr}
	bl      0x21d1c2c @ Function_5_21d1c2c
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_224833a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x224833a

.thumb
branch_224833a: @ 224833a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x224833e


.incbin "./baserom/overlay/overlay_0006.bin", 0xa1fe, 0x2248450 - 0x224833e


.thumb
Function_2248450: @ 2248450 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x224845c, (=#0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2248460, (=#0x22497ec)
	bx      r3
@ 0x224845a


.incbin "./baserom/overlay/overlay_0006.bin", 0xa31a, 0x224845c - 0x224845a


.word 0x21d1b6d @ 0x224845c
.word 0x22497ec @ 0x2248460
.thumb
Function_2248464: @ 2248464 :thumb
	ldr     r0, [r0, #0x4]
	ldr     r3, [pc, #0x8] @ 0x2248470, (=#0x21d1b6d)
	ldr     r0, [r0, #0x4]
	ldr     r1, [pc, #0x8] @ 0x2248474, (=#0x22497d4)
	bx      r3
@ 0x224846e


.incbin "./baserom/overlay/overlay_0006.bin", 0xa32e, 0x2248470 - 0x224846e


.word 0x21d1b6d @ 0x2248470
.word 0x22497d4 @ 0x2248474
.thumb
Function_2248478: @ 2248478 :thumb
	ldr     r3, [pc, #0x0] @ 0x224847c, (=#0x21d1bed)
	bx      r3
@ 0x224847c

.word 0x21d1bed @ 0x224847c
.thumb
Function_2248480: @ 2248480 :thumb
	push    {r3,lr}
	bl      0x21d1c2c @ Function_5_21d1c2c
	add     r0, #0xec
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2248492
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2248492

.thumb
branch_2248492: @ 2248492 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2248496


.incbin "./baserom/overlay/overlay_0006.bin", 0xa356, 0x2248610 - 0x2248496


.thumb
Function_2248610: @ 2248610 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	mov     r4, r2
	mov     r5, r3
	cmp     r0, #0x0
	beq     branch_2248628
	bl      Function_2022974
.thumb
branch_2248628: @ 2248628 :thumb
	mov     r0, r6
	add     r1, sp, #0x0
	bl      Function_205eaec
	ldr     r2, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	add     r2, r2, r4
	add     r3, r3, r5
	bl      Function_2017350
	mov     r0, r7
	mov     r4, #0x0
	mov     r5, r7
	mov     r1, #0x1
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	add     r5, #0x78
	mov     r6, r4
.thumb
branch_2248650: @ 2248650 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_2017240
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_2248650
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2017348
	ldr     r0, [pc, #0x8] @ 0x2248674, (=#0x627)
	bl      Function_2005748
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2248672


.incbin "./baserom/overlay/overlay_0006.bin", 0xa532, 0x2248674 - 0x2248672


.word 0x627 @ 0x2248674
.thumb
Function_2248678: @ 2248678 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	add     r0, #0xc8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_22486b2
	ldr     r5, [sp, #0x0]
	mov     r4, #0x1
	mov     r6, #0x0
	add     r5, #0x78
	lsl     r7, r4, #12
.thumb
branch_224868e: @ 224868e :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2017204
	.hword  0x1c76 @ add r6, r6, #0x1
	and     r4, r0
	add     r5, #0x14
	cmp     r6, #0x4
	blt     branch_224868e
	cmp     r4, #0x1
	bne     branch_22486b2
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x0]
	bl      Function_2017348
.thumb
branch_22486b2: @ 22486b2 :thumb
	pop     {r3-r7,pc}
@ 0x22486b4

.thumb
Function_22486b4: @ 22486b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r1, #0x0
	mov     r2, #0xcc
	mov     r7, r0
	mov     r5, r3
	blx     Function_20d5124
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      Function_2017258
	mov     r4, r7
	mov     r6, #0x0
	add     r4, #0x78
.thumb
branch_22486d6: @ 22486d6 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r3, [sp, #0x4]
	mov     r0, r4
	bl      Function_2017190
	mov     r0, r7
	mov     r1, r4
	bl      Function_201727c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r4, #0x14
	cmp     r6, #0x4
	blt     branch_22486d6
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2017348
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248700

.thumb
Function_2248700: @ 2248700 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r7
	mov     r6, r1
	mov     r4, #0x0
	add     r5, #0x78
.thumb
branch_224870c: @ 224870c :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_20171a0
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x14
	cmp     r4, #0x4
	blt     branch_224870c
	mov     r0, r7
	mov     r1, #0x0
	mov     r2, #0xcc
	blx     Function_20d5124
	pop     {r3-r7,pc}
@ 0x2248728

.thumb
Function_2248728: @ 2248728 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0xce
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x3c]
	bl      Function_205eaec
	mov     r1, #0xcf
	lsl     r1, r1, #4
	ldr     r2, [sp, #0x0]
	ldr     r0, [r4, r1]
	sub     r0, r2, r0
	bne     branch_2248770
	add     r0, r1, #0x4
	ldr     r2, [sp, #0x4]
	ldr     r0, [r4, r0]
	cmp     r2, r0
	bge     branch_2248770
	mov     r0, r1
	add     r0, #0x8
	ldr     r2, [sp, #0x8]
	ldr     r0, [r4, r0]
	cmp     r2, r0
	ble     branch_2248770
	mov     r0, r1
	mov     r2, #0x0
	sub     r0, #0x8
	str     r2, [r4, r0]
	mov     r2, #0x2
	lsl     r2, r2, #16
	sub     r0, r1, #0x4
	str     r2, [r4, r0]
	b       branch_224877e
@ 0x2248770

.thumb
branch_2248770: @ 2248770 :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x20] @ 0x2248794, (=#0xce8)
	lsl     r1, r1, #16
	str     r1, [r4, r0]
	lsr     r1, r1, #1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_224877e: @ 224877e :thumb
	mov     r0, #0xcf
	lsl     r0, r0, #4
	add     r3, sp, #0x0
	add     r2, r4, r0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2248792


.incbin "./baserom/overlay/overlay_0006.bin", 0xa652, 0x2248794 - 0x2248792


.word 0xce8 @ 0x2248794
.thumb
Function_2248798: @ 2248798 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2248728
	mov     r2, #0x0
	mov     r1, r4
.thumb
branch_22487a4: @ 22487a4 :thumb
	mov     r0, r1
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_22487d0
	mov     r1, r4
	mov     r0, #0xcc
	mov     r3, #0xce
	add     r1, #0x10
	mul     r0, r2
	lsl     r3, r3, #4
	add     r0, r1, r0
	ldr     r1, [r4, r3]
	mov     r2, r3
	add     r2, #0x8
	add     r3, #0xc
	ldr     r1, [r1, #0x3c]
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	bl      Function_2248610
	pop     {r4,pc}
@ 0x22487d0

.thumb
branch_22487d0: @ 22487d0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r1, #0xcc
	cmp     r2, #0x10
	blt     branch_22487a4
	bl      Function_2022974
	pop     {r4,pc}
@ 0x22487de


.align 2, 0


.thumb
Function_22487e0: @ 22487e0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x10
.thumb
branch_22487e8: @ 22487e8 :thumb
	mov     r0, r5
	bl      Function_2248678
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xcc
	cmp     r4, #0x10
	blt     branch_22487e8
	pop     {r3-r5,pc}
@ 0x22487f8

.thumb
Function_22487f8: @ 22487f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r2
	mov     r2, #0xd1
	str     r1, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #4
	blx     Function_20d5124
	ldr     r0, [pc, #0x84] @ 0x2248894, (=#0xcfc)
	mov     r1, #0x4
	add     r0, r5, r0
	mov     r2, #0x20
	bl      Function_20182cc
	mov     r0, #0x8d
	mov     r1, #0x4
	bl      Function_2006c24
	mov     r7, r0
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x8
	mov     r3, #0x4
	bl      Function_20170d8
	mov     r4, #0x0
	mov     r6, r5
.thumb
branch_2248832: @ 2248832 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r7
	add     r1, r4, #0x4
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_200723c
	mov     r1, #0xcd
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x4
	blt     branch_2248832
	mov     r4, r5
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_2248856: @ 2248856 :thumb
	ldr     r2, [pc, #0x3c] @ 0x2248894, (=#0xcfc)
	mov     r3, #0xcd
	lsl     r3, r3, #4
	mov     r0, r4
	mov     r1, r5
	add     r2, r5, r2
	add     r3, r5, r3
	bl      Function_22486b4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xcc
	cmp     r6, #0x10
	blt     branch_2248856
	mov     r1, #0xce
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	add     r1, #0x10
	ldr     r0, [r0, #0x3c]
	add     r1, r5, r1
	bl      Function_205eaec
	ldr     r0, [pc, #0x10] @ 0x2248898, (=#0xd0c)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, r7
	bl      Function_2006ca8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2248894

.word 0xcfc @ 0x2248894
.word 0xd0c @ 0x2248898
.thumb
Function_224889c: @ 224889c :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r4, r5
	ldr     r7, [pc, #0x30] @ 0x22488d4, (=#0xcfc)
	mov     r6, #0x0
	add     r4, #0x10
.thumb
branch_22488a8: @ 22488a8 :thumb
	mov     r0, r4
	add     r1, r5, r7
	bl      Function_2248700
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xcc
	cmp     r6, #0x10
	blt     branch_22488a8
	mov     r0, r5
	bl      Function_2017110
	mov     r6, #0xcd
	mov     r4, #0x0
	lsl     r6, r6, #4
.thumb
branch_22488c4: @ 22488c4 :thumb
	ldr     r0, [r5, r6]
	bl      Function_20181c4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_22488c4
	pop     {r3-r7,pc}
@ 0x22488d4

.word 0xcfc @ 0x22488d4
.thumb
Function_22488d8: @ 22488d8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x34] @ 0x2248910, (=#0xd0c)
	mov     r4, r2
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_224890e
	mov     r0, r1
	sub     r0, #0x28
	ldr     r0, [r4, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	mov     r0, r1
	sub     r0, #0x28
	str     r2, [r4, r0]
	mov     r0, r1
	sub     r0, #0x28
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bge     branch_2248908
	mov     r0, #0x4
	sub     r1, #0x28
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_2248798
.thumb
branch_2248908: @ 2248908 :thumb
	mov     r0, r4
	bl      Function_22487e0
.thumb
branch_224890e: @ 224890e :thumb
	pop     {r4,pc}
@ 0x2248910

.word 0xd0c @ 0x2248910



.thumb
Function_2248914: @ 2248914 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r4, #0x0
	add     r5, #0x10
branch_224891c: @ 224891c :thumb
	mov     r0, r5
	bl      Function_2017294
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xcc
	cmp     r4, #0x10
	blt     branch_224891c
	pop     {r3-r5,pc}
@ 0x224892c


.incbin "./baserom/overlay/overlay_0006.bin", 0xa7ec, 0x22491ec - 0x224892c


Unknown_22491ec:
.word Function_2245840+1 @ =0x2245841, 0x22491ec
.word Function_22459b0+1 @ =0x22459b1, 0x22491f0
.word Function_2245a0c+1 @ =0x2245a0d, 0x22491f4
.word Function_2245b48+1 @ =0x2245b49, 0x22491f8

.incbin "./baserom/overlay/overlay_0006.bin", 0xb0bc, 0x224924c - 0x22491fc


Unknown_224924c:
.word Function_22454b0+1 @ =0x22454b1, 0x224924c
.word Function_22454dc+1 @ =0x22454dd, 0x2249250
.word Function_22454e8+1 @ =0x22454e9, 0x2249254
.word Function_2245508+1 @ =0x2245509, 0x2249258

.incbin "./baserom/overlay/overlay_0006.bin", 0xb11c, 0x2249260 - 0x224925c


Unknown_2249260:
.word Function_22438c8+1 @ =0x22438c9, 0x2249260
.word Function_2243914+1 @ =0x2243915, 0x2249264
.word Function_2243920+1 @ =0x2243921, 0x2249268
.word Function_20715fc+1 @ 0x224926c
.word Function_2245d48+1 @ =0x2245d49, 0x2249270
.word Function_2245d60+1 @ =0x2245d61, 0x2249274
.word Function_2245ea4+1 @ =0x2245ea5, 0x2249278
.word Function_2245eec+1 @ =0x2245eed, 0x224927c
.word Function_2245f18+1 @ =0x2245f19, 0x2249280
.word Function_2245f40+1 @ =0x2245f41, 0x2249284
.word Function_2243ab8+1 @ =0x2243ab9, 0x2249288
.word Function_2243bb8+1 @ =0x2243bb9, 0x224928c
.word Function_2243bec+1 @ =0x2243bed, 0x2249290
.word Function_2243cd8+1 @ =0x2243cd9, 0x2249294
.word Function_2243cfc+1 @ =0x2243cfd, 0x2249298
.word Function_2243dc0+1 @ =0x2243dc1, 0x224929c
.word Function_2243ecc+1 @ =0x2243ecd, 0x22492a0
.word Function_2243f1c+1 @ =0x2243f1d, 0x22492a4

.incbin "./baserom/overlay/overlay_0006.bin", 0xb168, 0x22492d8 - 0x22492a8


Unknown_22492d8:
.word Function_2244038+1 @ =0x2244039, 0x22492d8
.word Function_2244050+1 @ =0x2244051, 0x22492dc
.word Function_22440c0+1 @ =0x22440c1, 0x22492e0
.word Function_22440f8+1 @ =0x22440f9, 0x22492e4
.word Function_2244138+1 @ =0x2244139, 0x22492e8
.word Function_22441bc+1 @ =0x22441bd, 0x22492ec
.word Function_22441dc+1 @ =0x22441dd, 0x22492f0
.word Function_2244228+1 @ =0x2244229, 0x22492f4
.word Function_2244284+1 @ =0x2244285, 0x22492f8
.word Function_22442a4+1 @ =0x22442a5, 0x22492fc
.word Function_2244308+1 @ =0x2244309, 0x2249300
.word Function_2244388+1 @ =0x2244389, 0x2249304
.word Function_224439c+1 @ =0x224439d, 0x2249308
.word Function_22443b0+1 @ =0x22443b1, 0x224930c
.word Function_2244038+1 @ =0x2244039, 0x2249310
.word Function_22443ec+1 @ =0x22443ed, 0x2249314
.word Function_22440c0+1 @ =0x22440c1, 0x2249318
.word Function_22440f8+1 @ =0x22440f9, 0x224931c
.word Function_2244138+1 @ =0x2244139, 0x2249320
.word Function_22441bc+1 @ =0x22441bd, 0x2249324
.word Function_22441dc+1 @ =0x22441dd, 0x2249328
.word Function_2244228+1 @ =0x2244229, 0x224932c
.word Function_2244284+1 @ =0x2244285, 0x2249330
.word Function_22442a4+1 @ =0x22442a5, 0x2249334
.word Function_224445c+1 @ =0x224445d, 0x2249338
.word Function_2244470+1 @ =0x2244471, 0x224933c
.word Function_2244488+1 @ =0x2244489, 0x2249340
.word Function_22444a8+1 @ =0x22444a9, 0x2249344
.word Function_22444d0+1 @ =0x22444d1, 0x2249348
.word Function_22444f8+1 @ =0x22444f9, 0x224934c
.word Function_2244518+1 @ =0x2244519, 0x2249350
.word Function_2244548+1 @ =0x2244549, 0x2249354
.word Function_22445ec+1 @ =0x22445ed, 0x2249358
.word Function_2244634+1 @ =0x2244635, 0x224935c
.word Function_2244388+1 @ =0x2244389, 0x2249360
.word Function_224439c+1 @ =0x224439d, 0x2249364
.word Function_22443b0+1 @ =0x22443b1, 0x2249368

.incbin "./baserom/overlay/overlay_0006.bin", 0xb22c, 0x22494b0 - 0x224936c


Unknown_22494b0:
.word Function_2246a30+1 @ =0x2246a31, 0x22494b0
.word Function_2246a4c+1 @ =0x2246a4d, 0x22494b4
.word Function_2246a38+1 @ =0x2246a39, 0x22494b8
.word Function_2246a60+1 @ =0x2246a61, 0x22494bc
.word Function_2246a74+1 @ =0x2246a75, 0x22494c0
.word Function_2246a88+1 @ =0x2246a89, 0x22494c4
.word Function_2246a9c+1 @ =0x2246a9d, 0x22494c8
.word Function_2246ab0+1 @ =0x2246ab1, 0x22494cc
.word Function_2246ac8+1 @ =0x2246ac9, 0x22494d0
.word Function_2246ad8+1 @ =0x2246ad9, 0x22494d4
.word Function_2246ae8+1 @ =0x2246ae9, 0x22494d8
.word Function_2246a34+1 @ =0x2246a35, 0x22494dc


.incbin "./baserom/overlay/overlay_0006.bin", 0xb3a0, 0x224980c - 0x22494e0


Unknown_224980c:
.word Function_224825c+1 @ =0x224825d, 0x224980c
.word Function_22482bc+1 @ =0x22482bd, 0x2249810
.word Function_22482cc+1 @ =0x22482cd, 0x2249814
.word Function_2248300+1 @ =0x2248301, 0x2249818

.incbin "./baserom/overlay/overlay_0006.bin", 0xb6dc, 0x2249824 - 0x224981c


Unknown_2249824:
.word Function_22487f8+1 @ =0x22487f9, 0x2249824
.word Function_224889c+1 @ =0x224889d, 0x2249828
.word Function_22488d8+1 @ =0x22488d9, 0x224982c
.word Function_2248914+1 @ =0x2248915, 0x2249830
.word Function_2248320+1 @ =0x2248321, 0x2249834
.word Function_2248478+1 @ =0x2248479, 0x2249838
.word Function_2248478+1 @ =0x2248479, 0x224983c
.word Function_224830c+1 @ =0x224830d, 0x2249840
.word Function_2248450+1 @ =0x2248451, 0x2249844
.word Function_2248464+1 @ =0x2248465, 0x2249848
.word Function_2248328+1 @ =0x2248329, 0x224984c
.word Function_2248480+1 @ =0x2248481, 0x2249850
.word Function_2248480+1 @ =0x2248481, 0x2249854
@ 0x2249858


.incbin "./baserom/overlay/overlay_0006.bin", 0xb718, 0x2249940 - 0x2249858


@end 0x2249940

