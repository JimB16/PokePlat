

.section .iwram96, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x14] @ 0x223b158, (=0x223dde0)
	mov     r4, #0x1
	str     r4, [r3, #0x0]
	mov     r4, #0x0
	str     r4, [r3, #0x4]
	str     r0, [r3, #0x8]
	str     r1, [r3, #0xc]
	str     r2, [r3, #0x10]
	pop     {r3,r4}
	bx      lr
@ 0x223b156


.align 2


.word 0x223dde0 @ 0x223b158
.thumb
Function_223b15c: @ 223b15c :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x268] @ 0x223b3c8, (=0x223dde0)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0xc
	bls     branch_223b168
	b       branch_223b3c4
@ 0x223b168

.thumb
branch_223b168: @ 223b168 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b174

Jumppoints_223b174:
.hword branch_223b3c4 - Jumppoints_223b174 - 2
.hword branch_223b3c4 - Jumppoints_223b174 - 2
.hword branch_223b18e - Jumppoints_223b174 - 2
.hword branch_223b3b8 - Jumppoints_223b174 - 2
.hword branch_223b1d8 - Jumppoints_223b174 - 2
.hword branch_223b3b8 - Jumppoints_223b174 - 2
.hword branch_223b248 - Jumppoints_223b174 - 2
.hword branch_223b3b8 - Jumppoints_223b174 - 2
.hword branch_223b2ba - Jumppoints_223b174 - 2
.hword branch_223b3b8 - Jumppoints_223b174 - 2
.hword branch_223b32c - Jumppoints_223b174 - 2
.hword branch_223b3b8 - Jumppoints_223b174 - 2
.hword branch_223b3c4 - Jumppoints_223b174 - 2
.thumb
branch_223b18e: @ 223b18e :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b19c
	cmp     r0, #0x7
	beq     branch_223b1b4
	pop     {r3,pc}
@ 0x223b19c

.thumb
branch_223b19c: @ 223b19c :thumb
	ldr     r0, [pc, #0x228] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223b608
	ldr     r1, [pc, #0x21c] @ 0x223b3c8, (=0x223dde0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b1b4

.thumb
branch_223b1b4: @ 223b1b4 :thumb
	ldr     r0, [pc, #0x210] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe20
	cmp     r0, #0x0
	ble     branch_223b1ca
	ldr     r0, [pc, #0x208] @ 0x223b3cc, (=0x223dee0)
	ldrb    r1, [r0, #0x3]
	ldr     r0, [pc, #0x200] @ 0x223b3c8, (=0x223dde0)
	b       branch_223b1d0
@ 0x223b1ca

.thumb
branch_223b1ca: @ 223b1ca :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x1f8] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
.thumb
branch_223b1d0: @ 223b1d0 :thumb
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b1d8

.thumb
branch_223b1d8: @ 223b1d8 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b1e6
	cmp     r0, #0x7
	beq     branch_223b1fe
	pop     {r3,pc}
@ 0x223b1e6

.thumb
branch_223b1e6: @ 223b1e6 :thumb
	ldr     r0, [pc, #0x1e0] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223b608
	ldr     r1, [pc, #0x1d0] @ 0x223b3c8, (=0x223dde0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b1fe

.thumb
branch_223b1fe: @ 223b1fe :thumb
	ldr     r0, [pc, #0x1c8] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe20
	ldr     r1, [pc, #0x1c4] @ 0x223b3d0, (=0xa38)
	cmp     r0, r1
	bne     branch_223b216
	ldr     r0, [pc, #0x1b8] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b242
@ 0x223b216

.thumb
branch_223b216: @ 223b216 :thumb
	ldr     r0, [pc, #0x1b4] @ 0x223b3cc, (=0x223dee0)
	ldr     r0, [r0, #0x8]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x2
	beq     branch_223b226
	cmp     r0, #0x5
	beq     branch_223b230
	b       branch_223b23a
@ 0x223b226

.thumb
branch_223b226: @ 223b226 :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x19c] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b242
@ 0x223b230

.thumb
branch_223b230: @ 223b230 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x194] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b242
@ 0x223b23a

.thumb
branch_223b23a: @ 223b23a :thumb
	mov     r1, #0x4
	ldr     r0, [pc, #0x188] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b242: @ 223b242 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b248

.thumb
branch_223b248: @ 223b248 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b256
	cmp     r0, #0x7
	beq     branch_223b26e
	pop     {r3,pc}
@ 0x223b256

.thumb
branch_223b256: @ 223b256 :thumb
	ldr     r0, [pc, #0x170] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223b608
	ldr     r1, [pc, #0x160] @ 0x223b3c8, (=0x223dde0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b26e

.thumb
branch_223b26e: @ 223b26e :thumb
	ldr     r0, [pc, #0x158] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	ldr     r2, [pc, #0x158] @ 0x223b3cc, (=0x223dee0)
	str     r1, [r0, #0x0]
	ldrb    r2, [r2, #0x3]
	cmp     r2, #0x5
	bhi     branch_223b2ac
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223b288

Jumppoints_223b288:
.hword branch_223b2ac - Jumppoints_223b288 - 2
.hword branch_223b294 - Jumppoints_223b288 - 2
.hword branch_223b29a - Jumppoints_223b288 - 2
.hword branch_223b2ac - Jumppoints_223b288 - 2
.hword branch_223b2a0 - Jumppoints_223b288 - 2
.hword branch_223b2a6 - Jumppoints_223b288 - 2
.thumb
branch_223b294: @ 223b294 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b2b4
@ 0x223b29a

.thumb
branch_223b29a: @ 223b29a :thumb
	sub     r1, #0xf
	str     r1, [r0, #0x4]
	b       branch_223b2b4
@ 0x223b2a0

.thumb
branch_223b2a0: @ 223b2a0 :thumb
	sub     r1, #0xd
	str     r1, [r0, #0x4]
	b       branch_223b2b4
@ 0x223b2a6

.thumb
branch_223b2a6: @ 223b2a6 :thumb
	sub     r1, #0xe
	str     r1, [r0, #0x4]
	b       branch_223b2b4
@ 0x223b2ac

.thumb
branch_223b2ac: @ 223b2ac :thumb
	mov     r1, #0x4
	ldr     r0, [pc, #0x118] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b2b4: @ 223b2b4 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b2ba

.thumb
branch_223b2ba: @ 223b2ba :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b2c8
	cmp     r0, #0x7
	beq     branch_223b2e0
	pop     {r3,pc}
@ 0x223b2c8

.thumb
branch_223b2c8: @ 223b2c8 :thumb
	ldr     r0, [pc, #0xfc] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223b608
	ldr     r1, [pc, #0xf0] @ 0x223b3c8, (=0x223dde0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b2e0

.thumb
branch_223b2e0: @ 223b2e0 :thumb
	ldr     r0, [pc, #0xe4] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	ldr     r2, [pc, #0xe4] @ 0x223b3cc, (=0x223dee0)
	str     r1, [r0, #0x0]
	ldrb    r2, [r2, #0x3]
	cmp     r2, #0x5
	bhi     branch_223b31e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223b2fa

Jumppoints_223b2fa:
.hword branch_223b31e - Jumppoints_223b2fa - 2
.hword branch_223b306 - Jumppoints_223b2fa - 2
.hword branch_223b31e - Jumppoints_223b2fa - 2
.hword branch_223b30c - Jumppoints_223b2fa - 2
.hword branch_223b312 - Jumppoints_223b2fa - 2
.hword branch_223b318 - Jumppoints_223b2fa - 2
.thumb
branch_223b306: @ 223b306 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b326
@ 0x223b30c

.thumb
branch_223b30c: @ 223b30c :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_223b326
@ 0x223b312

.thumb
branch_223b312: @ 223b312 :thumb
	mov     r1, #0x2
	str     r1, [r0, #0x4]
	b       branch_223b326
@ 0x223b318

.thumb
branch_223b318: @ 223b318 :thumb
	sub     r1, #0xe
	str     r1, [r0, #0x4]
	b       branch_223b326
@ 0x223b31e

.thumb
branch_223b31e: @ 223b31e :thumb
	mov     r1, #0x4
	ldr     r0, [pc, #0xa4] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b326: @ 223b326 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b32c

.thumb
branch_223b32c: @ 223b32c :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b33a
	cmp     r0, #0x7
	beq     branch_223b352
	pop     {r3,pc}
@ 0x223b33a

.thumb
branch_223b33a: @ 223b33a :thumb
	ldr     r0, [pc, #0x8c] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223b608
	ldr     r1, [pc, #0x7c] @ 0x223b3c8, (=0x223dde0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b352

.thumb
branch_223b352: @ 223b352 :thumb
	ldr     r0, [pc, #0x74] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	bl      0x221fe20
	cmp     r0, #0x8
	bne     branch_223b368
	ldr     r0, [pc, #0x64] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b3b2
@ 0x223b368

.thumb
branch_223b368: @ 223b368 :thumb
	ldr     r0, [pc, #0x60] @ 0x223b3cc, (=0x223dee0)
	ldrb    r0, [r0, #0x3]
	cmp     r0, #0x5
	bhi     branch_223b3aa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b37c

Jumppoints_223b37c:
.hword branch_223b3aa - Jumppoints_223b37c - 2
.hword branch_223b388 - Jumppoints_223b37c - 2
.hword branch_223b3aa - Jumppoints_223b37c - 2
.hword branch_223b390 - Jumppoints_223b37c - 2
.hword branch_223b398 - Jumppoints_223b37c - 2
.hword branch_223b3a0 - Jumppoints_223b37c - 2
.thumb
branch_223b388: @ 223b388 :thumb
	ldr     r0, [pc, #0x3c] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b3b2
@ 0x223b390

.thumb
branch_223b390: @ 223b390 :thumb
	ldr     r0, [pc, #0x34] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_223b3b2
@ 0x223b398

.thumb
branch_223b398: @ 223b398 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223b3c8, (=0x223dde0)
	mov     r1, #0x2
	str     r1, [r0, #0x4]
	b       branch_223b3b2
@ 0x223b3a0

.thumb
branch_223b3a0: @ 223b3a0 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x24] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b3b2
@ 0x223b3aa

.thumb
branch_223b3aa: @ 223b3aa :thumb
	mov     r1, #0x4
	ldr     r0, [pc, #0x18] @ 0x223b3c8, (=0x223dde0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b3b2: @ 223b3b2 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b3b8

.thumb
branch_223b3b8: @ 223b3b8 :thumb
	mov     r0, #0xc
	str     r0, [r1, #0x0]
	sub     r0, #0x10
	str     r0, [r1, #0x4]
	bl      0x221fdec
.thumb
branch_223b3c4: @ 223b3c4 :thumb
	pop     {r3,pc}
@ 0x223b3c6


.align 2


.word 0x223dde0 @ 0x223b3c8
.word 0x223dee0 @ 0x223b3cc
.word 0xa38 @ 0x223b3d0
.thumb
Function_223b3d4: @ 223b3d4 :thumb
	ldr     r1, [pc, #0x18] @ 0x223b3f0, (=0x223dde0)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_223b3e2
	cmp     r0, #0xc
	beq     branch_223b3e6
	b       branch_223b3ec
@ 0x223b3e2

.thumb
branch_223b3e2: @ 223b3e2 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223b3e6

.thumb
branch_223b3e6: @ 223b3e6 :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	bx      lr
@ 0x223b3ec

.thumb
branch_223b3ec: @ 223b3ec :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223b3f0

.word 0x223dde0 @ 0x223b3f0
.thumb
Function_223b3f4: @ 223b3f4 :thumb
	ldr     r0, [pc, #0x4] @ 0x223b3fc, (=0x223dde0)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x223b3fa


.align 2


.word 0x223dde0 @ 0x223b3fc
.thumb
Function_223b400: @ 223b400 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      0x221fc84
	ldr     r0, [pc, #0x34] @ 0x223b440, (=0x223dde0)
	.hword  0x1e61 @ sub r1, r4, #0x1
	strb    r1, [r0, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223b444, (=0x223db60)
	ldr     r1, [pc, #0x30] @ 0x223b448, (=0x223ddf4)
	ldr     r3, [pc, #0x30] @ 0x223b44c, (=0x223dee3)
	mov     r2, #0x1
	bl      Function_223b5d0
	cmp     r0, #0x0
	beq     branch_223b42e
	ldr     r0, [pc, #0x18] @ 0x223b440, (=0x223dde0)
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b42e

.thumb
branch_223b42e: @ 223b42e :thumb
	ldr     r0, [pc, #0x10] @ 0x223b440, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	sub     r1, #0x11
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b440

.word 0x223dde0 @ 0x223b440
.word 0x223db60 @ 0x223b444
.word 0x223ddf4 @ 0x223b448
.word 0x223dee3 @ 0x223b44c
.thumb
Function_223b450: @ 223b450 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x44] @ 0x223b49c, (=0x223dee0)
	mov     r6, r2
	mov     r4, r1
	str     r6, [r0, #0x8]
	bl      0x221fc84
	ldr     r0, [pc, #0x3c] @ 0x223b4a0, (=0x223dde0)
	.hword  0x1e69 @ sub r1, r5, #0x1
	strb    r1, [r0, #0x14]
	.hword  0x1e61 @ sub r1, r4, #0x1
	strb    r1, [r0, #0x15]
	ldr     r0, [pc, #0x34] @ 0x223b4a4, (=0xa38)
	ldr     r1, [pc, #0x38] @ 0x223b4a8, (=0x223ddf4)
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223b4ac, (=0x223dbac)
	mov     r2, #0x2
	mov     r3, r6
	bl      Function_223b5d0
	cmp     r0, #0x0
	beq     branch_223b48a
	ldr     r0, [pc, #0x1c] @ 0x223b4a0, (=0x223dde0)
	mov     r1, #0x4
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223b48a

.thumb
branch_223b48a: @ 223b48a :thumb
	ldr     r0, [pc, #0x14] @ 0x223b4a0, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	sub     r1, #0x11
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223b49c

.word 0x223dee0 @ 0x223b49c
.word 0x223dde0 @ 0x223b4a0
.word 0xa38 @ 0x223b4a4
.word 0x223ddf4 @ 0x223b4a8
.word 0x223dbac @ 0x223b4ac
.thumb
Function_223b4b0: @ 223b4b0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, r3
	bl      0x221fc84
	ldr     r0, [pc, #0x54] @ 0x223b514, (=0x223ddf4)
	mov     r1, r4
	mov     r2, #0xe4
	blx     Function_20d50b8
	ldr     r0, [pc, #0x4c] @ 0x223b518, (=0x223dec0)
	.hword  0x1e69 @ sub r1, r5, #0x1
	strb    r1, [r0, #0x18]
	.hword  0x1e71 @ sub r1, r6, #0x1
	strb    r1, [r0, #0x19]
	ldr     r3, [pc, #0x48] @ 0x223b51c, (=0x223dedb)
	ldr     r2, [pc, #0x48] @ 0x223b520, (=0x223ddec)
	strb    r7, [r0, #0x1a]
	mov     r1, #0x8
.thumb
branch_223b4da: @ 223b4da :thumb
	ldrb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223b4da
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223b524, (=0x223dbf8)
	ldr     r1, [pc, #0x24] @ 0x223b514, (=0x223ddf4)
	ldr     r3, [pc, #0x38] @ 0x223b528, (=0x223dee3)
	mov     r2, #0xef
	bl      Function_223b5d0
	cmp     r0, #0x0
	beq     branch_223b502
	ldr     r0, [pc, #0x30] @ 0x223b52c, (=0x223dde0)
	mov     r1, #0x6
	str     r1, [r0, #0x0]
	pop     {r3-r7,pc}
@ 0x223b502

.thumb
branch_223b502: @ 223b502 :thumb
	ldr     r0, [pc, #0x28] @ 0x223b52c, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	sub     r1, #0x11
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3-r7,pc}
@ 0x223b512


.align 2


.word 0x223ddf4 @ 0x223b514
.word 0x223dec0 @ 0x223b518
.word 0x223dedb @ 0x223b51c
.word 0x223ddec @ 0x223b520
.word 0x223dbf8 @ 0x223b524
.word 0x223dee3 @ 0x223b528
.word 0x223dde0 @ 0x223b52c
.thumb
Function_223b530: @ 223b530 :thumb
	push    {r3,lr}
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223b564, (=0x223dc44)
	ldr     r1, [pc, #0x28] @ 0x223b568, (=0x223ddf4)
	ldr     r3, [pc, #0x2c] @ 0x223b56c, (=0x223dee3)
	mov     r2, #0x0
	bl      Function_223b5d0
	cmp     r0, #0x0
	beq     branch_223b552
	ldr     r0, [pc, #0x24] @ 0x223b570, (=0x223dde0)
	mov     r1, #0x8
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223b552

.thumb
branch_223b552: @ 223b552 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223b570, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	sub     r1, #0x11
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b562


.align 2


.word 0x223dc44 @ 0x223b564
.word 0x223ddf4 @ 0x223b568
.word 0x223dee3 @ 0x223b56c
.word 0x223dde0 @ 0x223b570
.thumb
Function_223b574: @ 223b574 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x1c
	mov     r4, r1
	blx     0x20c3fa0
	ldr     r0, [pc, #0x3c] @ 0x223b5c0, (=0x223ddf4)
	mov     r1, r5
	mov     r2, #0x64
	blx     Function_20d50b8
	ldr     r0, [pc, #0x38] @ 0x223b5c4, (=0x223dee0)
	str     r4, [r0, #0x8]
	bl      0x221fc84
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x223b5c4, (=0x223dee0)
	ldr     r0, [pc, #0x2c] @ 0x223b5c8, (=0x223dc8c)
	ldr     r1, [pc, #0x24] @ 0x223b5c0, (=0x223ddf4)
	ldr     r3, [r3, #0x8]
	mov     r2, #0x64
	bl      Function_223b5d0
	cmp     r0, #0x0
	beq     branch_223b5b0
	ldr     r0, [pc, #0x20] @ 0x223b5cc, (=0x223dde0)
	mov     r1, #0xa
	str     r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223b5b0

.thumb
branch_223b5b0: @ 223b5b0 :thumb
	ldr     r0, [pc, #0x18] @ 0x223b5cc, (=0x223dde0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	sub     r1, #0x11
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3-r5,pc}
@ 0x223b5c0

.word 0x223ddf4 @ 0x223b5c0
.word 0x223dee0 @ 0x223b5c4
.word 0x223dc8c @ 0x223b5c8
.word 0x223dde0 @ 0x223b5cc
.thumb
Function_223b5d0: @ 223b5d0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	ldr     r1, [pc, #0x24] @ 0x223b604, (=0x223dde0)
	mov     r2, r5
	ldr     r1, [r1, #0x8]
	mov     r3, r4
	bl      0x221fca8
	cmp     r0, #0x0
	beq     branch_223b5f6
	cmp     r0, #0x1
	beq     branch_223b5fc
	cmp     r0, #0x2
	b       branch_223b5fc
@ 0x223b5f6

.thumb
branch_223b5f6: @ 223b5f6 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b5fc

.thumb
branch_223b5fc: @ 223b5fc :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223b602


.align 2


.word 0x223dde0 @ 0x223b604
.thumb
Function_223b608: @ 223b608 :thumb
	push    {r4,lr}
	cmp     r0, #0x20
	bhi     branch_223b680
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b61a

Jumppoints_223b61a:
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b662 - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b680 - Jumppoints_223b61a - 2
.hword branch_223b662 - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b668 - Jumppoints_223b61a - 2
.hword branch_223b66e - Jumppoints_223b61a - 2
.hword branch_223b66e - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b67a - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.hword branch_223b680 - Jumppoints_223b61a - 2
.hword branch_223b662 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b67a - Jumppoints_223b61a - 2
.hword branch_223b674 - Jumppoints_223b61a - 2
.hword branch_223b65c - Jumppoints_223b61a - 2
.thumb
branch_223b65c: @ 223b65c :thumb
	mov     r4, #0x4
	mvn     r4, r4
	b       branch_223b684
@ 0x223b662

.thumb
branch_223b662: @ 223b662 :thumb
	mov     r4, #0x4
	mvn     r4, r4
	b       branch_223b684
@ 0x223b668

.thumb
branch_223b668: @ 223b668 :thumb
	mov     r4, #0x6
	mvn     r4, r4
	b       branch_223b684
@ 0x223b66e

.thumb
branch_223b66e: @ 223b66e :thumb
	mov     r4, #0x6
	mvn     r4, r4
	b       branch_223b684
@ 0x223b674

.thumb
branch_223b674: @ 223b674 :thumb
	mov     r4, #0x1
	mvn     r4, r4
	b       branch_223b684
@ 0x223b67a

.thumb
branch_223b67a: @ 223b67a :thumb
	mov     r4, #0x1
	mvn     r4, r4
	b       branch_223b684
@ 0x223b680

.thumb
branch_223b680: @ 223b680 :thumb
	mov     r4, #0x4
	mvn     r4, r4
.thumb
branch_223b684: @ 223b684 :thumb
	mov     r0, #0x4
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223b69c
	blx     0x2213898
	cmp     r0, #0x9
	beq     branch_223b698
	mov     r4, #0x5
	mvn     r4, r4
.thumb
branch_223b698: @ 223b698 :thumb
	blx     0x21d76e8
.thumb
branch_223b69c: @ 223b69c :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x223b6a0

.thumb
Function_223b6a0: @ 223b6a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223b6b4
	cmp     r0, #0x1
	beq     branch_223b7a8
	b       branch_223b7be
@ 0x223b6b4

.thumb
branch_223b6b4: @ 223b6b4 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x223b7c4, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xf0] @ 0x223b7c8, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r2, #0x5
	mov     r0, #0x3
	mov     r1, #0x44
	lsl     r2, r2, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0xe0] @ 0x223b7cc, (=0x12c4)
	mov     r0, r6
	mov     r2, #0x44
	bl      0x200681c
	ldr     r2, [pc, #0xd8] @ 0x223b7cc, (=0x12c4)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x44
	bl      0x2018340
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x223b7d0, (=0x223deec)
	add     r2, sp, #0x0
	ldr     r3, [pc, #0xc8] @ 0x223b7d4, (=0x223da88)
	str     r4, [r0, #0x0]
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r7
	bl      0x2018368
	mov     r0, #0xb
	mov     r1, #0x20
	mov     r2, #0x44
	bl      Function_200b368
	mov     r1, #0xbd
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [pc, #0xa8] @ 0x223b7d8, (=0x29e)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x44
	bl      Function_200b144
	ldr     r1, [pc, #0xa0] @ 0x223b7dc, (=0xbd4)
	ldr     r2, [pc, #0xa4] @ 0x223b7e0, (=0x2a2)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x44
	bl      Function_200b144
	ldr     r1, [pc, #0x98] @ 0x223b7e4, (=0xbd8)
	ldr     r2, [pc, #0x9c] @ 0x223b7e8, (=0x2b7)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x44
	bl      Function_200b144
	ldr     r1, [pc, #0x90] @ 0x223b7ec, (=0xbdc)
	str     r0, [r4, r1]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	mov     r1, r6
	bl      Function_223b980
	mov     r0, r4
	bl      Function_223bc64
	mov     r1, #0x0
	mov     r0, #0x34
	mov     r2, r1
	bl      0x2004550
	ldr     r1, [pc, #0x70] @ 0x223b7f0, (=0x20020)
	mov     r0, #0x44
	bl      malloc_maybe
	str     r0, [r4, #0x24]
	add     r0, #0x1f
	mov     r1, #0x1f
	bic     r0, r1
	mov     r1, #0x2
	lsl     r1, r1, #16
	mov     r2, #0x0
	blx     0x20a5404
	str     r0, [r4, #0x28]
	ldr     r1, [pc, #0x58] @ 0x223b7f4, (=0x497)
	mov     r0, #0xb
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223b7be
@ 0x223b7a8

.thumb
branch_223b7a8: @ 223b7a8 :thumb
	bl      0x2099550
	bl      0x20995b4
	bl      Function_2033478
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b7be

.thumb
branch_223b7be: @ 223b7be :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223b7c4

.word 0xffffe0ff @ 0x223b7c4
.word 0x4001000 @ 0x223b7c8
.word 0x12c4 @ 0x223b7cc
.word 0x223deec @ 0x223b7d0
.word 0x223da88 @ 0x223b7d4
.word 0x29e @ 0x223b7d8
.word 0xbd4 @ 0x223b7dc
.word 0x2a2 @ 0x223b7e0
.word 0xbd8 @ 0x223b7e4
.word 0x2b7 @ 0x223b7e8
.word 0xbdc @ 0x223b7ec
.word 0x20020 @ 0x223b7f0
.word 0x497 @ 0x223b7f4
.thumb
Function_223b7f8: @ 223b7f8 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	bl      0x200682c
	mov     r5, r0
	blx     0x21d8018
	bl      Function_223b15c
	blx     0x21d8018
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x5
	bhi     branch_223b8a0
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b820

Jumppoints_223b820:
.hword branch_223b82c - Jumppoints_223b820 - 2
.hword branch_223b848 - Jumppoints_223b820 - 2
.hword branch_223b85c - Jumppoints_223b820 - 2
.hword branch_223b86a - Jumppoints_223b820 - 2
.hword branch_223b87e - Jumppoints_223b820 - 2
.hword branch_223b89c - Jumppoints_223b820 - 2
.thumb
branch_223b82c: @ 223b82c :thumb
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_223b8a0
	ldr     r1, [r5, #0x28]
	ldr     r0, [pc, #0x78] @ 0x223b8b0, (=0x223deec)
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0x78] @ 0x223b8b4, (=0x223bc05)
	ldr     r1, [pc, #0x78] @ 0x223b8b8, (=0x223bc2d)
	blx     0x21d776c
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223b8a0
@ 0x223b848

.thumb
branch_223b848: @ 223b848 :thumb
	ldr     r3, [r5, #0x10]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x68] @ 0x223b8bc, (=0x223dcd4)
	mov     r0, r5
	ldr     r2, [r2, r6]
	blx     r2
	str     r0, [r4, #0x0]
	b       branch_223b8a0
@ 0x223b85c

.thumb
branch_223b85c: @ 223b85c :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b8a0
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	b       branch_223b8a0
@ 0x223b86a

.thumb
branch_223b86a: @ 223b86a :thumb
	ldr     r3, [r5, #0x10]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x4c] @ 0x223b8c0, (=0x223dcd8)
	mov     r0, r5
	ldr     r2, [r2, r6]
	blx     r2
	str     r0, [r4, #0x0]
	b       branch_223b8a0
@ 0x223b87e

.thumb
branch_223b87e: @ 223b87e :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_223b8a0
	ldr     r3, [r5, #0x10]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x34] @ 0x223b8c4, (=0x223dcdc)
	ldr     r1, [r4, #0x0]
	ldr     r2, [r2, r6]
	mov     r0, r5
	blx     r2
	str     r0, [r4, #0x0]
	b       branch_223b8a0
@ 0x223b89c

.thumb
branch_223b89c: @ 223b89c :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223b8a0

.thumb
branch_223b8a0: @ 223b8a0 :thumb
	ldr     r0, [pc, #0x24] @ 0x223b8c8, (=0xbf8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223b8ac
	bl      0x20219f8
.thumb
branch_223b8ac: @ 223b8ac :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223b8b0

.word 0x223deec @ 0x223b8b0
.word 0x223bc05 @ 0x223b8b4
.word 0x223bc2d @ 0x223b8b8
.word 0x223dcd4 @ 0x223b8bc
.word 0x223dcd8 @ 0x223b8c0
.word 0x223dcdc @ 0x223b8c4
.word 0xbf8 @ 0x223b8c8
.thumb
Function_223b8cc: @ 223b8cc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x24]
	bl      free
	bl      0x20995c4
	bl      0x2099560
	mov     r0, r4
	bl      Function_223bc8c
	ldr     r0, [pc, #0x48] @ 0x223b934, (=0xbdc)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x44] @ 0x223b938, (=0xbd8)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x40] @ 0x223b93c, (=0xbd4)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0xbd
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, r4
	bl      Function_223b99c
	bl      0x20334cc
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x44
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223b934

.word 0xbdc @ 0x223b934
.word 0xbd8 @ 0x223b938
.word 0xbd4 @ 0x223b93c
.thumb
Function_223b940: @ 223b940 :thumb
	push    {r3,lr}
	bl      0x201dcac
	bl      0x200a858
	ldr     r3, [pc, #0xc] @ 0x223b958, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x223b95c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r3,pc}
@ 0x223b958

.word 0x27e0000 @ 0x223b958
.word 0x3ff8 @ 0x223b95c
.thumb
Function_223b960: @ 223b960 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223b97c, (=0x223daa8)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223b96a: @ 223b96a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223b96a
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223b97c

.word 0x223daa8 @ 0x223b97c
.thumb
Function_223b980: @ 223b980 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      0x2006840
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r2, r1
	str     r1, [r4, #0x10]
	bl      Function_223bc5c
	pop     {r4,pc}
@ 0x223b99a


.align 2, 0


.thumb
Function_223b99c: @ 223b99c :thumb
	bx      lr
@ 0x223b99e


.align 2, 0


.thumb
Function_223b9a0: @ 223b9a0 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x223b9cc, (=0x223da98)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x44
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223b9cc

.word 0x223da98 @ 0x223b9cc
.thumb
Function_223b9d0: @ 223b9d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, #0x68
	mov     r1, #0x44
	bl      0x2006c24
	str     r0, [sp, #0x14]
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x44
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	ldr     r1, [pc, #0xc8] @ 0x223bac8, (=0xbfc)
	mov     r0, #0xa
	add     r1, r6, r1
	mov     r2, #0x44
	bl      0x20095c4
	ldr     r1, [pc, #0xc0] @ 0x223bacc, (=0xbf8)
	mov     r2, #0x1
	str     r0, [r6, r1]
	add     r0, r1, #0x4
	add     r0, r6, r0
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	ldr     r7, [pc, #0xb4] @ 0x223bad0, (=0xd24)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223ba20: @ 223ba20 :thumb
	mov     r0, #0x2
	mov     r1, r4
	mov     r2, #0x44
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223ba20
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x44
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x8c] @ 0x223bad0, (=0xd24)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r6, r0]
	mov     r2, #0x23
	bl      0x2009a4c
	ldr     r1, [pc, #0x84] @ 0x223bad4, (=0xd34)
	mov     r3, #0x0
	str     r0, [r6, r1]
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x44
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r2, #0x9
	bl      0x2009b04
	ldr     r1, [pc, #0x68] @ 0x223bad8, (=0xd38)
	mov     r2, #0x24
	str     r0, [r6, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x44
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x1
	bl      0x2009bc4
	ldr     r1, [pc, #0x50] @ 0x223badc, (=0xd3c)
	mov     r2, #0x25
	str     r0, [r6, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x44
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	ldr     r1, [sp, #0x14]
	mov     r3, #0x1
	bl      0x2009bc4
	mov     r1, #0x35
	lsl     r1, r1, #6
	str     r0, [r6, r1]
	sub     r1, #0xc
	ldr     r0, [r6, r1]
	bl      0x200a328
	ldr     r0, [pc, #0x20] @ 0x223bad8, (=0xd38)
	ldr     r0, [r6, r0]
	bl      0x200a5c8
	ldr     r0, [sp, #0x14]
	bl      0x2006ca8
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223bac8

.word 0xbfc @ 0x223bac8
.word 0xbf8 @ 0x223bacc
.word 0xd24 @ 0x223bad0
.word 0xd34 @ 0x223bad4
.word 0xd38 @ 0x223bad8
.word 0xd3c @ 0x223badc
.thumb
Function_223bae0: @ 223bae0 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x24] @ 0x223bb08, (=0xbf8)
	ldr     r1, [r1, r4]
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x4]
	mov     r2, #0x0
	mov     r1, #0x1
	str     r2, [r0, #0x10]
	lsl     r1, r1, #12
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x1c]
	strh    r2, [r0, #0x20]
	mov     r1, #0x1
	str     r1, [r0, #0x24]
	str     r3, [r0, #0x28]
	mov     r1, #0x44
	str     r1, [r0, #0x2c]
	pop     {r3,r4}
	bx      lr
@ 0x223bb08

.word 0xbf8 @ 0x223bb08
.thumb
Function_223bb0c: @ 223bb0c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r1, #0x0
	mov     r5, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [pc, #0x9c] @ 0x223bbbc, (=0xd24)
	str     r1, [sp, #0x10]
	ldr     r0, [r5, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x1c]
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r5, r0]
	add     r2, #0x40
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r5, r2
	mov     r2, r1
	str     r1, [sp, #0x28]
	bl      0x20093b4
	ldr     r2, [pc, #0x70] @ 0x223bbc0, (=0xd64)
	add     r0, sp, #0x2c
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_223bae0
	mov     r7, #0xdd
	ldr     r4, [pc, #0x64] @ 0x223bbc4, (=0x223da80)
	mov     r6, #0x0
	lsl     r7, r7, #4
.thumb
branch_223bb62: @ 223bb62 :thumb
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x34]
	ldrh    r0, [r4, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0xdd
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0xdd
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_223bb62
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	bl      0x2039734
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x223bbba

.align 2
.word 0xd24 @ 0x223bbbc
.word 0xd64 @ 0x223bbc0
.word 0x223da80 @ 0x223bbc4



.thumb
Function_223bbc8: @ 223bbc8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x223bbf8, (=Unknown_223da78)
	add     r4, sp, #0x4
	ldrh    r6, [r5, #0x0]
	add     r3, sp, #0x4
	strh    r6, [r4, #0x0]
	ldrh    r6, [r5, #0x2]
	strh    r6, [r4, #0x2]
	ldrh    r6, [r5, #0x4]
	ldrh    r5, [r5, #0x6]
	strh    r6, [r4, #0x4]
	strh    r5, [r4, #0x6]
	strb    r1, [r4, #0x2]
	strh    r2, [r4, #0x6]
	mov     r1, #0x44
	str     r1, [sp, #0x0]
	mov     r1, r3
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x2002100
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223bbf8

.word Unknown_223da78 @ 0x223bbf8



.thumb
Function_223bbfc: @ 223bbfc :thumb
	str     r1, [r0, #0x1c]
	str     r2, [r0, #0x20]
	bx      lr
@ 0x223bc02


.align 2, 0
.thumb
Function_223bc04: @ 223bc04 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	blx     OS_DisableInterrupts
	mov     r6, r0
	ldr     r0, [pc, #0x14] @ 0x223bc28, (=0x223deec)
	mov     r1, r5
	ldr     r0, [r0, #0x4]
	mov     r2, r4
	blx     0x20a5448
	mov     r4, r0
	mov     r0, r6
	blx     OS_RestoreInterrupts
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223bc28

.word 0x223deec @ 0x223bc28
.thumb
Function_223bc2c: @ 223bc2c :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	beq     branch_223bc48
	blx     OS_DisableInterrupts
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223bc4c, (=0x223deec)
	mov     r1, r5
	ldr     r0, [r0, #0x4]
	blx     0x20a55d8
	mov     r0, r4
	blx     OS_RestoreInterrupts
.thumb
branch_223bc48: @ 223bc48 :thumb
	pop     {r3-r5,pc}
@ 0x223bc4a


.align 2


.word 0x223deec @ 0x223bc4c
.thumb
Function_223bc50: @ 223bc50 :thumb
	push    {r3,lr}
	blx     0x21d7eac
	mov     r1, #0x3
	sub     r0, r1, r0
	pop     {r3,pc}
@ 0x223bc5c

.thumb
Function_223bc5c: @ 223bc5c :thumb
	str     r1, [r0, #0x14]
	str     r2, [r0, #0x18]
	bx      lr
@ 0x223bc62


.align 2, 0


.thumb
Function_223bc64: @ 223bc64 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b960
	bl      Function_223b9a0
	mov     r0, r4
	bl      Function_223b9d0
	mov     r0, r4
	bl      Function_223bb0c
	ldr     r0, [pc, #0x8] @ 0x223bc88, (=0x223b941)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	pop     {r4,pc}
@ 0x223bc86


.align 2


.word 0x223b941 @ 0x223bc88
.thumb
Function_223bc8c: @ 223bc8c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x3c] @ 0x223bcd0, (=0xd34)
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	ldr     r0, [pc, #0x38] @ 0x223bcd4, (=0xd38)
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	ldr     r7, [pc, #0x34] @ 0x223bcd8, (=0xd24)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223bca6: @ 223bca6 :thumb
	ldr     r0, [r5, r7]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223bca6
	ldr     r0, [pc, #0x24] @ 0x223bcdc, (=0xbf8)
	ldr     r0, [r6, r0]
	bl      0x2021964
	ldr     r0, [pc, #0x1c] @ 0x223bcdc, (=0xbf8)
	mov     r1, #0x0
	str     r1, [r6, r0]
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	pop     {r3-r7,pc}
@ 0x223bcd0

.word 0xd34 @ 0x223bcd0
.word 0xd38 @ 0x223bcd4
.word 0xd24 @ 0x223bcd8
.word 0xbf8 @ 0x223bcdc
.thumb
Function_223bce0: @ 223bce0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223c358
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x44
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x4]
	bl      Function_223be38
	mov     r0, r4
	bl      Function_223bf40
	mov     r0, r4
	bl      Function_223c1fc
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      0x2038438
	mov     r0, r4
	bl      Function_223d948
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x202d2c0
	mov     r1, r4
	add     r1, #0x90
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x90
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x48] @ 0x223bdb0, (=0xf0c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	blx     0x21d7a8c
	cmp     r0, #0x0
	bne     branch_223bda4
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_223bd9e
	ldr     r0, [pc, #0x38] @ 0x223bdb4, (=0xf0f)
	ldr     r1, [pc, #0x38] @ 0x223bdb8, (=0xbd8)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d978
	b       branch_223bda8
@ 0x223bd9e

.thumb
branch_223bd9e: @ 223bd9e :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	b       branch_223bda8
@ 0x223bda4

.thumb
branch_223bda4: @ 223bda4 :thumb
	mov     r0, #0x33
	str     r0, [r4, #0x1c]
.thumb
branch_223bda8: @ 223bda8 :thumb
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223bdae


.align 2


.word 0xf0c @ 0x223bdb0
.word 0xf0f @ 0x223bdb4
.word 0xbd8 @ 0x223bdb8
.thumb
Function_223bdbc: @ 223bdbc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223bc50
	bl      0x20397b0
	ldr     r4, [r5, #0x1c]
	ldr     r1, [pc, #0x1c] @ 0x223bde8, (=0x223dce0)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r0, r5
	blx     r1
	ldr     r1, [r5, #0x1c]
	cmp     r4, r1
	beq     branch_223bde6
	mov     r1, #0xf9
	mov     r2, #0x0
	lsl     r1, r1, #4
	strh    r2, [r5, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r2, [r5, r1]
.thumb
branch_223bde6: @ 223bde6 :thumb
	pop     {r3-r5,pc}
@ 0x223bde8

.word 0x223dce0 @ 0x223bde8
.thumb
Function_223bdec: @ 223bdec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x223be30, (=0xf98)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223be06
	bl      Function_200da58
	ldr     r0, [pc, #0x30] @ 0x223be30, (=0xf98)
	mov     r1, #0x0
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_223be06: @ 223be06 :thumb
	mov     r0, r4
	bl      Function_223c3b0
	mov     r0, r4
	bl      Function_223c314
	ldr     r0, [r4, #0x4]
	bl      Function_223bf1c
	ldr     r0, [pc, #0x18] @ 0x223be34, (=0xf9c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x14]
	str     r0, [r4, #0x10]
	cmp     r0, #0x0
	bne     branch_223be2a
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x223be2a

.thumb
branch_223be2a: @ 223be2a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223be2e


.align 2


.word 0xf98 @ 0x223be30
.word 0xf9c @ 0x223be34
.thumb
Function_223be38: @ 223be38 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xcc] @ 0x223bf0c, (=0x223db08)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x54
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, r1
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xa0] @ 0x223bf10, (=0x223daec)
	add     r3, sp, #0x38
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r5, [pc, #0x7c] @ 0x223bf14, (=0x223db24)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x4
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x50] @ 0x223bf18, (=0x223dad0)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x5
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x44
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x44
	bl      0x2019690
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x223bf0a


.align 2


.word 0x223db08 @ 0x223bf0c
.word 0x223daec @ 0x223bf10
.word 0x223db24 @ 0x223bf14
.word 0x223dad0 @ 0x223bf18
.thumb
Function_223bf1c: @ 223bf1c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x223bf40

.thumb
Function_223bf40: @ 223bf40 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x10]
	ldr     r4, [r0, #0x4]
	mov     r0, #0x5c
	mov     r1, #0x44
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x44
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	str     r0, [sp, #0x2c]
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x44
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x44
	bl      0x2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x44
	bl      0x2002e98
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x10]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x44
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xe
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x44
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x44
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x1
	bl      0x20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x44
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x5
	mov     r2, r4
	mov     r3, #0x1
	bl      0x200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x44
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x5
	bl      0x20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x44
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x5
	bl      0x200710c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r2, #0xcb
	ldr     r1, [pc, #0x11c] @ 0x223c158, (=0xf98)
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #2
	add     r0, r0, r1
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, #0x44
	bl      0x20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x38]
	mov     r2, #0xfa
	ldr     r1, [sp, #0x10]
	lsl     r2, r2, #4
	add     r1, r1, r2
	ldr     r0, [r0, #0xc]
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0xf0] @ 0x223c15c, (=0x1020)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r1, [pc, #0xd8] @ 0x223c15c, (=0x1020)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	sub     r1, #0x80
	add     r0, r0, r1
	str     r0, [sp, #0x14]
.thumb
branch_223c092: @ 223c092 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x20]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsl     r1, r0, #5
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x30]
.thumb
branch_223c0a4: @ 223c0a4 :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_223c0ae
	bl      ErrorHandling
.thumb
branch_223c0ae: @ 223c0ae :thumb
	ldr     r0, [sp, #0x30]
	mov     r7, #0x1
	add     r4, r0, #0x2
	ldr     r0, [sp, #0x18]
	add     r6, r0, #0x2
	ldr     r0, [sp, #0x14]
	add     r5, r0, #0x2
	ldr     r0, [sp, #0x20]
	asr     r0, r0, #8
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x34]
.thumb
branch_223c0c6: @ 223c0c6 :thumb
	mov     r0, #0xfa
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	bl      0x200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_223c0c6
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_223c112
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_223c0a4
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_223c0a4
@ 0x223c112

.thumb
branch_223c112: @ 223c112 :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_223c092
	ldr     r1, [pc, #0x38] @ 0x223c15c, (=0x1020)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r1, [pc, #0x2c] @ 0x223c160, (=0xf9c)
	ldr     r0, [sp, #0x10]
	mov     r2, #0x1
	str     r2, [r0, r1]
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x24] @ 0x223c164, (=0x223c169)
	add     r1, r1, r2
	mov     r2, #0x14
	bl      0x200da04
	ldr     r2, [pc, #0x10] @ 0x223c158, (=0xf98)
	ldr     r1, [sp, #0x10]
	str     r0, [r1, r2]
	ldr     r0, [sp, #0x2c]
	bl      0x2006ca8
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x223c156


.align 2


.word 0xf98 @ 0x223c158
.word 0x1020 @ 0x223c15c
.word 0xf9c @ 0x223c160
.word 0x223c169 @ 0x223c164
.thumb
Function_223c168: @ 223c168 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_223c1f0
	ldr     r0, [pc, #0x80] @ 0x223c1f4, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_223c1f0
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20c00b4
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     0x20c0108
	ldr     r0, [pc, #0x48] @ 0x223c1f8, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_223c1d4
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_223c1f0
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x223c1d4

.thumb
branch_223c1d4: @ 223c1d4 :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_223c1f0
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_223c1f0: @ 223c1f0 :thumb
	pop     {r4,pc}
@ 0x223c1f2


.align 2


.word 0x32b @ 0x223c1f4
.word 0x32a @ 0x223c1f8
.thumb
Function_223c1fc: @ 223c1fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x4
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xa4
	ldr     r1, [pc, #0xe0] @ 0x223c2f8, (=0xe18)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0xd4] @ 0x223c2f8, (=0xe18)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x94
	ldr     r1, [pc, #0xbc] @ 0x223c2fc, (=0xdf8)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x1a
	bl      0x201a7e8
	ldr     r0, [pc, #0xac] @ 0x223c2fc, (=0xdf8)
	mov     r1, #0xf
	add     r0, r4, r0
	bl      Function_201ada4
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x9c
	ldr     r1, [pc, #0x94] @ 0x223c300, (=0xde8)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x1a
	bl      0x201a7e8
	ldr     r0, [pc, #0x84] @ 0x223c300, (=0xde8)
	mov     r1, #0xf
	add     r0, r4, r0
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x85
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x68] @ 0x223c304, (=0xe08)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x4
	bl      0x201a7e8
	ldr     r0, [pc, #0x58] @ 0x223c304, (=0xe08)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4
	mov     r3, #0x1
	ldr     r0, [pc, #0x50] @ 0x223c308, (=0xf0e00)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x50] @ 0x223c30c, (=0xbe4)
	ldr     r0, [pc, #0x44] @ 0x223c304, (=0xe08)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_223d8a4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x34] @ 0x223c310, (=0xdd8)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0x24] @ 0x223c310, (=0xdd8)
	mov     r1, #0xf
	add     r0, r4, r0
	bl      Function_201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223c2f8

.word 0xe18 @ 0x223c2f8
.word 0xdf8 @ 0x223c2fc
.word 0xde8 @ 0x223c300
.word 0xe08 @ 0x223c304
.word 0xf0e00 @ 0x223c308
.word 0xbe4 @ 0x223c30c
.word 0xdd8 @ 0x223c310
.thumb
Function_223c314: @ 223c314 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223c344, (=0xdd8)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x24] @ 0x223c348, (=0xe08)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x20] @ 0x223c34c, (=0xde8)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x1c] @ 0x223c350, (=0xdf8)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x18] @ 0x223c354, (=0xe18)
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x223c342


.align 2


.word 0xdd8 @ 0x223c344
.word 0xe08 @ 0x223c348
.word 0xde8 @ 0x223c34c
.word 0xdf8 @ 0x223c350
.word 0xe18 @ 0x223c354
.thumb
Function_223c358: @ 223c358 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x44
	bl      Function_2023790
	mov     r1, #0xbe
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x4
	mov     r1, #0x44
	bl      Function_2023790
	ldr     r1, [pc, #0x30] @ 0x223c3a4, (=0xbe8)
	str     r0, [r4, r1]
	mov     r0, #0x3
	mov     r1, #0x44
	bl      Function_2023790
	ldr     r1, [pc, #0x28] @ 0x223c3a8, (=0xbec)
	str     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r0, [r4, r1]
	mov     r1, #0xa
	bl      Function_200b1ec
	ldr     r1, [pc, #0x1c] @ 0x223c3ac, (=0xbe4)
	str     r0, [r4, r1]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x44
	bl      Function_2023790
	mov     r1, #0xbf
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223c3a2


.align 2


.word 0xbe8 @ 0x223c3a4
.word 0xbec @ 0x223c3a8
.word 0xbe4 @ 0x223c3ac
.thumb
Function_223c3b0: @ 223c3b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xbf
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x24] @ 0x223c3e4, (=0xbe4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x20] @ 0x223c3e8, (=0xbec)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	ldr     r0, [pc, #0x1c] @ 0x223c3ec, (=0xbe8)
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	mov     r0, #0xbe
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc
	pop     {r4,pc}
@ 0x223c3e2


.align 2


.word 0xbe4 @ 0x223c3e4
.word 0xbec @ 0x223c3e8
.word 0xbe8 @ 0x223c3ec
.thumb
Function_223c3f0: @ 223c3f0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223c418, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223c41c, (=0xbdc)
	mov     r2, #0x11
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x30
	mov     r2, #0x1
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223c416


.align 2


.word 0xf0f @ 0x223c418
.word 0xbdc @ 0x223c41c
.thumb
Function_223c420: @ 223c420 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x54] @ 0x223c47c, (=0xf08)
	mov     r1, #0x44
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223c474
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223c452
	bl      0x203848c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223bc5c
	mov     r0, #0x2e
	str     r0, [r4, #0x1c]
	b       branch_223c474
@ 0x223c452

.thumb
branch_223c452: @ 223c452 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223c480, (=0xf0f)
	ldr     r1, [pc, #0x2c] @ 0x223c484, (=0xbd8)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d978
.thumb
branch_223c474: @ 223c474 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223c47a


.align 2


.word 0xf08 @ 0x223c47c
.word 0xf0f @ 0x223c480
.word 0xbd8 @ 0x223c484
.thumb
Function_223c488: @ 223c488 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223c4b0, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223c4b4, (=0xbd8)
	mov     r2, #0xc
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x30
	mov     r2, #0x34
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223c4ae


.align 2


.word 0xf0f @ 0x223c4b0
.word 0xbd8 @ 0x223c4b4
.thumb
Function_223c4b8: @ 223c4b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x223c50c, (=0xf08)
	mov     r1, #0x44
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223c508
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223c4e8
	blx     0x21d7a8c
	cmp     r0, #0x0
	bne     branch_223c4e2
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	b       branch_223c508
@ 0x223c4e2

.thumb
branch_223c4e2: @ 223c4e2 :thumb
	mov     r0, #0x29
	str     r0, [r4, #0x1c]
	b       branch_223c508
@ 0x223c4e8

.thumb
branch_223c4e8: @ 223c4e8 :thumb
	blx     0x21d7a8c
	cmp     r0, #0x0
	bne     branch_223c4fe
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223bc5c
	mov     r0, #0x2e
	b       branch_223c500
@ 0x223c4fe

.thumb
branch_223c4fe: @ 223c4fe :thumb
	mov     r0, #0x29
.thumb
branch_223c500: @ 223c500 :thumb
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x20]
.thumb
branch_223c508: @ 223c508 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c50c

.word 0xf08 @ 0x223c50c
.thumb
Function_223c510: @ 223c510 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x2c
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x14
	blx     0x21d78c8
	mov     r0, #0x2
	blx     0x21d792c
	blx     0x21d797c
	mov     r0, #0x3
	str     r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x223c530

.thumb
Function_223c530: @ 223c530 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x44
	mov     r4, r0
	blx     0x21d7ae4
	blx     0x21d7a8c
	cmp     r0, #0x0
	beq     branch_223c5b0
	blx     0x21d7bfc
	cmp     r0, #0x8
	bhi     branch_223c58e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223c556

Jumppoints_223c556:
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c5a6 - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.hword branch_223c568 - Jumppoints_223c556 - 2
.hword branch_223c58e - Jumppoints_223c556 - 2
.thumb
branch_223c568: @ 223c568 :thumb
	add     r0, sp, #0x4
	blx     0x21d75d4
	mov     r1, #0xf1
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x4]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	blx     0x21d76e8
	blx     0x21d7db0
	mov     r0, r4
	bl      Function_223d99c
	mov     r0, #0x37
	str     r0, [r4, #0x1c]
	b       branch_223c5b0
@ 0x223c58e

.thumb
branch_223c58e: @ 223c58e :thumb
	add     r0, sp, #0x0
	blx     0x21d75d4
	mov     r0, r4
	bl      Function_223d99c
	mov     r1, #0x35
	str     r1, [r4, #0x1c]
	ldr     r0, [pc, #0x18] @ 0x223c5b8, (=0xf1c)
	sub     r1, #0x37
	str     r1, [r4, r0]
	b       branch_223c5b0
@ 0x223c5a6

.thumb
branch_223c5a6: @ 223c5a6 :thumb
	add     r0, sp, #0x8
	blx     0x21d7eb8
	mov     r0, #0x4
	str     r0, [r4, #0x1c]
.thumb
branch_223c5b0: @ 223c5b0 :thumb
	mov     r0, #0x3
	add     sp, #0x44
	pop     {r3,r4,pc}
@ 0x223c5b6


.align 2


.word 0xf1c @ 0x223c5b8
.thumb
Function_223c5bc: @ 223c5bc :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     0x21d81dc
	mov     r0, #0x5
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c5cc

.thumb
Function_223c5cc: @ 223c5cc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	blx     0x21d82a0
	cmp     r0, #0x5
	bhi     branch_223c672
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223c5e6

Jumppoints_223c5e6:
.hword branch_223c5f8 - Jumppoints_223c5e6 - 2
.hword branch_223c672 - Jumppoints_223c5e6 - 2
.hword branch_223c672 - Jumppoints_223c5e6 - 2
.hword branch_223c5f2 - Jumppoints_223c5e6 - 2
.hword branch_223c5f8 - Jumppoints_223c5e6 - 2
.hword branch_223c5f8 - Jumppoints_223c5e6 - 2
.thumb
branch_223c5f2: @ 223c5f2 :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x1c]
	b       branch_223c672
@ 0x223c5f8

.thumb
branch_223c5f8: @ 223c5f8 :thumb
	mov     r0, r4
	bl      Function_223d99c
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     0x21d75f4
	mov     r1, #0xf1
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [sp, #0x4]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	blx     0x21d76e8
	blx     0x21d7db0
	mov     r0, #0x37
	str     r0, [r4, #0x1c]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x7
	bhi     branch_223c660
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223c630

Jumppoints_223c630:
.hword branch_223c660 - Jumppoints_223c630 - 2
.hword branch_223c640 - Jumppoints_223c630 - 2
.hword branch_223c640 - Jumppoints_223c630 - 2
.hword branch_223c652 - Jumppoints_223c630 - 2
.hword branch_223c644 - Jumppoints_223c630 - 2
.hword branch_223c65c - Jumppoints_223c630 - 2
.hword branch_223c64e - Jumppoints_223c630 - 2
.hword branch_223c65c - Jumppoints_223c630 - 2
.thumb
branch_223c640: @ 223c640 :thumb
	str     r0, [r4, #0x1c]
	b       branch_223c660
@ 0x223c644

.thumb
branch_223c644: @ 223c644 :thumb
	blx     0x21e55b0
	mov     r0, #0x37
	str     r0, [r4, #0x1c]
	b       branch_223c660
@ 0x223c64e

.thumb
branch_223c64e: @ 223c64e :thumb
	str     r0, [r4, #0x1c]
	b       branch_223c660
@ 0x223c652

.thumb
branch_223c652: @ 223c652 :thumb
	blx     0x21d8e8c
	mov     r0, #0x37
	str     r0, [r4, #0x1c]
	b       branch_223c660
@ 0x223c65c

.thumb
branch_223c65c: @ 223c65c :thumb
	bl      0x2038a0c
.thumb
branch_223c660: @ 223c660 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x223c678, (=0xffffb1e0)
	cmp     r1, r0
	bge     branch_223c672
	ldr     r0, [pc, #0x10] @ 0x223c67c, (=0xffff8ad1)
	cmp     r1, r0
	blt     branch_223c672
	mov     r0, #0x37
	str     r0, [r4, #0x1c]
.thumb
branch_223c672: @ 223c672 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223c678

.word 0xffffb1e0 @ 0x223c678
.word 0xffff8ad1 @ 0x223c67c
.thumb
Function_223c680: @ 223c680 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x2025d74
	cmp     r0, #0x0
	bne     branch_223c69a
	ldr     r1, [r5, #0x0]
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1, #0x1c]
	bl      0x2025d78
.thumb
branch_223c69a: @ 223c69a :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x2025d74
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x14]
	blx     0x20a471c
	mov     r3, r0
	mov     r2, r1
	mov     r0, r4
	mov     r1, r3
	bl      Function_223b140
	mov     r0, #0x7
	str     r0, [r5, #0x1c]
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223c6c0

.thumb
Function_223c6c0: @ 223c6c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b530
	mov     r0, #0x8
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x8] @ 0x223c6d8, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c6d6


.align 2


.word 0xf94 @ 0x223c6d8
.thumb
Function_223c6dc: @ 223c6dc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	beq     branch_223c794
	bl      Function_223b3f4
	ldr     r1, [pc, #0xc0] @ 0x223c7b0, (=0xf94)
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r2, r0, #0x7
	cmp     r2, #0x9
	bhi     branch_223c788
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223c704

Jumppoints_223c704:
.hword branch_223c768 - Jumppoints_223c704 - 2
.hword branch_223c778 - Jumppoints_223c704 - 2
.hword branch_223c788 - Jumppoints_223c704 - 2
.hword branch_223c768 - Jumppoints_223c704 - 2
.hword branch_223c788 - Jumppoints_223c704 - 2
.hword branch_223c778 - Jumppoints_223c704 - 2
.hword branch_223c758 - Jumppoints_223c704 - 2
.hword branch_223c718 - Jumppoints_223c704 - 2
.hword branch_223c748 - Jumppoints_223c704 - 2
.hword branch_223c758 - Jumppoints_223c704 - 2
.thumb
branch_223c718: @ 223c718 :thumb
	mov     r0, r4
	bl      Function_223d99c
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_223c730
	cmp     r0, #0x1
	beq     branch_223c73c
	cmp     r0, #0x2
	beq     branch_223c742
	b       branch_223c7aa
@ 0x223c730

.thumb
branch_223c730: @ 223c730 :thumb
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0xd
	bl      Function_223bbfc
	b       branch_223c7aa
@ 0x223c73c

.thumb
branch_223c73c: @ 223c73c :thumb
	mov     r0, #0x19
	str     r0, [r4, #0x1c]
	b       branch_223c7aa
@ 0x223c742

.thumb
branch_223c742: @ 223c742 :thumb
	mov     r0, #0x1d
	str     r0, [r4, #0x1c]
	b       branch_223c7aa
@ 0x223c748

.thumb
branch_223c748: @ 223c748 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c7aa
@ 0x223c758

.thumb
branch_223c758: @ 223c758 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c7aa
@ 0x223c768

.thumb
branch_223c768: @ 223c768 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c7aa
@ 0x223c778

.thumb
branch_223c778: @ 223c778 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c7aa
@ 0x223c788

.thumb
branch_223c788: @ 223c788 :thumb
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223c7aa
@ 0x223c794

.thumb
branch_223c794: @ 223c794 :thumb
	ldr     r0, [pc, #0x18] @ 0x223c7b0, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223c7aa
	bl      0x2038a0c
.thumb
branch_223c7aa: @ 223c7aa :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c7ae


.align 2


.word 0xf94 @ 0x223c7b0
.thumb
Function_223c7b4: @ 223c7b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x24] @ 0x223c7e0, (=0xf24)
	ldr     r0, [r0, #0xc]
	add     r1, r4, r1
	bl      0x2030e78
	ldr     r1, [pc, #0x18] @ 0x223c7e0, (=0xf24)
	add     r0, r4, r1
	add     r1, #0x64
	add     r1, r4, r1
	bl      Function_223b574
	mov     r0, #0xa
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0xc] @ 0x223c7e4, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c7de


.align 2


.word 0xf24 @ 0x223c7e0
.word 0xf94 @ 0x223c7e4
.thumb
Function_223c7e8: @ 223c7e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	bne     branch_223c7f6
	b       branch_223c8fe
@ 0x223c7f6

.thumb
branch_223c7f6: @ 223c7f6 :thumb
	bl      Function_223b3f4
	mov     r5, r0
	ldr     r0, [pc, #0x118] @ 0x223c918, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	add     r1, r5, #0x7
	cmp     r1, #0x9
	bhi     branch_223c8f2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223c814

Jumppoints_223c814:
.hword branch_223c8d2 - Jumppoints_223c814 - 2
.hword branch_223c8e2 - Jumppoints_223c814 - 2
.hword branch_223c8f2 - Jumppoints_223c814 - 2
.hword branch_223c8d2 - Jumppoints_223c814 - 2
.hword branch_223c8f2 - Jumppoints_223c814 - 2
.hword branch_223c8e2 - Jumppoints_223c814 - 2
.hword branch_223c8c2 - Jumppoints_223c814 - 2
.hword branch_223c828 - Jumppoints_223c814 - 2
.hword branch_223c8b2 - Jumppoints_223c814 - 2
.hword branch_223c8c2 - Jumppoints_223c814 - 2
.thumb
branch_223c828: @ 223c828 :thumb
	mov     r0, r4
	bl      Function_223d99c
	ldr     r0, [pc, #0xec] @ 0x223c91c, (=0xf88)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223c840
	cmp     r1, #0x1
	beq     branch_223c896
	cmp     r1, #0x2
	beq     branch_223c896
	b       branch_223c8a6
@ 0x223c840

.thumb
branch_223c840: @ 223c840 :thumb
	add     r1, r0, #0x4
	ldr     r1, [r4, r1]
	cmp     r1, #0x3
	bhi     branch_223c914
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223c854

Jumppoints_223c854:
.hword branch_223c85c - Jumppoints_223c854 - 2
.hword branch_223c886 - Jumppoints_223c854 - 2
.hword branch_223c886 - Jumppoints_223c854 - 2
.hword branch_223c886 - Jumppoints_223c854 - 2
.thumb
branch_223c85c: @ 223c85c :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	cmp     r0, #0x0
	beq     branch_223c86e
	cmp     r0, #0x1
	beq     branch_223c87a
	cmp     r0, #0x2
	beq     branch_223c880
	b       branch_223c914
@ 0x223c86e

.thumb
branch_223c86e: @ 223c86e :thumb
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0xd
	bl      Function_223bbfc
	b       branch_223c914
@ 0x223c87a

.thumb
branch_223c87a: @ 223c87a :thumb
	mov     r0, #0x19
	str     r0, [r4, #0x1c]
	b       branch_223c914
@ 0x223c880

.thumb
branch_223c880: @ 223c880 :thumb
	mov     r0, #0x1d
	str     r0, [r4, #0x1c]
	b       branch_223c914
@ 0x223c886

.thumb
branch_223c886: @ 223c886 :thumb
	sub     r0, #0x6c
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c896

.thumb
branch_223c896: @ 223c896 :thumb
	ldr     r0, [pc, #0x88] @ 0x223c920, (=0xf1c)
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c8a6

.thumb
branch_223c8a6: @ 223c8a6 :thumb
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223c914
@ 0x223c8b2

.thumb
branch_223c8b2: @ 223c8b2 :thumb
	sub     r0, #0x78
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c8c2

.thumb
branch_223c8c2: @ 223c8c2 :thumb
	sub     r0, #0x78
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c8d2

.thumb
branch_223c8d2: @ 223c8d2 :thumb
	sub     r0, #0x78
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c8e2

.thumb
branch_223c8e2: @ 223c8e2 :thumb
	sub     r0, #0x78
	str     r5, [r4, r0]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c914
@ 0x223c8f2

.thumb
branch_223c8f2: @ 223c8f2 :thumb
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223c914
@ 0x223c8fe

.thumb
branch_223c8fe: @ 223c8fe :thumb
	ldr     r0, [pc, #0x18] @ 0x223c918, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223c914
	bl      0x2038a0c
.thumb
branch_223c914: @ 223c914 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223c918

.word 0xf94 @ 0x223c918
.word 0xf88 @ 0x223c91c
.word 0xf1c @ 0x223c920
.thumb
Function_223c924: @ 223c924 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_223b400
	mov     r0, #0xc
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0xc] @ 0x223c944, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223d978
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c944

.word 0xf94 @ 0x223c944
.thumb
Function_223c948: @ 223c948 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	beq     branch_223c9da
	bl      Function_223b3f4
	ldr     r1, [pc, #0x98] @ 0x223c9f4, (=0xf94)
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r2, r0, #0x7
	cmp     r2, #0x6
	bhi     branch_223c9c4
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223c970

Jumppoints_223c970:
.hword branch_223c9a6 - Jumppoints_223c970 - 2
.hword branch_223c99c - Jumppoints_223c970 - 2
.hword branch_223c9b0 - Jumppoints_223c970 - 2
.hword branch_223c9a6 - Jumppoints_223c970 - 2
.hword branch_223c992 - Jumppoints_223c970 - 2
.hword branch_223c988 - Jumppoints_223c970 - 2
.hword branch_223c97e - Jumppoints_223c970 - 2
.thumb
branch_223c97e: @ 223c97e :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	b       branch_223c9d2
@ 0x223c988

.thumb
branch_223c988: @ 223c988 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	b       branch_223c9d2
@ 0x223c992

.thumb
branch_223c992: @ 223c992 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	b       branch_223c9d2
@ 0x223c99c

.thumb
branch_223c99c: @ 223c99c :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	b       branch_223c9d2
@ 0x223c9a6

.thumb
branch_223c9a6: @ 223c9a6 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	b       branch_223c9d2
@ 0x223c9b0

.thumb
branch_223c9b0: @ 223c9b0 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223c9d2
@ 0x223c9c4

.thumb
branch_223c9c4: @ 223c9c4 :thumb
	cmp     r0, #0x0
	ble     branch_223c9d2
	mov     r1, r4
	add     r1, #0x98
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x1c]
.thumb
branch_223c9d2: @ 223c9d2 :thumb
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223c9f0
@ 0x223c9da

.thumb
branch_223c9da: @ 223c9da :thumb
	ldr     r0, [pc, #0x18] @ 0x223c9f4, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223c9f0
	bl      0x2038a0c
.thumb
branch_223c9f0: @ 223c9f0 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223c9f4

.word 0xf94 @ 0x223c9f4
.thumb
Function_223c9f8: @ 223c9f8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223ca20, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223ca24, (=0xbd4)
	mov     r2, #0x0
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0xe
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ca1e


.align 2


.word 0xf0f @ 0x223ca20
.word 0xbd4 @ 0x223ca24
.thumb
Function_223ca28: @ 223ca28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x223ca68, (=0xdf8)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      0x200dc48
	ldr     r1, [pc, #0x30] @ 0x223ca6c, (=0xbe8)
	mov     r2, r4
	ldr     r0, [pc, #0x28] @ 0x223ca68, (=0xdf8)
	add     r2, #0x9c
	ldr     r1, [r4, r1]
	ldr     r2, [r2, #0x0]
	add     r0, r4, r0
	mov     r3, #0x3
	bl      Function_223d90c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_223d950
	ldr     r0, [pc, #0xc] @ 0x223ca68, (=0xdf8)
	add     r0, r4, r0
	bl      0x201a954
	mov     r0, #0xf
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223ca68

.word 0xdf8 @ 0x223ca68
.word 0xbe8 @ 0x223ca6c
.thumb
Function_223ca70: @ 223ca70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	ldr     r2, [pc, #0xf4] @ 0x223cb6c, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r3, [r2, #0x4c]
	mov     r4, r0
	tst     r1, r3
	beq     branch_223cabe
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	cmp     r1, r0
	ble     branch_223caa4
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_223caa4: @ 223caa4 :thumb
	ldr     r0, [pc, #0xc8] @ 0x223cb70, (=0xdf8)
	ldr     r1, [pc, #0xcc] @ 0x223cb74, (=0xbe8)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x9c
	ldr     r2, [r4, #0x0]
	mov     r3, #0x3
	bl      Function_223d90c
	ldr     r0, [pc, #0xc0] @ 0x223cb78, (=0x5dc)
	bl      Function_2005748
	b       branch_223cb64
@ 0x223cabe

.thumb
branch_223cabe: @ 223cabe :thumb
	mov     r1, #0x80
	tst     r1, r3
	beq     branch_223cb00
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bge     branch_223cae6
	mov     r0, r4
	add     r0, #0x98
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_223cae6: @ 223cae6 :thumb
	ldr     r0, [pc, #0x88] @ 0x223cb70, (=0xdf8)
	ldr     r1, [pc, #0x88] @ 0x223cb74, (=0xbe8)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x9c
	ldr     r2, [r4, #0x0]
	mov     r3, #0x3
	bl      Function_223d90c
	ldr     r0, [pc, #0x7c] @ 0x223cb78, (=0x5dc)
	bl      Function_2005748
	b       branch_223cb64
@ 0x223cb00

.thumb
branch_223cb00: @ 223cb00 :thumb
	ldr     r2, [r2, #0x48]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_223cb4c
	add     r0, sp, #0x0
	add     r1, sp, #0x10
	blx     0x21d806c
	mov     r1, r4
	mov     r2, r4
	add     r1, #0x94
	add     r2, #0x9c
	ldr     r0, [r4, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	ldr     r0, [r0, #0x4]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	add     r3, sp, #0x0
	bl      0x202d558
	cmp     r0, #0x0
	beq     branch_223cb36
	mov     r0, #0x14
	b       branch_223cb38
@ 0x223cb36

.thumb
branch_223cb36: @ 223cb36 :thumb
	mov     r0, #0x10
.thumb
branch_223cb38: @ 223cb38 :thumb
	mov     r1, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, r4
	mov     r2, r1
	bl      Function_223d950
	ldr     r0, [pc, #0x30] @ 0x223cb78, (=0x5dc)
	bl      Function_2005748
	b       branch_223cb64
@ 0x223cb4c

.thumb
branch_223cb4c: @ 223cb4c :thumb
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_223cb64
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_223d950
	mov     r0, #0x15
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x18] @ 0x223cb78, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223cb64: @ 223cb64 :thumb
	mov     r0, #0x3
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x223cb6a


.align 2


.word 0x21bf67c @ 0x223cb6c
.word 0xdf8 @ 0x223cb70
.word 0xbe8 @ 0x223cb74
.word 0x5dc @ 0x223cb78
.thumb
Function_223cb7c: @ 223cb7c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xbd
	mov     r2, r4
	lsl     r0, r0, #4
	add     r2, #0x9c
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r3, #0x2
	mov     r0, #0xbd
	mov     r2, r4
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	lsl     r0, r0, #4
	add     r2, #0x94
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	bl      0x200b60c
	ldr     r0, [pc, #0x2c] @ 0x223cbe4, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x28] @ 0x223cbe8, (=0xbd4)
	mov     r0, r4
	ldr     r1, [r4, r1]
	mov     r3, r2
	bl      Function_223d750
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x11
	bl      Function_223bbfc
	add     r4, #0xa0
	ldr     r2, [pc, #0x14] @ 0x223cbec, (=0xa38)
	mov     r0, #0x0
	mov     r1, r4
	blx     MIi_CpuClearFast
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223cbe4

.word 0xf0f @ 0x223cbe4
.word 0xbd4 @ 0x223cbe8
.word 0xa38 @ 0x223cbec
.thumb
Function_223cbf0: @ 223cbf0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223cc18, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223cc1c, (=0xbd4)
	mov     r2, #0x2
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d750
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0xd
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cc16


.align 2


.word 0xf0f @ 0x223cc18
.word 0xbd4 @ 0x223cc1c
.thumb
Function_223cc20: @ 223cc20 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r0, #0x90
	add     r1, #0x9c
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, #0xa0
	bl      Function_223b450
	mov     r0, r4
	bl      Function_223d978
	mov     r0, #0x12
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x8] @ 0x223cc4c, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cc4a


.align 2


.word 0xf94 @ 0x223cc4c
.thumb
Function_223cc50: @ 223cc50 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	beq     branch_223cd3e
	bl      Function_223b3f4
	ldr     r1, [pc, #0xf8] @ 0x223cd5c, (=0xf94)
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r2, r0, #0x7
	cmp     r2, #0x7
	bhi     branch_223cd54
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223cc7a

Jumppoints_223cc7a:
.hword branch_223cd1a - Jumppoints_223cc7a - 2
.hword branch_223cd0a - Jumppoints_223cc7a - 2
.hword branch_223cd2a - Jumppoints_223cc7a - 2
.hword branch_223ccfa - Jumppoints_223cc7a - 2
.hword branch_223ccfa - Jumppoints_223cc7a - 2
.hword branch_223ccea - Jumppoints_223cc7a - 2
.hword branch_223ccda - Jumppoints_223cc7a - 2
.hword branch_223cc8a - Jumppoints_223cc7a - 2
.thumb
branch_223cc8a: @ 223cc8a :thumb
	mov     r2, r4
	mov     r3, r4
	add     r2, #0x90
	add     r3, #0x9c
	ldr     r0, [r4, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r1, r4
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	add     r1, #0xa0
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x202d5f8
	mov     r0, r4
	mov     r1, #0x27
	mov     r2, #0x13
	bl      Function_223bbfc
	add     r0, sp, #0x0
	add     r1, sp, #0x10
	blx     0x21d806c
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0x94
	add     r4, #0x9c
	ldr     r1, [r1, #0x0]
	ldr     r2, [r4, #0x0]
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	ldr     r0, [r0, #0x4]
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	add     r3, sp, #0x0
	bl      0x202d4b0
	b       branch_223cd54
@ 0x223ccda

.thumb
branch_223ccda: @ 223ccda :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cd54
@ 0x223ccea

.thumb
branch_223ccea: @ 223ccea :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cd54
@ 0x223ccfa

.thumb
branch_223ccfa: @ 223ccfa :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0xb
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cd54
@ 0x223cd0a

.thumb
branch_223cd0a: @ 223cd0a :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cd54
@ 0x223cd1a

.thumb
branch_223cd1a: @ 223cd1a :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cd54
@ 0x223cd2a

.thumb
branch_223cd2a: @ 223cd2a :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223cd54
@ 0x223cd3e

.thumb
branch_223cd3e: @ 223cd3e :thumb
	ldr     r0, [pc, #0x1c] @ 0x223cd5c, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223cd54
	bl      0x2038a0c
.thumb
branch_223cd54: @ 223cd54 :thumb
	mov     r0, #0x3
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x223cd5a


.align 2


.word 0xf94 @ 0x223cd5c
.thumb
Function_223cd60: @ 223cd60 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223cd94, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x223cd98, (=0xbd4)
	mov     r2, #0x3
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2d
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d99c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cd92


.align 2


.word 0xf0f @ 0x223cd94
.word 0xbd4 @ 0x223cd98
.thumb
Function_223cd9c: @ 223cd9c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x24] @ 0x223cdc8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x24] @ 0x223cdcc, (=0xbd4)
	mov     r2, #0x7
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x1a
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d978
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cdc8

.word 0xf0f @ 0x223cdc8
.word 0xbd4 @ 0x223cdcc
.thumb
Function_223cdd0: @ 223cdd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202d3a0
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x0
	ldr     r0, [r0, #0x4]
	bl      0x202d628
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x28] @ 0x223ce14, (=0xad8)
	ldr     r0, [r0, #0xc]
	mov     r1, #0x1
	add     r2, r5, r2
	bl      0x2073700
	add     r1, sp, #0x0
	ldrb    r0, [r1, #0x0]
	ldr     r3, [pc, #0x18] @ 0x223ce14, (=0xad8)
	ldrb    r1, [r1, #0x1]
	mov     r2, r4
	add     r3, r5, r3
	bl      Function_223b4b0
	mov     r0, #0x1b
	str     r0, [r5, #0x1c]
	ldr     r0, [pc, #0xc] @ 0x223ce18, (=0xf94)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223ce14

.word 0xad8 @ 0x223ce14
.word 0xf94 @ 0x223ce18
.thumb
Function_223ce1c: @ 223ce1c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	beq     branch_223ced0
	bl      Function_223b3f4
	ldr     r1, [pc, #0xbc] @ 0x223ceec, (=0xf94)
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r2, r0, #0x7
	cmp     r2, #0x7
	bhi     branch_223cee6
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223ce44

Jumppoints_223ce44:
.hword branch_223ceac - Jumppoints_223ce44 - 2
.hword branch_223ce9c - Jumppoints_223ce44 - 2
.hword branch_223cebc - Jumppoints_223ce44 - 2
.hword branch_223ceac - Jumppoints_223ce44 - 2
.hword branch_223ce8c - Jumppoints_223ce44 - 2
.hword branch_223ce7c - Jumppoints_223ce44 - 2
.hword branch_223ce6c - Jumppoints_223ce44 - 2
.hword branch_223ce54 - Jumppoints_223ce44 - 2
.thumb
branch_223ce54: @ 223ce54 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, #0x5
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	bl      0x202d414
	mov     r0, r4
	mov     r1, #0x27
	mov     r2, #0x1c
	bl      Function_223bbfc
	b       branch_223cee6
@ 0x223ce6c

.thumb
branch_223ce6c: @ 223ce6c :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cee6
@ 0x223ce7c

.thumb
branch_223ce7c: @ 223ce7c :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cee6
@ 0x223ce8c

.thumb
branch_223ce8c: @ 223ce8c :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cee6
@ 0x223ce9c

.thumb
branch_223ce9c: @ 223ce9c :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cee6
@ 0x223ceac

.thumb
branch_223ceac: @ 223ceac :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223cee6
@ 0x223cebc

.thumb
branch_223cebc: @ 223cebc :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223cee6
@ 0x223ced0

.thumb
branch_223ced0: @ 223ced0 :thumb
	ldr     r0, [pc, #0x18] @ 0x223ceec, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223cee6
	bl      0x2038a0c
.thumb
branch_223cee6: @ 223cee6 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223ceea


.align 2


.word 0xf94 @ 0x223ceec
.thumb
Function_223cef0: @ 223cef0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223cf24, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x223cf28, (=0xbd4)
	mov     r2, #0x8
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2d
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d99c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cf22


.align 2


.word 0xf0f @ 0x223cf24
.word 0xbd4 @ 0x223cf28
.thumb
Function_223cf2c: @ 223cf2c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223cf54, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223cf58, (=0xbd4)
	mov     r2, #0x5
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x1e
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cf52


.align 2


.word 0xf0f @ 0x223cf54
.word 0xbd4 @ 0x223cf58
.thumb
Function_223cf5c: @ 223cf5c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	add     r0, #0x94
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x223cfa4, (=0xde8)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      0x200dc48
	ldr     r1, [pc, #0x30] @ 0x223cfa8, (=0xbec)
	mov     r2, r4
	ldr     r0, [pc, #0x28] @ 0x223cfa4, (=0xde8)
	add     r2, #0x94
	ldr     r1, [r4, r1]
	ldr     r2, [r2, #0x0]
	add     r0, r4, r0
	mov     r3, #0x2
	bl      Function_223d90c
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_223d950
	ldr     r0, [pc, #0x10] @ 0x223cfa4, (=0xde8)
	add     r0, r4, r0
	bl      0x201a954
	mov     r0, #0x1f
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cfa2


.align 2


.word 0xde8 @ 0x223cfa4
.word 0xbec @ 0x223cfa8
.thumb
Function_223cfac: @ 223cfac :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0xc0] @ 0x223d070, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r3, [r2, #0x4c]
	mov     r4, r0
	tst     r1, r3
	beq     branch_223cff2
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0xa
	ble     branch_223cfd8
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x94
	str     r1, [r0, #0x0]
.thumb
branch_223cfd8: @ 223cfd8 :thumb
	ldr     r0, [pc, #0x98] @ 0x223d074, (=0xde8)
	ldr     r1, [pc, #0x9c] @ 0x223d078, (=0xbec)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x94
	ldr     r2, [r4, #0x0]
	mov     r3, #0x2
	bl      Function_223d90c
	ldr     r0, [pc, #0x90] @ 0x223d07c, (=0x5dc)
	bl      Function_2005748
	b       branch_223d06a
@ 0x223cff2

.thumb
branch_223cff2: @ 223cff2 :thumb
	mov     r1, #0x80
	tst     r1, r3
	beq     branch_223d030
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x94
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bge     branch_223d016
	mov     r0, r4
	mov     r1, #0xa
	add     r0, #0x94
	str     r1, [r0, #0x0]
.thumb
branch_223d016: @ 223d016 :thumb
	ldr     r0, [pc, #0x5c] @ 0x223d074, (=0xde8)
	ldr     r1, [pc, #0x5c] @ 0x223d078, (=0xbec)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x94
	ldr     r2, [r4, #0x0]
	mov     r3, #0x2
	bl      Function_223d90c
	ldr     r0, [pc, #0x50] @ 0x223d07c, (=0x5dc)
	bl      Function_2005748
	b       branch_223d06a
@ 0x223d030

.thumb
branch_223d030: @ 223d030 :thumb
	ldr     r2, [r2, #0x48]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_223d052
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_223d950
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0x20
	bl      Function_223bbfc
	ldr     r0, [pc, #0x30] @ 0x223d07c, (=0x5dc)
	bl      Function_2005748
	b       branch_223d06a
@ 0x223d052

.thumb
branch_223d052: @ 223d052 :thumb
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_223d06a
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_223d950
	mov     r0, #0x17
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x14] @ 0x223d07c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223d06a: @ 223d06a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d06e


.align 2


.word 0x21bf67c @ 0x223d070
.word 0xde8 @ 0x223d074
.word 0xbec @ 0x223d078
.word 0x5dc @ 0x223d07c
.thumb
Function_223d080: @ 223d080 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223d0a8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223d0ac, (=0xbd4)
	mov     r2, #0x6
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x21
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d0a6


.align 2


.word 0xf0f @ 0x223d0a8
.word 0xbd4 @ 0x223d0ac
.thumb
Function_223d0b0: @ 223d0b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x223d0f8, (=0xdf8)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x1f
	mov     r3, #0xe
	bl      0x200dc48
	ldr     r1, [pc, #0x30] @ 0x223d0fc, (=0xbe8)
	mov     r2, r4
	ldr     r0, [pc, #0x28] @ 0x223d0f8, (=0xdf8)
	add     r2, #0x9c
	ldr     r1, [r4, r1]
	ldr     r2, [r2, #0x0]
	add     r0, r4, r0
	mov     r3, #0x3
	bl      Function_223d90c
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_223d950
	ldr     r0, [pc, #0x10] @ 0x223d0f8, (=0xdf8)
	add     r0, r4, r0
	bl      0x201a954
	mov     r0, #0x22
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d0f6


.align 2


.word 0xdf8 @ 0x223d0f8
.word 0xbe8 @ 0x223d0fc
.thumb
Function_223d100: @ 223d100 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0xc4] @ 0x223d1c8, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r3, [r2, #0x4c]
	mov     r4, r0
	tst     r1, r3
	beq     branch_223d14e
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	bne     branch_223d134
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_223d134: @ 223d134 :thumb
	ldr     r0, [pc, #0x94] @ 0x223d1cc, (=0xdf8)
	ldr     r1, [pc, #0x98] @ 0x223d1d0, (=0xbe8)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x9c
	ldr     r2, [r4, #0x0]
	mov     r3, #0x3
	bl      Function_223d90c
	ldr     r0, [pc, #0x8c] @ 0x223d1d4, (=0x5dc)
	bl      Function_2005748
	b       branch_223d1c4
@ 0x223d14e

.thumb
branch_223d14e: @ 223d14e :thumb
	mov     r1, #0x80
	tst     r1, r3
	beq     branch_223d190
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bge     branch_223d176
	mov     r0, r4
	add     r0, #0x98
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x9c
	str     r1, [r0, #0x0]
.thumb
branch_223d176: @ 223d176 :thumb
	ldr     r0, [pc, #0x54] @ 0x223d1cc, (=0xdf8)
	ldr     r1, [pc, #0x54] @ 0x223d1d0, (=0xbe8)
	add     r0, r4, r0
	ldr     r1, [r4, r1]
	add     r4, #0x9c
	ldr     r2, [r4, #0x0]
	mov     r3, #0x3
	bl      Function_223d90c
	ldr     r0, [pc, #0x48] @ 0x223d1d4, (=0x5dc)
	bl      Function_2005748
	b       branch_223d1c4
@ 0x223d190

.thumb
branch_223d190: @ 223d190 :thumb
	ldr     r2, [r2, #0x48]
	mov     r1, #0x1
	tst     r1, r2
	beq     branch_223d1ac
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_223d950
	mov     r0, #0x23
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x2c] @ 0x223d1d4, (=0x5dc)
	bl      Function_2005748
	b       branch_223d1c4
@ 0x223d1ac

.thumb
branch_223d1ac: @ 223d1ac :thumb
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_223d1c4
	mov     r1, #0x0
	mov     r2, r1
	bl      Function_223d950
	mov     r0, #0x1d
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x14] @ 0x223d1d4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223d1c4: @ 223d1c4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d1c8

.word 0x21bf67c @ 0x223d1c8
.word 0xdf8 @ 0x223d1cc
.word 0xbe8 @ 0x223d1d0
.word 0x5dc @ 0x223d1d4
.thumb
Function_223d1d8: @ 223d1d8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xbd
	mov     r2, r4
	lsl     r0, r0, #4
	add     r2, #0x9c
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	mov     r1, #0x0
	mov     r3, #0x3
	bl      0x200b60c
	mov     r3, #0x2
	mov     r0, #0xbd
	mov     r2, r4
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	lsl     r0, r0, #4
	add     r2, #0x94
	ldr     r0, [r4, r0]
	ldr     r2, [r2, #0x0]
	bl      0x200b60c
	ldr     r0, [pc, #0x24] @ 0x223d238, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223d23c, (=0xbd4)
	mov     r0, r4
	ldr     r1, [r4, r1]
	mov     r3, r2
	bl      Function_223d750
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x24
	bl      Function_223bbfc
	mov     r0, #0x24
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223d238

.word 0xf0f @ 0x223d238
.word 0xbd4 @ 0x223d23c
.thumb
Function_223d240: @ 223d240 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r0, #0x94
	add     r1, #0x9c
	mov     r2, r4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, #0xa0
	bl      Function_223b450
	mov     r0, #0x25
	str     r0, [r4, #0x1c]
	ldr     r0, [pc, #0x10] @ 0x223d26c, (=0xf94)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223d978
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d26a


.align 2


.word 0xf94 @ 0x223d26c
.thumb
Function_223d270: @ 223d270 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b3d4
	cmp     r0, #0x0
	beq     branch_223d338
	bl      Function_223b3f4
	ldr     r1, [pc, #0xd0] @ 0x223d354, (=0xf94)
	mov     r2, #0x0
	str     r2, [r4, r1]
	add     r2, r0, #0x7
	cmp     r2, #0x7
	bhi     branch_223d34e
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223d298

Jumppoints_223d298:
.hword branch_223d314 - Jumppoints_223d298 - 2
.hword branch_223d304 - Jumppoints_223d298 - 2
.hword branch_223d324 - Jumppoints_223d298 - 2
.hword branch_223d314 - Jumppoints_223d298 - 2
.hword branch_223d2f4 - Jumppoints_223d298 - 2
.hword branch_223d2e4 - Jumppoints_223d298 - 2
.hword branch_223d2d4 - Jumppoints_223d298 - 2
.hword branch_223d2a8 - Jumppoints_223d298 - 2
.thumb
branch_223d2a8: @ 223d2a8 :thumb
	mov     r2, r4
	mov     r3, r4
	add     r2, #0x94
	add     r3, #0x9c
	ldr     r0, [r4, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	ldr     r1, [pc, #0xa0] @ 0x223d358, (=0x6dc)
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	add     r1, r4, r1
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x202d6dc
	mov     r0, r4
	mov     r1, #0x27
	mov     r2, #0x26
	bl      Function_223bbfc
	b       branch_223d34e
@ 0x223d2d4

.thumb
branch_223d2d4: @ 223d2d4 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223d34e
@ 0x223d2e4

.thumb
branch_223d2e4: @ 223d2e4 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223d34e
@ 0x223d2f4

.thumb
branch_223d2f4: @ 223d2f4 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0xb
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223d34e
@ 0x223d304

.thumb
branch_223d304: @ 223d304 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223d34e
@ 0x223d314

.thumb
branch_223d314: @ 223d314 :thumb
	mov     r2, #0xb
	str     r2, [r4, #0x1c]
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_223d99c
	b       branch_223d34e
@ 0x223d324

.thumb
branch_223d324: @ 223d324 :thumb
	sub     r1, #0x78
	str     r0, [r4, r1]
	mov     r0, #0x35
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
	bl      0x2038a0c
	b       branch_223d34e
@ 0x223d338

.thumb
branch_223d338: @ 223d338 :thumb
	ldr     r0, [pc, #0x18] @ 0x223d354, (=0xf94)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223d34e
	bl      0x2038a0c
.thumb
branch_223d34e: @ 223d34e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d352


.align 2


.word 0xf94 @ 0x223d354
.word 0x6dc @ 0x223d358
.thumb
Function_223d35c: @ 223d35c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223d390, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x223d394, (=0xbd4)
	mov     r2, #0x3
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2d
	bl      Function_223bbfc
	mov     r0, r4
	bl      Function_223d99c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d38e


.align 2


.word 0xf0f @ 0x223d390
.word 0xbd4 @ 0x223d394
.thumb
Function_223d398: @ 223d398 :thumb
	mov     r1, #0x29
	str     r1, [r0, #0x1c]
	mov     r0, #0x3
	bx      lr
@ 0x223d3a0

.thumb
Function_223d3a0: @ 223d3a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0xc]
	bl      0x2024814
	mov     r0, #0x28
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d3b6


.align 2, 0


.thumb
Function_223d3b8: @ 223d3b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0xc]
	bl      0x2024828
	cmp     r0, #0x2
	bne     branch_223d3d2
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223d99c
.thumb
branch_223d3d2: @ 223d3d2 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d3d6


.align 2, 0


.thumb
Function_223d3d8: @ 223d3d8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223d400, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223d404, (=0xbd4)
	mov     r2, #0x4
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x30
	mov     r2, #0x16
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d3fe


.align 2


.word 0xf0f @ 0x223d400
.word 0xbd4 @ 0x223d404
.thumb
Function_223d408: @ 223d408 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223d438, (=0xf08)
	mov     r1, #0x44
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d434
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223d42a
	mov     r0, #0xd
	str     r0, [r4, #0x1c]
	b       branch_223d434
@ 0x223d42a

.thumb
branch_223d42a: @ 223d42a :thumb
	mov     r0, #0x29
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x20]
.thumb
branch_223d434: @ 223d434 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d438

.word 0xf08 @ 0x223d438
.thumb
Function_223d43c: @ 223d43c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223d464, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223d468, (=0xbd4)
	mov     r2, #0x9
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x30
	mov     r2, #0x18
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d462


.align 2


.word 0xf0f @ 0x223d464
.word 0xbd4 @ 0x223d468
.thumb
Function_223d46c: @ 223d46c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223d49c, (=0xf08)
	mov     r1, #0x44
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d498
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223d48e
	mov     r0, #0x1d
	str     r0, [r4, #0x1c]
	b       branch_223d498
@ 0x223d48e

.thumb
branch_223d48e: @ 223d48e :thumb
	mov     r0, #0x29
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	str     r1, [r0, #0x20]
.thumb
branch_223d498: @ 223d498 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d49c

.word 0xf08 @ 0x223d49c
.thumb
Function_223d4a0: @ 223d4a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x223d4c8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x223d4cc, (=0xbdc)
	mov     r2, #0x1a
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x2f
	mov     r2, #0x2a
	bl      Function_223bbfc
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d4c6


.align 2


.word 0xf0f @ 0x223d4c8
.word 0xbdc @ 0x223d4cc
.thumb
Function_223d4d0: @ 223d4d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     0x21d7db0
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223bc5c
	mov     r0, #0x2b
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d4ea


.align 2, 0


.thumb
Function_223d4ec: @ 223d4ec :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x28] @ 0x223d51c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x28] @ 0x223d520, (=0xbdc)
	mov     r2, #0x1b
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r4
	mov     r1, #0x31
	mov     r2, #0x2e
	bl      Function_223bbfc
	mov     r0, #0xf2
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d51a


.align 2


.word 0xf0f @ 0x223d51c
.word 0xbdc @ 0x223d520
.thumb
Function_223d524: @ 223d524 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223d528

.thumb
Function_223d528: @ 223d528 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      0x2039794
	bl      0x203848c
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x44
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223d558

.thumb
Function_223d558: @ 223d558 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223d584, (=0xf08)
	mov     r1, #0x44
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d57e
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223d57a
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	b       branch_223d57e
@ 0x223d57a

.thumb
branch_223d57a: @ 223d57a :thumb
	mov     r0, #0x29
	str     r0, [r4, #0x1c]
.thumb
branch_223d57e: @ 223d57e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d582


.align 2


.word 0xf08 @ 0x223d584
.thumb
Function_223d588: @ 223d588 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x223d5f0, (=0xf1c)
	mov     r4, #0x0
	ldr     r0, [r5, r0]
	.hword  0x1dc0 @ add r0, r0, #0x7
	cmp     r0, #0x9
	bhi     branch_223d5ca
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223d5a4

Jumppoints_223d5a4:
.hword branch_223d5c4 - Jumppoints_223d5a4 - 2
.hword branch_223d5b8 - Jumppoints_223d5a4 - 2
.hword branch_223d5ca - Jumppoints_223d5a4 - 2
.hword branch_223d5c4 - Jumppoints_223d5a4 - 2
.hword branch_223d5c8 - Jumppoints_223d5a4 - 2
.hword branch_223d5b8 - Jumppoints_223d5a4 - 2
.hword branch_223d5c0 - Jumppoints_223d5a4 - 2
.hword branch_223d5ca - Jumppoints_223d5a4 - 2
.hword branch_223d5bc - Jumppoints_223d5a4 - 2
.hword branch_223d5c0 - Jumppoints_223d5a4 - 2
.thumb
branch_223d5b8: @ 223d5b8 :thumb
	mov     r4, #0xd
	b       branch_223d5ca
@ 0x223d5bc

.thumb
branch_223d5bc: @ 223d5bc :thumb
	mov     r4, #0xb
	b       branch_223d5ca
@ 0x223d5c0

.thumb
branch_223d5c0: @ 223d5c0 :thumb
	mov     r4, #0xc
	b       branch_223d5ca
@ 0x223d5c4

.thumb
branch_223d5c4: @ 223d5c4 :thumb
	mov     r4, #0xe
	b       branch_223d5ca
@ 0x223d5c8

.thumb
branch_223d5c8: @ 223d5c8 :thumb
	mov     r4, #0xf
.thumb
branch_223d5ca: @ 223d5ca :thumb
	mov     r0, r5
	bl      Function_223d99c
	ldr     r0, [pc, #0x20] @ 0x223d5f4, (=0xf0f)
	ldr     r1, [pc, #0x24] @ 0x223d5f8, (=0xbd4)
	str     r0, [sp, #0x0]
	ldr     r1, [r5, r1]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, r5
	mov     r1, #0x2f
	mov     r2, #0x36
	bl      Function_223bbfc
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223d5f0

.word 0xf1c @ 0x223d5f0
.word 0xf0f @ 0x223d5f4
.word 0xbd4 @ 0x223d5f8
.thumb
Function_223d5fc: @ 223d5fc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0xf9
	mov     r4, r0
	lsl     r1, r1, #4
	ldsh    r2, [r4, r1]
	cmp     r2, #0x3
	bhi     branch_223d698
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223d618

Jumppoints_223d618:
.hword branch_223d620 - Jumppoints_223d618 - 2
.hword branch_223d63c - Jumppoints_223d618 - 2
.hword branch_223d660 - Jumppoints_223d618 - 2
.hword branch_223d67c - Jumppoints_223d618 - 2
.thumb
branch_223d620: @ 223d620 :thumb
	sub     r1, #0x81
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x94] @ 0x223d6bc, (=0xbd4)
	mov     r2, #0x10
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, #0xf9
	lsl     r0, r0, #4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_223d6b4
@ 0x223d63c

.thumb
branch_223d63c: @ 223d63c :thumb
	ldr     r0, [pc, #0x80] @ 0x223d6c0, (=0xbf4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d6b4
	bl      0x203848c
	blx     0x21d7db0
	mov     r0, #0xf9
	lsl     r0, r0, #4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_223d6b4
@ 0x223d660

.thumb
branch_223d660: @ 223d660 :thumb
	sub     r1, #0x81
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x54] @ 0x223d6bc, (=0xbd4)
	mov     r2, #0x11
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_223d814
	mov     r0, #0xf9
	lsl     r0, r0, #4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_223d6b4
@ 0x223d67c

.thumb
branch_223d67c: @ 223d67c :thumb
	ldr     r0, [pc, #0x40] @ 0x223d6c0, (=0xbf4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d6b4
	mov     r0, #0xf9
	lsl     r0, r0, #4
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_223d6b4
@ 0x223d698

.thumb
branch_223d698: @ 223d698 :thumb
	ldr     r0, [pc, #0x28] @ 0x223d6c4, (=0xf92)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_223d6b4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223bc5c
	mov     r0, #0x2e
	str     r0, [r4, #0x1c]
.thumb
branch_223d6b4: @ 223d6b4 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223d6ba


.align 2


.word 0xbd4 @ 0x223d6bc
.word 0xbf4 @ 0x223d6c0
.word 0xf92 @ 0x223d6c4
.thumb
Function_223d6c8: @ 223d6c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223d6e4, (=0xbf4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d6e0
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x1c]
.thumb
branch_223d6e0: @ 223d6e0 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d6e4

.word 0xbf4 @ 0x223d6e4
.thumb
Function_223d6e8: @ 223d6e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223d718, (=0xbf4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d714
	mov     r0, #0xf2
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_223d70a
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x1c]
.thumb
branch_223d70a: @ 223d70a :thumb
	mov     r0, #0xf2
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_223d714: @ 223d714 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d718

.word 0xbf4 @ 0x223d718
.thumb
Function_223d71c: @ 223d71c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223d748, (=0xbf4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223d744
	mov     r2, #0x91
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_223bbc8
	ldr     r1, [pc, #0xc] @ 0x223d74c, (=0xf08)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x1c]
.thumb
branch_223d744: @ 223d744 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d748

.word 0xbf4 @ 0x223d748
.word 0xf08 @ 0x223d74c
.thumb
Function_223d750: @ 223d750 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	bl      Function_200b1ec
	mov     r1, #0xbd
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x10
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_200c388
	ldr     r0, [pc, #0x3c] @ 0x223d7b0, (=0xdd8)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4
	ldr     r0, [pc, #0x30] @ 0x223d7b0, (=0xdd8)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xe
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbe
	ldr     r0, [pc, #0x1c] @ 0x223d7b0, (=0xdd8)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x10] @ 0x223d7b4, (=0xbf4)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223d7b0

.word 0xdd8 @ 0x223d7b0
.word 0xbf4 @ 0x223d7b4
.thumb
Function_223d7b8: @ 223d7b8 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x24] @ 0x223d7e0, (=0xf14)
	mov     r4, r0
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	neg     r0, r0
	bl      0x21d1f3c
	ldr     r2, [pc, #0x14] @ 0x223d7e0, (=0xf14)
	mov     r1, r0
	ldr     r2, [r4, r2]
	mov     r0, r4
	neg     r2, r2
	bl      Function_223da34
	mov     r0, #0x38
	str     r0, [r4, #0x1c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d7e0

.word 0xf14 @ 0x223d7e0
.thumb
Function_223d7e4: @ 223d7e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x223d80c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_223d7f8
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223d806
.thumb
branch_223d7f8: @ 223d7f8 :thumb
	ldr     r0, [pc, #0x14] @ 0x223d810, (=0xe18)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
.thumb
branch_223d806: @ 223d806 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d80a


.align 2


.word 0x21bf67c @ 0x223d80c
.word 0xe18 @ 0x223d810
.thumb
Function_223d814: @ 223d814 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r2, #0xbe
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r4, r3
	bl      Function_200b1b8
	ldr     r0, [pc, #0x38] @ 0x223d864, (=0xdd8)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4
	ldr     r0, [pc, #0x2c] @ 0x223d864, (=0xdd8)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xe
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbe
	ldr     r0, [pc, #0x18] @ 0x223d864, (=0xdd8)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0xc] @ 0x223d868, (=0xbf4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223d862


.align 2


.word 0xdd8 @ 0x223d864
.word 0xbf4 @ 0x223d868
.thumb
Function_223d86c: @ 223d86c :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r3, #0x1
	beq     branch_223d87a
	cmp     r3, #0x2
	beq     branch_223d890
	b       branch_223d89e
@ 0x223d87a

.thumb
branch_223d87a: @ 223d87a :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	b       branch_223d89e
@ 0x223d890

.thumb
branch_223d890: @ 223d890 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r2, r1, r0
.thumb
branch_223d89e: @ 223d89e :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x223d8a2


.align 2, 0


.thumb
Function_223d8a4: @ 223d8a4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r3
	ldr     r3, [sp, #0x24]
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r6, r1
	bl      Function_223d86c
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223d8d8

.thumb
Function_223d8d8: @ 223d8d8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r3
	ldr     r3, [sp, #0x24]
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	ldr     r3, [sp, #0x20]
	mov     r6, r1
	bl      Function_223d86c
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      0x201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223d90a


.align 2, 0


.thumb
Function_223d90c: @ 223d90c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0xf
	mov     r5, r0
	mov     r6, r2
	mov     r7, r3
	bl      Function_201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, r6
	mov     r2, r7
	mov     r3, #0x2
	bl      0x20238a0
	mov     r3, #0x1
	ldr     r0, [pc, #0x10] @ 0x223d944, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_223d8d8
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d944

.word 0x10200 @ 0x223d944
.thumb
Function_223d948: @ 223d948 :thumb
	ldr     r3, [pc, #0x0] @ 0x223d94c, (=0x2039735)
	bx      r3
@ 0x223d94c

.word 0x2039735 @ 0x223d94c
.thumb
Function_223d950: @ 223d950 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r2
	cmp     r1, #0x1
	bhi     branch_223d970
	mov     r0, #0xdd
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021cac
	ldr     r0, [pc, #0xc] @ 0x223d974, (=0xdd4)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x2021cac
.thumb
branch_223d970: @ 223d970 :thumb
	pop     {r3-r5,pc}
@ 0x223d972


.align 2


.word 0xdd4 @ 0x223d974
.thumb
Function_223d978: @ 223d978 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223d994, (=0xf0c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223d992
	ldr     r0, [pc, #0x10] @ 0x223d998, (=0xdd8)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      0x200e7fc
	ldr     r1, [pc, #0x4] @ 0x223d994, (=0xf0c)
	str     r0, [r4, r1]
.thumb
branch_223d992: @ 223d992 :thumb
	pop     {r4,pc}
@ 0x223d994

.word 0xf0c @ 0x223d994
.word 0xdd8 @ 0x223d998
.thumb
Function_223d99c: @ 223d99c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223d9b4, (=0xf0c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223d9b2
	bl      0x200eba0
	ldr     r0, [pc, #0x4] @ 0x223d9b4, (=0xf0c)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_223d9b2: @ 223d9b2 :thumb
	pop     {r4,pc}
@ 0x223d9b4

.word 0xf0c @ 0x223d9b4
.thumb
Function_223d9b8: @ 223d9b8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r6, r1
	lsl     r0, r0, #8
	mov     r1, #0x44
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x223da28, (=0xbdc)
	mov     r1, r6
	ldr     r0, [r5, r0]
	mov     r2, r4
	bl      Function_200b1b8
	mov     r1, #0xbd
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	ldr     r0, [pc, #0x40] @ 0x223da2c, (=0xe18)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4
	ldr     r0, [pc, #0x38] @ 0x223da2c, (=0xe18)
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r2, #0xbf
	ldr     r0, [pc, #0x20] @ 0x223da2c, (=0xe18)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x14] @ 0x223da30, (=0xbf4)
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Function_20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223da26


.align 2


.word 0xbdc @ 0x223da28
.word 0xe18 @ 0x223da2c
.word 0xbf4 @ 0x223da30
.thumb
Function_223da34: @ 223da34 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_223da46
	mov     r4, #0xb
.thumb
branch_223da46: @ 223da46 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xbd
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      0x200b60c
	ldr     r0, [pc, #0x14] @ 0x223da74, (=0xdd8)
	mov     r1, #0x1
	add     r0, r5, r0
	bl      0x200e084
	mov     r0, r5
	mov     r1, r4
	bl      Function_223d9b8
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223da72

.align 2
.word 0xdd8 @ 0x223da74



Unknown_223da78: @ 0x223da78
.incbin "./baserom/overlay/overlay_0096.bin", 0x2938, 0x223dcd4 - 0x223da78


.word Function_223bce0+1 @ =0x223bce1, 0x223dcd4
.word Function_223bdbc+1 @ =0x223bdbd, 0x223dcd8
.word Function_223bdec+1 @ =0x223bded, 0x223dcdc
.word Function_223c3f0+1 @ =0x223c3f1, 0x223dce0
.word Function_223c420+1 @ =0x223c421, 0x223dce4
.word Function_223c510+1 @ =0x223c511, 0x223dce8
.word Function_223c530+1 @ =0x223c531, 0x223dcec
.word Function_223c5bc+1 @ =0x223c5bd, 0x223dcf0
.word Function_223c5cc+1 @ =0x223c5cd, 0x223dcf4
.word Function_223c680+1 @ =0x223c681, 0x223dcf8
.word Function_223c6c0+1 @ =0x223c6c1, 0x223dcfc
.word Function_223c6dc+1 @ =0x223c6dd, 0x223dd00
.word Function_223c7b4+1 @ =0x223c7b5, 0x223dd04
.word Function_223c7e8+1 @ =0x223c7e9, 0x223dd08
.word Function_223c924+1 @ =0x223c925, 0x223dd0c
.word Function_223c948+1 @ =0x223c949, 0x223dd10
.word Function_223c9f8+1 @ =0x223c9f9, 0x223dd14
.word Function_223ca28+1 @ =0x223ca29, 0x223dd18
.word Function_223ca70+1 @ =0x223ca71, 0x223dd1c
.word Function_223cb7c+1 @ =0x223cb7d, 0x223dd20
.word Function_223cc20+1 @ =0x223cc21, 0x223dd24
.word Function_223cc50+1 @ =0x223cc51, 0x223dd28
.word Function_223cd60+1 @ =0x223cd61, 0x223dd2c
.word Function_223cbf0+1 @ =0x223cbf1, 0x223dd30
.word Function_223d3d8+1 @ =0x223d3d9, 0x223dd34
.word Function_223d408+1 @ =0x223d409, 0x223dd38
.word Function_223d43c+1 @ =0x223d43d, 0x223dd3c
.word Function_223d46c+1 @ =0x223d46d, 0x223dd40
.word Function_223cd9c+1 @ =0x223cd9d, 0x223dd44
.word Function_223cdd0+1 @ =0x223cdd1, 0x223dd48
.word Function_223ce1c+1 @ =0x223ce1d, 0x223dd4c
.word Function_223cef0+1 @ =0x223cef1, 0x223dd50
.word Function_223cf2c+1 @ =0x223cf2d, 0x223dd54
.word Function_223cf5c+1 @ =0x223cf5d, 0x223dd58
.word Function_223cfac+1 @ =0x223cfad, 0x223dd5c
.word Function_223d080+1 @ =0x223d081, 0x223dd60
.word Function_223d0b0+1 @ =0x223d0b1, 0x223dd64
.word Function_223d100+1 @ =0x223d101, 0x223dd68
.word Function_223d1d8+1 @ =0x223d1d9, 0x223dd6c
.word Function_223d240+1 @ =0x223d241, 0x223dd70
.word Function_223d270+1 @ =0x223d271, 0x223dd74
.word Function_223d35c+1 @ =0x223d35d, 0x223dd78
.word Function_223d3a0+1 @ =0x223d3a1, 0x223dd7c
.word Function_223d3b8+1 @ =0x223d3b9, 0x223dd80
.word Function_223d4a0+1 @ =0x223d4a1, 0x223dd84
.word Function_223d4d0+1 @ =0x223d4d1, 0x223dd88
.word Function_223d4ec+1 @ =0x223d4ed, 0x223dd8c
.word Function_223d524+1 @ =0x223d525, 0x223dd90
.word Function_223d398+1 @ =0x223d399, 0x223dd94
.word Function_223d528+1 @ =0x223d529, 0x223dd98
.word Function_223d6c8+1 @ =0x223d6c9, 0x223dd9c
.word Function_223d71c+1 @ =0x223d71d, 0x223dda0
.word Function_223d6e8+1 @ =0x223d6e9, 0x223dda4
.word Function_223d558+1 @ =0x223d559, 0x223dda8
.word Function_223c488+1 @ =0x223c489, 0x223ddac
.word Function_223c4b8+1 @ =0x223c4b9, 0x223ddb0
.word Function_223d588+1 @ =0x223d589, 0x223ddb4
.word Function_223d5fc+1 @ =0x223d5fd, 0x223ddb8
.word Function_223d7b8+1 @ =0x223d7b9, 0x223ddbc
.word Function_223d7e4+1 @ =0x223d7e5, 0x223ddc0
@ 0x223ddc4


.incbin "./baserom/overlay/overlay_0096.bin", 0x2c84, 0x223dddf - 0x223ddc4


@end 0x223dddf




