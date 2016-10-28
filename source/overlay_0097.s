

.section .iwram97, "ax"


.thumb
Function_222ae60: @ 222ae60 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x222ae64


.thumb
Function_222ae64: @ 222ae64 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r5, r0
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222aedc
	mov     r1, #0x55
	mov     r0, #0x0
	mov     r3, r5
	lsl     r1, r1, #2
.thumb
branch_222ae80: @ 222ae80 :thumb
	ldr     r2, [r3, r1]
	cmp     r2, #0x1
	bne     branch_222aed2
	lsl     r1, r0, #2
	add     r3, r5, r1
	mov     r1, #0x55
	mov     r6, r0
	mov     r2, #0x0
	lsl     r1, r1, #2
	str     r2, [r3, r1]
	mov     r3, #0x1c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r7, [pc, #0x6c] @ 0x222af10, (=0x223df54)
	mul     r6, r3
	add     r4, r7, r6
	ldr     r3, [r4, #0x10]
	add     r0, sp, #0x8
	add     r1, r5, r1
	bl      Function_2237808
	ldr     r1, [r4, #0x8]
	ldr     r2, [r4, #0xc]
	add     r0, sp, #0x8
	mov     r3, #0x13
	bl      Function_2237858
	ldr     r0, [r4, #0x14]
	add     r1, sp, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r2, [r7, r6]
	ldr     r3, [r4, #0x4]
	bl      Function_223795c
	add     sp, #0x5c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222aed2

.thumb
branch_222aed2: @ 222aed2 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r0, #0x1
	blt     branch_222ae80
	b       branch_222af08
@ 0x222aedc

.thumb
branch_222aedc: @ 222aedc :thumb
	ldr     r0, [pc, #0x34] @ 0x222af14, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_222af02
	ldr     r0, [pc, #0x30] @ 0x222af18, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x200dc9c
	mov     r0, #0x56
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a8fc
.thumb
branch_222af02: @ 222af02 :thumb
	add     sp, #0x5c
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x222af08

.thumb
branch_222af08: @ 222af08 :thumb
	mov     r0, #0x0
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x222af0e


.align 2


.word 0x223df54 @ 0x222af10
.word 0x21bf67c @ 0x222af14
.word 0x5dc @ 0x222af18
.thumb
Function_222af1c: @ 222af1c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	bl      Function_2235d2c
	mov     r4, #0x0
	str     r4, [r5, #0x24]
	cmp     r0, #0x0
	bne     branch_222af86
	bl      Function_2235db0
	cmp     r0, #0x4
	bhi     branch_222af5e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222af42

Jumppoints_222af42:
.hword branch_222af4c - Jumppoints_222af42 - 2
.hword branch_222af50 - Jumppoints_222af42 - 2
.hword branch_222af54 - Jumppoints_222af42 - 2
.hword branch_222af58 - Jumppoints_222af42 - 2
.hword branch_222af5c - Jumppoints_222af42 - 2
.thumb
branch_222af4c: @ 222af4c :thumb
	mov     r4, #0x2
	b       branch_222af5e
@ 0x222af50

.thumb
branch_222af50: @ 222af50 :thumb
	mov     r4, #0x1
	b       branch_222af5e
@ 0x222af54

.thumb
branch_222af54: @ 222af54 :thumb
	mov     r4, #0x5
	b       branch_222af5e
@ 0x222af58

.thumb
branch_222af58: @ 222af58 :thumb
	mov     r4, #0x4
	b       branch_222af5e
@ 0x222af5c

.thumb
branch_222af5c: @ 222af5c :thumb
	mov     r4, #0x3
.thumb
branch_222af5e: @ 222af5e :thumb
	mov     r0, r4
	bl      0x2017b70
	ldr     r0, [r5, #0x8]
	bl      0x2027474
	cmp     r0, #0x0
	beq     branch_222af86
	bl      Function_2235dbc
	ldr     r1, [pc, #0x14] @ 0x222af88, (=0x20e4c44)
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	bne     branch_222af86
	bl      Function_2235db0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x24]
	bl      Function_2238440
.thumb
branch_222af86: @ 222af86 :thumb
	pop     {r3-r5,pc}
@ 0x222af88

.word 0x20e4c44 @ 0x222af88
.thumb
Function_222af8c: @ 222af8c :thumb
	push    {r4,lr}
	mov     r1, #0x49
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	sub     r0, #0xa
	cmp     r0, #0x4
	bhi     branch_222b07a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222afa8

Jumppoints_222afa8:
.hword branch_222afb2 - Jumppoints_222afa8 - 2
.hword branch_222afb8 - Jumppoints_222afa8 - 2
.hword branch_222b07a - Jumppoints_222afa8 - 2
.hword branch_222afea - Jumppoints_222afa8 - 2
.hword branch_222b06e - Jumppoints_222afa8 - 2
.thumb
branch_222afb2: @ 222afb2 :thumb
	mov     r0, #0xb
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x222afb8

.thumb
branch_222afb8: @ 222afb8 :thumb
	ldr     r0, [r4, #0x4]
	bl      0x2037d48
	mov     r1, #0x78
	mov     r0, r1
	add     r0, #0xb0
	str     r1, [r4, r0]
	mov     r0, #0xd
	add     r1, #0xac
	str     r0, [r4, r1]
	mov     r0, #0x0
	str     r0, [r4, #0x40]
	ldr     r0, [r4, #0x14]
	bl      0x202dec4
	cmp     r0, #0x1
	bne     branch_222b07a
	ldr     r1, [r4, #0x40]
	mov     r0, #0x1
	orr     r1, r0
	str     r1, [r4, #0x40]
	ldr     r1, [r4, #0x44]
	orr     r0, r1
	str     r0, [r4, #0x44]
	pop     {r4,pc}
@ 0x222afea

.thumb
branch_222afea: @ 222afea :thumb
	add     r1, #0xc
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_222b07a
	bl      0x2037da0
	ldr     r1, [r4, #0x40]
	bic     r0, r1
	beq     branch_222b050
	mov     r2, #0x4b
	lsl     r2, r2, #2
	ldr     r3, [r4, r2]
	cmp     r3, #0xf
	bne     branch_222b050
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	cmp     r2, #0x0
	bne     branch_222b050
	cmp     r1, r0
	beq     branch_222b050
	mov     r2, #0x1
	mov     r1, r0
	str     r2, [r4, #0x48]
	tst     r1, r2
	beq     branch_222b020
	str     r2, [r4, #0x34]
	mov     r0, r2
.thumb
branch_222b020: @ 222b020 :thumb
	mov     r1, #0x2
	mov     r2, r0
	tst     r2, r1
	beq     branch_222b02e
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, r1
.thumb
branch_222b02e: @ 222b02e :thumb
	mov     r1, #0x4
	mov     r2, r0
	tst     r2, r1
	beq     branch_222b03c
	mov     r0, #0x1
	str     r0, [r4, #0x30]
	mov     r0, r1
.thumb
branch_222b03c: @ 222b03c :thumb
	mov     r1, #0x3
	tst     r1, r0
	beq     branch_222b04a
	mov     r1, #0x15
	mov     r2, #0x1
	lsl     r1, r1, #4
	str     r2, [r4, r1]
.thumb
branch_222b04a: @ 222b04a :thumb
	ldr     r1, [r4, #0x40]
	orr     r0, r1
	str     r0, [r4, #0x40]
.thumb
branch_222b050: @ 222b050 :thumb
	mov     r0, #0x4a
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222b07a
	bl      0x2037d84
	mov     r0, #0x49
	mov     r1, #0xc
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x222b06e

.thumb
branch_222b06e: @ 222b06e :thumb
	bl      0x2037d84
	mov     r0, #0x49
	mov     r1, #0xc
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222b07a: @ 222b07a :thumb
	pop     {r4,pc}
@ 0x222b07c

.thumb
Function_222b07c: @ 222b07c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x60
	mov     r1, #0x4b
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	sub     r0, #0xf
	cmp     r0, #0x4
	bls     branch_222b090
	b       branch_222b230
@ 0x222b090

.thumb
branch_222b090: @ 222b090 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222b09c

Jumppoints_222b09c:
.hword branch_222b0a6 - Jumppoints_222b09c - 2
.hword branch_222b0ce - Jumppoints_222b09c - 2
.hword branch_222b0fa - Jumppoints_222b09c - 2
.hword branch_222b1ce - Jumppoints_222b09c - 2
.hword branch_222b210 - Jumppoints_222b09c - 2
.thumb
branch_222b0a6: @ 222b0a6 :thumb
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222b0b4
	add     sp, #0x60
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b0b4

.thumb
branch_222b0b4: @ 222b0b4 :thumb
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222b0c8
	mov     r0, #0x10
	str     r0, [r4, r1]
.thumb
branch_222b0c8: @ 222b0c8 :thumb
	add     sp, #0x60
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b0ce

.thumb
branch_222b0ce: @ 222b0ce :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	mov     r3, #0x2
	bl      0x200daa4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r1, [pc, #0x14c] @ 0x222b238, (=0x6b5a)
	ldr     r0, [pc, #0x14c] @ 0x222b23c, (=0x5000042)
	strh    r1, [r0, #0x0]
	mov     r0, #0x4b
	mov     r1, #0x11
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_222b230
@ 0x222b0fa

.thumb
branch_222b0fa: @ 222b0fa :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	add     r1, #0x10
	str     r0, [sp, #0x4]
	add     r0, sp, #0xc
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2237808
	ldr     r0, [r4, #0x44]
	ldr     r1, [r4, #0x40]
	mvn     r0, r0
	and     r0, r1
	mov     r1, #0x1
	mov     r2, r0
	tst     r2, r1
	beq     branch_222b12e
	ldr     r2, [r4, #0x38]
	tst     r1, r2
	beq     branch_222b12a
	ldr     r5, [pc, #0x118] @ 0x222b240, (=0x223dfb0)
	b       branch_222b14e
@ 0x222b12a

.thumb
branch_222b12a: @ 222b12a :thumb
	ldr     r5, [pc, #0x118] @ 0x222b244, (=0x223dfc4)
	b       branch_222b14e
@ 0x222b12e

.thumb
branch_222b12e: @ 222b12e :thumb
	mov     r1, #0x2
	mov     r2, r0
	tst     r2, r1
	beq     branch_222b144
	ldr     r2, [r4, #0x38]
	tst     r1, r2
	beq     branch_222b140
	ldr     r5, [pc, #0x108] @ 0x222b248, (=0x223dfd8)
	b       branch_222b14e
@ 0x222b140

.thumb
branch_222b140: @ 222b140 :thumb
	ldr     r5, [pc, #0x108] @ 0x222b24c, (=0x223dfec)
	b       branch_222b14e
@ 0x222b144

.thumb
branch_222b144: @ 222b144 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_222b14e
	ldr     r5, [pc, #0x104] @ 0x222b250, (=0x223e000)
	mov     r0, #0x0
.thumb
branch_222b14e: @ 222b14e :thumb
	ldr     r1, [r4, #0x44]
	mov     r3, #0x13
	orr     r0, r1
	str     r0, [r4, #0x44]
	ldr     r1, [r5, #0x8]
	ldr     r2, [r5, #0xc]
	add     r0, sp, #0xc
	bl      Function_2237858
	mov     r0, #0x1
	str     r0, [sp, #0x38]
	ldr     r0, [r5, #0x10]
	add     r1, sp, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x4]
	bl      Function_223795c
	ldr     r0, [sp, #0x1c]
	bl      0x201c29c
	mov     r6, r0
	ldr     r0, [sp, #0x1c]
	bl      0x201c2a0
	mov     r7, r0
	ldr     r0, [sp, #0x1c]
	bl      0x201c294
	mov     r5, r0
	ldr     r0, [sp, #0x1c]
	bl      0x201c298
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	mov     r2, r6
	mov     r3, r7
	bl      0x2019e2c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x4d
	mov     r1, #0x1e
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x12
	sub     r0, #0x8
	str     r1, [r4, r0]
	b       branch_222b230
@ 0x222b1ce

.thumb
branch_222b1ce: @ 222b1ce :thumb
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222b1e6
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r4, r0]
	add     r1, #0x8
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, r1]
	b       branch_222b230
@ 0x222b1e6

.thumb
branch_222b1e6: @ 222b1e6 :thumb
	ldr     r0, [pc, #0x6c] @ 0x222b254, (=0x21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r2
	beq     branch_222b230
	add     r1, #0x10
	add     r0, r4, r1
	bl      0x201a8fc
	mov     r0, #0x4b
	mov     r1, #0x13
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x50] @ 0x222b254, (=0x21bf67c)
	add     r0, #0xc
	ldr     r1, [r1, #0x48]
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x4c] @ 0x222b258, (=0x5dc)
	bl      0x2005748
	b       branch_222b230
@ 0x222b210

.thumb
branch_222b210: @ 222b210 :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4b
	mov     r1, #0xf
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222b230: @ 222b230 :thumb
	mov     r0, #0x1
	add     sp, #0x60
	pop     {r3-r7,pc}
@ 0x222b236


.align 2


.word 0x6b5a @ 0x222b238
.word 0x5000042 @ 0x222b23c
.word 0x223dfb0 @ 0x222b240
.word 0x223dfc4 @ 0x222b244
.word 0x223dfd8 @ 0x222b248
.word 0x223dfec @ 0x222b24c
.word 0x223e000 @ 0x222b250
.word 0x21bf67c @ 0x222b254
.word 0x5dc @ 0x222b258
.thumb
Function_222b25c: @ 222b25c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, r1
	beq     branch_222b2e4
	sub     r1, r1, r0
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	asr     r2, r0, #31
	mov     r1, r0
	eor     r1, r2
	sub     r2, r1, r2
	mov     r1, #0x3
	lsl     r1, r1, #14
	cmp     r2, r1
	ble     branch_222b292
	cmp     r0, #0x0
	ble     branch_222b290
	mov     r0, r1
	b       branch_222b292
@ 0x222b290

.thumb
branch_222b290: @ 222b290 :thumb
	ldr     r0, [pc, #0x54] @ 0x222b2e8, (=0xffff4000)
.thumb
branch_222b292: @ 222b292 :thumb
	mov     r1, #0x47
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	ldr     r2, [r4, r1]
	sub     r2, r0, r2
	asr     r3, r2, #31
	eor     r2, r3
	sub     r3, r2, r3
	mov     r2, r1
	add     r2, #0xe4
	cmp     r3, r2
	bge     branch_222b2b4
	str     r0, [r4, r1]
.thumb
branch_222b2b4: @ 222b2b4 :thumb
	mov     r3, #0x47
	lsl     r3, r3, #2
	ldr     r5, [r4, r3]
	ldr     r0, [r4, #0x0]
	asr     r3, r5, #11
	lsr     r3, r3, #20
	add     r3, r5, r3
	mov     r1, #0x0
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      0x201c63c
	mov     r3, #0x47
	lsl     r3, r3, #2
	ldr     r0, [r4, #0x0]
	ldr     r4, [r4, r3]
	mov     r1, #0x2
	asr     r3, r4, #11
	lsr     r3, r3, #20
	add     r3, r4, r3
	mov     r2, #0x3
	asr     r3, r3, #12
	bl      0x201c63c
.thumb
branch_222b2e4: @ 222b2e4 :thumb
	pop     {r3-r5,pc}
@ 0x222b2e6


.align 2


.word 0xffff4000 @ 0x222b2e8
.thumb
Function_222b2ec: @ 222b2ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0x40
	ldr     r5, [pc, #0xf4] @ 0x222b3e8, (=0x223d694)
	mov     r4, r0
	add     r3, sp, #0x18
	mov     r2, #0x5
branch_222b2f8: @ 222b2f8 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222b2f8
	ldr     r3, [pc, #0xe8] @ 0x222b3ec, (=Unknown_223d684)
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r0, sp, #0x18
	bl      0x201fe94
	add     r0, sp, #0x8
	bl      0x2018368
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0xf
	ldr     r0, [r4, #0x0]
	mov     r2, #0x2
	lsl     r3, r3, #12
	bl      Function_22376fc
	ldr     r1, [pc, #0xc4] @ 0x222b3f0, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	mov     r3, #0x51
	bic     r2, r0
	mov     r0, #0x2
	orr     r0, r2
	strh    r0, [r1, #0x0]
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	bl      0x2019690
	mov     r0, #0x2
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r3, #0x36
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	lsl     r3, r3, #10
	bl      Function_22376fc
	ldr     r1, [pc, #0x9c] @ 0x222b3f4, (=0x400000a)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	mov     r3, #0x51
	bic     r2, r0
	mov     r0, #0x1
	orr     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x2
	mov     r3, #0xe
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	lsl     r3, r3, #12
	bl      Function_22376fc
	ldr     r1, [pc, #0x74] @ 0x222b3f8, (=0x400000c)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	mov     r3, #0x51
	bic     r2, r0
	strh    r2, [r1, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	bl      0x201d710
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, #0x51
	bl      0x2002e7c
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, #0x51
	bl      0x2002e7c
	mov     r2, #0x5
	mov     r1, #0x0
	lsl     r2, r2, #24
	ldr     r0, [pc, #0x44] @ 0x222b3fc, (=0x6b5a)
	strh    r1, [r2, #0x0]
	strh    r0, [r2, #0x3e]
	str     r1, [sp, #0x0]
	mov     r0, #0x51
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x200daa4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0xa
	mov     r3, #0x3
	bl      0x200daa4
	ldr     r1, [pc, #0x1c] @ 0x222b3fc, (=0x6b5a)
	ldr     r0, [pc, #0x1c] @ 0x222b400, (=0x5000042)
	strh    r1, [r0, #0x0]
	add     sp, #0x40
	pop     {r3-r5,pc}
@ 0x222b3e8

.word 0x223d694 @ 0x222b3e8
.word Unknown_223d684 @ 0x222b3ec
.word 0x4000008 @ 0x222b3f0
.word 0x400000a @ 0x222b3f4
.word 0x400000c @ 0x222b3f8
.word 0x6b5a @ 0x222b3fc
.word 0x5000042 @ 0x222b400



.thumb
Function_222b404: @ 222b404 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_2237a20
	bl      Function_2237a74
	mov     r0, #0x29
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x2b
	mov     r2, #0x28
	mov     r3, #0x2a
	bl      Function_2237b0c
	mov     r0, #0x0
	mov     r1, #0x5a
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r2, #0x80
	mov     r3, #0x8
	bl      Function_2237d14
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x1
	mov     r1, #0x5b
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	mov     r2, #0x80
	mov     r3, #0xb8
	bl      Function_2237d14
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222b46c

.thumb
Function_222b46c: @ 222b46c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x51
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x2d
	mov     r2, #0x0
	mov     r3, #0x80
	bl      0x2006e84
	mov     r0, #0xe
	lsl     r0, r0, #6
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x51
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, #0x74
	mov     r1, #0x2c
	mov     r3, #0x2
	bl      0x2006e3c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222b4aa


.align 2, 0


.thumb
Function_222b4ac: @ 222b4ac :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r1, #0x2
	mov     r6, r2
	mov     r7, r3
	bl      0x2019fe4
	ldr     r1, [pc, #0x38] @ 0x222b4f8, (=0x4380)
	cmp     r7, #0x2
	bne     branch_222b4c6
	.hword  0x1c89 @ add r1, r1, #0x2
.thumb
branch_222b4c6: @ 222b4c6 :thumb
	lsl     r2, r6, #5
	add     r3, r4, r2
	lsl     r2, r3, #1
	.hword  0x1c5b @ add r3, r3, #0x1
	strh    r1, [r0, r2]
	add     r2, r1, #0x1
	lsl     r3, r3, #1
	strh    r2, [r0, r3]
	mov     r3, r1
	add     r2, r6, #0x1
	lsl     r2, r2, #5
	add     r4, r4, r2
	add     r3, #0x8
	lsl     r2, r4, #1
	strh    r3, [r0, r2]
	add     r2, r4, #0x1
	add     r1, #0x9
	lsl     r2, r2, #1
	strh    r1, [r0, r2]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      0x2019448
	pop     {r3-r7,pc}
@ 0x222b4f6


.align 2


.word 0x4380 @ 0x222b4f8
.thumb
Function_222b4fc: @ 222b4fc :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x2
	bl      0x2019fe4
	lsl     r1, r6, #5
	add     r3, r4, r1
	ldr     r1, [pc, #0x24] @ 0x222b538, (=0x4384)
	lsl     r2, r3, #1
	strh    r1, [r0, r2]
	add     r2, r3, #0x1
	lsl     r2, r2, #1
	strh    r1, [r0, r2]
	add     r2, r6, #0x1
	lsl     r2, r2, #5
	add     r3, r4, r2
	lsl     r2, r3, #1
	strh    r1, [r0, r2]
	add     r2, r3, #0x1
	lsl     r2, r2, #1
	strh    r1, [r0, r2]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	bl      0x2019448
	pop     {r4-r6,pc}
@ 0x222b536


.align 2


.word 0x4384 @ 0x222b538
.thumb
Function_222b53c: @ 222b53c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, r2
	mov     r7, r3
	ldr     r2, [sp, #0x28]
	mov     r3, #0x51
	bl      0x200b29c
	mov     r5, r0
	mov     r0, #0x0
	mov     r1, #0x2
	bl      0x2002df8
	mov     r2, r0
	mov     r0, #0x0
	mov     r1, r5
	bl      0x2002d7c
	mov     r4, r0
	mov     r0, r6
	bl      0x201c294
	lsl     r0, r0, #3
	add     r4, #0x20
	sub     r3, r0, r4
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r7, [sp, #0x8]
	mov     r0, r6
	mov     r2, r5
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      0x20237bc
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222b590

.thumb
Function_222b590: @ 222b590 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, r1
	cmp     r2, #0x64
	blt     branch_222b5a0
	mov     r3, #0x3
	mov     r1, #0x0
	b       branch_222b5ae
@ 0x222b5a0

.thumb
branch_222b5a0: @ 222b5a0 :thumb
	cmp     r2, #0xa
	blt     branch_222b5aa
	mov     r3, #0x3
	mov     r1, #0x1
	b       branch_222b5ae
@ 0x222b5aa

.thumb
branch_222b5aa: @ 222b5aa :thumb
	mov     r3, #0x2
	mov     r1, #0x1
.thumb
branch_222b5ae: @ 222b5ae :thumb
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	bl      0x200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x222b5be


.align 2, 0


.thumb
Function_222b5c0: @ 222b5c0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	str     r2, [sp, #0x18]
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r4, r3
	ldr     r2, [pc, #0x180] @ 0x222b750, (=0x226)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x51
	bl      0x200b144
	str     r0, [sp, #0x24]
	mov     r0, #0x51
	bl      0x200b358
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	bl      0x2025f30
	cmp     r0, #0x1
	bne     branch_222b5f4
	ldr     r0, [pc, #0x164] @ 0x222b754, (=0x3040f)
	str     r0, [sp, #0x1c]
	b       branch_222b5f8
@ 0x222b5f4

.thumb
branch_222b5f4: @ 222b5f4 :thumb
	ldr     r0, [pc, #0x160] @ 0x222b758, (=0x7080f)
	str     r0, [sp, #0x1c]
.thumb
branch_222b5f8: @ 222b5f8 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [pc, #0x160] @ 0x222b75c, (=0x223e01c)
	lsl     r0, r0, #4
	str     r0, [sp, #0x20]
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r2, #0x3
	ldr     r0, [r0, #0x0]
	mov     r3, r4
	bl      Function_223795c
	ldr     r4, [pc, #0x14c] @ 0x222b760, (=0x223df44)
	mov     r6, #0x1
	mov     r5, #0x10
.thumb
branch_222b618: @ 222b618 :thumb
	cmp     r6, #0x4
	bne     branch_222b624
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x4c]
	cmp     r0, #0x0
	beq     branch_222b654
.thumb
branch_222b624: @ 222b624 :thumb
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x24]
	ldr     r2, [r4, #0x0]
	mov     r3, #0x51
	bl      0x200b29c
	mov     r7, r0
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x18]
	mov     r2, r7
	ldr     r0, [r0, #0x10]
	mov     r3, #0x20
	bl      0x201d78c
	mov     r0, r7
	bl      0x20237bc
.thumb
branch_222b654: @ 222b654 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x5
	bcc     branch_222b618
	ldr     r2, [sp, #0x10]
	ldr     r0, [sp, #0x28]
	ldr     r2, [r2, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x10]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	bl      Function_222b53c
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x10]
	bl      0x202cc58
	mov     r1, r0
	ldr     r0, [sp, #0x28]
	bl      Function_222b590
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x10]
	bl      0x202cc5c
	mov     r2, r0
	mov     r3, #0x2
	ldr     r0, [sp, #0x28]
	str     r3, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	bl      0x200b60c
	mov     r0, #0x11
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x10]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	bl      Function_222b53c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0x1
	ldr     r2, [sp, #0x10]
	str     r3, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	ldr     r2, [r2, #0x50]
	bl      0x200b60c
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x30
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x10]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	bl      Function_222b53c
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x4c]
	cmp     r0, #0x0
	beq     branch_222b712
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x8]
	bl      0x2026e48
	mov     r1, r0
	ldr     r0, [sp, #0x28]
	bl      Function_222b590
	mov     r0, #0x12
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r0, #0x10]
	ldr     r2, [sp, #0x28]
	ldr     r3, [sp, #0x1c]
	bl      Function_222b53c
.thumb
branch_222b712: @ 222b712 :thumb
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x18]
	ldr     r0, [sp, #0x18]
	ldr     r2, [r2, #0x38]
	ldr     r3, [r3, #0x3c]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x10]
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x200dc48
	ldr     r1, [pc, #0x34] @ 0x222b764, (=0x223e014)
	ldr     r0, [sp, #0x20]
	ldr     r2, [r1, r0]
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #2
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	add     r0, #0xdc
	str     r2, [r0, #0x0]
	ldr     r0, [sp, #0x28]
	bl      0x200b3f0
	ldr     r0, [sp, #0x24]
	bl      0x200b190
	mov     r0, #0x1
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x222b750

.word 0x226 @ 0x222b750
.word 0x3040f @ 0x222b754
.word 0x7080f @ 0x222b758
.word 0x223e01c @ 0x222b75c
.word 0x223df44 @ 0x222b760
.word 0x223e014 @ 0x222b764
.thumb
Function_222b768: @ 222b768 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r5, r1
	mov     r1, r2
	ldr     r2, [r4, #0x24]
	mov     r6, r3
	cmp     r2, #0x0
	bne     branch_222b780
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x222b780

.thumb
branch_222b780: @ 222b780 :thumb
	.hword  0x1e52 @ sub r2, r2, #0x1
	cmp     r2, #0x4
	bhi     branch_222b7ae
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x222b792

Jumppoints_222b792:
.hword branch_222b79c - Jumppoints_222b792 - 2
.hword branch_222b7a0 - Jumppoints_222b792 - 2
.hword branch_222b7a4 - Jumppoints_222b792 - 2
.hword branch_222b7a8 - Jumppoints_222b792 - 2
.hword branch_222b7ac - Jumppoints_222b792 - 2
.thumb
branch_222b79c: @ 222b79c :thumb
	mov     r0, #0x4
	b       branch_222b7ae
@ 0x222b7a0

.thumb
branch_222b7a0: @ 222b7a0 :thumb
	mov     r0, #0x5
	b       branch_222b7ae
@ 0x222b7a4

.thumb
branch_222b7a4: @ 222b7a4 :thumb
	mov     r0, #0x6
	b       branch_222b7ae
@ 0x222b7a8

.thumb
branch_222b7a8: @ 222b7a8 :thumb
	mov     r0, #0x7
	b       branch_222b7ae
@ 0x222b7ac

.thumb
branch_222b7ac: @ 222b7ac :thumb
	mov     r0, #0x8
.thumb
branch_222b7ae: @ 222b7ae :thumb
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_223795c
	mov     r0, r4
	mov     r1, #0x1a
	mov     r2, r6
	bl      Function_222b4fc
	ldr     r0, [pc, #0x10] @ 0x222b7d8, (=0x223e014)
	lsl     r1, r5, #4
	ldr     r1, [r0, r1]
	lsl     r0, r5, #2
	add     r0, r4, r0
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222b7d8

.word 0x223e014 @ 0x222b7d8
.thumb
Function_222b7dc: @ 222b7dc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x34]
	mov     r4, r1
	mov     r7, r3
	str     r2, [sp, #0x4]
	cmp     r0, #0x0
	bne     branch_222b824
	ldr     r0, [r5, #0x14]
	bl      0x202dec4
	cmp     r0, #0x1
	bne     branch_222b7fc
	mov     r0, #0x1
	str     r0, [r5, #0x34]
.thumb
branch_222b7fc: @ 222b7fc :thumb
	ldr     r0, [r5, #0x4]
	bl      0x2025ccc
	bl      0x2025d64
	cmp     r0, #0x1
	bne     branch_222b80e
	mov     r0, #0x1
	str     r0, [r5, #0x34]
.thumb
branch_222b80e: @ 222b80e :thumb
	mov     r0, #0x51
	bl      Function_2237520
	bl      Function_2237624
	cmp     r0, #0x0
	beq     branch_222b824
	mov     r0, #0x1
	str     r0, [r5, #0x34]
	bl      Function_2238400
.thumb
branch_222b824: @ 222b824 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x1
	bne     branch_222b834
	ldr     r0, [r5, #0x4c]
	cmp     r0, #0x0
	bne     branch_222b834
	mov     r0, #0x0
	str     r0, [r5, #0x34]
.thumb
branch_222b834: @ 222b834 :thumb
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x1
	bne     branch_222b878
	ldr     r0, [pc, #0x44] @ 0x222b880, (=0x223e01c)
	lsl     r6, r4, #4
	ldr     r0, [r0, r6]
	ldr     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x3
	mov     r3, r7
	bl      Function_223795c
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, r7
	bl      Function_222b4fc
	ldr     r0, [pc, #0x28] @ 0x222b884, (=0x223e014)
	ldr     r1, [r0, r6]
	lsl     r0, r4, #2
	add     r0, r5, r0
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	ldr     r1, [r5, #0x38]
	mov     r0, #0x1
	orr     r0, r1
	str     r0, [r5, #0x38]
	ldr     r0, [r5, #0x14]
	bl      0x202ded4
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b878

.thumb
branch_222b878: @ 222b878 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x222b87e


.align 2


.word 0x223e01c @ 0x222b880
.word 0x223e014 @ 0x222b884
.thumb
Function_222b888: @ 222b888 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x2c]
	mov     r4, r1
	mov     r7, r3
	cmp     r0, #0x1
	bne     branch_222b8d8
	ldr     r0, [r5, #0x4c]
	cmp     r0, #0x1
	bne     branch_222b8d8
	ldr     r0, [pc, #0x3c] @ 0x222b8dc, (=0x223e01c)
	lsl     r6, r4, #4
	ldr     r0, [r0, r6]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x3
	bl      Function_223795c
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, r7
	mov     r3, #0x1
	bl      Function_222b4ac
	lsl     r3, r4, #2
	add     r1, r5, r3
	mov     r0, #0x1
	add     r1, #0xfc
	str     r0, [r1, #0x0]
	ldr     r1, [pc, #0x18] @ 0x222b8e0, (=0x223e014)
	ldr     r2, [r1, r6]
	add     r1, r5, r3
	add     r1, #0xdc
	str     r2, [r1, #0x0]
	ldr     r2, [r5, #0x38]
	mov     r1, #0x2
	orr     r1, r2
	str     r1, [r5, #0x38]
	pop     {r3-r7,pc}
@ 0x222b8d8

.thumb
branch_222b8d8: @ 222b8d8 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b8dc

.word 0x223e01c @ 0x222b8dc
.word 0x223e014 @ 0x222b8e0
.thumb
Function_222b8e4: @ 222b8e4 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	mov     r5, r1
	mov     r7, r3
	cmp     r0, #0x1
	bne     branch_222b926
	ldr     r0, [pc, #0x38] @ 0x222b92c, (=0x223e01c)
	lsl     r6, r5, #4
	ldr     r0, [r0, r6]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x3
	bl      Function_223795c
	lsl     r5, r5, #2
	add     r0, r4, r5
	mov     r3, #0x1
	add     r0, #0xfc
	str     r3, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x1a
	mov     r2, r7
	bl      Function_222b4ac
	ldr     r0, [pc, #0x14] @ 0x222b930, (=0x223e014)
	ldr     r1, [r0, r6]
	add     r0, r4, r5
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b926

.thumb
branch_222b926: @ 222b926 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x222b92a


.align 2


.word 0x223e01c @ 0x222b92c
.word 0x223e014 @ 0x222b930
.thumb
Function_222b934: @ 222b934 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x222b970, (=0x223e01c)
	lsl     r6, r4, #4
	ldr     r0, [r0, r6]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x3
	mov     r7, r3
	bl      Function_223795c
	lsl     r4, r4, #2
	add     r0, r5, r4
	mov     r3, #0x2
	add     r0, #0xfc
	str     r3, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, r7
	bl      Function_222b4ac
	ldr     r0, [pc, #0x10] @ 0x222b974, (=0x223e014)
	ldr     r1, [r0, r6]
	add     r0, r5, r4
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b970

.word 0x223e01c @ 0x222b970
.word 0x223e014 @ 0x222b974
.thumb
Function_222b978: @ 222b978 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [pc, #0x34] @ 0x222b9b4, (=0x223e01c)
	lsl     r6, r4, #4
	ldr     r0, [r0, r6]
	mov     r1, r2
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x3
	mov     r7, r3
	bl      Function_223795c
	lsl     r4, r4, #2
	add     r0, r5, r4
	mov     r1, #0x0
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r2, r7
	bl      Function_222b4fc
	ldr     r0, [pc, #0x10] @ 0x222b9b8, (=0x223e014)
	ldr     r1, [r0, r6]
	add     r0, r5, r4
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x222b9b4

.word 0x223e01c @ 0x222b9b4
.word 0x223e014 @ 0x222b9b8
.thumb
Function_222b9bc: @ 222b9bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x70
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x13
	str     r0, [r7, #0x20]
	ldr     r0, [sp, #0xc]
	ldr     r4, [pc, #0x100] @ 0x222bad0, (=0x223e014)
	str     r0, [sp, #0x10]
	mov     r0, r7
	str     r0, [sp, #0x8]
	add     r0, #0x5c
	str     r0, [sp, #0x8]
	mov     r0, r7
	str     r0, [sp, #0x14]
	add     r0, #0x20
	mov     r5, #0x1
	str     r7, [sp, #0x18]
	str     r0, [sp, #0x14]
.thumb
branch_222b9e4: @ 222b9e4 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x8]
	ldr     r3, [pc, #0xe4] @ 0x222bad4, (=0x226)
	add     r0, sp, #0x1c
	mov     r2, #0x1
	bl      Function_2237808
	ldr     r2, [r4, #0x4]
	ldr     r3, [r7, #0x20]
	add     r0, sp, #0x1c
	mov     r1, #0x1a
	bl      Function_2237858
	ldr     r0, [r4, #0xc]
	mov     r12, r0
	cmp     r0, #0x0
	beq     branch_222ba84
	ldr     r0, [sp, #0x18]
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222ba68
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	bl      0x201c2ac
	lsl     r1, r5, #24
	ldr     r0, [sp, #0x2c]
	lsr     r1, r1, #24
	bl      0x201c2b0
	ldr     r2, [sp, #0x54]
	ldr     r3, [sp, #0x58]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x200dc48
	ldr     r0, [sp, #0x18]
	add     r0, #0xfc
	ldr     r3, [r0, #0x0]
	cmp     r3, #0x0
	beq     branch_222ba52
	mov     r0, r7
	mov     r1, #0x1a
	mov     r2, r5
	bl      Function_222b4ac
	b       branch_222ba5c
@ 0x222ba52

.thumb
branch_222ba52: @ 222ba52 :thumb
	mov     r0, r7
	mov     r1, #0x1a
	mov     r2, r5
	bl      Function_222b4fc
.thumb
branch_222ba5c: @ 222ba5c :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r5, r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_222baa2
@ 0x222ba68

.thumb
branch_222ba68: @ 222ba68 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r7
	add     r2, sp, #0x1c
	mov     r3, r5
	mov     r6, r12
	blx     r6
	cmp     r0, #0x1
	bne     branch_222baa2
	ldr     r0, [r4, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r5, r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	b       branch_222baa2
@ 0x222ba84

.thumb
branch_222ba84: @ 222ba84 :thumb
	ldr     r0, [r4, #0x8]
	add     r1, sp, #0x1c
	str     r0, [sp, #0x0]
	ldr     r0, [r7, #0x0]
	mov     r2, #0x3
	mov     r3, r5
	bl      Function_223795c
	ldr     r0, [sp, #0x18]
	ldr     r1, [r4, #0x0]
	add     r0, #0xdc
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x4]
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r5, r5, r0
.thumb
branch_222baa2: @ 222baa2 :thumb
	ldr     r0, [sp, #0x14]
	ldr     r1, [r4, #0x4]
	ldr     r2, [r0, #0x0]
	mov     r0, #0x1a
	mul     r0, r1
	add     r1, r2, r0
	ldr     r0, [sp, #0x14]
	add     r4, #0x10
	str     r1, [r0, #0x0]
	ldr     r0, [sp, #0x8]
	add     r0, #0x10
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x8
	bcc     branch_222b9e4
	ldr     r0, [sp, #0xc]
	add     sp, #0x70
	pop     {r3-r7,pc}
@ 0x222bad0

.word 0x223e014 @ 0x222bad0
.word 0x226 @ 0x222bad4
.thumb
Function_222bad8: @ 222bad8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r7, r0
	mov     r4, r7
	str     r1, [sp, #0xc]
	mov     r6, #0x0
	add     r4, #0x5c
.thumb
branch_222bae6: @ 222bae6 :thumb
	mov     r0, r4
	bl      0x201a7cc
	cmp     r0, #0x0
	beq     branch_222bb74
	ldr     r0, [sp, #0xc]
	cmp     r6, r0
	bne     branch_222bb36
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, r4
	bl      0x201c29c
	str     r0, [sp, #0x10]
	mov     r0, r4
	bl      0x201c2a0
	str     r0, [sp, #0x14]
	mov     r0, r4
	bl      0x201c294
	mov     r5, r0
	mov     r0, r4
	bl      0x201c298
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x0]
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	mov     r1, #0x0
	bl      0x2019e2c
	b       branch_222bb74
@ 0x222bb36

.thumb
branch_222bb36: @ 222bb36 :thumb
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	mov     r3, #0x2
	bl      0x200dc48
	mov     r0, r4
	bl      0x201c29c
	str     r0, [sp, #0x18]
	mov     r0, r4
	bl      0x201c2a0
	str     r0, [sp, #0x1c]
	mov     r0, r4
	bl      0x201c294
	mov     r5, r0
	mov     r0, r4
	bl      0x201c298
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r7, #0x0]
	ldr     r2, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	mov     r1, #0x0
	bl      0x2019e2c
.thumb
branch_222bb74: @ 222bb74 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	cmp     r6, #0x8
	bcc     branch_222bae6
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	bl      0x2019448
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x222bb88

.thumb
Function_222bb88: @ 222bb88 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r2, r1
	ldr     r1, [r5, #0x54]
	mov     r7, #0x7
	mov     r6, r7
	mov     r4, r1
	mov     r0, #0x0
	sub     r6, #0x8
.thumb
branch_222bb9a: @ 222bb9a :thumb
	add     r4, r4, r2
	cmp     r4, r6
	bne     branch_222bba2
	mov     r4, r0
.thumb
branch_222bba2: @ 222bba2 :thumb
	cmp     r4, #0x8
	bne     branch_222bba8
	mov     r4, r7
.thumb
branch_222bba8: @ 222bba8 :thumb
	cmp     r4, r1
	beq     branch_222bbbe
	lsl     r3, r4, #2
	add     r3, r5, r3
	add     r3, #0xdc
	ldr     r3, [r3, #0x0]
	cmp     r3, #0x0
	beq     branch_222bb9a
	ldr     r0, [pc, #0x8] @ 0x222bbc4, (=0x5dc)
	bl      0x2005748
.thumb
branch_222bbbe: @ 222bbbe :thumb
	str     r4, [r5, #0x54]
	pop     {r3-r7,pc}
@ 0x222bbc2


.align 2


.word 0x5dc @ 0x222bbc4
.thumb
Function_222bbc8: @ 222bbc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r1, r5
	add     r1, #0x5c
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      0x201c2a0
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r4, r0, #3
	ldr     r0, [r5, #0x54]
	mov     r1, r5
	add     r1, #0x5c
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      0x201c298
	.hword  0x1c80 @ add r0, r0, #0x2
	lsl     r3, r0, #3
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r2, [r5, r0]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r2, r1, #12
	cmp     r2, r4
	ble     branch_222bc06
	lsl     r1, r4, #12
	str     r1, [r5, r0]
.thumb
branch_222bc06: @ 222bc06 :thumb
	add     r2, #0xc0
	cmp     r2, r4
	bgt     branch_222bc18
	add     r0, r4, r3
	sub     r0, #0xc0
	lsl     r1, r0, #12
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r1, [r5, r0]
.thumb
branch_222bc18: @ 222bc18 :thumb
	pop     {r3-r5,pc}
@ 0x222bc1a


.align 2, 0


.thumb
Function_222bc1c: @ 222bc1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x12
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #4
	ldr     r1, [r0, r1]
	ldr     r5, [sp, #0x0]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r7, r0, #12
	mov     r0, r7
	str     r0, [sp, #0xc]
	add     r0, #0xc0
	ldr     r6, [sp, #0x4]
	add     r5, #0x5c
	str     r0, [sp, #0xc]
.thumb
branch_222bc46: @ 222bc46 :thumb
	mov     r0, r5
	bl      0x201a7cc
	cmp     r0, #0x0
	beq     branch_222bc72
	mov     r0, r5
	bl      0x201c2a0
	.hword  0x1e40 @ sub r0, r0, #0x1
	lsl     r4, r0, #3
	mov     r0, r5
	bl      0x201c298
	cmp     r7, r4
	ble     branch_222bc68
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.thumb
branch_222bc68: @ 222bc68 :thumb
	ldr     r0, [sp, #0xc]
	cmp     r0, r4
	bgt     branch_222bc72
	mov     r0, #0x1
	str     r0, [sp, #0x4]
.thumb
branch_222bc72: @ 222bc72 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	cmp     r6, #0x8
	bcc     branch_222bc46
	mov     r1, #0x5a
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x8]
	bl      0x2021cac
	mov     r1, #0x5b
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x4]
	bl      0x2021cac
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222bc9a


.align 2, 0


.thumb
Function_222bc9c: @ 222bc9c :thumb
	push    {r3-r7,lr}
	bl      0x200682c
	mov     r1, #0x5a
	mov     r7, r0
	lsl     r1, r1, #2
	ldr     r0, [r7, r1]
	cmp     r0, #0x0
	bne     branch_222bcb6
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r7, r1]
	cmp     r1, #0x0
	beq     branch_222bcc8
.thumb
branch_222bcb6: @ 222bcb6 :thumb
	bl      0x2021bd4
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      0x2021bd4
	bl      Function_2237da0
.thumb
branch_222bcc8: @ 222bcc8 :thumb
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x5c
.thumb
branch_222bcd0: @ 222bcd0 :thumb
	ldr     r0, [r4, #0x5c]
	cmp     r0, #0x0
	beq     branch_222bce2
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      0x201a8fc
.thumb
branch_222bce2: @ 222bce2 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, #0x8
	bcc     branch_222bcd0
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	bl      0x20181c4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	pop     {r3-r7,pc}
@ 0x222bd14

.thumb
Function_222bd14: @ 222bd14 :thumb
	mov     r1, #0x17
	lsl     r1, r1, #4
	ldr     r2, [r0, r1]
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x20] @ 0x222bd40, (=0x223df70)
	ldrh    r2, [r2, r3]
	cmp     r2, #0x0
	bne     branch_222bd28
	mov     r2, #0x0
	str     r2, [r0, r1]
.thumb
branch_222bd28: @ 222bd28 :thumb
	mov     r1, #0x17
	lsl     r1, r1, #4
	ldr     r3, [r0, r1]
	add     r2, r3, #0x1
	str     r2, [r0, r1]
	ldr     r0, [pc, #0xc] @ 0x222bd40, (=0x223df70)
	lsl     r1, r3, #1
	ldrh    r1, [r0, r1]
	ldr     r0, [pc, #0x8] @ 0x222bd44, (=0x500006c)
	strh    r1, [r0, #0x0]
	bx      lr
@ 0x222bd3e


.align 2


.word 0x223df70 @ 0x222bd40
.word 0x500006c @ 0x222bd44
.thumb
Function_222bd48: @ 222bd48 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x201dcac
	bl      0x200a858
	mov     r0, r4
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x222bd68, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x222bd6c, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x222bd68

.word 0x27e0000 @ 0x222bd68
.word 0x3ff8 @ 0x222bd6c
.thumb
Function_222bd70: @ 222bd70 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x1
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x51
	lsl     r2, r2, #18
	bl      0x2017fc8
	mov     r1, #0x5d
	mov     r0, r5
	lsl     r1, r1, #2
	mov     r2, #0x51
	bl      0x200681c
	mov     r2, #0x5d
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x51
	bl      0x2018340
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x4]
	bl      0x202442c
	str     r0, [r4, #0x14]
	mov     r0, #0x47
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x4]
	bl      0x2025e38
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	bl      0x2027560
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	bl      0x2025e5c
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	bl      0x2027520
	str     r0, [r4, #0x4c]
	ldr     r0, [r4, #0xc]
	bl      0x2025f58
	str     r0, [r4, #0x50]
	mov     r0, #0x4b
	mov     r1, #0xf
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x51
	bl      Function_2237694
	ldr     r0, [r4, #0x4]
	bl      0x20247c0
	cmp     r0, #0x0
	bne     branch_222be14
	mov     r0, #0x53
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222be14: @ 222be14 :thumb
	mov     r0, #0x0
	bl      0x20053cc
	mov     r0, #0x0
	bl      0x2004234
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222be24

.thumb
Function_222be24: @ 222be24 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	blx 0x20d0a04
	mov     r0, r4
	bl      Function_222b07c
	cmp     r0, #0x1
	bne     branch_222be54
	mov     r0, r4
	bl      Function_222af8c
	mov     r0, r4
	bl      Function_222b25c
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222be54

.thumb
branch_222be54: @ 222be54 :thumb
	mov     r0, r4
	bl      Function_222bd14
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x9
	bhi     branch_222bebc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222be6c

Jumppoints_222be6c:
.hword branch_222be80 - Jumppoints_222be6c - 2
.hword branch_222be8c - Jumppoints_222be6c - 2
.hword branch_222beb2 - Jumppoints_222be6c - 2
.hword branch_222becc - Jumppoints_222be6c - 2
.hword branch_222befa - Jumppoints_222be6c - 2
.hword branch_222bf3a - Jumppoints_222be6c - 2
.hword branch_222c030 - Jumppoints_222be6c - 2
.hword branch_222c058 - Jumppoints_222be6c - 2
.hword branch_222c062 - Jumppoints_222be6c - 2
.hword branch_222c06a - Jumppoints_222be6c - 2
.thumb
branch_222be80: @ 222be80 :thumb
	mov     r0, r4
	bl      Function_222b2ec
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_222c06e
@ 0x222be8c

.thumb
branch_222be8c: @ 222be8c :thumb
	mov     r0, r4
	bl      Function_222ae60
	cmp     r0, #0x0
	bne     branch_222be9c
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_222c06e
@ 0x222be9c

.thumb
branch_222be9c: @ 222be9c :thumb
	mov     r0, #0x1
	mov     r1, #0x2
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
	mov     r0, #0x5
	ldr     r1, [pc, #0x1d8] @ 0x222c084, (=0x7d8c)
	lsl     r0, r0, #24
	strh    r1, [r0, #0x0]
	b       branch_222c06e
@ 0x222beb2

.thumb
branch_222beb2: @ 222beb2 :thumb
	mov     r0, r4
	bl      Function_222ae64
	cmp     r0, #0x0
	beq     branch_222bebe
.thumb
branch_222bebc: @ 222bebc :thumb
	b       branch_222c06e
@ 0x222bebe

.thumb
branch_222bebe: @ 222bebe :thumb
	mov     r0, #0x0
	mov     r1, #0x3
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
	b       branch_222c06e
@ 0x222becc

.thumb
branch_222becc: @ 222becc :thumb
	mov     r0, #0x49
	mov     r1, #0xc
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r0, #0x28
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222beee
	mov     r0, #0x2
	str     r0, [r4, #0x58]
	mov     r0, #0x0
	mov     r1, #0x7
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
	b       branch_222c06e
@ 0x222beee

.thumb
branch_222beee: @ 222beee :thumb
	mov     r0, r4
	bl      Function_222af1c
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_222c06e
@ 0x222befa

.thumb
branch_222befa: @ 222befa :thumb
	mov     r0, r4
	bl      Function_222b404
	mov     r0, r4
	bl      Function_222b46c
	ldr     r0, [pc, #0x180] @ 0x222c088, (=0x222bd49)
	ldr     r1, [r4, #0x0]
	bl      0x2017798
	mov     r0, r4
	bl      Function_222b9bc
	ldr     r1, [r4, #0x54]
	mov     r0, r4
	bl      Function_222bad8
	mov     r0, #0x1
	mov     r1, #0x5
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
	mov     r0, #0x5
	ldr     r1, [pc, #0x158] @ 0x222c084, (=0x7d8c)
	lsl     r0, r0, #24
	strh    r1, [r0, #0x0]
	mov     r0, #0x49
	mov     r1, #0xa
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_222c06e
@ 0x222bf3a

.thumb
branch_222bf3a: @ 222bf3a :thumb
	ldr     r0, [pc, #0x150] @ 0x222c08c, (=0x21bf67c)
	mov     r1, #0x3
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	beq     branch_222bfce
	mov     r1, #0x1
	tst     r0, r1
	ldr     r0, [pc, #0x144] @ 0x222c090, (=0x5dc)
	beq     branch_222bf7e
	bl      0x2005748
	ldr     r0, [r4, #0x54]
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	str     r0, [r4, #0x58]
	cmp     r0, #0x5
	bne     branch_222bf8c
	blx 0x20d09b8
	cmp     r0, #0x1
	bne     branch_222bf8c
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0xc
	beq     branch_222bf76
	bl      0x2037d84
.thumb
branch_222bf76: @ 222bf76 :thumb
	mov     r0, #0x51
	bl      0x209a8e0
	b       branch_222bf8c
@ 0x222bf7e

.thumb
branch_222bf7e: @ 222bf7e :thumb
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r4, #0x58]
	mov     r0, #0x1
	bl      Function_2237784
.thumb
branch_222bf8c: @ 222bf8c :thumb
	ldr     r0, [r4, #0x58]
	cmp     r0, #0x2
	bne     branch_222bfa6
	ldr     r1, [r4, #0x40]
	mov     r0, #0x80
	orr     r1, r0
	str     r1, [r4, #0x40]
	mov     r1, #0x1
	add     r0, #0xb0
	str     r1, [r4, r0]
	mov     r0, #0x6
	str     r0, [r5, #0x0]
	b       branch_222bfbe
@ 0x222bfa6

.thumb
branch_222bfa6: @ 222bfa6 :thumb
	.hword  0x1f80 @ sub r0, r0, #0x6
	cmp     r0, #0x1
	bhi     branch_222bfb2
	mov     r0, #0x1
	bl      Function_2237784
.thumb
branch_222bfb2: @ 222bfb2 :thumb
	mov     r0, #0x0
	mov     r1, #0x7
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
.thumb
branch_222bfbe: @ 222bfbe :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0xd
	bne     branch_222c06e
	mov     r1, #0xe
	str     r1, [r4, r0]
	b       branch_222c06e
@ 0x222bfce

.thumb
branch_222bfce: @ 222bfce :thumb
	ldr     r1, [r4, #0x48]
	cmp     r1, #0x1
	bne     branch_222bfe0
	mov     r0, r4
	bl      Function_222b9bc
	mov     r0, #0x0
	str     r0, [r4, #0x48]
	b       branch_222c06e
@ 0x222bfe0

.thumb
branch_222bfe0: @ 222bfe0 :thumb
	mov     r1, #0x40
	tst     r0, r1
	beq     branch_222bfee
	mov     r0, r4
	sub     r1, #0x41
	bl      Function_222bb88
.thumb
branch_222bfee: @ 222bfee :thumb
	ldr     r0, [pc, #0x9c] @ 0x222c08c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x80
	tst     r0, r1
	beq     branch_222c000
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222bb88
.thumb
branch_222c000: @ 222c000 :thumb
	ldr     r1, [r4, #0x54]
	mov     r0, r4
	bl      Function_222bad8
	mov     r0, r4
	bl      Function_222bbc8
	mov     r0, r4
	bl      Function_222bc1c
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x5
	bne     branch_222c06e
	mov     r0, #0x15
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_222c06e
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r1, #0x1
	sub     r0, #0x20
	str     r1, [r4, r0]
	b       branch_222c06e
@ 0x222c030

.thumb
branch_222c030: @ 222c030 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0xf
	bne     branch_222c06e
	add     r0, #0xc
	ldr     r1, [r4, r0]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_222c04a
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_222c06e
@ 0x222c04a

.thumb
branch_222c04a: @ 222c04a :thumb
	mov     r0, #0x0
	mov     r1, #0x7
	mov     r2, r5
	mov     r3, #0x8
	bl      Function_2237790
	b       branch_222c06e
@ 0x222c058

.thumb
branch_222c058: @ 222c058 :thumb
	mov     r0, r6
	bl      Function_222bc9c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222c062

.thumb
branch_222c062: @ 222c062 :thumb
	mov     r0, r5
	bl      Function_22377f0
	b       branch_222c06e
@ 0x222c06a

.thumb
branch_222c06a: @ 222c06a :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x222c06e

.thumb
branch_222c06e: @ 222c06e :thumb
	mov     r0, r4
	bl      Function_222af8c
	mov     r0, r4
	bl      Function_222b25c
	bl      Function_2237ca0
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222c082


.align 2


.word 0x7d8c @ 0x222c084
.word 0x222bd49 @ 0x222c088
.word 0x21bf67c @ 0x222c08c
.word 0x5dc @ 0x222c090
.thumb
Function_222c094: @ 222c094 :thumb
	push    {r3,lr}
	ldr     r0, [r0, #0x58]
	cmp     r0, #0x8
	bhi     branch_222c11a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222c0a8

Jumppoints_222c0a8:
.hword branch_222c112 - Jumppoints_222c0a8 - 2
.hword branch_222c0ba - Jumppoints_222c0a8 - 2
.hword branch_222c0c4 - Jumppoints_222c0a8 - 2
.hword branch_222c0ce - Jumppoints_222c0a8 - 2
.hword branch_222c0e2 - Jumppoints_222c0a8 - 2
.hword branch_222c0d8 - Jumppoints_222c0a8 - 2
.hword branch_222c0ec - Jumppoints_222c0a8 - 2
.hword branch_222c0f4 - Jumppoints_222c0a8 - 2
.hword branch_222c104 - Jumppoints_222c0a8 - 2
.thumb
branch_222c0ba: @ 222c0ba :thumb
	ldr     r0, [pc, #0x60] @ 0x222c11c, (=0x39)
	ldr     r1, [pc, #0x60] @ 0x222c120, (=0x21d0f70)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c0c4

.thumb
branch_222c0c4: @ 222c0c4 :thumb
	ldr     r0, [pc, #0x54] @ 0x222c11c, (=0x39)
	ldr     r1, [pc, #0x5c] @ 0x222c124, (=0x21d0f90)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c0ce

.thumb
branch_222c0ce: @ 222c0ce :thumb
	ldr     r0, [pc, #0x58] @ 0x222c128, (=0x61)
	ldr     r1, [pc, #0x58] @ 0x222c12c, (=0x223d71c)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c0d8

.thumb
branch_222c0d8: @ 222c0d8 :thumb
	ldr     r0, [pc, #0x4c] @ 0x222c128, (=0x61)
	ldr     r1, [pc, #0x54] @ 0x222c130, (=0x223d864)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c0e2

.thumb
branch_222c0e2: @ 222c0e2 :thumb
	ldr     r0, [pc, #0x44] @ 0x222c128, (=0x61)
	ldr     r1, [pc, #0x4c] @ 0x222c134, (=0x223d6bc)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c0ec

.thumb
branch_222c0ec: @ 222c0ec :thumb
	ldr     r0, [pc, #0x48] @ 0x222c138, (=0x223e094)
	bl      0x20243e0
	pop     {r3,pc}
@ 0x222c0f4

.thumb
branch_222c0f4: @ 222c0f4 :thumb
	bl      0x200569c
	mov     r0, #0x0
	ldr     r1, [pc, #0x40] @ 0x222c13c, (=0x20f6df0)
	mvn     r0, r0
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c104

.thumb
branch_222c104: @ 222c104 :thumb
	bl      0x200569c
	ldr     r0, [pc, #0x34] @ 0x222c140, (=0x62)
	ldr     r1, [pc, #0x38] @ 0x222c144, (=0x2249bac)
	bl      0x2000ec4
	pop     {r3,pc}
@ 0x222c112

.thumb
branch_222c112: @ 222c112 :thumb
	ldr     r0, [pc, #0x34] @ 0x222c148, (=0x4d)
	ldr     r1, [pc, #0x34] @ 0x222c14c, (=0x21d742c)
	bl      0x2000ec4
.thumb
branch_222c11a: @ 222c11a :thumb
	pop     {r3,pc}
@ 0x222c11c

.word 0x39 @ 0x222c11c
.word 0x21d0f70 @ 0x222c120
.word 0x21d0f90 @ 0x222c124
.word 0x61 @ 0x222c128
.word 0x223d71c @ 0x222c12c
.word 0x223d864 @ 0x222c130
.word 0x223d6bc @ 0x222c134
.word 0x223e094 @ 0x222c138
.word 0x20f6df0 @ 0x222c13c
.word 0x62 @ 0x222c140
.word 0x2249bac @ 0x222c144
.word 0x4d @ 0x222c148
.word 0x21d742c @ 0x222c14c
.thumb
Function_222c150: @ 222c150 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200682c
	bl      Function_222c094
	mov     r0, r4
	bl      0x2006830
	mov     r0, #0x51
	bl      0x201807c
	mov     r0, #0x0
	bl      Function_2238400
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222c172


.align 2, 0


.thumb
Function_222c174: @ 222c174 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x24] @ 0x222c19c, (=0x223e0b0)
	ldr     r1, [pc, #0x24] @ 0x222c1a0, (=0x123)
	mov     r3, #0x0
.thumb
branch_222c17c: @ 222c17c :thumb
	ldrh    r2, [r4, #0x2]
	cmp     r0, r2
	bne     branch_222c18c
	ldr     r0, [pc, #0x18] @ 0x222c19c, (=0x223e0b0)
	lsl     r1, r3, #2
	ldrh    r0, [r0, r1]
	pop     {r3,r4}
	bx      lr
@ 0x222c18c

.thumb
branch_222c18c: @ 222c18c :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r3, r1
	bcc     branch_222c17c
	mov     r0, #0x3f
	pop     {r3,r4}
	bx      lr
@ 0x222c19a


.align 2


.word 0x223e0b0 @ 0x222c19c
.word 0x123 @ 0x222c1a0
.thumb
Function_222c1a4: @ 222c1a4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r1, [pc, #0x60] @ 0x222c20c, (=0x2710)
	mov     r0, r4
	blx 0x20e1f6c
	add     r0, #0x30
	strh    r0, [r5, #0x0]
	ldr     r1, [pc, #0x54] @ 0x222c20c, (=0x2710)
	mov     r0, r4
	blx 0x20e1f6c
	mov     r4, r1
	mov     r1, #0xfa
	mov     r0, r4
	lsl     r1, r1, #2
	blx 0x20e1f6c
	add     r0, #0x30
	mov     r1, #0xfa
	strh    r0, [r5, #0x2]
	mov     r0, r4
	lsl     r1, r1, #2
	blx 0x20e1f6c
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0x64
	blx 0x20e1f6c
	add     r0, #0x30
	strh    r0, [r5, #0x4]
	mov     r0, r4
	mov     r1, #0x64
	blx 0x20e1f6c
	mov     r4, r1
	mov     r0, r4
	mov     r1, #0xa
	blx 0x20e1f6c
	add     r0, #0x30
	strh    r0, [r5, #0x6]
	mov     r0, r4
	mov     r1, #0xa
	blx 0x20e1f6c
	mov     r4, r1
	add     r4, #0x30
	strh    r4, [r5, #0x8]
	pop     {r3-r5,pc}
@ 0x222c20c

.word 0x2710 @ 0x222c20c
.thumb
Function_222c210: @ 222c210 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r0, [r7, #0x10]
	bl      0x2025ef0
	ldr     r5, [pc, #0x2c] @ 0x222c248, (=0x223f180)
	mov     r4, r0
	mov     r6, #0x0
.thumb
branch_222c220: @ 222c220 :thumb
	ldrh    r0, [r4, #0x0]
	bl      Function_222c174
	strh    r0, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0x8
	blt     branch_222c220
	ldr     r0, [r7, #0x10]
	bl      0x2025f24
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x222c24c, (=0x223f190)
	bl      Function_222c1a4
	ldr     r0, [pc, #0xc] @ 0x222c250, (=0x223f180)
	mov     r1, #0x0
	strh    r1, [r0, #0x1a]
	pop     {r3-r7,pc}
@ 0x222c248

.word 0x223f180 @ 0x222c248
.word 0x223f190 @ 0x222c24c
.word 0x223f180 @ 0x222c250
.thumb
Function_222c254: @ 222c254 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x48
	ldr     r5, [pc, #0x124] @ 0x222c380, (=0x223d6dc)
	mov     r4, r0
	add     r3, sp, #0x20
	mov     r2, #0x5
.thumb
branch_222c260: @ 222c260 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222c260
	ldr     r3, [pc, #0x118] @ 0x222c384, (=0x223d6cc)
	add     r2, sp, #0x10
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r0, sp, #0x20
	bl      0x201fe94
	add     r0, sp, #0x10
	bl      0x2018368
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r3, #0xf
	ldr     r0, [r4, #0x4]
	mov     r2, #0x1
	lsl     r3, r3, #12
	bl      Function_22376fc
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r3, #0x3e
	ldr     r0, [r4, #0x4]
	mov     r2, r1
	lsl     r3, r3, #10
	bl      Function_22376fc
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1e
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	mov     r2, #0x1
	lsl     r3, r3, #10
	bl      Function_22376fc
	mov     r0, #0x1
	lsl     r0, r0, #14
	str     r0, [sp, #0x0]
	mov     r3, #0x7
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	mov     r2, #0x1
	lsl     r3, r3, #12
	bl      Function_22376fc
	bl      0x201d710
	mov     r0, #0x0
	ldr     r2, [r4, #0x0]
	mov     r1, r0
	bl      0x2002e7c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	mov     r3, r2
	bl      0x200daa4
	ldr     r0, [r4, #0x14]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x4]
	mov     r2, #0xa
	mov     r3, #0x2
	bl      0x200dd0c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r3, r0
	mov     r2, r1
	add     r3, #0x8c
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r3, r1
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x74
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x74
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019e2c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2019448
	mov     r0, r4
	bl      Function_222c388
	add     sp, #0x48
	pop     {r3-r5,pc}
@ 0x222c37e


.align 2


.word 0x223d6dc @ 0x222c380
.word 0x223d6cc @ 0x222c384
.thumb
Function_222c388: @ 222c388 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x0]
	mov     r2, #0x4
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x0
	add     r3, #0xfc
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r3, #0x4
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x74
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x74
	mov     r3, #0x4
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x2019e2c
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      0x2019448
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222c402


.align 2, 0


.thumb
Function_222c404: @ 222c404 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x5c
	mov     r4, r0
	add     r0, #0x18
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222c44e
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	add     r1, #0x18
	mov     r2, #0x0
	mov     r3, #0xe
	bl      Function_2237808
	mov     r3, #0x51
	lsl     r3, r3, #2
	ldr     r3, [r4, r3]
	add     r0, sp, #0x8
	mov     r1, #0x16
	mov     r2, #0x10
	bl      Function_2237858
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x4]
	add     r1, sp, #0x8
	mov     r2, #0x5
	mov     r3, #0x4
	bl      Function_223795c
	add     sp, #0x5c
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x222c44e

.thumb
branch_222c44e: @ 222c44e :thumb
	ldr     r0, [pc, #0x28] @ 0x222c478, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_222c470
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x0
	bl      0x200dc9c
	add     r4, #0x18
	mov     r0, r4
	bl      0x201a8fc
	add     sp, #0x5c
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x222c470

.thumb
branch_222c470: @ 222c470 :thumb
	mov     r0, #0x1
	add     sp, #0x5c
	pop     {r3,r4,pc}
@ 0x222c476


.align 2


.word 0x21bf67c @ 0x222c478
.thumb
Function_222c47c: @ 222c47c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r4
	ldr     r3, [pc, #0xe0] @ 0x222c570, (=0x1a5)
	add     r0, #0x48
	add     r1, #0x28
	mov     r2, #0x0
	bl      Function_2237808
	mov     r3, #0x51
	lsl     r3, r3, #2
	mov     r0, r4
	ldr     r3, [r4, r3]
	add     r0, #0x48
	mov     r1, #0x1b
	mov     r2, #0x4
	bl      Function_2237858
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x48
	mov     r2, r1
	bl      Function_2237860
	mov     r0, #0x46
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	mov     r0, r4
	add     r0, #0x48
	bl      Function_2237a18
	mov     r3, #0x51
	lsl     r3, r3, #2
	ldr     r1, [r4, r3]
	mov     r2, #0x0
	add     r0, r1, r0
	str     r0, [r4, r3]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r4
	add     r0, #0x9c
	add     r1, #0x18
	add     r3, #0x61
	bl      Function_2237808
	mov     r3, #0x51
	lsl     r3, r3, #2
	mov     r0, r4
	ldr     r3, [r4, r3]
	add     r0, #0x9c
	mov     r1, #0x1e
	mov     r2, #0x4
	bl      Function_2237858
	mov     r0, r4
	add     r0, #0x9c
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2237860
	mov     r0, #0xb
	str     r0, [sp, #0x0]
	mov     r1, r4
	mov     r2, #0x1
	ldr     r0, [r4, #0x4]
	add     r1, #0x9c
	mov     r3, r2
	bl      Function_223795c
	mov     r0, r4
	add     r0, #0x9c
	bl      Function_2237a18
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	add     r0, r2, r0
	str     r0, [r4, r1]
	bl      Function_2237a20
	bl      Function_2237a74
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0xa
	mov     r2, #0x7
	mov     r3, #0x9
	bl      Function_2237b0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x1c] @ 0x222c574, (=0x3170)
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mov     r2, #0x80
	mov     r3, #0x4c
	bl      Function_2237d14
	ldr     r1, [pc, #0x10] @ 0x222c574, (=0x3170)
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_222c578
	add     sp, #0x8
	pop     {r4,pc}
@ 0x222c570

.word 0x1a5 @ 0x222c570
.word 0x3170 @ 0x222c574
.thumb
Function_222c578: @ 222c578 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x20
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	bl      0x200b358
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	ldr     r3, [pc, #0xf0] @ 0x222c684, (=0x1a5)
	add     r0, #0xf0
	add     r1, #0x38
	mov     r2, #0x0
	bl      Function_2237808
	mov     r3, #0x51
	lsl     r3, r3, #2
	mov     r0, r5
	ldr     r3, [r5, r3]
	add     r0, #0xf0
	mov     r1, #0x1a
	mov     r2, #0x4
	bl      Function_2237858
	mov     r0, r5
	add     r0, #0xf0
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2237860
	mov     r0, #0x41
	lsl     r0, r0, #2
	str     r4, [r5, r0]
	ldr     r2, [r5, #0x10]
	mov     r0, r4
	mov     r1, #0x0
	bl      0x200b498
	ldr     r0, [r5, #0x10]
	bl      0x2025f24
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	mov     r0, r4
	mov     r3, #0x5
	str     r1, [sp, #0x4]
	bl      0x200b60c
	mov     r0, #0x42
	str     r0, [sp, #0x0]
	mov     r1, r5
	ldr     r0, [r5, #0x4]
	add     r1, #0xf0
	mov     r2, #0x3
	mov     r3, #0xd
	bl      Function_223795c
	mov     r1, r5
	mov     r0, #0x0
	add     r1, #0xf8
	str     r0, [r1, #0x0]
	mov     r1, #0x1
	bl      0x2002df8
	mov     r2, r0
	mov     r0, r5
	add     r0, #0xf0
	mov     r1, #0x0
	bl      Function_2237868
	mov     r2, #0x44
	str     r2, [sp, #0x0]
	mov     r1, r5
	sub     r2, #0x45
	ldr     r0, [r5, #0x4]
	add     r1, #0xf0
	mov     r3, r2
	bl      Function_223795c
	add     r0, sp, #0x10
	blx 0x20c3fa0
	add     r0, sp, #0x10
	bl      Function_22335a8
	add     r1, sp, #0x1c
	add     r2, sp, #0x18
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	bl      Function_22335ec
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x1c]
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0x4
	bl      0x200b60c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x18]
	mov     r0, r4
	mov     r3, #0x4
	bl      0x200b60c
	mov     r0, r5
	mov     r1, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	mov     r2, #0x45
	str     r2, [sp, #0x0]
	ldr     r0, [r5, #0x4]
	add     r5, #0xf0
	sub     r2, #0x46
	mov     r1, r5
	mov     r3, r2
	bl      Function_223795c
	mov     r0, r4
	bl      0x200b3f0
	add     sp, #0x20
	pop     {r3-r5,pc}
@ 0x222c682


.align 2


.word 0x1a5 @ 0x222c684
.thumb
Function_222c688: @ 222c688 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_2237da0
	mov     r0, r4
	add     r0, #0x18
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_222c6d0
	mov     r0, r4
	add     r0, #0x18
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x18
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x28
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x28
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x38
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x38
	bl      0x201a8fc
.thumb
branch_222c6d0: @ 222c6d0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x4]
	bl      0x20181c4
	pop     {r4,pc}
@ 0x222c6f8

.thumb
Function_222c6f8: @ 222c6f8 :thumb
	push    {r3-r5,lr}
	mov     r3, #0x2
	ldr     r2, [pc, #0x80] @ 0x222c780, (=0x34dc)
	mov     r1, #0x55
	lsl     r3, r3, #16
	mov     r5, r0
	bl      Function_22376c4
	mov     r4, r0
	mov     r0, #0x55
	str     r0, [r4, #0x0]
	bl      0x2018340
	str     r0, [r4, #0x4]
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x8]
	bl      0x2025e38
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x8]
	bl      0x2027560
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	bl      0x2025e44
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x0]
	bl      Function_2237694
	ldr     r0, [r4, #0x8]
	bl      0x202442c
	ldr     r1, [pc, #0x40] @ 0x222c784, (=0x3174)
	mov     r2, #0x53
	str     r0, [r4, r1]
	mov     r0, #0x9
	lsl     r2, r2, #2
	str     r0, [r4, r2]
	mov     r0, r2
	mov     r1, #0x28
	sub     r0, #0x8
	str     r1, [r4, r0]
	mov     r1, r2
	mov     r0, #0x0
	add     r1, #0x8
	str     r0, [r4, r1]
	mov     r1, r2
	add     r1, #0x10
	str     r0, [r4, r1]
	add     r2, #0xc
	str     r0, [r4, r2]
	mov     r2, #0x3
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      0x2017fc8
	ldr     r1, [pc, #0x14] @ 0x222c788, (=0x496)
	mov     r0, #0x9
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222c77e


.align 2


.word 0x34dc @ 0x222c780
.word 0x3174 @ 0x222c784
.word 0x496 @ 0x222c788
.thumb
Function_222c78c: @ 222c78c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r1
	mov     r6, r0
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0xd
	bhi     branch_222c7f2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222c7ac

Jumppoints_222c7ac:
.hword branch_222c7c8 - Jumppoints_222c7ac - 2
.hword branch_222c7ea - Jumppoints_222c7ac - 2
.hword branch_222c808 - Jumppoints_222c7ac - 2
.hword branch_222c85a - Jumppoints_222c7ac - 2
.hword branch_222c886 - Jumppoints_222c7ac - 2
.hword branch_222c8c2 - Jumppoints_222c7ac - 2
.hword branch_222c8fc - Jumppoints_222c7ac - 2
.hword branch_222c92c - Jumppoints_222c7ac - 2
.hword branch_222c92c - Jumppoints_222c7ac - 2
.hword branch_222c92c - Jumppoints_222c7ac - 2
.hword branch_222c92c - Jumppoints_222c7ac - 2
.hword branch_222c912 - Jumppoints_222c7ac - 2
.hword branch_222c91a - Jumppoints_222c7ac - 2
.hword branch_222c926 - Jumppoints_222c7ac - 2
.thumb
branch_222c7c8: @ 222c7c8 :thumb
	bl      Function_222c254
	ldr     r0, [r4, #0xc]
	bl      0x2027520
	cmp     r0, #0x0
	bne     branch_222c7e4
	mov     r0, #0x1
	mov     r1, r0
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c7e4

.thumb
branch_222c7e4: @ 222c7e4 :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_222c92c
@ 0x222c7ea

.thumb
branch_222c7ea: @ 222c7ea :thumb
	bl      Function_222c404
	cmp     r0, #0x0
	beq     branch_222c7f4
.thumb
branch_222c7f2: @ 222c7f2 :thumb
	b       branch_222c92c
@ 0x222c7f4

.thumb
branch_222c7f4: @ 222c7f4 :thumb
	mov     r0, #0x1
	bl      Function_2237784
	mov     r0, #0x0
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c808

.thumb
branch_222c808: @ 222c808 :thumb
	bl      Function_222c47c
	ldr     r0, [pc, #0x128] @ 0x222c938, (=0x3174)
	ldr     r0, [r4, r0]
	bl      0x202dce0
	cmp     r0, #0x0
	bne     branch_222c844
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0x98
	str     r1, [r0, #0x0]
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r1, [pc, #0x108] @ 0x222c93c, (=0x317c)
	mov     r2, r5
	str     r0, [r4, r1]
	mov     r0, #0x1
	mov     r1, #0x3
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c844

.thumb
branch_222c844: @ 222c844 :thumb
	mov     r0, #0x53
	mov     r1, #0x7
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	mov     r1, #0x4
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c85a

.thumb
branch_222c85a: @ 222c85a :thumb
	ldr     r0, [pc, #0xe0] @ 0x222c93c, (=0x317c)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_222c92c
	ldr     r0, [pc, #0xd4] @ 0x222c940, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r1, r0
	beq     branch_222c92c
	bl      Function_2237784
	mov     r0, #0x0
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c886

.thumb
branch_222c886: @ 222c886 :thumb
	bl      Function_222cb10
	mov     r1, #0x15
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x5
	bne     branch_222c8aa
	mov     r0, #0x1
	bl      Function_2237784
	mov     r0, #0x0
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c8aa

.thumb
branch_222c8aa: @ 222c8aa :thumb
	cmp     r0, #0x4
	bne     branch_222c92c
	mov     r0, #0x1
	bl      Function_2237784
	mov     r0, #0x0
	mov     r1, #0xc
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c8c2

.thumb
branch_222c8c2: @ 222c8c2 :thumb
	bl      Function_222c388
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff74
	mov     r1, #0xc6
	lsl     r1, r1, #6
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x55
	bl      Function_2231ffc
	mov     r0, #0x1
	mov     r1, #0x6
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	ldr     r1, [pc, #0x50] @ 0x222c944, (=0x32d2)
	mov     r0, #0x4
	ldrb    r2, [r4, r1]
	bic     r2, r0
	strb    r2, [r4, r1]
	b       branch_222c92c
@ 0x222c8fc

.thumb
branch_222c8fc: @ 222c8fc :thumb
	ldr     r0, [pc, #0x40] @ 0x222c940, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_222c92c
	mov     r0, #0x0
	mov     r1, #0xb
	mov     r2, r5
	mov     r3, #0xd
	bl      Function_2237790
	b       branch_222c92c
@ 0x222c912

.thumb
branch_222c912: @ 222c912 :thumb
	mov     r0, #0x0
	blx 0x20c3ee4
	b       branch_222c92c
@ 0x222c91a

.thumb
branch_222c91a: @ 222c91a :thumb
	mov     r0, r6
	bl      Function_222c688
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x222c926

.thumb
branch_222c926: @ 222c926 :thumb
	mov     r0, r5
	bl      Function_22377f0
.thumb
branch_222c92c: @ 222c92c :thumb
	bl      Function_2237ca0
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x222c936


.align 2


.word 0x3174 @ 0x222c938
.word 0x317c @ 0x222c93c
.word 0x21bf67c @ 0x222c940
.word 0x32d2 @ 0x222c944
.thumb
Function_222c948: @ 222c948 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x5b
	bl      0x201807c
	ldr     r0, [pc, #0x18] @ 0x222c96c, (=0x4d)
	ldr     r1, [pc, #0x18] @ 0x222c970, (=0x21d742c)
	bl      0x2000ec4
	mov     r0, r4
	bl      0x2006830
	mov     r0, #0x55
	bl      0x201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x222c96a


.align 2


.word 0x4d @ 0x222c96c
.word 0x21d742c @ 0x222c970
.thumb
Function_222c974: @ 222c974 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	mov     r0, #0xc6
	lsl     r0, r0, #6
	add     r5, r6, r0
	mov     r2, #0xd6
	mov     r0, r5
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx 0x20c4cf4
	ldr     r2, [pc, #0x110] @ 0x222caa0, (=0x1a5)
	ldr     r3, [r6, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      0x200b144
	mov     r7, r0
	ldr     r0, [r6, #0x0]
	bl      0x200b358
	mov     r1, #0xc6
	mov     r2, #0x7
	lsl     r1, r1, #6
	strh    r2, [r6, r1]
	ldr     r3, [r6, #0x0]
	mov     r1, r7
	mov     r2, #0x4c
	str     r0, [sp, #0x0]
	bl      0x200b29c
	mov     r1, #0x41
	lsl     r1, r1, #2
	mov     r4, r0
	add     r1, r5, r1
	mov     r2, #0x24
	bl      0x2023df0
	mov     r0, r4
	bl      0x20237bc
	mov     r0, #0xc
	bl      Function_2237e4c
	str     r0, [sp, #0x4]
	mov     r0, #0xa
	bl      Function_2237e4c
	mov     r4, r0
	mov     r0, #0xb
	bl      Function_2237e4c
	mov     r1, r4
	orr     r1, r0
	ldr     r0, [sp, #0x4]
	mov     r2, #0x1
	orr     r1, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	add     r1, r0, #0x4
	strh    r2, [r5, r1]
	add     r1, r0, #0x6
	ldrb    r2, [r5, r1]
	mov     r1, #0x1
	bic     r2, r1
	add     r1, r0, #0x6
	strb    r2, [r5, r1]
	ldrb    r2, [r5, r1]
	mov     r1, #0x2
	bic     r2, r1
	add     r1, r0, #0x6
	strb    r2, [r5, r1]
	ldrb    r2, [r5, r1]
	mov     r1, #0x4
	orr     r2, r1
	add     r1, r0, #0x6
	strb    r2, [r5, r1]
	ldrb    r2, [r5, r1]
	mov     r1, #0x8
	orr     r2, r1
	add     r1, r0, #0x6
	strb    r2, [r5, r1]
	ldrb    r2, [r5, r1]
	mov     r1, #0x20
	.hword  0x1d80 @ add r0, r0, #0x6
	bic     r2, r1
	strb    r2, [r5, r0]
	ldr     r0, [sp, #0x0]
	ldr     r3, [r6, #0x0]
	mov     r1, r7
	mov     r2, #0x4b
	bl      0x200b29c
	mov     r4, r0
	mov     r1, #0x55
	lsl     r1, r1, #2
	add     r1, r5, r1
	mov     r2, #0xfa
	bl      0x2023df0
	mov     r0, r4
	bl      0x20237bc
	mov     r0, #0xd2
	lsl     r0, r0, #2
	mov     r1, #0x0
	ldr     r3, [pc, #0x54] @ 0x222caa4, (=0x1ea)
	strb    r1, [r5, r0]
	add     r2, r0, #0x2
	strh    r3, [r5, r2]
	add     r2, r0, #0x4
	strh    r1, [r5, r2]
	add     r2, r0, #0x6
	strh    r1, [r5, r2]
	add     r0, #0x8
	strb    r1, [r5, r0]
	add     r0, sp, #0x8
	bl      0x20138a4
	add     r0, sp, #0x8
	blx 0x20cc16c
	mov     r1, #0xd5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [sp, #0x0]
	bl      0x200b3f0
	mov     r0, r7
	bl      0x200b190
	ldr     r0, [pc, #0x28] @ 0x222caa8, (=0x3174)
	mov     r1, r5
	ldr     r0, [r6, r0]
	mov     r2, #0x3
	bl      0x202db2c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	ldr     r0, [r6, #0x4]
	mov     r1, r5
	bl      Function_2238194
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222ca9e


.align 2


.word 0x1a5 @ 0x222caa0
.word 0x1ea @ 0x222caa4
.word 0x3174 @ 0x222caa8
.thumb
Function_222caac: @ 222caac :thumb
	mov     r2, #0x16
	lsl     r2, r2, #4
	str     r1, [r0, r2]
	bx      lr
@ 0x222cab4

.thumb
Function_222cab4: @ 222cab4 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	mov     r1, #0x16
	lsl     r1, r1, #4
	mov     r4, r3
	ldr     r3, [r0, r1]
	.hword  0x1e5b @ sub r3, r3, #0x1
	str     r3, [r0, r1]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_222cad6
	bl      Function_22333bc
	mov     r0, #0x17
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222cad6

.thumb
branch_222cad6: @ 222cad6 :thumb
	cmp     r2, #0x0
	beq     branch_222caee
	bl      Function_2233388
	cmp     r0, #0x0
	bne     branch_222caee
	bl      Function_22333bc
	mov     r0, #0x16
	str     r0, [r5, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222caee

.thumb
branch_222caee: @ 222caee :thumb
	cmp     r4, #0x0
	beq     branch_222cb06
	ldr     r0, [pc, #0x18] @ 0x222cb0c, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	tst     r0, r4
	beq     branch_222cb06
	bl      Function_22333bc
	mov     r0, #0x1a
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222cb06

.thumb
branch_222cb06: @ 222cb06 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222cb0a


.align 2


.word 0x21bf67c @ 0x222cb0c
.thumb
Function_222cb10: @ 222cb10 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x57
	lsl     r5, r5, #2
	mov     r4, r0
	.hword  0x1f28 @ sub r0, r5, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222cb36
	bl      Function_2233230
	mov     r1, #0x3
	sub     r0, r1, r0
	bl      0x20397b0
	bl      Function_22330dc
	mov     r0, #0x1
	bl      Function_223346c
.thumb
branch_222cb36: @ 222cb36 :thumb
	ldr     r0, [r4, r5]
	cmp     r0, #0x1e
	bls     branch_222cb3e
	b       branch_222d036
@ 0x222cb3e

.thumb
branch_222cb3e: @ 222cb3e :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222cb4a

Jumppoints_222cb4a:
.hword branch_222cb88 - Jumppoints_222cb4a - 2
.hword branch_222cb9e - Jumppoints_222cb4a - 2
.hword branch_222cbc4 - Jumppoints_222cb4a - 2
.hword branch_222cbe6 - Jumppoints_222cb4a - 2
.hword branch_222cc10 - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222cc42 - Jumppoints_222cb4a - 2
.hword branch_222ccb8 - Jumppoints_222cb4a - 2
.hword branch_222ccd6 - Jumppoints_222cb4a - 2
.hword branch_222cd20 - Jumppoints_222cb4a - 2
.hword branch_222cd5c - Jumppoints_222cb4a - 2
.hword branch_222cd76 - Jumppoints_222cb4a - 2
.hword branch_222cdaa - Jumppoints_222cb4a - 2
.hword branch_222cdec - Jumppoints_222cb4a - 2
.hword branch_222ce0c - Jumppoints_222cb4a - 2
.hword branch_222ce24 - Jumppoints_222cb4a - 2
.hword branch_222ce3e - Jumppoints_222cb4a - 2
.hword branch_222ce94 - Jumppoints_222cb4a - 2
.hword branch_222cf1c - Jumppoints_222cb4a - 2
.hword branch_222cf64 - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222cf98 - Jumppoints_222cb4a - 2
.hword branch_222cf9c - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222d004 - Jumppoints_222cb4a - 2
.hword branch_222d036 - Jumppoints_222cb4a - 2
.hword branch_222cfd0 - Jumppoints_222cb4a - 2
.hword branch_222cc5e - Jumppoints_222cb4a - 2
.hword branch_222cc9c - Jumppoints_222cb4a - 2
.thumb
branch_222cb88: @ 222cb88 :thumb
	mov     r0, r4
	bl      Function_222c210
	bl      0x2033478
	mov     r0, #0x52
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	str     r1, [r4, r5]
	b       branch_222d036
@ 0x222cb9e

.thumb
branch_222cb9e: @ 222cb9e :thumb
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_222cc56
	mov     r1, #0x5b
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x334] @ 0x222cee0, (=0x223e0a4)
	add     r1, r4, r1
	bl      Function_2232e38
	mov     r0, #0x56
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	bl      0x2039734
	mov     r0, #0x2
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cbc4

.thumb
branch_222cbc4: @ 222cbc4 :thumb
	bl      Function_2233120
	mov     r1, #0x19
	mov     r0, r4
	lsl     r1, r1, #6
	bl      Function_222caac
	mov     r0, r4
	add     r0, #0x28
	mov     r1, #0xa
	bl      0x200e7fc
	ldr     r1, [pc, #0x304] @ 0x222cee4, (=0x34d8)
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cbe6

.thumb
branch_222cbe6: @ 222cbe6 :thumb
	bl      Function_2233248
	cmp     r0, #0x0
	beq     branch_222cc02
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0x59
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x2f0] @ 0x222cee8, (=0x708)
	mov     r0, r4
	bl      Function_222caac
	mov     r0, #0x4
	str     r0, [r4, r5]
.thumb
branch_222cc02: @ 222cc02 :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222cc10

.thumb
branch_222cc10: @ 222cc10 :thumb
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_223316c
	cmp     r0, #0x0
	beq     branch_222cc34
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_22331a8
	mov     r0, #0x7
	str     r0, [r4, r5]
	mov     r0, #0x16
	ldr     r1, [pc, #0x2b8] @ 0x222cee8, (=0x708)
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_222cc34: @ 222cc34 :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222cc42

.thumb
branch_222cc42: @ 222cc42 :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_222cab4
	bl      Function_2233388
	cmp     r0, #0x0
	bne     branch_222cc58
.thumb
branch_222cc56: @ 222cc56 :thumb
	b       branch_222d036
@ 0x222cc58

.thumb
branch_222cc58: @ 222cc58 :thumb
	mov     r0, #0x1d
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cc5e

.thumb
branch_222cc5e: @ 222cc5e :thumb
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r0, [pc, #0x278] @ 0x222ceec, (=0x3170)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x268] @ 0x222cee4, (=0x34d8)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	ldr     r0, [pc, #0x260] @ 0x222cee4, (=0x34d8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x264] @ 0x222cef0, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x16
	ldr     r1, [pc, #0x254] @ 0x222cee8, (=0x708)
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x1e
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cc9c

.thumb
branch_222cc9c: @ 222cc9c :thumb
	ldr     r0, [pc, #0x254] @ 0x222cef4, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_222ccaa
	mov     r0, #0x8
	str     r0, [r4, r5]
.thumb
branch_222ccaa: @ 222ccaa :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222ccb8

.thumb
branch_222ccb8: @ 222ccb8 :thumb
	bl      Function_2233268
	mov     r0, #0x9
	str     r0, [r4, r5]
	mov     r0, #0x16
	ldr     r1, [pc, #0x224] @ 0x222cee8, (=0x708)
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222ccd6

.thumb
branch_222ccd6: @ 222ccd6 :thumb
	bl      Function_22332f4
	cmp     r0, #0x0
	beq     branch_222cd12
	bl      Function_223329c
	mov     r0, #0xa
	str     r0, [r4, r5]
	mov     r1, #0x32
	mov     r0, #0x16
	lsl     r1, r1, #6
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x22
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r0, [pc, #0x1ec] @ 0x222cef0, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x1d8] @ 0x222cee4, (=0x34d8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222cd12

.thumb
branch_222cd12: @ 222cd12 :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222cd20

.thumb
branch_222cd20: @ 222cd20 :thumb
	bl      Function_22332f4
	cmp     r0, #0x0
	beq     branch_222cd4e
	mov     r0, #0x47
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r0, [pc, #0x1b0] @ 0x222ceec, (=0x3170)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cac
	mov     r0, r4
	bl      Function_222c578
	mov     r0, #0xb
	str     r0, [r4, r5]
.thumb
branch_222cd4e: @ 222cd4e :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222cd5c

.thumb
branch_222cd5c: @ 222cd5c :thumb
	ldr     r0, [pc, #0x198] @ 0x222cef8, (=0x223e53c)
	mov     r1, #0x2a
	mov     r2, #0x1
	bl      Function_22332c8
	mov     r0, #0xc
	str     r0, [r4, r5]
	mov     r1, #0x32
	mov     r0, #0x16
	lsl     r1, r1, #6
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222cd76

.thumb
branch_222cd76: @ 222cd76 :thumb
	bl      Function_2233320
	cmp     r0, #0x0
	beq     branch_222cd9c
	mov     r0, #0xd
	str     r0, [r4, r5]
	mov     r0, #0x16
	mov     r1, #0x3c
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0x47
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
.thumb
branch_222cd9c: @ 222cd9c :thumb
	mov     r0, r4
	add     r1, r4, r5
	mov     r2, #0x1
	mov     r3, #0x2
	bl      Function_222cab4
	b       branch_222d036
@ 0x222cdaa

.thumb
branch_222cdaa: @ 222cdaa :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222ce1c
	mov     r0, #0x48
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	mov     r0, r4
	add     r0, #0x28
	mov     r1, #0xa
	bl      0x200e7fc
	ldr     r1, [pc, #0x10c] @ 0x222cee4, (=0x34d8)
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_222c974
	ldr     r0, [r4, #0x8]
	bl      Function_223846c
	mov     r0, #0xe
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cdec

.thumb
branch_222cdec: @ 222cdec :thumb
	bl      Function_223847c
	cmp     r0, #0x1
	bne     branch_222ce1c
	mov     r0, #0xf
	str     r0, [r4, r5]
	blx 0x20c3920
	mov     r1, #0x36
	blx 0x20e1f6c
	mov     r0, #0x16
	.hword  0x1d89 @ add r1, r1, #0x6
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222ce0c

.thumb
branch_222ce0c: @ 222ce0c :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222ce1e
.thumb
branch_222ce1c: @ 222ce1c :thumb
	b       branch_222d036
@ 0x222ce1e

.thumb
branch_222ce1e: @ 222ce1e :thumb
	mov     r0, #0x10
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222ce24

.thumb
branch_222ce24: @ 222ce24 :thumb
	ldr     r0, [pc, #0xd0] @ 0x222cef8, (=0x223e53c)
	mov     r1, #0x2a
	mov     r2, #0x2
	bl      Function_22332c8
	mov     r0, #0x11
	str     r0, [r4, r5]
	mov     r1, #0x4b
	mov     r0, #0x16
	lsl     r1, r1, #4
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222ce3e

.thumb
branch_222ce3e: @ 222ce3e :thumb
	bl      Function_223334c
	cmp     r0, #0x0
	beq     branch_222ce5a
	bl      Function_22384f4
	mov     r0, #0x12
	str     r0, [r4, r5]
	mov     r1, #0x32
	mov     r0, #0x16
	lsl     r1, r1, #4
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222ce5a

.thumb
branch_222ce5a: @ 222ce5a :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222ce7a
	bl      Function_22333bc
	mov     r0, #0x17
	mov     r1, #0x78
	str     r0, [r4, r5]
	mov     r0, r1
	add     r0, #0xe8
	str     r1, [r4, r0]
.thumb
branch_222ce7a: @ 222ce7a :thumb
	bl      Function_2233388
	cmp     r0, #0x0
	bne     branch_222cf2c
	bl      Function_22333bc
	mov     r0, #0x16
	mov     r1, #0x78
	str     r0, [r4, r5]
	mov     r0, r1
	add     r0, #0xe8
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222ce94

.thumb
branch_222ce94: @ 222ce94 :thumb
	bl      Function_2238528
	cmp     r0, #0x3
	bne     branch_222ceae
	bl      Function_22333bc
	mov     r0, #0x16
	mov     r1, #0x78
	str     r0, [r4, r5]
	mov     r0, r1
	add     r0, #0xe8
	str     r1, [r4, r0]
	b       branch_222cefc
@ 0x222ceae

.thumb
branch_222ceae: @ 222ceae :thumb
	bl      Function_2238528
	cmp     r0, #0x2
	beq     branch_222cebc
	bl      Function_223847c
	b       branch_222cefc
@ 0x222cebc

.thumb
branch_222cebc: @ 222cebc :thumb
	bl      Function_2233320
	cmp     r0, #0x0
	bne     branch_222cecc
	bl      Function_2233388
	cmp     r0, #0x0
	bne     branch_222cefc
.thumb
branch_222cecc: @ 222cecc :thumb
	mov     r0, #0x13
	str     r0, [r4, r5]
	mov     r0, #0x16
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	bl      Function_22333bc
	b       branch_222d036
@ 0x222cede


.align 2


.word 0x223e0a4 @ 0x222cee0
.word 0x34d8 @ 0x222cee4
.word 0x708 @ 0x222cee8
.word 0x3170 @ 0x222ceec
.word 0x5dc @ 0x222cef0
.word 0x21bf67c @ 0x222cef4
.word 0x223e53c @ 0x222cef8
.thumb
branch_222cefc: @ 222cefc :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222cf1c
	bl      Function_22333bc
	mov     r0, #0x17
	str     r0, [r4, r5]
	mov     r0, #0x16
	mov     r1, #0xa
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_222cf1c: @ 222cf1c :thumb
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222cf2e
.thumb
branch_222cf2c: @ 222cf2c :thumb
	b       branch_222d036
@ 0x222cf2e

.thumb
branch_222cf2e: @ 222cf2e :thumb
	mov     r0, #0x14
	str     r0, [r4, r5]
	mov     r0, #0x49
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r0, [pc, #0xf4] @ 0x222d03c, (=0x3170)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0xf0] @ 0x222d040, (=0x34d8)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	ldr     r0, [pc, #0xec] @ 0x222d044, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0xe0] @ 0x222d040, (=0x34d8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	b       branch_222d036
@ 0x222cf64

.thumb
branch_222cf64: @ 222cf64 :thumb
	bl      Function_22333fc
	cmp     r0, #0x0
	beq     branch_222d036
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222cf86
	bl      0x20334cc
	bl      0x2039794
	mov     r0, #0x52
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222cf86: @ 222cf86 :thumb
	ldr     r0, [pc, #0xc0] @ 0x222d048, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_222d036
	mov     r0, #0x1b
	str     r0, [r4, r5]
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x222cf98

.thumb
branch_222cf98: @ 222cf98 :thumb
	mov     r0, #0x17
	str     r0, [r4, r5]
.thumb
branch_222cf9c: @ 222cf9c :thumb
	mov     r0, #0x4a
	str     r0, [sp, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x48
	mov     r2, #0x2
	mov     r3, #0x13
	bl      Function_223795c
	ldr     r0, [pc, #0x8c] @ 0x222d03c, (=0x3170)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x84] @ 0x222d040, (=0x34d8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222cfc4
	bl      0x200eba0
.thumb
branch_222cfc4: @ 222cfc4 :thumb
	ldr     r0, [pc, #0x78] @ 0x222d040, (=0x34d8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1c
	str     r0, [r4, r5]
	b       branch_222d036
@ 0x222cfd0

.thumb
branch_222cfd0: @ 222cfd0 :thumb
	bl      Function_22333fc
	cmp     r0, #0x0
	beq     branch_222d036
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222cff2
	bl      0x20334cc
	bl      0x2039794
	mov     r0, #0x52
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_222cff2: @ 222cff2 :thumb
	ldr     r0, [pc, #0x54] @ 0x222d048, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_222d036
	mov     r0, #0x0
	blx 0x20c3ee4
	b       branch_222d036
@ 0x222d004

.thumb
branch_222d004: @ 222d004 :thumb
	bl      Function_22333fc
	cmp     r0, #0x0
	beq     branch_222d036
	mov     r0, #0x52
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d036
	bl      0x20334cc
	bl      0x2039794
	mov     r0, #0x52
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x222d040, (=0x34d8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222d032
	bl      0x200eba0
.thumb
branch_222d032: @ 222d032 :thumb
	mov     r0, #0x5
	pop     {r3-r5,pc}
@ 0x222d036

.thumb
branch_222d036: @ 222d036 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x222d03a


.align 2


.word 0x3170 @ 0x222d03c
.word 0x34d8 @ 0x222d040
.word 0x5dc @ 0x222d044
.word 0x21bf67c @ 0x222d048
.thumb
Function_222d04c: @ 222d04c :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x4c] @ 0x222d09c, (=0x223f1a4)
	mov     r4, r0
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_222d098
	bl      Function_222d2f8
	mov     r1, #0xf5
	mov     r0, #0xf
	lsl     r1, r1, #2
	bl      0x2018144
	ldr     r1, [pc, #0x34] @ 0x222d09c, (=0x223f1a4)
	mov     r2, #0xf5
	str     r0, [r1, #0x0]
	mov     r1, #0x0
	lsl     r2, r2, #2
	blx 0x20c4cf4
	ldr     r0, [pc, #0x24] @ 0x222d09c, (=0x223f1a4)
	mov     r1, #0x32
	ldr     r0, [r0, #0x0]
	mov     r2, #0xa
	strh    r1, [r0, #0x24]
	ldr     r0, [pc, #0x20] @ 0x222d0a0, (=0x222d19d)
	mov     r1, #0x0
	bl      0x200d9e8
	ldr     r1, [pc, #0x14] @ 0x222d09c, (=0x223f1a4)
	ldr     r2, [r1, #0x0]
	str     r0, [r2, #0x1c]
	ldr     r0, [r1, #0x0]
	str     r4, [r0, #0x0]
	ldr     r0, [r1, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	bl      0x20361bc
.thumb
branch_222d098: @ 222d098 :thumb
	pop     {r4,pc}
@ 0x222d09a


.align 2


.word 0x223f1a4 @ 0x222d09c
.word 0x222d19d @ 0x222d0a0
.thumb
Function_222d0a4: @ 222d0a4 :thumb
	ldr     r2, [pc, #0x8] @ 0x222d0b0, (=0x223f1a4)
	ldr     r3, [r2, #0x0]
	str     r0, [r3, #0x20]
	ldr     r0, [r2, #0x0]
	strh    r1, [r0, #0x24]
	bx      lr
@ 0x222d0b0

.word 0x223f1a4 @ 0x222d0b0
.thumb
Function_222d0b4: @ 222d0b4 :thumb
	push    {r4,lr}
	bl      0x203608c
	bl      0x2035d78
	cmp     r0, #0x0
	beq     branch_222d0e2
	mov     r4, #0x0
	ldr     r1, [pc, #0x1c] @ 0x222d0e4, (=0x223f1a4)
	ldr     r0, [pc, #0x20] @ 0x222d0e8, (=0x3c1)
	mov     r3, r4
.thumb
branch_222d0ca: @ 222d0ca :thumb
	ldr     r2, [r1, #0x0]
	add     r2, r2, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r3, [r2, r0]
	cmp     r4, #0x10
	blt     branch_222d0ca
	bl      0x2032ac0
	ldr     r0, [pc, #0x10] @ 0x222d0ec, (=0x222d0f1)
	mov     r1, #0x0
	bl      Function_222d0a4
.thumb
branch_222d0e2: @ 222d0e2 :thumb
	pop     {r4,pc}
@ 0x222d0e4

.word 0x223f1a4 @ 0x222d0e4
.word 0x3c1 @ 0x222d0e8
.word 0x222d0f1 @ 0x222d0ec
.thumb
Function_222d0f0: @ 222d0f0 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	ldr     r6, [pc, #0x2c] @ 0x222d124, (=0x223f1a4)
	mov     r5, r4
.thumb
branch_222d0f8: @ 222d0f8 :thumb
	ldr     r0, [r6, #0x0]
	add     r0, r0, r5
	ldr     r0, [r0, #0x28]
	cmp     r0, #0x0
	bne     branch_222d11a
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      0x2035d78
	cmp     r0, #0x1
	bne     branch_222d11a
	mov     r0, r4
	bl      0x2032ee8
	ldr     r1, [r6, #0x0]
	add     r1, r1, r5
	str     r0, [r1, #0x28]
.thumb
branch_222d11a: @ 222d11a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x10
	blt     branch_222d0f8
	pop     {r4-r6,pc}
@ 0x222d124

.word 0x223f1a4 @ 0x222d124
.thumb
Function_222d128: @ 222d128 :thumb
	push    {r3,lr}
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_222d13a
	ldr     r0, [pc, #0x8] @ 0x222d13c, (=0x222d141)
	mov     r1, #0x0
	bl      Function_222d0a4
.thumb
branch_222d13a: @ 222d13a :thumb
	pop     {r3,pc}
@ 0x222d13c

.word Function_222d140+1 @ =0x222d141, 0x222d13c
.thumb
Function_222d140: @ 222d140 :thumb
	bx      lr
@ 0x222d142


.align 2, 0


.thumb
Function_222d144: @ 222d144 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x222d15c, (=0x223f1a4)
	ldr     r0, [r0, #0x0]
	add     r0, #0x27
	ldrb    r0, [r0, #0x0]
	bl      0x2036948
	ldr     r0, [pc, #0xc] @ 0x222d160, (=0x222d165)
	mov     r1, #0x0
	bl      Function_222d0a4
	pop     {r3,pc}
@ 0x222d15c

.word 0x223f1a4 @ 0x222d15c
.word 0x222d165 @ 0x222d160
.thumb
Function_222d164: @ 222d164 :thumb
	push    {r3,lr}
	bl      0x203699c
	cmp     r0, #0x0
	beq     branch_222d18c
	ldr     r0, [pc, #0x20] @ 0x222d190, (=0x223f1a4)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf
	lsl     r0, r0, #6
	strb    r2, [r1, r0]
	bl      0x2032ac0
	mov     r0, #0xab
	bl      0x20364f0
	ldr     r0, [pc, #0xc] @ 0x222d194, (=0x222d199)
	mov     r1, #0x0
	bl      Function_222d0a4
.thumb
branch_222d18c: @ 222d18c :thumb
	pop     {r3,pc}
@ 0x222d18e


.align 2


.word 0x223f1a4 @ 0x222d190
.word Function_222d198+1 @ =0x222d199, 0x222d194
.thumb
Function_222d198: @ 222d198 :thumb
	bx      lr
@ 0x222d19a


.align 2, 0


.thumb
Function_222d19c: @ 222d19c :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x20] @ 0x222d1c0, (=0x223f1a4)
	ldr     r2, [r1, #0x0]
	cmp     r2, #0x0
	bne     branch_222d1ac
	bl      0x200da58
	pop     {r3,pc}
@ 0x222d1ac

.thumb
branch_222d1ac: @ 222d1ac :thumb
	ldr     r1, [r2, #0x20]
	cmp     r1, #0x0
	beq     branch_222d1bc
	add     r2, #0x26
	ldrb    r0, [r2, #0x0]
	cmp     r0, #0x0
	bne     branch_222d1bc
	blx     r1
.thumb
branch_222d1bc: @ 222d1bc :thumb
	pop     {r3,pc}
@ 0x222d1be


.align 2


.word 0x223f1a4 @ 0x222d1c0
.thumb
Function_222d1c4: @ 222d1c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      0x2035e38
	cmp     r0, #0x0
	bne     branch_222d1ea
	mov     r0, r4
	mov     r1, r6
	bl      0x2036be8
	mov     r0, r5
	bl      Function_222d04c
	ldr     r0, [pc, #0x8] @ 0x222d1ec, (=0x222d0b5)
	mov     r1, #0x0
	bl      Function_222d0a4
.thumb
branch_222d1ea: @ 222d1ea :thumb
	pop     {r4-r6,pc}
@ 0x222d1ec

.word 0x222d0b5 @ 0x222d1ec
.thumb
Function_222d1f0: @ 222d1f0 :thumb
	mov     r3, r0
	mov     r2, r1
	mov     r1, r3
	ldr     r3, [pc, #0x4] @ 0x222d1fc, (=0x2035a3d)
	mov     r0, #0x16
	bx      r3
@ 0x222d1fc

.word 0x2035a3d @ 0x222d1fc
.thumb
Function_222d200: @ 222d200 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x2035e38
	cmp     r0, #0x0
	bne     branch_222d22c
	bl      Function_22301a4
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	mov     r1, r4
	bl      0x2036c1c
	mov     r0, r5
	bl      Function_222d04c
	ldr     r0, [pc, #0x8] @ 0x222d230, (=0x222d129)
	mov     r1, #0x0
	bl      Function_222d0a4
.thumb
branch_222d22c: @ 222d22c :thumb
	pop     {r3-r5,pc}
@ 0x222d22e


.align 2


.word 0x222d129 @ 0x222d230
.thumb
Function_222d234: @ 222d234 :thumb
	ldr     r1, [pc, #0xc] @ 0x222d244, (=0x223f1a4)
	ldr     r3, [pc, #0x10] @ 0x222d248, (=0x222d0a5)
	ldr     r1, [r1, #0x0]
	add     r1, #0x27
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0xc] @ 0x222d24c, (=0x222d145)
	mov     r1, #0x0
	bx      r3
@ 0x222d244

.word 0x223f1a4 @ 0x222d244
.word Function_222d0a4+1 @ =0x222d0a5, 0x222d248
.word 0x222d145 @ 0x222d24c
.thumb
Function_222d250: @ 222d250 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_222d256: @ 222d256 :thumb
	mov     r0, r4
	bl      0x2034168
	mov     r1, r0
	beq     branch_222d276
	add     r0, #0x4c
	ldrh    r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222d276
	add     r5, #0x8c
	mov     r0, r5
	mov     r2, #0x50
	blx 0x20d50b8
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x222d276

.thumb
branch_222d276: @ 222d276 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x10
	blt     branch_222d256
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r3-r5,pc}
@ 0x222d282


.align 2, 0


.thumb
Function_222d284: @ 222d284 :thumb
	ldr     r1, [pc, #0x14] @ 0x222d29c, (=0x223f1a4)
	ldr     r2, [r1, #0x0]
	mov     r1, r2
	add     r1, #0x27
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	bne     branch_222d29a
	mov     r0, #0xf
	mov     r1, #0x1
	lsl     r0, r0, #6
	strb    r1, [r2, r0]
.thumb
branch_222d29a: @ 222d29a :thumb
	bx      lr
@ 0x222d29c

.word 0x223f1a4 @ 0x222d29c
.thumb
Function_222d2a0: @ 222d2a0 :thumb
	ldr     r0, [pc, #0x8] @ 0x222d2ac, (=0x223f1a4)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf
	lsl     r0, r0, #6
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x222d2ac

.word 0x223f1a4 @ 0x222d2ac
.thumb
Function_222d2b0: @ 222d2b0 :thumb
	mov     r0, #0xd6
	lsl     r0, r0, #2
	bx      lr
@ 0x222d2b6


.align 2, 0


.thumb
Function_222d2b8: @ 222d2b8 :thumb
	ldr     r0, [pc, #0x4] @ 0x222d2c0, (=0x223f1a4)
	ldr     r0, [r0, #0x0]
	add     r0, #0x68
	bx      lr
@ 0x222d2c0

.word 0x223f1a4 @ 0x222d2c0
.thumb
Function_222d2c4: @ 222d2c4 :thumb
	ldr     r1, [pc, #0xc] @ 0x222d2d4, (=0x223f1a4)
	mov     r2, #0x1
	ldr     r1, [r1, #0x0]
	add     r1, r1, r0
	ldr     r0, [pc, #0x8] @ 0x222d2d8, (=0x3c1)
	strb    r2, [r1, r0]
	bx      lr
@ 0x222d2d2


.align 2


.word 0x223f1a4 @ 0x222d2d4
.word 0x3c1 @ 0x222d2d8
.thumb
Function_222d2dc: @ 222d2dc :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x14] @ 0x222d2f4, (=0x223f1a4)
	mov     r0, #0xf
	ldr     r1, [r1, #0x0]
	bl      0x2018238
	ldr     r0, [pc, #0x8] @ 0x222d2f4, (=0x223f1a4)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bl      0x2036978
	pop     {r3,pc}
@ 0x222d2f4

.word 0x223f1a4 @ 0x222d2f4
.thumb
Function_222d2f8: @ 222d2f8 :thumb
	ldr     r3, [pc, #0x8] @ 0x222d304, (=0x2032799)
	mov     r2, r0
	ldr     r0, [pc, #0x8] @ 0x222d308, (=0x223d704)
	mov     r1, #0x2
	bx      r3
@ 0x222d302


.align 2


.word 0x2032799 @ 0x222d304
.word 0x223d704 @ 0x222d308
.thumb
Function_222d30c: @ 222d30c :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r1, #0x1
	ldr     r0, [pc, #0x2c] @ 0x222d340, (=0x29f0)
	bne     branch_222d32c
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222d33c
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x1
	bl      0x200e7fc
	ldr     r1, [pc, #0x18] @ 0x222d340, (=0x29f0)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x222d32c

.thumb
branch_222d32c: @ 222d32c :thumb
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222d336
	bl      0x200eba0
.thumb
branch_222d336: @ 222d336 :thumb
	ldr     r0, [pc, #0x8] @ 0x222d340, (=0x29f0)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_222d33c: @ 222d33c :thumb
	pop     {r4,pc}
@ 0x222d33e


.align 2


.word 0x29f0 @ 0x222d340
.thumb
Function_222d344: @ 222d344 :thumb
	ldr     r3, [pc, #0x0] @ 0x222d348, (=0x222d30d)
	bx      r3
@ 0x222d348

.word Function_222d30c+1 @ =0x222d30d, 0x222d348
.thumb
Function_222d34c: @ 222d34c :thumb
	push    {r3-r7,lr}
	bl      0x200682c
	mov     r7, r0
	bl      Function_2237da0
	ldr     r0, [r7, #0x7c]
	cmp     r0, #0x0
	beq     branch_222d362
	bl      0x2013a3c
.thumb
branch_222d362: @ 222d362 :thumb
	ldr     r0, [r7, #0x78]
	cmp     r0, #0x0
	beq     branch_222d370
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2001384
.thumb
branch_222d370: @ 222d370 :thumb
	mov     r0, r7
	add     r0, #0x18
	bl      0x201acf4
	mov     r0, r7
	add     r0, #0x18
	bl      0x201a8fc
	mov     r0, r7
	add     r0, #0x58
	bl      0x201a7cc
	cmp     r0, #0x0
	beq     branch_222d39c
	mov     r0, r7
	add     r0, #0x58
	bl      0x201acf4
	mov     r0, r7
	add     r0, #0x58
	bl      0x201a8fc
.thumb
branch_222d39c: @ 222d39c :thumb
	mov     r5, r7
	mov     r6, #0x0
	mov     r4, r7
	add     r5, #0x28
.thumb
branch_222d3a4: @ 222d3a4 :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_222d3b6
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      0x201a8fc
.thumb
branch_222d3b6: @ 222d3b6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, #0x3
	blt     branch_222d3a4
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r7, #0x0]
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x222d3e8

.thumb
Function_222d3e8: @ 222d3e8 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	bl      Function_2237a20
	bl      Function_2237a74
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0xa
	mov     r2, #0x7
	mov     r3, #0x9
	bl      Function_2237b0c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x222d40c

.thumb
Function_222d40c: @ 222d40c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_222d432
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x222d440, (=0x5c4)
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mov     r2, #0x80
	mov     r3, #0x64
	bl      Function_2237d14
	ldr     r1, [pc, #0x14] @ 0x222d440, (=0x5c4)
	add     sp, #0x4
	str     r0, [r4, r1]
	pop     {r3,r4,pc}
@ 0x222d432

.thumb
branch_222d432: @ 222d432 :thumb
	ldr     r0, [pc, #0xc] @ 0x222d440, (=0x5c4)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x222d440

.word 0x5c4 @ 0x222d440
.thumb
Function_222d444: @ 222d444 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_222d45a
	mov     r0, r5
	mov     r1, r4
	bl      0x200dc9c
.thumb
branch_222d45a: @ 222d45a :thumb
	pop     {r3-r5,pc}
@ 0x222d45c

.thumb
Function_222d45c: @ 222d45c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_222d472
	mov     r0, r5
	mov     r1, r4
	bl      0x200e084
.thumb
branch_222d472: @ 222d472 :thumb
	pop     {r3-r5,pc}
@ 0x222d474

.thumb
Function_222d474: @ 222d474 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x222d4cc, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x2
	beq     branch_222d492
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_222de78
.thumb
branch_222d492: @ 222d492 :thumb
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	ldr     r0, [pc, #0x2c] @ 0x222d4cc, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x2
	beq     branch_222d4c2
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_222d200
	ldr     r1, [pc, #0x20] @ 0x222d4d0, (=0x1c20)
	ldr     r0, [pc, #0x24] @ 0x222d4d4, (=0x434)
	str     r1, [r4, r0]
	bl      0x2039734
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	mov     r0, #0x7
	pop     {r3-r5,pc}
@ 0x222d4c2

.thumb
branch_222d4c2: @ 222d4c2 :thumb
	mov     r0, #0x13
	add     r4, #0x84
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x222d4ca


.align 2


.word 0x15d4 @ 0x222d4cc
.word 0x1c20 @ 0x222d4d0
.word 0x434 @ 0x222d4d4
.thumb
Function_222d4d8: @ 222d4d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0x80
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x1
	bne     branch_222d4ee
	mov     r0, #0x31
	pop     {r3-r5,pc}
@ 0x222d4ee

.thumb
branch_222d4ee: @ 222d4ee :thumb
	.hword  0x1e88 @ sub r0, r1, #0x2
	cmp     r0, #0x2
	bhi     branch_222d4f8
	mov     r0, #0x31
	pop     {r3-r5,pc}
@ 0x222d4f8

.thumb
branch_222d4f8: @ 222d4f8 :thumb
	cmp     r1, #0x5
	bne     branch_222d500
	mov     r0, #0x31
	pop     {r3-r5,pc}
@ 0x222d500

.thumb
branch_222d500: @ 222d500 :thumb
	ldr     r0, [pc, #0x50] @ 0x222d554, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d510
	ldr     r0, [pc, #0x4c] @ 0x222d558, (=0x438)
	ldr     r0, [r4, r0]
	bl      Function_222d234
.thumb
branch_222d510: @ 222d510 :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x6
	bl      Function_222de78
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	ldr     r0, [pc, #0x2c] @ 0x222d554, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d53e
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d40c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
.thumb
branch_222d53e: @ 222d53e :thumb
	ldr     r0, [pc, #0x14] @ 0x222d554, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d550
	mov     r0, #0xab
	bl      0x20364f0
	mov     r0, #0x9
	pop     {r3-r5,pc}
@ 0x222d550

.thumb
branch_222d550: @ 222d550 :thumb
	mov     r0, #0x15
	pop     {r3-r5,pc}
@ 0x222d554

.word 0x15d4 @ 0x222d554
.word 0x438 @ 0x222d558
.thumb
Function_222d55c: @ 222d55c :thumb
	push    {r3-r7,lr}
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x222d5c0, (=0x15d4)
	mov     r5, r4
	mov     r6, r4
	ldr     r0, [r4, r0]
	add     r5, #0xdc
	add     r6, #0x8c
	cmp     r0, #0x1
	beq     branch_222d57a
	cmp     r0, #0x3
	beq     branch_222d5a0
	b       branch_222d5ba
@ 0x222d57a

.thumb
branch_222d57a: @ 222d57a :thumb
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	bl      Function_222d2b8
	mov     r2, #0xd6
	mov     r1, r0
	mov     r0, r5
	lsl     r2, r2, #2
	blx 0x20d50b8
	mov     r0, r4
	add     r4, #0xdc
	add     r0, #0x8c
	mov     r1, r4
	mov     r2, #0x56
	bl      Function_2238324
	b       branch_222d5ba
@ 0x222d5a0

.thumb
branch_222d5a0: @ 222d5a0 :thumb
	ldr     r7, [pc, #0x20] @ 0x222d5c4, (=0x5d4)
	mov     r2, #0xd6
	add     r1, r4, r7
	mov     r0, r5
	add     r1, #0x50
	lsl     r2, r2, #2
	blx 0x20d50b8
	mov     r0, r6
	add     r1, r4, r7
	mov     r2, #0x50
	blx 0x20d50b8
.thumb
branch_222d5ba: @ 222d5ba :thumb
	mov     r0, r5
	pop     {r3-r7,pc}
@ 0x222d5be


.align 2


.word 0x15d4 @ 0x222d5c0
.word 0x5d4 @ 0x222d5c4
.thumb
Function_222d5c8: @ 222d5c8 :thumb
	push    {r3,lr}
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x3
	bgt     branch_222d5e0
	cmp     r1, #0x1
	blt     branch_222d610
	beq     branch_222d5f2
	cmp     r1, #0x2
	beq     branch_222d5f2
	cmp     r1, #0x3
	beq     branch_222d5e8
	b       branch_222d610
@ 0x222d5e0

.thumb
branch_222d5e0: @ 222d5e0 :thumb
	cmp     r1, #0xd
	bne     branch_222d610
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222d5e8

.thumb
branch_222d5e8: @ 222d5e8 :thumb
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x1
	bne     branch_222d610
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222d5f2

.thumb
branch_222d5f2: @ 222d5f2 :thumb
	add     r0, #0x8
	mov     r1, #0x98
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x3
	blt     branch_222d604
	cmp     r0, #0xe
	ble     branch_222d60c
.thumb
branch_222d604: @ 222d604 :thumb
	cmp     r0, #0x40
	blt     branch_222d610
	cmp     r0, #0x47
	bgt     branch_222d610
.thumb
branch_222d60c: @ 222d60c :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x222d610

.thumb
branch_222d610: @ 222d610 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x222d614

.thumb
Function_222d614: @ 222d614 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x222d64c, (=0x29ec)
	ldr     r1, [r4, r0]
	cmp     r1, #0x1
	bne     branch_222d626
	mov     r1, #0x0
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_222d626: @ 222d626 :thumb
	bl      Function_223847c
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_222d648
	mov     r0, r4
	add     r0, #0xdc
	bl      Function_222d5c8
	cmp     r0, #0x1
	beq     branch_222d642
	ldr     r0, [pc, #0x10] @ 0x222d650, (=0x61b)
	bl      0x2005748
.thumb
branch_222d642: @ 222d642 :thumb
	ldr     r0, [pc, #0x10] @ 0x222d654, (=0x29e8)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_222d648: @ 222d648 :thumb
	pop     {r4,pc}
@ 0x222d64a


.align 2


.word 0x29ec @ 0x222d64c
.word 0x61b @ 0x222d650
.word 0x29e8 @ 0x222d654
.thumb
Function_222d658: @ 222d658 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r0
	bl      0x200682c
	mov     r4, r0
	mov     r5, r0
	str     r0, [sp, #0x0]
	add     r4, #0x8c
	mov     r0, r6
	add     r5, #0xdc
	bl      0x2006840
	ldr     r7, [r0, #0x8]
	mov     r0, r4
	add     r0, #0x4e
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	bne     branch_222d684
	mov     r6, #0x0
	b       branch_222d6b0
@ 0x222d684

.thumb
branch_222d684: @ 222d684 :thumb
	mov     r1, #0x35
	mov     r2, r4
	mov     r0, #0x0
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	add     r2, #0x4e
	ldrb    r2, [r2, #0x0]
	mov     r6, #0x1
	lsl     r2, r2, #27
	lsr     r2, r2, #31
	bne     branch_222d69e
	sub     r1, #0x8
	strb    r0, [r5, r1]
.thumb
branch_222d69e: @ 222d69e :thumb
	add     r0, sp, #0x8
	bl      0x20138a4
	add     r0, sp, #0x8
	blx 0x20cc16c
	mov     r1, #0xd5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_222d6b0: @ 222d6b0 :thumb
	mov     r0, r7
	bl      0x202442c
	add     r4, #0x4c
	ldrh    r1, [r4, #0x0]
	str     r0, [sp, #0x4]
	bl      0x202de5c
	cmp     r6, #0x0
	bne     branch_222d6d0
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	mov     r2, #0x3
	bl      0x202db2c
	b       branch_222d6d8
@ 0x222d6d0

.thumb
branch_222d6d0: @ 222d6d0 :thumb
	ldr     r0, [sp, #0x4]
	mov     r1, r5
	bl      0x202dbac
.thumb
branch_222d6d8: @ 222d6d8 :thumb
	mov     r0, r7
	bl      Function_223846c
	ldr     r1, [pc, #0x10] @ 0x222d6f0, (=0x29ec)
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [r0, r1]
	ldr     r2, [pc, #0xc] @ 0x222d6f4, (=0x222d615)
	.hword  0x1f09 @ sub r1, r1, #0x4
	str     r2, [r0, r1]
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x222d6f0

.word 0x29ec @ 0x222d6f0
.word 0x222d615 @ 0x222d6f4
.thumb
Function_222d6f8: @ 222d6f8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r4, r1
	bl      0x200682c
	cmp     r4, #0x0
	bne     branch_222d70c
	mov     r5, #0x4
	b       branch_222d710
@ 0x222d70c

.thumb
branch_222d70c: @ 222d70c :thumb
	mov     r5, #0x0
	mvn     r5, r5
.thumb
branch_222d710: @ 222d710 :thumb
	ldr     r1, [r0, #0x48]
	mov     r4, r0
	add     r4, #0x48
	cmp     r1, #0x0
	bne     branch_222d73a
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r2, #0x0
	mov     r1, #0x6b
	str     r2, [sp, #0xc]
	lsl     r1, r1, #2
	str     r1, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r3, #0x17
	bl      0x201a7e8
.thumb
branch_222d73a: @ 222d73a :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	ldr     r1, [pc, #0x10] @ 0x222d758, (=0x223e5a8)
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, r4
	str     r5, [sp, #0x0]
	bl      Function_222dd1c
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222d758

.word 0x223e5a8 @ 0x222d758
.thumb
Function_222d75c: @ 222d75c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	ldr     r0, [pc, #0x18] @ 0x222d794, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d788
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
.thumb
branch_222d788: @ 222d788 :thumb
	bl      0x2039794
	mov     r0, r5
	bl      Function_222da84
	pop     {r3-r5,pc}
@ 0x222d794

.word 0x15d4 @ 0x222d794
.thumb
Function_222d798: @ 222d798 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	bl      0x200682c
	mov     r5, r0
	bl      Function_2237624
	cmp     r0, #0x0
	beq     branch_222d7b0
	mov     r1, #0x2
	b       branch_222d7b2
@ 0x222d7b0

.thumb
branch_222d7b0: @ 222d7b0 :thumb
	mov     r1, #0x1
.thumb
branch_222d7b2: @ 222d7b2 :thumb
	ldr     r0, [pc, #0x58] @ 0x222d80c, (=0x15d4)
	str     r1, [r5, r0]
	mov     r0, r5
	add     r0, #0x38
	mov     r1, #0x0
	bl      Function_222d444
	mov     r4, r5
	ldr     r0, [r5, #0x48]
	add     r4, #0x48
	cmp     r0, #0x0
	bne     branch_222d7ea
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x6b
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r3, #0x17
	bl      0x201a7e8
.thumb
branch_222d7ea: @ 222d7ea :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r2, #0x2
	ldr     r1, [pc, #0x14] @ 0x222d810, (=0x223e598)
	mov     r0, r6
	mov     r3, r4
	str     r2, [sp, #0x0]
	bl      Function_222dd1c
	mov     r0, #0x5
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222d80a


.align 2


.word 0x15d4 @ 0x222d80c
.word 0x223e598 @ 0x222d810
.thumb
Function_222d814: @ 222d814 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x222d87c, (=0x15d4)
	mov     r1, #0x4
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x0
	bl      Function_222d444
	mov     r5, r4
	ldr     r0, [r4, #0x48]
	add     r5, #0x48
	cmp     r0, #0x0
	bne     branch_222d85a
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x6b
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r3, #0x17
	bl      0x201a7e8
.thumb
branch_222d85a: @ 222d85a :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, #0x4e
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x222d880, (=0x223e568)
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, r5
	bl      Function_222dd1c
	mov     r0, #0x5
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222d87c

.word 0x15d4 @ 0x222d87c
.word 0x223e568 @ 0x222d880
.thumb
Function_222d884: @ 222d884 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x222d8ec, (=0x15d4)
	mov     r1, #0x3
	str     r1, [r4, r0]
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x0
	bl      Function_222d444
	mov     r5, r4
	ldr     r0, [r4, #0x48]
	add     r5, #0x48
	cmp     r0, #0x0
	bne     branch_222d8ca
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x6b
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	mov     r3, #0x17
	bl      0x201a7e8
.thumb
branch_222d8ca: @ 222d8ca :thumb
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, #0x4d
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x222d8f0, (=0x223e578)
	mov     r0, r6
	mov     r2, #0x2
	mov     r3, r5
	bl      Function_222dd1c
	mov     r0, #0x5
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222d8ec

.word 0x15d4 @ 0x222d8ec
.word 0x223e578 @ 0x222d8f0
.thumb
Function_222d8f4: @ 222d8f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r1, [r0, #0x48]
	add     r4, #0x48
	cmp     r1, #0x0
	bne     branch_222d928
	mov     r1, #0xa
	str     r1, [sp, #0x0]
	mov     r1, #0x6
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	str     r1, [sp, #0x8]
	mov     r2, #0x0
	mov     r1, #0x6b
	str     r2, [sp, #0xc]
	lsl     r1, r1, #2
	str     r1, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	mov     r3, #0x17
	bl      0x201a7e8
.thumb
branch_222d928: @ 222d928 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0xc] @ 0x222d948, (=0x223e588)
	mov     r0, r5
	mov     r2, #0x2
	mov     r3, r4
	bl      Function_222dd1c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x222d948

.word 0x223e588 @ 0x222d948
.thumb
Function_222d94c: @ 222d94c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	bl      0x2039794
	ldr     r0, [pc, #0x10] @ 0x222d980, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_222d978
	bl      Function_222d2dc
.thumb
branch_222d978: @ 222d978 :thumb
	mov     r0, r5
	bl      Function_222da84
	pop     {r3-r5,pc}
@ 0x222d980

.word 0x15d4 @ 0x222d980
.thumb
Function_222d984: @ 222d984 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_222de78
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	ldr     r0, [pc, #0x8] @ 0x222d9b8, (=0x223f1a8)
	mov     r1, #0x25
	str     r1, [r0, #0x0]
	mov     r0, #0x20
	pop     {r3-r5,pc}
@ 0x222d9b6


.align 2


.word 0x223f1a8 @ 0x222d9b8
.thumb
Function_222d9bc: @ 222d9bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x2
	bhi     branch_222d9d4
	mov     r0, #0x31
	pop     {r3-r5,pc}
@ 0x222d9d4

.thumb
branch_222d9d4: @ 222d9d4 :thumb
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	add     r4, #0x18
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x7
	bl      Function_222de78
	mov     r0, #0x21
	pop     {r3-r5,pc}
@ 0x222d9ee


.align 2, 0


.thumb
Function_222d9f0: @ 222d9f0 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x20] @ 0x222da14, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x28
	beq     branch_222da02
	cmp     r0, #0x29
	beq     branch_222da02
	cmp     r0, #0x30
	bne     branch_222da10
.thumb
branch_222da02: @ 222da02 :thumb
	bl      Function_22389c8
	cmp     r0, #0x0
	beq     branch_222da10
	ldr     r0, [pc, #0x8] @ 0x222da14, (=0x223f1a8)
	mov     r1, #0x2b
	str     r1, [r0, #0x0]
.thumb
branch_222da10: @ 222da10 :thumb
	mov     r0, #0x24
	pop     {r3,pc}
@ 0x222da14

.word 0x223f1a8 @ 0x222da14
.thumb
Function_222da18: @ 222da18 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x3
	bl      Function_222de78
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	mov     r1, #0x1
	ldr     r0, [pc, #0x10] @ 0x222da5c, (=0x15e0)
	lsl     r1, r1, #12
	str     r1, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x222da60, (=0x267c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1b
	pop     {r3-r5,pc}
@ 0x222da5a


.align 2


.word 0x15e0 @ 0x222da5c
.word 0x267c @ 0x222da60
.thumb
Function_222da64: @ 222da64 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200682c
	add     r0, #0x38
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	mov     r1, #0xc4
	mov     r2, #0x0
	bl      Function_222ddd0
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x222da82


.align 2, 0


.thumb
Function_222da84: @ 222da84 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r6, r0
	bl      0x200682c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	bl      0x202442c
	ldr     r0, [pc, #0x68] @ 0x222db00, (=0x5c8)
	ldr     r1, [r5, r0]
	cmp     r1, #0x1e
	bne     branch_222daaa
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, r5
	bl      Function_2230224
.thumb
branch_222daaa: @ 222daaa :thumb
	mov     r0, r5
	add     r0, #0x28
	mov     r1, #0x0
	bl      Function_222d444
	mov     r4, r5
	ldr     r0, [r5, #0x38]
	add     r4, #0x38
	cmp     r0, #0x0
	bne     branch_222dade
	mov     r0, #0x9
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x49
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	mov     r3, #0xf
	bl      0x201a7e8
.thumb
branch_222dade: @ 222dade :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x14] @ 0x222db04, (=0x223e5f0)
	mov     r0, r6
	mov     r2, #0x4
	mov     r3, r4
	bl      Function_222dd1c
	mov     r0, #0x4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x222db00

.word 0x5c8 @ 0x222db00
.word 0x223e5f0 @ 0x222db04
.thumb
Function_222db08: @ 222db08 :thumb
	push    {r4,lr}
	bl      0x200682c
	ldr     r1, [pc, #0x28] @ 0x222db38, (=0x5c8)
	mov     r4, r0
	ldr     r2, [r4, r1]
	cmp     r2, #0x1e
	bne     branch_222db22
	mov     r2, #0x1
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r2, [r4, r1]
	bl      Function_2230224
.thumb
branch_222db22: @ 222db22 :thumb
	ldr     r2, [pc, #0x18] @ 0x222db3c, (=0x15d8)
	mov     r0, #0x0
	ldr     r2, [r4, r2]
	mov     r1, #0x36
	mov     r3, #0x2
	bl      Function_2237790
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,pc}
@ 0x222db36


.align 2


.word 0x5c8 @ 0x222db38
.word 0x15d8 @ 0x222db3c
.thumb
Function_222db40: @ 222db40 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x222db70, (=0x5c8)
	ldr     r1, [r4, r0]
	cmp     r1, #0x1e
	bne     branch_222db56
	mov     r1, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_222db56: @ 222db56 :thumb
	mov     r0, #0x1
	bl      Function_2237784
	ldr     r2, [pc, #0x14] @ 0x222db74, (=0x15d8)
	mov     r0, #0x0
	ldr     r2, [r4, r2]
	mov     r1, #0x35
	mov     r3, #0x2
	bl      Function_2237790
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,pc}
@ 0x222db70

.word 0x5c8 @ 0x222db70
.word 0x15d8 @ 0x222db74
.thumb
Function_222db78: @ 222db78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r3
	ldr     r3, [pc, #0x40] @ 0x222dbc0, (=0x223d73c)
	mov     r7, r0
	mov     r4, r1
	mov     r6, r2
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r12, r2
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	lsr     r1, r6, #11
	str     r0, [r2, #0x0]
	add     r0, sp, #0x0
	strb    r1, [r0, #0x12]
	lsr     r1, r5, #14
	strb    r1, [r0, #0x13]
	lsl     r1, r4, #24
	mov     r0, r7
	lsr     r1, r1, #24
	mov     r2, r12
	mov     r3, #0x0
	bl      0x20183c4
	lsl     r1, r4, #24
	mov     r0, r7
	lsr     r1, r1, #24
	bl      0x2019ebc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x222dbc0

.word 0x223d73c @ 0x222dbc0
.thumb
Function_222dbc4: @ 222dbc4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x50] @ 0x222dc1c, (=0x223d72c)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	mov     r1, #0x0
	mov     r2, #0xf
	mov     r0, r4
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_222db78
	mov     r1, #0x1
	mov     r2, #0x3e
	mov     r0, r4
	lsl     r2, r2, #10
	lsl     r3, r1, #15
	bl      Function_222db78
	mov     r2, #0xe
	mov     r0, r4
	mov     r1, #0x4
	lsl     r2, r2, #10
	mov     r3, #0x0
	bl      Function_222db78
	mov     r2, #0x1e
	mov     r3, #0x1
	mov     r0, r4
	mov     r1, #0x5
	lsl     r2, r2, #10
	lsl     r3, r3, #14
	bl      Function_222db78
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x222dc1c

.word 0x223d72c @ 0x222dc1c
.thumb
Function_222dc20: @ 222dc20 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	mov     r2, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x0
	add     r3, #0xfc
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x56
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r2, r4
	mov     r3, #0x5
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x56
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x5
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019e2c
	mov     r0, r4
	mov     r1, #0x5
	bl      0x2019448
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222dc9a


.align 2, 0


.thumb
Function_222dc9c: @ 222dc9c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x0
	mov     r3, r0
	mov     r2, r1
	add     r3, #0x8c
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r0, #0x56
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r2, r4
	mov     r3, r1
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x56
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r1, #0x2
	mov     r2, r4
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019e2c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019448
	mov     r0, r4
	bl      Function_222dc20
	add     sp, #0x10
	pop     {r4,pc}
@ 0x222dd1a


.align 2, 0


.thumb
Function_222dd1c: @ 222dd1c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r0, [sp, #0x0]
	mov     r5, r1
	mov     r7, r2
	str     r3, [sp, #0x4]
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_222dd38
	bl      0x2013a3c
.thumb
branch_222dd38: @ 222dd38 :thumb
	mov     r0, r7
	mov     r1, #0x56
	bl      0x2013a04
	str     r0, [r4, #0x7c]
	ldr     r2, [pc, #0x84] @ 0x222ddc8, (=0x1a5)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x56
	bl      0x200b144
	mov     r6, #0x0
	str     r0, [r4, #0x10]
	cmp     r7, #0x0
	ble     branch_222dd6a
.thumb
branch_222dd56: @ 222dd56 :thumb
	ldr     r0, [r4, #0x7c]
	ldr     r1, [r4, #0x10]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x4]
	bl      0x2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x8
	cmp     r6, r7
	blt     branch_222dd56
.thumb
branch_222dd6a: @ 222dd6a :thumb
	ldr     r0, [r4, #0x10]
	bl      0x200b190
	ldr     r3, [pc, #0x58] @ 0x222ddcc, (=0x223e5d0)
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x7c]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x8
	strh    r7, [r0, #0x12]
	ldrh    r1, [r0, #0x12]
	strh    r1, [r0, #0x10]
	ldr     r0, [sp, #0x4]
	str     r0, [sp, #0x14]
	ldr     r0, [r4, #0x78]
	cmp     r0, #0x0
	beq     branch_222dda2
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2001384
.thumb
branch_222dda2: @ 222dda2 :thumb
	mov     r1, #0x0
	add     r0, sp, #0x8
	mov     r2, r1
	mov     r3, #0x56
	bl      0x200112c
	str     r0, [r4, #0x78]
	mov     r0, #0x0
	ldr     r2, [sp, #0x40]
	mvn     r0, r0
	cmp     r2, r0
	beq     branch_222ddc4
	add     r4, #0x18
	ldr     r0, [sp, #0x0]
	mov     r1, r4
	bl      Function_222de78
.thumb
branch_222ddc4: @ 222ddc4 :thumb
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x222ddc8

.word 0x1a5 @ 0x222ddc8
.word 0x223e5d0 @ 0x222ddcc
.thumb
Function_222ddd0: @ 222ddd0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r0, [sp, #0x14]
	mov     r7, r1
	str     r2, [sp, #0x1c]
	bl      0x200682c
	str     r0, [sp, #0x18]
	ldr     r0, [r0, #0x4]
	mov     r5, #0x0
	bl      0x202442c
	ldr     r1, [pc, #0x88] @ 0x222de74, (=0x223e568)
	ldr     r4, [sp, #0x18]
	ldr     r2, [r1, #0x50]
	ldr     r1, [r1, #0x54]
	add     r4, #0x28
	.hword  0x1c6d @ add r5, r5, #0x1
	str     r2, [sp, #0x20]
	str     r1, [sp, #0x24]
	bl      0x202dd88
	cmp     r0, #0x0
	beq     branch_222de14
	lsl     r6, r5, #3
	add     r0, sp, #0x20
	add     r1, r0, r6
	ldr     r0, [pc, #0x6c] @ 0x222de74, (=0x223e568)
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r3, [r0, #0x58]
	ldr     r2, [r0, #0x5c]
	add     r0, sp, #0x20
	str     r3, [r0, r6]
	str     r2, [r1, #0x4]
.thumb
branch_222de14: @ 222de14 :thumb
	lsl     r6, r5, #3
	add     r0, sp, #0x20
	add     r1, r0, r6
	ldr     r0, [pc, #0x58] @ 0x222de74, (=0x223e568)
	ldr     r3, [r0, #0x60]
	ldr     r2, [r0, #0x64]
	add     r0, sp, #0x20
	str     r3, [r0, r6]
	str     r2, [r1, #0x4]
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	bne     branch_222de52
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	add     r0, r5, #0x1
	lsl     r0, r0, #25
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	lsl     r0, r7, #16
	str     r2, [sp, #0xc]
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	ldr     r0, [r0, #0x0]
	mov     r3, #0x8
	bl      0x201a7e8
.thumb
branch_222de52: @ 222de52 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	ldr     r0, [sp, #0x1c]
	add     r1, sp, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	add     r2, r5, #0x1
	mov     r3, r4
	bl      Function_222dd1c
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x222de72


.align 2


.word 0x223e568 @ 0x222de74
.thumb
Function_222de78: @ 222de78 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r7, r2
	bl      0x200682c
	mov     r4, r0
	ldr     r2, [pc, #0x80] @ 0x222df08, (=0x1a5)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x56
	bl      0x200b144
	str     r0, [r4, #0x10]
	mov     r0, #0x56
	bl      0x200b358
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x2002df8
	mov     r1, r0
	mov     r0, r5
	bl      0x201ada4
	ldr     r6, [r4, #0x14]
	cmp     r6, #0x0
	bne     branch_222dec0
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x10]
	mov     r2, r7
	mov     r3, #0x56
	bl      0x200b29c
	mov     r6, r0
.thumb
branch_222dec0: @ 222dec0 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [r4, #0x68]
	mov     r1, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x222df0c, (=0x1020f)
	mov     r2, r6
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, r5
	bl      0x201d78c
	str     r0, [r4, #0x6c]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_222dee6
	mov     r0, r6
	bl      0x20237bc
.thumb
branch_222dee6: @ 222dee6 :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x200e060
	ldr     r0, [r4, #0x10]
	bl      0x200b190
	ldr     r0, [r4, #0xc]
	bl      0x200b3f0
	mov     r0, #0xff
	str     r0, [r4, #0x68]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222df06


.align 2


.word 0x1a5 @ 0x222df08
.word 0x1020f @ 0x222df0c
.thumb
Function_222df10: @ 222df10 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r6, r2
	bl      0x200682c
	mov     r0, #0x25
	mov     r1, #0x56
	bl      0x2023790
	mov     r1, r6
	mov     r2, #0x24
	mov     r4, r0
	bl      0x2023d8c
	mov     r0, #0x0
	mov     r1, #0x6
	bl      0x2002df8
	mov     r1, r0
	mov     r0, r5
	bl      0x201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x222df6c, (=0x1020f)
	mov     r2, r4
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200dc48
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x222df6c

.word 0x1020f @ 0x222df6c
.thumb
Function_222df70: @ 222df70 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	bl      0x200682c
	ldr     r0, [r0, #0x78]
	bl      0x2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_222df94
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_222dfca
	b       branch_222dfae
@ 0x222df94

.thumb
branch_222df94: @ 222df94 :thumb
	ldr     r0, [pc, #0x34] @ 0x222dfcc, (=0x5dc)
	bl      0x2005748
	cmp     r6, #0x0
	beq     branch_222dfca
	mov     r0, r7
	blx     r6
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_222dfca
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x222dfae

.thumb
branch_222dfae: @ 222dfae :thumb
	ldr     r0, [pc, #0x1c] @ 0x222dfcc, (=0x5dc)
	bl      0x2005748
	cmp     r4, #0x0
	beq     branch_222dfca
	ldr     r0, [pc, #0x14] @ 0x222dfd0, (=0x223f1a8)
	str     r4, [r0, #0x10]
	mov     r0, r7
	blx     r4
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_222dfca
	str     r0, [r5, #0x0]
.thumb
branch_222dfca: @ 222dfca :thumb
	pop     {r3-r7,pc}
@ 0x222dfcc

.word 0x5dc @ 0x222dfcc
.word 0x223f1a8 @ 0x222dfd0
.thumb
Function_222dfd4: @ 222dfd4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r4, r1
	bl      0x201d710
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, #0x56
	bl      0x2002e7c
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, #0x56
	bl      0x2002e7c
	ldr     r0, [r4, #0x8]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0x2
	bl      0x200dd0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	mov     r2, #0x1f
	mov     r3, #0x3
	bl      0x200daa4
	mov     r0, #0x5
	ldr     r1, [pc, #0x54] @ 0x222e07c, (=0x7d8c)
	lsl     r0, r0, #24
	strh    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0x18
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222e058
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r1, r4
	str     r2, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x18
	mov     r3, #0x2
	bl      0x201a7e8
.thumb
branch_222e058: @ 222e058 :thumb
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x0
	bl      Function_222de78
	mov     r0, r5
	mov     r1, #0xc4
	mov     r2, #0x0
	bl      Function_222ddd0
	ldr     r0, [r4, #0x0]
	bl      Function_222dc9c
	mov     r0, #0x1
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x222e07a


.align 2


.word 0x7d8c @ 0x222e07c
.thumb
Function_222e080: @ 222e080 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r1, [pc, #0x9c] @ 0x222e12c, (=0x15e0)
	mov     r0, r6
	add     r1, r4, r1
	bl      Function_2238eac
	cmp     r0, #0x4
	bhi     branch_222e128
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222e0a6

Jumppoints_222e0a6:
.hword branch_222e128 - Jumppoints_222e0a6 - 2
.hword branch_222e0b0 - Jumppoints_222e0a6 - 2
.hword branch_222e0dc - Jumppoints_222e0a6 - 2
.hword branch_222e0dc - Jumppoints_222e0a6 - 2
.hword branch_222e0f0 - Jumppoints_222e0a6 - 2
.thumb
branch_222e0b0: @ 222e0b0 :thumb
	ldr     r1, [pc, #0x7c] @ 0x222e130, (=0x1658)
	mov     r0, r4
	mov     r2, #0xea
	add     r0, #0x8c
	add     r1, r4, r1
	lsl     r2, r2, #2
	blx 0x20d50b8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, r4
	mov     r1, #0x1b
	add     r0, #0x84
	str     r1, [r0, #0x0]
	mov     r0, #0x13
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x5c] @ 0x222e134, (=0x15dc)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4-r6,pc}
@ 0x222e0dc

.thumb
branch_222e0dc: @ 222e0dc :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	ldr     r0, [pc, #0x4c] @ 0x222e134, (=0x15dc)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	pop     {r4-r6,pc}
@ 0x222e0f0

.thumb
branch_222e0f0: @ 222e0f0 :thumb
	mov     r0, #0x9a
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      0x201acf4
	mov     r0, #0x9a
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r0, [pc, #0x28] @ 0x222e138, (=0x5dc)
	bl      0x2005748
	mov     r0, r6
	mov     r1, #0xc4
	mov     r2, #0x0
	bl      Function_222ddd0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x3
	str     r0, [r5, #0x0]
.thumb
branch_222e128: @ 222e128 :thumb
	pop     {r4-r6,pc}
@ 0x222e12a


.align 2


.word 0x15e0 @ 0x222e12c
.word 0x1658 @ 0x222e130
.word 0x15dc @ 0x222e134
.word 0x5dc @ 0x222e138
.thumb
Function_222e13c: @ 222e13c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x5c
	mov     r5, r0
	ldr     r0, [pc, #0x88] @ 0x222e1cc, (=0x266c)
	ldr     r4, [r5, r0]
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_222e150
	mov     r4, #0xb
.thumb
branch_222e150: @ 222e150 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r0, #0x56
	bl      0x200b358
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r2, [pc, #0x58] @ 0x222e1d0, (=0x2670)
	mov     r1, #0x0
	ldr     r2, [r5, r2]
	mov     r3, #0x5
	mov     r6, r0
	bl      0x200b60c
	mov     r0, #0x1f
	mov     r1, #0x9a
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r1, r1, #6
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x40] @ 0x222e1d4, (=0x2b7)
	add     r0, sp, #0x8
	add     r1, r5, r1
	mov     r2, #0x1
	bl      Function_2237808
	add     r0, sp, #0x8
	mov     r1, #0x18
	mov     r2, #0x10
	mov     r3, #0x64
	bl      Function_2237858
	add     r0, sp, #0x8
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_2237860
	str     r6, [sp, #0x1c]
	str     r4, [sp, #0x0]
	mov     r2, #0x4
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x8
	mov     r3, r2
	bl      Function_223795c
	mov     r0, r6
	bl      0x200b3f0
	add     sp, #0x5c
	pop     {r3-r6,pc}
@ 0x222e1cc

.word 0x266c @ 0x222e1cc
.word 0x2670 @ 0x222e1d0
.word 0x2b7 @ 0x222e1d4
.thumb
Function_222e1d8: @ 222e1d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r1, r0
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_222e1ee
	mov     r4, #0x15
	b       branch_222e218
@ 0x222e1ee

.thumb
branch_222e1ee: @ 222e1ee :thumb
	cmp     r0, #0x4
	bne     branch_222e1f6
	mov     r4, #0x19
	b       branch_222e218
@ 0x222e1f6

.thumb
branch_222e1f6: @ 222e1f6 :thumb
	cmp     r0, #0x2
	bne     branch_222e1fe
	mov     r4, #0x16
	b       branch_222e218
@ 0x222e1fe

.thumb
branch_222e1fe: @ 222e1fe :thumb
	cmp     r0, #0x1
	bne     branch_222e206
	mov     r4, #0x1b
	b       branch_222e218
@ 0x222e206

.thumb
branch_222e206: @ 222e206 :thumb
	cmp     r0, #0x5
	bne     branch_222e218
	mov     r0, r5
	add     r1, #0x18
	mov     r2, #0x9
	mov     r3, #0x34
	bl      Function_222e228
	pop     {r3-r5,pc}
@ 0x222e218

.thumb
branch_222e218: @ 222e218 :thumb
	mov     r0, r5
	add     r1, #0x18
	mov     r2, r4
	mov     r3, #0x33
	bl      Function_222e228
	pop     {r3-r5,pc}
@ 0x222e226


.align 2, 0


.thumb
Function_222e228: @ 222e228 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r5, r2
	mov     r7, r3
	bl      0x200682c
	mov     r4, r0
	cmp     r6, #0x0
	beq     branch_222e282
	cmp     r5, #0x0
	beq     branch_222e282
	ldr     r2, [pc, #0x64] @ 0x222e2a8, (=0x1a5)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x56
	bl      0x200b144
	str     r0, [sp, #0x4]
	mov     r0, #0x56
	bl      0x200b358
	ldr     r1, [sp, #0x4]
	mov     r2, r5
	mov     r3, #0x56
	str     r0, [sp, #0x8]
	bl      0x200b29c
	str     r0, [r4, #0x14]
	mov     r0, #0x1
	str     r0, [r4, #0x68]
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r5
	bl      Function_222de78
	ldr     r0, [sp, #0x8]
	str     r7, [r4, #0x74]
	bl      0x200b3f0
	ldr     r0, [sp, #0x4]
	bl      0x200b190
	b       branch_222e2a2
@ 0x222e282

.thumb
branch_222e282: @ 222e282 :thumb
	ldr     r0, [r4, #0x6c]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_222e2a2
	ldr     r0, [r4, #0x14]
	bl      0x20237bc
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	str     r0, [r4, #0x68]
	add     sp, #0xc
	ldr     r0, [r4, #0x74]
	pop     {r4-r7,pc}
@ 0x222e2a2

.thumb
branch_222e2a2: @ 222e2a2 :thumb
	mov     r0, #0x32
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222e2a8

.word 0x1a5 @ 0x222e2a8
.thumb
Function_222e2ac: @ 222e2ac :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x28] @ 0x222e2d8, (=0x15d4)
	ldr     r0, [r0, r1]
	cmp     r0, #0x4
	bhi     branch_222e2d4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222e2c2

Jumppoints_222e2c2:
.hword branch_222e2d4 - Jumppoints_222e2c2 - 2
.hword branch_222e2cc - Jumppoints_222e2c2 - 2
.hword branch_222e2d4 - Jumppoints_222e2c2 - 2
.hword branch_222e2d4 - Jumppoints_222e2c2 - 2
.hword branch_222e2d4 - Jumppoints_222e2c2 - 2
.thumb
branch_222e2cc: @ 222e2cc :thumb
	bl      Function_222d2dc
	bl      0x2039794
.thumb
branch_222e2d4: @ 222e2d4 :thumb
	pop     {r3,pc}
@ 0x222e2d6


.align 2


.word 0x15d4 @ 0x222e2d8
.thumb
Function_222e2dc: @ 222e2dc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_22301b0
	mov     r0, #0x3
	mov     r1, #0x56
	lsl     r2, r0, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0x94] @ 0x222e384, (=0x29f8)
	mov     r0, r5
	mov     r2, #0x56
	bl      0x200681c
	ldr     r2, [pc, #0x88] @ 0x222e384, (=0x29f8)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x56
	bl      0x2018340
	str     r0, [r4, #0x0]
	bl      0x201ff00
	bl      0x201ff68
	bl      Function_2232054
	ldr     r0, [r4, #0x0]
	bl      Function_222dbc4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	ldr     r1, [pc, #0x58] @ 0x222e388, (=0x496)
	mov     r0, #0xa
	mov     r2, #0x1
	bl      0x2004550
	mov     r0, #0x56
	bl      Function_2237520
	bl      Function_2237624
	cmp     r0, #0x0
	beq     branch_222e358
	ldr     r0, [pc, #0x44] @ 0x222e38c, (=0x15d4)
	mov     r1, #0x2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x44] @ 0x222e390, (=0x20e4c40)
	ldrb    r0, [r0, #0x0]
	bl      0x2017b70
	mov     r0, #0x1
	bl      Function_2238400
.thumb
branch_222e358: @ 222e358 :thumb
	ldr     r0, [pc, #0x38] @ 0x222e394, (=0x5c8)
	mov     r1, #0x1d
	str     r1, [r4, r0]
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x4]
	bl      0x2025e44
	str     r0, [r4, #0x8]
	mov     r0, #0xff
	mov     r2, #0x3
	str     r0, [r4, #0x68]
	mov     r0, #0x0
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      0x2017fc8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x222e382


.align 2


.word 0x29f8 @ 0x222e384
.word 0x496 @ 0x222e388
.word 0x15d4 @ 0x222e38c
.word 0x20e4c40 @ 0x222e390
.word 0x5c8 @ 0x222e394
.thumb
Function_222e398: @ 222e398 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x2c
	mov     r4, r0
	ldr     r0, [pc, #0x190] @ 0x222e530, (=0x4e21)
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r1, #0x56
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xd6
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x27
	bl      0x200985c
	str     r0, [r4, #0x58]
	ldr     r0, [pc, #0x174] @ 0x222e530, (=0x4e21)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	add     r1, #0xda
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x24
	mov     r3, #0x0
	bl      0x20098b8
	str     r0, [r4, #0x5c]
	ldr     r0, [pc, #0x154] @ 0x222e530, (=0x4e21)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xde
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x26
	mov     r3, #0x1
	bl      0x2009918
	str     r0, [r4, #0x60]
	ldr     r0, [pc, #0x134] @ 0x222e530, (=0x4e21)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xe2
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x25
	mov     r3, #0x1
	bl      0x2009918
	str     r0, [r4, #0x64]
	ldr     r0, [pc, #0x11c] @ 0x222e534, (=0x4e22)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xd6
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x27
	mov     r3, #0x1
	bl      0x200985c
	str     r0, [r4, #0x70]
	ldr     r0, [pc, #0xfc] @ 0x222e534, (=0x4e22)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [r4, #0xc]
	add     r1, #0xda
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x24
	mov     r3, #0x0
	bl      0x20098b8
	str     r0, [r4, #0x74]
	ldr     r0, [pc, #0xdc] @ 0x222e534, (=0x4e22)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xde
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x26
	mov     r3, #0x1
	bl      0x2009918
	str     r0, [r4, #0x78]
	ldr     r0, [pc, #0xbc] @ 0x222e534, (=0x4e22)
	mov     r1, #0x56
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r0, [r4, #0xc]
	add     r1, #0xe2
	ldr     r0, [r0, r1]
	mov     r1, #0x74
	mov     r2, #0x25
	mov     r3, #0x1
	bl      0x2009918
	str     r0, [r4, #0x7c]
	ldr     r0, [r4, #0x58]
	bl      0x200a328
	ldr     r0, [r4, #0x70]
	bl      0x200a328
	ldr     r0, [r4, #0x5c]
	bl      0x200a640
	ldr     r0, [r4, #0x74]
	bl      0x200a640
	mov     r0, #0x0
	mov     r5, #0x4b
	ldr     r2, [r4, #0xc]
	ldr     r1, [pc, #0x7c] @ 0x222e530, (=0x4e21)
	mvn     r0, r0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r5, r5, #2
	ldr     r3, [r2, r5]
	str     r3, [sp, #0x14]
	add     r3, r5, #0x4
	ldr     r3, [r2, r3]
	str     r3, [sp, #0x18]
	mov     r3, r5
	add     r3, #0x8
	ldr     r3, [r2, r3]
	add     r5, #0xc
	str     r3, [sp, #0x1c]
	ldr     r2, [r2, r5]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r4
	add     r0, #0x10
	mov     r2, r1
	bl      0x20093b4
	ldr     r2, [r4, #0xc]
	ldr     r1, [pc, #0x44] @ 0x222e534, (=0x4e22)
	mov     r0, #0x0
	mov     r5, #0x4b
	add     r4, #0x10
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r5, r5, #2
	ldr     r3, [r2, r5]
	add     r4, #0x24
	str     r3, [sp, #0x14]
	add     r3, r5, #0x4
	ldr     r3, [r2, r3]
	str     r3, [sp, #0x18]
	mov     r3, r5
	add     r3, #0x8
	ldr     r3, [r2, r3]
	add     r5, #0xc
	str     r3, [sp, #0x1c]
	ldr     r2, [r2, r5]
	mov     r3, r1
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, r4
	mov     r2, r1
	bl      0x20093b4
	add     sp, #0x2c
	pop     {r4,r5,pc}
@ 0x222e530

.word 0x4e21 @ 0x222e530
.word 0x4e22 @ 0x222e534
.thumb
Function_222e538: @ 222e538 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	cmp     r1, #0x1
	beq     branch_222e544
	mov     r3, #0x1
	b       branch_222e546
@ 0x222e544

.thumb
branch_222e544: @ 222e544 :thumb
	mov     r3, #0x0
.thumb
branch_222e546: @ 222e546 :thumb
	ldr     r2, [r0, #0xc]
	add     r0, #0x10
	ldr     r2, [r2, #0x0]
	str     r2, [sp, #0x0]
	mov     r2, #0x24
	mul     r2, r3
	add     r0, r0, r2
	mov     r3, #0x1
	lsl     r3, r3, #12
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r3, [sp, #0x1c]
	add     r0, sp, #0x0
	strh    r2, [r0, #0x20]
	lsl     r0, r3, #7
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	lsl     r2, r3, #5
	str     r0, [sp, #0x24]
	mov     r0, #0x56
	str     r2, [sp, #0xc]
	str     r1, [sp, #0x28]
	str     r0, [sp, #0x2c]
	cmp     r1, #0x2
	bne     branch_222e584
	lsl     r0, r3, #8
	add     r0, r2, r0
	str     r0, [sp, #0xc]
.thumb
branch_222e584: @ 222e584 :thumb
	add     r0, sp, #0x0
	bl      0x2021aa0
	mov     r4, r0
	beq     branch_222e5ac
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2021e80
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2021d6c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_222e5ac: @ 222e5ac :thumb
	mov     r0, r4
	add     sp, #0x30
	pop     {r4,pc}
@ 0x222e5b2


.align 2, 0


.thumb
Function_222e5b4: @ 222e5b4 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r4, r0
	bl      Function_222e538
	ldr     r1, [pc, #0x48] @ 0x222e608, (=0x3014)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	bl      0x2021dcc
	ldr     r0, [pc, #0x3c] @ 0x222e608, (=0x3014)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021e50
	ldr     r0, [pc, #0x30] @ 0x222e608, (=0x3014)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x28] @ 0x222e608, (=0x3014)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021f58
	ldr     r0, [pc, #0x1c] @ 0x222e608, (=0x3014)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2021cf8
	ldr     r0, [pc, #0x14] @ 0x222e608, (=0x3014)
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r1, #0x2
	lsl     r1, r1, #18
	str     r1, [r0, #0x0]
	mov     r1, #0x6
	lsl     r1, r1, #16
	str     r1, [r0, #0x4]
	pop     {r4,pc}
@ 0x222e608

.word 0x3014 @ 0x222e608
.thumb
Function_222e60c: @ 222e60c :thumb
	push    {r4,lr}
	mov     r1, #0x2
	mov     r4, r0
	bl      Function_222e538
	ldr     r1, [pc, #0x48] @ 0x222e660, (=0x3060)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x4
	bl      0x2021dcc
	ldr     r0, [pc, #0x3c] @ 0x222e660, (=0x3060)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021e50
	ldr     r0, [pc, #0x30] @ 0x222e660, (=0x3060)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x28] @ 0x222e660, (=0x3060)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021f58
	ldr     r0, [pc, #0x1c] @ 0x222e660, (=0x3060)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2021cf8
	ldr     r0, [pc, #0x14] @ 0x222e660, (=0x3060)
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r1, #0x2
	lsl     r1, r1, #18
	str     r1, [r0, #0x0]
	lsl     r1, r1, #1
	str     r1, [r0, #0x4]
	pop     {r4,pc}
@ 0x222e65e


.align 2


.word 0x3060 @ 0x222e660
.thumb
Function_222e664: @ 222e664 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x222e678, (=0x3014)
	ldr     r0, [r4, r0]
	bl      0x2021bd4
	ldr     r0, [pc, #0x4] @ 0x222e678, (=0x3014)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x222e678

.word 0x3014 @ 0x222e678
.thumb
Function_222e67c: @ 222e67c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x222e690, (=0x3060)
	ldr     r0, [r4, r0]
	bl      0x2021bd4
	ldr     r0, [pc, #0x4] @ 0x222e690, (=0x3060)
	mov     r1, #0x0
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x222e690

.word 0x3060 @ 0x222e690
.thumb
Function_222e694: @ 222e694 :thumb
	push    {r3-r7,lr}
	mov     r6, #0x2
	ldr     r7, [pc, #0x50] @ 0x222e6ec, (=0x1854)
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	mov     r5, r0
	lsl     r6, r6, #12
.thumb
branch_222e6a2: @ 222e6a2 :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222e6b2
	mov     r1, r6
	bl      0x2021e2c
.thumb
branch_222e6b2: @ 222e6b2 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_222e6be
	mov     r1, r6
	bl      0x2021e2c
.thumb
branch_222e6be: @ 222e6be :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e6a2
	ldr     r1, [pc, #0x28] @ 0x222e6f0, (=0x3014)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_222e6d8
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      0x2021e2c
.thumb
branch_222e6d8: @ 222e6d8 :thumb
	ldr     r1, [pc, #0x18] @ 0x222e6f4, (=0x3060)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_222e6ea
	mov     r1, #0x2
	lsl     r1, r1, #12
	bl      0x2021e2c
.thumb
branch_222e6ea: @ 222e6ea :thumb
	pop     {r3-r7,pc}
@ 0x222e6ec

.word 0x1854 @ 0x222e6ec
.word 0x3014 @ 0x222e6f0
.word 0x3060 @ 0x222e6f4
.thumb
Function_222e6f8: @ 222e6f8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, #0x1
.thumb
branch_222e702: @ 222e702 :thumb
	mov     r0, r6
	mov     r1, r7
	bl      Function_222e538
	mov     r1, r5
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021dcc
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x2021e50
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e702
	pop     {r3-r7,pc}
@ 0x222e732


.align 2, 0


.thumb
Function_222e734: @ 222e734 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_222e73e: @ 222e73e :thumb
	cmp     r4, #0x14
	bge     branch_222e76a
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222e538
	mov     r1, r5
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021dcc
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x2021e50
	b       branch_222e770
@ 0x222e76a

.thumb
branch_222e76a: @ 222e76a :thumb
	mov     r0, r5
	add     r0, #0x94
	str     r7, [r0, #0x0]
.thumb
branch_222e770: @ 222e770 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e73e
	pop     {r3-r7,pc}
@ 0x222e77a


.align 2, 0


.thumb
Function_222e77c: @ 222e77c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r7, [pc, #0x2c] @ 0x222e7b0, (=0x1854)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_222e786: @ 222e786 :thumb
	mov     r0, r6
	mov     r1, #0x2
	bl      Function_222e538
	ldr     r1, [pc, #0x20] @ 0x222e7b0, (=0x1854)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	bl      0x2021dcc
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      0x2021e50
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e786
	pop     {r3-r7,pc}
@ 0x222e7ae


.align 2


.word 0x1854 @ 0x222e7b0
.thumb
Function_222e7b4: @ 222e7b4 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	mov     r6, r4
.thumb
branch_222e7bc: @ 222e7bc :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_222e7da
	bl      0x2021bd4
	mov     r0, r5
	add     r0, #0x94
	str     r6, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	bl      0x200da58
.thumb
branch_222e7da: @ 222e7da :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e7bc
	pop     {r4-r6,pc}
@ 0x222e7e4

.thumb
Function_222e7e4: @ 222e7e4 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	ldr     r7, [pc, #0x20] @ 0x222e80c, (=0x1890)
	mov     r5, r0
	mov     r6, r4
.thumb
branch_222e7ee: @ 222e7ee :thumb
	ldr     r0, [pc, #0x20] @ 0x222e810, (=0x1854)
	ldr     r0, [r5, r0]
	bl      0x2021bd4
	ldr     r0, [pc, #0x18] @ 0x222e810, (=0x1854)
	str     r6, [r5, r0]
	ldr     r0, [r5, r7]
	bl      0x200da58
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	cmp     r4, #0x50
	blt     branch_222e7ee
	pop     {r3-r7,pc}
@ 0x222e80a


.align 2


.word 0x1890 @ 0x222e80c
.word 0x1854 @ 0x222e810
.thumb
Function_222e814: @ 222e814 :thumb
	push    {r3-r7,lr}
	add     sp, #-0xb8
	mov     r5, r0
	str     r0, [sp, #0x0]
	add     r0, #0x88
	ldr     r3, [pc, #0x238] @ 0x222ea58, (=0x223d758)
	mov     r4, #0x0
	add     r7, sp, #0x64
	str     r0, [sp, #0x0]
	add     r2, sp, #0x10
	mov     r6, #0xa
.thumb
branch_222e82a: @ 222e82a :thumb
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	.hword  0x1e76 @ sub r6, r6, #0x1
	bne     branch_222e82a
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
.thumb
branch_222e836: @ 222e836 :thumb
	mov     r2, #0x2
	mov     r0, r5
	mov     r1, #0x6
	lsl     r2, r2, #18
	add     r0, #0x98
	str     r2, [r0, #0x0]
	mov     r0, r5
	lsl     r1, r1, #16
	add     r0, #0x9c
	str     r1, [r0, #0x0]
	mov     r0, r5
	lsr     r1, r2, #5
	add     r0, #0xa4
	str     r1, [r0, #0x0]
	mov     r1, #0x5
	mov     r0, r5
	lsl     r1, r1, #12
	add     r0, #0xa8
	str     r1, [r0, #0x0]
	lsr     r2, r4, #31
	lsl     r1, r4, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	mov     r0, r5
	add     r1, r2, r1
	add     r0, #0xb4
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0x0
	add     r0, #0xbc
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0xa
	blx 0x20e1f6c
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r0, #0x0
	ble     branch_222e89c
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222e8aa
@ 0x222e89c

.thumb
branch_222e89c: @ 222e89c :thumb
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222e8aa: @ 222e8aa :thumb
	blx 0x20e1740
	mov     r1, r5
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	cmp     r4, #0x32
	ble     branch_222e8d2
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, #0x41
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222e95c
@ 0x222e8d2

.thumb
branch_222e8d2: @ 222e8d2 :thumb
	cmp     r4, #0x28
	ble     branch_222e8ee
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r4
	add     r0, #0xfa
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222e95c
@ 0x222e8ee

.thumb
branch_222e8ee: @ 222e8ee :thumb
	cmp     r4, #0x1e
	ble     branch_222e90a
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r4
	add     r0, #0xf0
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222e95c
@ 0x222e90a

.thumb
branch_222e90a: @ 222e90a :thumb
	cmp     r4, #0x19
	ble     branch_222e926
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r4
	add     r0, #0xe6
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222e95c
@ 0x222e926

.thumb
branch_222e926: @ 222e926 :thumb
	cmp     r4, #0x14
	ble     branch_222e942
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r4
	add     r0, #0xdc
	add     r1, r0, r1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222e95c
@ 0x222e942

.thumb
branch_222e942: @ 222e942 :thumb
	add     r6, sp, #0x10
	add     r3, sp, #0x64
	mov     r2, #0xa
.thumb
branch_222e948: @ 222e948 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_222e948
	ldr     r0, [r6, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r5
	ldr     r1, [r7, #0x0]
	add     r0, #0xb8
	str     r1, [r0, #0x0]
.thumb
branch_222e95c: @ 222e95c :thumb
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	blx 0x20e01b8
	mov     r2, r0
	mov     r3, r1
	ldr     r0, [pc, #0xe8] @ 0x222ea5c, (=0x66666666)
	ldr     r1, [pc, #0xe8] @ 0x222ea60, (=0x3fe66666)
	blx 0x20e0234
	blx 0x20e0088
	mov     r1, r5
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	add     r1, r0, #0x1
	mov     r0, r5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	mov     r0, r5
	mov     r1, #0xf
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x4
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	bl      0x201d2e8
	mov     r1, #0xe0
	blx 0x20e1f6c
	add     r1, #0x10
	cmp     r1, #0x0
	ble     branch_222e9f6
	bl      0x201d2e8
	mov     r1, #0xe0
	blx 0x20e1f6c
	add     r1, #0x10
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222ea10
@ 0x222e9f6

.thumb
branch_222e9f6: @ 222e9f6 :thumb
	bl      0x201d2e8
	mov     r1, #0xe0
	blx 0x20e1f6c
	add     r1, #0x10
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222ea10: @ 222ea10 :thumb
	blx 0x20e1740
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	bl      0x2021c50
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [pc, #0x30] @ 0x222ea64, (=0x222eeb9)
	ldr     r1, [sp, #0x0]
	mov     r2, #0x6
	bl      0x200d9e8
	mov     r1, r5
	add     r1, #0xd0
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x4c
	add     r5, #0x4c
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x0]
	cmp     r4, #0x50
	bge     branch_222ea54
	b       branch_222e836
@ 0x222ea54

.thumb
branch_222ea54: @ 222ea54 :thumb
	add     sp, #0xb8
	pop     {r3-r7,pc}
@ 0x222ea58

.word 0x223d758 @ 0x222ea58
.word 0x66666666 @ 0x222ea5c
.word 0x3fe66666 @ 0x222ea60
.word 0x222eeb9 @ 0x222ea64
.thumb
Function_222ea68: @ 222ea68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r7, r5
	mov     r4, #0x0
	add     r7, #0x88
.thumb
branch_222ea74: @ 222ea74 :thumb
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_222ea80
	b       branch_222ebbc
@ 0x222ea80

.thumb
branch_222ea80: @ 222ea80 :thumb
	mov     r1, r5
	mov     r0, #0x2
	add     r1, #0x98
	lsl     r0, r0, #18
	str     r0, [r1, #0x0]
	mov     r1, r5
	mov     r0, #0x6
	add     r1, #0x9c
	lsl     r0, r0, #16
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xa4
	lsr     r0, r0, #3
	str     r0, [r1, #0x0]
	mov     r1, r5
	mov     r0, #0x1
	add     r1, #0xa8
	lsl     r0, r0, #12
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xb4
	mov     r0, #0xff
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0xbc
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x8c
	str     r0, [r1, #0x0]
	mov     r1, r5
	add     r1, #0x90
	str     r0, [r1, #0x0]
	cmp     r4, #0x1e
	ble     branch_222eada
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	mov     r0, r5
	add     r1, #0xf
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222eb1c
@ 0x222eada

.thumb
branch_222eada: @ 222eada :thumb
	cmp     r4, #0x14
	ble     branch_222eaf2
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	mov     r0, r5
	add     r1, #0xa
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222eb1c
@ 0x222eaf2

.thumb
branch_222eaf2: @ 222eaf2 :thumb
	cmp     r4, #0xa
	ble     branch_222eb0a
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r5
	add     r1, #0xa
	add     r0, #0xb8
	str     r1, [r0, #0x0]
	b       branch_222eb1c
@ 0x222eb0a

.thumb
branch_222eb0a: @ 222eb0a :thumb
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	mov     r0, r5
	.hword  0x1d49 @ add r1, r1, #0x5
	add     r0, #0xb8
	str     r1, [r0, #0x0]
.thumb
branch_222eb1c: @ 222eb1c :thumb
	mov     r1, r5
	add     r1, #0xb8
	mov     r0, #0x0
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc8
	str     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xc0
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xcc
	str     r1, [r0, #0x0]
	bl      0x201d2e8
	mov     r1, #0x5a
	lsl     r1, r1, #2
	blx 0x20e1f6c
	str     r1, [sp, #0x0]
	bl      0x201d2e8
	lsr     r2, r0, #31
	lsl     r1, r0, #27
	sub     r1, r1, r2
	mov     r0, #0x1b
	ror     r1, r0
	ldr     r0, [sp, #0x0]
	add     r6, r2, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	add     r6, #0x40
	bl      0x201d250
	mov     r1, r5
	add     r1, #0x98
	ldr     r1, [r1, #0x0]
	mul     r0, r6
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	mov     r1, r5
	add     r1, #0x9c
	ldr     r1, [r1, #0x0]
	mul     r0, r6
	add     r0, r1, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x4
	bl      0x2021c50
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      0x2021dcc
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [pc, #0x1c] @ 0x222ebcc, (=0x222eeb9)
	mov     r1, r7
	mov     r2, #0x6
	bl      0x200d9e8
	mov     r1, r5
	add     r1, #0xd0
	str     r0, [r1, #0x0]
.thumb
branch_222ebbc: @ 222ebbc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x4c
	add     r7, #0x4c
	cmp     r4, #0x50
	bge     branch_222ebc8
	b       branch_222ea74
@ 0x222ebc8

.thumb
branch_222ebc8: @ 222ebc8 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x222ebcc

.word 0x222eeb9 @ 0x222ebcc
.thumb
Function_222ebd0: @ 222ebd0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x1c0] @ 0x222ed98, (=0x1848)
	mov     r4, #0x0
	add     r6, r5, r0
.thumb
branch_222ebdc: @ 222ebdc :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x1bc] @ 0x222ed9c, (=0x1858)
	lsl     r1, r1, #18
	str     r1, [r5, r0]
	mov     r1, #0x6
	lsl     r1, r1, #18
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r1, #0x1
	ldr     r0, [pc, #0x1b0] @ 0x222eda0, (=0x1864)
	lsl     r1, r1, #14
	str     r1, [r5, r0]
	mov     r1, #0x5
	lsl     r1, r1, #12
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	lsr     r2, r4, #31
	lsl     r1, r4, #31
	sub     r1, r1, r2
	mov     r0, #0x1f
	ror     r1, r0
	add     r0, r2, r1
	add     r1, r0, #0x4
	ldr     r0, [pc, #0x198] @ 0x222eda4, (=0x1874)
	str     r1, [r5, r0]
	mov     r1, #0x0
	add     r0, #0x8
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x190] @ 0x222eda8, (=0x184c)
	str     r1, [r5, r0]
	bl      0x201d2e8
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	add     r1, r0, #0x2
	ldr     r0, [pc, #0x180] @ 0x222edac, (=0x1884)
	str     r1, [r5, r0]
	mov     r0, r4
	mov     r1, #0x1e
	blx 0x20e1f6c
	.hword  0x1d00 @ add r0, r0, #0x4
	cmp     r0, #0x0
	ble     branch_222ec4e
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222ec5c
@ 0x222ec4e

.thumb
branch_222ec4e: @ 222ec4e :thumb
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222ec5c: @ 222ec5c :thumb
	blx 0x20e1740
	ldr     r1, [pc, #0x13c] @ 0x222eda0, (=0x1864)
	cmp     r4, #0x3c
	str     r0, [r5, r1]
	ble     branch_222ec82
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	ldr     r0, [pc, #0x134] @ 0x222edb0, (=0x1878)
	add     r1, #0x46
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222ec82

.thumb
branch_222ec82: @ 222ec82 :thumb
	cmp     r4, #0x32
	ble     branch_222eca0
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	ldr     r0, [pc, #0x114] @ 0x222edb0, (=0x1878)
	add     r1, #0x3c
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222eca0

.thumb
branch_222eca0: @ 222eca0 :thumb
	cmp     r4, #0x28
	ble     branch_222ecbe
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	ldr     r0, [pc, #0xf8] @ 0x222edb0, (=0x1878)
	add     r1, #0x32
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222ecbe

.thumb
branch_222ecbe: @ 222ecbe :thumb
	cmp     r4, #0x1e
	ble     branch_222ecdc
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	ldr     r0, [pc, #0xd8] @ 0x222edb0, (=0x1878)
	add     r1, #0x28
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222ecdc

.thumb
branch_222ecdc: @ 222ecdc :thumb
	cmp     r4, #0x14
	ble     branch_222ecfa
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0xa
	blx 0x20e1f6c
	ldr     r0, [pc, #0xbc] @ 0x222edb0, (=0x1878)
	add     r1, #0x1e
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222ecfa

.thumb
branch_222ecfa: @ 222ecfa :thumb
	cmp     r4, #0xa
	ble     branch_222ed18
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	ldr     r0, [pc, #0x9c] @ 0x222edb0, (=0x1878)
	add     r1, #0x14
	str     r1, [r5, r0]
	b       branch_222ed30
@ 0x222ed18

.thumb
branch_222ed18: @ 222ed18 :thumb
	mov     r0, #0x62
	mov     r1, #0x5
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	bl      0x201d2e8
	mov     r1, #0x5
	blx 0x20e1f6c
	ldr     r0, [pc, #0x84] @ 0x222edb0, (=0x1878)
	add     r1, #0xa
	str     r1, [r5, r0]
.thumb
branch_222ed30: @ 222ed30 :thumb
	mov     r0, #0x62
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	add     r0, #0x8
	str     r1, [r5, r0]
	mov     r0, #0x62
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	add     r0, #0xc
	str     r1, [r5, r0]
	ldr     r0, [pc, #0x6c] @ 0x222edb4, (=0x1854)
	ldr     r0, [r5, r0]
	bl      0x2021d28
	mov     r3, r0
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	mov     r7, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, r7
	str     r0, [r2, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #18
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #18
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x48] @ 0x222edb4, (=0x1854)
	ldr     r0, [r5, r0]
	bl      0x2021c50
	ldr     r0, [pc, #0x40] @ 0x222edb4, (=0x1854)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x3c] @ 0x222edb8, (=0x222eeb9)
	mov     r1, r6
	mov     r2, #0x6
	bl      0x200d9e8
	ldr     r1, [pc, #0x34] @ 0x222edbc, (=0x1890)
	.hword  0x1c64 @ add r4, r4, #0x1
	str     r0, [r5, r1]
	add     r5, #0x4c
	add     r6, #0x4c
	cmp     r4, #0x50
	bge     branch_222ed94
	b       branch_222ebdc
@ 0x222ed94

.thumb
branch_222ed94: @ 222ed94 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x222ed98

.word 0x1848 @ 0x222ed98
.word 0x1858 @ 0x222ed9c
.word 0x1864 @ 0x222eda0
.word 0x1874 @ 0x222eda4
.word 0x184c @ 0x222eda8
.word 0x1884 @ 0x222edac
.word 0x1878 @ 0x222edb0
.word 0x1854 @ 0x222edb4
.word 0x222eeb9 @ 0x222edb8
.word 0x1890 @ 0x222edbc
.thumb
Function_222edc0: @ 222edc0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, #0x0
	mov     r4, r2
	mov     r6, r3
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	blx 0x20e17b4
	mov     r1, r4
	blx 0x20e1a9c
	str     r0, [sp, #0x8]
	mov     r0, r5
	blx 0x20e17b4
	mov     r1, r6
	blx 0x20e1a9c
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x8]
	mov     r1, r0
	blx 0x20e18b0
	mov     r4, r0
	ldr     r0, [sp, #0xc]
	mov     r1, r0
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, r4
	blx 0x20e0b00
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20e1108
	ldr     r0, [pc, #0xa0] @ 0x222eeb4, (=0x45800000)
	bls     branch_222ee28
	mov     r1, r4
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222ee36
@ 0x222ee28

.thumb
branch_222ee28: @ 222ee28 :thumb
	mov     r1, r4
	blx 0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222ee36: @ 222ee36 :thumb
	blx 0x20e1740
	blx 0x20bcff0
	blx 0x20e17b4
	ldr     r1, [pc, #0x70] @ 0x222eeb4, (=0x45800000)
	blx 0x20e1304
	ldr     r1, [sp, #0x30]
	mov     r4, r0
	blx 0x20e11cc
	bcc     branch_222ee6e
	add     r1, sp, #0x18
	mov     r0, #0x1c
	ldsh    r0, [r1, r0]
	blx 0x20e17b4
	mov     r1, r4
	blx 0x20e1108
	bhi     branch_222ee6e
	mov     r0, #0x0
	mov     r1, r4
	blx 0x20e1228
	bne     branch_222ee74
.thumb
branch_222ee6e: @ 222ee6e :thumb
	add     sp, #0x18
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x222ee74

.thumb
branch_222ee74: @ 222ee74 :thumb
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x30]
	blx 0x20e18b0
	mov     r1, r4
	blx 0x20e1304
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x30]
	blx 0x20e18b0
	mov     r1, r4
	blx 0x20e1304
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x0]
	blx 0x20e0b00
	ldr     r1, [sp, #0x28]
	str     r0, [r1, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x4]
	blx 0x20e0b00
	ldr     r1, [sp, #0x2c]
	str     r0, [r1, #0x0]
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x222eeb2


.align 2


.word 0x45800000 @ 0x222eeb4
.thumb
Function_222eeb8: @ 222eeb8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	ldr     r0, [r5, #0x30]
	cmp     r0, #0x0
	ldr     r0, [r5, #0xc]
	beq     branch_222eed6
	mov     r1, #0x0
	bl      0x2021e50
	ldr     r0, [r5, #0x30]
	add     sp, #0x24
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r5, #0x30]
	pop     {r4-r7,pc}
@ 0x222eed6

.thumb
branch_222eed6: @ 222eed6 :thumb
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [r5, #0xc]
	bl      0x2021d28
	mov     r3, r0
	ldmia   r3!, {r0,r1}
	add     r2, sp, #0x18
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x18]
	blx 0x20e17b4
	ldr     r1, [pc, #0x308] @ 0x222f200, (=0x45800000)
	blx 0x20e1304
	mov     r6, r0
	ldr     r0, [sp, #0x1c]
	blx 0x20e17b4
	ldr     r1, [pc, #0x2fc] @ 0x222f200, (=0x45800000)
	blx 0x20e1304
	mov     r7, r0
	ldr     r0, [r5, #0x1c]
	blx 0x20e17b4
	ldr     r1, [pc, #0x2ec] @ 0x222f200, (=0x45800000)
	blx 0x20e1304
	mov     r4, r0
	ldr     r0, [r5, #0x20]
	blx 0x20e17b4
	ldr     r1, [pc, #0x2e0] @ 0x222f200, (=0x45800000)
	blx 0x20e1304
	blx 0x20e1740
	add     r1, sp, #0x14
	str     r1, [sp, #0x0]
	add     r1, sp, #0x10
	str     r1, [sp, #0x4]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #4
	lsl     r1, r1, #4
	asr     r0, r0, #16
	asr     r1, r1, #16
	mov     r2, r6
	mov     r3, r7
	bl      Function_222edc0
	cmp     r0, #0x0
	beq     branch_222efca
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	bne     branch_222efca
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	blx 0x20e1108
	ldr     r0, [pc, #0x2a4] @ 0x222f200, (=0x45800000)
	bls     branch_222ef70
	ldr     r1, [sp, #0x14]
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222ef7e
@ 0x222ef70

.thumb
branch_222ef70: @ 222ef70 :thumb
	ldr     r1, [sp, #0x14]
	blx 0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222ef7e: @ 222ef7e :thumb
	blx 0x20e1740
	ldr     r1, [sp, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	blx 0x20e1108
	ldr     r0, [pc, #0x26c] @ 0x222f200, (=0x45800000)
	bls     branch_222efa6
	ldr     r1, [sp, #0x10]
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222efb4
@ 0x222efa6

.thumb
branch_222efa6: @ 222efa6 :thumb
	ldr     r1, [sp, #0x10]
	blx 0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222efb4: @ 222efb4 :thumb
	blx 0x20e1740
	ldr     r1, [sp, #0x1c]
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x18
	bl      0x2021c50
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222efca

.thumb
branch_222efca: @ 222efca :thumb
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x0
	beq     branch_222efd8
	cmp     r0, #0x1
	beq     branch_222f04e
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222efd8

.thumb
branch_222efd8: @ 222efd8 :thumb
	ldr     r1, [r5, #0x10]
	ldr     r0, [sp, #0x18]
	sub     r0, r1, r0
	cmp     r0, #0x0
	ble     branch_222eff4
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222f002
@ 0x222eff4

.thumb
branch_222eff4: @ 222eff4 :thumb
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222f002: @ 222f002 :thumb
	mov     r4, r0
	ldr     r1, [r5, #0x14]
	ldr     r0, [sp, #0x1c]
	sub     r0, r1, r0
	cmp     r0, #0x0
	ble     branch_222f020
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222f02e
@ 0x222f020

.thumb
branch_222f020: @ 222f020 :thumb
	lsl     r0, r0, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222f02e: @ 222f02e :thumb
	blx 0x20e1740
	mov     r6, r0
	mov     r0, r4
	blx 0x20e1740
	mov     r1, r0
	mov     r0, r6
	blx 0x20bda20
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x24]
	add     sp, #0x24
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x24]
	pop     {r4-r7,pc}
@ 0x222f04e

.thumb
branch_222f04e: @ 222f04e :thumb
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x14
	bge     branch_222f05a
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x4]
	b       branch_222f05e
@ 0x222f05a

.thumb
branch_222f05a: @ 222f05a :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_222f05e: @ 222f05e :thumb
	ldr     r0, [r5, #0x28]
	add     r0, #0x8
	str     r0, [r5, #0x28]
	ldr     r0, [r5, #0x2c]
	cmp     r0, #0x0
	bne     branch_222f0b4
	ldr     r0, [r5, #0x34]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x34]
	blx 0x20e1f6c
	lsl     r0, r1, #16
	str     r1, [r5, #0x34]
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x38]
	mul     r0, r1
	asr     r0, r0, #12
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r2, [r5, #0x10]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r2, [r5, #0x14]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f0b4

.thumb
branch_222f0b4: @ 222f0b4 :thumb
	cmp     r0, #0x1
	bne     branch_222f102
	ldr     r0, [r5, #0x34]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x34]
	blx 0x20e1f6c
	lsl     r0, r1, #16
	str     r1, [r5, #0x34]
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x38]
	mul     r0, r1
	asr     r0, r0, #12
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r2, [r5, #0x10]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r2, [r5, #0x14]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f102

.thumb
branch_222f102: @ 222f102 :thumb
	cmp     r0, #0x2
	bne     branch_222f160
	ldr     r0, [r5, #0x34]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x34]
	blx 0x20e1f6c
	lsl     r0, r1, #16
	str     r1, [r5, #0x34]
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x38]
	mul     r0, r1
	asr     r0, r0, #12
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r3, [r5, #0x10]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r3, [r5, #0x14]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f160

.thumb
branch_222f160: @ 222f160 :thumb
	cmp     r0, #0x3
	bne     branch_222f1be
	ldr     r0, [r5, #0x34]
	mov     r1, #0x5a
	add     r0, #0x8
	lsl     r1, r1, #2
	str     r0, [r5, #0x34]
	blx 0x20e1f6c
	lsl     r0, r1, #16
	str     r1, [r5, #0x34]
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x38]
	mul     r0, r1
	asr     r0, r0, #12
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r3, [r5, #0x10]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r3, [r5, #0x14]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f1be

.thumb
branch_222f1be: @ 222f1be :thumb
	cmp     r0, #0x4
	bne     branch_222f204
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x60
	bge     branch_222f1ce
	ldr     r0, [r5, #0x3c]
	add     r0, r1, r0
	str     r0, [r5, #0x38]
.thumb
branch_222f1ce: @ 222f1ce :thumb
	ldr     r0, [r5, #0x38]
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x38]
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r2, [r5, #0x10]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r2, [r5, #0x14]
	mul     r0, r1
	add     r0, r2, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f200

.word 0x45800000 @ 0x222f200
.thumb
branch_222f204: @ 222f204 :thumb
	cmp     r0, #0x5
	bne     branch_222f256
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x60
	bge     branch_222f214
	ldr     r0, [r5, #0x3c]
	add     r0, r1, r0
	str     r0, [r5, #0x38]
.thumb
branch_222f214: @ 222f214 :thumb
	ldr     r0, [r5, #0x38]
	str     r0, [r5, #0x40]
	ldr     r0, [r5, #0x38]
	str     r0, [r5, #0x44]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d250
	ldr     r1, [r5, #0x40]
	ldr     r3, [r5, #0x10]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x201d264
	ldr     r1, [r5, #0x44]
	ldr     r3, [r5, #0x14]
	mov     r2, r1
	mul     r2, r0
	mov     r0, #0x0
	mvn     r0, r0
	mul     r0, r2
	add     r0, r3, r0
	str     r0, [sp, #0x1c]
	b       branch_222f32c
@ 0x222f256

.thumb
branch_222f256: @ 222f256 :thumb
	mov     r0, #0xa
	str     r0, [r5, #0x4]
	mov     r0, #0x2
	ldr     r1, [r5, #0x1c]
	lsl     r0, r0, #10
	add     r0, r1, r0
	str     r0, [r5, #0x1c]
	ldr     r0, [sp, #0x18]
	blx 0x20e17b4
	ldr     r1, [pc, #0xd8] @ 0x222f344, (=0x45800000)
	blx 0x20e1304
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	blx 0x20e17b4
	ldr     r1, [pc, #0xc8] @ 0x222f344, (=0x45800000)
	blx 0x20e1304
	mov     r6, r0
	ldr     r0, [r5, #0x1c]
	blx 0x20e17b4
	ldr     r1, [pc, #0xbc] @ 0x222f344, (=0x45800000)
	blx 0x20e1304
	add     r1, sp, #0x14
	str     r1, [sp, #0x0]
	add     r1, sp, #0x10
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x14]
	lsl     r0, r0, #4
	lsl     r1, r1, #4
	asr     r0, r0, #16
	asr     r1, r1, #16
	mov     r2, r4
	mov     r3, r6
	bl      Function_222edc0
	cmp     r0, #0x0
	beq     branch_222f328
	ldr     r0, [sp, #0x14]
	mov     r1, #0x0
	blx 0x20e1108
	ldr     r0, [pc, #0x88] @ 0x222f344, (=0x45800000)
	bls     branch_222f2d0
	ldr     r1, [sp, #0x14]
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222f2de
@ 0x222f2d0

.thumb
branch_222f2d0: @ 222f2d0 :thumb
	ldr     r1, [sp, #0x14]
	blx 0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222f2de: @ 222f2de :thumb
	blx 0x20e1740
	ldr     r1, [sp, #0x18]
	add     r0, r1, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x0
	blx 0x20e1108
	ldr     r0, [pc, #0x50] @ 0x222f344, (=0x45800000)
	bls     branch_222f306
	ldr     r1, [sp, #0x10]
	blx 0x20e18b0
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_222f314
@ 0x222f306

.thumb
branch_222f306: @ 222f306 :thumb
	ldr     r1, [sp, #0x10]
	blx 0x20e18b0
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_222f314: @ 222f314 :thumb
	blx 0x20e1740
	ldr     r1, [sp, #0x1c]
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x18
	bl      0x2021c50
	b       branch_222f32c
@ 0x222f328

.thumb
branch_222f328: @ 222f328 :thumb
	mov     r0, #0x1
	str     r0, [r5, #0x8]
.thumb
branch_222f32c: @ 222f32c :thumb
	mov     r1, #0x5a
	ldr     r0, [r5, #0x28]
	lsl     r1, r1, #2
	blx 0x20e1f6c
	str     r1, [r5, #0x28]
	ldr     r0, [r5, #0xc]
	add     r1, sp, #0x18
	bl      0x2021c50
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x222f344

.word 0x45800000 @ 0x222f344
.thumb
Function_222f348: @ 222f348 :thumb
	mov     r3, r0
	mov     r2, #0x8
	ldsb    r2, [r3, r2]
	ldr     r3, [pc, #0x8] @ 0x222f358, (=0x20bf578)
	ldr     r0, [pc, #0x8] @ 0x222f35c, (=0x4000050)
	mov     r1, #0x22
	bx      r3
@ 0x222f356


.align 2


.word 0x20bf578 @ 0x222f358
.word 0x4000050 @ 0x222f35c
.thumb
Function_222f360: @ 222f360 :thumb
	mov     r3, r0
	mov     r2, #0x8
	ldsb    r2, [r3, r2]
	ldr     r3, [pc, #0x8] @ 0x222f370, (=0x20bf578)
	ldr     r0, [pc, #0x8] @ 0x222f374, (=0x4001050)
	mov     r1, #0x22
	bx      r3
@ 0x222f36e


.align 2


.word 0x20bf578 @ 0x222f370
.word 0x4001050 @ 0x222f374
.thumb
Function_222f378: @ 222f378 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_222f348
	mov     r0, r4
	bl      Function_222f360
	pop     {r4,pc}
@ 0x222f388

.thumb
Function_222f388: @ 222f388 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201975c
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x201975c
	pop     {r3,pc}
@ 0x222f39c

.thumb
Function_222f39c: @ 222f39c :thumb
	push    {r4,lr}
	mov     r4, #0x1
	cmp     r1, #0x0
	beq     branch_222f3ae
	cmp     r1, #0x1
	beq     branch_222f3da
	cmp     r1, #0x2
	beq     branch_222f3f4
	b       branch_222f408
@ 0x222f3ae

.thumb
branch_222f3ae: @ 222f3ae :thumb
	mov     r1, #0x8
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	ble     branch_222f3c8
	sub     r1, r1, r2
	cmp     r1, #0x0
	ble     branch_222f3c2
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f408
@ 0x222f3c2

.thumb
branch_222f3c2: @ 222f3c2 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x8]
	b       branch_222f408
@ 0x222f3c8

.thumb
branch_222f3c8: @ 222f3c8 :thumb
	bge     branch_222f408
	add     r1, r1, r2
	bpl     branch_222f3d4
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f408
@ 0x222f3d4

.thumb
branch_222f3d4: @ 222f3d4 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x8]
	b       branch_222f408
@ 0x222f3da

.thumb
branch_222f3da: @ 222f3da :thumb
	mov     r3, #0x8
	ldsb    r1, [r0, r3]
	sub     r2, r1, r2
	mov     r1, r3
	sub     r1, #0x18
	cmp     r2, r1
	ble     branch_222f3ee
	strb    r2, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f408
@ 0x222f3ee

.thumb
branch_222f3ee: @ 222f3ee :thumb
	sub     r3, #0x18
	strb    r3, [r0, #0x8]
	b       branch_222f408
@ 0x222f3f4

.thumb
branch_222f3f4: @ 222f3f4 :thumb
	mov     r1, #0x8
	ldsb    r1, [r0, r1]
	add     r1, r1, r2
	cmp     r1, #0x10
	bge     branch_222f404
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f408
@ 0x222f404

.thumb
branch_222f404: @ 222f404 :thumb
	mov     r1, #0x10
	strb    r1, [r0, #0x8]
.thumb
branch_222f408: @ 222f408 :thumb
	bl      Function_222f378
	mov     r0, r4
	pop     {r4,pc}
@ 0x222f410

.thumb
Function_222f410: @ 222f410 :thumb
	push    {r4,lr}
	mov     r4, #0x1
	cmp     r1, #0x0
	beq     branch_222f422
	cmp     r1, #0x1
	beq     branch_222f44e
	cmp     r1, #0x2
	beq     branch_222f468
	b       branch_222f47c
@ 0x222f422

.thumb
branch_222f422: @ 222f422 :thumb
	mov     r1, #0x8
	ldsb    r1, [r0, r1]
	cmp     r1, #0x0
	ble     branch_222f43c
	sub     r1, r1, r2
	cmp     r1, #0x0
	ble     branch_222f436
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f47c
@ 0x222f436

.thumb
branch_222f436: @ 222f436 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x8]
	b       branch_222f47c
@ 0x222f43c

.thumb
branch_222f43c: @ 222f43c :thumb
	bge     branch_222f47c
	add     r1, r1, r2
	bpl     branch_222f448
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f47c
@ 0x222f448

.thumb
branch_222f448: @ 222f448 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x8]
	b       branch_222f47c
@ 0x222f44e

.thumb
branch_222f44e: @ 222f44e :thumb
	mov     r3, #0x8
	ldsb    r1, [r0, r3]
	sub     r2, r1, r2
	mov     r1, r3
	sub     r1, #0x18
	cmp     r2, r1
	ble     branch_222f462
	strb    r2, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f47c
@ 0x222f462

.thumb
branch_222f462: @ 222f462 :thumb
	sub     r3, #0x18
	strb    r3, [r0, #0x8]
	b       branch_222f47c
@ 0x222f468

.thumb
branch_222f468: @ 222f468 :thumb
	mov     r1, #0x8
	ldsb    r1, [r0, r1]
	add     r1, r1, r2
	cmp     r1, #0x10
	bge     branch_222f478
	strb    r1, [r0, #0x8]
	mov     r4, #0x0
	b       branch_222f47c
@ 0x222f478

.thumb
branch_222f478: @ 222f478 :thumb
	mov     r1, #0x10
	strb    r1, [r0, #0x8]
.thumb
branch_222f47c: @ 222f47c :thumb
	bl      Function_222f348
	mov     r0, r4
	pop     {r4,pc}
@ 0x222f484

.thumb
Function_222f484: @ 222f484 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	strb    r1, [r4, #0x8]
	bl      Function_222f378
	mov     r0, r4
	bl      Function_222e398
	mov     r0, r4
	bl      Function_222e6f8
	mov     r0, r4
	bl      Function_222e814
	mov     r0, r4
	bl      Function_222e5b4
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	pop     {r4,pc}
@ 0x222f4ba


.align 2, 0


.thumb
Function_222f4bc: @ 222f4bc :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x9
	bls     branch_222f4c8
	b       branch_222f72c
@ 0x222f4c8

.thumb
branch_222f4c8: @ 222f4c8 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x222f4d4

Jumppoints_222f4d4:
.hword branch_222f4e8 - Jumppoints_222f4d4 - 2
.hword branch_222f4f4 - Jumppoints_222f4d4 - 2
.hword branch_222f50a - Jumppoints_222f4d4 - 2
.hword branch_222f56e - Jumppoints_222f4d4 - 2
.hword branch_222f596 - Jumppoints_222f4d4 - 2
.hword branch_222f5ec - Jumppoints_222f4d4 - 2
.hword branch_222f60a - Jumppoints_222f4d4 - 2
.hword branch_222f692 - Jumppoints_222f4d4 - 2
.hword branch_222f704 - Jumppoints_222f4d4 - 2
.hword branch_222f718 - Jumppoints_222f4d4 - 2
.thumb
branch_222f4e8: @ 222f4e8 :thumb
	mov     r0, r4
	bl      Function_222f484
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f4f4

.thumb
branch_222f4f4: @ 222f4f4 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_222f39c
	cmp     r0, #0x0
	bne     branch_222f504
	b       branch_222f740
@ 0x222f504

.thumb
branch_222f504: @ 222f504 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f50a

.thumb
branch_222f50a: @ 222f50a :thumb
	mov     r5, #0x0
	mov     r6, #0x1
	mov     r0, r5
	mov     r1, r4
	mov     r3, r5
.thumb
branch_222f514: @ 222f514 :thumb
	mov     r2, r1
	add     r2, #0x90
	ldr     r2, [r2, #0x0]
	cmp     r2, #0x0
	beq     branch_222f522
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_222f524
@ 0x222f522

.thumb
branch_222f522: @ 222f522 :thumb
	mov     r6, r3
.thumb
branch_222f524: @ 222f524 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x4c
	cmp     r0, #0x50
	blt     branch_222f514
	cmp     r5, #0x32
	ble     branch_222f53c
	ldr     r0, [pc, #0x214] @ 0x222f748, (=0x3014)
	mov     r1, #0x4
	ldr     r0, [r4, r0]
	bl      0x2021dcc
	b       branch_222f55a
@ 0x222f53c

.thumb
branch_222f53c: @ 222f53c :thumb
	cmp     r5, #0x1e
	ble     branch_222f54c
	ldr     r0, [pc, #0x204] @ 0x222f748, (=0x3014)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2021dcc
	b       branch_222f55a
@ 0x222f54c

.thumb
branch_222f54c: @ 222f54c :thumb
	cmp     r5, #0x7
	ble     branch_222f55a
	ldr     r0, [pc, #0x1f4] @ 0x222f748, (=0x3014)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cac
.thumb
branch_222f55a: @ 222f55a :thumb
	cmp     r6, #0x0
	bne     branch_222f562
	cmp     r5, #0x4f
	bne     branch_222f618
.thumb
branch_222f562: @ 222f562 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_222e7b4
	b       branch_222f740
@ 0x222f56e

.thumb
branch_222f56e: @ 222f56e :thumb
	ldr     r0, [pc, #0x1dc] @ 0x222f74c, (=0x30a0)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2
	bne     branch_222f618
	mov     r0, r4
	bl      Function_222e734
	mov     r0, r4
	bl      Function_222ea68
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	bl      Function_222f388
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f596

.thumb
branch_222f596: @ 222f596 :thumb
	mov     r5, #0x0
	mov     r6, #0x1
	mov     r1, r5
	mov     r2, r4
	mov     r0, r5
.thumb
branch_222f5a0: @ 222f5a0 :thumb
	mov     r3, r2
	add     r3, #0x94
	ldr     r3, [r3, #0x0]
	cmp     r3, #0x0
	beq     branch_222f5ba
	mov     r3, r2
	add     r3, #0x90
	ldr     r3, [r3, #0x0]
	cmp     r3, #0x0
	beq     branch_222f5b8
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_222f5ba
@ 0x222f5b8

.thumb
branch_222f5b8: @ 222f5b8 :thumb
	mov     r6, r0
.thumb
branch_222f5ba: @ 222f5ba :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0x4c
	cmp     r1, #0x50
	blt     branch_222f5a0
	mov     r1, #0x2
	mov     r0, r4
	mov     r2, r1
	bl      Function_222f410
	cmp     r6, #0x0
	bne     branch_222f5d4
	cmp     r5, #0x13
	bne     branch_222f618
.thumb
branch_222f5d4: @ 222f5d4 :thumb
	ldr     r0, [pc, #0x178] @ 0x222f750, (=0x61b)
	bl      0x2005748
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_222e7b4
	mov     r0, r4
	bl      Function_222e60c
	b       branch_222f740
@ 0x222f5ec

.thumb
branch_222f5ec: @ 222f5ec :thumb
	mov     r1, #0x2
	mov     r0, r4
	mov     r2, r1
	bl      Function_222f410
	cmp     r0, #0x0
	beq     branch_222f618
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_222f410
	mov     r0, #0x6
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f60a

.thumb
branch_222f60a: @ 222f60a :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_222f410
	cmp     r0, #0x0
	bne     branch_222f61a
.thumb
branch_222f618: @ 222f618 :thumb
	b       branch_222f740
@ 0x222f61a

.thumb
branch_222f61a: @ 222f61a :thumb
	ldr     r0, [pc, #0x12c] @ 0x222f748, (=0x3014)
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r5, r0
	ldr     r0, [pc, #0x12c] @ 0x222f754, (=0x3060)
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r1, #0xe
	ldr     r2, [r5, #0x4]
	lsl     r1, r1, #16
	cmp     r2, r1
	bge     branch_222f63e
	mov     r1, #0x2
	lsl     r1, r1, #14
	add     r1, r2, r1
	str     r1, [r5, #0x4]
.thumb
branch_222f63e: @ 222f63e :thumb
	mov     r1, #0x3
	ldr     r2, [r5, #0x4]
	lsl     r1, r1, #18
	sub     r2, r2, r1
	cmp     r2, #0x0
	ble     branch_222f740
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #1
	cmp     r2, r1
	bge     branch_222f672
	mov     r1, #0x2
	lsl     r1, r1, #14
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0xf8] @ 0x222f754, (=0x3060)
	ldr     r0, [r4, r0]
	bl      0x2021d34
	cmp     r0, #0x0
	bne     branch_222f740
	ldr     r0, [pc, #0xec] @ 0x222f754, (=0x3060)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cac
	b       branch_222f740
@ 0x222f672

.thumb
branch_222f672: @ 222f672 :thumb
	mov     r0, #0x7
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_222e664
	mov     r0, r4
	bl      Function_222e77c
	mov     r0, r4
	bl      Function_222ebd0
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	b       branch_222f740
@ 0x222f692

.thumb
branch_222f692: @ 222f692 :thumb
	mov     r5, #0x0
	ldr     r0, [pc, #0xc0] @ 0x222f758, (=0x1850)
	mov     r6, #0x1
	mov     r2, r5
	mov     r3, r4
	mov     r7, r5
.thumb
branch_222f69e: @ 222f69e :thumb
	ldr     r1, [r3, r0]
	cmp     r1, #0x0
	beq     branch_222f6a8
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_222f6aa
@ 0x222f6a8

.thumb
branch_222f6a8: @ 222f6a8 :thumb
	mov     r6, r7
.thumb
branch_222f6aa: @ 222f6aa :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x4c
	cmp     r2, #0x50
	blt     branch_222f69e
	cmp     r5, #0x7
	ble     branch_222f6c0
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_222f39c
.thumb
branch_222f6c0: @ 222f6c0 :thumb
	cmp     r5, #0x32
	ble     branch_222f6d0
	ldr     r0, [pc, #0x8c] @ 0x222f754, (=0x3060)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      0x2021cac
	b       branch_222f6ee
@ 0x222f6d0

.thumb
branch_222f6d0: @ 222f6d0 :thumb
	cmp     r5, #0x1e
	ble     branch_222f6e0
	ldr     r0, [pc, #0x7c] @ 0x222f754, (=0x3060)
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	bl      0x2021dcc
	b       branch_222f6ee
@ 0x222f6e0

.thumb
branch_222f6e0: @ 222f6e0 :thumb
	cmp     r5, #0x7
	ble     branch_222f6ee
	ldr     r0, [pc, #0x6c] @ 0x222f754, (=0x3060)
	mov     r1, #0x3
	ldr     r0, [r4, r0]
	bl      0x2021dcc
.thumb
branch_222f6ee: @ 222f6ee :thumb
	cmp     r6, #0x0
	beq     branch_222f740
	mov     r0, #0x8
	str     r0, [r4, #0x0]
	mov     r0, r4
	bl      Function_222e7e4
	mov     r0, r4
	bl      Function_222e67c
	b       branch_222f740
@ 0x222f704

.thumb
branch_222f704: @ 222f704 :thumb
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_222f39c
	cmp     r0, #0x0
	beq     branch_222f740
	mov     r0, #0x9
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f718

.thumb
branch_222f718: @ 222f718 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_222f39c
	cmp     r0, #0x0
	beq     branch_222f740
	mov     r0, #0xff
	str     r0, [r4, #0x0]
	b       branch_222f740
@ 0x222f72c

.thumb
branch_222f72c: @ 222f72c :thumb
	ldr     r1, [pc, #0x1c] @ 0x222f74c, (=0x30a0)
	mov     r2, #0x0
	ldr     r1, [r4, r1]
	str     r2, [r1, #0x0]
	bl      0x200da58
	mov     r0, r4
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x222f740

.thumb
branch_222f740: @ 222f740 :thumb
	mov     r0, r4
	bl      Function_222e694
	pop     {r3-r7,pc}
@ 0x222f748

.word 0x3014 @ 0x222f748
.word 0x30a0 @ 0x222f74c
.word 0x61b @ 0x222f750
.word 0x3060 @ 0x222f754
.word 0x1850 @ 0x222f758
.thumb
Function_222f75c: @ 222f75c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	blx 0x20d0a04
	ldr     r0, [pc, #0x340] @ 0x222fab0, (=0x5c8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1d
	beq     branch_222f77c
	mov     r0, r4
	bl      Function_2230224
.thumb
branch_222f77c: @ 222f77c :thumb
	ldr     r3, [r5, #0x0]
	cmp     r3, #0x39
	bls     branch_222f786
	bl      branch_2230164
.thumb
branch_222f786: @ 222f786 :thumb
	add     r0, r3, r3
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x222f792

Jumppoints_222f792:
.hword branch_222f806 - Jumppoints_222f792 - 2
.hword branch_222f818 - Jumppoints_222f792 - 2
.hword branch_222f836 - Jumppoints_222f792 - 2
.hword branch_222f840 - Jumppoints_222f792 - 2
.hword branch_222f84e - Jumppoints_222f792 - 2
.hword branch_222f85c - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_222faa4 - Jumppoints_222f792 - 2
.hword branch_222fb8c - Jumppoints_222f792 - 2
.hword branch_222fb98 - Jumppoints_222f792 - 2
.hword branch_222fc58 - Jumppoints_222f792 - 2
.hword branch_222fca6 - Jumppoints_222f792 - 2
.hword branch_222fcc8 - Jumppoints_222f792 - 2
.hword branch_222fd58 - Jumppoints_222f792 - 2
.hword branch_222fdae - Jumppoints_222f792 - 2
.hword branch_222fdda - Jumppoints_222f792 - 2
.hword branch_222fe1a - Jumppoints_222f792 - 2
.hword branch_222fe3c - Jumppoints_222f792 - 2
.hword branch_222fe74 - Jumppoints_222f792 - 2
.hword branch_222feb8 - Jumppoints_222f792 - 2
.hword branch_222ff5a - Jumppoints_222f792 - 2
.hword branch_222ff66 - Jumppoints_222f792 - 2
.hword branch_222ff6c - Jumppoints_222f792 - 2
.hword branch_222ffa2 - Jumppoints_222f792 - 2
.hword branch_222ffbc - Jumppoints_222f792 - 2
.hword branch_2230034 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_222f86a - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_222f928 - Jumppoints_222f792 - 2
.hword branch_222f876 - Jumppoints_222f792 - 2
.hword branch_222f93c - Jumppoints_222f792 - 2
.hword branch_222f9de - Jumppoints_222f792 - 2
.hword branch_222f9bc - Jumppoints_222f792 - 2
.hword branch_222fa80 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230164 - Jumppoints_222f792 - 2
.hword branch_2230050 - Jumppoints_222f792 - 2
.hword branch_2230074 - Jumppoints_222f792 - 2
.hword branch_2230082 - Jumppoints_222f792 - 2
.hword branch_223009e - Jumppoints_222f792 - 2
.hword branch_22300b4 - Jumppoints_222f792 - 2
.hword branch_22300c8 - Jumppoints_222f792 - 2
.hword branch_22300da - Jumppoints_222f792 - 2
.hword branch_223011c - Jumppoints_222f792 - 2
.hword branch_223015e - Jumppoints_222f792 - 2
.thumb
branch_222f806: @ 222f806 :thumb
	mov     r0, #0x56
	bl      Function_2237694
	ldr     r0, [pc, #0x2a4] @ 0x222fab4, (=0x15d8)
	str     r5, [r4, r0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	bl      branch_2230164
.thumb
branch_222f818: @ 222f818 :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_222dfd4
	mov     r0, r4
	bl      Function_222d3e8
	mov     r0, #0x1
	mov     r1, #0x3
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_2237790
	bl      branch_2230164
.thumb
branch_222f836: @ 222f836 :thumb
	mov     r0, r5
	bl      Function_22377f0
	bl      branch_2230164
.thumb
branch_222f840: @ 222f840 :thumb
	ldr     r2, [pc, #0x274] @ 0x222fab8, (=0x222db41)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	bl      branch_2230164
.thumb
branch_222f84e: @ 222f84e :thumb
	ldr     r2, [pc, #0x26c] @ 0x222fabc, (=0x222da65)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	bl      branch_2230164
.thumb
branch_222f85c: @ 222f85c :thumb
	ldr     r2, [pc, #0x260] @ 0x222fac0, (=0x222d75d)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	bl      branch_2230164
.thumb
branch_222f86a: @ 222f86a :thumb
	mov     r0, r6
	mov     r1, r5
	bl      Function_222e080
	bl      branch_2230164
.thumb
branch_222f876: @ 222f876 :thumb
	mov     r0, r4
	bl      Function_22302f4
	ldr     r0, [pc, #0x244] @ 0x222fac4, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2d
	bne     branch_222f90e
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, r6
	bl      Function_222d55c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8c
	bl      Function_2232148
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222f8ba
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x31
	str     r0, [r5, #0x0]
	b       branch_222f90e
@ 0x222f8ba

.thumb
branch_222f8ba: @ 222f8ba :thumb
	mov     r0, r4
	add     r0, #0x58
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222f8e8
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x71
	mov     r1, r4
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x58
	mov     r3, #0x3
	bl      0x201a7e8
.thumb
branch_222f8e8: @ 222f8e8 :thumb
	bl      Function_2238d54
	mov     r1, r4
	mov     r2, r0
	mov     r0, r6
	add     r1, #0x58
	bl      Function_222df10
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x4
	bl      Function_222de78
	mov     r0, r6
	bl      Function_222d8f4
	mov     r0, #0x1f
	str     r0, [r5, #0x0]
.thumb
branch_222f90e: @ 222f90e :thumb
	ldr     r0, [pc, #0x1b4] @ 0x222fac4, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	sub     r0, #0x2e
	cmp     r0, #0x1
	bls     branch_222f91c
	bl      branch_2230164
.thumb
branch_222f91c: @ 222f91c :thumb
	bl      Function_22302d4
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	bl      branch_2230164
.thumb
branch_222f928: @ 222f928 :thumb
	ldr     r2, [pc, #0x19c] @ 0x222fac8, (=0x222d9f1)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	mov     r0, r4
	bl      Function_22302f4
	bl      branch_2230164
.thumb
branch_222f93c: @ 222f93c :thumb
	mov     r0, r6
	bl      Function_222d55c
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d40c
	mov     r0, r7
	bl      Function_222d5c8
	cmp     r0, #0x1
	bne     branch_222f9a8
	mov     r0, r6
	bl      Function_222d658
	ldr     r0, [pc, #0x164] @ 0x222facc, (=0x29f4)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, r4
	.hword  0x1e89 @ sub r1, r1, #0x2
	bl      Function_222d40c
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	ldr     r1, [pc, #0x150] @ 0x222fad0, (=0x30a4)
	mov     r0, #0x56
	bl      0x2018144
	ldr     r2, [pc, #0x148] @ 0x222fad0, (=0x30a4)
	mov     r1, #0x0
	mov     r6, r0
	blx 0x20d5124
	ldr     r0, [pc, #0x13c] @ 0x222facc, (=0x29f4)
	add     r1, r4, r0
	ldr     r0, [pc, #0x140] @ 0x222fad4, (=0x30a0)
	str     r1, [r6, r0]
	bl      Function_2237aec
	str     r0, [r6, #0xc]
	ldr     r0, [pc, #0x138] @ 0x222fad8, (=0x222f4bd)
	mov     r1, r6
	mov     r2, #0x5
	bl      0x200d9e8
	b       branch_222f9b6
@ 0x222f9a8

.thumb
branch_222f9a8: @ 222f9a8 :thumb
	ldr     r0, [r4, #0x0]
	mov     r1, r7
	bl      Function_2238194
	mov     r0, r6
	bl      Function_222d658
.thumb
branch_222f9b6: @ 222f9b6 :thumb
	mov     r0, #0x22
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222f9bc

.thumb
branch_222f9bc: @ 222f9bc :thumb
	ldr     r0, [pc, #0x10c] @ 0x222facc, (=0x29f4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222fa4a
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x8
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	b       branch_2230164
@ 0x222f9de

.thumb
branch_222f9de: @ 222f9de :thumb
	bl      Function_2238528
	mov     r7, r0
	cmp     r7, #0x4
	bne     branch_222f9ec
	bl      Function_22384f4
.thumb
branch_222f9ec: @ 222f9ec :thumb
	cmp     r7, #0x2
	bne     branch_222fa46
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, r4
	add     r0, #0x18
	mov     r1, #0x0
	bl      Function_222d45c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r6, r4
	add     r6, #0xdc
	mov     r0, r6
	bl      Function_222d5c8
	cmp     r0, #0x1
	bne     branch_222fa3a
	ldr     r0, [r4, #0x0]
	mov     r1, r6
	bl      Function_2238194
	ldr     r0, [pc, #0x98] @ 0x222facc, (=0x29f4)
	mov     r1, #0x2
	str     r1, [r4, r0]
	b       branch_222fa40
@ 0x222fa3a

.thumb
branch_222fa3a: @ 222fa3a :thumb
	ldr     r0, [pc, #0xa0] @ 0x222fadc, (=0x624)
	bl      0x2005748
.thumb
branch_222fa40: @ 222fa40 :thumb
	mov     r0, #0x23
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fa46

.thumb
branch_222fa46: @ 222fa46 :thumb
	cmp     r7, #0x3
	beq     branch_222fa4c
.thumb
branch_222fa4a: @ 222fa4a :thumb
	b       branch_2230164
@ 0x222fa4c

.thumb
branch_222fa4c: @ 222fa4c :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	mov     r2, #0x1a
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fa80

.thumb
branch_222fa80: @ 222fa80 :thumb
	mov     r0, r4
	bl      Function_22302f4
	ldr     r0, [pc, #0x3c] @ 0x222fac4, (=0x223f1a8)
	ldr     r1, [r0, #0x0]
	mov     r0, r1
	sub     r0, #0x2d
	cmp     r0, #0x2
	bhi     branch_222fb74
	cmp     r1, #0x2f
	bne     branch_222fa9a
	bl      Function_22302d4
.thumb
branch_222fa9a: @ 222fa9a :thumb
	mov     r0, r6
	bl      Function_222d94c
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222faa4

.thumb
branch_222faa4: @ 222faa4 :thumb
	mov     r0, r4
	bl      Function_222d250
	ldr     r1, [pc, #0x34] @ 0x222fae0, (=0x438)
	b       branch_222fae4
@ 0x222faae


.align 2


.word 0x5c8 @ 0x222fab0
.word 0x15d8 @ 0x222fab4
.word Function_222db40+1 @ =0x222db41, 0x222fab8
.word Function_222da64+1 @ =0x222da65, 0x222fabc
.word Function_222d75c+1 @ =0x222d75d, 0x222fac0
.word 0x223f1a8 @ 0x222fac4
.word Function_222d9f0+1 @ =0x222d9f1, 0x222fac8
.word 0x29f4 @ 0x222facc
.word 0x30a4 @ 0x222fad0
.word 0x30a0 @ 0x222fad4
.word 0x222f4bd @ 0x222fad8
.word 0x624 @ 0x222fadc
.word 0x438 @ 0x222fae0
.thumb
branch_222fae4: @ 222fae4 :thumb
	str     r0, [r4, r1]
	mov     r0, #0x0
	ldr     r1, [r4, r1]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_222fb5c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8c
	bl      Function_2232148
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x58
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222fb36
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x71
	mov     r1, r4
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x58
	mov     r3, #0x3
	bl      0x201a7e8
.thumb
branch_222fb36: @ 222fb36 :thumb
	mov     r1, r4
	mov     r2, r4
	mov     r0, r6
	add     r1, #0x58
	add     r2, #0x8c
	bl      Function_222df10
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x4
	bl      Function_222de78
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_222d6f8
	mov     r0, #0x8
	str     r0, [r5, #0x0]
.thumb
branch_222fb5c: @ 222fb5c :thumb
	ldr     r0, [pc, #0x324] @ 0x222fe84, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_222fb76
	ldr     r0, [pc, #0x320] @ 0x222fe88, (=0x434)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_222fb76
.thumb
branch_222fb74: @ 222fb74 :thumb
	b       branch_2230164
@ 0x222fb76

.thumb
branch_222fb76: @ 222fb76 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	bl      Function_222d2dc
	bl      0x2039794
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fb8c

.thumb
branch_222fb8c: @ 222fb8c :thumb
	ldr     r2, [pc, #0x2fc] @ 0x222fe8c, (=0x222d94d)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	b       branch_2230164
@ 0x222fb98

.thumb
branch_222fb98: @ 222fb98 :thumb
	bl      0x203608c
	mov     r7, r0
	beq     branch_222fbf0
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	bl      0x2035d78
	cmp     r0, #0x0
	beq     branch_222fbf0
	mov     r0, #0xab
	bl      0x2036540
	cmp     r0, #0x1
	bne     branch_222fc20
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x20388f4
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x7
	bl      Function_222de78
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d40c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	mov     r1, #0x96
	ldr     r0, [pc, #0x2a0] @ 0x222fe88, (=0x434)
	lsl     r1, r1, #2
	str     r1, [r4, r0]
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_222fc20
@ 0x222fbf0

.thumb
branch_222fbf0: @ 222fbf0 :thumb
	cmp     r7, #0x0
	beq     branch_222fc20
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	bl      0x2035d78
	cmp     r0, #0x0
	bne     branch_222fc20
	bl      Function_222d2dc
	bl      0x2039794
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x10
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fc20

.thumb
branch_222fc20: @ 222fc20 :thumb
	ldr     r0, [pc, #0x260] @ 0x222fe84, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_222fc38
	ldr     r0, [pc, #0x25c] @ 0x222fe88, (=0x434)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222fd28
.thumb
branch_222fc38: @ 222fc38 :thumb
	bl      Function_222d2dc
	bl      0x2039794
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fc58

.thumb
branch_222fc58: @ 222fc58 :thumb
	bl      Function_222d2a0
	cmp     r0, #0x0
	beq     branch_222fc64
	mov     r0, #0xb
	str     r0, [r5, #0x0]
.thumb
branch_222fc64: @ 222fc64 :thumb
	bl      0x203608c
	ldr     r1, [pc, #0x218] @ 0x222fe84, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	bne     branch_222fc90
	ldr     r1, [pc, #0x214] @ 0x222fe88, (=0x434)
	ldr     r2, [r4, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r4, r1]
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_222fc90
	cmp     r0, #0x0
	beq     branch_222fd28
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x2035d78
	cmp     r0, #0x0
	bne     branch_222fd28
.thumb
branch_222fc90: @ 222fc90 :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	bl      Function_222d2dc
	bl      0x2039794
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fca6

.thumb
branch_222fca6: @ 222fca6 :thumb
	mov     r0, r6
	bl      Function_222d55c
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2238194
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20388f4
	mov     r0, r6
	bl      Function_222d658
	mov     r0, #0xc
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fcc8

.thumb
branch_222fcc8: @ 222fcc8 :thumb
	bl      0x203608c
	cmp     r0, #0x0
	beq     branch_222fd06
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x2035d78
	cmp     r0, #0x0
	bne     branch_222fd06
	bl      Function_222d2dc
	ldr     r0, [pc, #0x1ac] @ 0x222fe90, (=0x29ec)
	mov     r1, #0x1
	str     r1, [r4, r0]
	bl      Function_223850c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	bl      0x2039794
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fd06

.thumb
branch_222fd06: @ 222fd06 :thumb
	bl      Function_2238528
	cmp     r0, #0x4
	bne     branch_222fd20
	mov     r0, #0x93
	bl      0x20364f0
	mov     r0, #0xd
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x178] @ 0x222fe94, (=0x43c)
	mov     r1, #0x78
	str     r1, [r4, r0]
	b       branch_2230164
@ 0x222fd20

.thumb
branch_222fd20: @ 222fd20 :thumb
	bl      Function_2238528
	cmp     r0, #0x3
	beq     branch_222fd2a
.thumb
branch_222fd28: @ 222fd28 :thumb
	b       branch_2230164
@ 0x222fd2a

.thumb
branch_222fd2a: @ 222fd2a :thumb
	bl      Function_223850c
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x1a
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fd58

.thumb
branch_222fd58: @ 222fd58 :thumb
	mov     r0, #0x93
	bl      0x2036540
	cmp     r0, #0x1
	bne     branch_222fd72
	bl      Function_22384f4
	ldr     r0, [pc, #0x12c] @ 0x222fe94, (=0x43c)
	mov     r1, #0xa
	str     r1, [r4, r0]
	mov     r0, #0xf
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fd72

.thumb
branch_222fd72: @ 222fd72 :thumb
	ldr     r0, [pc, #0x120] @ 0x222fe94, (=0x43c)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222fe7c
	bl      Function_223850c
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x1a
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fdae

.thumb
branch_222fdae: @ 222fdae :thumb
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	mov     r2, #0x1c
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fdda

.thumb
branch_222fdda: @ 222fdda :thumb
	ldr     r0, [pc, #0xb8] @ 0x222fe94, (=0x43c)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_222fe7c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	bl      Function_222d2dc
	bl      0x2039794
	ldr     r0, [pc, #0x9c] @ 0x222fe98, (=0x624)
	bl      0x2005748
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x8
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fe1a

.thumb
branch_222fe1a: @ 222fe1a :thumb
	ldr     r0, [pc, #0x80] @ 0x222fe9c, (=0x5dc)
	bl      0x2005748
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x18
	bl      Function_222de78
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, #0x12
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fe3c

.thumb
branch_222fe3c: @ 222fe3c :thumb
	ldr     r0, [pc, #0x60] @ 0x222fea0, (=0x15dc)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_222fe4a
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_2230164
@ 0x222fe4a

.thumb
branch_222fe4a: @ 222fe4a :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	ldr     r0, [pc, #0x48] @ 0x222fe9c, (=0x5dc)
	bl      0x2005748
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x17
	bl      Function_222de78
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, #0x12
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222fe74

.thumb
branch_222fe74: @ 222fe74 :thumb
	ldr     r0, [pc, #0xc] @ 0x222fe84, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	bne     branch_222fe7e
.thumb
branch_222fe7c: @ 222fe7c :thumb
	b       branch_2230164
@ 0x222fe7e

.thumb
branch_222fe7e: @ 222fe7e :thumb
	ldr     r0, [pc, #0x1c] @ 0x222fe9c, (=0x5dc)
	b       branch_222fea4
@ 0x222fe82


.align 2


.word 0x21bf67c @ 0x222fe84
.word 0x434 @ 0x222fe88
.word Function_222d94c+1 @ =0x222d94d, 0x222fe8c
.word 0x29ec @ 0x222fe90
.word 0x43c @ 0x222fe94
.word 0x624 @ 0x222fe98
.word 0x5dc @ 0x222fe9c
.word 0x15dc @ 0x222fea0
.thumb
branch_222fea4: @ 222fea4 :thumb
	bl      0x2005748
	mov     r0, r6
	mov     r1, #0xc4
	mov     r2, #0x0
	bl      Function_222ddd0
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222feb8

.thumb
branch_222feb8: @ 222feb8 :thumb
	ldr     r0, [pc, #0x2c4] @ 0x2230180, (=0x15dc)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_222fec6
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_2230164
@ 0x222fec6

.thumb
branch_222fec6: @ 222fec6 :thumb
	mov     r0, r4
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1b
	beq     branch_222fedc
	mov     r0, r4
	mov     r1, #0xea
	add     r0, #0x8c
	lsl     r1, r1, #2
	bl      Function_223764c
.thumb
branch_222fedc: @ 222fedc :thumb
	mov     r1, r4
	ldr     r0, [r4, #0x4]
	add     r1, #0x8c
	bl      Function_2232148
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_222ff04
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r0, #0x31
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222ff04

.thumb
branch_222ff04: @ 222ff04 :thumb
	mov     r0, r4
	add     r0, #0x58
	bl      0x201a7cc
	cmp     r0, #0x0
	bne     branch_222ff32
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x71
	mov     r1, r4
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x0]
	add     r1, #0x58
	mov     r3, #0x3
	bl      0x201a7e8
.thumb
branch_222ff32: @ 222ff32 :thumb
	mov     r1, r4
	mov     r2, r4
	mov     r0, r6
	add     r1, #0x58
	add     r2, #0x8c
	bl      Function_222df10
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x4
	bl      Function_222de78
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_222d6f8
	mov     r0, #0x14
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222ff5a

.thumb
branch_222ff5a: @ 222ff5a :thumb
	ldr     r2, [pc, #0x228] @ 0x2230184, (=0x222d94d)
	mov     r0, r6
	mov     r1, r5
	bl      Function_222df70
	b       branch_2230164
@ 0x222ff66

.thumb
branch_222ff66: @ 222ff66 :thumb
	mov     r0, #0x16
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222ff6c

.thumb
branch_222ff6c: @ 222ff6c :thumb
	mov     r0, r6
	bl      Function_222d55c
	mov     r1, r0
	ldr     r0, [r4, #0x0]
	bl      Function_2238194
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x7
	bl      Function_222de78
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d40c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_222d30c
	ldr     r0, [pc, #0x1f0] @ 0x2230188, (=0x43c)
	mov     r1, #0x3c
	str     r1, [r4, r0]
	mov     r0, #0x17
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222ffa2

.thumb
branch_222ffa2: @ 222ffa2 :thumb
	ldr     r0, [pc, #0x1e4] @ 0x2230188, (=0x43c)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2230042
	mov     r0, r6
	bl      Function_222d658
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x222ffbc

.thumb
branch_222ffbc: @ 222ffbc :thumb
	bl      Function_2238528
	cmp     r0, #0x4
	bne     branch_222ffc8
	bl      Function_22384f4
.thumb
branch_222ffc8: @ 222ffc8 :thumb
	bl      Function_2238528
	cmp     r0, #0x2
	bne     branch_2230000
	ldr     r0, [pc, #0x1b4] @ 0x2230188, (=0x43c)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_222d30c
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	ldr     r0, [pc, #0x1a0] @ 0x223018c, (=0x624)
	bl      0x2005748
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r2, #0x8
	mov     r3, #0x19
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x2230000

.thumb
branch_2230000: @ 2230000 :thumb
	bl      Function_2238528
	cmp     r0, #0x3
	bne     branch_2230042
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_222d40c
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	mov     r2, #0x1a
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	mov     r1, r4
	mov     r0, r6
	add     r1, #0x18
	mov     r3, #0x37
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x2230034

.thumb
branch_2230034: @ 2230034 :thumb
	ldr     r0, [pc, #0x150] @ 0x2230188, (=0x43c)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2230044
.thumb
branch_2230042: @ 2230042 :thumb
	b       branch_2230164
@ 0x2230044

.thumb
branch_2230044: @ 2230044 :thumb
	mov     r1, #0x1
	lsl     r1, r1, #16
	str     r1, [r4, r0]
	mov     r0, #0x37
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x2230050

.thumb
branch_2230050: @ 2230050 :thumb
	mov     r0, r4
	add     r0, #0x80
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x5
	beq     branch_2230060
	mov     r0, r4
	bl      Function_222e2ac
.thumb
branch_2230060: @ 2230060 :thumb
	mov     r0, r6
	bl      Function_222e1d8
	str     r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_222d444
	b       branch_2230164
@ 0x2230074

.thumb
branch_2230074: @ 2230074 :thumb
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      Function_222e228
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x2230082

.thumb
branch_2230082: @ 2230082 :thumb
	ldr     r0, [pc, #0x10c] @ 0x2230190, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2230164
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_222d444
	mov     r0, r6
	bl      Function_222da64
	str     r0, [r5, #0x0]
	b       branch_2230164
@ 0x223009e

.thumb
branch_223009e: @ 223009e :thumb
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_222d6f8
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0x80
	str     r1, [r0, #0x0]
	b       branch_2230164
@ 0x22300b4

.thumb
branch_22300b4: @ 22300b4 :thumb
	mov     r0, r6
	bl      Function_222d34c
	mov     r0, #0x11
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x22300c8

.thumb
branch_22300c8: @ 22300c8 :thumb
	mov     r0, r6
	bl      Function_222d34c
	mov     r1, #0x11
	mov     r0, #0x1
	lsl     r1, r1, #6
	add     sp, #0x14
	str     r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x22300da

.thumb
branch_22300da: @ 22300da :thumb
	ldr     r0, [pc, #0xb4] @ 0x2230190, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2230164
	ldr     r0, [pc, #0xb0] @ 0x2230194, (=0x5dc)
	bl      0x2005748
	mov     r0, r4
	add     r0, #0xda
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_2230106
	ldr     r2, [pc, #0xa0] @ 0x2230198, (=0x15d8)
	mov     r0, #0x0
	ldr     r2, [r4, r2]
	mov     r1, #0x38
	mov     r3, #0x2
	bl      Function_2237790
	b       branch_2230164
@ 0x2230106

.thumb
branch_2230106: @ 2230106 :thumb
	mov     r0, #0x1
	bl      Function_2237784
	ldr     r2, [pc, #0x88] @ 0x2230198, (=0x15d8)
	mov     r0, #0x0
	ldr     r2, [r4, r2]
	mov     r1, #0x39
	mov     r3, #0x2
	bl      Function_2237790
	b       branch_2230164
@ 0x223011c

.thumb
branch_223011c: @ 223011c :thumb
	ldr     r0, [r4, #0x0]
	bl      Function_222dc20
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	mov     r1, r4
	ldr     r0, [r4, #0x0]
	add     r1, #0xdc
	mov     r2, #0x56
	bl      Function_2231ffc
	ldr     r2, [pc, #0x58] @ 0x2230198, (=0x15d8)
	mov     r0, #0x1
	ldr     r2, [r4, r2]
	mov     r1, #0x37
	mov     r3, #0x2
	bl      Function_2237790
	mov     r0, r4
	add     r0, #0xda
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x4
	bic     r1, r0
	mov     r0, r4
	add     r0, #0xda
	strb    r1, [r0, #0x0]
	b       branch_2230164
@ 0x223015e

.thumb
branch_223015e: @ 223015e :thumb
	mov     r0, #0x0
	blx 0x20c3ee4
.thumb
branch_2230164: @ 2230164 :thumb
	ldr     r0, [pc, #0x34] @ 0x223019c, (=0x29e8)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2230170
	mov     r0, r4
	blx     r1
.thumb
branch_2230170: @ 2230170 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22301a0, (=0x29f4)
	ldr     r0, [r4, r0]
	bl      Function_2237cac
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223017e


.align 2


.word 0x15dc @ 0x2230180
.word Function_222d94c+1 @ =0x222d94d, 0x2230184
.word 0x43c @ 0x2230188
.word 0x624 @ 0x223018c
.word 0x21bf67c @ 0x2230190
.word 0x5dc @ 0x2230194
.word 0x15d8 @ 0x2230198
.word 0x29e8 @ 0x223019c
.word 0x29f4 @ 0x22301a0
.thumb
Function_22301a4: @ 22301a4 :thumb
	ldr     r0, [pc, #0x4] @ 0x22301ac, (=0x223f1a8)
	ldr     r0, [r0, #0x8]
	bx      lr
@ 0x22301aa


.align 2


.word 0x223f1a8 @ 0x22301ac
.thumb
Function_22301b0: @ 22301b0 :thumb
	ldr     r1, [pc, #0x4] @ 0x22301b8, (=0x223f1a8)
	str     r0, [r1, #0x8]
	bx      lr
@ 0x22301b6


.align 2


.word 0x223f1a8 @ 0x22301b8
.thumb
Function_22301bc: @ 22301bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, #0x11
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22301da
	ldr     r0, [pc, #0x3c] @ 0x2230210, (=0x4d)
	ldr     r1, [pc, #0x40] @ 0x2230214, (=0x21d742c)
	bl      0x2000ec4
	b       branch_22301e6
@ 0x22301da

.thumb
branch_22301da: @ 22301da :thumb
	cmp     r0, #0x1
	bne     branch_22301e6
	ldr     r0, [pc, #0x38] @ 0x2230218, (=0x61)
	ldr     r1, [pc, #0x38] @ 0x223021c, (=0x223d7ac)
	bl      0x2000ec4
.thumb
branch_22301e6: @ 22301e6 :thumb
	mov     r0, #0x5b
	bl      0x201807c
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x56
	bl      0x201807c
	ldr     r0, [pc, #0x24] @ 0x2230220, (=0x15d4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x2
	bne     branch_2230206
	mov     r0, #0x0
	bl      0x2017b70
.thumb
branch_2230206: @ 2230206 :thumb
	mov     r0, #0x0
	bl      Function_2238400
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2230210

.word 0x4d @ 0x2230210
.word 0x21d742c @ 0x2230214
.word 0x61 @ 0x2230218
.word 0x223d7ac @ 0x223021c
.word 0x15d4 @ 0x2230220
.thumb
Function_2230224: @ 2230224 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x4c] @ 0x2230278, (=0x5c8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1c
	beq     branch_223023a
	cmp     r0, #0x1d
	beq     branch_2230276
	cmp     r0, #0x1e
	beq     branch_223024e
	pop     {r4,pc}
@ 0x223023a

.thumb
branch_223023a: @ 223023a :thumb
	ldr     r0, [r4, #0x4]
	bl      0x2037d48
	ldr     r0, [pc, #0x38] @ 0x223027c, (=0x5cc)
	mov     r1, #0x78
	str     r1, [r4, r0]
	mov     r1, #0x1e
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x223024e

.thumb
branch_223024e: @ 223024e :thumb
	bl      0x2037da0
	mov     r1, #0x1
	tst     r0, r1
	beq     branch_223025e
	mov     r0, #0x5d
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_223025e: @ 223025e :thumb
	ldr     r0, [pc, #0x1c] @ 0x223027c, (=0x5cc)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2230276
	bl      0x2037d84
	ldr     r0, [pc, #0x4] @ 0x2230278, (=0x5c8)
	mov     r1, #0x1d
	str     r1, [r4, r0]
.thumb
branch_2230276: @ 2230276 :thumb
	pop     {r4,pc}
@ 0x2230278

.word 0x5c8 @ 0x2230278
.word 0x5cc @ 0x223027c
.thumb
Function_2230280: @ 2230280 :thumb
	cmp     r0, #0x4
	bhi     branch_22302cc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230290

Jumppoints_2230290:
.hword branch_223029a - Jumppoints_2230290 - 2
.hword branch_22302a2 - Jumppoints_2230290 - 2
.hword branch_22302aa - Jumppoints_2230290 - 2
.hword branch_22302b2 - Jumppoints_2230290 - 2
.hword branch_22302c6 - Jumppoints_2230290 - 2
.thumb
branch_223029a: @ 223029a :thumb
	ldr     r0, [pc, #0x34] @ 0x22302d0, (=0x223f1a8)
	mov     r1, #0x28
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22302a2

.thumb
branch_22302a2: @ 22302a2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22302d0, (=0x223f1a8)
	mov     r1, #0x29
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22302aa

.thumb
branch_22302aa: @ 22302aa :thumb
	ldr     r0, [pc, #0x24] @ 0x22302d0, (=0x223f1a8)
	mov     r1, #0x2a
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22302b2

.thumb
branch_22302b2: @ 22302b2 :thumb
	ldr     r0, [pc, #0x1c] @ 0x22302d0, (=0x223f1a8)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x2a
	bne     branch_22302c0
	mov     r1, #0x2c
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22302c0

.thumb
branch_22302c0: @ 22302c0 :thumb
	mov     r1, #0x2f
	str     r1, [r0, #0x0]
	bx      lr
@ 0x22302c6

.thumb
branch_22302c6: @ 22302c6 :thumb
	ldr     r0, [pc, #0x8] @ 0x22302d0, (=0x223f1a8)
	mov     r1, #0x30
	str     r1, [r0, #0x0]
.thumb
branch_22302cc: @ 22302cc :thumb
	bx      lr
@ 0x22302ce


.align 2


.word 0x223f1a8 @ 0x22302d0
.thumb
Function_22302d4: @ 22302d4 :thumb
	push    {r3,lr}
	bl      0x20334cc
	ldr     r0, [pc, #0x14] @ 0x22302f0, (=0x223f1a8)
	ldr     r0, [r0, #0x4]
	bl      0x20181c4
	bl      0x2039794
	ldr     r0, [pc, #0x8] @ 0x22302f0, (=0x223f1a8)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	pop     {r3,pc}
@ 0x22302ee


.align 2


.word 0x223f1a8 @ 0x22302f0
.thumb
Function_22302f4: @ 22302f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x104] @ 0x2230400, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x2c
	bne     branch_223031a
	bl      Function_22302d4
	bl      Function_2238ca0
	cmp     r0, #0x0
	beq     branch_2230314
	ldr     r0, [pc, #0xf0] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x2d
	str     r1, [r0, #0x0]
	b       branch_223031a
@ 0x2230314

.thumb
branch_2230314: @ 2230314 :thumb
	ldr     r0, [pc, #0xe8] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x2e
	str     r1, [r0, #0x0]
.thumb
branch_223031a: @ 223031a :thumb
	ldr     r0, [pc, #0xe4] @ 0x2230400, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x25
	beq     branch_2230336
	cmp     r0, #0x26
	beq     branch_2230336
	cmp     r0, #0x27
	beq     branch_2230336
	cmp     r0, #0x28
	beq     branch_2230336
	cmp     r0, #0x29
	beq     branch_2230336
	cmp     r0, #0x2b
	bne     branch_2230342
.thumb
branch_2230336: @ 2230336 :thumb
	blx 0x20ce814
	mov     r1, #0x3
	sub     r0, r1, r0
	bl      0x20397b0
.thumb
branch_2230342: @ 2230342 :thumb
	ldr     r1, [pc, #0xbc] @ 0x2230400, (=0x223f1a8)
	ldr     r0, [r1, #0x0]
	sub     r0, #0x25
	cmp     r0, #0xb
	bhi     branch_22303bc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2230358

Jumppoints_2230358:
.hword branch_2230370 - Jumppoints_2230358 - 2
.hword branch_223037c - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303b2 - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.hword branch_22303ba - Jumppoints_2230358 - 2
.hword branch_22303bc - Jumppoints_2230358 - 2
.thumb
branch_2230370: @ 2230370 :thumb
	bl      0x2033478
	ldr     r0, [pc, #0x88] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x26
	str     r1, [r0, #0x0]
	b       branch_22303bc
@ 0x223037c

.thumb
branch_223037c: @ 223037c :thumb
	bl      0x20334a4
	cmp     r0, #0x1
	bne     branch_22303bc
	ldr     r0, [pc, #0x78] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	bl      Function_2238d4c
	mov     r1, r0
	mov     r0, #0x56
	bl      0x2018144
	mov     r2, r0
	ldr     r0, [pc, #0x64] @ 0x2230400, (=0x223f1a8)
	ldr     r1, [pc, #0x68] @ 0x2230404, (=0x2230281)
	str     r2, [r0, #0x4]
	ldr     r0, [pc, #0x68] @ 0x2230408, (=0x5d4)
	add     r0, r4, r0
	bl      Function_2238a4c
	ldr     r0, [pc, #0x58] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x27
	str     r1, [r0, #0x0]
	bl      0x2039734
	b       branch_22303bc
@ 0x22303b2

.thumb
branch_22303b2: @ 22303b2 :thumb
	ldr     r0, [r1, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0xc]
	b       branch_22303bc
@ 0x22303ba

.thumb
branch_22303ba: @ 22303ba :thumb
	pop     {r4,pc}
@ 0x22303bc

.thumb
branch_22303bc: @ 22303bc :thumb
	ldr     r0, [pc, #0x4c] @ 0x223040c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22303fc
	ldr     r0, [pc, #0x38] @ 0x2230400, (=0x223f1a8)
	ldr     r0, [r0, #0x0]
	sub     r0, #0x28
	cmp     r0, #0x8
	bhi     branch_22303fc
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22303dc

Jumppoints_22303dc:
.hword branch_22303ee - Jumppoints_22303dc - 2
.hword branch_22303ee - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303fc - Jumppoints_22303dc - 2
.hword branch_22303ee - Jumppoints_22303dc - 2
.thumb
branch_22303ee: @ 22303ee :thumb
	bl      Function_22389c8
	cmp     r0, #0x0
	beq     branch_22303fc
	ldr     r0, [pc, #0x8] @ 0x2230400, (=0x223f1a8)
	mov     r1, #0x2b
	str     r1, [r0, #0x0]
.thumb
branch_22303fc: @ 22303fc :thumb
	pop     {r4,pc}
@ 0x22303fe


.align 2


.word 0x223f1a8 @ 0x2230400
.word Function_2230280+1 @ =0x2230281, 0x2230404
.word 0x5d4 @ 0x2230408
.word 0x21bf67c @ 0x223040c
.thumb
Function_2230410: @ 2230410 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	bl      Function_2230438
	bl      Function_2237a20
	bl      Function_2237a74
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0xf
	mov     r2, #0xc
	mov     r3, #0xe
	bl      Function_2237b0c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2230438

.thumb
Function_2230438: @ 2230438 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x223049c, (=0x2dc4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2230448
	bl      0x2021bd4
.thumb
branch_2230448: @ 2230448 :thumb
	ldr     r0, [pc, #0x54] @ 0x22304a0, (=0x2dc8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2230454
	bl      0x2021bd4
.thumb
branch_2230454: @ 2230454 :thumb
	ldr     r0, [pc, #0x48] @ 0x22304a0, (=0x2dc8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r2, [r4, r0]
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223046c
	bl      0x2021bd4
.thumb
branch_223046c: @ 223046c :thumb
	ldr     r0, [pc, #0x34] @ 0x22304a4, (=0x2dd0)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2230478
	bl      0x2021bd4
.thumb
branch_2230478: @ 2230478 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22304a8, (=0x2dd4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2230484
	bl      0x2021bd4
.thumb
branch_2230484: @ 2230484 :thumb
	ldr     r1, [pc, #0x20] @ 0x22304a8, (=0x2dd4)
	mov     r0, #0x0
	str     r0, [r4, r1]
	ldr     r2, [r4, r1]
	.hword  0x1f08 @ sub r0, r1, #0x4
	str     r2, [r4, r0]
	ldr     r0, [r4, r0]
	sub     r1, #0x8
	str     r0, [r4, r1]
	bl      Function_2237da0
	pop     {r4,pc}
@ 0x223049c

.word 0x2dc4 @ 0x223049c
.word 0x2dc8 @ 0x22304a0
.word 0x2dd0 @ 0x22304a4
.word 0x2dd4 @ 0x22304a8
.thumb
Function_22304ac: @ 22304ac :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x40] @ 0x22304f4, (=0x3d4c)
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [r4, r1]
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x38] @ 0x22304f8, (=0x2dc4)
	mov     r2, #0x48
	ldr     r1, [r4, r1]
	mov     r3, #0xa8
	bl      Function_2237d14
	ldr     r1, [pc, #0x2c] @ 0x22304f8, (=0x2dc4)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	bl      0x2021e80
	mov     r0, #0x0
	ldr     r1, [pc, #0x24] @ 0x22304fc, (=0x2dc8)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r2, #0xb8
	mov     r3, #0xa8
	bl      Function_2237d14
	ldr     r1, [pc, #0x14] @ 0x22304fc, (=0x2dc8)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	bl      0x2021e80
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22304f4

.word 0x3d4c @ 0x22304f4
.word 0x2dc4 @ 0x22304f8
.word 0x2dc8 @ 0x22304fc
.thumb
Function_2230500: @ 2230500 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_2230516
	mov     r0, r5
	mov     r1, r4
	bl      0x200dc9c
.thumb
branch_2230516: @ 2230516 :thumb
	pop     {r3-r5,pc}
@ 0x2230518

.thumb
Function_2230518: @ 2230518 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      0x201a7cc
	cmp     r0, #0x1
	bne     branch_223052e
	mov     r0, r5
	mov     r1, r4
	bl      0x200e084
.thumb
branch_223052e: @ 223052e :thumb
	pop     {r3-r5,pc}
@ 0x2230530

.thumb
Function_2230530: @ 2230530 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r0
	ldr     r0, [pc, #0xa0] @ 0x22305d8, (=0x2bcc)
	mov     r4, r1
	ldr     r0, [r5, r0]
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_2230548
	bl      0x2013a3c
.thumb
branch_2230548: @ 2230548 :thumb
	ldr     r0, [pc, #0x90] @ 0x22305dc, (=0x2bc8)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2230558
	mov     r1, #0x0
	mov     r2, r1
	bl      0x2001384
.thumb
branch_2230558: @ 2230558 :thumb
	mov     r0, r7
	mov     r1, #0x57
	bl      0x2013a04
	ldr     r1, [pc, #0x74] @ 0x22305d8, (=0x2bcc)
	ldr     r2, [pc, #0x7c] @ 0x22305e0, (=0x1a5)
	str     r0, [r5, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x57
	bl      0x200b144
	ldr     r1, [pc, #0x70] @ 0x22305e4, (=0x2a04)
	mov     r6, #0x0
	str     r0, [r5, r1]
	cmp     r7, #0x0
	ble     branch_2230592
.thumb
branch_223057a: @ 223057a :thumb
	ldr     r0, [pc, #0x5c] @ 0x22305d8, (=0x2bcc)
	ldr     r1, [pc, #0x64] @ 0x22305e4, (=0x2a04)
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r4, #0x0]
	ldr     r3, [r4, #0x4]
	bl      0x2013a4c
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r7
	blt     branch_223057a
.thumb
branch_2230592: @ 2230592 :thumb
	ldr     r0, [pc, #0x50] @ 0x22305e4, (=0x2a04)
	ldr     r0, [r5, r0]
	bl      0x200b190
	ldr     r4, [pc, #0x4c] @ 0x22305e8, (=0x223e660)
	add     r3, sp, #0x4
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x24] @ 0x22305d8, (=0x2bcc)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r3, #0x57
	str     r0, [sp, #0x4]
	add     r0, sp, #0x4
	strh    r7, [r0, #0x10]
	ldr     r0, [sp, #0x0]
	str     r0, [sp, #0x10]
	mov     r0, r2
	ldr     r2, [sp, #0x38]
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      0x200112c
	ldr     r1, [pc, #0xc] @ 0x22305dc, (=0x2bc8)
	str     r0, [r5, r1]
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22305d6


.align 2


.word 0x2bcc @ 0x22305d8
.word 0x2bc8 @ 0x22305dc
.word 0x1a5 @ 0x22305e0
.word 0x2a04 @ 0x22305e4
.word 0x223e660 @ 0x22305e8
.thumb
Function_22305ec: @ 22305ec :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r2, [pc, #0x68] @ 0x223065c, (=0x1a5)
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x57
	bl      0x200b144
	mov     r4, r0
	mov     r0, #0x57
	bl      0x200b358
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, #0x6
	bl      0x2002df8
	mov     r1, r0
	mov     r0, r5
	bl      0x201ada4
	mov     r0, r6
	mov     r1, r4
	mov     r2, r7
	mov     r3, #0x57
	bl      0x200b29c
	mov     r7, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2230660, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r7
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      0x201a954
	mov     r0, r7
	bl      0x20237bc
	mov     r0, r4
	bl      0x200b190
	mov     r0, r6
	bl      0x200b3f0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223065c

.word 0x1a5 @ 0x223065c
.word 0x10200 @ 0x2230660
.thumb
Function_2230664: @ 2230664 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x57
	mov     r3, #0x1e
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0xb
	mov     r2, #0x0
	lsl     r3, r3, #4
	bl      0x2006e84
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x57
	mov     r3, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x10
	mov     r2, #0x0
	lsl     r3, r3, #6
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x57
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r1, #0x11
	mov     r2, r4
	bl      0x2006e3c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x57
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r1, #0x12
	mov     r2, r4
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0xc
	mov     r2, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019e2c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019448
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22306f2


.align 2, 0


.thumb
Function_22306f4: @ 22306f4 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_2230868
	ldr     r0, [pc, #0x1c] @ 0x2230720, (=0x2bd0)
	mov     r1, #0x2e
	add     r0, r4, r0
	bl      Function_22305ec
	ldr     r3, [pc, #0x18] @ 0x2230724, (=0x2be0)
	mov     r0, r4
	add     r1, r4, r3
	add     r3, #0x10
	ldr     r3, [r4, r3]
	mov     r2, #0xa
	bl      Function_2230e04
	mov     r0, #0xd
	pop     {r4,pc}
@ 0x223071e


.align 2


.word 0x2bd0 @ 0x2230720
.word 0x2be0 @ 0x2230724
.thumb
Function_2230728: @ 2230728 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_2230868
	ldr     r1, [pc, #0x34] @ 0x223076c, (=0x2ba0)
	ldr     r0, [r4, r1]
	add     r1, #0x20
	ldr     r1, [r4, r1]
	bl      0x202dda8
	cmp     r0, #0x1
	ldr     r0, [pc, #0x2c] @ 0x2230770, (=0x2bd0)
	bne     branch_2230750
	add     r0, r4, r0
	mov     r1, #0x3e
	bl      Function_22305ec
	b       branch_2230758
@ 0x2230750

.thumb
branch_2230750: @ 2230750 :thumb
	add     r0, r4, r0
	mov     r1, #0x3d
	bl      Function_22305ec
.thumb
branch_2230758: @ 2230758 :thumb
	ldr     r3, [pc, #0x18] @ 0x2230774, (=0x2be0)
	mov     r0, r4
	add     r1, r4, r3
	add     r3, #0x10
	ldr     r3, [r4, r3]
	mov     r2, #0x9
	bl      Function_2230e04
	mov     r0, #0xc
	pop     {r4,pc}
@ 0x223076c

.word 0x2ba0 @ 0x223076c
.word 0x2bd0 @ 0x2230770
.word 0x2be0 @ 0x2230774
.thumb
Function_2230778: @ 2230778 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_2230868
	ldr     r0, [pc, #0x98] @ 0x2230820, (=0x2bd0)
	mov     r1, #0x3f
	add     r0, r4, r0
	bl      Function_22305ec
	ldr     r0, [pc, #0x90] @ 0x2230820, (=0x2bd0)
	mov     r1, #0x13
	add     r0, r4, r0
	bl      0x200e7fc
	ldr     r1, [pc, #0x88] @ 0x2230824, (=0x3d50)
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x88] @ 0x2230828, (=0x2ba0)
	ldr     r0, [r4, r1]
	add     r1, #0x20
	ldr     r1, [r4, r1]
	bl      0x202dda8
	cmp     r0, #0x1
	ldr     r1, [pc, #0x7c] @ 0x2230828, (=0x2ba0)
	bne     branch_22307ba
	ldr     r0, [r4, r1]
	add     r1, #0x20
	ldr     r1, [r4, r1]
	bl      0x202dc7c
	b       branch_22307c4
@ 0x22307ba

.thumb
branch_22307ba: @ 22307ba :thumb
	ldr     r0, [r4, r1]
	add     r1, #0x20
	ldr     r1, [r4, r1]
	bl      0x202dcb8
.thumb
branch_22307c4: @ 22307c4 :thumb
	ldr     r0, [pc, #0x64] @ 0x223082c, (=0x2ba4)
	ldr     r0, [r4, r0]
	bl      0x20246e0
	ldr     r0, [pc, #0x54] @ 0x2230824, (=0x3d50)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	ldr     r0, [pc, #0x50] @ 0x2230828, (=0x2ba0)
	ldr     r0, [r4, r0]
	bl      0x202dd88
	cmp     r0, #0x0
	bne     branch_22307e4
	mov     r0, #0x1a
	pop     {r4,pc}
@ 0x22307e4

.thumb
branch_22307e4: @ 22307e4 :thumb
	mov     r1, #0xaf
	lsl     r1, r1, #6
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2230f20
	mov     r1, #0xaf
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	add     r1, #0x10
	add     r0, r4, r1
	mov     r1, #0x24
	bl      Function_22305ec
	ldr     r3, [pc, #0x2c] @ 0x2230830, (=0x2be0)
	mov     r0, r4
	add     r1, r4, r3
	add     r3, #0x10
	ldr     r3, [r4, r3]
	mov     r2, #0x8
	bl      Function_2230e04
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2230c44
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2230820

.word 0x2bd0 @ 0x2230820
.word 0x3d50 @ 0x2230824
.word 0x2ba0 @ 0x2230828
.word 0x2ba4 @ 0x223082c
.word 0x2be0 @ 0x2230830
.thumb
Function_2230834: @ 2230834 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	bl      Function_2230868
	ldr     r0, [pc, #0x1c] @ 0x2230860, (=0x2bd0)
	mov     r1, #0x24
	add     r0, r4, r0
	bl      Function_22305ec
	ldr     r3, [pc, #0x18] @ 0x2230864, (=0x2be0)
	mov     r0, r4
	add     r1, r4, r3
	add     r3, #0x10
	ldr     r3, [r4, r3]
	mov     r2, #0x8
	bl      Function_2230e04
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x223085e


.align 2


.word 0x2bd0 @ 0x2230860
.word 0x2be0 @ 0x2230864
.thumb
Function_2230868: @ 2230868 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x34] @ 0x22308a4, (=0x2bcc)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	mov     r1, #0x0
	ldr     r0, [pc, #0x2c] @ 0x22308a4, (=0x2bcc)
	mov     r2, r1
	str     r1, [r4, r0]
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      0x2001384
	ldr     r0, [pc, #0x20] @ 0x22308a8, (=0x2bc8)
	mov     r1, #0x0
	str     r1, [r4, r0]
	add     r0, #0x18
	add     r0, r4, r0
	bl      Function_2230500
	ldr     r0, [pc, #0x18] @ 0x22308ac, (=0x2be0)
	add     r0, r4, r0
	bl      0x201acf4
	ldr     r0, [pc, #0x10] @ 0x22308ac, (=0x2be0)
	add     r0, r4, r0
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x22308a4

.word 0x2bcc @ 0x22308a4
.word 0x2bc8 @ 0x22308a8
.word 0x2be0 @ 0x22308ac
.thumb
Function_22308b0: @ 22308b0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x22308b4

.thumb
Function_22308b4: @ 22308b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r7, r1
	ldr     r1, [r5, #0x0]
	mov     r0, #0x25
	mov     r4, r2
	bl      0x2023790
	mov     r1, #0xaf
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	sub     r1, #0xc
	lsl     r2, r2, #2
	add     r2, r5, r2
	ldr     r2, [r2, r1]
	mov     r1, #0x41
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r2, #0x24
	mov     r6, r0
	bl      0x2023d8c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2230904

.thumb
Function_2230904: @ 2230904 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0xaf
	lsl     r0, r0, #6
	mov     r6, r1
	ldr     r1, [r4, r0]
	mov     r5, r2
	lsl     r2, r1, #2
	add     r3, r4, r2
	mov     r2, r0
	sub     r2, #0xc
	ldr     r3, [r3, r2]
	ldr     r2, [pc, #0x58] @ 0x2230978, (=0x152)
	ldrb    r2, [r3, r2]
	lsl     r2, r2, #28
	lsr     r2, r2, #31
	bne     branch_223092c
	mov     r2, #0x27
	b       branch_2230942
@ 0x223092c

.thumb
branch_223092c: @ 223092c :thumb
	sub     r0, #0x20
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223093c
	bl      0x202dda8
	cmp     r0, #0x1
	bne     branch_2230940
.thumb
branch_223093c: @ 223093c :thumb
	mov     r2, #0x25
	b       branch_2230942
@ 0x2230940

.thumb
branch_2230940: @ 2230940 :thumb
	mov     r2, #0x26
.thumb
branch_2230942: @ 2230942 :thumb
	mov     r1, #0x2a
	lsl     r1, r1, #8
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	ldr     r3, [r4, #0x0]
	bl      0x200b29c
	mov     r4, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      0x20237bc
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2230976


.align 2


.word 0x152 @ 0x2230978
.thumb
Function_223097c: @ 223097c :thumb
	push    {r4,lr}
	add     sp, #-0x18
	mov     r1, #0xaf
	mov     r4, r0
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	sub     r1, #0xc
	lsl     r2, r2, #2
	add     r2, r4, r2
	ldr     r2, [r2, r1]
	mov     r1, #0xd5
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	add     r0, sp, #0x8
	blx 0x20cc27c
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	lsl     r0, r0, #8
	mov     r2, #0x7d
	ldr     r3, [sp, #0x8]
	lsl     r2, r2, #4
	add     r2, r3, r2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	mov     r3, #0x4
	bl      0x200b60c
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0xc]
	mov     r1, #0x1
	bl      0x200c2e0
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	ldr     r2, [sp, #0x10]
	mov     r3, r1
	bl      0x200b60c
	mov     r0, #0x1
	add     sp, #0x18
	pop     {r4,pc}
@ 0x22309e4

.thumb
Function_22309e4: @ 22309e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r7, r1
	mov     r0, #0xfb
	mov     r1, #0x57
	mov     r4, r2
	bl      0x2023790
	mov     r1, #0xaf
	lsl     r1, r1, #6
	ldr     r2, [r5, r1]
	sub     r1, #0xc
	lsl     r2, r2, #2
	add     r2, r5, r2
	ldr     r2, [r2, r1]
	mov     r1, #0x55
	lsl     r1, r1, #2
	add     r1, r2, r1
	mov     r2, #0xfa
	mov     r6, r0
	bl      0x2023d8c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r4, [sp, #0x8]
	mov     r0, r7
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2230a34

.thumb
Function_2230a34: @ 2230a34 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r3, r0
	mov     r0, #0xaf
	lsl     r0, r0, #6
	mov     r6, r1
	ldr     r1, [r3, r0]
	sub     r0, #0xc
	lsl     r1, r1, #2
	add     r1, r3, r1
	ldr     r1, [r1, r0]
	mov     r0, #0xd2
	lsl     r0, r0, #2
	mov     r5, r2
	ldrb    r2, [r1, r0]
	cmp     r2, #0xff
	bne     branch_2230a8c
	mov     r1, #0x2a
	lsl     r1, r1, #8
	ldr     r0, [r3, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r3, r1]
	mov     r2, #0x33
	mov     r3, #0x57
	bl      0x200b29c
	mov     r4, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r5, [sp, #0x8]
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2230a8c

.thumb
branch_2230a8c: @ 2230a8c :thumb
	cmp     r2, #0x0
	beq     branch_2230aaa
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r3, r0]
	mov     r3, #0x3
	bl      0x200b60c
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2230aaa

.thumb
branch_2230aaa: @ 2230aaa :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2230ab0

.thumb
Function_2230ab0: @ 2230ab0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	mov     r0, #0x0
	mov     r7, r1
	add     r1, r0, #0x1
	ldr     r0, [pc, #0xc4] @ 0x2230b84, (=0x223e610)
	ldr     r2, [pc, #0xc4] @ 0x2230b84, (=0x223e610)
	ldr     r0, [r0, #0x30]
	ldr     r2, [r2, #0x34]
	str     r0, [sp, #0x14]
	mov     r0, #0xaf
	lsl     r0, r0, #6
	str     r2, [sp, #0x18]
	ldr     r2, [r5, r0]
	sub     r0, #0xc
	lsl     r2, r2, #2
	add     r2, r5, r2
	ldr     r2, [r2, r0]
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldrb    r0, [r2, r0]
	mov     r4, r1
	add     r6, sp, #0x14
	cmp     r0, #0x0
	beq     branch_2230af6
	ldr     r0, [pc, #0x9c] @ 0x2230b84, (=0x223e610)
	ldr     r2, [pc, #0x9c] @ 0x2230b84, (=0x223e610)
	ldr     r0, [r0, #0x38]
	add     r4, r1, #0x1
	lsl     r1, r1, #3
	ldr     r2, [r2, #0x3c]
	add     r3, r6, r1
	str     r0, [r6, r1]
	str     r2, [r3, #0x4]
.thumb
branch_2230af6: @ 2230af6 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2230b84, (=0x223e610)
	ldr     r2, [pc, #0x88] @ 0x2230b84, (=0x223e610)
	ldr     r0, [r0, #0x40]
	lsl     r1, r4, #3
	add     r6, sp, #0x14
	str     r0, [r6, r1]
	ldr     r2, [r2, #0x44]
	add     r3, r6, r1
	add     r0, r4, #0x1
	lsl     r1, r0, #3
	str     r2, [r3, #0x4]
	ldr     r0, [pc, #0x74] @ 0x2230b84, (=0x223e610)
	ldr     r2, [pc, #0x74] @ 0x2230b84, (=0x223e610)
	ldr     r0, [r0, #0x48]
	ldr     r2, [r2, #0x4c]
	str     r0, [r6, r1]
	add     r3, r6, r1
	ldr     r0, [pc, #0x6c] @ 0x2230b88, (=0x2b9c)
	str     r2, [r3, #0x4]
	ldr     r6, [r5, r0]
	mov     r0, r7
	bl      0x201acf4
	mov     r0, r7
	bl      0x201a8fc
	add     r1, r4, #0x2
	mov     r0, #0x4
	sub     r0, r0, r1
	ldr     r1, [r6, #0x8]
	lsl     r0, r0, #1
	add     r1, r1, r0
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	ldr     r1, [r6, #0xc]
	mov     r2, #0x2
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x4]
	ldr     r1, [r6, #0x10]
	sub     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x34] @ 0x2230b8c, (=0x2b98)
	mov     r1, r7
	ldr     r0, [r5, r0]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x2c] @ 0x2230b90, (=0x29fc)
	ldr     r3, [r6, #0x4]
	ldr     r0, [r5, r0]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      0x201a7e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r1, sp, #0x14
	add     r2, r4, #0x2
	mov     r3, r7
	bl      Function_2230530
	mov     r0, #0x1
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2230b84

.word 0x223e610 @ 0x2230b84
.word 0x2b9c @ 0x2230b88
.word 0x2b98 @ 0x2230b8c
.word 0x29fc @ 0x2230b90
.thumb
Function_2230b94: @ 2230b94 :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2230ba8, (=0x223e610)
	mov     r2, #0x2
	bl      Function_2230530
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2230ba8

.word 0x223e610 @ 0x2230ba8
.thumb
Function_2230bac: @ 2230bac :thumb
	push    {r3,lr}
	mov     r3, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x8] @ 0x2230bc0, (=0x223e630)
	mov     r2, #0x2
	bl      Function_2230530
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2230bc0

.word 0x223e630 @ 0x2230bc0
.thumb
Function_2230bc4: @ 2230bc4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x1c] @ 0x2230be8, (=0x2bd0)
	mov     r4, r1
	add     r0, r5, r0
	mov     r1, #0x2
	bl      Function_22305ec
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2230bec, (=0x223e620)
	mov     r0, r5
	mov     r2, #0x2
	mov     r3, r4
	bl      Function_2230530
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2230be8

.word 0x2bd0 @ 0x2230be8
.word 0x223e620 @ 0x2230bec
.thumb
Function_2230bf0: @ 2230bf0 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, #0x2a
	str     r3, [sp, #0x4]
	lsl     r1, r1, #8
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	mov     r2, r1
	bl      0x200b60c
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2230c0e


.align 2, 0


.thumb
Function_2230c10: @ 2230c10 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x57
	str     r0, [sp, #0x8]
	mov     r6, r2
	mov     r0, #0x0
	mov     r4, r3
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	cmp     r4, #0x0
	beq     branch_2230c38
	mov     r0, #0x1b
	str     r0, [r4, #0x0]
.thumb
branch_2230c38: @ 2230c38 :thumb
	mov     r0, #0xb1
	lsl     r0, r0, #6
	str     r6, [r5, r0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2230c42


.align 2, 0


.thumb
Function_2230c44: @ 2230c44 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	str     r2, [sp, #0x14]
	ldr     r2, [pc, #0x198] @ 0x2230de8, (=0x1a5)
	ldr     r3, [r5, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	ldr     r4, [pc, #0x194] @ 0x2230dec, (=0x223e680)
	bl      0x200b144
	ldr     r1, [pc, #0x194] @ 0x2230df0, (=0x2a04)
	str     r0, [r5, r1]
	ldr     r0, [r5, #0x0]
	bl      0x200b358
	mov     r1, #0x2a
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r1, [pc, #0x188] @ 0x2230df4, (=0x2bc4)
	ldr     r0, [sp, #0x14]
	str     r0, [r5, r1]
	ldr     r1, [sp, #0x14]
	mov     r0, r5
	bl      Function_2230f98
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x178] @ 0x2230df8, (=0x2a08)
	mov     r7, r4
	str     r5, [sp, #0x1c]
	add     r6, r5, r0
.thumb
branch_2230c84: @ 2230c84 :thumb
	ldr     r1, [r7, #0x0]
	ldr     r0, [sp, #0x14]
	cmp     r0, r1
	beq     branch_2230ca6
	cmp     r1, #0x2
	beq     branch_2230ca6
	ldr     r1, [sp, #0x1c]
	ldr     r0, [pc, #0x164] @ 0x2230df8, (=0x2a08)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2230ca6
	mov     r0, r6
	bl      0x201acf4
	mov     r0, r6
	bl      0x201a8fc
.thumb
branch_2230ca6: @ 2230ca6 :thumb
	ldr     r0, [sp, #0x1c]
	add     r7, #0x30
	add     r0, #0x10
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x30]
	add     r6, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x30]
	cmp     r0, #0x13
	bcc     branch_2230c84
	mov     r0, #0x31
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x134] @ 0x2230df8, (=0x2a08)
	str     r5, [sp, #0x24]
	str     r5, [sp, #0x20]
	add     r6, r5, r0
.thumb
branch_2230cca: @ 2230cca :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	cmp     r0, r1
	bne     branch_2230daa
	ldr     r1, [sp, #0x24]
	ldr     r0, [pc, #0x120] @ 0x2230df8, (=0x2a08)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2230d1a
	ldr     r2, [sp, #0x2c]
	ldr     r1, [sp, #0x20]
	ldr     r0, [pc, #0x118] @ 0x2230dfc, (=0x2b48)
	str     r2, [r1, r0]
	ldr     r0, [r4, #0x8]
	mov     r1, r6
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, r2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xf4] @ 0x2230e00, (=0x29fc)
	ldr     r3, [r4, #0x4]
	ldr     r0, [r5, r0]
	lsl     r3, r3, #24
	mov     r2, #0x0
	lsr     r3, r3, #24
	bl      0x201a7e8
.thumb
branch_2230d1a: @ 2230d1a :thumb
	ldr     r0, [r4, #0x14]
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #24
	lsr     r1, r1, #24
	bl      0x2002df8
	mov     r1, r0
	mov     r0, r6
	bl      0x201ada4
	ldr     r0, [r4, #0x18]
	ldr     r3, [r4, #0x24]
	str     r0, [sp, #0x28]
	ldr     r2, [sp, #0x28]
	mov     r0, r5
	mov     r1, r6
	blx     r3
	cmp     r0, #0x1
	bne     branch_2230d96
	ldr     r2, [r4, #0x20]
	cmp     r2, #0x0
	beq     branch_2230d96
	mov     r0, #0x2a
	ldr     r1, [pc, #0xa0] @ 0x2230df0, (=0x2a04)
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r3, [r5, #0x0]
	bl      0x200b29c
	mov     r7, r0
	mov     r0, #0x0
	ldr     r3, [r4, #0x28]
	mvn     r0, r0
	cmp     r3, r0
	bne     branch_2230d76
	ldr     r3, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	mov     r1, r7
	mov     r2, #0x0
	lsl     r3, r3, #3
	bl      0x2002eec
	mov     r3, r0
.thumb
branch_2230d76: @ 2230d76 :thumb
	ldr     r0, [r4, #0x2c]
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r1, [r4, #0x14]
	mov     r0, r6
	bl      0x201d78c
	mov     r0, r7
	bl      0x20237bc
.thumb
branch_2230d96: @ 2230d96 :thumb
	mov     r0, r6
	bl      0x201a954
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x10]
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [sp, #0x2c]
	add     r0, r0, r2
	str     r0, [sp, #0x2c]
.thumb
branch_2230daa: @ 2230daa :thumb
	ldr     r0, [sp, #0x24]
	add     r4, #0x30
	add     r0, #0x10
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x20]
	add     r6, #0x10
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x18]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, #0x13
	bcc     branch_2230cca
	ldr     r0, [pc, #0x28] @ 0x2230df0, (=0x2a04)
	ldr     r0, [r5, r0]
	bl      0x200b190
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	bl      0x200b3f0
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2230de2
	mov     r0, r5
	bl      Function_22310fc
.thumb
branch_2230de2: @ 2230de2 :thumb
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2230de6


.align 2


.word 0x1a5 @ 0x2230de8
.word 0x223e680 @ 0x2230dec
.word 0x2a04 @ 0x2230df0
.word 0x2bc4 @ 0x2230df4
.word 0x2a08 @ 0x2230df8
.word 0x2b48 @ 0x2230dfc
.word 0x29fc @ 0x2230e00
.thumb
Function_2230e04: @ 2230e04 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r5, r0
	mov     r7, r3
	mov     r3, #0x30
	ldr     r0, [pc, #0xf4] @ 0x2230f04, (=0x223e680)
	mul     r3, r2
	mov     r6, r1
	add     r4, r0, r3
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	bne     branch_2230e4e
	ldr     r0, [r4, #0x8]
	mov     r2, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	lsl     r0, r7, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xc4] @ 0x2230f08, (=0x29fc)
	ldr     r3, [r4, #0x4]
	ldr     r0, [r5, r0]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      0x201a7e8
.thumb
branch_2230e4e: @ 2230e4e :thumb
	ldr     r1, [r4, #0x1c]
	mov     r0, r6
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x201ada4
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_2230e7c
	ldr     r2, [pc, #0xa8] @ 0x2230f0c, (=0x1a5)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x57
	bl      0x200b144
	ldr     r1, [pc, #0xa0] @ 0x2230f10, (=0x2a04)
	str     r0, [r5, r1]
	mov     r0, #0x57
	bl      0x200b358
	mov     r1, #0x2a
	lsl     r1, r1, #8
	str     r0, [r5, r1]
.thumb
branch_2230e7c: @ 2230e7c :thumb
	ldr     r0, [pc, #0x94] @ 0x2230f14, (=0x2b98)
	ldr     r2, [pc, #0x98] @ 0x2230f18, (=0x10200)
	str     r7, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r4, [r5, r0]
	ldr     r3, [r4, #0x24]
	mov     r0, r5
	mov     r1, r6
	blx     r3
	ldr     r2, [r4, #0x20]
	cmp     r2, #0x0
	beq     branch_2230ed6
	mov     r1, #0x2a
	lsl     r1, r1, #8
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r3, #0x57
	bl      0x200b29c
	str     r0, [sp, #0x14]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x18]
	ldr     r2, [sp, #0x14]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r1, [r4, #0x14]
	mov     r0, r6
	bl      0x201d78c
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	ldr     r0, [pc, #0x48] @ 0x2230f10, (=0x2a04)
	ldr     r0, [r5, r0]
	bl      0x200b190
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	bl      0x200b3f0
.thumb
branch_2230ed6: @ 2230ed6 :thumb
	ldr     r0, [pc, #0x44] @ 0x2230f1c, (=0x2bd0)
	add     r0, r5, r0
	cmp     r6, r0
	bne     branch_2230eec
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0x13
	mov     r3, #0xa
	bl      0x200e060
	b       branch_2230ef8
@ 0x2230eec

.thumb
branch_2230eec: @ 2230eec :thumb
	mov     r0, r6
	mov     r1, #0x0
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200dc48
.thumb
branch_2230ef8: @ 2230ef8 :thumb
	ldr     r1, [r4, #0xc]
	ldr     r0, [r4, #0x10]
	mul     r0, r1
	add     r0, r7, r0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2230f04

.word 0x223e680 @ 0x2230f04
.word 0x29fc @ 0x2230f08
.word 0x1a5 @ 0x2230f0c
.word 0x2a04 @ 0x2230f10
.word 0x2b98 @ 0x2230f14
.word 0x10200 @ 0x2230f18
.word 0x2bd0 @ 0x2230f1c
.thumb
Function_2230f20: @ 2230f20 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	mov     r7, r4
.thumb
branch_2230f2a: @ 2230f2a :thumb
	add     r4, r4, r6
	cmp     r4, #0x3
	bne     branch_2230f32
	mov     r4, #0x0
.thumb
branch_2230f32: @ 2230f32 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2230f3c
	mov     r4, #0x2
.thumb
branch_2230f3c: @ 2230f3c :thumb
	cmp     r7, r4
	beq     branch_2230f4e
	ldr     r0, [pc, #0x10] @ 0x2230f54, (=0x2ba0)
	mov     r1, r4
	ldr     r0, [r5, r0]
	bl      0x202dd5c
	cmp     r0, #0x0
	beq     branch_2230f2a
.thumb
branch_2230f4e: @ 2230f4e :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2230f52


.align 2


.word 0x2ba0 @ 0x2230f54
.thumb
Function_2230f58: @ 2230f58 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r2, #0x1
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r6, r3
	ldr     r3, [r5, #0x0]
	mov     r0, #0x74
	bl      0x2006fe8
	add     r1, sp, #0x4
	mov     r7, r0
	blx 0x20a7248
	ldr     r0, [pc, #0x1c] @ 0x2230f94, (=0x29fc)
	ldr     r2, [sp, #0x4]
	lsl     r1, r4, #24
	ldr     r0, [r5, r0]
	lsr     r1, r1, #24
	add     r2, #0xc
	mov     r3, r6
	bl      0x2019574
	mov     r0, r7
	bl      0x20181c4
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2230f92


.align 2


.word 0x29fc @ 0x2230f94
.thumb
Function_2230f98: @ 2230f98 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	mov     r4, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0xbc] @ 0x2231084, (=0x29fc)
	str     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r0, #0x74
	mov     r1, #0x6
	bl      0x2006e3c
	cmp     r4, #0x0
	beq     branch_2230fde
	cmp     r4, #0x1
	beq     branch_2230ffe
	b       branch_223101c
@ 0x2230fde

.thumb
branch_2230fde: @ 2230fde :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x94] @ 0x2231084, (=0x29fc)
	str     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r0, #0x74
	mov     r1, #0x4
	bl      0x2006e60
	b       branch_223101c
@ 0x2230ffe

.thumb
branch_2230ffe: @ 2230ffe :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x74] @ 0x2231084, (=0x29fc)
	str     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r0, #0x74
	mov     r1, #0x5
	bl      0x2006e60
.thumb
branch_223101c: @ 223101c :thumb
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r3, r0
	mov     r2, r1
	add     r3, #0xec
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r2, [pc, #0x40] @ 0x2231084, (=0x29fc)
	str     r0, [sp, #0xc]
	ldr     r2, [r5, r2]
	mov     r0, #0x74
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r2, #0x3
	mov     r0, r5
	mov     r1, #0x2
	lsl     r3, r2, #9
	bl      Function_2230f58
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0xb
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x18] @ 0x2231084, (=0x29fc)
	mov     r2, #0x0
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2019e2c
	ldr     r0, [pc, #0xc] @ 0x2231084, (=0x29fc)
	mov     r1, #0x3
	ldr     r0, [r5, r0]
	bl      0x2019448
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2231084

.word 0x29fc @ 0x2231084
.thumb
Function_2231088: @ 2231088 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r6, r2
	bl      0x200682c
	ldr     r1, [pc, #0x58] @ 0x22310f0, (=0x2bc8)
	ldr     r0, [r0, r1]
	bl      0x2001288
	mov     r4, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_22310ae
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_22310ec
	b       branch_22310c8
@ 0x22310ae

.thumb
branch_22310ae: @ 22310ae :thumb
	ldr     r0, [pc, #0x44] @ 0x22310f4, (=0x5dc)
	bl      0x2005748
	cmp     r6, #0x0
	beq     branch_22310ec
	mov     r0, r7
	blx     r6
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22310ec
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22310c8

.thumb
branch_22310c8: @ 22310c8 :thumb
	ldr     r0, [pc, #0x28] @ 0x22310f4, (=0x5dc)
	bl      0x2005748
	cmp     r4, #0x0
	beq     branch_22310ec
	cmp     r4, #0x1e
	bcs     branch_22310da
	str     r4, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22310da

.thumb
branch_22310da: @ 22310da :thumb
	ldr     r0, [pc, #0x1c] @ 0x22310f8, (=0x223f1bc)
	str     r4, [r0, #0x0]
	mov     r0, r7
	blx     r4
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22310ec
	str     r0, [r5, #0x0]
.thumb
branch_22310ec: @ 22310ec :thumb
	pop     {r3-r7,pc}
@ 0x22310ee


.align 2


.word 0x2bc8 @ 0x22310f0
.word 0x5dc @ 0x22310f4
.word 0x223f1bc @ 0x22310f8
.thumb
Function_22310fc: @ 22310fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r1, [pc, #0x114] @ 0x2231218, (=0x2dcc)
	mov     r6, r0
	ldr     r0, [r6, r1]
	cmp     r0, #0x0
	bne     branch_223115c
	add     r0, r1, #0x4
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_223115c
	add     r1, #0x8
	ldr     r0, [r6, r1]
	cmp     r0, #0x0
	bne     branch_223115c
	bl      Function_2237a60
	cmp     r0, #0x1
	bne     branch_2231128
	mov     r0, r6
	bl      Function_2230438
.thumb
branch_2231128: @ 2231128 :thumb
	bl      Function_2237a20
	bl      Function_2237a74
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x1a
	mov     r2, #0x17
	mov     r3, #0x19
	bl      Function_2237b0c
	bl      0x2079fd0
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r6, #0x0]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	mov     r3, #0x60
	bl      0x2006e84
.thumb
branch_223115c: @ 223115c :thumb
	mov     r0, #0xb2
	mov     r4, #0x0
	str     r0, [sp, #0x10]
	str     r4, [sp, #0xc]
	mov     r5, r6
	mov     r7, #0x64
.thumb
branch_2231168: @ 2231168 :thumb
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	lsl     r0, r0, #2
	add     r1, r6, r0
	ldr     r0, [pc, #0xa8] @ 0x223121c, (=0x2bb4)
	ldr     r0, [r1, r0]
	add     r1, r0, r4
	ldr     r0, [pc, #0xa4] @ 0x2231220, (=0x34a)
	ldrh    r0, [r1, r0]
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	bne     branch_2231192
	ldr     r0, [pc, #0x94] @ 0x2231218, (=0x2dcc)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_22311fc
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_22311fc
@ 0x2231192

.thumb
branch_2231192: @ 2231192 :thumb
	ldr     r0, [sp, #0xc]
	ldr     r1, [pc, #0x80] @ 0x2231218, (=0x2dcc)
	add     r0, #0xa
	str     r0, [sp, #0x0]
	ldr     r1, [r5, r1]
	ldr     r2, [sp, #0x10]
	mov     r0, #0x0
	mov     r3, #0x10
	bl      Function_2237d14
	ldr     r1, [pc, #0x70] @ 0x2231218, (=0x2dcc)
	str     r0, [r5, r1]
	mov     r1, #0x0
	ldr     r0, [sp, #0x8]
	mov     r2, r1
	bl      0x2079d8c
	mov     r1, r0
	ldr     r0, [r6, #0x0]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x13
	add     r3, sp, #0x18
	bl      0x2006f50
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r1, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx 0x20c2c54
	ldr     r0, [sp, #0x18]
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r7, #5
	lsl     r2, r2, #8
	blx 0x20c02bc
	mov     r1, #0x0
	ldr     r0, [sp, #0x8]
	mov     r2, r1
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [pc, #0x28] @ 0x2231218, (=0x2dcc)
	.hword  0x1cc9 @ add r1, r1, #0x3
	ldr     r0, [r5, r0]
	bl      0x2021e90
	ldr     r0, [sp, #0x14]
	bl      0x20181c4
.thumb
branch_22311fc: @ 22311fc :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r0, #0x19
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0xc]
	add     r7, #0x10
	cmp     r0, #0x3
	blt     branch_2231168
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x2231218

.word 0x2dcc @ 0x2231218
.word 0x2bb4 @ 0x223121c
.word 0x34a @ 0x2231220
.thumb
Function_2231224: @ 2231224 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x57
	lsl     r2, r0, #16
	bl      0x2017fc8
	ldr     r1, [pc, #0x54] @ 0x2231288, (=0x3d54)
	mov     r0, r4
	mov     r2, #0x57
	bl      0x200681c
	ldr     r2, [pc, #0x48] @ 0x2231288, (=0x3d54)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x57
	bl      0x2018340
	ldr     r1, [pc, #0x3c] @ 0x223128c, (=0x29fc)
	str     r0, [r4, r1]
	mov     r0, #0x57
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0xaf
	mov     r1, #0x2
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r1, #0x1
	add     r0, #0x7c
	str     r1, [r4, r0]
	mov     r0, #0x57
	bl      Function_2237694
	mov     r2, #0x3
	mov     r0, #0x0
	mov     r1, #0x5b
	lsl     r2, r2, #8
	bl      0x2017fc8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2231288

.word 0x3d54 @ 0x2231288
.word 0x29fc @ 0x223128c
.thumb
Function_2231290: @ 2231290 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      0x2013ba8
	mov     r0, #0x3
	lsl     r0, r0, #10
	ldr     r0, [r4, r0]
	bl      0x2013b68
	ldr     r1, [pc, #0xc] @ 0x22312b0, (=0x4000010)
	mov     r2, #0x8
	mov     r3, #0x1
	bl      0x2013bb8
	pop     {r4,pc}
@ 0x22312ae


.align 2


.word 0x4000010 @ 0x22312b0
.thumb
Function_22312b4: @ 22312b4 :thumb
	push    {r3-r5,lr}
	ldr     r4, [pc, #0x50] @ 0x2231308, (=0x3130)
	ldr     r5, [pc, #0x50] @ 0x223130c, (=0xc14)
	add     r4, r0, r4
	mov     r0, r5
	str     r1, [r4, r5]
	sub     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, r5
	sub     r0, #0x8
	sub     r5, #0x14
	str     r3, [r4, r0]
	ldr     r0, [r4, r5]
	cmp     r0, #0x0
	bne     branch_22312e6
	mov     r2, #0x6
	lsl     r2, r2, #8
	mov     r0, #0x57
	mov     r1, r4
	add     r2, r4, r2
	bl      0x2013b10
	mov     r1, #0x3
	lsl     r1, r1, #10
	str     r0, [r4, r1]
.thumb
branch_22312e6: @ 22312e6 :thumb
	ldr     r0, [pc, #0x28] @ 0x2231310, (=0xc04)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_22312fe
	mov     r2, #0x1
	ldr     r0, [pc, #0x20] @ 0x2231314, (=0x2231291)
	mov     r1, r4
	lsl     r2, r2, #10
	bl      0x200da04
	ldr     r1, [pc, #0x14] @ 0x2231310, (=0xc04)
	str     r0, [r4, r1]
.thumb
branch_22312fe: @ 22312fe :thumb
	mov     r0, #0xc1
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x2231308

.word 0x3130 @ 0x2231308
.word 0xc14 @ 0x223130c
.word 0xc04 @ 0x2231310
.word 0x2231291 @ 0x2231314
.thumb
Function_2231318: @ 2231318 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x30] @ 0x223134c, (=0x3130)
	add     r4, r0, r1
	mov     r0, #0x3
	lsl     r0, r0, #10
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223132c
	bl      0x2013b40
.thumb
branch_223132c: @ 223132c :thumb
	ldr     r0, [pc, #0x20] @ 0x2231350, (=0xc04)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2231338
	bl      0x200da58
.thumb
branch_2231338: @ 2231338 :thumb
	mov     r0, #0x3
	mov     r1, #0x0
	lsl     r0, r0, #10
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	bl      0x2013ba8
	pop     {r4,pc}
@ 0x223134a


.align 2


.word 0x3130 @ 0x223134c
.word 0xc04 @ 0x2231350
.thumb
Function_2231354: @ 2231354 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x104] @ 0x223145c, (=0x3130)
	mov     r5, #0x15
	add     r4, r0, r1
	mov     r0, #0xc1
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	lsl     r5, r5, #14
	cmp     r1, #0x0
	bne     branch_223136c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223136c

.thumb
branch_223136c: @ 223136c :thumb
	add     r1, r0, #0x4
	ldr     r1, [r4, r1]
	cmp     r1, #0x1
	bne     branch_22313ba
	mov     r1, r0
	sub     r1, #0x8
	ldr     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r4, r1]
	add     r2, r2, r1
	mov     r1, r0
	sub     r1, #0x8
	str     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r2, [r4, r1]
	mov     r1, r2
	add     r2, r2, r1
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0x8
	ldr     r2, [r4, r1]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r2, r1, #12
	mov     r1, #0xfa
	lsl     r1, r1, #2
	cmp     r2, r1
	ble     branch_22313f4
	mov     r2, #0x0
	mov     r1, r0
	str     r2, [r4, r0]
	sub     r1, #0x8
	str     r2, [r4, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	mov     r5, #0xa8
	str     r2, [r4, r0]
	b       branch_22313f4
@ 0x22313ba

.thumb
branch_22313ba: @ 22313ba :thumb
	mov     r1, r0
	sub     r1, #0x8
	ldr     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r1, [r4, r1]
	sub     r2, r2, r1
	mov     r1, r0
	sub     r1, #0x8
	str     r2, [r4, r1]
	.hword  0x1f01 @ sub r1, r0, #0x4
	ldr     r2, [r4, r1]
	lsr     r1, r2, #31
	add     r1, r2, r1
	asr     r2, r1, #1
	.hword  0x1f01 @ sub r1, r0, #0x4
	str     r2, [r4, r1]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	lsl     r2, r2, #10
	cmp     r1, r2
	bge     branch_22313f4
	mov     r1, #0x0
	lsl     r3, r2, #2
	mov     r2, r0
	str     r1, [r4, r0]
	sub     r2, #0x8
	str     r3, [r4, r2]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_22313f4: @ 22313f4 :thumb
	mov     r0, #0x3
	lsl     r0, r0, #10
	ldr     r0, [r4, r0]
	bl      0x2013b54
	mov     r2, r0
	mov     r0, #0x54
	mov     r3, r0
	add     r3, #0xfc
.thumb
branch_2231406: @ 2231406 :thumb
	asr     r1, r5, #11
	lsr     r1, r1, #20
	add     r1, r5, r1
	asr     r1, r1, #12
	bpl     branch_2231412
	mov     r1, #0x0
.thumb
branch_2231412: @ 2231412 :thumb
	cmp     r1, #0xa8
	ble     branch_2231418
	mov     r1, #0xa8
.thumb
branch_2231418: @ 2231418 :thumb
	lsl     r6, r3, #1
	add     r7, r2, r6
	sub     r6, r1, r0
	strh    r6, [r7, #0x6]
	ldrh    r6, [r7, #0x6]
	sub     r1, r0, r1
	.hword  0x1d1b @ add r3, r3, #0x4
	strh    r6, [r7, #0x2]
	mov     r6, #0xa8
	sub     r6, r6, r0
	lsl     r6, r6, #3
	add     r6, r2, r6
	strh    r1, [r6, #0x6]
	ldrh    r1, [r6, #0x6]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r1, [r6, #0x2]
	ldr     r1, [pc, #0x24] @ 0x2231460, (=0xc08)
	ldr     r1, [r4, r1]
	add     r5, r5, r1
	cmp     r0, #0xa8
	blt     branch_2231406
	mov     r1, #0x6
	mov     r0, r2
	lsl     r1, r1, #8
	blx 0x20c2c54
	mov     r0, #0x3
	lsl     r0, r0, #10
	ldr     r0, [r4, r0]
	bl      0x2013b94
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223145a


.align 2


.word 0x3130 @ 0x223145c
.word 0xc08 @ 0x2231460
.thumb
Function_2231464: @ 2231464 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223847c
	.hword  0x1e80 @ sub r0, r0, #0x2
	cmp     r0, #0x1
	bhi     branch_223147e
	ldr     r0, [pc, #0xc] @ 0x2231480, (=0x61b)
	bl      0x2005748
	ldr     r0, [pc, #0x8] @ 0x2231484, (=0x3d48)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_223147e: @ 223147e :thumb
	pop     {r4,pc}
@ 0x2231480

.word 0x61b @ 0x2231480
.word 0x3d48 @ 0x2231484
.thumb
Function_2231488: @ 2231488 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	blt     branch_223149a
	bl      0x2022974
.thumb
branch_223149a: @ 223149a :thumb
	mov     r0, #0x1f
	bl      0x2025c48
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	sub     r0, #0xc
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r2, [r1, r0]
	mov     r0, #0x35
	lsl     r0, r0, #4
	ldrb    r1, [r2, r0]
	cmp     r1, #0xff
	beq     branch_22314bc
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r2, r0]
.thumb
branch_22314bc: @ 22314bc :thumb
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	sub     r0, #0xc
	lsl     r1, r1, #2
	add     r1, r4, r1
	ldr     r2, [r1, r0]
	mov     r0, #0xd2
	lsl     r0, r0, #2
	ldrb    r1, [r2, r0]
	cmp     r1, #0xff
	beq     branch_22314d8
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r2, r0]
.thumb
branch_22314d8: @ 22314d8 :thumb
	mov     r0, #0x1f
	bl      0x2025c84
	ldr     r0, [pc, #0x10] @ 0x22314f0, (=0x2ba4)
	ldr     r0, [r4, r0]
	bl      Function_223846c
	ldr     r1, [pc, #0xc] @ 0x22314f4, (=0x2231465)
	ldr     r0, [pc, #0xc] @ 0x22314f8, (=0x3d48)
	str     r1, [r4, r0]
	pop     {r4,pc}
@ 0x22314ee


.align 2


.word 0x2ba4 @ 0x22314f0
.word 0x2231465 @ 0x22314f4
.word 0x3d48 @ 0x22314f8
.thumb
Function_22314fc: @ 22314fc :thumb
	push    {r3-r7,lr}
	mov     r7, r2
	ldr     r2, [pc, #0xf8] @ 0x22315fc, (=0x21bf67c)
	mov     r6, r1
	ldr     r3, [r2, #0x48]
	ldr     r1, [pc, #0xf8] @ 0x2231600, (=0x3d4c)
	mov     r5, r0
	mov     r2, #0x10
	ldr     r0, [r5, r1]
	tst     r2, r3
	beq     branch_223151a
	cmp     r0, #0x1
	beq     branch_223151a
	mov     r2, #0x1
	str     r2, [r5, r1]
.thumb
branch_223151a: @ 223151a :thumb
	ldr     r1, [pc, #0xe0] @ 0x22315fc, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x20
	tst     r1, r2
	beq     branch_2231530
	ldr     r1, [pc, #0xd8] @ 0x2231600, (=0x3d4c)
	ldr     r2, [r5, r1]
	cmp     r2, #0x0
	beq     branch_2231530
	mov     r2, #0x0
	str     r2, [r5, r1]
.thumb
branch_2231530: @ 2231530 :thumb
	ldr     r1, [pc, #0xcc] @ 0x2231600, (=0x3d4c)
	ldr     r1, [r5, r1]
	cmp     r0, r1
	beq     branch_2231560
	cmp     r1, #0x0
	bne     branch_2231540
	mov     r1, #0x1
	b       branch_2231542
@ 0x2231540

.thumb
branch_2231540: @ 2231540 :thumb
	mov     r1, #0x0
.thumb
branch_2231542: @ 2231542 :thumb
	ldr     r0, [pc, #0xc0] @ 0x2231604, (=0x2dc4)
	ldr     r0, [r5, r0]
	bl      0x2021d6c
	ldr     r0, [pc, #0xb4] @ 0x2231600, (=0x3d4c)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2231556
	mov     r1, #0x1
	b       branch_2231558
@ 0x2231556

.thumb
branch_2231556: @ 2231556 :thumb
	mov     r1, #0x0
.thumb
branch_2231558: @ 2231558 :thumb
	ldr     r0, [pc, #0xac] @ 0x2231608, (=0x2dc8)
	ldr     r0, [r5, r0]
	bl      0x2021d6c
.thumb
branch_2231560: @ 2231560 :thumb
	ldr     r0, [pc, #0x98] @ 0x22315fc, (=0x21bf67c)
	mov     r4, #0x0
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	mov     r2, r1
	tst     r2, r0
	beq     branch_2231572
	mov     r4, r0
	b       branch_22315a2
@ 0x2231572

.thumb
branch_2231572: @ 2231572 :thumb
	mov     r0, #0x1
	and     r1, r0
	beq     branch_2231588
	cmp     r6, #0x0
	beq     branch_2231588
	ldr     r2, [pc, #0x80] @ 0x2231600, (=0x3d4c)
	ldr     r2, [r5, r2]
	cmp     r2, #0x0
	bne     branch_2231588
	mov     r4, r0
	b       branch_22315a2
@ 0x2231588

.thumb
branch_2231588: @ 2231588 :thumb
	cmp     r1, #0x0
	beq     branch_2231598
	ldr     r0, [pc, #0x70] @ 0x2231600, (=0x3d4c)
	ldr     r0, [r5, r0]
	cmp     r0, #0x1
	bne     branch_2231598
	mov     r4, #0x2
	b       branch_22315a2
@ 0x2231598

.thumb
branch_2231598: @ 2231598 :thumb
	cmp     r1, #0x0
	beq     branch_22315a2
	cmp     r6, #0x0
	bne     branch_22315a2
	mov     r4, #0x3
.thumb
branch_22315a2: @ 22315a2 :thumb
	cmp     r4, #0x1
	bne     branch_22315da
	ldr     r0, [pc, #0x64] @ 0x223160c, (=0x5dc)
	bl      0x2005748
	mov     r0, #0xab
	bl      0x20364f0
	mov     r3, #0xa
	ldr     r1, [pc, #0x58] @ 0x2231610, (=0x2c34)
	mov     r0, #0x1
	str     r0, [r5, r1]
	mov     r0, #0x15
	sub     r1, #0x64
	str     r0, [r7, #0x0]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x11
	lsl     r3, r3, #6
	bl      Function_2230e04
	ldr     r0, [pc, #0x44] @ 0x2231614, (=0x2bd0)
	mov     r1, #0x13
	add     r0, r5, r0
	bl      0x200e7fc
	ldr     r1, [pc, #0x40] @ 0x2231618, (=0x3d50)
	str     r0, [r5, r1]
.thumb
branch_22315da: @ 22315da :thumb
	cmp     r4, #0x2
	bne     branch_22315ee
	ldr     r0, [pc, #0x2c] @ 0x223160c, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x13
	bl      Function_2231f1c
.thumb
branch_22315ee: @ 22315ee :thumb
	cmp     r4, #0x3
	bne     branch_22315f8
	ldr     r0, [pc, #0x18] @ 0x223160c, (=0x5dc)
	bl      0x2005748
.thumb
branch_22315f8: @ 22315f8 :thumb
	pop     {r3-r7,pc}
@ 0x22315fa


.align 2


.word 0x21bf67c @ 0x22315fc
.word 0x3d4c @ 0x2231600
.word 0x2dc4 @ 0x2231604
.word 0x2dc8 @ 0x2231608
.word 0x5dc @ 0x223160c
.word 0x2c34 @ 0x2231610
.word 0x2bd0 @ 0x2231614
.word 0x3d50 @ 0x2231618
.thumb
Function_223161c: @ 223161c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x1d
	bls     branch_2231632
	b       branch_2231b88
@ 0x2231632

.thumb
branch_2231632: @ 2231632 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223163e

Jumppoints_223163e:
.hword branch_223167a - Jumppoints_223163e - 2
.hword branch_22316e8 - Jumppoints_223163e - 2
.hword branch_22316fa - Jumppoints_223163e - 2
.hword branch_2231770 - Jumppoints_223163e - 2
.hword branch_22317f0 - Jumppoints_223163e - 2
.hword branch_2231818 - Jumppoints_223163e - 2
.hword branch_2231838 - Jumppoints_223163e - 2
.hword branch_223186e - Jumppoints_223163e - 2
.hword branch_2231892 - Jumppoints_223163e - 2
.hword branch_22318b8 - Jumppoints_223163e - 2
.hword branch_22318e4 - Jumppoints_223163e - 2
.hword branch_223191e - Jumppoints_223163e - 2
.hword branch_2231942 - Jumppoints_223163e - 2
.hword branch_223194e - Jumppoints_223163e - 2
.hword branch_223195a - Jumppoints_223163e - 2
.hword branch_223196a - Jumppoints_223163e - 2
.hword branch_2231976 - Jumppoints_223163e - 2
.hword branch_22319b8 - Jumppoints_223163e - 2
.hword branch_2231a10 - Jumppoints_223163e - 2
.hword branch_2231a6e - Jumppoints_223163e - 2
.hword branch_2231a7a - Jumppoints_223163e - 2
.hword branch_2231ac8 - Jumppoints_223163e - 2
.hword branch_2231ab6 - Jumppoints_223163e - 2
.hword branch_2231afc - Jumppoints_223163e - 2
.hword branch_2231b10 - Jumppoints_223163e - 2
.hword branch_2231b4a - Jumppoints_223163e - 2
.hword branch_2231b5a - Jumppoints_223163e - 2
.hword branch_2231b66 - Jumppoints_223163e - 2
.hword branch_2231b78 - Jumppoints_223163e - 2
.hword branch_2231b88 - Jumppoints_223163e - 2
.thumb
branch_223167a: @ 223167a :thumb
	mov     r0, r6
	bl      0x2006840
	ldr     r1, [r0, #0x8]
	ldr     r0, [pc, #0x34c] @ 0x22319d0, (=0x2ba4)
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	bl      0x202442c
	ldr     r1, [pc, #0x344] @ 0x22319d4, (=0x2ba0)
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
	bl      0x2025e44
	ldr     r1, [pc, #0x33c] @ 0x22319d8, (=0x2ba8)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      0x2027b50
	ldr     r1, [pc, #0x338] @ 0x22319dc, (=0x2bac)
	str     r0, [r4, r1]
	sub     r1, #0xc
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      0x202db00
	ldr     r1, [pc, #0x32c] @ 0x22319e0, (=0x2bb4)
	str     r0, [r4, r1]
	sub     r1, #0x14
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x202db00
	ldr     r1, [pc, #0x324] @ 0x22319e4, (=0x2bb8)
	str     r0, [r4, r1]
	sub     r1, #0x18
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	bl      0x202db00
	ldr     r1, [pc, #0x318] @ 0x22319e8, (=0x2bbc)
	mov     r2, #0x1
	str     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mov     r0, r4
	bl      Function_2230f20
	mov     r1, #0xaf
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x22316e8

.thumb
branch_22316e8: @ 22316e8 :thumb
	bl      Function_2232054
	ldr     r0, [pc, #0x2fc] @ 0x22319ec, (=0x29fc)
	ldr     r0, [r4, r0]
	bl      Function_2232074
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x22316fa

.thumb
branch_22316fa: @ 22316fa :thumb
	bl      0x201d710
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2230f98
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x57
	bl      0x2002e7c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x57
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2d0] @ 0x22319ec, (=0x29fc)
	mov     r2, #0x1
	ldr     r0, [r4, r0]
	mov     r3, #0xd
	bl      0x200daa4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x57
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2bc] @ 0x22319ec, (=0x29fc)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200daa4
	ldr     r0, [pc, #0x29c] @ 0x22319dc, (=0x2bac)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, #0x13
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x57
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x29c] @ 0x22319ec, (=0x29fc)
	mov     r3, #0xa
	ldr     r0, [r4, r0]
	bl      0x200dd0c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2230c44
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x2231770

.thumb
branch_2231770: @ 2231770 :thumb
	mov     r1, #0xaf
	lsl     r1, r1, #6
	ldr     r6, [r4, r1]
	ldr     r1, [pc, #0x278] @ 0x22319f0, (=0x21bf67c)
	mov     r2, #0x40
	ldr     r1, [r1, #0x48]
	mov     r3, r1
	tst     r3, r2
	beq     branch_223178e
	mov     r1, r6
	sub     r2, #0x41
	bl      Function_2230f20
	mov     r6, r0
	b       branch_22317ca
@ 0x223178e

.thumb
branch_223178e: @ 223178e :thumb
	mov     r2, #0x80
	tst     r2, r1
	beq     branch_22317a0
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_2230f20
	mov     r6, r0
	b       branch_22317ca
@ 0x22317a0

.thumb
branch_22317a0: @ 22317a0 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22317ba
	ldr     r0, [pc, #0x24c] @ 0x22319f4, (=0x5dc)
	bl      0x2005748
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1c
	mov     r3, r5
	bl      Function_2230c10
	b       branch_22317ca
@ 0x22317ba

.thumb
branch_22317ba: @ 22317ba :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22317ca
	ldr     r0, [pc, #0x230] @ 0x22319f4, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x4
	str     r0, [r5, #0x0]
.thumb
branch_22317ca: @ 22317ca :thumb
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, r6
	bne     branch_22317d6
	b       branch_2231b88
@ 0x22317d6

.thumb
branch_22317d6: @ 22317d6 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	bl      0x2005748
	mov     r0, #0xaf
	lsl     r0, r0, #6
	str     r6, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2230c44
	b       branch_2231b88
@ 0x22317f0

.thumb
branch_22317f0: @ 22317f0 :thumb
	ldr     r1, [pc, #0x204] @ 0x22319f8, (=0x2bd0)
	mov     r3, #0xa
	add     r1, r4, r1
	mov     r2, #0x7
	lsl     r3, r3, #6
	bl      Function_2230e04
	ldr     r3, [pc, #0x1fc] @ 0x22319fc, (=0x2bf0)
	mov     r2, #0x8
	mov     r1, r3
	str     r0, [r4, r3]
	sub     r1, #0x10
	ldr     r3, [r4, r3]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2230e04
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231818

.thumb
branch_2231818: @ 2231818 :thumb
	mov     r0, r6
	mov     r1, r5
	mov     r2, #0x0
	bl      Function_2231088
	ldr     r0, [pc, #0x1cc] @ 0x22319f0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22318ec
	ldr     r0, [pc, #0x1c4] @ 0x22319f4, (=0x5dc)
	bl      0x2005748
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231838

.thumb
branch_2231838: @ 2231838 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	bl      0x2005748
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [pc, #0x1ac] @ 0x22319f8, (=0x2bd0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230518
	ldr     r0, [pc, #0x1ac] @ 0x2231a00, (=0x2be0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230500
	mov     r1, #0x1
	mov     r0, r4
	lsl     r2, r1, #12
	mov     r3, #0x66
	bl      Function_22312b4
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x223186e

.thumb
branch_223186e: @ 223186e :thumb
	bl      Function_2231354
	cmp     r0, #0x0
	beq     branch_22318ec
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_2230c44
	ldr     r2, [pc, #0x180] @ 0x2231a04, (=0x708000)
	mov     r0, r4
	mov     r1, #0x0
	lsr     r3, r2, #1
	bl      Function_22312b4
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231892

.thumb
branch_2231892: @ 2231892 :thumb
	bl      Function_2231354
	ldr     r0, [pc, #0x158] @ 0x22319f0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r1, r0
	beq     branch_22318ec
	lsl     r0, r0, #9
	bl      0x2005748
	mov     r1, #0x1
	mov     r0, r4
	lsl     r2, r1, #12
	mov     r3, #0x66
	bl      Function_22312b4
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x22318b8

.thumb
branch_22318b8: @ 22318b8 :thumb
	bl      Function_2231354
	cmp     r0, #0x0
	beq     branch_22318ec
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2230c44
	ldr     r2, [pc, #0x138] @ 0x2231a04, (=0x708000)
	mov     r0, r4
	mov     r1, #0x0
	lsr     r3, r2, #1
	bl      Function_22312b4
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x22318e4

.thumb
branch_22318e4: @ 22318e4 :thumb
	bl      Function_2231354
	cmp     r0, #0x0
	bne     branch_22318ee
.thumb
branch_22318ec: @ 22318ec :thumb
	b       branch_2231b88
@ 0x22318ee

.thumb
branch_22318ee: @ 22318ee :thumb
	ldr     r0, [pc, #0x108] @ 0x22319f8, (=0x2bd0)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x13
	mov     r3, #0xa
	bl      0x200e060
	ldr     r0, [pc, #0x100] @ 0x2231a00, (=0x2be0)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0xa
	mov     r3, #0xe
	bl      0x200dc48
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, r4
	bl      Function_2231318
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x223191e

.thumb
branch_223191e: @ 223191e :thumb
	bl      Function_2230868
	ldr     r0, [pc, #0xd4] @ 0x22319f8, (=0x2bd0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230518
	ldr     r0, [pc, #0xc8] @ 0x22319f8, (=0x2bd0)
	add     r0, r4, r0
	bl      0x201acf4
	ldr     r0, [pc, #0xc0] @ 0x22319f8, (=0x2bd0)
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231942

.thumb
branch_2231942: @ 2231942 :thumb
	ldr     r2, [pc, #0xc4] @ 0x2231a08, (=0x2230835)
	mov     r0, r6
	mov     r1, r5
	bl      Function_2231088
	b       branch_2231b88
@ 0x223194e

.thumb
branch_223194e: @ 223194e :thumb
	ldr     r2, [pc, #0xb8] @ 0x2231a08, (=0x2230835)
	mov     r0, r6
	mov     r1, r5
	bl      Function_2231088
	b       branch_2231b88
@ 0x223195a

.thumb
branch_223195a: @ 223195a :thumb
	ldr     r1, [pc, #0xa4] @ 0x2231a00, (=0x2be0)
	ldr     r2, [pc, #0xac] @ 0x2231a0c, (=0x10200)
	add     r1, r4, r1
	bl      Function_2230bc4
	mov     r0, #0xd
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x223196a

.thumb
branch_223196a: @ 223196a :thumb
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x2231976

.thumb
branch_2231976: @ 2231976 :thumb
	bl      Function_2230868
	ldr     r0, [pc, #0x7c] @ 0x22319f8, (=0x2bd0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230518
	ldr     r0, [pc, #0x70] @ 0x22319f8, (=0x2bd0)
	add     r0, r4, r0
	bl      0x201acf4
	ldr     r0, [pc, #0x68] @ 0x22319f8, (=0x2bd0)
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x3
	bl      Function_2230c44
	ldr     r0, [pc, #0x4c] @ 0x22319ec, (=0x29fc)
	ldr     r0, [r4, r0]
	bl      Function_2230664
	mov     r0, r4
	bl      Function_2230410
	mov     r0, r4
	bl      Function_22304ac
	mov     r0, #0x11
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x22319b8

.thumb
branch_22319b8: @ 22319b8 :thumb
	bl      Function_2231bd8
	bl      0x2039734
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x12
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x22319ce


.align 2


.word 0x2ba4 @ 0x22319d0
.word 0x2ba0 @ 0x22319d4
.word 0x2ba8 @ 0x22319d8
.word 0x2bac @ 0x22319dc
.word 0x2bb4 @ 0x22319e0
.word 0x2bb8 @ 0x22319e4
.word 0x2bbc @ 0x22319e8
.word 0x29fc @ 0x22319ec
.word 0x21bf67c @ 0x22319f0
.word 0x5dc @ 0x22319f4
.word 0x2bd0 @ 0x22319f8
.word 0x2bf0 @ 0x22319fc
.word 0x2be0 @ 0x2231a00
.word 0x708000 @ 0x2231a04
.word Function_2230834+1 @ =0x2230835, 0x2231a08
.word 0x10200 @ 0x2231a0c
.thumb
branch_2231a10: @ 2231a10 :thumb
	mov     r6, #0x0
	mov     r0, r6
	bl      0x2035d78
	cmp     r0, #0x0
	beq     branch_2231a62
	mov     r0, r4
	add     r0, #0x90
	bl      0x2034150
	ldr     r1, [pc, #0x184] @ 0x2231bac, (=0x2b08)
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2231ca0
	mov     r6, r0
	bne     branch_2231a52
	ldr     r0, [pc, #0x17c] @ 0x2231bb0, (=0x2c30)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2231a52
	ldr     r0, [pc, #0x170] @ 0x2231bac, (=0x2b08)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x164] @ 0x2231bac, (=0x2b08)
	add     r0, r4, r0
	bl      0x201a954
	ldr     r0, [pc, #0x160] @ 0x2231bb0, (=0x2c30)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2231a52: @ 2231a52 :thumb
	ldr     r1, [pc, #0x160] @ 0x2231bb4, (=0x2af8)
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, r6
	bl      Function_2231e78
	ldr     r0, [pc, #0x150] @ 0x2231bb0, (=0x2c30)
	str     r6, [r4, r0]
.thumb
branch_2231a62: @ 2231a62 :thumb
	mov     r0, r4
	mov     r1, r6
	mov     r2, r5
	bl      Function_22314fc
	b       branch_2231b88
@ 0x2231a6e

.thumb
branch_2231a6e: @ 2231a6e :thumb
	mov     r1, #0x0
	mov     r2, #0x14
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x2231a7a

.thumb
branch_2231a7a: @ 2231a7a :thumb
	bl      Function_2230438
	ldr     r0, [pc, #0x138] @ 0x2231bb8, (=0x2bd0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230518
	ldr     r0, [pc, #0x130] @ 0x2231bbc, (=0x2be0)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_2230500
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2230c44
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x57
	bl      0x2002e7c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x2231ab6

.thumb
branch_2231ab6: @ 2231ab6 :thumb
	bl      0x2036780
	cmp     r0, #0x0
	bne     branch_2231b88
	mov     r0, #0xb1
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231ac8

.thumb
branch_2231ac8: @ 2231ac8 :thumb
	ldr     r0, [pc, #0xf4] @ 0x2231bc0, (=0x2c34)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2231b88
	ldr     r1, [pc, #0xec] @ 0x2231bc4, (=0x2dd8)
	mov     r0, r4
	ldr     r2, [r4, #0x0]
	add     r0, #0x90
	add     r1, r4, r1
	bl      Function_223829c
	ldr     r0, [pc, #0xdc] @ 0x2231bc4, (=0x2dd8)
	mov     r1, #0xd6
	add     r0, r4, r0
	lsl     r1, r1, #2
	bl      Function_222d1f0
	mov     r0, r4
	bl      Function_2231488
	mov     r0, #0x17
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231afc

.thumb
branch_2231afc: @ 2231afc :thumb
	bl      Function_2238528
	cmp     r0, #0x4
	bne     branch_2231b88
	mov     r0, #0x93
	bl      0x20364f0
	mov     r0, #0x18
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231b10

.thumb
branch_2231b10: @ 2231b10 :thumb
	bl      Function_2231c84
	cmp     r0, #0x0
	beq     branch_2231b22
	mov     r0, #0x93
	bl      0x2036540
	cmp     r0, #0x1
	bne     branch_2231b88
.thumb
branch_2231b22: @ 2231b22 :thumb
	bl      Function_22384f4
	ldr     r1, [pc, #0x90] @ 0x2231bb8, (=0x2bd0)
	mov     r3, #0xa
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x12
	lsl     r3, r3, #6
	bl      Function_2230e04
	ldr     r0, [pc, #0x90] @ 0x2231bc8, (=0x3d50)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x19
	bl      Function_2231f1c
	b       branch_2231b88
@ 0x2231b4a

.thumb
branch_2231b4a: @ 2231b4a :thumb
	ldr     r0, [pc, #0x80] @ 0x2231bcc, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_2231b88
	mov     r0, #0x13
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231b5a

.thumb
branch_2231b5a: @ 2231b5a :thumb
	mov     r1, #0x0
	mov     r2, #0x1c
	mov     r3, r5
	bl      Function_2230c10
	b       branch_2231b88
@ 0x2231b66

.thumb
branch_2231b66: @ 2231b66 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2231b88
	mov     r0, #0xb1
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	str     r0, [r5, #0x0]
	b       branch_2231b88
@ 0x2231b78

.thumb
branch_2231b78: @ 2231b78 :thumb
	bl      Function_2230438
	mov     r0, r4
	bl      Function_2231318
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2231b88

.thumb
branch_2231b88: @ 2231b88 :thumb
	ldr     r0, [pc, #0x44] @ 0x2231bd0, (=0x2c44)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2231b94
	bl      0x20219f8
.thumb
branch_2231b94: @ 2231b94 :thumb
	bl      Function_2237ca0
	ldr     r0, [pc, #0x38] @ 0x2231bd4, (=0x3d48)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2231ba4
	mov     r0, r4
	blx     r1
.thumb
branch_2231ba4: @ 2231ba4 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2231baa


.align 2


.word 0x2b08 @ 0x2231bac
.word 0x2c30 @ 0x2231bb0
.word 0x2af8 @ 0x2231bb4
.word 0x2bd0 @ 0x2231bb8
.word 0x2be0 @ 0x2231bbc
.word 0x2c34 @ 0x2231bc0
.word 0x2dd8 @ 0x2231bc4
.word 0x3d50 @ 0x2231bc8
.word 0x21bf67c @ 0x2231bcc
.word 0x2c44 @ 0x2231bd0
.word 0x3d48 @ 0x2231bd4
.thumb
Function_2231bd8: @ 2231bd8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0xaf
	lsl     r0, r0, #6
	ldr     r1, [r5, r0]
	mov     r2, #0xd6
	lsl     r1, r1, #2
	add     r1, r5, r1
	sub     r0, #0xc
	ldr     r4, [r1, r0]
	mov     r0, r5
	add     r0, #0xe0
	mov     r1, r4
	lsl     r2, r2, #2
	blx 0x20d50b8
	mov     r1, #0x41
	mov     r0, r5
	lsl     r1, r1, #2
	add     r0, #0x90
	add     r1, r4, r1
	mov     r2, #0x50
	blx 0x20d50b8
	ldr     r0, [pc, #0x34] @ 0x2231c40, (=0x428)
	mov     r1, #0x0
	strb    r1, [r5, r0]
	mov     r0, r5
	add     r0, #0xde
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x10
	mov     r2, #0xf
	bic     r1, r0
	mov     r0, r5
	add     r0, #0xde
	strb    r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0xde
	ldrb    r1, [r0, #0x0]
	mov     r0, #0x20
	orr     r1, r0
	mov     r0, r5
	add     r0, #0xde
	strb    r1, [r0, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2231c44, (=0x2ba4)
	add     r0, r5, #0x4
	ldr     r1, [r5, r1]
	bl      Function_222d1c4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2231c3e


.align 2


.word 0x428 @ 0x2231c40
.word 0x2ba4 @ 0x2231c44
.thumb
Function_2231c48: @ 2231c48 :thumb
	push    {r3,r4}
	ldr     r3, [r0, #0x0]
	ldr     r1, [r0, #0x4]
	mov     r2, r0
	mov     r4, #0x0
	cmp     r1, r3
	bge     branch_2231c5c
	mov     r3, r1
	mov     r4, #0x1
	add     r2, r0, #0x4
.thumb
branch_2231c5c: @ 2231c5c :thumb
	ldr     r1, [r0, #0x8]
	cmp     r1, r3
	bge     branch_2231c6a
	mov     r2, r0
	mov     r3, r1
	mov     r4, #0x2
	add     r2, #0x8
.thumb
branch_2231c6a: @ 2231c6a :thumb
	ldr     r1, [r0, #0xc]
	cmp     r1, r3
	bge     branch_2231c76
	mov     r2, r0
	mov     r4, #0x3
	add     r2, #0xc
.thumb
branch_2231c76: @ 2231c76 :thumb
	ldr     r0, [pc, #0x8] @ 0x2231c80, (=0x3fff0001)
	str     r0, [r2, #0x0]
	add     r0, r4, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2231c80

.word 0x3fff0001 @ 0x2231c80
.thumb
Function_2231c84: @ 2231c84 :thumb
	push    {r3-r5,lr}
	mov     r5, #0x0
	mov     r4, #0x1
.thumb
branch_2231c8a: @ 2231c8a :thumb
	mov     r0, r4
	bl      0x2032ee8
	cmp     r0, #0x0
	beq     branch_2231c96
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2231c96: @ 2231c96 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x5
	blt     branch_2231c8a
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x2231ca0

.thumb
Function_2231ca0: @ 2231ca0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x48
	mov     r5, r0
	mov     r6, #0x0
	mov     r0, #0x1
	str     r1, [sp, #0x10]
	mov     r7, r6
	str     r0, [sp, #0x24]
	add     r4, r5, #0x4
.thumb
branch_2231cb2: @ 2231cb2 :thumb
	ldr     r0, [sp, #0x24]
	bl      0x2032ee8
	cmp     r0, #0x0
	bne     branch_2231cd4
	ldr     r0, [pc, #0x19c] @ 0x2231e5c, (=0x2c08)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2231cc6
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2231cc6: @ 2231cc6 :thumb
	ldr     r0, [pc, #0x194] @ 0x2231e5c, (=0x2c08)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x190] @ 0x2231e60, (=0x3fff0001)
	add     r0, #0x14
	str     r1, [r4, r0]
	b       branch_2231cfc
@ 0x2231cd4

.thumb
branch_2231cd4: @ 2231cd4 :thumb
	ldr     r1, [pc, #0x184] @ 0x2231e5c, (=0x2c08)
	ldr     r1, [r4, r1]
	cmp     r1, r0
	beq     branch_2231cfa
	ldr     r1, [pc, #0x17c] @ 0x2231e5c, (=0x2c08)
	.hword  0x1c7f @ add r7, r7, #0x1
	str     r0, [r4, r1]
	mov     r0, r1
	add     r1, #0x34
	ldr     r1, [r5, r1]
	add     r0, #0x34
	add     r2, r1, #0x1
	ldr     r0, [r5, r0]
	ldr     r1, [pc, #0x174] @ 0x2231e64, (=0x2c3c)
	.hword  0x1c76 @ add r6, r6, #0x1
	str     r2, [r5, r1]
	sub     r1, #0x20
	str     r0, [r4, r1]
	b       branch_2231cfc
@ 0x2231cfa

.thumb
branch_2231cfa: @ 2231cfa :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2231cfc: @ 2231cfc :thumb
	ldr     r0, [sp, #0x24]
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	cmp     r0, #0x5
	blt     branch_2231cb2
	cmp     r7, #0x0
	bne     branch_2231d12
	add     sp, #0x48
	mov     r0, r6
	pop     {r3-r7,pc}
@ 0x2231d12

.thumb
branch_2231d12: @ 2231d12 :thumb
	ldr     r1, [pc, #0x154] @ 0x2231e68, (=0x2c20)
	ldr     r0, [r5, r1]
	str     r0, [sp, #0x38]
	add     r0, r1, #0x4
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x3c]
	mov     r0, r1
	add     r0, #0x8
	ldr     r0, [r5, r0]
	add     r1, #0xc
	str     r0, [sp, #0x40]
	ldr     r0, [r5, r1]
	str     r0, [sp, #0x44]
	add     r0, sp, #0x38
	bl      Function_2231c48
	str     r0, [sp, #0x28]
	add     r0, sp, #0x38
	bl      Function_2231c48
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x38
	bl      Function_2231c48
	str     r0, [sp, #0x30]
	add     r0, sp, #0x38
	bl      Function_2231c48
	str     r0, [sp, #0x34]
	mov     r0, #0x57
	bl      0x200b358
	mov     r4, r0
	ldr     r2, [pc, #0x114] @ 0x2231e6c, (=0x1a5)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x57
	bl      0x200b144
	str     r0, [sp, #0x1c]
	mov     r5, #0x0
	ldr     r0, [sp, #0x10]
	mov     r1, r5
	bl      0x201ada4
	mov     r0, r5
	str     r0, [sp, #0x14]
	cmp     r6, #0x0
	ble     branch_2231e40
	add     r0, sp, #0x28
	str     r0, [sp, #0x18]
.thumb
branch_2231d78: @ 2231d78 :thumb
	ldr     r0, [sp, #0x18]
	ldr     r0, [r0, #0x0]
	bl      0x2032ee8
	mov     r7, r0
	beq     branch_2231e30
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, r7
	bl      0x200b498
	ldr     r1, [sp, #0x1c]
	mov     r0, r4
	mov     r2, #0x35
	mov     r3, #0x57
	bl      0x200b29c
	str     r0, [sp, #0x20]
	mov     r0, r7
	bl      0x2025f30
	cmp     r0, #0x0
	str     r5, [sp, #0x0]
	bne     branch_2231dc2
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc0] @ 0x2231e70, (=0x50600)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x20]
	mov     r3, r1
	bl      0x201d78c
	b       branch_2231ddc
@ 0x2231dc2

.thumb
branch_2231dc2: @ 2231dc2 :thumb
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	mov     r0, #0xc1
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r1, #0x0
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x20]
	mov     r3, r1
	bl      0x201d78c
.thumb
branch_2231ddc: @ 2231ddc :thumb
	ldr     r0, [sp, #0x20]
	bl      0x20237bc
	mov     r0, r7
	bl      0x2025f20
	mov     r2, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	lsr     r2, r2, #16
	mov     r3, #0x5
	bl      0x200b60c
	ldr     r1, [sp, #0x1c]
	mov     r0, r4
	mov     r2, #0x36
	mov     r3, #0x57
	bl      0x200b29c
	mov     r7, r0
	str     r5, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x2231e74, (=0xe0f00)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	mov     r2, r7
	mov     r3, #0x50
	bl      0x201d78c
	mov     r0, r7
	bl      0x20237bc
	add     r5, #0x18
.thumb
branch_2231e30: @ 2231e30 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x14]
	cmp     r0, r6
	blt     branch_2231d78
.thumb
branch_2231e40: @ 2231e40 :thumb
	cmp     r6, #0x0
	beq     branch_2231e4a
	ldr     r0, [sp, #0x10]
	bl      0x201a954
.thumb
branch_2231e4a: @ 2231e4a :thumb
	ldr     r0, [sp, #0x1c]
	bl      0x200b190
	mov     r0, r4
	bl      0x200b3f0
	mov     r0, r6
	add     sp, #0x48
	pop     {r3-r7,pc}
@ 0x2231e5c

.word 0x2c08 @ 0x2231e5c
.word 0x3fff0001 @ 0x2231e60
.word 0x2c3c @ 0x2231e64
.word 0x2c20 @ 0x2231e68
.word 0x1a5 @ 0x2231e6c
.word 0x50600 @ 0x2231e70
.word 0xe0f00 @ 0x2231e74
.thumb
Function_2231e78: @ 2231e78 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x8c] @ 0x2231f0c, (=0x2bf4)
	mov     r4, r1
	str     r2, [r5, r0]
	ldr     r2, [pc, #0x88] @ 0x2231f10, (=0x1a5)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x57
	bl      0x200b144
	ldr     r1, [pc, #0x80] @ 0x2231f14, (=0x2a04)
	str     r0, [r5, r1]
	mov     r0, #0x57
	bl      0x200b358
	mov     r1, #0x2a
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	mov     r0, r4
	mov     r1, #0x0
	bl      0x201ada4
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2a
	ldr     r2, [pc, #0x5c] @ 0x2231f0c, (=0x2bf4)
	str     r3, [sp, #0x4]
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	mov     r1, #0x0
	bl      0x200b60c
	mov     r1, #0x2a
	lsl     r1, r1, #8
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x38
	mov     r3, #0x57
	bl      0x200b29c
	mov     r6, r0
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x2231f18, (=0x10200)
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      0x201a954
	mov     r0, r6
	bl      0x20237bc
	ldr     r0, [pc, #0x1c] @ 0x2231f14, (=0x2a04)
	ldr     r0, [r5, r0]
	bl      0x200b190
	mov     r0, #0x2a
	lsl     r0, r0, #8
	ldr     r0, [r5, r0]
	bl      0x200b3f0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2231f0c

.word 0x2bf4 @ 0x2231f0c
.word 0x1a5 @ 0x2231f10
.word 0x2a04 @ 0x2231f14
.word 0x10200 @ 0x2231f18
.thumb
Function_2231f1c: @ 2231f1c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_222d2dc
	bl      0x2039794
	mov     r0, #0xb1
	lsl     r0, r0, #6
	str     r6, [r5, r0]
	mov     r0, #0x16
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x2231f38

.thumb
Function_2231f38: @ 2231f38 :thumb
	push    {r3-r7,lr}
	str     r0, [sp, #0x0]
	bl      0x200682c
	mov     r7, r0
	ldr     r0, [pc, #0xa0] @ 0x2231fe4, (=0x2a08)
	mov     r6, #0x0
	mov     r4, r7
	add     r5, r7, r0
.thumb
branch_2231f4a: @ 2231f4a :thumb
	ldr     r0, [pc, #0x98] @ 0x2231fe4, (=0x2a08)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2231f5e
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      0x201a8fc
.thumb
branch_2231f5e: @ 2231f5e :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x10
	add     r5, #0x10
	cmp     r6, #0x13
	bcc     branch_2231f4a
	ldr     r0, [pc, #0x7c] @ 0x2231fe8, (=0x2bd0)
	ldr     r1, [r7, r0]
	cmp     r1, #0x0
	beq     branch_2231f7e
	add     r0, r7, r0
	bl      0x201acf4
	ldr     r0, [pc, #0x70] @ 0x2231fe8, (=0x2bd0)
	add     r0, r7, r0
	bl      0x201a8fc
.thumb
branch_2231f7e: @ 2231f7e :thumb
	ldr     r0, [pc, #0x6c] @ 0x2231fec, (=0x2be0)
	ldr     r1, [r7, r0]
	cmp     r1, #0x0
	beq     branch_2231f94
	add     r0, r7, r0
	bl      0x201acf4
	ldr     r0, [pc, #0x5c] @ 0x2231fec, (=0x2be0)
	add     r0, r7, r0
	bl      0x201a8fc
.thumb
branch_2231f94: @ 2231f94 :thumb
	ldr     r0, [pc, #0x58] @ 0x2231ff0, (=0x29fc)
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x50] @ 0x2231ff0, (=0x29fc)
	mov     r1, #0x1
	ldr     r0, [r7, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x44] @ 0x2231ff0, (=0x29fc)
	mov     r1, #0x2
	ldr     r0, [r7, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x3c] @ 0x2231ff0, (=0x29fc)
	mov     r1, #0x3
	ldr     r0, [r7, r0]
	bl      0x2019044
	ldr     r0, [pc, #0x30] @ 0x2231ff0, (=0x29fc)
	ldr     r0, [r7, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x2c] @ 0x2231ff4, (=0x61)
	ldr     r1, [pc, #0x30] @ 0x2231ff8, (=0x223d71c)
	bl      0x2000ec4
	mov     r0, #0x5b
	bl      0x201807c
	ldr     r0, [sp, #0x0]
	bl      0x2006830
	mov     r0, #0x57
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2231fe2


.align 2


.word 0x2a08 @ 0x2231fe4
.word 0x2bd0 @ 0x2231fe8
.word 0x2be0 @ 0x2231fec
.word 0x29fc @ 0x2231ff0
.word 0x61 @ 0x2231ff4
.word 0x223d71c @ 0x2231ff8
.thumb
Function_2231ffc: @ 2231ffc :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, r1
	mov     r5, r2
	bl      Function_2232074
	ldr     r1, [pc, #0x3c] @ 0x2232048, (=0x3d54)
	mov     r0, r5
	bl      0x2018184
	ldr     r2, [pc, #0x34] @ 0x2232048, (=0x3d54)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	ldr     r0, [pc, #0x30] @ 0x223204c, (=0x29fc)
	mov     r1, #0x1e
	str     r6, [r4, r0]
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, r5
	str     r5, [r4, #0x0]
	bl      0x2002e7c
	ldr     r0, [pc, #0x20] @ 0x2232050, (=0x2bb4)
	mov     r2, #0x0
	str     r7, [r4, r0]
	add     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2230c44
	mov     r0, r4
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x2232046


.align 2


.word 0x3d54 @ 0x2232048
.word 0x29fc @ 0x223204c
.word 0x2bb4 @ 0x2232050
.thumb
Function_2232054: @ 2232054 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x2232070, (=0x223d83c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223205e: @ 223205e :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223205e
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x2232070

.word 0x223d83c @ 0x2232070
.thumb
Function_2232074: @ 2232074 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xb8] @ 0x2232134, (=0x223d7bc)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xa8] @ 0x2232138, (=0x223d7e8)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
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
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0x84] @ 0x223213c, (=0x223d820)
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
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0x60] @ 0x2232140, (=0x223d804)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x3c] @ 0x2232144, (=0x223d7cc)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019ebc
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2232132


.align 2


.word 0x223d7bc @ 0x2232134
.word 0x223d7e8 @ 0x2232138
.word 0x223d820 @ 0x223213c
.word 0x223d804 @ 0x2232140
.word 0x223d7cc @ 0x2232144
.thumb
Function_2232148: @ 2232148 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r7, r0
	bl      0x202442c
	mov     r1, #0x0
	ldr     r4, [r5, #0x48]
	mvn     r1, r1
	mov     r6, r0
	cmp     r4, r1
	bne     branch_223217c
	mov     r2, r5
	add     r2, #0x4c
	ldrh    r2, [r2, #0x0]
	lsr     r1, r1, #16
	cmp     r2, r1
	bne     branch_223217c
	bl      0x202dabc
	mov     r0, r7
	mov     r1, #0x0
	bl      0x2024760
	mov     r0, #0x0
	blx 0x20c3ee4
.thumb
branch_223217c: @ 223217c :thumb
	mov     r0, r5
	add     r0, #0x4c
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x64
	bcc     branch_2232190
	cmp     r1, #0x98
	bhi     branch_2232190
	mov     r0, #0x46
	lsl     r0, r0, #6
	orr     r4, r0
.thumb
branch_2232190: @ 2232190 :thumb
	cmp     r4, #0x0
	bne     branch_2232198
	mov     r4, #0x0
	mvn     r4, r4
.thumb
branch_2232198: @ 2232198 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	tst     r0, r4
	bne     branch_22321a4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22321a4

.thumb
branch_22321a4: @ 22321a4 :thumb
	mov     r0, r5
	add     r0, #0x4e
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22321c0
	mov     r0, r6
	bl      0x202de2c
	cmp     r0, #0x1
	bne     branch_22321c0
	mov     r0, #0x2
	pop     {r3-r7,pc}
@ 0x22321c0

.thumb
branch_22321c0: @ 22321c0 :thumb
	mov     r0, r5
	add     r0, #0x4e
	ldrb    r0, [r0, #0x0]
	lsl     r0, r0, #29
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22321dc
	mov     r0, r6
	bl      0x202dd08
	cmp     r0, #0x0
	bne     branch_22321dc
	mov     r0, #0x4
	pop     {r3-r7,pc}
@ 0x22321dc

.thumb
branch_22321dc: @ 22321dc :thumb
	mov     r0, r6
	bl      0x202dce0
	cmp     r0, #0x0
	bne     branch_22321ea
	mov     r0, #0x3
	pop     {r3-r7,pc}
@ 0x22321ea

.thumb
branch_22321ea: @ 22321ea :thumb
	add     r5, #0x4e
	ldrb    r0, [r5, #0x0]
	lsl     r0, r0, #26
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_22321fa
	mov     r0, #0x5
	pop     {r3-r7,pc}
@ 0x22321fa

.thumb
branch_22321fa: @ 22321fa :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22321fe


.align 2, 0


.thumb
Function_2232200: @ 2232200 :thumb
	push    {r3,lr}
	mov     r0, #0x4
	bl      Function_2233424
	bl      Function_2233ad8
	pop     {r3,pc}
@ 0x223220e


.align 2, 0


.thumb
Function_2232210: @ 2232210 :thumb
	push    {r3,lr}
	bl      Function_22335a8
	str     r0, [sp, #0x0]
	pop     {r3,pc}
@ 0x223221a


.align 2, 0


.thumb
Function_223221c: @ 223221c :thumb
	push    {r3,lr}
	bl      Function_22335c8
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	pop     {r3,pc}
@ 0x223222c

.thumb
Function_223222c: @ 223222c :thumb
	push    {r4,lr}
	bl      Function_2233430
	cmp     r0, #0xc
	bne     branch_223224e
	bl      Function_2233410
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	bne     branch_223224a
	bl      Function_2233ad8
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_223224a: @ 223224a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223224e

.thumb
branch_223224e: @ 223224e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2232252


.align 2, 0


.thumb
Function_2232254: @ 2232254 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233510
	mov     r3, #0x0
	mov     r1, r3
.thumb
branch_2232260: @ 2232260 :thumb
	ldr     r2, [r0, #0x0]
	cmp     r2, #0x0
	beq     branch_2232270
	ldrh    r2, [r0, #0x6]
	cmp     r4, r2
	bne     branch_2232270
	strb    r1, [r0, #0x8]
	strb    r1, [r0, #0xa]
.thumb
branch_2232270: @ 2232270 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0xc
	cmp     r3, #0x8
	blt     branch_2232260
	pop     {r4,pc}
@ 0x223227a


.align 2, 0


.thumb
Function_223227c: @ 223227c :thumb
	push    {r3,lr}
	bl      Function_2233510
	mov     r1, r0
	add     r1, #0x62
	ldrh    r3, [r1, #0x0]
	mov     r2, #0x1
	mov     r1, r3
	tst     r1, r2
	beq     branch_22322a2
	mov     r1, r0
	add     r1, #0x62
	ldrh    r3, [r1, #0x0]
	mov     r1, #0x1
	add     r0, #0x62
	bic     r3, r1
	strh    r3, [r0, #0x0]
	mov     r0, r2
	pop     {r3,pc}
@ 0x22322a2

.thumb
branch_22322a2: @ 22322a2 :thumb
	mov     r1, #0x40
	mov     r2, r3
	tst     r2, r1
	beq     branch_22322bc
	mov     r1, r0
	add     r1, #0x62
	ldrh    r2, [r1, #0x0]
	mov     r1, #0x40
	add     r0, #0x62
	bic     r2, r1
	strh    r2, [r0, #0x0]
	mov     r0, #0x7
	pop     {r3,pc}
@ 0x22322bc

.thumb
branch_22322bc: @ 22322bc :thumb
	lsl     r1, r1, #6
	tst     r1, r3
	beq     branch_22322d4
	mov     r1, r0
	add     r1, #0x62
	ldrh    r2, [r1, #0x0]
	ldr     r1, [pc, #0xc] @ 0x22322d8, (=0xffffefff)
	add     r0, #0x62
	and     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0xd
	pop     {r3,pc}
@ 0x22322d4

.thumb
branch_22322d4: @ 22322d4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22322d8

.word 0xffffefff @ 0x22322d8
.thumb
Function_22322dc: @ 22322dc :thumb
	push    {r4,lr}
	bl      Function_2233510
	mov     r4, r0
	mov     r1, #0x1
	add     r0, #0x60
	strb    r1, [r0, #0x0]
	blx 0x20ce7f4
	mov     r1, r4
	add     r1, #0x62
	strh    r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0x62
	ldrh    r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2232306
	mov     r0, #0x2
	lsl     r0, r0, #14
	cmp     r1, r0
	bne     branch_223230a
.thumb
branch_2232306: @ 2232306 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223230a

.thumb
branch_223230a: @ 223230a :thumb
	mov     r0, r4
	mov     r1, #0x66
	add     r0, #0x61
	strb    r1, [r0, #0x0]
	mov     r0, #0x0
	add     r4, #0x64
	strb    r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223231c

.thumb
Function_223231c: @ 223231c :thumb
	push    {r4,lr}
	bl      Function_2233408
	mov     r4, r0
	blx 0x20ce8a4
	strh    r0, [r4, #0x18]
	blx 0x20ceb20
	strh    r0, [r4, #0xc]
	pop     {r4,pc}
@ 0x2232332


.align 2, 0


.thumb
Function_2232334: @ 2232334 :thumb
	push    {r4,lr}
	bl      Function_2233478
	mov     r4, r0
	bl      Function_22334b4
	str     r0, [r4, #0x0]
	bl      Function_2233408
	ldrh    r0, [r0, #0x32]
	strh    r0, [r4, #0x4]
	blx 0x20ce934
	strh    r0, [r4, #0x6]
	mov     r0, #0xff
	strb    r0, [r4, #0x8]
	strb    r0, [r4, #0x9]
	strb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	strb    r0, [r4, #0xc]
	strb    r0, [r4, #0xd]
	pop     {r4,pc}
@ 0x2232360

.thumb
Function_2232360: @ 2232360 :thumb
	push    {r3-r7,lr}
	bl      Function_2233478
	mov     r7, r0
	blx 0x20ce7f4
	mov     r3, r0
	beq     branch_22323ac
	ldrh    r2, [r7, #0x4]
	mov     r1, #0x0
	mov     r0, #0x1
	mov     r12, r2
	mov     r4, #0x1c
.thumb
branch_223237a: @ 223237a :thumb
	lsr     r6, r2, #31
	lsl     r5, r2, #28
	sub     r5, r5, r6
	ror     r5, r4
	add     r5, r6, r5
	mov     r6, r0
	lsl     r6, r5
	mov     r5, r3
	tst     r5, r6
	beq     branch_22323a4
	mov     r0, r12
	add     r0, r0, r1
	lsr     r2, r0, #31
	lsl     r1, r0, #28
	sub     r1, r1, r2
	mov     r0, #0x1c
	ror     r1, r0
	add     r0, r2, r1
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r7, #0x4]
	pop     {r3-r7,pc}
@ 0x22323a4

.thumb
branch_22323a4: @ 22323a4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c52 @ add r2, r2, #0x1
	cmp     r1, #0x10
	blt     branch_223237a
.thumb
branch_22323ac: @ 22323ac :thumb
	pop     {r3-r7,pc}
@ 0x22323ae


.align 2, 0


.thumb
Function_22323b0: @ 22323b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x4]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x8
	bne     branch_22323c8
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_22323c8: @ 22323c8 :thumb
	pop     {r4,pc}
@ 0x22323ca


.align 2, 0


.thumb
Function_22323cc: @ 22323cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_22323e0
	bl      Function_22337fc
.thumb
branch_22323e0: @ 22323e0 :thumb
	pop     {r4,pc}
@ 0x22323e2


.align 2, 0


.thumb
Function_22323e4: @ 22323e4 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_223241a
	mov     r0, #0x2
	bl      Function_2233424
	bl      Function_2233430
	cmp     r0, #0xc
	bne     branch_2232406
	bl      Function_2233870
	mov     r0, #0x2
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232406

.thumb
branch_2232406: @ 2232406 :thumb
	bl      Function_2233a9c
	cmp     r0, #0x0
	bne     branch_2232422
	bl      Function_2233870
	mov     r0, #0x2
	bl      Function_2233424
	pop     {r3,pc}
@ 0x223241a

.thumb
branch_223241a: @ 223241a :thumb
	bl      Function_22337fc
	bl      Function_2233870
.thumb
branch_2232422: @ 2232422 :thumb
	pop     {r3,pc}
@ 0x2232424

.thumb
Function_2232424: @ 2232424 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_223244e
	bl      Function_2233430
	cmp     r0, #0xc
	bne     branch_2232446
	blx 0x20cdd28
	mov     r0, #0xc
	bl      Function_2233424
	mov     r0, #0x1
	bl      Function_22334f0
	pop     {r3,pc}
@ 0x2232446

.thumb
branch_2232446: @ 2232446 :thumb
	mov     r0, #0x1
	bl      Function_2233424
	pop     {r3,pc}
@ 0x223244e

.thumb
branch_223244e: @ 223244e :thumb
	bl      Function_22337fc
	mov     r0, #0x4
	bl      Function_2233424
	pop     {r3,pc}
@ 0x223245a


.align 2, 0


.thumb
Function_223245c: @ 223245c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	bne     branch_22324ba
	bl      Function_2233510
	mov     r4, r0
	add     r0, #0x61
	ldrh    r1, [r5, #0xa]
	ldrb    r0, [r0, #0x0]
	cmp     r0, r1
	ble     branch_2232484
	mov     r0, r4
	add     r0, #0x61
	strb    r1, [r0, #0x0]
	mov     r0, r4
	ldrh    r1, [r5, #0x8]
	add     r0, #0x64
	strb    r1, [r0, #0x0]
.thumb
branch_2232484: @ 2232484 :thumb
	bl      Function_223227c
	cmp     r0, #0x0
	beq     branch_223249a
	bl      Function_2233890
	cmp     r0, #0x0
	bne     branch_22324c2
	bl      Function_2232200
	pop     {r3-r5,pc}
@ 0x223249a

.thumb
branch_223249a: @ 223249a :thumb
	add     r4, #0x61
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x66
	bcs     branch_22324b4
	bl      Function_223231c
	bl      Function_22338bc
	cmp     r0, #0x0
	bne     branch_22324c2
	bl      Function_2232200
	pop     {r3-r5,pc}
@ 0x22324b4

.thumb
branch_22324b4: @ 22324b4 :thumb
	bl      Function_2232200
	pop     {r3-r5,pc}
@ 0x22324ba

.thumb
branch_22324ba: @ 22324ba :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_22324c2: @ 22324c2 :thumb
	pop     {r3-r5,pc}
@ 0x22324c4

.thumb
Function_22324c4: @ 22324c4 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_22324e2
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_22324ea
	bl      Function_22338f8
	cmp     r0, #0x0
	bne     branch_22324ea
	bl      Function_2232200
	pop     {r3,pc}
@ 0x22324e2

.thumb
branch_22324e2: @ 22324e2 :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_22324ea: @ 22324ea :thumb
	pop     {r3,pc}
@ 0x22324ec

.thumb
Function_22324ec: @ 22324ec :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	bl      Function_2233800
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_2232500
	b       branch_2232612
@ 0x2232500

.thumb
branch_2232500: @ 2232500 :thumb
	bl      Function_2233510
	mov     r4, r0
	mov     r0, #0x8
	bl      Function_2233424
	bl      Function_223222c
	cmp     r0, #0x0
	beq     branch_2232516
	b       branch_223261a
@ 0x2232516

.thumb
branch_2232516: @ 2232516 :thumb
	mov     r0, r4
	add     r0, #0x60
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x1
	bne     branch_2232528
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x60
	strb    r1, [r0, #0x0]
.thumb
branch_2232528: @ 2232528 :thumb
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x7
	bgt     branch_2232540
	bge     branch_2232562
	cmp     r0, #0x2
	bgt     branch_223261a
	cmp     r0, #0x0
	blt     branch_223261a
	beq     branch_2232548
	add     sp, #0xc
	cmp     r0, #0x2
	pop     {r4,r5,pc}
@ 0x2232540

.thumb
branch_2232540: @ 2232540 :thumb
	cmp     r0, #0x9
	beq     branch_2232608
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2232548

.thumb
branch_2232548: @ 2232548 :thumb
	bl      Function_2233a24
	cmp     r0, #0x0
	bne     branch_2232558
	bl      Function_2232200
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2232558

.thumb
branch_2232558: @ 2232558 :thumb
	mov     r0, #0x0
	bl      Function_22334c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2232562

.thumb
branch_2232562: @ 2232562 :thumb
	bl      Function_2233510
	bl      Function_223380c
	add     r4, #0x60
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x2
	bne     branch_223261a
	mov     r4, r5
	add     r4, #0x14
	bl      Function_2233560
	ldr     r1, [r5, #0x14]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_223261a
	bl      Function_2233570
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_223261a
	bl      Function_2233580
	ldr     r1, [r4, #0x4]
	lsr     r1, r1, #16
	cmp     r1, r0
	bne     branch_223261a
	bl      Function_2233510
	mov     r4, r0
	mov     r0, r5
	add     r0, #0xa
	bl      Function_2232210
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xa
	bl      Function_223221c
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	ldrh    r0, [r1, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r3, r4
	strh    r0, [r1, #0x2]
	mov     r0, #0x0
.thumb
branch_22325c6: @ 22325c6 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r1, r2
	bne     branch_22325de
	mov     r1, #0xc
	mul     r1, r0
	ldrh    r0, [r5, #0x10]
	add     r1, r4, r1
	add     sp, #0xc
	strh    r0, [r1, #0x6]
	mov     r0, #0x1
	strb    r0, [r1, #0xa]
	pop     {r4,r5,pc}
@ 0x22325de

.thumb
branch_22325de: @ 22325de :thumb
	cmp     r1, #0x0
	bne     branch_22325fc
	mov     r1, #0xc
	mul     r1, r0
	str     r2, [r4, r1]
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x2]
	add     r1, r4, r1
	add     sp, #0xc
	strh    r0, [r1, #0x4]
	ldrh    r0, [r5, #0x10]
	strh    r0, [r1, #0x6]
	mov     r0, #0x1
	strb    r0, [r1, #0xa]
	pop     {r4,r5,pc}
@ 0x22325fc

.thumb
branch_22325fc: @ 22325fc :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, #0xc
	cmp     r0, #0x8
	blt     branch_22325c6
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2232608

.thumb
branch_2232608: @ 2232608 :thumb
	ldrh    r0, [r5, #0x10]
	bl      Function_2232254
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2232612

.thumb
branch_2232612: @ 2232612 :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_223261a: @ 223261a :thumb
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223261e


.align 2, 0


.thumb
Function_2232620: @ 2232620 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	str     r0, [sp, #0x0]
	bl      Function_2233508
	mov     r7, r0
	add     r0, r4, #0x4
	bl      Function_2232210
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, r4, #0x4
	bl      Function_223221c
	add     r2, sp, #0x4
	strh    r0, [r2, #0x0]
	ldrh    r0, [r2, #0x0]
	ldr     r6, [sp, #0xc]
	mov     r1, r7
	strh    r0, [r2, #0x2]
	ldrh    r3, [r2, #0x2]
	mov     r0, #0x0
.thumb
branch_223264e: @ 223264e :thumb
	ldr     r2, [r1, #0x0]
	mov     r5, r1
	add     r5, #0x34
	cmp     r2, r6
	bne     branch_2232664
	ldrh    r5, [r5, #0x0]
	cmp     r5, r3
	bne     branch_2232664
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2232664

.thumb
branch_2232664: @ 2232664 :thumb
	cmp     r2, #0x0
	bne     branch_22326b0
	mov     r1, #0x38
	mul     r1, r0
	ldr     r0, [sp, #0xc]
	mov     r5, r4
	str     r0, [r7, r1]
	add     r0, r7, r1
	add     r5, #0x58
	add     r3, r0, #0x4
	mov     r2, #0xc
.thumb
branch_223267a: @ 223267a :thumb
	ldrh    r0, [r5, #0x0]
	.hword  0x1cad @ add r5, r5, #0x2
	strh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223267a
	add     r3, r7, r1
	add     r4, #0x70
	add     r3, #0x1c
	mov     r2, #0xc
.thumb
branch_223268e: @ 223268e :thumb
	ldrh    r0, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	strh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223268e
	add     r0, sp, #0x4
	ldrh    r0, [r0, #0x2]
	add     r1, r7, r1
	strh    r0, [r1, #0x34]
	ldr     r0, [sp, #0x0]
	add     r1, #0x36
	ldrh    r0, [r0, #0x12]
	add     sp, #0x10
	strb    r0, [r1, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22326b0

.thumb
branch_22326b0: @ 22326b0 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, #0x38
	cmp     r0, #0x8
	blt     branch_223264e
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22326be


.align 2, 0


.thumb
Function_22326c0: @ 22326c0 :thumb
	push    {r3,lr}
	bl      Function_2232360
	bl      Function_2233914
	cmp     r0, #0x0
	bne     branch_22326d2
	bl      Function_2232200
.thumb
branch_22326d2: @ 22326d2 :thumb
	pop     {r3,pc}
@ 0x22326d4

.thumb
Function_22326d4: @ 22326d4 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_22334b4
	mov     r4, r0
	bl      Function_2233508
	mov     r5, r0
	bl      Function_223222c
	cmp     r0, #0x0
	beq     branch_22326f0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22326f0

.thumb
branch_22326f0: @ 22326f0 :thumb
	mov     r1, #0x0
	mov     r2, r1
	mov     r3, r5
.thumb
branch_22326f6: @ 22326f6 :thumb
	ldr     r0, [r3, #0x0]
	cmp     r0, #0x0
	beq     branch_2232700
	mov     r1, #0x1
	b       branch_2232708
@ 0x2232700

.thumb
branch_2232700: @ 2232700 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x38
	cmp     r2, #0x8
	blt     branch_22326f6
.thumb
branch_2232708: @ 2232708 :thumb
	cmp     r1, #0x0
	beq     branch_2232726
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2232726
	bl      Function_22339d0
	cmp     r0, #0x0
	bne     branch_2232722
	bl      Function_2232200
.thumb
branch_2232722: @ 2232722 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2232726

.thumb
branch_2232726: @ 2232726 :thumb
	mov     r0, r4
	mov     r1, #0xc0
	blx 0x20c2c1c
	bl      Function_2233508
	bl      Function_2233808
	ldrh    r0, [r6, #0x36]
	cmp     r0, #0x8
	bcc     branch_22327b0
	bl      Function_2233554
	ldr     r1, [r4, #0x44]
	cmp     r1, r0
	bne     branch_22327b0
	mov     r5, r4
	add     r5, #0x50
	bl      Function_2233560
	ldr     r1, [r4, #0x50]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_22327b0
	bl      Function_2233570
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_22327b0
	bl      Function_2233580
	ldr     r1, [r5, #0x4]
	lsr     r1, r1, #16
	cmp     r1, r0
	bne     branch_22327b0
	mov     r0, r6
	mov     r1, r4
	bl      Function_2232620
	cmp     r0, #0x0
	beq     branch_22327a0
	bl      Function_2233508
	ldr     r1, [pc, #0x30] @ 0x22327b4, (=0x1c2)
	ldrb    r2, [r0, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r2, [r0, r1]
	ldrb    r0, [r0, r1]
	cmp     r0, #0x1c
	bls     branch_22327b0
	bl      Function_22339d0
	cmp     r0, #0x0
	bne     branch_22327b0
	bl      Function_2232200
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22327a0

.thumb
branch_22327a0: @ 22327a0 :thumb
	bl      Function_22339d0
	cmp     r0, #0x0
	bne     branch_22327ac
	bl      Function_2232200
.thumb
branch_22327ac: @ 22327ac :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22327b0

.thumb
branch_22327b0: @ 22327b0 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22327b4

.word 0x1c2 @ 0x22327b4
.thumb
Function_22327b8: @ 22327b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_223281e
	bl      Function_22334b4
	bl      Function_2233804
	mov     r0, #0x6
	bl      Function_2233424
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_2232826
	bl      Function_2233448
	cmp     r0, #0x1
	bne     branch_22327f8
	bl      Function_2233508
	ldr     r2, [pc, #0x3c] @ 0x2232828, (=0x1c3)
	mov     r1, #0xf0
	ldrb    r3, [r0, r2]
	bic     r3, r1
	mov     r1, #0x10
	orr     r1, r3
	strb    r1, [r0, r2]
.thumb
branch_22327f8: @ 22327f8 :thumb
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x4
	beq     branch_223280c
	cmp     r0, #0x5
	bne     branch_2232812
	mov     r0, r4
	bl      Function_22326d4
	cmp     r0, #0x0
	bne     branch_2232826
.thumb
branch_223280c: @ 223280c :thumb
	bl      Function_22326c0
	pop     {r4,pc}
@ 0x2232812

.thumb
branch_2232812: @ 2232812 :thumb
	ldrh    r0, [r4, #0x2]
	bl      Function_22337fc
	bl      Function_2232200
	pop     {r4,pc}
@ 0x223281e

.thumb
branch_223281e: @ 223281e :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_2232826: @ 2232826 :thumb
	pop     {r4,pc}
@ 0x2232828

.word 0x1c3 @ 0x2232828
.thumb
Function_223282c: @ 223282c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	bl      Function_22334b4
	mov     r4, r0
	bl      Function_2233508
	mov     r6, r0
	bl      Function_2233408
	bl      Function_223222c
	cmp     r0, #0x0
	beq     branch_223284e
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223284e

.thumb
branch_223284e: @ 223284e :thumb
	mov     r0, r4
	mov     r1, #0xc0
	blx 0x20c2c1c
	bl      Function_2233508
	bl      Function_2233808
	ldrh    r0, [r4, #0x3c]
	cmp     r0, #0x8
	bcc     branch_22328c8
	bl      Function_2233554
	ldr     r1, [r4, #0x44]
	cmp     r1, r0
	bne     branch_22328c8
	mov     r5, r4
	add     r5, #0x50
	bl      Function_2233560
	ldr     r1, [r4, #0x50]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_22328c8
	bl      Function_2233570
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_22328c8
	bl      Function_2233580
	ldr     r1, [r5, #0x4]
	lsr     r1, r1, #16
	cmp     r1, r0
	bne     branch_22328c8
	add     r0, r4, #0x4
	bl      Function_2232210
	ldr     r1, [pc, #0x2c] @ 0x22328d0, (=0x1c3)
	str     r0, [sp, #0x0]
	ldrb    r1, [r6, r1]
	str     r0, [sp, #0x4]
	lsl     r1, r1, #28
	lsr     r2, r1, #28
	mov     r1, #0x38
	mul     r1, r2
	ldr     r1, [r6, r1]
	cmp     r1, r0
	bne     branch_22328c8
	bl      Function_22339d0
	cmp     r0, #0x0
	bne     branch_22328c2
	bl      Function_2232200
.thumb
branch_22328c2: @ 22328c2 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22328c8

.thumb
branch_22328c8: @ 22328c8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22328ce


.align 2


.word 0x1c3 @ 0x22328d0
.thumb
Function_22328d4: @ 22328d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_2232934
	bl      Function_2233508
	ldr     r2, [pc, #0x54] @ 0x2232940, (=0x1c3)
	mov     r1, #0xf0
	ldrb    r3, [r0, r2]
	bic     r3, r1
	mov     r1, #0x20
	orr     r1, r3
	strb    r1, [r0, r2]
	mov     r0, #0x6
	bl      Function_2233424
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_223293c
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x4
	beq     branch_2232916
	cmp     r0, #0x5
	bne     branch_2232928
	bl      Function_223282c
	cmp     r0, #0x0
	bne     branch_223293c
.thumb
branch_2232916: @ 2232916 :thumb
	bl      Function_2232360
	bl      Function_2233938
	cmp     r0, #0x0
	bne     branch_223293c
	bl      Function_2232200
	pop     {r4,pc}
@ 0x2232928

.thumb
branch_2232928: @ 2232928 :thumb
	ldrh    r0, [r4, #0x2]
	bl      Function_22337fc
	bl      Function_2232200
	pop     {r4,pc}
@ 0x2232934

.thumb
branch_2232934: @ 2232934 :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_223293c: @ 223293c :thumb
	pop     {r4,pc}
@ 0x223293e


.align 2


.word 0x1c3 @ 0x2232940
.thumb
Function_2232944: @ 2232944 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2232988
	mov     r0, #0x7
	bl      Function_2233424
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_2232990
	bl      Function_2233448
	cmp     r0, #0x1
	bne     branch_2232990
	bl      Function_2233508
	ldr     r1, [pc, #0x2c] @ 0x2232994, (=0x1c3)
	ldrb    r0, [r0, r1]
	lsl     r0, r0, #24
	lsr     r0, r0, #28
	cmp     r0, #0x2
	bne     branch_2232990
	bl      Function_22339ec
	cmp     r0, #0x0
	bne     branch_2232980
	bl      Function_2232200
	pop     {r3,pc}
@ 0x2232980

.thumb
branch_2232980: @ 2232980 :thumb
	mov     r0, #0x3
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232988

.thumb
branch_2232988: @ 2232988 :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_2232990: @ 2232990 :thumb
	pop     {r3,pc}
@ 0x2232992


.align 2


.word 0x1c3 @ 0x2232994
.thumb
Function_2232998: @ 2232998 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x8]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_2232a1e
	mov     r0, #0x9
	bl      Function_2233424
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_2232a26
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x9
	bhi     branch_2232a12
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22329c8

Jumppoints_22329c8:
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a12 - Jumppoints_22329c8 - 2
.hword branch_2232a26 - Jumppoints_22329c8 - 2
.hword branch_22329dc - Jumppoints_22329c8 - 2
.hword branch_2232a26 - Jumppoints_22329c8 - 2
.hword branch_22329fc - Jumppoints_22329c8 - 2
.thumb
branch_22329dc: @ 22329dc :thumb
	ldrh    r0, [r4, #0xa]
	bl      Function_22334c0
	mov     r0, #0x1
	bl      Function_22334d8
	mov     r0, #0x0
	bl      Function_22334e4
	bl      Function_2233a24
	cmp     r0, #0x0
	bne     branch_2232a26
	bl      Function_2232200
	pop     {r4,pc}
@ 0x22329fc

.thumb
branch_22329fc: @ 22329fc :thumb
	bl      Function_22334cc
	cmp     r0, #0x0
	beq     branch_2232a0a
	mov     r0, #0x1
	bl      Function_22334e4
.thumb
branch_2232a0a: @ 2232a0a :thumb
	mov     r0, #0x0
	bl      Function_22334d8
	pop     {r4,pc}
@ 0x2232a12

.thumb
branch_2232a12: @ 2232a12 :thumb
	ldrh    r0, [r4, #0x2]
	bl      Function_22337fc
	bl      Function_2232200
	pop     {r4,pc}
@ 0x2232a1e

.thumb
branch_2232a1e: @ 2232a1e :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_2232a26: @ 2232a26 :thumb
	pop     {r4,pc}
@ 0x2232a28

.thumb
Function_2232a28: @ 2232a28 :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_2232a62
	cmp     r0, #0x2
	bne     branch_2232a7a
	bl      Function_22322dc
	cmp     r0, #0x0
	beq     branch_2232a5c
	bl      Function_223227c
	bl      Function_2233890
	cmp     r0, #0x0
	beq     branch_2232a5c
	bl      Function_2233510
	mov     r1, #0x1
	add     r0, #0x60
	strb    r1, [r0, #0x0]
	mov     r0, #0x3
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232a5c

.thumb
branch_2232a5c: @ 2232a5c :thumb
	bl      Function_2232200
	pop     {r3,pc}
@ 0x2232a62

.thumb
branch_2232a62: @ 2232a62 :thumb
	bl      Function_2232334
	bl      Function_2233914
	cmp     r0, #0x0
	bne     branch_2232a74
	bl      Function_2232200
	pop     {r3,pc}
@ 0x2232a74

.thumb
branch_2232a74: @ 2232a74 :thumb
	mov     r0, #0x3
	bl      Function_2233424
.thumb
branch_2232a7a: @ 2232a7a :thumb
	pop     {r3,pc}
@ 0x2232a7c

.thumb
Function_2232a7c: @ 2232a7c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x4]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_2232ab6
	ldrh    r0, [r4, #0x0]
	cmp     r0, #0xe
	bne     branch_2232a9a
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_2232ac6
.thumb
branch_2232a9a: @ 2232a9a :thumb
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_2232aae
	cmp     r0, #0x2
	bne     branch_2232ac6
	mov     r0, #0xa
	bl      Function_2233424
	pop     {r4,pc}
@ 0x2232aae

.thumb
branch_2232aae: @ 2232aae :thumb
	mov     r0, #0xb
	bl      Function_2233424
	pop     {r4,pc}
@ 0x2232ab6

.thumb
branch_2232ab6: @ 2232ab6 :thumb
	cmp     r0, #0x9
	beq     branch_2232ac6
	cmp     r0, #0xd
	beq     branch_2232ac6
	cmp     r0, #0xf
	beq     branch_2232ac6
	bl      Function_2232200
.thumb
branch_2232ac6: @ 2232ac6 :thumb
	pop     {r4,pc}
@ 0x2232ac8

.thumb
Function_2232ac8: @ 2232ac8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2233538
	mov     r4, r0
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x1
	bne     branch_2232b3e
	ldrh    r1, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r5, [r4, #0xc]
	blx 0x20c2c54
	ldrh    r2, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r1, [r4, #0xc]
	blx 0x20c4db0
	bl      Function_2233560
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_2232b3e
	bl      Function_2233570
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_2232b3e
	ldr     r0, [r4, #0xc]
	bl      Function_22337a4
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldrb    r0, [r4, #0x1c]
	cmp     r1, r0
	bne     branch_2232b3e
	ldr     r0, [r4, #0xc]
	bl      Function_2233810
	ldr     r0, [r4, #0xc]
	bl      Function_22337d8
	cmp     r0, #0x0
	beq     branch_2232b3a
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #16
	lsr     r0, r0, #24
	cmp     r0, #0x1
	beq     branch_2232b3a
	mov     r0, #0x2
	strb    r0, [r4, #0x19]
	pop     {r4-r6,pc}
@ 0x2232b3a

.thumb
branch_2232b3a: @ 2232b3a :thumb
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
.thumb
branch_2232b3e: @ 2232b3e :thumb
	pop     {r4-r6,pc}
@ 0x2232b40

.thumb
Function_2232b40: @ 2232b40 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2233538
	mov     r4, r0
	bl      Function_2233448
	cmp     r0, #0x2
	bne     branch_2232bc8
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x2
	beq     branch_2232bc8
	ldrh    r1, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r5, [r4, #0xc]
	blx 0x20c2c54
	ldrh    r2, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r1, [r4, #0xc]
	blx 0x20c4db0
	bl      Function_2233560
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_2232bc8
	bl      Function_2233570
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_2232bc8
	ldr     r0, [r4, #0xc]
	bl      Function_22337a4
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0xfd
	bne     branch_2232bc8
	bl      Function_2233510
	ldrh    r5, [r6, #0x12]
	mov     r2, #0x0
	mov     r3, r0
.thumb
branch_2232ba2: @ 2232ba2 :thumb
	ldrh    r1, [r3, #0x6]
	cmp     r5, r1
	bne     branch_2232bc0
	mov     r1, #0xc
	mul     r1, r2
	add     r1, r0, r1
	mov     r2, #0x1
	strb    r2, [r1, #0x8]
	mov     r0, #0x3
	strb    r0, [r1, #0x9]
	mov     r0, #0xb4
	strb    r0, [r4, #0x1a]
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	pop     {r4-r6,pc}
@ 0x2232bc0

.thumb
branch_2232bc0: @ 2232bc0 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0xc
	cmp     r2, #0x8
	blt     branch_2232ba2
.thumb
branch_2232bc8: @ 2232bc8 :thumb
	pop     {r4-r6,pc}
@ 0x2232bca


.align 2, 0


.thumb
Function_2232bcc: @ 2232bcc :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	bl      Function_2233538
	mov     r4, r0
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0xfd
	bne     branch_2232be4
	mov     r0, r6
	bl      Function_2232b40
	pop     {r4-r6,pc}
@ 0x2232be4

.thumb
branch_2232be4: @ 2232be4 :thumb
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x1
	beq     branch_2232bf0
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x3
	bne     branch_2232c8c
.thumb
branch_2232bf0: @ 2232bf0 :thumb
	ldrb    r0, [r4, #0x1b]
	cmp     r0, #0x0
	bne     branch_2232c8c
	ldrh    r1, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r5, [r4, #0xc]
	blx 0x20c2c54
	ldrh    r2, [r6, #0x10]
	ldr     r0, [r6, #0xc]
	ldr     r1, [r4, #0xc]
	blx 0x20c4db0
	bl      Function_2233560
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	cmp     r1, r0
	bne     branch_2232c8c
	bl      Function_2233570
	ldr     r1, [r5, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	cmp     r1, r0
	bhi     branch_2232c8c
	ldr     r0, [r4, #0xc]
	bl      Function_22337a4
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	ldrb    r0, [r4, #0x1c]
	cmp     r1, r0
	bne     branch_2232c8c
	ldr     r0, [r4, #0xc]
	bl      Function_2233810
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
	ldr     r0, [r4, #0xc]
	bl      Function_22337d8
	cmp     r0, #0x0
	beq     branch_2232c7e
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	cmp     r0, #0xfd
	bne     branch_2232c5e
	mov     r0, r6
	bl      Function_2232b40
	b       branch_2232c70
@ 0x2232c5e

.thumb
branch_2232c5e: @ 2232c5e :thumb
	ldr     r2, [r5, #0xc]
	ldr     r1, [r4, #0xc]
	lsl     r0, r2, #24
	lsr     r0, r0, #24
	add     r0, r1, r0
	ldr     r1, [r4, #0x4]
	lsr     r2, r2, #8
	blx 0x20c4db0
.thumb
branch_2232c70: @ 2232c70 :thumb
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x2232c90, (=0xffff00ff)
	and     r0, r1
	str     r0, [r5, #0x8]
	mov     r0, #0x4
	strb    r0, [r4, #0x1b]
	pop     {r4-r6,pc}
@ 0x2232c7e

.thumb
branch_2232c7e: @ 2232c7e :thumb
	ldr     r1, [r5, #0x8]
	ldr     r0, [pc, #0xc] @ 0x2232c90, (=0xffff00ff)
	and     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #8
	orr     r0, r1
	str     r0, [r5, #0x8]
.thumb
branch_2232c8c: @ 2232c8c :thumb
	pop     {r4-r6,pc}
@ 0x2232c8e


.align 2


.word 0xffff00ff @ 0x2232c90
.thumb
Function_2232c94: @ 2232c94 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x4]
	bl      Function_2233800
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	bne     branch_2232d16
	ldrh    r0, [r4, #0x4]
	cmp     r0, #0x7
	beq     branch_2232cde
	cmp     r0, #0x9
	beq     branch_2232cec
	cmp     r0, #0x15
	bne     branch_2232d16
	bl      Function_2233418
	cmp     r0, #0xa
	beq     branch_2232cbe
	cmp     r0, #0xb
	bne     branch_2232d16
.thumb
branch_2232cbe: @ 2232cbe :thumb
	bl      Function_2233538
	ldrb    r0, [r0, #0x18]
	cmp     r0, #0x1
	beq     branch_2232cce
	cmp     r0, #0x2
	beq     branch_2232cd6
	pop     {r4,pc}
@ 0x2232cce

.thumb
branch_2232cce: @ 2232cce :thumb
	mov     r0, r4
	bl      Function_2232ac8
	pop     {r4,pc}
@ 0x2232cd6

.thumb
branch_2232cd6: @ 2232cd6 :thumb
	mov     r0, r4
	bl      Function_2232bcc
	pop     {r4,pc}
@ 0x2232cde

.thumb
branch_2232cde: @ 2232cde :thumb
	mov     r0, #0x1
	bl      Function_22334d8
	mov     r0, #0x0
	bl      Function_22334e4
	pop     {r4,pc}
@ 0x2232cec

.thumb
branch_2232cec: @ 2232cec :thumb
	bl      Function_22334cc
	cmp     r0, #0x0
	beq     branch_2232cfa
	mov     r0, #0x1
	bl      Function_22334e4
.thumb
branch_2232cfa: @ 2232cfa :thumb
	bl      Function_2233418
	cmp     r0, #0xa
	beq     branch_2232d08
	cmp     r0, #0xb
	beq     branch_2232d10
	pop     {r4,pc}
@ 0x2232d08

.thumb
branch_2232d08: @ 2232d08 :thumb
	ldrh    r0, [r4, #0x12]
	bl      Function_2232254
	pop     {r4,pc}
@ 0x2232d10

.thumb
branch_2232d10: @ 2232d10 :thumb
	mov     r0, #0x0
	bl      Function_22334d8
.thumb
branch_2232d16: @ 2232d16 :thumb
	pop     {r4,pc}
@ 0x2232d18

.thumb
Function_2232d18: @ 2232d18 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2232d2e
	bl      Function_223222c
	cmp     r0, #0x0
	bne     branch_2232d38
	bl      Function_2232a28
	pop     {r3,pc}
@ 0x2232d2e

.thumb
branch_2232d2e: @ 2232d2e :thumb
	bl      Function_22337fc
	mov     r0, #0x4
	bl      Function_2233424
.thumb
branch_2232d38: @ 2232d38 :thumb
	pop     {r3,pc}
@ 0x2232d3a


.align 2, 0


.thumb
Function_2232d3c: @ 2232d3c :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2232d54
	bl      Function_2233870
	cmp     r0, #0x0
	beq     branch_2232d5c
	mov     r0, #0x2
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232d54

.thumb
branch_2232d54: @ 2232d54 :thumb
	bl      Function_22337fc
	bl      Function_2232200
.thumb
branch_2232d5c: @ 2232d5c :thumb
	pop     {r3,pc}
@ 0x2232d5e


.align 2, 0


.thumb
Function_2232d60: @ 2232d60 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2232d96
	mov     r0, #0x0
	bl      Function_22334c0
	bl      Function_2233430
	cmp     r0, #0xc
	bne     branch_2232d86
	bl      Function_2233af8
	cmp     r0, #0x0
	beq     branch_2232da0
	mov     r0, #0x3
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232d86

.thumb
branch_2232d86: @ 2232d86 :thumb
	bl      Function_2233ab8
	cmp     r0, #0x0
	beq     branch_2232da0
	mov     r0, #0x3
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232d96

.thumb
branch_2232d96: @ 2232d96 :thumb
	bl      Function_22337fc
	mov     r0, #0x4
	bl      Function_2233424
.thumb
branch_2232da0: @ 2232da0 :thumb
	pop     {r3,pc}
@ 0x2232da2


.align 2, 0


.thumb
Function_2232da4: @ 2232da4 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	bne     branch_2232dba
	mov     r0, #0xc
	bl      Function_2233424
	mov     r0, #0x1
	bl      Function_22334f0
	pop     {r3,pc}
@ 0x2232dba

.thumb
branch_2232dba: @ 2232dba :thumb
	bl      Function_22337fc
	mov     r0, #0x4
	bl      Function_2233424
	pop     {r3,pc}
@ 0x2232dc6


.align 2, 0


.thumb
Function_2232dc8: @ 2232dc8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x2232de4, (=0x22323b1)
	blx 0x20ce478
	cmp     r0, #0x0
	beq     branch_2232dde
	mov     r0, #0x4
	bl      Function_2233424
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2232dde

.thumb
branch_2232dde: @ 2232dde :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2232de2


.align 2


.word 0x22323b1 @ 0x2232de4
.thumb
Function_2232de8: @ 2232de8 :thumb
	push    {r3,lr}
	bl      Function_2233418
	cmp     r0, #0x0
	beq     branch_2232dfa
	cmp     r0, #0x1
	beq     branch_2232dfa
	cmp     r0, #0x2
	bne     branch_2232dfe
.thumb
branch_2232dfa: @ 2232dfa :thumb
	bl      Function_2233854
.thumb
branch_2232dfe: @ 2232dfe :thumb
	pop     {r3,pc}
@ 0x2232e00

.thumb
Function_2232e00: @ 2232e00 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2233408
	ldrh    r0, [r0, #0x34]
	cmp     r4, r0
	bhi     branch_2232e24
	mov     r0, r5
	mov     r1, r4
	blx 0x20c2c54
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_2233814
.thumb
branch_2232e24: @ 2232e24 :thumb
	pop     {r4-r6,pc}
@ 0x2232e26


.align 2, 0


.thumb
Function_2232e28: @ 2232e28 :thumb
	mov     r0, #0x17
	lsl     r0, r0, #6
	bx      lr
@ 0x2232e2e


.align 2, 0


.thumb
Function_2232e30: @ 2232e30 :thumb
	mov     r0, #0x17
	lsl     r0, r0, #6
	bx      lr
@ 0x2232e36


.align 2, 0


.thumb
Function_2232e38: @ 2232e38 :thumb
	push    {r3-r7,lr}
	mov     r7, r1
	mov     r5, r0
	bl      Function_2233408
	bl      Function_2233410
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, r7
	and     r1, r0
	beq     branch_2232e56
	mov     r0, #0x20
	sub     r0, r0, r1
	add     r7, r7, r0
.thumb
branch_2232e56: @ 2232e56 :thumb
	mov     r1, #0x0
	strb    r1, [r4, #0x0]
	strb    r1, [r4, #0x1]
	strb    r1, [r4, #0x2]
	mov     r0, #0x4
	strb    r0, [r4, #0x3]
	ldr     r0, [pc, #0xf8] @ 0x2232f5c, (=0x400131)
	str     r0, [r4, #0x4]
	mov     r0, #0xf
	strh    r1, [r4, #0xc]
	lsl     r0, r0, #8
	str     r7, [r4, #0x34]
	add     r7, r7, r0
	str     r7, [r4, #0x38]
	bl      Function_2232e28
	str     r0, [r4, #0x2c]
	add     r7, r7, r0
	str     r7, [r4, #0x3c]
	bl      Function_2232e30
	add     r7, r7, r0
	str     r0, [r4, #0x30]
	mov     r0, r7
	str     r7, [r4, #0x28]
	add     r0, #0xc0
	str     r0, [r4, #0x24]
	ldr     r0, [r4, #0x34]
	mov     r1, #0x2
	add     r7, #0xe0
	blx 0x20cdb18
	bl      Function_2232dc8
	str     r0, [r4, #0x10]
	mov     r2, #0x0
	str     r2, [r4, #0x14]
	str     r2, [r4, #0x18]
	str     r2, [r4, #0x1c]
	str     r2, [r4, #0x20]
	ldr     r0, [r4, #0x40]
	mov     r6, #0xff
	bic     r0, r6
	mov     r3, r0
	mov     r1, #0xf
	orr     r3, r1
	ldr     r0, [pc, #0xac] @ 0x2232f60, (=0xfffff0ff)
	add     r1, #0xf1
	and     r0, r3
	orr     r1, r0
	ldr     r0, [pc, #0xa8] @ 0x2232f64, (=0xffff0fff)
	and     r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	orr     r0, r1
	str     r0, [r4, #0x40]
	ldr     r3, [r5, #0x0]
	ldr     r1, [r4, #0x44]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	lsl     r3, r3, #24
	mov     r0, r4
	bic     r1, r6
	lsr     r3, r3, #24
	orr     r3, r1
	ldr     r1, [pc, #0x84] @ 0x2232f60, (=0xfffff0ff)
	str     r3, [r4, #0x44]
	and     r1, r3
	ldr     r3, [r5, #0x0]
	add     r0, #0x44
	lsl     r3, r3, #20
	lsr     r3, r3, #28
	lsl     r3, r3, #28
	lsr     r3, r3, #20
	orr     r3, r1
	ldr     r1, [pc, #0x74] @ 0x2232f64, (=0xffff0fff)
	str     r3, [r4, #0x44]
	and     r1, r3
	ldr     r3, [r5, #0x0]
	lsl     r3, r3, #16
	lsr     r3, r3, #28
	lsl     r3, r3, #28
	lsr     r3, r3, #16
	orr     r1, r3
	str     r1, [r4, #0x44]
	ldr     r1, [r0, #0x0]
	ldr     r3, [r5, #0x0]
	lsl     r1, r1, #16
	lsr     r3, r3, #16
	lsr     r1, r1, #16
	lsl     r3, r3, #16
	orr     r1, r3
	str     r1, [r0, #0x0]
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
	mov     r3, r4
	b       branch_2232f30
@ 0x2232f18

.thumb
branch_2232f18: @ 2232f18 :thumb
	ldrh    r6, [r0, #0x0]
	mov     r5, r3
	add     r5, #0x48
	strh    r6, [r5, #0x0]
	mov     r5, r3
	ldrh    r6, [r1, #0x0]
	add     r5, #0x60
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r6, [r5, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1c89 @ add r1, r1, #0x2
.thumb
branch_2232f30: @ 2232f30 :thumb
	cmp     r0, #0x0
	beq     branch_2232f38
	cmp     r2, #0xc
	bcc     branch_2232f18
.thumb
branch_2232f38: @ 2232f38 :thumb
	ldr     r1, [r4, #0x40]
	ldr     r0, [r4, #0x44]
	str     r1, [r4, #0x78]
	str     r0, [r4, #0x7c]
	bl      Function_2233548
	bl      Function_2233538
	str     r7, [r0, #0x8]
	ldr     r0, [r4, #0x2c]
	add     r7, r7, r0
	bl      Function_2233538
	str     r7, [r0, #0xc]
	blx 0x20ceb20
	pop     {r3-r7,pc}
@ 0x2232f5a


.align 2


.word 0x400131 @ 0x2232f5c
.word 0xfffff0ff @ 0x2232f60
.word 0xffff0fff @ 0x2232f64
.thumb
Function_2232f68: @ 2232f68 :thumb
	push    {r3-r5,lr}
	bl      Function_2233538
	mov     r4, r0
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x1
	bne     branch_2232f86
	ldrb    r0, [r4, #0x1a]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1a]
	ldrb    r0, [r4, #0x1a]
	cmp     r0, #0x0
	bne     branch_2232fbc
	mov     r0, #0x0
	strb    r0, [r4, #0x19]
.thumb
branch_2232f86: @ 2232f86 :thumb
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	bne     branch_2232fbc
	bl      Function_2233614
	mov     r1, #0x40
	sub     r5, r1, r0
	ldrb    r0, [r4, #0x1c]
	mov     r2, r5
	mov     r3, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	bl      Function_2233674
	bl      Function_2233614
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x10] @ 0x2232fc0, (=0xffff)
	add     r1, r5, r1
	bl      Function_2232e00
	mov     r0, #0x1
	strb    r0, [r4, #0x19]
	mov     r0, #0x3c
	strb    r0, [r4, #0x1a]
.thumb
branch_2232fbc: @ 2232fbc :thumb
	pop     {r3-r5,pc}
@ 0x2232fbe


.align 2


.word 0xffff @ 0x2232fc0
.thumb
Function_2232fc4: @ 2232fc4 :thumb
	push    {r3-r7,lr}
	bl      Function_2233538
	mov     r4, r0
	ldrb    r0, [r4, #0x19]
	cmp     r0, #0x0
	bne     branch_223307a
	ldrb    r0, [r4, #0x1c]
	cmp     r0, #0xfd
	bne     branch_223303c
	bl      Function_2233510
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, r5
.thumb
branch_2232fe2: @ 2232fe2 :thumb
	ldrb    r0, [r2, #0x9]
	cmp     r0, #0x0
	beq     branch_2233022
	mov     r6, r1
	mov     r0, #0xc
	mul     r6, r0
	add     r0, r5, r6
	ldrh    r0, [r0, #0x6]
	mov     r1, #0x1
	mov     r2, #0x0
	lsl     r1, r0
	lsl     r0, r1, #16
	lsr     r7, r0, #16
	mov     r0, #0xfd
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	mov     r3, r2
	bl      Function_2233674
	bl      Function_2233614
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	mov     r2, r7
	bl      Function_2232e00
	add     r5, #0x9
	ldrb    r0, [r5, r6]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, r6]
	pop     {r3-r7,pc}
@ 0x2233022

.thumb
branch_2233022: @ 2233022 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r2, #0xc
	cmp     r1, #0x8
	blt     branch_2232fe2
	ldrb    r0, [r4, #0x1a]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1a]
	ldrb    r0, [r4, #0x1a]
	cmp     r0, #0x0
	bne     branch_223307a
	mov     r0, #0x2
	strb    r0, [r4, #0x19]
	pop     {r3-r7,pc}
@ 0x223303c

.thumb
branch_223303c: @ 223303c :thumb
	bl      Function_2233614
	bl      Function_2232e28
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0, #0x8]
	lsl     r0, r0, #16
	lsr     r3, r0, #24
	bne     branch_223305e
	ldrb    r0, [r4, #0x1b]
	cmp     r0, #0x0
	bne     branch_223305a
	mov     r0, #0x2
	strb    r0, [r4, #0x19]
	pop     {r3-r7,pc}
@ 0x223305a

.thumb
branch_223305a: @ 223305a :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x1b]
.thumb
branch_223305e: @ 223305e :thumb
	ldrb    r0, [r4, #0x1c]
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0x4]
	bl      Function_2233674
	bl      Function_2233614
	mov     r1, r0
	ldr     r0, [r4, #0x8]
	ldr     r2, [pc, #0x4] @ 0x223307c, (=0xffff)
	bl      Function_2232e00
.thumb
branch_223307a: @ 223307a :thumb
	pop     {r3-r7,pc}
@ 0x223307c

.word 0xffff @ 0x223307c
.thumb
Function_2233080: @ 2233080 :thumb
	push    {r3,lr}
	bl      Function_2233538
	ldrb    r0, [r0, #0x18]
	cmp     r0, #0x1
	beq     branch_2233092
	cmp     r0, #0x2
	beq     branch_2233098
	pop     {r3,pc}
@ 0x2233092

.thumb
branch_2233092: @ 2233092 :thumb
	bl      Function_2232f68
	pop     {r3,pc}
@ 0x2233098

.thumb
branch_2233098: @ 2233098 :thumb
	bl      Function_2232fc4
	pop     {r3,pc}
@ 0x223309e


.align 2, 0


.thumb
Function_22330a0: @ 22330a0 :thumb
	push    {r4,lr}
	bl      Function_2233508
	mov     r4, r0
	bl      Function_2233418
	cmp     r0, #0x6
	beq     branch_22330b6
	cmp     r0, #0xb
	beq     branch_22330c6
	pop     {r4,pc}
@ 0x22330b6

.thumb
branch_22330b6: @ 22330b6 :thumb
	mov     r0, #0x7
	lsl     r0, r0, #6
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22330ca
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r4, r0]
	pop     {r4,pc}
@ 0x22330c6

.thumb
branch_22330c6: @ 22330c6 :thumb
	bl      Function_2233080
.thumb
branch_22330ca: @ 22330ca :thumb
	pop     {r4,pc}
@ 0x22330cc

.thumb
Function_22330cc: @ 22330cc :thumb
	push    {r3,lr}
	bl      Function_2233418
	cmp     r0, #0xa
	bne     branch_22330da
	bl      Function_2233080
.thumb
branch_22330da: @ 22330da :thumb
	pop     {r3,pc}
@ 0x22330dc

.thumb
Function_22330dc: @ 22330dc :thumb
	push    {r3,lr}
	bl      Function_2233418
	cmp     r0, #0xc
	beq     branch_223311e
	bl      Function_2233430
	cmp     r0, #0xc
	bne     branch_22330fc
	bl      Function_2233418
	cmp     r0, #0x7
	bne     branch_223311e
	bl      Function_2233ad8
	pop     {r3,pc}
@ 0x22330fc

.thumb
branch_22330fc: @ 22330fc :thumb
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_223310a
	cmp     r0, #0x2
	beq     branch_2233110
	b       branch_2233116
@ 0x223310a

.thumb
branch_223310a: @ 223310a :thumb
	bl      Function_22330a0
	pop     {r3,pc}
@ 0x2233110

.thumb
branch_2233110: @ 2233110 :thumb
	bl      Function_22330cc
	pop     {r3,pc}
@ 0x2233116

.thumb
branch_2233116: @ 2233116 :thumb
	bl      Function_2233410
	bl      Function_2233418
.thumb
branch_223311e: @ 223311e :thumb
	pop     {r3,pc}
@ 0x2233120

.thumb
Function_2233120: @ 2233120 :thumb
	push    {r3,lr}
	bl      Function_2233518
	mov     r0, #0x1
	bl      Function_2233454
	bl      Function_2232de8
	pop     {r3,pc}
@ 0x2233132


.align 2, 0


.thumb
Function_2233134: @ 2233134 :thumb
	push    {r4,lr}
	bl      Function_2233448
	mov     r4, #0x0
	cmp     r0, #0x1
	bne     branch_2233162
	bl      Function_2233508
	ldr     r1, [pc, #0x20] @ 0x2233168, (=0x1c3)
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #24
	lsr     r1, r1, #28
	cmp     r1, #0x1
	bne     branch_2233162
	mov     r2, r4
.thumb
branch_2233152: @ 2233152 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_223315a
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_223315a: @ 223315a :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0x38
	cmp     r2, #0x8
	bcc     branch_2233152
.thumb
branch_2233162: @ 2233162 :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x2233166


.align 2


.word 0x1c3 @ 0x2233168
.thumb
Function_223316c: @ 223316c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233448
	cmp     r0, #0x1
	bne     branch_223319e
	bl      Function_2233418
	cmp     r0, #0x7
	bne     branch_223319e
	bl      Function_2233508
	ldr     r1, [pc, #0x1c] @ 0x22331a4, (=0x1c3)
	ldrb    r1, [r0, r1]
	lsl     r1, r1, #24
	lsr     r1, r1, #28
	cmp     r1, #0x1
	bne     branch_223319e
	mov     r1, #0x38
	mul     r1, r4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_223319e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223319e

.thumb
branch_223319e: @ 223319e :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22331a2


.align 2


.word 0x1c3 @ 0x22331a4
.thumb
Function_22331a8: @ 22331a8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2233448
	cmp     r0, #0x1
	bne     branch_22331f2
	bl      Function_2233418
	cmp     r0, #0x7
	bne     branch_22331f2
	bl      Function_2233508
	ldr     r2, [pc, #0x30] @ 0x22331f4, (=0x1c3)
	ldrb    r3, [r0, r2]
	lsl     r1, r3, #24
	lsr     r1, r1, #28
	cmp     r1, #0x1
	bne     branch_22331f2
	mov     r1, #0x38
	mov     r5, r4
	mul     r5, r1
	ldr     r5, [r0, r5]
	cmp     r5, #0x0
	beq     branch_22331f2
	mov     r5, #0xf
	lsl     r4, r4, #24
	bic     r3, r5
	lsr     r5, r4, #24
	mov     r4, #0xf
	and     r4, r5
	orr     r3, r4
	strb    r3, [r0, r2]
	mov     r2, #0x78
	lsl     r1, r1, #3
	strh    r2, [r0, r1]
	bl      Function_2233938
.thumb
branch_22331f2: @ 22331f2 :thumb
	pop     {r3-r5,pc}
@ 0x22331f4

.word 0x1c3 @ 0x22331f4
.thumb
Function_22331f8: @ 22331f8 :thumb
	push    {r4,lr}
	bl      Function_2233448
	mov     r4, #0x0
	cmp     r0, #0x2
	bne     branch_223322a
	bl      Function_2233510
	mov     r1, r0
	add     r1, #0x60
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x2
	bne     branch_223322a
	mov     r2, r4
.thumb
branch_2233214: @ 2233214 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_2233222
	ldrb    r1, [r0, #0xa]
	cmp     r1, #0x0
	beq     branch_2233222
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_2233222: @ 2233222 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0xc
	cmp     r2, #0x8
	bcc     branch_2233214
.thumb
branch_223322a: @ 223322a :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x223322e


.align 2, 0


.thumb
Function_2233230: @ 2233230 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_2233240
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233240

.thumb
branch_2233240: @ 2233240 :thumb
	blx 0x20ce814
	pop     {r3,pc}
@ 0x2233246


.align 2, 0


.thumb
Function_2233248: @ 2233248 :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_2233258
	cmp     r0, #0x2
	beq     branch_223325e
	b       branch_2233264
@ 0x2233258

.thumb
branch_2233258: @ 2233258 :thumb
	bl      Function_2233134
	pop     {r3,pc}
@ 0x223325e

.thumb
branch_223325e: @ 223325e :thumb
	bl      Function_22331f8
	pop     {r3,pc}
@ 0x2233264

.thumb
branch_2233264: @ 2233264 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233268

.thumb
Function_2233268: @ 2233268 :thumb
	push    {r3-r5,lr}
	bl      Function_2233538
	mov     r5, r0
	bl      Function_2233590
	mov     r4, r0
	bl      Function_2233448
	cmp     r0, #0x1
	bne     branch_223329a
	mov     r0, #0x1
	strb    r0, [r5, #0x18]
	mov     r1, #0x0
	strb    r1, [r5, #0x19]
	add     r4, #0x8
	str     r4, [r5, #0x0]
	str     r4, [r5, #0x4]
	str     r1, [r5, #0x10]
	str     r1, [r5, #0x14]
	mov     r0, #0x78
	strb    r0, [r5, #0x1a]
	strb    r1, [r5, #0x1b]
	mov     r0, #0xfd
	strb    r0, [r5, #0x1c]
.thumb
branch_223329a: @ 223329a :thumb
	pop     {r3-r5,pc}
@ 0x223329c

.thumb
Function_223329c: @ 223329c :thumb
	push    {r4,lr}
	bl      Function_2233538
	mov     r4, r0
	bl      Function_2233590
	mov     r1, #0x1
	strb    r1, [r4, #0x18]
	mov     r1, #0x0
	strb    r1, [r4, #0x19]
	add     r0, #0x8
	str     r0, [r4, #0x0]
	str     r0, [r4, #0x4]
	mov     r0, #0x30
	str     r0, [r4, #0x10]
	str     r0, [r4, #0x14]
	mov     r0, #0x78
	strb    r0, [r4, #0x1a]
	strb    r1, [r4, #0x1b]
	mov     r0, #0xfe
	strb    r0, [r4, #0x1c]
	pop     {r4,pc}
@ 0x22332c8

.thumb
Function_22332c8: @ 22332c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bl      Function_2233538
	cmp     r4, #0xf0
	bgt     branch_22332f2
	mov     r1, #0x2
	strb    r1, [r0, #0x18]
	mov     r1, #0x3
	strb    r1, [r0, #0x19]
	str     r5, [r0, #0x0]
	str     r5, [r0, #0x4]
	str     r6, [r0, #0x10]
	mov     r2, #0x0
	str     r2, [r0, #0x14]
	mov     r1, #0x78
	strb    r1, [r0, #0x1a]
	strb    r2, [r0, #0x1b]
	strb    r4, [r0, #0x1c]
.thumb
branch_22332f2: @ 22332f2 :thumb
	pop     {r4-r6,pc}
@ 0x22332f4

.thumb
Function_22332f4: @ 22332f4 :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_2233302
	cmp     r0, #0x2
	bne     branch_223331c
.thumb
branch_2233302: @ 2233302 :thumb
	bl      Function_2233418
	cmp     r0, #0xa
	beq     branch_223330e
	cmp     r0, #0xb
	bne     branch_223331c
.thumb
branch_223330e: @ 223330e :thumb
	bl      Function_2233538
	ldrb    r0, [r0, #0x19]
	cmp     r0, #0x2
	bne     branch_223331c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223331c

.thumb
branch_223331c: @ 223331c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233320

.thumb
Function_2233320: @ 2233320 :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_223332e
	cmp     r0, #0x2
	bne     branch_2233348
.thumb
branch_223332e: @ 223332e :thumb
	bl      Function_2233418
	cmp     r0, #0xa
	beq     branch_223333a
	cmp     r0, #0xb
	bne     branch_2233348
.thumb
branch_223333a: @ 223333a :thumb
	bl      Function_2233538
	ldrb    r0, [r0, #0x19]
	cmp     r0, #0x2
	bne     branch_2233348
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233348

.thumb
branch_2233348: @ 2233348 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223334c

.thumb
Function_223334c: @ 223334c :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x1
	beq     branch_223335a
	cmp     r0, #0x2
	bne     branch_2233384
.thumb
branch_223335a: @ 223335a :thumb
	bl      Function_2233418
	cmp     r0, #0xa
	beq     branch_2233366
	cmp     r0, #0xb
	bne     branch_2233384
.thumb
branch_2233366: @ 2233366 :thumb
	bl      Function_2233538
	ldrb    r1, [r0, #0x19]
	cmp     r1, #0x0
	bne     branch_2233384
	ldr     r1, [r0, #0xc]
	ldr     r1, [r1, #0x8]
	lsl     r1, r1, #16
	lsr     r1, r1, #24
	bne     branch_2233384
	ldrb    r0, [r0, #0x1b]
	cmp     r0, #0x4
	bcs     branch_2233384
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233384

.thumb
branch_2233384: @ 2233384 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233388

.thumb
Function_2233388: @ 2233388 :thumb
	push    {r3,lr}
	bl      Function_2233448
	cmp     r0, #0x2
	bne     branch_22333b4
	bl      Function_2233510
	mov     r2, #0x0
.thumb
branch_2233398: @ 2233398 :thumb
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	beq     branch_22333a8
	ldrb    r1, [r0, #0xa]
	cmp     r1, #0x0
	beq     branch_22333a8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22333a8

.thumb
branch_22333a8: @ 22333a8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r0, #0xc
	cmp     r2, #0x8
	blt     branch_2233398
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22333b4

.thumb
branch_22333b4: @ 22333b4 :thumb
	bl      Function_22334cc
	pop     {r3,pc}
@ 0x22333ba


.align 2, 0


.thumb
Function_22333bc: @ 22333bc :thumb
	push    {r4,lr}
	mov     r0, #0xc
	bl      Function_223343c
	bl      Function_2233418
	cmp     r0, #0x0
	beq     branch_22333d6
	cmp     r0, #0x1
	beq     branch_22333d6
	cmp     r0, #0x9
	beq     branch_22333e2
	pop     {r4,pc}
@ 0x22333d6

.thumb
branch_22333d6: @ 22333d6 :thumb
	blx 0x20cdd28
	mov     r0, #0x1
	bl      Function_22334f0
	pop     {r4,pc}
@ 0x22333e2

.thumb
branch_22333e2: @ 22333e2 :thumb
	bl      Function_22334cc
	cmp     r0, #0x0
	bne     branch_22333f8
	bl      Function_2233410
	mov     r4, r0
	bl      Function_2233ad8
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
.thumb
branch_22333f8: @ 22333f8 :thumb
	pop     {r4,pc}
@ 0x22333fa


.align 2, 0


.thumb
Function_22333fc: @ 22333fc :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x20]
	pop     {r3,pc}
@ 0x2233406


.align 2, 0


.thumb
Function_2233408: @ 2233408 :thumb
	ldr     r0, [pc, #0x0] @ 0x223340c, (=0x223ea20)
	bx      lr
@ 0x223340c

.word 0x223ea20 @ 0x223340c
.thumb
Function_2233410: @ 2233410 :thumb
	ldr     r0, [pc, #0x0] @ 0x2233414, (=0x223f1c0)
	bx      lr
@ 0x2233414

.word 0x223f1c0 @ 0x2233414
.thumb
Function_2233418: @ 2233418 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldrb    r0, [r0, #0x0]
	pop     {r3,pc}
@ 0x2233422


.align 2, 0


.thumb
Function_2233424: @ 2233424 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	strb    r4, [r0, #0x0]
	pop     {r4,pc}
@ 0x2233430

.thumb
Function_2233430: @ 2233430 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldrb    r0, [r0, #0x1]
	pop     {r3,pc}
@ 0x223343a


.align 2, 0


.thumb
Function_223343c: @ 223343c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	strb    r4, [r0, #0x1]
	pop     {r4,pc}
@ 0x2233448

.thumb
Function_2233448: @ 2233448 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldrb    r0, [r0, #0x2]
	pop     {r3,pc}
@ 0x2233452


.align 2, 0


.thumb
Function_2233454: @ 2233454 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	strb    r4, [r0, #0x2]
	pop     {r4,pc}
@ 0x2233460

.thumb
Function_2233460: @ 2233460 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldrb    r0, [r0, #0x3]
	pop     {r3,pc}
@ 0x223346a


.align 2, 0


.thumb
Function_223346c: @ 223346c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233408
	strh    r4, [r0, #0x32]
	pop     {r4,pc}
@ 0x2233478

.thumb
Function_2233478: @ 2233478 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x24]
	pop     {r3,pc}
@ 0x2233482


.align 2, 0


.thumb
Function_2233484: @ 2233484 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x2c]
	pop     {r3,pc}
@ 0x223348e


.align 2, 0


.thumb
Function_2233490: @ 2233490 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x30]
	pop     {r3,pc}
@ 0x223349a


.align 2, 0


.thumb
Function_223349c: @ 223349c :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x38]
	pop     {r3,pc}
@ 0x22334a6


.align 2, 0


.thumb
Function_22334a8: @ 22334a8 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x3c]
	pop     {r3,pc}
@ 0x22334b2


.align 2, 0


.thumb
Function_22334b4: @ 22334b4 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x28]
	pop     {r3,pc}
@ 0x22334be


.align 2, 0


.thumb
Function_22334c0: @ 22334c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	strh    r4, [r0, #0xc]
	pop     {r4,pc}
@ 0x22334cc

.thumb
Function_22334cc: @ 22334cc :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x14]
	pop     {r3,pc}
@ 0x22334d6


.align 2, 0


.thumb
Function_22334d8: @ 22334d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	str     r4, [r0, #0x14]
	pop     {r4,pc}
@ 0x22334e4

.thumb
Function_22334e4: @ 22334e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	str     r4, [r0, #0x18]
	pop     {r4,pc}
@ 0x22334f0

.thumb
Function_22334f0: @ 22334f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233410
	str     r4, [r0, #0x20]
	pop     {r4,pc}
@ 0x22334fc

.thumb
Function_22334fc: @ 22334fc :thumb
	push    {r3,lr}
	bl      Function_2233410
	add     r0, #0x90
	pop     {r3,pc}
@ 0x2233506


.align 2, 0


.thumb
Function_2233508: @ 2233508 :thumb
	ldr     r3, [pc, #0x0] @ 0x223350c, (=0x22334fd)
	bx      r3
@ 0x223350c

.word 0x22334fd @ 0x223350c
.thumb
Function_2233510: @ 2233510 :thumb
	ldr     r3, [pc, #0x0] @ 0x2233514, (=0x22334fd)
	bx      r3
@ 0x2233514

.word 0x22334fd @ 0x2233514
.thumb
Function_2233518: @ 2233518 :thumb
	push    {r4,lr}
	bl      Function_2233508
	mov     r2, #0x71
	mov     r1, #0x0
	lsl     r2, r2, #2
	mov     r4, r0
	blx 0x20c4cf4
	mov     r1, #0x46
	lsl     r1, r1, #2
	mov     r0, r1
	add     r0, #0xa8
	strh    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2233536


.align 2, 0


.thumb
Function_2233538: @ 2233538 :thumb
	push    {r3,lr}
	bl      Function_2233410
	mov     r1, #0x95
	lsl     r1, r1, #2
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x2233546


.align 2, 0


.thumb
Function_2233548: @ 2233548 :thumb
	push    {r3,lr}
	bl      Function_2233538
	mov     r1, #0x0
	strb    r1, [r0, #0x18]
	pop     {r3,pc}
@ 0x2233554

.thumb
Function_2233554: @ 2233554 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x4]
	pop     {r3,pc}
@ 0x223355e


.align 2, 0


.thumb
Function_2233560: @ 2233560 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	pop     {r3,pc}
@ 0x223356e


.align 2, 0


.thumb
Function_2233570: @ 2233570 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x40]
	lsl     r0, r0, #20
	lsr     r0, r0, #28
	pop     {r3,pc}
@ 0x223357e


.align 2, 0


.thumb
Function_2233580: @ 2233580 :thumb
	push    {r3,lr}
	bl      Function_2233410
	ldr     r0, [r0, #0x44]
	lsr     r0, r0, #16
	pop     {r3,pc}
@ 0x223358c

.thumb
Function_223358c: @ 223358c :thumb
	mov     r0, #0x38
	bx      lr
@ 0x2233590

.thumb
Function_2233590: @ 2233590 :thumb
	push    {r3,lr}
	bl      Function_2233410
	add     r0, #0x40
	pop     {r3,pc}
@ 0x223359a


.align 2, 0


.thumb
Function_223359c: @ 223359c :thumb
	push    {r3,lr}
	bl      Function_2233410
	add     r0, #0x78
	pop     {r3,pc}
@ 0x22335a6


.align 2, 0


.thumb
Function_22335a8: @ 22335a8 :thumb
	push    {r3}
	add     sp, #-0x4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	add     r3, sp, #0x0
.thumb
branch_22335b2: @ 22335b2 :thumb
	add     r1, r0, r2
	ldrb    r1, [r1, #0x2]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x4
	bcc     branch_22335b2
	ldr     r0, [sp, #0x0]
	add     sp, #0x4
	pop     {r3}
	bx      lr
@ 0x22335c8

.thumb
Function_22335c8: @ 22335c8 :thumb
	push    {r3}
	add     sp, #-0x4
	mov     r2, #0x0
	add     r1, sp, #0x0
	strh    r2, [r1, #0x0]
	add     r3, sp, #0x0
.thumb
branch_22335d4: @ 22335d4 :thumb
	ldrb    r1, [r0, r2]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x2
	bcc     branch_22335d4
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r0, [r1, r0]
	add     sp, #0x4
	pop     {r3}
	bx      lr
@ 0x22335ec

.thumb
Function_22335ec: @ 22335ec :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	ldr     r1, [pc, #0x1c] @ 0x2233610, (=0x2710)
	mov     r6, r0
	mov     r4, r2
	blx 0x20e2178
	str     r1, [r5, #0x0]
	ldr     r1, [pc, #0x10] @ 0x2233610, (=0x2710)
	mov     r0, r6
	blx 0x20e2178
	ldr     r1, [pc, #0x8] @ 0x2233610, (=0x2710)
	blx 0x20e2178
	str     r1, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x223360e


.align 2


.word 0x2710 @ 0x2233610
.thumb
Function_2233614: @ 2233614 :thumb
	mov     r0, #0x10
	bx      lr
@ 0x2233618

.thumb
Function_2233618: @ 2233618 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x10] @ 0x223362c, (=0x4000006)
	ldrh    r4, [r0, #0x0]
	blx 0x20c3880
	add     r1, r0, r4
	mov     r0, #0x1
	bic     r1, r0
	add     r0, r1, #0x1
	pop     {r4,pc}
@ 0x223362c

.word 0x4000006 @ 0x223362c
.thumb
Function_2233630: @ 2233630 :thumb
	push    {r4-r7}
	mov     r3, r0
	mov     r0, #0x0
	lsr     r1, r1, #2
	beq     branch_2233666
	ldr     r4, [pc, #0x30] @ 0x223366c, (=0x269ec3)
.thumb
branch_223363c: @ 223363c :thumb
	ldr     r5, [pc, #0x30] @ 0x2233670, (=0x5d588b65)
	ldr     r6, [pc, #0x30] @ 0x2233670, (=0x5d588b65)
	mul     r5, r3
	ldr     r3, [pc, #0x28] @ 0x223366c, (=0x269ec3)
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r5, r3
	lsr     r5, r3, #16
	mul     r6, r3
	add     r3, r6, r4
	lsl     r5, r5, #16
	lsr     r7, r3, #16
	lsr     r5, r5, #16
	lsl     r7, r7, #16
	ldr     r6, [r2, #0x0]
	lsl     r5, r5, #16
	lsr     r7, r7, #16
	orr     r5, r7
	eor     r5, r6
	stmia   r2!, {r5}
	cmp     r0, r1
	bcc     branch_223363c
.thumb
branch_2233666: @ 2233666 :thumb
	mov     r0, r3
	pop     {r4-r7}
	bx      lr
@ 0x223366c

.word 0x269ec3 @ 0x223366c
.word 0x5d588b65 @ 0x2233670
.thumb
Function_2233674: @ 2233674 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	mov     r6, r2
	str     r3, [sp, #0x0]
	bl      Function_2233590
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r1, #0xff
	bic     r0, r1
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	orr     r1, r0
	ldr     r0, [pc, #0x100] @ 0x2233798, (=0xfffff0ff)
	str     r1, [r5, #0x0]
	and     r0, r1
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #20
	lsr     r1, r1, #28
	lsl     r1, r1, #28
	lsr     r1, r1, #20
	orr     r1, r0
	ldr     r0, [pc, #0xf0] @ 0x223379c, (=0xffff0fff)
	str     r1, [r5, #0x0]
	and     r0, r1
	ldr     r1, [r4, #0x0]
	lsl     r1, r1, #16
	lsr     r1, r1, #28
	lsl     r1, r1, #28
	lsr     r1, r1, #16
	orr     r0, r1
	str     r0, [r5, #0x0]
	bl      Function_2233618
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r0, r0, #16
	lsr     r1, r1, #16
	lsl     r0, r0, #16
	orr     r0, r1
	str     r0, [r5, #0x0]
	ldr     r2, [r4, #0x4]
	ldr     r1, [r5, #0x4]
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	mov     r0, #0xff
	lsl     r2, r2, #24
	bic     r1, r0
	lsr     r2, r2, #24
	orr     r2, r1
	ldr     r1, [pc, #0xb4] @ 0x2233798, (=0xfffff0ff)
	str     r2, [r5, #0x4]
	and     r1, r2
	ldr     r2, [r4, #0x4]
	lsl     r2, r2, #20
	lsr     r2, r2, #28
	lsl     r2, r2, #28
	lsr     r2, r2, #20
	orr     r2, r1
	ldr     r1, [pc, #0xa4] @ 0x223379c, (=0xffff0fff)
	str     r2, [r5, #0x4]
	and     r1, r2
	ldr     r2, [r4, #0x4]
	lsl     r2, r2, #16
	lsr     r2, r2, #28
	lsl     r2, r2, #28
	lsr     r2, r2, #16
	orr     r1, r2
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	str     r1, [r5, #0x4]
	ldr     r1, [r5, #0x8]
	bic     r1, r0
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	orr     r1, r0
	ldr     r0, [pc, #0x80] @ 0x22337a0, (=0xffff00ff)
	and     r0, r1
	ldr     r1, [sp, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #16
	orr     r0, r1
	str     r0, [r5, #0x8]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, r6
	bl      0x2000160
	ldr     r1, [r5, #0x8]
	lsl     r0, r0, #16
	lsl     r1, r1, #16
	lsr     r1, r1, #16
	orr     r0, r1
	str     r0, [r5, #0x8]
	bl      Function_2233614
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	lsl     r0, r0, #24
	ldr     r1, [r5, #0xc]
	mov     r2, #0xff
	bic     r1, r2
	lsr     r0, r0, #24
	orr     r0, r1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	lsl     r0, r6, #8
	orr     r0, r1
	str     r0, [r5, #0xc]
	cmp     r6, #0x0
	beq     branch_2233772
	ldr     r1, [r5, #0xc]
	mov     r0, r7
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r1, r5, r1
	mov     r2, r6
	blx 0x20c4db0
.thumb
branch_2233772: @ 2233772 :thumb
	mov     r0, r5
	bl      Function_2233810
	ldr     r0, [r4, #0x0]
	lsl     r0, r0, #16
	lsr     r0, r0, #28
	cmp     r0, #0x1
	bne     branch_2233796
	ldr     r1, [r5, #0xc]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	add     r1, r6, r1
	lsr     r0, r0, #16
	.hword  0x1f09 @ sub r1, r1, #0x4
	add     r2, r5, #0x4
	bl      Function_2233630
.thumb
branch_2233796: @ 2233796 :thumb
	pop     {r3-r7,pc}
@ 0x2233798

.word 0xfffff0ff @ 0x2233798
.word 0xffff0fff @ 0x223379c
.word 0xffff00ff @ 0x22337a0
.thumb
Function_22337a4: @ 22337a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2233590
	ldr     r0, [r4, #0x0]
	lsl     r1, r0, #16
	lsr     r1, r1, #28
	cmp     r1, #0x1
	bne     branch_22337d4
	lsr     r0, r0, #16
	mov     r1, #0xc
	add     r2, r4, #0x4
	bl      Function_2233630
	ldr     r1, [r4, #0xc]
	add     r4, #0x10
	lsl     r2, r1, #24
	lsr     r2, r2, #24
	lsr     r1, r1, #8
	add     r1, r2, r1
	sub     r1, #0x10
	mov     r2, r4
	bl      Function_2233630
.thumb
branch_22337d4: @ 22337d4 :thumb
	pop     {r4,pc}
@ 0x22337d6


.align 2, 0


.thumb
Function_22337d8: @ 22337d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0xc]
	mov     r0, #0x0
	lsl     r1, r2, #24
	lsr     r1, r1, #24
	add     r1, r4, r1
	lsr     r2, r2, #8
	bl      0x2000160
	ldr     r1, [r4, #0x8]
	lsr     r1, r1, #16
	cmp     r1, r0
	bne     branch_22337f8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x22337f8

.thumb
branch_22337f8: @ 22337f8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22337fc

.thumb
Function_22337fc: @ 22337fc :thumb
	bx      lr
@ 0x22337fe


.align 2, 0


.thumb
Function_2233800: @ 2233800 :thumb
	bx      lr
@ 0x2233802


.align 2, 0


.thumb
Function_2233804: @ 2233804 :thumb
	bx      lr
@ 0x2233806


.align 2, 0


.thumb
Function_2233808: @ 2233808 :thumb
	bx      lr
@ 0x223380a


.align 2, 0


.thumb
Function_223380c: @ 223380c :thumb
	bx      lr
@ 0x223380e


.align 2, 0


.thumb
Function_2233810: @ 2233810 :thumb
	bx      lr
@ 0x2233812


.align 2, 0


.thumb
Function_2233814: @ 2233814 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      Function_2233460
	lsl     r0, r0, #16
	lsl     r3, r5, #16
	lsr     r0, r0, #16
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x1c] @ 0x2233850, (=0x22323cd)
	mov     r1, #0x0
	mov     r2, r6
	lsr     r3, r3, #16
	blx 0x20cf64c
	cmp     r0, #0x2
	beq     branch_223384a
	bl      Function_22337fc
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3-r6,pc}
@ 0x223384a

.thumb
branch_223384a: @ 223384a :thumb
	mov     r0, #0x1
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2233850

.word 0x22323cd @ 0x2233850
.thumb
Function_2233854: @ 2233854 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x223386c, (=0x22323e5)
	blx 0x20ceb94
	cmp     r0, #0x2
	beq     branch_2233868
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233868

.thumb
branch_2233868: @ 2233868 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223386c

.word 0x22323e5 @ 0x223386c
.thumb
Function_2233870: @ 2233870 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x223388c, (=0x2232425)
	blx 0x20cec08
	cmp     r0, #0x2
	beq     branch_2233888
	bl      Function_22337fc
	blx 0x20c42a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233888

.thumb
branch_2233888: @ 2233888 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223388c

.word 0x2232425 @ 0x223388c
.thumb
Function_2233890: @ 2233890 :thumb
	push    {r3,lr}
	mov     r3, r0
	mov     r0, #0x1e
	str     r0, [sp, #0x0]
	lsl     r3, r3, #16
	ldr     r0, [pc, #0x1c] @ 0x22338b8, (=0x223245d)
	mov     r1, #0x3
	mov     r2, #0x11
	lsr     r3, r3, #16
	blx 0x20d07c4
	cmp     r0, #0x2
	beq     branch_22338b2
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22338b2

.thumb
branch_22338b2: @ 22338b2 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22338b6


.align 2


.word Function_223245c+1 @ =0x223245d, 0x22338b8
.thumb
Function_22338bc: @ 22338bc :thumb
	push    {r3-r5,lr}
	bl      Function_2233408
	mov     r5, r0
	bl      Function_2233590
	mov     r4, r0
	bl      Function_2233510
	add     r0, #0x64
	ldrb    r0, [r0, #0x0]
	strh    r0, [r5, #0x32]
	str     r4, [r5, #0x0]
	bl      Function_223358c
	strh    r0, [r5, #0x4]
	ldr     r0, [pc, #0x14] @ 0x22338f4, (=0x22324c5)
	mov     r1, r5
	blx 0x20cedc8
	cmp     r0, #0x2
	beq     branch_22338f0
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22338f0

.thumb
branch_22338f0: @ 22338f0 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22338f4

.word 0x22324c5 @ 0x22338f4
.thumb
Function_22338f8: @ 22338f8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2233910, (=0x22324ed)
	blx 0x20cef50
	cmp     r0, #0x2
	beq     branch_223390c
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223390c

.thumb
branch_223390c: @ 223390c :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233910

.word 0x22324ed @ 0x2233910
.thumb
Function_2233914: @ 2233914 :thumb
	push    {r3,lr}
	bl      Function_2233478
	mov     r1, r0
	ldr     r0, [pc, #0x14] @ 0x2233934, (=0x22327b9)
	blx 0x20cefa0
	cmp     r0, #0x2
	beq     branch_223392e
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223392e

.thumb
branch_223392e: @ 223392e :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233932


.align 2


.word 0x22327b9 @ 0x2233934
.thumb
Function_2233938: @ 2233938 :thumb
	push    {r3-r5,lr}
	bl      Function_2233478
	mov     r4, r0
	bl      Function_2233508
	ldr     r2, [pc, #0x80] @ 0x22339c8, (=0x1c3)
	mov     r3, #0x38
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r5, r1
	mul     r5, r3
	add     r1, r0, r5
	add     r1, #0x34
	ldrb    r1, [r1, #0x0]
	strb    r1, [r4, #0x8]
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r5, r1
	mul     r5, r3
	add     r1, r0, r5
	add     r1, #0x35
	ldrb    r1, [r1, #0x0]
	strb    r1, [r4, #0x9]
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r5, r1
	mul     r5, r3
	ldrb    r1, [r0, r5]
	strb    r1, [r4, #0xa]
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r5, r1
	mul     r5, r3
	add     r1, r0, r5
	ldrb    r1, [r1, #0x1]
	strb    r1, [r4, #0xb]
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r5, r1
	mul     r5, r3
	add     r1, r0, r5
	ldrb    r1, [r1, #0x2]
	strb    r1, [r4, #0xc]
	ldrb    r1, [r0, r2]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	mov     r2, r1
	mul     r2, r3
	add     r0, r0, r2
	ldrb    r0, [r0, #0x3]
	strb    r0, [r4, #0xd]
	bl      Function_2233478
	mov     r1, r0
	ldr     r0, [pc, #0x18] @ 0x22339cc, (=0x22328d5)
	blx 0x20cefa0
	cmp     r0, #0x2
	beq     branch_22339c2
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22339c2

.thumb
branch_22339c2: @ 22339c2 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22339c6


.align 2


.word 0x1c3 @ 0x22339c8
.word 0x22328d5 @ 0x22339cc
.thumb
Function_22339d0: @ 22339d0 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x22339e8, (=0x2232945)
	blx 0x20cf1dc
	cmp     r0, #0x2
	beq     branch_22339e4
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22339e4

.thumb
branch_22339e4: @ 22339e4 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22339e8

.word 0x2232945 @ 0x22339e8
.thumb
Function_22339ec: @ 22339ec :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	bl      Function_223359c
	mov     r4, r0
	bl      Function_22334b4
	mov     r1, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2233a20, (=0x2232999)
	mov     r2, r4
	mov     r3, #0x1
	blx 0x20cf21c
	cmp     r0, #0x2
	beq     branch_2233a18
	bl      Function_22337fc
	add     sp, #0x4
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x2233a18

.thumb
branch_2233a18: @ 2233a18 :thumb
	mov     r0, #0x1
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2233a1e


.align 2


.word 0x2232999 @ 0x2233a20
.thumb
Function_2233a24: @ 2233a24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x68] @ 0x2233a94, (=0x2232c95)
	mov     r0, #0x4
	mov     r2, #0x0
	blx 0x20ce4bc
	cmp     r0, #0x0
	beq     branch_2233a40
	bl      Function_22337fc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2233a40

.thumb
branch_2233a40: @ 2233a40 :thumb
	bl      Function_2233408
	ldrh    r0, [r0, #0x16]
	cmp     r0, #0x0
	bne     branch_2233a4e
	mov     r5, #0x1
	b       branch_2233a50
@ 0x2233a4e

.thumb
branch_2233a4e: @ 2233a4e :thumb
	mov     r5, #0x0
.thumb
branch_2233a50: @ 2233a50 :thumb
	bl      Function_22334a8
	mov     r6, r0
	bl      Function_2233490
	mov     r4, r0
	bl      Function_223349c
	mov     r7, r0
	bl      Function_2233484
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r2, r4, #16
	ldr     r0, [pc, #0x20] @ 0x2233a98, (=0x2232a7d)
	mov     r1, r6
	lsr     r2, r2, #16
	mov     r3, r7
	blx 0x20cf5e4
	cmp     r0, #0x2
	beq     branch_2233a8e
	bl      Function_22337fc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2233a8e

.thumb
branch_2233a8e: @ 2233a8e :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2233a94

.word 0x2232c95 @ 0x2233a94
.word 0x2232a7d @ 0x2233a98
.thumb
Function_2233a9c: @ 2233a9c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2233ab4, (=0x2232d19)
	blx 0x20cec48
	cmp     r0, #0x2
	beq     branch_2233ab0
	bl      Function_22337fc
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233ab0

.thumb
branch_2233ab0: @ 2233ab0 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233ab4

.word 0x2232d19 @ 0x2233ab4
.thumb
Function_2233ab8: @ 2233ab8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x2233ad4, (=0x2232d3d)
	blx 0x20cec88
	cmp     r0, #0x2
	beq     branch_2233ad0
	bl      Function_22337fc
	blx 0x20c42a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233ad0

.thumb
branch_2233ad0: @ 2233ad0 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233ad4

.word Function_2232d3c+1 @ =0x2232d3d, 0x2233ad4
.thumb
Function_2233ad8: @ 2233ad8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x2233af4, (=0x2232d61)
	blx 0x20ced50
	cmp     r0, #0x2
	beq     branch_2233af0
	bl      Function_22337fc
	blx 0x20c42a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233af0

.thumb
branch_2233af0: @ 2233af0 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233af4

.word 0x2232d61 @ 0x2233af4
.thumb
Function_2233af8: @ 2233af8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x2233b14, (=0x2232da5)
	blx 0x20ced88
	cmp     r0, #0x2
	beq     branch_2233b10
	bl      Function_22337fc
	blx 0x20c42a8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2233b10

.thumb
branch_2233b10: @ 2233b10 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2233b14

.word 0x2232da5 @ 0x2233b14
.thumb
Function_2233b18: @ 2233b18 :thumb
	cmp     r0, #0x0
	bgt     branch_2233b20
	mov     r0, #0x1
	bx      lr
@ 0x2233b20

.thumb
branch_2233b20: @ 2233b20 :thumb
	cmp     r0, #0xfb
	bgt     branch_2233b28
	mov     r0, #0x0
	bx      lr
@ 0x2233b28

.thumb
branch_2233b28: @ 2233b28 :thumb
	ldr     r1, [pc, #0x14] @ 0x2233b40, (=0x115)
	cmp     r0, r1
	bge     branch_2233b32
	mov     r0, #0x1
	bx      lr
@ 0x2233b32

.thumb
branch_2233b32: @ 2233b32 :thumb
	add     r1, #0x86
	cmp     r0, r1
	ble     branch_2233b3c
	mov     r0, #0x1
	bx      lr
@ 0x2233b3c

.thumb
branch_2233b3c: @ 2233b3c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2233b40

.word 0x115 @ 0x2233b40
.thumb
Function_2233b44: @ 2233b44 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2235db0
	cmp     r0, #0x4
	bhi     branch_2233b84
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2233b5c

Jumppoints_2233b5c:
.hword branch_2233b66 - Jumppoints_2233b5c - 2
.hword branch_2233b6c - Jumppoints_2233b5c - 2
.hword branch_2233b72 - Jumppoints_2233b5c - 2
.hword branch_2233b78 - Jumppoints_2233b5c - 2
.hword branch_2233b7e - Jumppoints_2233b5c - 2
.thumb
branch_2233b66: @ 2233b66 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b6c

.thumb
branch_2233b6c: @ 2233b6c :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b72

.thumb
branch_2233b72: @ 2233b72 :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b78

.thumb
branch_2233b78: @ 2233b78 :thumb
	mov     r0, #0x4
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b7e

.thumb
branch_2233b7e: @ 2233b7e :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b84

.thumb
branch_2233b84: @ 2233b84 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2233b8c

.thumb
Function_2233b8c: @ 2233b8c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	ldr     r1, [pc, #0x14c] @ 0x2233ce0, (=0xe890)
	mov     r5, r0
	add     r4, r5, r1
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x9
	bls     branch_2233b9e
	b       branch_2233cd8
@ 0x2233b9e

.thumb
branch_2233b9e: @ 2233b9e :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2233baa

Jumppoints_2233baa:
.hword branch_2233bbe - Jumppoints_2233baa - 2
.hword branch_2233bde - Jumppoints_2233baa - 2
.hword branch_2233bf6 - Jumppoints_2233baa - 2
.hword branch_2233c06 - Jumppoints_2233baa - 2
.hword branch_2233c16 - Jumppoints_2233baa - 2
.hword branch_2233c32 - Jumppoints_2233baa - 2
.hword branch_2233c46 - Jumppoints_2233baa - 2
.hword branch_2233c62 - Jumppoints_2233baa - 2
.hword branch_2233c8e - Jumppoints_2233baa - 2
.hword branch_2233cb4 - Jumppoints_2233baa - 2

.thumb
branch_2233bbe: @ 2233bbe :thumb
	bl      Function_2233d10
	ldr     r0, [r5, #0x10]
	bl      0x2024440
	mov     r5, r0
	bl      Function_223635c
	mov     r1, r0
	mov     r0, r5
	bl      0x202efb8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233bde

.thumb
branch_2233bde: @ 2233bde :thumb
	blx 0x20c3880
	mov     r2, #0x78
	mov     r3, #0x0
	blx 0x20e1ee0
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233bf6

.thumb
branch_2233bf6: @ 2233bf6 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x4]
	bne     branch_2233cd8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c06

.thumb
branch_2233c06: @ 2233c06 :thumb
	ldr     r0, [r5, #0x10]
	mov     r1, #0x2
	bl      0x2024814
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c16

.thumb
branch_2233c16: @ 2233c16 :thumb
	ldr     r0, [r5, #0x10]
	bl      0x2024828
	cmp     r0, #0x3
	bne     branch_2233c26
	add     sp, #0x10
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x2233c26

.thumb
branch_2233c26: @ 2233c26 :thumb
	cmp     r0, #0x1
	bne     branch_2233cd8
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c32

.thumb
branch_2233c32: @ 2233c32 :thumb
	mov     r0, #0x0
	mov     r1, r0
	add     r2, sp, #0x0
	mov     r3, #0x10
	blx 0x20d1a6c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c46

.thumb
branch_2233c46: @ 2233c46 :thumb
	bl      Function_2236280
	cmp     r0, #0x0
	bne     branch_2233c5a
	mov     r0, #0x1
	bl      0x2017b8c
	add     sp, #0x10
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x2233c5a

.thumb
branch_2233c5a: @ 2233c5a :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c62

.thumb
branch_2233c62: @ 2233c62 :thumb
	bl      Function_2236308
	cmp     r0, #0x9
	beq     branch_2233cd8
	bl      Function_2236308
	cmp     r0, #0xb
	bne     branch_2233c7a
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233c7a

.thumb
branch_2233c7a: @ 2233c7a :thumb
	bl      Function_22362c8
	cmp     r0, #0x8
	bne     branch_2233cd8
	mov     r0, #0x1
	bl      0x2017b8c
	add     sp, #0x10
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x2233c8e

.thumb
branch_2233c8e: @ 2233c8e :thumb
	ldr     r0, [r5, #0x10]
	bl      0x2024828
	cmp     r0, #0x3
	bne     branch_2233c9e
	add     sp, #0x10
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x2233c9e

.thumb
branch_2233c9e: @ 2233c9e :thumb
	cmp     r0, #0x2
	bne     branch_2233c8e
	bl      Function_22362c8
	mov     r0, #0x1
	bl      0x2017b7c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_2233cd8
@ 0x2233cb4

.thumb
branch_2233cb4: @ 2233cb4 :thumb
	bl      Function_22362c8
	cmp     r0, #0x8
	bne     branch_2233cc8
	mov     r0, #0x1
	bl      0x2017b8c
	add     sp, #0x10
	mov     r0, #0xc
	pop     {r3-r5,pc}
@ 0x2233cc8

.thumb
branch_2233cc8: @ 2233cc8 :thumb
	cmp     r0, #0x0
	bne     branch_2233cd8
	mov     r0, #0x1
	bl      0x2017b8c
	add     sp, #0x10
	mov     r0, #0xb
	pop     {r3-r5,pc}
@ 0x2233cd8

.thumb
branch_2233cd8: @ 2233cd8 :thumb
	mov     r0, #0xa
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x2233cde


.align 2


.word 0xe890 @ 0x2233ce0
.thumb
Function_2233ce4: @ 2233ce4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x10]
	bl      0x2024440
	mov     r4, r0
	bl      Function_223635c
	mov     r1, r0
	mov     r0, r4
	bl      0x202efb8
	mov     r0, #0x4
	bl      0x2017de0
	ldr     r0, [r5, #0x10]
	bl      0x20246e0
	mov     r0, #0x4
	bl      0x2017df0
	pop     {r3-r5,pc}
@ 0x2233d10

.thumb
Function_2233d10: @ 2233d10 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xf4
	mov     r7, r0
	ldr     r0, [r7, #0x10]
	bl      0x2024440
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	bl      0x2076b10
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_2233d2a: @ 2233d2a :thumb
	ldr     r0, [pc, #0x7c] @ 0x2233da8, (=0xe880)
	mov     r1, #0x3d
	lsl     r1, r1, #4
	ldr     r0, [r7, r0]
	ldr     r2, [r5, r1]
	mov     r1, #0x96
	lsl     r1, r1, #4
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r1, r2
	add     r0, r0, r1
	mov     r1, #0xf3
	lsl     r1, r1, #2
	ldr     r2, [r5, r1]
	mov     r1, #0x50
	mul     r1, r2
	add     r0, r0, r1
	mov     r1, r6
	bl      Function_2236e90
	ldr     r0, [sp, #0x0]
	mov     r1, r6
	mov     r2, r4
	bl      0x202efa4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x6
	blt     branch_2233d2a
	mov     r5, #0x0
	add     r0, sp, #0x4
	strh    r5, [r0, #0x0]
	mov     r4, r7
	.hword  0x1e6e @ sub r6, r5, #0x1
.thumb
branch_2233d6c: @ 2233d6c :thumb
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r2, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r1, [r4, r0]
	cmp     r2, r6
	beq     branch_2233d9a
	cmp     r1, #0xe
	beq     branch_2233d9a
	ldr     r0, [pc, #0x28] @ 0x2233da8, (=0xe880)
	mov     r3, #0x96
	ldr     r0, [r7, r0]
	lsl     r3, r3, #4
	mul     r3, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r1, #0x50
	mul     r1, r2
	add     r0, r0, r3
	add     r0, r0, r1
	mov     r1, #0xb
	add     r2, sp, #0x4
	bl      Function_2236ca4
.thumb
branch_2233d9a: @ 2233d9a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0xc
	cmp     r5, #0x6
	blt     branch_2233d6c
	add     sp, #0xf4
	pop     {r4-r7,pc}
@ 0x2233da6


.align 2


.word 0xe880 @ 0x2233da8
.thumb
Function_2233dac: @ 2233dac :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	tst     r2, r0
	beq     branch_2233dca
	mov     r2, #0x0
	bl      0x2002d7c
	ldr     r1, [r4, #0x10]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r0, r0, #1
	pop     {r4,pc}
@ 0x2233dca

.thumb
branch_2233dca: @ 2233dca :thumb
	ldr     r0, [r4, #0x18]
	pop     {r4,pc}
@ 0x2233dce


.align 2, 0


.thumb
Function_2233dd0: @ 2233dd0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r5, r1
	ldr     r7, [r5, #0x44]
	mov     r6, r0
	mov     r4, r2
	cmp     r7, #0x0
	bne     branch_2233de2
	mov     r7, #0xff
.thumb
branch_2233de2: @ 2233de2 :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	bne     branch_2233e20
	ldr     r0, [r5, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x10]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x14]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x20]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r2, [r5, #0x24]
	ldr     r3, [r5, #0x8]
	lsl     r2, r2, #24
	lsl     r3, r3, #24
	ldr     r0, [r6, #0x20]
	lsr     r2, r2, #24
	lsr     r3, r3, #24
	bl      0x201a7e8
.thumb
branch_2233e20: @ 2233e20 :thumb
	mov     r0, #0x2
	tst     r0, r4
	bne     branch_2233e32
	ldr     r1, [r5, #0x30]
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	bl      0x201ada4
.thumb
branch_2233e32: @ 2233e32 :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x34]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_2233ec2
	ldr     r2, [pc, #0x124] @ 0x2233f64, (=0x1c6)
	mov     r0, #0x1
	mov     r1, #0x1a
	mov     r3, #0x4e
	bl      0x200b144
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x40]
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	bne     branch_2233e5a
	mov     r0, #0x4e
	bl      0x200b358
	str     r0, [sp, #0x14]
.thumb
branch_2233e5a: @ 2233e5a :thumb
	ldr     r0, [pc, #0x10c] @ 0x2233f68, (=0x12608)
	ldr     r0, [r6, r0]
	bl      0x20237e8
	ldr     r0, [pc, #0x104] @ 0x2233f68, (=0x12608)
	ldr     r1, [r5, #0x34]
	ldr     r0, [r6, r0]
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x18]
	bl      0x200b1ec
	str     r0, [sp, #0x20]
	ldr     r1, [pc, #0xf4] @ 0x2233f68, (=0x12608)
	ldr     r0, [sp, #0x14]
	ldr     r1, [r6, r1]
	ldr     r2, [sp, #0x20]
	bl      0x200c388
	ldr     r0, [sp, #0x20]
	bl      0x20237bc
	ldr     r1, [sp, #0x1c]
	mov     r0, r5
	mov     r2, r4
	bl      Function_2233dac
	mov     r3, r0
	ldr     r0, [r5, #0x1c]
	ldr     r2, [sp, #0x1c]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x2c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x28]
	bl      0x201d78c
	str     r0, [r5, #0x48]
	ldr     r0, [r5, #0x40]
	cmp     r0, #0x0
	bne     branch_2233eb6
	ldr     r0, [sp, #0x14]
	bl      0x200b3f0
.thumb
branch_2233eb6: @ 2233eb6 :thumb
	ldr     r0, [sp, #0x18]
	bl      0x200b190
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r5, #0x34]
.thumb
branch_2233ec2: @ 2233ec2 :thumb
	ldr     r1, [r5, #0x38]
	cmp     r1, #0x0
	beq     branch_2233efe
	ldr     r0, [pc, #0xa0] @ 0x2233f6c, (=0x1260c)
	mov     r2, #0x40
	ldr     r6, [r6, r0]
	mov     r0, r6
	bl      0x2023d8c
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_2233dac
	mov     r3, r0
	ldr     r0, [r5, #0x1c]
	mov     r2, r6
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x2c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x28]
	bl      0x201d78c
	str     r0, [r5, #0x48]
	mov     r0, #0x0
	str     r0, [r5, #0x38]
.thumb
branch_2233efe: @ 2233efe :thumb
	ldr     r1, [r5, #0x3c]
	cmp     r1, #0x0
	beq     branch_2233f2c
	mov     r0, r5
	mov     r2, r4
	bl      Function_2233dac
	mov     r3, r0
	ldr     r0, [r5, #0x1c]
	str     r0, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x2c]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, #0x28]
	ldr     r2, [r5, #0x3c]
	bl      0x201d78c
	str     r0, [r5, #0x48]
	mov     r0, #0x0
	str     r0, [r5, #0x3c]
.thumb
branch_2233f2c: @ 2233f2c :thumb
	mov     r0, #0x4
	tst     r0, r4
	bne     branch_2233f38
	ldr     r0, [r5, #0x0]
	bl      0x201a954
.thumb
branch_2233f38: @ 2233f38 :thumb
	mov     r0, #0x8
	tst     r0, r4
	beq     branch_2233f60
	mov     r0, #0x10
	tst     r0, r4
	ldr     r0, [r5, #0x0]
	beq     branch_2233f54
	ldr     r2, [pc, #0x28] @ 0x2233f70, (=0x3d2)
	mov     r1, #0x0
	mov     r3, #0xd
	bl      0x200e060
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2233f54

.thumb
branch_2233f54: @ 2233f54 :thumb
	mov     r2, #0x3f
	mov     r1, #0x0
	lsl     r2, r2, #4
	mov     r3, #0xe
	bl      0x200dc48
.thumb
branch_2233f60: @ 2233f60 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2233f64

.word 0x1c6 @ 0x2233f64
.word 0x12608 @ 0x2233f68
.word 0x1260c @ 0x2233f6c
.word 0x3d2 @ 0x2233f70
.thumb
Function_2233f74: @ 2233f74 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x2233fa0, (=0x223d874)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x4e
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2233fa0

.word 0x223d874 @ 0x2233fa0
.thumb
Function_2233fa4: @ 2233fa4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	blx 0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x4e
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r1, r6
	mov     r0, #0x50
	add     r1, #0x2c
	mov     r2, #0x4e
	bl      0x20095c4
	str     r0, [r6, #0x28]
	mov     r0, r6
	mov     r2, #0x1
	add     r0, #0x2c
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r7, #0x55
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2233fea: @ 2233fea :thumb
	mov     r0, #0x3
	mov     r1, r4
	mov     r2, #0x4e
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2233fea
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x4e
	str     r0, [sp, #0x8]
	mov     r0, #0x55
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x74
	mov     r2, #0x1a
	bl      0x200985c
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	sub     r1, #0x14
	str     r0, [sp, #0xc]
	ldr     r0, [r6, r1]
	mov     r1, #0x74
	mov     r2, #0x17
	bl      0x20098b8
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	sub     r1, #0x14
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	mov     r1, #0x74
	mov     r2, #0x19
	mov     r3, #0x1
	bl      0x2009918
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	sub     r1, #0x14
	str     r0, [sp, #0x8]
	ldr     r0, [r6, r1]
	mov     r1, #0x74
	mov     r2, #0x18
	mov     r3, #0x1
	bl      0x2009918
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r1, #0xc
	ldr     r0, [r6, r1]
	bl      0x200a328
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200a5c8
	bl      0x2079fd0
	mov     r1, r0
	mov     r0, #0x0
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x13
	add     r3, #0xff
	bl      0x2006e84
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22340b0

.thumb
Function_22340b0: @ 22340b0 :thumb
	push    {lr}
	add     sp, #-0x2c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	.hword  0x1e4a @ sub r2, r1, #0x1
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r3, #0x55
	str     r1, [sp, #0x10]
	lsl     r3, r3, #2
	ldr     r2, [r0, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r0, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r0, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r0, r2]
	add     r3, #0x30
	str     r2, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r0, r3
	mov     r2, r1
	mov     r3, r1
	str     r1, [sp, #0x28]
	bl      0x20093b4
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	add     sp, #0x2c
	pop     {pc}
@ 0x22340fc

.thumb
Function_22340fc: @ 22340fc :thumb
	ldr     r2, [r1, #0x28]
	str     r2, [r0, #0x0]
	mov     r2, #0x61
	lsl     r2, r2, #2
	add     r1, r1, r2
	str     r1, [r0, #0x4]
	mov     r2, #0x0
	mov     r1, #0x1
	str     r2, [r0, #0x10]
	lsl     r1, r1, #12
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x18]
	str     r1, [r0, #0x1c]
	strh    r2, [r0, #0x20]
	mov     r1, #0x14
	str     r1, [r0, #0x24]
	str     r3, [r0, #0x28]
	mov     r1, #0x4e
	str     r1, [r0, #0x2c]
	bx      lr
@ 0x2234124

.thumb
Function_2234124: @ 2234124 :thumb
	ldr     r3, [pc, #0x18] @ 0x2234140, (=0xe880)
	ldr     r0, [r0, r3]
	add     r3, r0, #0x4
	mov     r0, #0x96
	lsl     r0, r0, #4
	mul     r0, r1
	add     r1, r3, r0
	mov     r0, #0x50
	mul     r0, r2
	add     r0, r1, r0
	ldr     r3, [pc, #0x8] @ 0x2234144, (=0x2236925)
	mov     r1, #0xb
	mov     r2, #0x0
	bx      r3
@ 0x2234140

.word 0xe880 @ 0x2234140
.word Function_2236924+1 @ =0x2236925, 0x2234144
.thumb
Function_2234148: @ 2234148 :thumb
	ldr     r3, [pc, #0x18] @ 0x2234164, (=0xe880)
	ldr     r0, [r0, r3]
	add     r3, r0, #0x4
	mov     r0, #0x96
	lsl     r0, r0, #4
	mul     r0, r1
	add     r1, r3, r0
	mov     r0, #0x50
	mul     r0, r2
	add     r0, r1, r0
	ldr     r3, [pc, #0x8] @ 0x2234168, (=0x2236925)
	mov     r1, #0x2d
	mov     r2, #0x0
	bx      r3
@ 0x2234164

.word 0xe880 @ 0x2234164
.word Function_2236924+1 @ =0x2236925, 0x2234168
.thumb
Function_223416c: @ 223416c :thumb
	ldr     r3, [pc, #0x18] @ 0x2234188, (=0xe880)
	ldr     r0, [r0, r3]
	add     r3, r0, #0x4
	mov     r0, #0x96
	lsl     r0, r0, #4
	mul     r0, r1
	add     r1, r3, r0
	mov     r0, #0x50
	mul     r0, r2
	add     r0, r1, r0
	mov     r1, #0x0
	ldr     r3, [pc, #0x8] @ 0x223418c, (=0x2236925)
	mov     r2, r1
	bx      r3
@ 0x2234188

.word 0xe880 @ 0x2234188
.word Function_2236924+1 @ =0x2236925, 0x223418c
.thumb
Function_2234190: @ 2234190 :thumb
	push    {r4,r5}
	ldr     r5, [sp, #0x8]
	lsr     r4, r5, #31
	add     r4, r5, r4
	asr     r4, r4, #1
	sub     r5, r2, r4
	strb    r5, [r0, #0x0]
	lsr     r5, r3, #31
	add     r5, r3, r5
	asr     r5, r5, #1
	sub     r3, r1, r5
	strb    r3, [r0, #0x2]
	add     r2, r2, r4
	strb    r2, [r0, #0x1]
	add     r1, r1, r5
	strb    r1, [r0, #0x3]
	pop     {r4,r5}
	bx      lr
@ 0x22341b4

.thumb
Function_22341b4: @ 22341b4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r1, #0x1
	mov     r5, r0
	mov     r0, r3
	lsl     r1, r1, #12
	mov     r7, r2
	bl      0x2018184
	mov     r4, r0
	beq     branch_22341e8
	mov     r1, r5
	mov     r2, r6
	bl      0x2006aa4
	mov     r0, r4
	mov     r1, r7
	blx 0x20a7164
	cmp     r0, #0x0
	bne     branch_22341e8
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22341e8

.thumb
branch_22341e8: @ 22341e8 :thumb
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x22341ec

.thumb
Function_22341ec: @ 22341ec :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	mov     r0, r3
	mov     r1, r6
	bl      0x2006d28
	mov     r0, r4
	mov     r1, r5
	blx 0x20a7164
	pop     {r4-r6,pc}
@ 0x2234206


.align 2, 0


.thumb
Function_2234208: @ 2234208 :thumb
	push    {r4,lr}
	mov     r3, r1
	mov     r4, #0x0
	cmp     r0, #0xc9
	beq     branch_223421a
	ldr     r1, [pc, #0x60] @ 0x2234274, (=0x182)
	cmp     r0, r1
	beq     branch_2234244
	b       branch_223426e
@ 0x223421a

.thumb
branch_223421a: @ 223421a :thumb
	mov     r4, #0x3
	lsl     r0, r4, #8
	mov     r2, r3
	and     r0, r3
	lsr     r1, r0, #6
	lsl     r0, r4, #24
	and     r2, r4
	and     r0, r3
	lsl     r4, r4, #16
	and     r3, r4
	lsr     r0, r0, #18
	lsr     r3, r3, #12
	orr     r0, r3
	orr     r0, r1
	orr     r0, r2
	mov     r1, #0x1c
	blx 0x20e2178
	lsl     r0, r1, #24
	lsr     r4, r0, #24
	b       branch_223426e
@ 0x2234244

.thumb
branch_2234244: @ 2234244 :thumb
	cmp     r2, #0x5
	bhi     branch_2234260
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2234254

Jumppoints_2234254:
.hword branch_2234260 - Jumppoints_2234254 - 2
.hword branch_2234260 - Jumppoints_2234254 - 2
.hword branch_2234260 - Jumppoints_2234254 - 2
.hword branch_223426c - Jumppoints_2234254 - 2
.hword branch_2234264 - Jumppoints_2234254 - 2
.hword branch_2234268 - Jumppoints_2234254 - 2
.thumb
branch_2234260: @ 2234260 :thumb
	mov     r4, #0x0
	b       branch_223426e
@ 0x2234264

.thumb
branch_2234264: @ 2234264 :thumb
	mov     r4, #0x1
	b       branch_223426e
@ 0x2234268

.thumb
branch_2234268: @ 2234268 :thumb
	mov     r4, #0x2
	b       branch_223426e
@ 0x223426c

.thumb
branch_223426c: @ 223426c :thumb
	mov     r4, #0x3
.thumb
branch_223426e: @ 223426e :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x2234272


.align 2


.word 0x182 @ 0x2234274
.thumb
Function_2234278: @ 2234278 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r7, r3
	mov     r5, r1
	bl      Function_2236dd0
	mov     r1, r6
	mov     r2, r7
	mov     r4, r0
	bl      Function_2234208
	mov     r7, r0
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      0x2079d8c
	mov     r1, r0
	mov     r0, #0x13
	add     r2, sp, #0x0
	mov     r3, #0x4e
	bl      Function_22341b4
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #8
	blx 0x20c2c54
	ldr     r1, [sp, #0x18]
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #4
	add     r1, #0x64
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	lsl     r1, r1, #5
	lsl     r2, r2, #8
	blx 0x20c02bc
	mov     r0, r4
	mov     r1, r7
	mov     r2, r5
	bl      0x2079edc
	mov     r1, r0
	ldr     r0, [sp, #0x1c]
	add     r1, #0x8
	bl      0x2021e90
	mov     r0, r6
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x22342e4

.thumb
Function_22342e4: @ 22342e4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r1
	ldr     r1, [pc, #0x74] @ 0x2234360, (=0x223f434)
	str     r2, [sp, #0x0]
	ldr     r2, [r1, #0x0]
	mov     r1, #0x83
	mov     r5, r3
	lsl     r1, r1, #2
	mul     r1, r5
	add     r4, r2, r1
	ldr     r1, [sp, #0x20]
	mov     r6, r0
	cmp     r1, #0x0
	beq     branch_2234358
	bl      Function_2233b18
	cmp     r0, #0x0
	bne     branch_2234314
	mov     r0, r6
	bl      Function_2236dd0
	mov     r6, r0
	b       branch_2234316
@ 0x2234314

.thumb
branch_2234314: @ 2234314 :thumb
	mov     r6, #0x0
.thumb
branch_2234316: @ 2234316 :thumb
	ldr     r2, [sp, #0x0]
	mov     r0, r6
	mov     r1, r7
	bl      0x2079d8c
	ldr     r2, [sp, #0x24]
	ldr     r3, [sp, #0x28]
	add     r1, sp, #0x4
	bl      Function_22341ec
	ldr     r0, [sp, #0x4]
	mov     r1, r4
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	add     r1, #0xc
	lsl     r2, r2, #8
	blx 0x20c4c14
	lsl     r0, r5, #4
	add     r0, #0x64
	lsl     r0, r0, #5
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x0]
	str     r0, [r4, #0x8]
	mov     r0, r6
	mov     r2, r7
	bl      0x2079edc
	add     r0, #0x8
	add     sp, #0x8
	str     r0, [r4, #0x4]
	pop     {r3-r7,pc}
@ 0x2234358

.thumb
branch_2234358: @ 2234358 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2234360

.word 0x223f434 @ 0x2234360
.thumb
Function_2234364: @ 2234364 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x3c] @ 0x22343a4, (=0x223f434)
	mov     r6, #0x2
	lsl     r6, r6, #8
	mov     r7, r6
	ldr     r5, [r0, #0x0]
	mov     r4, #0x0
	add     r7, #0xc
.thumb
branch_2234374: @ 2234374 :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2234398
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r6
	blx 0x20c2c54
	mov     r0, r5
	ldr     r1, [r5, #0x0]
	add     r0, #0xc
	mov     r2, r6
	blx 0x20c02bc
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
	bl      0x2021e90
.thumb
branch_2234398: @ 2234398 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x1e
	blt     branch_2234374
	pop     {r3-r7,pc}
@ 0x22343a2


.align 2


.word 0x223f434 @ 0x22343a4
.thumb
Function_22343a8: @ 22343a8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r6, r0
	mov     r0, #0x13
	mov     r1, #0x4e
	bl      0x2006c24
	mov     r1, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0x4e
	lsl     r1, r1, #12
	bl      0x2018184
	mov     r7, #0x0
	str     r0, [sp, #0x14]
	str     r7, [sp, #0xc]
	mov     r5, r6
.thumb
branch_22343ca: @ 22343ca :thumb
	ldr     r0, [pc, #0x128] @ 0x22344f4, (=0xe880)
	ldr     r1, [pc, #0x128] @ 0x22344f8, (=0xe884)
	ldr     r0, [r6, r0]
	ldr     r2, [r6, r1]
	mov     r1, #0x96
	lsl     r1, r1, #4
	mul     r1, r2
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, r0, r1
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	add     r0, r1, r0
	mov     r1, #0x5
	bl      Function_2236924
	cmp     r0, #0x0
	beq     branch_223448e
	ldr     r1, [pc, #0x108] @ 0x22344f8, (=0xe884)
	mov     r0, r6
	ldr     r1, [r6, r1]
	mov     r2, r7
	bl      Function_2234124
	ldr     r1, [pc, #0xfc] @ 0x22344f8, (=0xe884)
	str     r0, [sp, #0x1c]
	ldr     r1, [r6, r1]
	mov     r0, r6
	mov     r2, r7
	bl      Function_2234148
	ldr     r1, [pc, #0xf0] @ 0x22344f8, (=0xe884)
	str     r0, [sp, #0x18]
	ldr     r1, [r6, r1]
	mov     r0, r6
	mov     r2, r7
	bl      Function_223416c
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	bl      Function_2236dd0
	ldr     r2, [pc, #0xdc] @ 0x22344fc, (=0x21bf6dc)
	mov     r1, r4
	ldrb    r2, [r2, #0x6]
	bl      Function_2234208
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r3, r7
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	bl      Function_22342e4
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [pc, #0xa0] @ 0x22344f4, (=0xe880)
	ldr     r1, [pc, #0xa4] @ 0x22344f8, (=0xe884)
	ldr     r0, [r6, r0]
	ldr     r2, [r6, r1]
	mov     r1, #0x96
	lsl     r1, r1, #4
	mul     r1, r2
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r1, r0, r1
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	add     r0, r1, r0
	mov     r1, #0xc
	bl      Function_2236924
	cmp     r0, #0x0
	beq     branch_2234480
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_22344be
@ 0x2234480

.thumb
branch_2234480: @ 2234480 :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	b       branch_22344be
@ 0x223448e

.thumb
branch_223448e: @ 223448e :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x10]
	mov     r2, r4
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	mov     r3, r7
	bl      Function_22342e4
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_22344be: @ 22344be :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x50
	add     r5, #0xc
	str     r0, [sp, #0xc]
	cmp     r7, #0x1e
	bge     branch_22344ce
	b       branch_22343ca
@ 0x22344ce

.thumb
branch_22344ce: @ 22344ce :thumb
	ldr     r0, [sp, #0x14]
	bl      0x20181c4
	ldr     r0, [sp, #0x10]
	bl      0x2006ca8
	ldr     r1, [pc, #0x24] @ 0x2234500, (=0x2234365)
	ldr     r0, [pc, #0x24] @ 0x2234504, (=0x12604)
	str     r1, [r6, r0]
	ldr     r1, [pc, #0x14] @ 0x22344f8, (=0xe884)
	mov     r0, r6
	ldr     r1, [r6, r1]
	bl      Function_2234a2c
	mov     r0, r6
	bl      Function_22349e0
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x22344f4

.word 0xe880 @ 0x22344f4
.word 0xe884 @ 0x22344f8
.word 0x21bf6dc @ 0x22344fc
.word 0x2234365 @ 0x2234500
.word 0x12604 @ 0x2234504
.thumb
Function_2234508: @ 2234508 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x44
	mov     r2, #0x61
	mov     r5, r0
	lsl     r2, r2, #2
	add     r0, sp, #0x14
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_22340fc
	mov     r0, #0x28
	str     r0, [sp, #0x8]
	mov     r0, #0x31
	mov     r4, #0x0
	lsl     r0, r0, #4
	str     r4, [sp, #0xc]
	add     r7, r5, r0
.thumb
branch_223452c: @ 223452c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x8]
	mov     r6, #0x1c
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
.thumb
branch_2234538: @ 2234538 :thumb
	mov     r0, #0x1c
	str     r0, [sp, #0x0]
	ldr     r2, [sp, #0x8]
	mov     r0, r7
	mov     r1, r6
	mov     r3, #0x1c
	bl      Function_2234190
	lsl     r0, r6, #12
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x4]
	str     r0, [sp, #0x20]
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2234566
	add     r0, sp, #0x14
	bl      0x2021aa0
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_2234566: @ 2234566 :thumb
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r5, r0]
	add     r1, #0xa
	bl      0x2021d6c
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021e80
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r1, r4
	ldr     r0, [r5, r0]
	add     r1, #0x64
	bl      0x2021f58
	mov     r0, #0x6
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #12
	add     r0, r1, r0
	str     r0, [sp, #0x1c]
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #14
	add     r0, r1, r0
	str     r0, [sp, #0x20]
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_22345d0
	add     r0, sp, #0x14
	bl      0x2021aa0
	mov     r1, #0x6b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
.thumb
branch_22345d0: @ 22345d0 :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x28
	bl      0x2021d6c
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021e80
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      0x2021f58
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d3f @ add r7, r7, #0x4
	add     r5, #0xc
	cmp     r4, #0x1e
	beq     branch_2234634
	ldr     r0, [sp, #0x10]
	add     r6, #0x28
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, #0x6
	blt     branch_2234538
	ldr     r0, [sp, #0x8]
	add     r0, #0x18
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x5
	bge     branch_2234634
	b       branch_223452c
@ 0x2234634

.thumb
branch_2234634: @ 2234634 :thumb
	add     sp, #0x44
	pop     {r4-r7,pc}
@ 0x2234638

.thumb
Function_2234638: @ 2234638 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r2
	mov     r2, #0x61
	mov     r6, r0
	lsl     r2, r2, #2
	mov     r5, r1
	mov     r7, r3
	add     r0, sp, #0x0
	mov     r1, r6
	add     r2, r6, r2
	mov     r3, #0x1
	bl      Function_22340fc
	lsl     r0, r5, #12
	str     r0, [sp, #0x8]
	lsl     r0, r4, #12
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x24]
	add     r0, sp, #0x0
	bl      0x2021aa0
	mov     r4, r0
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, r4
	mov     r1, r7
	bl      0x2021d6c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2021e80
	ldr     r1, [sp, #0x48]
	mov     r0, r4
	bl      0x2021cac
	mov     r0, r4
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223468c

.thumb
Function_223468c: @ 223468c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0xe2
	lsl     r0, r0, #2
	add     r0, r6, r0
	mov     r1, #0xe4
	mov     r2, #0xb0
	mov     r3, #0x32
	bl      Function_2234190
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0xe4
	mov     r2, #0xb0
	mov     r3, #0x6
	bl      Function_2234638
	mov     r1, #0xe6
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r1, #0x8
	add     r0, r6, r1
	mov     r1, #0xb0
	mov     r3, #0x20
	mov     r2, r1
	str     r3, [sp, #0x0]
	bl      Function_2234190
	mov     r0, #0x1
	mov     r1, #0xb0
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r2, r1
	mov     r3, #0x3
	bl      Function_2234638
	mov     r1, #0xea
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	sub     r1, #0x1c
	mov     r3, #0x20
	add     r0, r6, r1
	mov     r1, #0x18
	mov     r2, #0xb0
	str     r3, [sp, #0x0]
	bl      Function_2234190
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, #0x18
	mov     r2, #0xb0
	mov     r3, #0x0
	bl      Function_2234638
	mov     r1, #0xee
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r7, #0x0
	mov     r0, #0xff
	sub     r1, #0x24
	strb    r0, [r6, r1]
	mov     r4, r7
	mov     r5, r6
.thumb
branch_2234712: @ 2234712 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x40
	mov     r3, #0x9
	bl      Function_2234638
	mov     r1, #0xf2
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r1, #0x0
	mov     r0, #0xf3
	mvn     r1, r1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	mov     r1, #0xe
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0x24
	add     r5, #0xc
	cmp     r7, #0x6
	blt     branch_2234712
	mov     r0, #0x41
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x223474c

.thumb
Function_223474c: @ 223474c :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x30] @ 0x2234780, (=0xe880)
	ldr     r2, [r0, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r0, r3]
	mov     r0, #0x96
	lsl     r0, r0, #4
	.hword  0x1d12 @ add r2, r2, #0x4
	mul     r0, r3
	add     r2, r2, r0
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r2, r0
	mov     r1, #0x41
	mov     r2, #0x0
	bl      Function_2236924
	mov     r1, #0x67
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_223477a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223477a

.thumb
branch_223477a: @ 223477a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223477e


.align 2


.word 0xe880 @ 0x2234780
.thumb
Function_2234784: @ 2234784 :thumb
	push    {r3-r7,lr}
	ldr     r3, [pc, #0x48] @ 0x22347d0, (=0xe880)
	mov     r5, #0x0
	ldr     r2, [r0, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r0, r3]
	mov     r0, #0x96
	lsl     r0, r0, #4
	.hword  0x1d12 @ add r2, r2, #0x4
	mul     r0, r3
	add     r4, r2, r0
	mov     r0, #0x50
	mov     r6, r1
	mul     r6, r0
	mov     r7, r5
.thumb
branch_22347a2: @ 22347a2 :thumb
	mov     r1, r5
	add     r0, r4, r6
	add     r1, #0xd
	mov     r2, r7
	bl      Function_2236924
	ldr     r3, [pc, #0x24] @ 0x22347d4, (=0x223ea98)
	mov     r2, r0
	mov     r1, #0x0
.thumb
branch_22347b4: @ 22347b4 :thumb
	ldr     r0, [r3, #0x0]
	cmp     r2, r0
	bne     branch_22347be
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22347be

.thumb
branch_22347be: @ 22347be :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r1, #0x8
	bcc     branch_22347b4
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_22347a2
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22347d0

.word 0xe880 @ 0x22347d0
.word 0x223ea98 @ 0x22347d4
.thumb
Function_22347d8: @ 22347d8 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x40] @ 0x223481c, (=0xe880)
	ldr     r2, [r0, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r0, r3]
	mov     r0, #0x96
	lsl     r0, r0, #4
	.hword  0x1d12 @ add r2, r2, #0x4
	mul     r0, r3
	add     r2, r2, r0
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r2, r0
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2236924
	ldr     r1, [pc, #0x24] @ 0x2234820, (=0x223eaa8)
	ldrh    r1, [r1, #0x30]
	cmp     r1, #0x0
	beq     branch_2234816
	ldr     r2, [pc, #0x20] @ 0x2234824, (=0x223ead8)
.thumb
branch_2234804: @ 2234804 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r0, r1
	bne     branch_223480e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223480e

.thumb
branch_223480e: @ 223480e :thumb
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r1, [r2, #0x0]
	cmp     r1, #0x0
	bne     branch_2234804
.thumb
branch_2234816: @ 2234816 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223481a


.align 2


.word 0xe880 @ 0x223481c
.word 0x223eaa8 @ 0x2234820
.word 0x223ead8 @ 0x2234824
.thumb
Function_2234828: @ 2234828 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x24] @ 0x2234850, (=0xe880)
	ldr     r2, [r0, r3]
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r3, [r0, r3]
	mov     r0, #0x96
	lsl     r0, r0, #4
	.hword  0x1d12 @ add r2, r2, #0x4
	mul     r0, r3
	add     r2, r2, r0
	mov     r0, #0x50
	mul     r0, r1
	add     r0, r2, r0
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2236924
	bl      Function_2233b18
	pop     {r3,pc}
@ 0x2234850

.word 0xe880 @ 0x2234850
.thumb
Function_2234854: @ 2234854 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	add     r0, r4, r0
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r0, #0xc
	mul     r0, r6
	ldr     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2234880
	bl      0x2021d34
	cmp     r0, #0x0
	bne     branch_2234880
	add     sp, #0x14
	mov     r0, #0x3
	pop     {r4-r7,pc}
@ 0x2234880

.thumb
branch_2234880: @ 2234880 :thumb
	mov     r5, #0x0
	mov     r7, #0x3d
	mvn     r5, r5
	mov     r2, #0x0
	mov     r3, r4
	lsl     r7, r7, #4
	b       branch_22348a8
@ 0x223488e

.thumb
branch_223488e: @ 223488e :thumb
	ldr     r0, [pc, #0x14c] @ 0x22349dc, (=0xe884)
	ldr     r1, [r4, r0]
	ldr     r0, [r3, r7]
	cmp     r1, r0
	bne     branch_22348a4
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r3, r0]
	cmp     r6, r0
	bne     branch_22348a4
	mov     r5, r2
.thumb
branch_22348a4: @ 22348a4 :thumb
	add     r3, #0xc
	.hword  0x1c52 @ add r2, r2, #0x1
.thumb
branch_22348a8: @ 22348a8 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_22348b4
	cmp     r2, #0x6
	blt     branch_223488e
.thumb
branch_22348b4: @ 22348b4 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_223474c
	cmp     r0, #0x1
	bne     branch_22348c6
	add     sp, #0x14
	mov     r0, #0x4
	pop     {r4-r7,pc}
@ 0x22348c6

.thumb
branch_22348c6: @ 22348c6 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2234784
	cmp     r0, #0x1
	bne     branch_22348d8
	add     sp, #0x14
	mov     r0, #0x5
	pop     {r4-r7,pc}
@ 0x22348d8

.thumb
branch_22348d8: @ 22348d8 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_22347d8
	cmp     r0, #0x1
	bne     branch_22348ea
	add     sp, #0x14
	mov     r0, #0x6
	pop     {r4-r7,pc}
@ 0x22348ea

.thumb
branch_22348ea: @ 22348ea :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_2234828
	cmp     r0, #0x1
	bne     branch_22348fc
	add     sp, #0x14
	mov     r0, #0x7
	pop     {r4-r7,pc}
@ 0x22348fc

.thumb
branch_22348fc: @ 22348fc :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	bne     branch_22349a4
	mov     r0, #0x41
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x6
	bne     branch_2234914
	add     sp, #0x14
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x2234914

.thumb
branch_2234914: @ 2234914 :thumb
	mov     r5, #0x0
	mov     r0, #0xf3
	mov     r3, r4
	lsl     r0, r0, #2
	.hword  0x1e69 @ sub r1, r5, #0x1
.thumb
branch_223491e: @ 223491e :thumb
	ldr     r2, [r3, r0]
	cmp     r2, r1
	bne     branch_223499a
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r1, r0]
	bl      0x2021d28
	mov     r1, r0
	mov     r0, #0xc
	mov     r7, r5
	mul     r7, r0
	mov     r0, #0xf2
	lsl     r0, r0, #2
	add     r5, r4, r0
	ldr     r0, [r5, r7]
	bl      0x2021c50
	ldr     r0, [r5, r7]
	bl      0x2021d28
	mov     r3, r0
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	mov     r12, r2
	stmia   r2!, {r0,r1}
	ldr     r0, [r3, #0x0]
	mov     r1, #0x2
	str     r0, [r2, #0x0]
	ldr     r0, [sp, #0x8]
	lsl     r1, r1, #14
	sub     r0, r0, r1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0xc]
	lsr     r1, r1, #1
	sub     r0, r0, r1
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r7]
	mov     r1, r12
	bl      0x2021c50
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r1, #0xf3
	add     r3, r4, r7
	lsl     r1, r1, #2
	ldr     r0, [pc, #0x5c] @ 0x22349dc, (=0xe884)
	str     r6, [r3, r1]
	ldr     r2, [r4, r0]
	add     r0, r1, #0x4
	str     r2, [r3, r0]
	mov     r0, r1
	add     r0, #0x44
	ldr     r0, [r4, r0]
	add     r1, #0x44
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	add     sp, #0x14
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223499a

.thumb
branch_223499a: @ 223499a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r3, #0xc
	cmp     r5, #0x6
	blt     branch_223491e
	b       branch_22349d6
@ 0x22349a4

.thumb
branch_22349a4: @ 22349a4 :thumb
	mov     r0, #0xc
	mov     r6, r5
	mul     r6, r0
	mov     r0, #0xf2
	add     r1, r4, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r2, #0x0
	mov     r1, #0xf3
	mvn     r2, r2
	add     r0, r4, r6
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r0, r1
	add     r0, #0x44
	ldr     r0, [r4, r0]
	add     r1, #0x44
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, r1]
	add     sp, #0x14
	mov     r0, #0x2
	pop     {r4-r7,pc}
@ 0x22349d6

.thumb
branch_22349d6: @ 22349d6 :thumb
	mov     r0, #0x0
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22349dc

.word 0xe884 @ 0x22349dc
.thumb
Function_22349e0: @ 22349e0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r4, #0x0
	mov     r5, r6
	.hword  0x1e67 @ sub r7, r4, #0x1
.thumb
branch_22349ea: @ 22349ea :thumb
	mov     r0, #0xf3
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, r7
	beq     branch_2234a10
	ldr     r0, [pc, #0x30] @ 0x2234a28, (=0xe884)
	ldr     r1, [r6, r0]
	mov     r0, #0x3d
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	cmp     r1, r0
	bne     branch_2234a10
	mov     r0, #0xf2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_2234a1c
@ 0x2234a10

.thumb
branch_2234a10: @ 2234a10 :thumb
	mov     r0, #0xf2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_2234a1c: @ 2234a1c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x6
	blt     branch_22349ea
	pop     {r3-r7,pc}
@ 0x2234a26


.align 2


.word 0xe884 @ 0x2234a28
.thumb
Function_2234a2c: @ 2234a2c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x60
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	add     r3, sp, #0x14
	mov     r1, r0
	mov     r2, #0x4
.thumb
branch_2234a3c: @ 2234a3c :thumb
	stmia   r3!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2234a3c
	stmia   r3!, {r0,r1}
	str     r0, [r3, #0x0]
	ldr     r0, [pc, #0x58] @ 0x2234aa4, (=0x478)
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	mov     r0, #0x6
	str     r0, [sp, #0x1c]
	mov     r0, #0x15
	str     r0, [sp, #0x20]
	mov     r0, #0xd
	str     r0, [sp, #0x24]
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	str     r0, [sp, #0x48]
	mov     r0, #0x0
	str     r0, [sp, #0x2c]
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x38] @ 0x2234aa8, (=0x10200)
	str     r0, [sp, #0x40]
	mov     r0, #0xa0
	str     r0, [sp, #0x34]
	bl      Function_2235dbc
	mov     r3, r0
	ldr     r0, [pc, #0x2c] @ 0x2234aac, (=0xe880)
	mov     r2, #0x9
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x2c] @ 0x2234ab0, (=0x8344)
	add     r1, r1, r0
	lsl     r0, r4, #3
	add     r0, r4, r0
	add     r0, r1, r0
	add     r1, sp, #0x0
	bl      Function_223936c
	add     r0, sp, #0x0
	str     r0, [sp, #0x4c]
	mov     r0, r5
	add     r1, sp, #0x14
	mov     r2, #0x1
	bl      Function_2233dd0
	add     sp, #0x60
	pop     {r3-r5,pc}
@ 0x2234aa4

.word 0x478 @ 0x2234aa4
.word 0x10200 @ 0x2234aa8
.word 0xe880 @ 0x2234aac
.word 0x8344 @ 0x2234ab0
.thumb
Function_2234ab4: @ 2234ab4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x20]
	mov     r6, r1
	mov     r1, #0x2
	bl      0x2019fe4
	mov     r4, r0
	cmp     r6, #0x0
	beq     branch_2234ad8
	mov     r0, r6
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2236924
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	b       branch_2234ada
@ 0x2234ad8

.thumb
branch_2234ad8: @ 2234ad8 :thumb
	mov     r1, #0x0
.thumb
branch_2234ada: @ 2234ada :thumb
	mov     r2, #0x0
	mov     r0, #0x1
.thumb
branch_2234ade: @ 2234ade :thumb
	mov     r3, r1
	tst     r3, r0
	beq     branch_2234aea
	mov     r6, r2
	add     r6, #0x80
	b       branch_2234aee
@ 0x2234aea

.thumb
branch_2234aea: @ 2234aea :thumb
	mov     r6, r2
	add     r6, #0x60
.thumb
branch_2234aee: @ 2234aee :thumb
	mov     r3, r4
	add     r3, #0xd6
	lsl     r1, r1, #23
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r6, [r3, #0x0]
	lsr     r1, r1, #24
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r2, #0x4
	blt     branch_2234ade
	ldr     r0, [r5, #0x20]
	mov     r1, #0x2
	bl      0x2019448
	pop     {r4-r6,pc}
@ 0x2234b0a


.align 2, 0


.thumb
Function_2234b0c: @ 2234b0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x78
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	add     r3, sp, #0x2c
	mov     r1, r0
	mov     r2, #0x4
.thumb
branch_2234b1c: @ 2234b1c :thumb
	stmia   r3!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2234b1c
	stmia   r3!, {r0,r1}
	str     r0, [r3, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x3c]
	mov     r1, #0x1
	ldr     r0, [pc, #0x18c] @ 0x2234cbc, (=0x488)
	str     r1, [sp, #0x50]
	str     r1, [sp, #0x54]
	mov     r1, #0xbc
	str     r1, [sp, #0x4c]
	ldr     r1, [pc, #0x184] @ 0x2234cc0, (=0xf0200)
	add     r0, r5, r0
	str     r1, [sp, #0x58]
	mov     r1, #0x2c
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	str     r1, [sp, #0x60]
	mov     r1, #0x90
	mov     r2, #0x4
	str     r1, [sp, #0x44]
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	str     r0, [sp, #0x64]
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	str     r2, [sp, #0x40]
	bl      Function_2233dd0
	mov     r0, #0x2b
	str     r0, [sp, #0x60]
	mov     r0, #0x50
	str     r0, [sp, #0x44]
	mov     r0, #0x8
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x6
	bl      Function_2233dd0
	mov     r0, r5
	mov     r1, r4
	bl      Function_2234ab4
	cmp     r4, #0x0
	bne     branch_2234b8a
	ldr     r0, [sp, #0x2c]
	bl      0x201a954
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x2234b8a

.thumb
branch_2234b8a: @ 2234b8a :thumb
	add     r2, sp, #0x1c
	mov     r0, r4
	mov     r1, #0x2
	add     r2, #0x2
	bl      Function_2236924
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2236924
	mov     r3, r0
	add     r0, sp, #0x1c
	add     r0, #0x2
	add     r1, sp, #0x8
	mov     r2, #0xb
	bl      Function_223936c
	add     r0, sp, #0x8
	str     r0, [sp, #0x64]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x60]
	mov     r0, #0x8
	str     r0, [sp, #0x44]
	mov     r0, #0x0
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x6
	bl      Function_2233dd0
	mov     r0, #0x40
	mov     r1, #0x4e
	bl      0x2023790
	mov     r2, #0x67
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x4e
	bl      0x200b144
	mov     r7, r0
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2236924
	bl      Function_2236dd0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	mov     r2, r6
	bl      0x200b1b8
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x60]
	mov     r0, #0x10
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x6
	str     r6, [sp, #0x68]
	bl      Function_2233dd0
	mov     r0, r7
	bl      0x200b190
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2236924
	cmp     r0, #0x0
	beq     branch_2234c6e
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x207cf10
	mov     r7, r0
	mov     r0, #0x40
	mov     r1, #0x4e
	bl      0x2023790
	lsl     r1, r7, #16
	lsr     r1, r1, #16
	mov     r2, #0x4e
	mov     r6, r0
	bl      0x207cfa0
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x60]
	mov     r0, #0x98
	str     r0, [sp, #0x44]
	mov     r0, #0x10
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x6
	str     r6, [sp, #0x68]
	bl      Function_2233dd0
	mov     r0, r6
	bl      0x20237bc
.thumb
branch_2234c6e: @ 2234c6e :thumb
	mov     r0, r4
	bl      Function_2236e00
	mov     r6, r0
	mov     r0, #0xa
	mov     r1, #0x4e
	bl      0x2023790
	mov     r3, #0x1
	mov     r1, r6
	mov     r2, #0x3
	mov     r4, r0
	str     r3, [sp, #0x0]
	bl      0x20238a0
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x60]
	mov     r0, #0x64
	str     r0, [sp, #0x44]
	mov     r0, #0x8
	str     r0, [sp, #0x48]
	mov     r0, r5
	add     r1, sp, #0x2c
	mov     r2, #0x2
	str     r4, [sp, #0x68]
	bl      Function_2233dd0
	mov     r0, r4
	bl      0x20237bc
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x2005844
	add     sp, #0x78
	pop     {r3-r7,pc}
@ 0x2234cbc

.word 0x488 @ 0x2234cbc
.word 0xf0200 @ 0x2234cc0
.thumb
Function_2234cc4: @ 2234cc4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	str     r0, [sp, #0x8]
	mov     r6, r2
	mov     r0, #0x0
	mov     r4, r3
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	cmp     r4, #0x0
	beq     branch_2234cec
	mov     r0, #0x17
	str     r0, [r4, #0x0]
.thumb
branch_2234cec: @ 2234cec :thumb
	str     r6, [r5, #0x24]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2234cf2


.align 2, 0


.thumb
Function_2234cf4: @ 2234cf4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r4, r3
	str     r0, [sp, #0x4]
	mov     r0, #0x4e
	mov     r6, r2
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x18] @ 0x2234d24, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
	cmp     r4, #0x0
	beq     branch_2234d1c
	mov     r0, #0x17
	str     r0, [r4, #0x0]
.thumb
branch_2234d1c: @ 2234d1c :thumb
	str     r6, [r5, #0x24]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2234d22


.align 2


.word 0x7fff @ 0x2234d24
.thumb
Function_2234d28: @ 2234d28 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	ldr     r5, [pc, #0xb8] @ 0x2234de8, (=0x223d884)
	add     r3, sp, #0x70
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xa8] @ 0x2234dec, (=0x223d894)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
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
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0x84] @ 0x2234df0, (=0x223d8b0)
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
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0x60] @ 0x2234df4, (=0x223d8cc)
	add     r3, sp, #0x1c
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x3c] @ 0x2234df8, (=0x223d8e8)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019ebc
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x2234de6


.align 2


.word 0x223d884 @ 0x2234de8
.word 0x223d894 @ 0x2234dec
.word 0x223d8b0 @ 0x2234df0
.word 0x223d8cc @ 0x2234df4
.word 0x223d8e8 @ 0x2234df8
.thumb
Function_2234dfc: @ 2234dfc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x38
	ldr     r5, [pc, #0x70] @ 0x2234e74, (=0x223d904)
	mov     r4, r0
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_2234e08: @ 2234e08 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2234e08
	add     r0, sp, #0x10
	bl      0x201fe94
	ldr     r0, [r4, #0x20]
	bl      Function_2234d28
	ldr     r0, [pc, #0x58] @ 0x2234e78, (=0x21bf6dc)
	mov     r1, #0x1
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	bl      0x201d710
	mov     r1, #0x1e
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x4e
	bl      0x2002e7c
	mov     r0, #0xc0
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x13
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x20]
	mov     r0, #0x74
	mov     r1, #0x16
	mov     r3, #0x2
	bl      0x2006e3c
	mov     r0, #0x2
	mov     r1, #0x4e
	bl      0x2002bb8
	add     sp, #0x38
	pop     {r3-r5,pc}
@ 0x2234e74

.word 0x223d904 @ 0x2234e74
.word 0x21bf6dc @ 0x2234e78
.thumb
Function_2234e7c: @ 2234e7c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x20]
	mov     r0, #0x74
	mov     r1, #0x14
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r1, [r4, #0x0]
	ldr     r0, [pc, #0x18] @ 0x2234ec8, (=0x223ea60)
	mov     r3, r2
	ldrb    r0, [r0, r1]
	mov     r1, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [r4, #0x20]
	bl      0x2019e2c
	ldr     r0, [r4, #0x20]
	mov     r1, #0x2
	bl      0x2019448
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2234ec8

.word 0x223ea60 @ 0x2234ec8
.thumb
Function_2234ecc: @ 2234ecc :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r1, #0x7
	mov     r4, r0
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x4e
	bl      0x2002e7c
	mov     r1, #0x0
	mov     r2, #0x3f
	str     r1, [sp, #0x0]
	mov     r0, #0x4e
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	lsl     r2, r2, #4
	mov     r3, #0xe
	bl      0x200daa4
	ldr     r0, [r4, #0x1c]
	ldr     r2, [pc, #0x7c] @ 0x2234f74, (=0x3d2)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x20]
	mov     r1, #0x0
	mov     r3, #0xd
	bl      0x200dd0c
	ldr     r0, [pc, #0x6c] @ 0x2234f78, (=0x42c)
	mov     r1, #0x0
	add     r0, r4, r0
	mov     r2, #0x4c
	blx 0x20d5124
	ldr     r0, [pc, #0x64] @ 0x2234f7c, (=0x498)
	mov     r3, #0x1b
	mov     r1, r0
	add     r2, r4, r0
	sub     r1, #0x6c
	str     r2, [r4, r1]
	mov     r1, r0
	mov     r2, #0x2
	sub     r1, #0x64
	str     r2, [r4, r1]
	mov     r1, r0
	mov     r2, #0x1
	sub     r1, #0x60
	str     r2, [r4, r1]
	mov     r1, r0
	sub     r1, #0x5c
	str     r3, [r4, r1]
	mov     r1, r0
	mov     r3, #0x4
	sub     r1, #0x58
	str     r3, [r4, r1]
	mov     r3, r0
	mov     r1, #0x0
	sub     r3, #0x48
	str     r1, [r4, r3]
	mov     r3, r0
	sub     r3, #0x44
	str     r2, [r4, r3]
	mov     r3, r0
	sub     r3, #0x4c
	str     r2, [r4, r3]
	mov     r2, r0
	ldr     r3, [pc, #0x28] @ 0x2234f80, (=0x1020f)
	sub     r2, #0x40
	str     r3, [r4, r2]
	mov     r2, r0
	ldr     r3, [pc, #0x24] @ 0x2234f84, (=0xf020f)
	sub     r2, #0x3c
	str     r3, [r4, r2]
	mov     r2, r0
	sub     r2, #0x34
	str     r1, [r4, r2]
	sub     r0, #0x30
	str     r1, [r4, r0]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2234f72


.align 2


.word 0x3d2 @ 0x2234f74
.word 0x42c @ 0x2234f78
.word 0x498 @ 0x2234f7c
.word 0x1020f @ 0x2234f80
.word 0xf020f @ 0x2234f84
.thumb
Function_2234f88: @ 2234f88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r6, r0
	mov     r7, #0x6b
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2234f96: @ 2234f96 :thumb
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [r4, r7]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0xc
	cmp     r5, #0x1e
	blt     branch_2234f96
	mov     r7, #0xf2
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_2234fba: @ 2234fba :thumb
	ldr     r0, [r4, r7]
	mov     r1, #0x0
	bl      0x2021cac
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0xc
	cmp     r5, #0x6
	blt     branch_2234fba
	mov     r0, #0xe6
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r2, #0x61
	lsl     r2, r2, #2
	add     r0, sp, #0x1c
	mov     r1, r6
	add     r2, r6, r2
	mov     r3, #0x1
	bl      Function_22340fc
	mov     r0, #0x1c
	mov     r7, #0x0
	str     r0, [sp, #0x10]
	mov     r4, r6
	mov     r5, r6
.thumb
branch_2235008: @ 2235008 :thumb
	ldr     r0, [sp, #0x10]
	lsl     r0, r0, #12
	str     r0, [sp, #0x24]
	mov     r0, #0x8e
	lsl     r0, r0, #12
	str     r0, [sp, #0x28]
	add     r0, sp, #0x1c
	bl      0x2021aa0
	ldr     r1, [pc, #0x12c] @ 0x2235148, (=0x414)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [pc, #0x11c] @ 0x2235148, (=0x414)
	mov     r1, r7
	ldr     r0, [r4, r0]
	add     r1, #0xa
	bl      0x2021d6c
	ldr     r0, [pc, #0x110] @ 0x2235148, (=0x414)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021e80
	ldr     r0, [pc, #0x108] @ 0x2235148, (=0x414)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021cac
	mov     r1, #0x3d
	mov     r2, #0xf3
	lsl     r1, r1, #4
	lsl     r2, r2, #2
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r0, r6
	bl      Function_2234124
	mov     r1, #0x3d
	mov     r2, #0xf3
	lsl     r1, r1, #4
	lsl     r2, r2, #2
	str     r0, [sp, #0x14]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r0, r6
	bl      Function_2234148
	mov     r1, #0x3d
	mov     r2, #0xf3
	lsl     r1, r1, #4
	lsl     r2, r2, #2
	str     r0, [sp, #0x18]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	mov     r0, r6
	bl      Function_223416c
	mov     r2, r0
	ldr     r0, [pc, #0xc0] @ 0x2235148, (=0x414)
	str     r7, [sp, #0x0]
	ldr     r0, [r4, r0]
	ldr     r3, [pc, #0xc0] @ 0x223514c, (=0x21bf6dc)
	str     r0, [sp, #0x4]
	ldrb    r3, [r3, #0x6]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	bl      Function_2234278
	ldr     r0, [sp, #0x10]
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r0, #0x28
	str     r0, [sp, #0x10]
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0xc
	cmp     r7, #0x6
	blt     branch_2235008
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x4e
	str     r0, [sp, #0xc]
	ldr     r2, [r6, #0x20]
	mov     r0, #0x74
	mov     r1, #0x15
	mov     r3, #0x2
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r1, [r6, #0x0]
	ldr     r0, [pc, #0x7c] @ 0x2235150, (=0x223ea60)
	mov     r3, r2
	ldrb    r0, [r0, r1]
	mov     r1, #0x2
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x20]
	bl      0x2019e2c
	ldr     r0, [r6, #0x20]
	mov     r1, #0x2
	bl      0x2019448
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r1, #0x7
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x4e
	bl      0x2002e7c
	mov     r1, #0x0
	mov     r2, #0x3f
	str     r1, [sp, #0x0]
	mov     r0, #0x4e
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x20]
	lsl     r2, r2, #4
	mov     r3, #0xe
	bl      0x200daa4
	ldr     r0, [r6, #0x1c]
	ldr     r2, [pc, #0x3c] @ 0x2235154, (=0x3d2)
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x4e
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x20]
	mov     r1, #0x0
	mov     r3, #0xd
	bl      0x200dd0c
	mov     r0, r6
	bl      Function_2234ecc
	mov     r1, #0x46
	mov     r0, #0xa
	lsl     r1, r1, #4
	str     r0, [r6, r1]
	sub     r1, #0x34
	mov     r0, r6
	add     r1, r6, r1
	mov     r2, #0x18
	bl      Function_2233dd0
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x2235148

.word 0x414 @ 0x2235148
.word 0x21bf6dc @ 0x223514c
.word 0x223ea60 @ 0x2235150
.word 0x3d2 @ 0x2235154
.thumb
Function_2235158: @ 2235158 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_2235174
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, r4
	bl      0x201acf4
	mov     r0, r4
	bl      0x201a8fc
.thumb
branch_2235174: @ 2235174 :thumb
	pop     {r4,pc}
@ 0x2235176


.align 2, 0


.thumb
Function_2235178: @ 2235178 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r7, [pc, #0x68] @ 0x22351e8, (=0x414)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_2235182: @ 2235182 :thumb
	ldr     r0, [r5, r7]
	bl      0x2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2235182
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	ldr     r0, [pc, #0x50] @ 0x22351ec, (=0x498)
	add     r0, r6, r0
	bl      Function_2235158
	mov     r0, #0xe6
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0xf3
	mov     r5, #0x0
	lsl     r0, r0, #2
	mov     r4, r6
	.hword  0x1e6b @ sub r3, r5, #0x1
	mov     r2, #0xe
	add     r1, r0, #0x4
.thumb
branch_22351d2: @ 22351d2 :thumb
	str     r3, [r4, r0]
	str     r2, [r4, r1]
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0xc
	cmp     r5, #0x6
	blt     branch_22351d2
	mov     r0, #0x41
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r6, r0]
	pop     {r3-r7,pc}
@ 0x22351e8

.word 0x414 @ 0x22351e8
.word 0x498 @ 0x22351ec
.thumb
Function_22351f0: @ 22351f0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r7, #0x6a
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_2235204: @ 2235204 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_223520e
	bl      0x2021bd4
.thumb
branch_223520e: @ 223520e :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_223521c
	bl      0x2021bd4
.thumb
branch_223521c: @ 223521c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x1e
	blt     branch_2235204
	mov     r7, #0xf2
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_223522c: @ 223522c :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_2235236
	bl      0x2021bd4
.thumb
branch_2235236: @ 2235236 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0xc
	cmp     r5, #0x6
	blt     branch_223522c
	mov     r0, #0xe6
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223524c
	bl      0x2021bd4
.thumb
branch_223524c: @ 223524c :thumb
	mov     r0, #0xee
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223525a
	bl      0x2021bd4
.thumb
branch_223525a: @ 223525a :thumb
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_2235268
	bl      0x2021bd4
.thumb
branch_2235268: @ 2235268 :thumb
	ldr     r0, [pc, #0x90] @ 0x22352fc, (=0x478)
	add     r0, r6, r0
	bl      Function_2235158
	ldr     r0, [pc, #0x8c] @ 0x2235300, (=0x488)
	add     r0, r6, r0
	bl      Function_2235158
	ldr     r0, [pc, #0x88] @ 0x2235304, (=0x498)
	add     r0, r6, r0
	bl      Function_2235158
	mov     r0, #0x2
	bl      0x2002c60
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	mov     r0, #0x17
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	mov     r7, #0x55
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_22352a2: @ 22352a2 :thumb
	ldr     r0, [r4, r7]
	bl      0x2009754
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x6
	blt     branch_22352a2
	ldr     r0, [r6, #0x28]
	bl      0x2021964
	mov     r0, #0x0
	str     r0, [r6, #0x28]
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	ldr     r0, [pc, #0x40] @ 0x2235308, (=0xe88c)
	ldr     r0, [r6, r0]
	bl      0x2015938
	ldr     r0, [pc, #0x3c] @ 0x223530c, (=0x21bf6dc)
	mov     r1, #0x0
	strb    r1, [r0, #0x5]
	bl      0x201ffe8
	ldr     r0, [r6, #0x20]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r6, #0x20]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r6, #0x20]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r6, #0x20]
	mov     r1, #0x3
	bl      0x2019044
	pop     {r3-r7,pc}
@ 0x22352fa


.align 2


.word 0x478 @ 0x22352fc
.word 0x488 @ 0x2235300
.word 0x498 @ 0x2235304
.word 0xe88c @ 0x2235308
.word 0x21bf6dc @ 0x223530c
.thumb
Function_2235310: @ 2235310 :thumb
	push    {lr}
	add     sp, #-0x14
	ldr     r1, [r0, #0x20]
	mov     r2, #0x19
	str     r1, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r1, [sp, #0x8]
	mov     r1, #0x8
	str     r1, [sp, #0xc]
	add     r1, sp, #0x0
	strb    r2, [r1, #0x10]
	mov     r2, #0x7
	strb    r2, [r1, #0x11]
	ldr     r1, [pc, #0xc] @ 0x2235340, (=0xe88c)
	ldr     r0, [r0, r1]
	add     r1, sp, #0x0
	bl      0x2015958
	add     sp, #0x14
	pop     {pc}
@ 0x223533e


.align 2


.word 0xe88c @ 0x2235340
.thumb
Function_2235344: @ 2235344 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r0
	bl      Function_2236378
	mov     r4, r0
	bl      Function_2235dbc
	mov     r3, r0
	mov     r0, r4
	add     r1, sp, #0x8
	mov     r2, #0x8
	bl      Function_223936c
	mov     r0, #0x4e
	bl      0x200b358
	mov     r4, r0
	mov     r0, #0x8
	mov     r1, #0x4e
	bl      0x2023790
	add     r1, sp, #0x8
	mov     r6, r0
	bl      0x2023d28
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r6
	mov     r3, #0x0
	bl      0x200b48c
	mov     r0, r5
	bl      Function_2234ecc
	ldr     r0, [r5, #0x0]
	mov     r2, #0x18
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x22353c8, (=0x223ea80)
	ldr     r0, [r0, r1]
	mov     r1, #0x46
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0xc
	sub     r1, #0x34
	str     r4, [r5, r0]
	mov     r0, r5
	add     r1, r5, r1
	bl      Function_2233dd0
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	bl      0x200b3f0
	mov     r0, r5
	bl      Function_2235310
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x22353c6


.align 2


.word 0x223ea80 @ 0x22353c8
.thumb
Function_22353cc: @ 22353cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x22353fc, (=0x12604)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_22353e0
	blx     r0
	ldr     r0, [pc, #0x20] @ 0x22353fc, (=0x12604)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_22353e0: @ 22353e0 :thumb
	bl      0x201dcac
	bl      0x200a858
	ldr     r0, [r4, #0x20]
	bl      0x201c2b8
	ldr     r3, [pc, #0x10] @ 0x2235400, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x2235404, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x22353fc

.word 0x12604 @ 0x22353fc
.word 0x27e0000 @ 0x2235400
.word 0x3ff8 @ 0x2235404
.thumb
Function_2235408: @ 2235408 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r0, [sp, #0x0]
	ldr     r0, [r0, #0x10]
	bl      0x2024440
	str     r0, [sp, #0x8]
	bl      0x202f0e0
	cmp     r0, #0x0
	bne     branch_223545c
	ldr     r0, [sp, #0x8]
	bl      0x202f088
	cmp     r0, #0x0
	bne     branch_223542e
	add     sp, #0xc
	mov     r0, #0x3
	pop     {r4-r7,pc}
@ 0x223542e

.thumb
branch_223542e: @ 223542e :thumb
	ldr     r0, [sp, #0x8]
	bl      0x202f0bc
	cmp     r0, #0x0
	bne     branch_223543e
	add     sp, #0xc
	mov     r0, #0x4
	pop     {r4-r7,pc}
@ 0x223543e

.thumb
branch_223543e: @ 223543e :thumb
	bl      Function_223635c
	mov     r1, r0
	ldr     r0, [sp, #0x8]
	bl      0x202f050
	cmp     r0, #0x0
	bne     branch_2235450
	ldr     r0, [pc, #0x68] @ 0x22354b8, (=0x2a300)
.thumb
branch_2235450: @ 2235450 :thumb
	ldr     r1, [pc, #0x68] @ 0x22354bc, (=0x15180)
	cmp     r0, r1
	bge     branch_223545c
	add     sp, #0xc
	mov     r0, #0x2
	pop     {r4-r7,pc}
@ 0x223545c

.thumb
branch_223545c: @ 223545c :thumb
	mov     r6, #0x0
	str     r6, [sp, #0x4]
	mov     r7, r6
.thumb
branch_2235462: @ 2235462 :thumb
	mov     r4, #0x0
	mov     r5, r4
.thumb
branch_2235466: @ 2235466 :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x22354c0, (=0xe880)
	mov     r2, #0x0
	ldr     r0, [r1, r0]
	mov     r1, #0x5
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r0, r0, r7
	add     r0, r0, r5
	bl      Function_2236924
	cmp     r0, #0x0
	beq     branch_2235480
	.hword  0x1c76 @ add r6, r6, #0x1
.thumb
branch_2235480: @ 2235480 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x50
	cmp     r4, #0x1e
	blt     branch_2235466
	mov     r0, #0x96
	lsl     r0, r0, #4
	add     r7, r7, r0
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0xe
	blt     branch_2235462
	cmp     r6, #0x6
	bge     branch_22354a2
	add     sp, #0xc
	mov     r0, #0x5
	pop     {r4-r7,pc}
@ 0x22354a2

.thumb
branch_22354a2: @ 22354a2 :thumb
	ldr     r0, [sp, #0x8]
	bl      0x202f028
	cmp     r0, #0x0
	beq     branch_22354b2
	add     sp, #0xc
	mov     r0, #0x6
	pop     {r4-r7,pc}
@ 0x22354b2

.thumb
branch_22354b2: @ 22354b2 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22354b8

.word 0x2a300 @ 0x22354b8
.word 0x15180 @ 0x22354bc
.word 0xe880 @ 0x22354c0
.thumb
Function_22354c4: @ 22354c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x0
	beq     branch_2235500
	bl      Function_2234ecc
	mov     r0, #0x1
	bl      0x2002b20
	ldr     r0, [pc, #0x44] @ 0x2235520, (=0x223eab8)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x46
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r1, #0x34
	mov     r2, #0x1
	add     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x18
	bl      Function_2233dd0
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	b       branch_223551a
@ 0x2235500

.thumb
branch_2235500: @ 2235500 :thumb
	ldr     r0, [pc, #0x20] @ 0x2235524, (=0x474)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223551a
	mov     r0, #0x0
	bl      0x2002b20
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223551a

.thumb
branch_223551a: @ 223551a :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223551e


.align 2


.word 0x223eab8 @ 0x2235520
.word 0x474 @ 0x2235524
.thumb
Function_2235528: @ 2235528 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x0
	beq     branch_2235564
	bl      Function_2234ecc
	mov     r0, #0x1
	bl      0x2002b20
	ldr     r0, [pc, #0x48] @ 0x2235588, (=0x223eab8)
	lsl     r1, r4, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x46
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r1, #0x34
	mov     r2, #0x1
	add     r0, #0x10
	str     r2, [r5, r0]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x18
	bl      Function_2233dd0
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	b       branch_2235584
@ 0x2235564

.thumb
branch_2235564: @ 2235564 :thumb
	ldr     r0, [pc, #0x24] @ 0x223558c, (=0x474)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2235584
	mov     r0, r5
	bl      Function_2235310
	mov     r0, #0x0
	bl      0x2002b20
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2235584

.thumb
branch_2235584: @ 2235584 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235588

.word 0x223eab8 @ 0x2235588
.word 0x474 @ 0x223558c
.thumb
Function_2235590: @ 2235590 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x0
	ldr     r2, [r5, #0x8]
	mvn     r1, r1
	cmp     r2, r1
	beq     branch_22355d2
	bl      Function_2234ecc
	mov     r0, #0x1
	bl      0x2002b20
	mov     r1, #0x46
	ldr     r0, [r5, #0x8]
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	add     r0, #0x10
	sub     r1, #0x34
	str     r4, [r5, r0]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x18
	bl      Function_2233dd0
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [r5, #0x8]
	ldr     r0, [pc, #0x48] @ 0x2235614, (=0x5dc)
	bl      0x2005748
	b       branch_2235610
@ 0x22355d2

.thumb
branch_22355d2: @ 22355d2 :thumb
	cmp     r4, #0x0
	beq     branch_22355f0
	ldr     r0, [pc, #0x40] @ 0x2235618, (=0x474)
	ldr     r0, [r5, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2235610
	mov     r0, #0x0
	bl      0x2002b20
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22355f0

.thumb
branch_22355f0: @ 22355f0 :thumb
	ldr     r0, [pc, #0x28] @ 0x223561c, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_2235600
	ldr     r0, [pc, #0x24] @ 0x2235620, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2235610
.thumb
branch_2235600: @ 2235600 :thumb
	mov     r0, #0x0
	bl      0x2002b20
	ldr     r0, [pc, #0xc] @ 0x2235614, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2235610

.thumb
branch_2235610: @ 2235610 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2235614

.word 0x5dc @ 0x2235614
.word 0x474 @ 0x2235618
.word 0x21bf6bc @ 0x223561c
.word 0x21bf67c @ 0x2235620
.thumb
Function_2235624: @ 2235624 :thumb
	push    {r3-r5,lr}
	mov     r2, #0xe
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x4e
	lsl     r2, r2, #14
	bl      0x2017fc8
	ldr     r1, [pc, #0x94] @ 0x22356cc, (=0x12610)
	mov     r0, r5
	mov     r2, #0x4e
	bl      0x200681c
	ldr     r2, [pc, #0x8c] @ 0x22356cc, (=0x12610)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x4e
	bl      0x2018340
	str     r0, [r4, #0x20]
	mov     r0, #0x4e
	bl      0x2015920
	ldr     r1, [pc, #0x78] @ 0x22356d0, (=0xe88c)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, r5
	bl      0x2006840
	ldr     r0, [r0, #0x8]
	str     r0, [r4, #0x10]
	bl      0x2025e38
	str     r0, [r4, #0x14]
	ldr     r0, [r4, #0x10]
	bl      0x2025e44
	str     r0, [r4, #0x18]
	bl      0x2027b50
	str     r0, [r4, #0x1c]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x4e
	bl      0x2023790
	ldr     r1, [pc, #0x40] @ 0x22356d4, (=0x12608)
	str     r0, [r4, r1]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x4e
	bl      0x2023790
	ldr     r1, [pc, #0x34] @ 0x22356d8, (=0x1260c)
	mov     r2, #0x1
	str     r0, [r4, r1]
	ldr     r1, [pc, #0x34] @ 0x22356dc, (=0x496)
	mov     r0, #0x9
	bl      0x2004550
	blx 0x20c3808
	cmp     r0, #0x0
	bne     branch_22356ba
	blx 0x20c3790
.thumb
branch_22356ba: @ 22356ba :thumb
	bl      Function_2238440
	ldr     r0, [pc, #0x20] @ 0x22356e0, (=0xe89c)
	add     r1, r4, r0
	ldr     r0, [pc, #0x20] @ 0x22356e4, (=0x223f434)
	str     r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x22356ca


.align 2


.word 0x12610 @ 0x22356cc
.word 0xe88c @ 0x22356d0
.word 0x12608 @ 0x22356d4
.word 0x1260c @ 0x22356d8
.word 0x496 @ 0x22356dc
.word 0xe89c @ 0x22356e0
.word 0x223f434 @ 0x22356e4
.thumb
Function_22356e8: @ 22356e8 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	blx 0x20d0a04
	blx 0x20d09b8
	cmp     r0, #0x1
	beq     branch_2235706
	ldr     r0, [pc, #0x30c] @ 0x2235a0c, (=0x2101d24)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223571c
.thumb
branch_2235706: @ 2235706 :thumb
	ldr     r0, [pc, #0x308] @ 0x2235a10, (=0xe890)
	ldr     r0, [r4, r0]
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_2235716
	ldr     r0, [r4, #0x10]
	bl      0x2024850
.thumb
branch_2235716: @ 2235716 :thumb
	mov     r0, #0x4e
	bl      0x209a8e0
.thumb
branch_223571c: @ 223571c :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x18
	bhi     branch_2235818
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2235734

Jumppoints_2235734:
.hword branch_2235766 - Jumppoints_2235734 - 2
.hword branch_22357ae - Jumppoints_2235734 - 2
.hword branch_22357f4 - Jumppoints_2235734 - 2
.hword branch_2235808 - Jumppoints_2235734 - 2
.hword branch_2235842 - Jumppoints_2235734 - 2
.hword branch_223585a - Jumppoints_2235734 - 2
.hword branch_22358b0 - Jumppoints_2235734 - 2
.hword branch_22358c2 - Jumppoints_2235734 - 2
.hword branch_22358e0 - Jumppoints_2235734 - 2
.hword branch_22358f2 - Jumppoints_2235734 - 2
.hword branch_2235950 - Jumppoints_2235734 - 2
.hword branch_2235968 - Jumppoints_2235734 - 2
.hword branch_223597c - Jumppoints_2235734 - 2
.hword branch_22359bc - Jumppoints_2235734 - 2
.hword branch_2235aea - Jumppoints_2235734 - 2
.hword branch_2235b04 - Jumppoints_2235734 - 2
.hword branch_2235b20 - Jumppoints_2235734 - 2
.hword branch_2235b3a - Jumppoints_2235734 - 2
.hword branch_2235b70 - Jumppoints_2235734 - 2
.hword branch_2235b96 - Jumppoints_2235734 - 2
.hword branch_2235c00 - Jumppoints_2235734 - 2
.hword branch_2235c0c - Jumppoints_2235734 - 2
.hword branch_2235c4e - Jumppoints_2235734 - 2
.hword branch_2235c72 - Jumppoints_2235734 - 2
.hword branch_2235c80 - Jumppoints_2235734 - 2
.thumb
branch_2235766: @ 2235766 :thumb
	bl      Function_2235da4
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2235d2c
	ldr     r1, [pc, #0x29c] @ 0x2235a14, (=0x4a8)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_22357a2
	bl      Function_22360d8
	ldr     r1, [pc, #0x294] @ 0x2235a18, (=0x4ac)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_223579e
	bl      Function_2236340
	ldr     r1, [pc, #0x288] @ 0x2235a1c, (=0xe880)
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldrb    r2, [r0, #0x0]
	add     r0, r1, #0x4
	str     r2, [r4, r0]
	b       branch_22357a2
@ 0x223579e

.thumb
branch_223579e: @ 223579e :thumb
	mov     r0, #0x1
	str     r0, [r4, #0x4]
.thumb
branch_22357a2: @ 22357a2 :thumb
	mov     r0, r4
	bl      Function_2233b44
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x22357ae

.thumb
branch_22357ae: @ 22357ae :thumb
	mov     r0, r4
	bl      Function_2234dfc
	bl      Function_2233f74
	mov     r0, r4
	bl      Function_2233fa4
	mov     r0, r4
	bl      Function_22340b0
	mov     r0, r4
	bl      Function_223468c
	ldr     r0, [pc, #0x254] @ 0x2235a20, (=0x22353cd)
	mov     r1, r4
	bl      0x2017798
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff0c
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_22357ee
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xb
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x22357ee

.thumb
branch_22357ee: @ 22357ee :thumb
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x22357f4

.thumb
branch_22357f4: @ 22357f4 :thumb
	mov     r0, r4
	bl      Function_2235344
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x3
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x2235808

.thumb
branch_2235808: @ 2235808 :thumb
	ldr     r0, [pc, #0x218] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_223581a
	cmp     r0, #0x2
	beq     branch_223582c
.thumb
branch_2235818: @ 2235818 :thumb
	b       branch_2235c8a
@ 0x223581a

.thumb
branch_223581a: @ 223581a :thumb
	ldr     r0, [pc, #0x208] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, #0x22
	str     r0, [r4, #0x8]
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223582c

.thumb
branch_223582c: @ 223582c :thumb
	ldr     r0, [pc, #0x1f4] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, r5
	bl      Function_2234cf4
	b       branch_2235c8a
@ 0x2235842

.thumb
branch_2235842: @ 2235842 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2235590
	cmp     r0, #0x0
	beq     branch_223586a
	mov     r0, r4
	bl      Function_2235310
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223585a

.thumb
branch_223585a: @ 223585a :thumb
	ldr     r0, [pc, #0x1c8] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_223586c
	cmp     r0, #0x2
	beq     branch_223589a
.thumb
branch_223586a: @ 223586a :thumb
	b       branch_2235c8a
@ 0x223586c

.thumb
branch_223586c: @ 223586c :thumb
	ldr     r0, [pc, #0x1b4] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	bl      Function_2235408
	str     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2235892
	.hword  0x1ec0 @ sub r0, r0, #0x3
	cmp     r0, #0x1
	bhi     branch_223588c
	mov     r0, #0x8
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223588c

.thumb
branch_223588c: @ 223588c :thumb
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235892

.thumb
branch_2235892: @ 2235892 :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x8]
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223589a

.thumb
branch_223589a: @ 223589a :thumb
	ldr     r0, [pc, #0x188] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, r5
	bl      Function_2234cf4
	b       branch_2235c8a
@ 0x22358b0

.thumb
branch_22358b0: @ 22358b0 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2235590
	cmp     r0, #0x0
	beq     branch_2235902
	mov     r0, #0x7
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x22358c2

.thumb
branch_22358c2: @ 22358c2 :thumb
	ldr     r0, [pc, #0x164] @ 0x2235a28, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_22358d2
	ldr     r0, [pc, #0x160] @ 0x2235a2c, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2235902
.thumb
branch_22358d2: @ 22358d2 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0xc
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x22358e0

.thumb
branch_22358e0: @ 22358e0 :thumb
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_2235528
	cmp     r0, #0x0
	beq     branch_2235902
	mov     r0, #0x9
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x22358f2

.thumb
branch_22358f2: @ 22358f2 :thumb
	ldr     r0, [pc, #0x130] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_2235904
	cmp     r0, #0x2
	beq     branch_223593a
.thumb
branch_2235902: @ 2235902 :thumb
	b       branch_2235c8a
@ 0x2235904

.thumb
branch_2235904: @ 2235904 :thumb
	ldr     r0, [pc, #0x11c] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r1, #0x47
	lsl     r1, r1, #4
	mov     r2, #0x0
	mov     r0, r1
	str     r2, [r4, r1]
	sub     r1, #0x44
	mov     r3, #0x28
	sub     r0, #0x10
	str     r3, [r4, r0]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2233dd0
	ldr     r1, [pc, #0x108] @ 0x2235a30, (=0x498)
	add     r0, r4, r1
	sub     r1, #0xc6
	bl      0x200e7fc
	ldr     r1, [pc, #0x100] @ 0x2235a34, (=0xe898)
	str     r0, [r4, r1]
	mov     r0, #0xa
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223593a

.thumb
branch_223593a: @ 223593a :thumb
	ldr     r0, [pc, #0xe8] @ 0x2235a24, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, r5
	bl      Function_2234cf4
	b       branch_2235c8a
@ 0x2235950

.thumb
branch_2235950: @ 2235950 :thumb
	mov     r0, r4
	bl      Function_2233ce4
	ldr     r0, [pc, #0xdc] @ 0x2235a34, (=0xe898)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	mov     r0, #0x7
	str     r0, [r4, #0x4]
	mov     r0, #0xb
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235968

.thumb
branch_2235968: @ 2235968 :thumb
	ldr     r1, [r4, #0x4]
	mov     r0, r4
	bl      Function_22354c4
	cmp     r0, #0x0
	bne     branch_2235976
	b       branch_2235c8a
@ 0x2235976

.thumb
branch_2235976: @ 2235976 :thumb
	mov     r0, #0x16
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x223597c

.thumb
branch_223597c: @ 223597c :thumb
	ldr     r0, [pc, #0xb0] @ 0x2235a30, (=0x498)
	add     r0, r4, r0
	bl      Function_2235158
	mov     r0, r4
	bl      Function_2234e7c
	mov     r0, r4
	bl      Function_2234508
	mov     r0, r4
	bl      Function_22343a8
	ldr     r0, [pc, #0x88] @ 0x2235a20, (=0x22353cd)
	mov     r1, r4
	bl      0x2017798
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2234b0c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xd
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x22359bc

.thumb
branch_22359bc: @ 22359bc :thumb
	mov     r0, #0x31
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2022664
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_2235a96
	cmp     r6, #0x1e
	bge     branch_2235a8c
	mov     r0, r4
	mov     r1, r6
	bl      Function_2234854
	cmp     r0, #0x1
	bne     branch_2235a46
	ldr     r2, [pc, #0x38] @ 0x2235a1c, (=0xe880)
	mov     r0, r4
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r3, [r4, r2]
	mov     r2, #0x96
	lsl     r2, r2, #4
	.hword  0x1d09 @ add r1, r1, #0x4
	mul     r2, r3
	add     r2, r1, r2
	mov     r1, #0x50
	mul     r1, r6
	add     r1, r2, r1
	bl      Function_2234b0c
	mov     r0, #0x41
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r0, #0x6
	bne     branch_2235a96
	ldr     r0, [pc, #0x2c] @ 0x2235a38, (=0xe888)
	b       branch_2235a3c
@ 0x2235a0c

.word 0x2101d24 @ 0x2235a0c
.word 0xe890 @ 0x2235a10
.word 0x4a8 @ 0x2235a14
.word 0x4ac @ 0x2235a18
.word 0xe880 @ 0x2235a1c
.word 0x22353cd @ 0x2235a20
.word 0xe88c @ 0x2235a24
.word 0x21bf6bc @ 0x2235a28
.word 0x21bf67c @ 0x2235a2c
.word 0x498 @ 0x2235a30
.word 0xe898 @ 0x2235a34
.word 0xe888 @ 0x2235a38
.thumb
branch_2235a3c: @ 2235a3c :thumb
	mov     r1, #0x2d
	str     r1, [r4, r0]
	mov     r0, #0xf
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235a46

.thumb
branch_2235a46: @ 2235a46 :thumb
	cmp     r0, #0x2
	bne     branch_2235a54
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2234b0c
	b       branch_2235c8a
@ 0x2235a54

.thumb
branch_2235a54: @ 2235a54 :thumb
	cmp     r0, #0x4
	bne     branch_2235a62
	mov     r0, #0x8
	str     r0, [r4, #0x8]
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235a62

.thumb
branch_2235a62: @ 2235a62 :thumb
	cmp     r0, #0x5
	bne     branch_2235a70
	mov     r0, #0x9
	str     r0, [r4, #0x8]
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235a70

.thumb
branch_2235a70: @ 2235a70 :thumb
	cmp     r0, #0x6
	bne     branch_2235a7e
	mov     r0, #0x26
	str     r0, [r4, #0x8]
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235a7e

.thumb
branch_2235a7e: @ 2235a7e :thumb
	cmp     r0, #0x7
	bne     branch_2235a96
	mov     r0, #0x26
	str     r0, [r4, #0x8]
	mov     r0, #0xe
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235a8c

.thumb
branch_2235a8c: @ 2235a8c :thumb
	beq     branch_2235ad6
	cmp     r6, #0x1f
	beq     branch_2235a98
	cmp     r6, #0x20
	beq     branch_2235ab6
.thumb
branch_2235a96: @ 2235a96 :thumb
	b       branch_2235c8a
@ 0x2235a98

.thumb
branch_2235a98: @ 2235a98 :thumb
	ldr     r0, [pc, #0x1fc] @ 0x2235c98, (=0xe884)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2235aa4
	mov     r1, #0xd
	b       branch_2235aa6
@ 0x2235aa4

.thumb
branch_2235aa4: @ 2235aa4 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
.thumb
branch_2235aa6: @ 2235aa6 :thumb
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_22343a8
	ldr     r0, [pc, #0x1ec] @ 0x2235c9c, (=0x5dc)
	bl      0x2005748
	b       branch_2235c8a
@ 0x2235ab6

.thumb
branch_2235ab6: @ 2235ab6 :thumb
	ldr     r0, [pc, #0x1e0] @ 0x2235c98, (=0xe884)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0xe
	bne     branch_2235ac8
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2235ac8: @ 2235ac8 :thumb
	mov     r0, r4
	bl      Function_22343a8
	ldr     r0, [pc, #0x1cc] @ 0x2235c9c, (=0x5dc)
	bl      0x2005748
	b       branch_2235c8a
@ 0x2235ad6

.thumb
branch_2235ad6: @ 2235ad6 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, r5
	bl      Function_2234cf4
	ldr     r0, [pc, #0x1b8] @ 0x2235c9c, (=0x5dc)
	bl      0x2005748
	b       branch_2235c8a
@ 0x2235aea

.thumb
branch_2235aea: @ 2235aea :thumb
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2235590
	cmp     r0, #0x0
	beq     branch_2235b4a
	ldr     r0, [pc, #0x1a8] @ 0x2235ca0, (=0x498)
	add     r0, r4, r0
	bl      Function_2235158
	mov     r0, #0xd
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235b04

.thumb
branch_2235b04: @ 2235b04 :thumb
	ldr     r0, [pc, #0x19c] @ 0x2235ca4, (=0xe888)
	ldr     r1, [r4, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2235b4a
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x10
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x2235b20

.thumb
branch_2235b20: @ 2235b20 :thumb
	mov     r0, r4
	bl      Function_2234f88
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x11
	mov     r3, r5
	bl      Function_2234cc4
	mov     r0, r4
	bl      Function_2235310
	b       branch_2235c8a
@ 0x2235b3a

.thumb
branch_2235b3a: @ 2235b3a :thumb
	ldr     r0, [pc, #0x16c] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_2235b4c
	cmp     r0, #0x2
	beq     branch_2235b5a
.thumb
branch_2235b4a: @ 2235b4a :thumb
	b       branch_2235c8a
@ 0x2235b4c

.thumb
branch_2235b4c: @ 2235b4c :thumb
	ldr     r0, [pc, #0x158] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, #0x12
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235b5a

.thumb
branch_2235b5a: @ 2235b5a :thumb
	ldr     r0, [pc, #0x14c] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x14
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x2235b70

.thumb
branch_2235b70: @ 2235b70 :thumb
	mov     r1, #0x46
	mov     r0, #0xb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x34
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_2233dd0
	mov     r0, r4
	bl      Function_2235310
	ldr     r0, [pc, #0x110] @ 0x2235c9c, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x13
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235b96

.thumb
branch_2235b96: @ 2235b96 :thumb
	ldr     r0, [pc, #0x110] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x20159fc
	cmp     r0, #0x1
	beq     branch_2235ba8
	cmp     r0, #0x2
	beq     branch_2235bea
	b       branch_2235c8a
@ 0x2235ba8

.thumb
branch_2235ba8: @ 2235ba8 :thumb
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	lsl     r1, r0, #2
	ldr     r0, [pc, #0xfc] @ 0x2235cac, (=0x223ea68)
	ldr     r0, [r0, r1]
	mov     r1, #0x46
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x34
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2233dd0
	ldr     r0, [pc, #0xe4] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	ldr     r0, [pc, #0xe4] @ 0x2235cb0, (=0xe890)
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r1, [pc, #0xcc] @ 0x2235ca0, (=0x498)
	add     r0, r4, r1
	sub     r1, #0xc6
	bl      0x200e7fc
	ldr     r1, [pc, #0xd8] @ 0x2235cb4, (=0xe898)
	str     r0, [r4, r1]
	mov     r0, #0x15
	str     r0, [r5, #0x0]
	mov     r0, #0x4
	bl      0x2017de0
	b       branch_2235c8a
@ 0x2235bea

.thumb
branch_2235bea: @ 2235bea :thumb
	ldr     r0, [pc, #0xbc] @ 0x2235ca8, (=0xe88c)
	ldr     r0, [r4, r0]
	bl      0x2015a54
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x14
	mov     r3, r5
	bl      Function_2234cc4
	b       branch_2235c8a
@ 0x2235c00

.thumb
branch_2235c00: @ 2235c00 :thumb
	mov     r0, r4
	bl      Function_2235178
	mov     r0, #0xc
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235c0c

.thumb
branch_2235c0c: @ 2235c0c :thumb
	mov     r0, r4
	bl      Function_2233b8c
	mov     r6, r0
	cmp     r6, #0xa
	beq     branch_2235c8a
	ldr     r0, [pc, #0x98] @ 0x2235cb4, (=0xe898)
	ldr     r0, [r4, r0]
	bl      0x200eba0
	ldr     r0, [pc, #0x94] @ 0x2235cb8, (=0x61b)
	bl      0x2005748
	cmp     r6, #0xb
	bne     branch_2235c2e
	mov     r1, #0x1d
	b       branch_2235c30
@ 0x2235c2e

.thumb
branch_2235c2e: @ 2235c2e :thumb
	mov     r1, #0x24
.thumb
branch_2235c30: @ 2235c30 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	ldr     r1, [pc, #0x84] @ 0x2235cbc, (=0x42c)
	mov     r0, r4
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_2233dd0
	mov     r0, #0x16
	str     r0, [r5, #0x0]
	mov     r0, #0x4
	bl      0x2017df0
	b       branch_2235c8a
@ 0x2235c4e

.thumb
branch_2235c4e: @ 2235c4e :thumb
	ldr     r0, [pc, #0x70] @ 0x2235cc0, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	bne     branch_2235c5e
	ldr     r0, [pc, #0x6c] @ 0x2235cc4, (=0x21bf67c)
	ldr     r0, [r0, #0x48]
	cmp     r0, #0x0
	beq     branch_2235c8a
.thumb
branch_2235c5e: @ 2235c5e :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x18
	mov     r3, r5
	bl      Function_2234cf4
	ldr     r0, [pc, #0x30] @ 0x2235c9c, (=0x5dc)
	bl      0x2005748
	b       branch_2235c8a
@ 0x2235c72

.thumb
branch_2235c72: @ 2235c72 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2235c8a
	ldr     r0, [r4, #0x24]
	str     r0, [r5, #0x0]
	b       branch_2235c8a
@ 0x2235c80

.thumb
branch_2235c80: @ 2235c80 :thumb
	mov     r0, r4
	bl      Function_22351f0
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2235c8a

.thumb
branch_2235c8a: @ 2235c8a :thumb
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_2235c94
	bl      0x20219f8
.thumb
branch_2235c94: @ 2235c94 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2235c98

.word 0xe884 @ 0x2235c98
.word 0x5dc @ 0x2235c9c
.word 0x498 @ 0x2235ca0
.word 0xe888 @ 0x2235ca4
.word 0xe88c @ 0x2235ca8
.word 0x223ea68 @ 0x2235cac
.word 0xe890 @ 0x2235cb0
.word 0xe898 @ 0x2235cb4
.word 0x61b @ 0x2235cb8
.word 0x42c @ 0x2235cbc
.word 0x21bf6bc @ 0x2235cc0
.word 0x21bf67c @ 0x2235cc4
.thumb
Function_2235cc8: @ 2235cc8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x34] @ 0x2235d08, (=0x12608)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0x30] @ 0x2235d0c, (=0x1260c)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [r4, #0x20]
	bl      0x20181c4
	ldr     r0, [pc, #0x24] @ 0x2235d10, (=0x4d)
	ldr     r1, [pc, #0x28] @ 0x2235d14, (=0x21d742c)
	bl      0x2000ec4
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x4e
	bl      0x201807c
	mov     r0, #0x0
	bl      Function_2238400
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2235d06


.align 2


.word 0x12608 @ 0x2235d08
.word 0x1260c @ 0x2235d0c
.word 0x4d @ 0x2235d10
.word 0x21d742c @ 0x2235d14
.thumb
Function_2235d18: @ 2235d18 :thumb
	push    {r3,lr}
	mov     r0, #0x1
	blx 0x20d130c
	cmp     r0, #0x0
	bne     branch_2235d28
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2235d28

.thumb
branch_2235d28: @ 2235d28 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2235d2c

.thumb
Function_2235d2c: @ 2235d2c :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x58] @ 0x2235d88, (=0x223f438)
	str     r0, [r1, #0x8]
	ldr     r0, [pc, #0x58] @ 0x2235d8c, (=0x223ebfc)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_2235d3e
	mov     r0, #0xc
	pop     {r3,pc}
@ 0x2235d3e

.thumb
branch_2235d3e: @ 2235d3e :thumb
	ldr     r0, [pc, #0x50] @ 0x2235d90, (=0x223d92c)
	mov     r1, #0x1e
	bl      Function_2235dc8
	cmp     r0, #0x0
	bne     branch_2235d86
	ldr     r0, [pc, #0x40] @ 0x2235d8c, (=0x223ebfc)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_2235d6e
	mov     r0, #0x89
	ldr     r1, [pc, #0x3c] @ 0x2235d94, (=0x223f4b8)
	lsl     r0, r0, #4
	str     r0, [r1, #0x20]
	mov     r0, #0xeb
	lsl     r0, r0, #6
	str     r0, [r1, #0x24]
	ldr     r2, [pc, #0x34] @ 0x2235d98, (=0x1220)
	ldr     r0, [pc, #0x20] @ 0x2235d88, (=0x223f438)
	str     r2, [r0, #0x68]
	mov     r0, #0x9
	str     r0, [r1, #0x30]
	b       branch_2235d78
@ 0x2235d6e

.thumb
branch_2235d6e: @ 2235d6e :thumb
	ldr     r0, [pc, #0x2c] @ 0x2235d9c, (=0x8000100)
	ldr     r1, [pc, #0x2c] @ 0x2235da0, (=0x223f450)
	mov     r2, #0xfc
	blx 0x20d0cdc
.thumb
branch_2235d78: @ 2235d78 :thumb
	bl      Function_2235d18
	cmp     r0, #0x0
	bne     branch_2235d84
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x2235d84

.thumb
branch_2235d84: @ 2235d84 :thumb
	mov     r0, #0x0
.thumb
branch_2235d86: @ 2235d86 :thumb
	pop     {r3,pc}
@ 0x2235d88

.word 0x223f438 @ 0x2235d88
.word 0x223ebfc @ 0x2235d8c
.word 0x223d92c @ 0x2235d90
.word 0x223f4b8 @ 0x2235d94
.word 0x1220 @ 0x2235d98
.word 0x8000100 @ 0x2235d9c
.word 0x223f450 @ 0x2235da0
.thumb
Function_2235da4: @ 2235da4 :thumb
	ldr     r0, [pc, #0x4] @ 0x2235dac, (=0x223ebfc)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x2235dac

.word 0x223ebfc @ 0x2235dac
.thumb
Function_2235db0: @ 2235db0 :thumb
	ldr     r0, [pc, #0x4] @ 0x2235db8, (=0x223ebfc)
	ldr     r0, [r0, #0x0]
	ldrb    r0, [r0, #0x5]
	bx      lr
@ 0x2235db8

.word 0x223ebfc @ 0x2235db8
.thumb
Function_2235dbc: @ 2235dbc :thumb
	ldr     r0, [pc, #0x4] @ 0x2235dc4, (=0x223ebfc)
	ldr     r0, [r0, #0x0]
	ldrh    r0, [r0, #0x6]
	bx      lr
@ 0x2235dc4

.word 0x223ebfc @ 0x2235dc4
.thumb
Function_2235dc8: @ 2235dc8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0xc0
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0xa0] @ 0x2235e74, (=0x223ebfc)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	blx 0x20d08c0
	cmp     r0, #0x0
	bne     branch_2235de4
	add     sp, #0xc0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2235de4

.thumb
branch_2235de4: @ 2235de4 :thumb
	blx 0x20d0928
	mov     r2, #0x0
	cmp     r4, #0x0
	ble     branch_2235e08
	mov     r3, r5
.thumb
branch_2235df0: @ 2235df0 :thumb
	ldr     r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_2235e00
	lsl     r0, r2, #3
	add     r1, r5, r0
	ldr     r0, [pc, #0x78] @ 0x2235e74, (=0x223ebfc)
	str     r1, [r0, #0x0]
	b       branch_2235e08
@ 0x2235e00

.thumb
branch_2235e00: @ 2235e00 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r3, #0x8
	cmp     r2, r4
	blt     branch_2235df0
.thumb
branch_2235e08: @ 2235e08 :thumb
	ldr     r0, [pc, #0x68] @ 0x2235e74, (=0x223ebfc)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2235e16
	add     sp, #0xc0
	mov     r0, #0x2
	pop     {r3-r5,pc}
@ 0x2235e16

.thumb
branch_2235e16: @ 2235e16 :thumb
	mov     r0, #0x1
	blx 0x20d0f48
	add     r4, sp, #0x0
	mov     r0, #0x2
	lsl     r0, r0, #26
	mov     r1, r4
	mov     r2, #0xc0
	blx 0x20d0cdc
	ldr     r3, [pc, #0x4c] @ 0x2235e78, (=0x223ec04)
	mov     r2, #0x0
.thumb
branch_2235e2e: @ 2235e2e :thumb
	add     r0, r4, r2
	ldrb    r1, [r3, #0x0]
	ldrb    r0, [r0, #0x4]
	cmp     r1, r0
	beq     branch_2235e3e
	add     sp, #0xc0
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x2235e3e

.thumb
branch_2235e3e: @ 2235e3e :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, #0x9c
	bcc     branch_2235e2e
	mov     r2, #0x0
	mov     r1, #0xa0
.thumb
branch_2235e4a: @ 2235e4a :thumb
	ldrb    r0, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r0, r2, r0
	lsl     r0, r0, #24
	lsr     r2, r0, #24
	cmp     r1, #0xbc
	ble     branch_2235e4a
	add     r2, #0x19
	neg     r0, r2
	lsl     r0, r0, #24
	add     r4, #0xbd
	lsr     r1, r0, #24
	ldrb    r0, [r4, #0x0]
	cmp     r0, r1
	beq     branch_2235e6e
	add     sp, #0xc0
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x2235e6e

.thumb
branch_2235e6e: @ 2235e6e :thumb
	mov     r0, #0x0
	add     sp, #0xc0
	pop     {r3-r5,pc}
@ 0x2235e74

.word 0x223ebfc @ 0x2235e74
.word 0x223ec04 @ 0x2235e78
.thumb
Function_2235e7c: @ 2235e7c :thumb
	push    {r3,r4}
	mov     r2, #0x0
	lsr     r4, r1, #2
	mov     r3, r2
	cmp     r4, #0x0
	ble     branch_2235e98
.thumb
branch_2235e88: @ 2235e88 :thumb
	ldr     r1, [r0, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	add     r2, r2, r1
	add     r1, r3, #0x1
	lsl     r1, r1, #16
	lsr     r3, r1, #16
	cmp     r3, r4
	blt     branch_2235e88
.thumb
branch_2235e98: @ 2235e98 :thumb
	lsr     r0, r2, #16
	lsl     r0, r0, #16
	lsr     r1, r0, #16
	lsl     r0, r2, #16
	lsr     r0, r0, #16
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,r4}
	bx      lr
@ 0x2235eac

.thumb
Function_2235eac: @ 2235eac :thumb
	push    {r3,lr}
	lsl     r0, r0, #16
	mov     r3, #0x1
	mov     r2, r1
	lsr     r0, r0, #16
	mov     r1, #0x0
	lsl     r3, r3, #12
	blx 0x20d1a6c
	pop     {r3,pc}
@ 0x2235ec0

.thumb
Function_2235ec0: @ 2235ec0 :thumb
	cmp     r0, #0x0
	bne     branch_2235ece
	ldr     r0, [pc, #0x2c] @ 0x2235ef4, (=0x223f4b8)
	ldr     r0, [r0, #0x20]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2235ece

.thumb
branch_2235ece: @ 2235ece :thumb
	cmp     r0, #0x4
	bne     branch_2235ee2
	ldr     r0, [pc, #0x20] @ 0x2235ef4, (=0x223f4b8)
	ldr     r1, [r0, #0x24]
	mov     r0, #0xba
	lsl     r0, r0, #6
	sub     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x2235ee2

.thumb
branch_2235ee2: @ 2235ee2 :thumb
	cmp     r0, #0xd
	bne     branch_2235eec
	mov     r0, #0x7d
	lsl     r0, r0, #4
	bx      lr
@ 0x2235eec

.thumb
branch_2235eec: @ 2235eec :thumb
	mov     r0, #0x3e
	lsl     r0, r0, #6
	bx      lr
@ 0x2235ef2


.align 2


.word 0x223f4b8 @ 0x2235ef4
.thumb
Function_2235ef8: @ 2235ef8 :thumb
	cmp     r0, #0x0
	bne     branch_2235f08
	ldr     r0, [pc, #0x48] @ 0x2235f48, (=0x223f438)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #12
	add     r0, r1, r0
	bx      lr
@ 0x2235f08

.thumb
branch_2235f08: @ 2235f08 :thumb
	cmp     r0, #0x1
	blt     branch_2235f26
	cmp     r0, #0x4
	bgt     branch_2235f26
	ldr     r1, [pc, #0x34] @ 0x2235f48, (=0x223f438)
	ldr     r2, [r1, #0x8]
	mov     r1, #0x2
	lsl     r1, r1, #12
	add     r2, r2, r1
	.hword  0x1e41 @ sub r1, r0, #0x1
	mov     r0, #0x3e
	lsl     r0, r0, #6
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
@ 0x2235f26

.thumb
branch_2235f26: @ 2235f26 :thumb
	cmp     r0, #0x5
	blt     branch_2235f44
	cmp     r0, #0xe
	bge     branch_2235f44
	ldr     r1, [pc, #0x18] @ 0x2235f48, (=0x223f438)
	ldr     r2, [r1, #0x8]
	mov     r1, #0x6
	lsl     r1, r1, #12
	add     r2, r2, r1
	.hword  0x1f41 @ sub r1, r0, #0x5
	mov     r0, #0x3e
	lsl     r0, r0, #6
	mul     r0, r1
	add     r0, r2, r0
	bx      lr
@ 0x2235f44

.thumb
branch_2235f44: @ 2235f44 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2235f48

.word 0x223f438 @ 0x2235f48
.thumb
Function_2235f4c: @ 2235f4c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, #0x0
	mov     r5, r1
	str     r6, [sp, #0x4]
	mov     r1, r2
	str     r6, [r1, #0x0]
	ldr     r1, [pc, #0x84] @ 0x2235fe0, (=0x223f438)
	mov     r7, r0
	str     r6, [r1, #0x4]
	mov     r1, #0xe
	str     r2, [sp, #0x0]
	mov     r4, r6
	mul     r7, r1
.thumb
branch_2235f68: @ 2235f68 :thumb
	mov     r0, r4
	mov     r1, #0xe
	blx 0x20e1f6c
	add     r0, r1, r7
	mov     r1, r5
	bl      Function_2235eac
	mov     r1, #0x1
	mov     r0, r5
	lsl     r1, r1, #12
	blx 0x20c2c54
	ldr     r0, [pc, #0x60] @ 0x2235fe4, (=0xff8)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x60] @ 0x2235fe8, (=0x8012025)
	cmp     r1, r0
	bne     branch_2235fba
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x2235fec, (=0xff4)
	ldrh    r0, [r5, r0]
	bl      Function_2235ec0
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235e7c
	ldr     r1, [pc, #0x4c] @ 0x2235ff0, (=0xff6)
	ldrh    r1, [r5, r1]
	cmp     r1, r0
	bne     branch_2235fba
	ldr     r0, [pc, #0x48] @ 0x2235ff4, (=0xffc)
	ldr     r1, [r5, r0]
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x2235fec, (=0xff4)
	ldrh    r1, [r5, r0]
	mov     r0, #0x1
	lsl     r0, r1
	orr     r6, r0
.thumb
branch_2235fba: @ 2235fba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xe
	blt     branch_2235f68
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_2235fd8
	ldr     r0, [pc, #0x30] @ 0x2235ff8, (=0x3fff)
	cmp     r6, r0
	bne     branch_2235fd2
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2235fd2

.thumb
branch_2235fd2: @ 2235fd2 :thumb
	add     sp, #0x8
	mov     r0, #0xff
	pop     {r3-r7,pc}
@ 0x2235fd8

.thumb
branch_2235fd8: @ 2235fd8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2235fde


.align 2


.word 0x223f438 @ 0x2235fe0
.word 0xff8 @ 0x2235fe4
.word 0x8012025 @ 0x2235fe8
.word 0xff4 @ 0x2235fec
.word 0xff6 @ 0x2235ff0
.word 0xffc @ 0x2235ff4
.word 0x3fff @ 0x2235ff8
.thumb
Function_2235ffc: @ 2235ffc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, r0
	mov     r5, r1
	mov     r4, r2
	mov     r0, #0x0
	mov     r1, r7
	add     r2, sp, #0x4
	bl      Function_2235f4c
	mov     r6, r0
	mov     r0, #0x1
	mov     r1, r7
	add     r2, sp, #0x0
	bl      Function_2235f4c
	cmp     r6, #0x1
	bne     branch_2236074
	cmp     r0, #0x1
	bne     branch_2236074
	mov     r1, #0x0
	ldr     r0, [sp, #0x4]
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2236034
	ldr     r3, [sp, #0x0]
	cmp     r3, #0x0
	beq     branch_2236042
.thumb
branch_2236034: @ 2236034 :thumb
	cmp     r0, #0x0
	bne     branch_223605a
	mov     r1, #0x0
	ldr     r3, [sp, #0x0]
	mvn     r1, r1
	cmp     r3, r1
	bne     branch_223605a
.thumb
branch_2236042: @ 2236042 :thumb
	add     r2, r0, #0x1
	add     r1, r3, #0x1
	cmp     r2, r1
	bcs     branch_2236052
	str     r3, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223606e
@ 0x2236052

.thumb
branch_2236052: @ 2236052 :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	b       branch_223606e
@ 0x223605a

.thumb
branch_223605a: @ 223605a :thumb
	ldr     r1, [sp, #0x0]
	cmp     r0, r1
	bcs     branch_2236068
	str     r1, [r4, #0x0]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223606e
@ 0x2236068

.thumb
branch_2236068: @ 2236068 :thumb
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r5, #0x0]
.thumb
branch_223606e: @ 223606e :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2236074

.thumb
branch_2236074: @ 2236074 :thumb
	cmp     r6, #0x1
	bne     branch_2236098
	cmp     r0, #0x1
	beq     branch_2236098
	ldr     r1, [sp, #0x4]
	cmp     r0, #0xff
	str     r1, [r4, #0x0]
	bne     branch_223608e
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x8
	mov     r0, #0xff
	pop     {r3-r7,pc}
@ 0x223608e

.thumb
branch_223608e: @ 223608e :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2236098

.thumb
branch_2236098: @ 2236098 :thumb
	cmp     r0, #0x1
	bne     branch_22360ba
	cmp     r6, #0x1
	beq     branch_22360ba
	ldr     r0, [sp, #0x0]
	cmp     r6, #0xff
	str     r0, [r4, #0x0]
	bne     branch_22360b2
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	add     sp, #0x8
	mov     r0, #0xff
	pop     {r3-r7,pc}
@ 0x22360b2

.thumb
branch_22360b2: @ 22360b2 :thumb
	mov     r0, #0x1
	add     sp, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22360ba

.thumb
branch_22360ba: @ 22360ba :thumb
	cmp     r6, #0x0
	bne     branch_22360cc
	cmp     r0, #0x0
	bne     branch_22360cc
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	add     sp, #0x8
	str     r0, [r5, #0x0]
	pop     {r3-r7,pc}
@ 0x22360cc

.thumb
branch_22360cc: @ 22360cc :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, #0x2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x22360d8

.thumb
Function_22360d8: @ 22360d8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0xb0] @ 0x223618c, (=0x223f438)
	ldr     r1, [pc, #0xb0] @ 0x2236190, (=0x223f438)
	ldr     r0, [r0, #0x8]
	ldr     r2, [pc, #0xb0] @ 0x2236194, (=0x223f448)
	bl      Function_2235ffc
	cmp     r0, #0x1
	beq     branch_2236102
	cmp     r0, #0x0
	beq     branch_22360fa
	cmp     r0, #0x2
	beq     branch_22360fe
	cmp     r0, #0xff
	bne     branch_2236102
	mov     r0, #0x5
	pop     {r3-r7,pc}
@ 0x22360fa

.thumb
branch_22360fa: @ 22360fa :thumb
	mov     r0, #0x7
	pop     {r3-r7,pc}
@ 0x22360fe

.thumb
branch_22360fe: @ 22360fe :thumb
	mov     r0, #0x6
	pop     {r3-r7,pc}
@ 0x2236102

.thumb
branch_2236102: @ 2236102 :thumb
	ldr     r7, [pc, #0x88] @ 0x223618c, (=0x223f438)
	ldr     r0, [r7, #0x0]
	cmp     r0, #0x1
	bhi     branch_2236186
	mov     r6, #0x0
	ldr     r5, [r7, #0x8]
	mov     r4, r6
.thumb
branch_2236110: @ 2236110 :thumb
	ldr     r1, [r7, #0x0]
	mov     r0, #0xe
	mul     r0, r1
	add     r0, r4, r0
	mov     r1, r5
	bl      Function_2235eac
	ldr     r0, [pc, #0x78] @ 0x2236198, (=0xff8)
	ldr     r1, [r5, r0]
	ldr     r0, [pc, #0x78] @ 0x223619c, (=0x8012025)
	cmp     r1, r0
	bne     branch_2236172
	ldr     r0, [pc, #0x74] @ 0x22361a0, (=0xff4)
	ldrh    r0, [r5, r0]
	bl      Function_2235ec0
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235e7c
	ldr     r1, [pc, #0x68] @ 0x22361a4, (=0xff6)
	ldrh    r1, [r5, r1]
	cmp     r1, r0
	bne     branch_2236172
	ldr     r0, [pc, #0x64] @ 0x22361a8, (=0xffc)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	str     r0, [r7, #0x10]
	ldr     r0, [pc, #0x54] @ 0x22361a0, (=0xff4)
	ldrh    r0, [r5, r0]
	lsl     r1, r0
	orr     r6, r1
	bl      Function_2235ec0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x22361a0, (=0xff4)
	ldrh    r0, [r5, r0]
	bl      Function_2235ef8
	mov     r1, r0
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	blx 0x20c4b68
	ldr     r0, [pc, #0x34] @ 0x22361a0, (=0xff4)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2236172
	str     r4, [r7, #0xc]
.thumb
branch_2236172: @ 2236172 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xe
	blt     branch_2236110
	ldr     r0, [pc, #0x30] @ 0x22361ac, (=0x3fff)
	cmp     r6, r0
	bne     branch_2236182
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2236182

.thumb
branch_2236182: @ 2236182 :thumb
	mov     r0, #0x4
	pop     {r3-r7,pc}
@ 0x2236186

.thumb
branch_2236186: @ 2236186 :thumb
	mov     r0, #0x6
	pop     {r3-r7,pc}
@ 0x223618a


.align 2


.word 0x223f438 @ 0x223618c
.word 0x223f438 @ 0x2236190
.word 0x223f448 @ 0x2236194
.word 0xff8 @ 0x2236198
.word 0x8012025 @ 0x223619c
.word 0xff4 @ 0x22361a0
.word 0xff6 @ 0x22361a4
.word 0xffc @ 0x22361a8
.word 0x3fff @ 0x22361ac
.thumb
Function_22361b0: @ 22361b0 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x74] @ 0x223622c, (=0x223f438)
	mov     r2, #0x1
	ldr     r5, [r0, #0x8]
	str     r2, [r0, #0x14]
	mov     r0, #0x0
	mov     r1, r5
	lsl     r2, r2, #12
	blx 0x20c4b4c
	mov     r0, r6
	bl      Function_2235ec0
	mov     r4, r0
	mov     r0, r6
	bl      Function_2235ef8
	mov     r1, r5
	mov     r2, r4
	blx 0x20c4b68
	ldr     r0, [pc, #0x4c] @ 0x223622c, (=0x223f438)
	ldr     r1, [r0, #0x10]
	ldr     r0, [pc, #0x4c] @ 0x2236230, (=0xffc)
	str     r1, [r5, r0]
	mov     r1, r0
	sub     r1, #0x8
	strh    r6, [r5, r1]
	ldr     r1, [pc, #0x48] @ 0x2236234, (=0x8012025)
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r1, [r5, r0]
	mov     r0, r6
	bl      Function_2235ec0
	mov     r1, r0
	mov     r0, r5
	bl      Function_2235e7c
	ldr     r1, [pc, #0x38] @ 0x2236238, (=0xff6)
	strh    r0, [r5, r1]
	ldr     r0, [pc, #0x28] @ 0x223622c, (=0x223f438)
	mov     r1, #0xe
	ldr     r0, [r0, #0xc]
	add     r0, r6, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	blx 0x20e1f6c
	ldr     r0, [pc, #0x28] @ 0x223623c, (=0x223ebfc)
	ldr     r3, [pc, #0x2c] @ 0x2236240, (=0x2236245)
	ldr     r2, [r0, #0x4]
	mov     r0, #0xe
	mul     r0, r2
	add     r0, r1, r0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	mov     r1, r5
	mov     r2, #0x4
	blx 0x20d1ad0
	pop     {r4-r6,pc}
@ 0x223622a


.align 2


.word 0x223f438 @ 0x223622c
.word 0xffc @ 0x2236230
.word 0x8012025 @ 0x2236234
.word 0xff6 @ 0x2236238
.word 0x223ebfc @ 0x223623c
.word Function_2236244+1 @ =0x2236245, 0x2236240
.thumb
Function_2236244: @ 2236244 :thumb
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_2236270
	ldr     r1, [pc, #0x30] @ 0x223627c, (=0x223f438)
	ldr     r0, [r1, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x4]
	cmp     r0, #0xe
	blt     branch_223625e
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	str     r0, [r1, #0x14]
	bx      lr
@ 0x223625e

.thumb
branch_223625e: @ 223625e :thumb
	cmp     r0, #0xd
	bne     branch_223626a
	mov     r0, #0x2
	str     r0, [r1, #0x14]
	mov     r0, #0x0
	bx      lr
@ 0x223626a

.thumb
branch_223626a: @ 223626a :thumb
	mov     r0, #0x3
	str     r0, [r1, #0x14]
	b       branch_2236276
@ 0x2236270

.thumb
branch_2236270: @ 2236270 :thumb
	ldr     r0, [pc, #0x8] @ 0x223627c, (=0x223f438)
	mov     r1, #0x4
	str     r1, [r0, #0x14]
.thumb
branch_2236276: @ 2236276 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223627a


.align 2


.word 0x223f438 @ 0x223627c
.thumb
Function_2236280: @ 2236280 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x3c] @ 0x22362c0, (=0x223f438)
	ldr     r0, [r1, #0x4]
	cmp     r0, #0x0
	bne     branch_22362a6
	ldr     r1, [r1, #0x0]
	cmp     r1, #0x1
	bne     branch_2236296
	mov     r2, #0x0
	ldr     r1, [pc, #0x30] @ 0x22362c4, (=0x223ebfc)
	b       branch_223629a
@ 0x2236296

.thumb
branch_2236296: @ 2236296 :thumb
	ldr     r1, [pc, #0x2c] @ 0x22362c4, (=0x223ebfc)
	mov     r2, #0x1
.thumb
branch_223629a: @ 223629a :thumb
	str     r2, [r1, #0x4]
	ldr     r1, [pc, #0x20] @ 0x22362c0, (=0x223f438)
	ldr     r2, [r1, #0x10]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r1, #0x10]
	b       branch_22362aa
@ 0x22362a6

.thumb
branch_22362a6: @ 22362a6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22362aa

.thumb
branch_22362aa: @ 22362aa :thumb
	ldr     r1, [pc, #0x18] @ 0x22362c4, (=0x223ebfc)
	ldr     r1, [r1, #0x4]
	cmp     r1, #0x0
	bge     branch_22362b6
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22362b6

.thumb
branch_22362b6: @ 22362b6 :thumb
	bl      Function_22361b0
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22362be


.align 2


.word 0x223f438 @ 0x22362c0
.word 0x223ebfc @ 0x22362c4
.thumb
Function_22362c8: @ 22362c8 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x38] @ 0x2236304, (=0x223f438)
	ldr     r0, [r1, #0x14]
	cmp     r0, #0x4
	bhi     branch_2236300
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22362de

Jumppoints_22362de:
.hword branch_2236300 - Jumppoints_22362de - 2
.hword branch_22362f8 - Jumppoints_22362de - 2
.hword branch_22362e8 - Jumppoints_22362de - 2
.hword branch_22362f2 - Jumppoints_22362de - 2
.hword branch_22362fc - Jumppoints_22362de - 2
.thumb
branch_22362e8: @ 22362e8 :thumb
	ldr     r0, [r1, #0x4]
	bl      Function_22361b0
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22362f2

.thumb
branch_22362f2: @ 22362f2 :thumb
	ldr     r0, [r1, #0x4]
	bl      Function_22361b0
.thumb
branch_22362f8: @ 22362f8 :thumb
	mov     r0, #0xa
	pop     {r3,pc}
@ 0x22362fc

.thumb
branch_22362fc: @ 22362fc :thumb
	mov     r0, #0x8
	pop     {r3,pc}
@ 0x2236300

.thumb
branch_2236300: @ 2236300 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2236304

.word 0x223f438 @ 0x2236304
.thumb
Function_2236308: @ 2236308 :thumb
	ldr     r0, [pc, #0x30] @ 0x223633c, (=0x223f438)
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x4
	bhi     branch_2236336
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223631c

Jumppoints_223631c:
.hword branch_2236336 - Jumppoints_223631c - 2
.hword branch_223632e - Jumppoints_223631c - 2
.hword branch_2236326 - Jumppoints_223631c - 2
.hword branch_223632a - Jumppoints_223631c - 2
.hword branch_2236332 - Jumppoints_223631c - 2
.thumb
branch_2236326: @ 2236326 :thumb
	mov     r0, #0xb
	bx      lr
@ 0x223632a

.thumb
branch_223632a: @ 223632a :thumb
	mov     r0, #0xa
	bx      lr
@ 0x223632e

.thumb
branch_223632e: @ 223632e :thumb
	mov     r0, #0x9
	bx      lr
@ 0x2236332

.thumb
branch_2236332: @ 2236332 :thumb
	mov     r0, #0x8
	bx      lr
@ 0x2236336

.thumb
branch_2236336: @ 2236336 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223633a


.align 2


.word 0x223f438 @ 0x223633c
.thumb
Function_2236340: @ 2236340 :thumb
	ldr     r0, [pc, #0x8] @ 0x223634c, (=0x223f438)
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6
	lsl     r0, r0, #12
	add     r0, r1, r0
	bx      lr
@ 0x223634c

.word 0x223f438 @ 0x223634c
.thumb
Function_2236350: @ 2236350 :thumb
	ldr     r3, [pc, #0x4] @ 0x2236358, (=0x2235ef9)
	mov     r0, #0x0
	bx      r3
@ 0x2236356


.align 2


.word 0x2235ef9 @ 0x2236358
.thumb
Function_223635c: @ 223635c :thumb
	push    {r3,lr}
	bl      Function_2236350
	ldrb    r2, [r0, #0xb]
	ldrb    r1, [r0, #0xa]
	lsl     r3, r2, #8
	ldrb    r2, [r0, #0xd]
	ldrb    r0, [r0, #0xc]
	lsl     r2, r2, #24
	lsl     r0, r0, #16
	orr     r0, r2
	orr     r0, r3
	orr     r0, r1
	pop     {r3,pc}
@ 0x2236378

.thumb
Function_2236378: @ 2236378 :thumb
	ldr     r3, [pc, #0x0] @ 0x223637c, (=0x2236351)
	bx      r3
@ 0x223637c

.word Function_2236350+1 @ =0x2236351, 0x223637c
.thumb
Function_2236380: @ 2236380 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x18
	mov     r5, r2
	mov     r6, #0x0
	blx 0x20e2178
	cmp     r1, #0x17
	bhi     branch_22363d6
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22363a0

Jumppoints_22363a0:
.hword branch_22363d0 - Jumppoints_22363a0 - 2
.hword branch_2236402 - Jumppoints_22363a0 - 2
.hword branch_2236432 - Jumppoints_22363a0 - 2
.hword branch_2236462 - Jumppoints_22363a0 - 2
.hword branch_2236492 - Jumppoints_22363a0 - 2
.hword branch_22364c2 - Jumppoints_22363a0 - 2
.hword branch_22364f2 - Jumppoints_22363a0 - 2
.hword branch_2236524 - Jumppoints_22363a0 - 2
.hword branch_2236554 - Jumppoints_22363a0 - 2
.hword branch_2236584 - Jumppoints_22363a0 - 2
.hword branch_22365b4 - Jumppoints_22363a0 - 2
.hword branch_22365e4 - Jumppoints_22363a0 - 2
.hword branch_2236614 - Jumppoints_22363a0 - 2
.hword branch_2236646 - Jumppoints_22363a0 - 2
.hword branch_2236676 - Jumppoints_22363a0 - 2
.hword branch_22366a6 - Jumppoints_22363a0 - 2
.hword branch_22366d6 - Jumppoints_22363a0 - 2
.hword branch_2236706 - Jumppoints_22363a0 - 2
.hword branch_2236736 - Jumppoints_22363a0 - 2
.hword branch_2236768 - Jumppoints_22363a0 - 2
.hword branch_2236798 - Jumppoints_22363a0 - 2
.hword branch_22367c8 - Jumppoints_22363a0 - 2
.hword branch_22367f8 - Jumppoints_22363a0 - 2
.hword branch_2236828 - Jumppoints_22363a0 - 2
.thumb
branch_22363d0: @ 22363d0 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bls     branch_22363d8
.thumb
branch_22363d6: @ 22363d6 :thumb
	b       branch_2236856
@ 0x22363d8

.thumb
branch_22363d8: @ 22363d8 :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22363e4

Jumppoints_22363e4:
.hword branch_22363ec - Jumppoints_22363e4 - 2
.hword branch_22363f0 - Jumppoints_22363e4 - 2
.hword branch_22363f6 - Jumppoints_22363e4 - 2
.hword branch_22363fc - Jumppoints_22363e4 - 2
.thumb
branch_22363ec: @ 22363ec :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22363f0

.thumb
branch_22363f0: @ 22363f0 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22363f6

.thumb
branch_22363f6: @ 22363f6 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22363fc

.thumb
branch_22363fc: @ 22363fc :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236402

.thumb
branch_2236402: @ 2236402 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_22364f8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236414

Jumppoints_2236414:
.hword branch_223641c - Jumppoints_2236414 - 2
.hword branch_2236420 - Jumppoints_2236414 - 2
.hword branch_2236426 - Jumppoints_2236414 - 2
.hword branch_223642c - Jumppoints_2236414 - 2
.thumb
branch_223641c: @ 223641c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236420

.thumb
branch_2236420: @ 2236420 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236426

.thumb
branch_2236426: @ 2236426 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x223642c

.thumb
branch_223642c: @ 223642c :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236432

.thumb
branch_2236432: @ 2236432 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_22364f8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236444

Jumppoints_2236444:
.hword branch_223644c - Jumppoints_2236444 - 2
.hword branch_2236450 - Jumppoints_2236444 - 2
.hword branch_2236456 - Jumppoints_2236444 - 2
.hword branch_223645c - Jumppoints_2236444 - 2
.thumb
branch_223644c: @ 223644c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236450

.thumb
branch_2236450: @ 2236450 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236456

.thumb
branch_2236456: @ 2236456 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x223645c

.thumb
branch_223645c: @ 223645c :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236462

.thumb
branch_2236462: @ 2236462 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_22364f8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236474

Jumppoints_2236474:
.hword branch_223647c - Jumppoints_2236474 - 2
.hword branch_2236480 - Jumppoints_2236474 - 2
.hword branch_2236486 - Jumppoints_2236474 - 2
.hword branch_223648c - Jumppoints_2236474 - 2
.thumb
branch_223647c: @ 223647c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236480

.thumb
branch_2236480: @ 2236480 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236486

.thumb
branch_2236486: @ 2236486 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x223648c

.thumb
branch_223648c: @ 223648c :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236492

.thumb
branch_2236492: @ 2236492 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_22364f8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22364a4

Jumppoints_22364a4:
.hword branch_22364ac - Jumppoints_22364a4 - 2
.hword branch_22364b0 - Jumppoints_22364a4 - 2
.hword branch_22364b6 - Jumppoints_22364a4 - 2
.hword branch_22364bc - Jumppoints_22364a4 - 2
.thumb
branch_22364ac: @ 22364ac :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22364b0

.thumb
branch_22364b0: @ 22364b0 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22364b6

.thumb
branch_22364b6: @ 22364b6 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22364bc

.thumb
branch_22364bc: @ 22364bc :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22364c2

.thumb
branch_22364c2: @ 22364c2 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_22364f8
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22364d4

Jumppoints_22364d4:
.hword branch_22364dc - Jumppoints_22364d4 - 2
.hword branch_22364e0 - Jumppoints_22364d4 - 2
.hword branch_22364e6 - Jumppoints_22364d4 - 2
.hword branch_22364ec - Jumppoints_22364d4 - 2
.thumb
branch_22364dc: @ 22364dc :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22364e0

.thumb
branch_22364e0: @ 22364e0 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22364e6

.thumb
branch_22364e6: @ 22364e6 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22364ec

.thumb
branch_22364ec: @ 22364ec :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22364f2

.thumb
branch_22364f2: @ 22364f2 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bls     branch_22364fa
.thumb
branch_22364f8: @ 22364f8 :thumb
	b       branch_2236856
@ 0x22364fa

.thumb
branch_22364fa: @ 22364fa :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236506

Jumppoints_2236506:
.hword branch_223650e - Jumppoints_2236506 - 2
.hword branch_2236514 - Jumppoints_2236506 - 2
.hword branch_2236518 - Jumppoints_2236506 - 2
.hword branch_223651e - Jumppoints_2236506 - 2
.thumb
branch_223650e: @ 223650e :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236514

.thumb
branch_2236514: @ 2236514 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236518

.thumb
branch_2236518: @ 2236518 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223651e

.thumb
branch_223651e: @ 223651e :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236524

.thumb
branch_2236524: @ 2236524 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223661a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236536

Jumppoints_2236536:
.hword branch_223653e - Jumppoints_2236536 - 2
.hword branch_2236544 - Jumppoints_2236536 - 2
.hword branch_2236548 - Jumppoints_2236536 - 2
.hword branch_223654e - Jumppoints_2236536 - 2
.thumb
branch_223653e: @ 223653e :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236544

.thumb
branch_2236544: @ 2236544 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236548

.thumb
branch_2236548: @ 2236548 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x223654e

.thumb
branch_223654e: @ 223654e :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236554

.thumb
branch_2236554: @ 2236554 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223661a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236566

Jumppoints_2236566:
.hword branch_223656e - Jumppoints_2236566 - 2
.hword branch_2236574 - Jumppoints_2236566 - 2
.hword branch_2236578 - Jumppoints_2236566 - 2
.hword branch_223657e - Jumppoints_2236566 - 2
.thumb
branch_223656e: @ 223656e :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236574

.thumb
branch_2236574: @ 2236574 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236578

.thumb
branch_2236578: @ 2236578 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x223657e

.thumb
branch_223657e: @ 223657e :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236584

.thumb
branch_2236584: @ 2236584 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223661a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236596

Jumppoints_2236596:
.hword branch_223659e - Jumppoints_2236596 - 2
.hword branch_22365a4 - Jumppoints_2236596 - 2
.hword branch_22365a8 - Jumppoints_2236596 - 2
.hword branch_22365ae - Jumppoints_2236596 - 2
.thumb
branch_223659e: @ 223659e :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22365a4

.thumb
branch_22365a4: @ 22365a4 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22365a8

.thumb
branch_22365a8: @ 22365a8 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22365ae

.thumb
branch_22365ae: @ 22365ae :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22365b4

.thumb
branch_22365b4: @ 22365b4 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223661a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22365c6

Jumppoints_22365c6:
.hword branch_22365ce - Jumppoints_22365c6 - 2
.hword branch_22365d4 - Jumppoints_22365c6 - 2
.hword branch_22365d8 - Jumppoints_22365c6 - 2
.hword branch_22365de - Jumppoints_22365c6 - 2
.thumb
branch_22365ce: @ 22365ce :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22365d4

.thumb
branch_22365d4: @ 22365d4 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22365d8

.thumb
branch_22365d8: @ 22365d8 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22365de

.thumb
branch_22365de: @ 22365de :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22365e4

.thumb
branch_22365e4: @ 22365e4 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223661a
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22365f6

Jumppoints_22365f6:
.hword branch_22365fe - Jumppoints_22365f6 - 2
.hword branch_2236604 - Jumppoints_22365f6 - 2
.hword branch_2236608 - Jumppoints_22365f6 - 2
.hword branch_223660e - Jumppoints_22365f6 - 2
.thumb
branch_22365fe: @ 22365fe :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236604

.thumb
branch_2236604: @ 2236604 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236608

.thumb
branch_2236608: @ 2236608 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223660e

.thumb
branch_223660e: @ 223660e :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236614

.thumb
branch_2236614: @ 2236614 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bls     branch_223661c
.thumb
branch_223661a: @ 223661a :thumb
	b       branch_2236856
@ 0x223661c

.thumb
branch_223661c: @ 223661c :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236628

Jumppoints_2236628:
.hword branch_2236630 - Jumppoints_2236628 - 2
.hword branch_2236636 - Jumppoints_2236628 - 2
.hword branch_223663c - Jumppoints_2236628 - 2
.hword branch_2236640 - Jumppoints_2236628 - 2
.thumb
branch_2236630: @ 2236630 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236636

.thumb
branch_2236636: @ 2236636 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223663c

.thumb
branch_223663c: @ 223663c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236640

.thumb
branch_2236640: @ 2236640 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236646

.thumb
branch_2236646: @ 2236646 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223673c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236658

Jumppoints_2236658:
.hword branch_2236660 - Jumppoints_2236658 - 2
.hword branch_2236666 - Jumppoints_2236658 - 2
.hword branch_223666c - Jumppoints_2236658 - 2
.hword branch_2236670 - Jumppoints_2236658 - 2
.thumb
branch_2236660: @ 2236660 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236666

.thumb
branch_2236666: @ 2236666 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x223666c

.thumb
branch_223666c: @ 223666c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236670

.thumb
branch_2236670: @ 2236670 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236676

.thumb
branch_2236676: @ 2236676 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223673c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236688

Jumppoints_2236688:
.hword branch_2236690 - Jumppoints_2236688 - 2
.hword branch_2236696 - Jumppoints_2236688 - 2
.hword branch_223669c - Jumppoints_2236688 - 2
.hword branch_22366a0 - Jumppoints_2236688 - 2
.thumb
branch_2236690: @ 2236690 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236696

.thumb
branch_2236696: @ 2236696 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x223669c

.thumb
branch_223669c: @ 223669c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22366a0

.thumb
branch_22366a0: @ 22366a0 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22366a6

.thumb
branch_22366a6: @ 22366a6 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223673c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22366b8

Jumppoints_22366b8:
.hword branch_22366c0 - Jumppoints_22366b8 - 2
.hword branch_22366c6 - Jumppoints_22366b8 - 2
.hword branch_22366cc - Jumppoints_22366b8 - 2
.hword branch_22366d0 - Jumppoints_22366b8 - 2
.thumb
branch_22366c0: @ 22366c0 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22366c6

.thumb
branch_22366c6: @ 22366c6 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22366cc

.thumb
branch_22366cc: @ 22366cc :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22366d0

.thumb
branch_22366d0: @ 22366d0 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22366d6

.thumb
branch_22366d6: @ 22366d6 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223673c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22366e8

Jumppoints_22366e8:
.hword branch_22366f0 - Jumppoints_22366e8 - 2
.hword branch_22366f6 - Jumppoints_22366e8 - 2
.hword branch_22366fc - Jumppoints_22366e8 - 2
.hword branch_2236700 - Jumppoints_22366e8 - 2
.thumb
branch_22366f0: @ 22366f0 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22366f6

.thumb
branch_22366f6: @ 22366f6 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22366fc

.thumb
branch_22366fc: @ 22366fc :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236700

.thumb
branch_2236700: @ 2236700 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236706

.thumb
branch_2236706: @ 2236706 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_223673c
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236718

Jumppoints_2236718:
.hword branch_2236720 - Jumppoints_2236718 - 2
.hword branch_2236726 - Jumppoints_2236718 - 2
.hword branch_223672c - Jumppoints_2236718 - 2
.hword branch_2236730 - Jumppoints_2236718 - 2
.thumb
branch_2236720: @ 2236720 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236726

.thumb
branch_2236726: @ 2236726 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223672c

.thumb
branch_223672c: @ 223672c :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236730

.thumb
branch_2236730: @ 2236730 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236736

.thumb
branch_2236736: @ 2236736 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bls     branch_223673e
.thumb
branch_223673c: @ 223673c :thumb
	b       branch_2236856
@ 0x223673e

.thumb
branch_223673e: @ 223673e :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223674a

Jumppoints_223674a:
.hword branch_2236752 - Jumppoints_223674a - 2
.hword branch_2236758 - Jumppoints_223674a - 2
.hword branch_223675e - Jumppoints_223674a - 2
.hword branch_2236764 - Jumppoints_223674a - 2
.thumb
branch_2236752: @ 2236752 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236758

.thumb
branch_2236758: @ 2236758 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223675e

.thumb
branch_223675e: @ 223675e :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236764

.thumb
branch_2236764: @ 2236764 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236768

.thumb
branch_2236768: @ 2236768 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_2236856
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223677a

Jumppoints_223677a:
.hword branch_2236782 - Jumppoints_223677a - 2
.hword branch_2236788 - Jumppoints_223677a - 2
.hword branch_223678e - Jumppoints_223677a - 2
.hword branch_2236794 - Jumppoints_223677a - 2
.thumb
branch_2236782: @ 2236782 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236788

.thumb
branch_2236788: @ 2236788 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x223678e

.thumb
branch_223678e: @ 223678e :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236794

.thumb
branch_2236794: @ 2236794 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236798

.thumb
branch_2236798: @ 2236798 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_2236856
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22367aa

Jumppoints_22367aa:
.hword branch_22367b2 - Jumppoints_22367aa - 2
.hword branch_22367b8 - Jumppoints_22367aa - 2
.hword branch_22367be - Jumppoints_22367aa - 2
.hword branch_22367c4 - Jumppoints_22367aa - 2
.thumb
branch_22367b2: @ 22367b2 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22367b8

.thumb
branch_22367b8: @ 22367b8 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22367be

.thumb
branch_22367be: @ 22367be :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22367c4

.thumb
branch_22367c4: @ 22367c4 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22367c8

.thumb
branch_22367c8: @ 22367c8 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_2236856
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22367da

Jumppoints_22367da:
.hword branch_22367e2 - Jumppoints_22367da - 2
.hword branch_22367e8 - Jumppoints_22367da - 2
.hword branch_22367ee - Jumppoints_22367da - 2
.hword branch_22367f4 - Jumppoints_22367da - 2
.thumb
branch_22367e2: @ 22367e2 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x22367e8

.thumb
branch_22367e8: @ 22367e8 :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x22367ee

.thumb
branch_22367ee: @ 22367ee :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x22367f4

.thumb
branch_22367f4: @ 22367f4 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x22367f8

.thumb
branch_22367f8: @ 22367f8 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_2236856
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223680a

Jumppoints_223680a:
.hword branch_2236812 - Jumppoints_223680a - 2
.hword branch_2236818 - Jumppoints_223680a - 2
.hword branch_223681e - Jumppoints_223680a - 2
.hword branch_2236824 - Jumppoints_223680a - 2
.thumb
branch_2236812: @ 2236812 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x2236818

.thumb
branch_2236818: @ 2236818 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x223681e

.thumb
branch_223681e: @ 223681e :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236824

.thumb
branch_2236824: @ 2236824 :thumb
	mov     r6, r4
	b       branch_2236856
@ 0x2236828

.thumb
branch_2236828: @ 2236828 :thumb
	add     r4, #0x20
	cmp     r5, #0x3
	bhi     branch_2236856
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223683a

Jumppoints_223683a:
.hword branch_2236842 - Jumppoints_223683a - 2
.hword branch_2236848 - Jumppoints_223683a - 2
.hword branch_223684e - Jumppoints_223683a - 2
.hword branch_2236854 - Jumppoints_223683a - 2
.thumb
branch_2236842: @ 2236842 :thumb
	mov     r6, r4
	add     r6, #0x24
	b       branch_2236856
@ 0x2236848

.thumb
branch_2236848: @ 2236848 :thumb
	mov     r6, r4
	add     r6, #0x18
	b       branch_2236856
@ 0x223684e

.thumb
branch_223684e: @ 223684e :thumb
	mov     r6, r4
	add     r6, #0xc
	b       branch_2236856
@ 0x2236854

.thumb
branch_2236854: @ 2236854 :thumb
	mov     r6, r4
.thumb
branch_2236856: @ 2236856 :thumb
	mov     r0, r6
	pop     {r4-r6,pc}
@ 0x223685a


.align 2, 0


.thumb
Function_223685c: @ 223685c :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, #0x0
	add     r4, #0x20
.thumb
branch_2236864: @ 2236864 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r1, [r0, #0x4]
	.hword  0x1c5b @ add r3, r3, #0x1
	eor     r2, r1
	str     r2, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	eor     r1, r2
	stmia   r4!, {r1}
	cmp     r3, #0xc
	bcc     branch_2236864
	pop     {r3,r4}
	bx      lr
@ 0x223687c

.thumb
Function_223687c: @ 223687c :thumb
	push    {r3,r4}
	mov     r4, r0
	mov     r3, #0x0
	add     r4, #0x20
.thumb
branch_2236884: @ 2236884 :thumb
	ldr     r2, [r4, #0x0]
	ldr     r1, [r0, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	eor     r2, r1
	str     r2, [r4, #0x0]
	ldr     r1, [r0, #0x4]
	eor     r1, r2
	stmia   r4!, {r1}
	cmp     r3, #0xc
	bcc     branch_2236884
	pop     {r3,r4}
	bx      lr
@ 0x223689c

.thumb
Function_223689c: @ 223689c :thumb
	push    {r3-r7,lr}
	mov     r1, r0
	mov     r4, #0x0
	ldr     r1, [r1, #0x0]
	str     r0, [sp, #0x0]
	mov     r2, r4
	bl      Function_2236380
	mov     r5, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      Function_2236380
	mov     r6, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x2
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      Function_2236380
	mov     r7, r0
	ldr     r0, [sp, #0x0]
	mov     r2, #0x3
	mov     r1, r0
	ldr     r1, [r1, #0x0]
	bl      Function_2236380
	mov     r1, r4
.thumb
branch_22368d8: @ 22368d8 :thumb
	ldrh    r2, [r5, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1cad @ add r5, r5, #0x2
	add     r2, r4, r2
	lsl     r2, r2, #16
	lsr     r4, r2, #16
	cmp     r1, #0x6
	blt     branch_22368d8
	mov     r2, #0x0
.thumb
branch_22368ea: @ 22368ea :thumb
	ldrh    r1, [r6, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r4, r1, #16
	cmp     r2, #0x6
	blt     branch_22368ea
	mov     r2, #0x0
.thumb
branch_22368fc: @ 22368fc :thumb
	ldrh    r1, [r7, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r4, r1, #16
	cmp     r2, #0x6
	blt     branch_22368fc
	mov     r2, #0x0
.thumb
branch_223690e: @ 223690e :thumb
	ldrh    r1, [r0, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	add     r1, r4, r1
	lsl     r1, r1, #16
	lsr     r4, r1, #16
	cmp     r2, #0x6
	blt     branch_223690e
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x2236922


.align 2, 0


.thumb
Function_2236924: @ 2236924 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, #0x0
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r7, r2
	mov     r5, r4
	str     r4, [sp, #0xc]
	str     r4, [sp, #0x8]
	str     r4, [sp, #0x4]
	cmp     r1, #0xa
	ble     branch_223699a
	ldr     r1, [r6, #0x0]
	mov     r2, r4
	bl      Function_2236380
	str     r0, [sp, #0xc]
	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x1
	bl      Function_2236380
	str     r0, [sp, #0x8]
	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x2
	bl      Function_2236380
	str     r0, [sp, #0x4]
	ldr     r1, [r6, #0x0]
	mov     r0, r6
	mov     r2, #0x3
	bl      Function_2236380
	mov     r5, r0
	mov     r0, r6
	bl      Function_223685c
	mov     r0, r6
	bl      Function_223689c
	ldrh    r1, [r6, #0x1c]
	cmp     r0, r1
	beq     branch_223699a
	ldrb    r0, [r6, #0x13]
	mov     r1, #0x1
	bic     r0, r1
	mov     r1, #0x1
	orr     r0, r1
	strb    r0, [r6, #0x13]
	ldrb    r1, [r6, #0x13]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r6, #0x13]
	mov     r0, #0x1
	ldr     r1, [r5, #0x4]
	lsl     r0, r0, #30
	orr     r0, r1
	str     r0, [r5, #0x4]
.thumb
branch_223699a: @ 223699a :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x50
	bls     branch_22369a2
	b       branch_2236c90
@ 0x22369a2

.thumb
branch_22369a2: @ 22369a2 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22369ae

Jumppoints_22369ae:
.hword branch_2236a50 - Jumppoints_22369ae - 2
.hword branch_2236a54 - Jumppoints_22369ae - 2
.hword branch_2236a58 - Jumppoints_22369ae - 2
.hword branch_2236a78 - Jumppoints_22369ae - 2
.hword branch_2236a7c - Jumppoints_22369ae - 2
.hword branch_2236a84 - Jumppoints_22369ae - 2
.hword branch_2236a8c - Jumppoints_22369ae - 2
.hword branch_2236a94 - Jumppoints_22369ae - 2
.hword branch_2236aa8 - Jumppoints_22369ae - 2
.hword branch_2236aac - Jumppoints_22369ae - 2
.hword branch_2236ab0 - Jumppoints_22369ae - 2
.hword branch_2236ab4 - Jumppoints_22369ae - 2
.hword branch_2236ac8 - Jumppoints_22369ae - 2
.hword branch_2236ae0 - Jumppoints_22369ae - 2
.hword branch_2236ae0 - Jumppoints_22369ae - 2
.hword branch_2236ae0 - Jumppoints_22369ae - 2
.hword branch_2236ae0 - Jumppoints_22369ae - 2
.hword branch_2236aec - Jumppoints_22369ae - 2
.hword branch_2236aec - Jumppoints_22369ae - 2
.hword branch_2236aec - Jumppoints_22369ae - 2
.hword branch_2236aec - Jumppoints_22369ae - 2
.hword branch_2236ad4 - Jumppoints_22369ae - 2
.hword branch_2236b1c - Jumppoints_22369ae - 2
.hword branch_2236b22 - Jumppoints_22369ae - 2
.hword branch_2236b28 - Jumppoints_22369ae - 2
.hword branch_2236ace - Jumppoints_22369ae - 2
.hword branch_2236af8 - Jumppoints_22369ae - 2
.hword branch_2236afe - Jumppoints_22369ae - 2
.hword branch_2236b04 - Jumppoints_22369ae - 2
.hword branch_2236b0a - Jumppoints_22369ae - 2
.hword branch_2236b10 - Jumppoints_22369ae - 2
.hword branch_2236b16 - Jumppoints_22369ae - 2
.hword branch_2236ada - Jumppoints_22369ae - 2
.hword branch_2236b2e - Jumppoints_22369ae - 2
.hword branch_2236b40 - Jumppoints_22369ae - 2
.hword branch_2236b48 - Jumppoints_22369ae - 2
.hword branch_2236b50 - Jumppoints_22369ae - 2
.hword branch_2236b58 - Jumppoints_22369ae - 2
.hword branch_2236b60 - Jumppoints_22369ae - 2
.hword branch_2236b6e - Jumppoints_22369ae - 2
.hword branch_2236b76 - Jumppoints_22369ae - 2
.hword branch_2236b7e - Jumppoints_22369ae - 2
.hword branch_2236b86 - Jumppoints_22369ae - 2
.hword branch_2236b8e - Jumppoints_22369ae - 2
.hword branch_2236b96 - Jumppoints_22369ae - 2
.hword branch_2236b9e - Jumppoints_22369ae - 2
.hword branch_2236ba6 - Jumppoints_22369ae - 2
.hword branch_2236b34 - Jumppoints_22369ae - 2
.hword branch_2236b3a - Jumppoints_22369ae - 2
.hword branch_2236b68 - Jumppoints_22369ae - 2
.hword branch_2236bac - Jumppoints_22369ae - 2
.hword branch_2236bb4 - Jumppoints_22369ae - 2
.hword branch_2236bbc - Jumppoints_22369ae - 2
.hword branch_2236bc4 - Jumppoints_22369ae - 2
.hword branch_2236bcc - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c90 - Jumppoints_22369ae - 2
.hword branch_2236c42 - Jumppoints_22369ae - 2
.hword branch_2236c60 - Jumppoints_22369ae - 2
.hword branch_2236bd4 - Jumppoints_22369ae - 2
.hword branch_2236bdc - Jumppoints_22369ae - 2
.hword branch_2236be4 - Jumppoints_22369ae - 2
.hword branch_2236bec - Jumppoints_22369ae - 2
.hword branch_2236bf4 - Jumppoints_22369ae - 2
.hword branch_2236bfc - Jumppoints_22369ae - 2
.hword branch_2236c04 - Jumppoints_22369ae - 2
.hword branch_2236c0c - Jumppoints_22369ae - 2
.hword branch_2236c14 - Jumppoints_22369ae - 2
.hword branch_2236c1c - Jumppoints_22369ae - 2
.hword branch_2236c24 - Jumppoints_22369ae - 2
.hword branch_2236c2c - Jumppoints_22369ae - 2
.hword branch_2236c34 - Jumppoints_22369ae - 2
.hword branch_2236c3c - Jumppoints_22369ae - 2
.thumb
branch_2236a50: @ 2236a50 :thumb
	ldr     r4, [r6, #0x0]
	b       branch_2236c90
@ 0x2236a54

.thumb
branch_2236a54: @ 2236a54 :thumb
	ldr     r4, [r6, #0x4]
	b       branch_2236c90
@ 0x2236a58

.thumb
branch_2236a58: @ 2236a58 :thumb
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2236a64
	mov     r4, #0x0
	b       branch_2236a72
@ 0x2236a64

.thumb
branch_2236a64: @ 2236a64 :thumb
	mov     r4, #0x0
.thumb
branch_2236a66: @ 2236a66 :thumb
	add     r0, r6, r4
	ldrb    r0, [r0, #0x8]
	strb    r0, [r7, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0xa
	bcc     branch_2236a66
.thumb
branch_2236a72: @ 2236a72 :thumb
	mov     r0, #0xff
	strb    r0, [r7, r4]
	b       branch_2236c90
@ 0x2236a78

.thumb
branch_2236a78: @ 2236a78 :thumb
	ldrb    r4, [r6, #0x12]
	b       branch_2236c90
@ 0x2236a7c

.thumb
branch_2236a7c: @ 2236a7c :thumb
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #31
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236a84

.thumb
branch_2236a84: @ 2236a84 :thumb
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #30
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236a8c

.thumb
branch_2236a8c: @ 2236a8c :thumb
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #29
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236a94

.thumb
branch_2236a94: @ 2236a94 :thumb
	mov     r4, #0x0
.thumb
branch_2236a96: @ 2236a96 :thumb
	add     r0, r6, r4
	ldrb    r0, [r0, #0x14]
	strb    r0, [r7, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x7
	bcc     branch_2236a96
	mov     r0, #0xff
	strb    r0, [r7, r4]
	b       branch_2236c90
@ 0x2236aa8

.thumb
branch_2236aa8: @ 2236aa8 :thumb
	ldrb    r4, [r6, #0x1b]
	b       branch_2236c90
@ 0x2236aac

.thumb
branch_2236aac: @ 2236aac :thumb
	ldrh    r4, [r6, #0x1c]
	b       branch_2236c90
@ 0x2236ab0

.thumb
branch_2236ab0: @ 2236ab0 :thumb
	ldrh    r4, [r6, #0x1e]
	b       branch_2236c90
@ 0x2236ab4

.thumb
branch_2236ab4: @ 2236ab4 :thumb
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2236ac2
	mov     r4, #0x67
	lsl     r4, r4, #2
	b       branch_2236c90
@ 0x2236ac2

.thumb
branch_2236ac2: @ 2236ac2 :thumb
	ldr     r0, [sp, #0xc]
	ldrh    r4, [r0, #0x0]
	b       branch_2236c90
@ 0x2236ac8

.thumb
branch_2236ac8: @ 2236ac8 :thumb
	ldr     r0, [sp, #0xc]
	ldrh    r4, [r0, #0x2]
	b       branch_2236c90
@ 0x2236ace

.thumb
branch_2236ace: @ 2236ace :thumb
	ldr     r0, [sp, #0xc]
	ldr     r4, [r0, #0x4]
	b       branch_2236c90
@ 0x2236ad4

.thumb
branch_2236ad4: @ 2236ad4 :thumb
	ldr     r0, [sp, #0xc]
	ldrb    r4, [r0, #0x8]
	b       branch_2236c90
@ 0x2236ada

.thumb
branch_2236ada: @ 2236ada :thumb
	ldr     r0, [sp, #0xc]
	ldrb    r4, [r0, #0x9]
	b       branch_2236c90
@ 0x2236ae0

.thumb
branch_2236ae0: @ 2236ae0 :thumb
	ldr     r0, [sp, #0x0]
	sub     r0, #0xd
	lsl     r1, r0, #1
	ldr     r0, [sp, #0x8]
	ldrh    r4, [r0, r1]
	b       branch_2236c90
@ 0x2236aec

.thumb
branch_2236aec: @ 2236aec :thumb
	ldr     r1, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	sub     r1, #0x11
	add     r0, r0, r1
	ldrb    r4, [r0, #0x8]
	b       branch_2236c90
@ 0x2236af8

.thumb
branch_2236af8: @ 2236af8 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x0]
	b       branch_2236c90
@ 0x2236afe

.thumb
branch_2236afe: @ 2236afe :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x1]
	b       branch_2236c90
@ 0x2236b04

.thumb
branch_2236b04: @ 2236b04 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x2]
	b       branch_2236c90
@ 0x2236b0a

.thumb
branch_2236b0a: @ 2236b0a :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x3]
	b       branch_2236c90
@ 0x2236b10

.thumb
branch_2236b10: @ 2236b10 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x4]
	b       branch_2236c90
@ 0x2236b16

.thumb
branch_2236b16: @ 2236b16 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x5]
	b       branch_2236c90
@ 0x2236b1c

.thumb
branch_2236b1c: @ 2236b1c :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x6]
	b       branch_2236c90
@ 0x2236b22

.thumb
branch_2236b22: @ 2236b22 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x7]
	b       branch_2236c90
@ 0x2236b28

.thumb
branch_2236b28: @ 2236b28 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x8]
	b       branch_2236c90
@ 0x2236b2e

.thumb
branch_2236b2e: @ 2236b2e :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0x9]
	b       branch_2236c90
@ 0x2236b34

.thumb
branch_2236b34: @ 2236b34 :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0xa]
	b       branch_2236c90
@ 0x2236b3a

.thumb
branch_2236b3a: @ 2236b3a :thumb
	ldr     r0, [sp, #0x4]
	ldrb    r4, [r0, #0xb]
	b       branch_2236c90
@ 0x2236b40

.thumb
branch_2236b40: @ 2236b40 :thumb
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	b       branch_2236c90
@ 0x2236b48

.thumb
branch_2236b48: @ 2236b48 :thumb
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #16
	lsr     r4, r0, #24
	b       branch_2236c90
@ 0x2236b50

.thumb
branch_2236b50: @ 2236b50 :thumb
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #9
	lsr     r4, r0, #25
	b       branch_2236c90
@ 0x2236b58

.thumb
branch_2236b58: @ 2236b58 :thumb
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #5
	lsr     r4, r0, #28
	b       branch_2236c90
@ 0x2236b60

.thumb
branch_2236b60: @ 2236b60 :thumb
	ldr     r0, [r5, #0x0]
	lsl     r0, r0, #1
	lsr     r4, r0, #28
	b       branch_2236c90
@ 0x2236b68

.thumb
branch_2236b68: @ 2236b68 :thumb
	ldr     r0, [r5, #0x0]
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236b6e

.thumb
branch_2236b6e: @ 2236b6e :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #27
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b76

.thumb
branch_2236b76: @ 2236b76 :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #22
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b7e

.thumb
branch_2236b7e: @ 2236b7e :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #17
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b86

.thumb
branch_2236b86: @ 2236b86 :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #12
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b8e

.thumb
branch_2236b8e: @ 2236b8e :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #7
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b96

.thumb
branch_2236b96: @ 2236b96 :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #2
	lsr     r4, r0, #27
	b       branch_2236c90
@ 0x2236b9e

.thumb
branch_2236b9e: @ 2236b9e :thumb
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #1
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236ba6

.thumb
branch_2236ba6: @ 2236ba6 :thumb
	ldr     r0, [r5, #0x4]
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236bac

.thumb
branch_2236bac: @ 2236bac :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #29
	lsr     r4, r0, #29
	b       branch_2236c90
@ 0x2236bb4

.thumb
branch_2236bb4: @ 2236bb4 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #26
	lsr     r4, r0, #29
	b       branch_2236c90
@ 0x2236bbc

.thumb
branch_2236bbc: @ 2236bbc :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #23
	lsr     r4, r0, #29
	b       branch_2236c90
@ 0x2236bc4

.thumb
branch_2236bc4: @ 2236bc4 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #20
	lsr     r4, r0, #29
	b       branch_2236c90
@ 0x2236bcc

.thumb
branch_2236bcc: @ 2236bcc :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #17
	lsr     r4, r0, #29
	b       branch_2236c90
@ 0x2236bd4

.thumb
branch_2236bd4: @ 2236bd4 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #16
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236bdc

.thumb
branch_2236bdc: @ 2236bdc :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #15
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236be4

.thumb
branch_2236be4: @ 2236be4 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #14
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236bec

.thumb
branch_2236bec: @ 2236bec :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #13
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236bf4

.thumb
branch_2236bf4: @ 2236bf4 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #12
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236bfc

.thumb
branch_2236bfc: @ 2236bfc :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #11
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c04

.thumb
branch_2236c04: @ 2236c04 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #10
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c0c

.thumb
branch_2236c0c: @ 2236c0c :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #9
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c14

.thumb
branch_2236c14: @ 2236c14 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #8
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c1c

.thumb
branch_2236c1c: @ 2236c1c :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #7
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c24

.thumb
branch_2236c24: @ 2236c24 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #6
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c2c

.thumb
branch_2236c2c: @ 2236c2c :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #5
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c34

.thumb
branch_2236c34: @ 2236c34 :thumb
	ldr     r0, [r5, #0x8]
	lsl     r0, r0, #1
	lsr     r4, r0, #28
	b       branch_2236c90
@ 0x2236c3c

.thumb
branch_2236c3c: @ 2236c3c :thumb
	ldr     r0, [r5, #0x8]
	lsr     r4, r0, #31
	b       branch_2236c90
@ 0x2236c42

.thumb
branch_2236c42: @ 2236c42 :thumb
	ldr     r0, [sp, #0xc]
	ldrh    r4, [r0, #0x0]
	cmp     r4, #0x0
	beq     branch_2236c90
	ldr     r0, [r5, #0x4]
	lsl     r0, r0, #1
	lsr     r0, r0, #31
	bne     branch_2236c5a
	ldrb    r0, [r6, #0x13]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	beq     branch_2236c90
.thumb
branch_2236c5a: @ 2236c5a :thumb
	mov     r4, #0x67
	lsl     r4, r4, #2
	b       branch_2236c90
@ 0x2236c60

.thumb
branch_2236c60: @ 2236c60 :thumb
	ldr     r4, [r5, #0x4]
	lsl     r0, r4, #2
	lsr     r0, r0, #27
	lsl     r5, r0, #25
	lsl     r0, r4, #7
	lsr     r0, r0, #27
	lsl     r3, r0, #20
	lsl     r0, r4, #12
	lsr     r0, r0, #27
	lsl     r2, r0, #15
	lsl     r0, r4, #17
	lsr     r0, r0, #27
	lsl     r1, r0, #10
	lsl     r0, r4, #27
	lsl     r4, r4, #22
	lsr     r4, r4, #27
	lsr     r0, r0, #27
	lsl     r4, r4, #5
	orr     r0, r4
	orr     r0, r1
	orr     r0, r2
	orr     r0, r3
	mov     r4, r5
	orr     r4, r0
.thumb
branch_2236c90: @ 2236c90 :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0xa
	ble     branch_2236c9c
	mov     r0, r6
	bl      Function_223687c
.thumb
branch_2236c9c: @ 2236c9c :thumb
	mov     r0, r4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2236ca2


.align 2, 0


.thumb
Function_2236ca4: @ 2236ca4 :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r4, r0
	mov     r5, r2
	mov     r7, #0x0
	cmp     r6, #0xa
	ble     branch_2236d18
	ldr     r1, [r4, #0x0]
	mov     r2, r7
	bl      Function_2236380
	mov     r7, r0
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	bl      Function_2236380
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	mov     r2, #0x2
	bl      Function_2236380
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	mov     r2, #0x3
	bl      Function_2236380
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_223685c
	mov     r0, r4
	bl      Function_223689c
	ldrh    r1, [r4, #0x1c]
	cmp     r0, r1
	beq     branch_2236d18
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x1
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0x13]
	ldrb    r1, [r4, #0x13]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0x13]
	ldr     r0, [sp, #0x0]
	ldr     r1, [r0, #0x4]
	mov     r0, #0x1
	lsl     r0, r0, #30
	orr     r1, r0
	ldr     r0, [sp, #0x0]
	str     r1, [r0, #0x4]
	mov     r0, r4
	bl      Function_223687c
	pop     {r3-r7,pc}
@ 0x2236d18

.thumb
branch_2236d18: @ 2236d18 :thumb
	cmp     r6, #0xb
	bhi     branch_2236dbc
	add     r0, r6, r6
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2236d28

Jumppoints_2236d28:
.hword branch_2236dbc - Jumppoints_2236d28 - 2
.hword branch_2236dbc - Jumppoints_2236d28 - 2
.hword branch_2236d40 - Jumppoints_2236d28 - 2
.hword branch_2236d50 - Jumppoints_2236d28 - 2
.hword branch_2236d56 - Jumppoints_2236d28 - 2
.hword branch_2236d68 - Jumppoints_2236d28 - 2
.hword branch_2236d7a - Jumppoints_2236d28 - 2
.hword branch_2236d8c - Jumppoints_2236d28 - 2
.hword branch_2236dbc - Jumppoints_2236d28 - 2
.hword branch_2236dbc - Jumppoints_2236d28 - 2
.hword branch_2236dbc - Jumppoints_2236d28 - 2
.hword branch_2236d9c - Jumppoints_2236d28 - 2
.thumb
branch_2236d40: @ 2236d40 :thumb
	mov     r2, #0x0
.thumb
branch_2236d42: @ 2236d42 :thumb
	ldrb    r1, [r5, r2]
	add     r0, r4, r2
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x8]
	cmp     r2, #0xa
	blt     branch_2236d42
	b       branch_2236dbc
@ 0x2236d50

.thumb
branch_2236d50: @ 2236d50 :thumb
	ldrb    r0, [r5, #0x0]
	strb    r0, [r4, #0x12]
	b       branch_2236dbc
@ 0x2236d56

.thumb
branch_2236d56: @ 2236d56 :thumb
	ldrb    r0, [r4, #0x13]
	ldrb    r2, [r5, #0x0]
	mov     r1, #0x1
	bic     r0, r1
	mov     r1, #0x1
	and     r1, r2
	orr     r0, r1
	strb    r0, [r4, #0x13]
	b       branch_2236dbc
@ 0x2236d68

.thumb
branch_2236d68: @ 2236d68 :thumb
	ldrb    r0, [r4, #0x13]
	mov     r1, #0x2
	bic     r0, r1
	ldrb    r1, [r5, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #30
	orr     r0, r1
	strb    r0, [r4, #0x13]
	b       branch_2236dbc
@ 0x2236d7a

.thumb
branch_2236d7a: @ 2236d7a :thumb
	ldrb    r0, [r4, #0x13]
	mov     r1, #0x4
	bic     r0, r1
	ldrb    r1, [r5, #0x0]
	lsl     r1, r1, #31
	lsr     r1, r1, #29
	orr     r0, r1
	strb    r0, [r4, #0x13]
	b       branch_2236dbc
@ 0x2236d8c

.thumb
branch_2236d8c: @ 2236d8c :thumb
	mov     r2, #0x0
.thumb
branch_2236d8e: @ 2236d8e :thumb
	ldrb    r1, [r5, r2]
	add     r0, r4, r2
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r1, [r0, #0x14]
	cmp     r2, #0x7
	blt     branch_2236d8e
	b       branch_2236dbc
@ 0x2236d9c

.thumb
branch_2236d9c: @ 2236d9c :thumb
	ldrb    r0, [r5, #0x1]
	ldrb    r1, [r5, #0x0]
	lsl     r0, r0, #8
	add     r0, r1, r0
	strh    r0, [r7, #0x0]
	ldrh    r0, [r7, #0x0]
	ldrb    r1, [r4, #0x13]
	cmp     r0, #0x0
	beq     branch_2236db6
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0x13]
	b       branch_2236dbc
@ 0x2236db6

.thumb
branch_2236db6: @ 2236db6 :thumb
	mov     r0, #0x2
	bic     r1, r0
	strb    r1, [r4, #0x13]
.thumb
branch_2236dbc: @ 2236dbc :thumb
	cmp     r6, #0xa
	ble     branch_2236dce
	mov     r0, r4
	bl      Function_223689c
	strh    r0, [r4, #0x1c]
	mov     r0, r4
	bl      Function_223687c
.thumb
branch_2236dce: @ 2236dce :thumb
	pop     {r3-r7,pc}
@ 0x2236dd0

.thumb
Function_2236dd0: @ 2236dd0 :thumb
	ldr     r1, [pc, #0x20] @ 0x2236df4, (=0x115)
	cmp     r0, r1
	blt     branch_2236df0
	ldr     r3, [pc, #0x20] @ 0x2236df8, (=0x223ed5c)
	mov     r2, #0x0
.thumb
branch_2236dda: @ 2236dda :thumb
	ldrh    r1, [r3, #0x0]
	cmp     r0, r1
	bne     branch_2236de8
	ldr     r0, [pc, #0x18] @ 0x2236dfc, (=0x223ed5e)
	lsl     r1, r2, #2
	ldrh    r0, [r0, r1]
	bx      lr
@ 0x2236de8

.thumb
branch_2236de8: @ 2236de8 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1d1b @ add r3, r3, #0x4
	cmp     r2, #0x90
	bcc     branch_2236dda
.thumb
branch_2236df0: @ 2236df0 :thumb
	bx      lr
@ 0x2236df2


.align 2


.word 0x115 @ 0x2236df4
.word 0x223ed5c @ 0x2236df8
.word 0x223ed5e @ 0x2236dfc
.thumb
Function_2236e00: @ 2236e00 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2236924
	bl      Function_2236dd0
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x19
	mov     r2, #0x0
	bl      Function_2236924
	mov     r1, r0
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      0x2075b78
	pop     {r3-r5,pc}
@ 0x2236e28

.thumb
Function_2236e28: @ 2236e28 :thumb
	push    {r4-r6,lr}
	mov     r4, r0
	mov     r0, r1
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	mov     r0, r4
	mov     r1, #0x2e
	mov     r2, #0x0
	bl      Function_2236924
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x19
	bl      0x20759f0
	cmp     r0, #0x0
	beq     branch_2236e82
	ldr     r2, [pc, #0x38] @ 0x2236e8c, (=0x223eca0)
	mov     r4, #0x0
.thumb
branch_2236e56: @ 2236e56 :thumb
	ldrh    r1, [r2, #0x0]
	cmp     r5, r1
	bne     branch_2236e66
	mov     r0, r5
	mov     r1, #0x18
	bl      0x20759f0
	b       branch_2236e6e
@ 0x2236e66

.thumb
branch_2236e66: @ 2236e66 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r4, #0x5e
	bcc     branch_2236e56
.thumb
branch_2236e6e: @ 2236e6e :thumb
	cmp     r4, #0x5e
	bne     branch_2236e8a
	mov     r1, #0x1
	tst     r1, r6
	bne     branch_2236e8a
	mov     r0, r5
	mov     r1, #0x18
	bl      0x20759f0
	pop     {r4-r6,pc}
@ 0x2236e82

.thumb
branch_2236e82: @ 2236e82 :thumb
	mov     r0, r5
	mov     r1, #0x18
	bl      0x20759f0
.thumb
branch_2236e8a: @ 2236e8a :thumb
	pop     {r4-r6,pc}
@ 0x2236e8c

.word 0x223eca0 @ 0x2236e8c
.thumb
Function_2236e90: @ 2236e90 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r4, r1
	mov     r6, r0
	mov     r0, r4
	bl      0x2073c54
	mov     r0, r4
	bl      0x2073d20
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r6
	mov     r2, r1
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x0
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0xb
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	bl      Function_2236dd0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	cmp     r0, #0x0
	beq     branch_2236ef2
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x207cf10
	str     r0, [sp, #0x8]
.thumb
branch_2236ef2: @ 2236ef2 :thumb
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x19
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x8
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, #0x46
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, r4
	bl      Function_2236e28
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xa
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x8
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xb
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0xc
	add     r2, sp, #0x4
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1a
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xd
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1b
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xe
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1c
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xf
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1d
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x10
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1e
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x11
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x1f
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x12
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x16
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x13
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x17
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x14
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x18
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x15
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x21
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x16
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x2f
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x17
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x30
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x18
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r5, #0x0
	mov     r7, r5
.thumb
branch_2237082: @ 2237082 :thumb
	mov     r1, r5
	mov     r0, r6
	add     r1, #0xd
	mov     r2, #0x0
	bl      Function_2236924
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x36
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x15
	mov     r2, #0x0
	bl      Function_2236924
	mov     r1, #0x3
	lsl     r1, r7
	str     r0, [sp, #0x8]
	and     r0, r1
	lsr     r0, r7
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x3e
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r1, r5
	mov     r0, r4
	add     r1, #0x42
	mov     r2, #0x0
	bl      0x2074570
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x3a
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cbf @ add r7, r7, #0x2
	cmp     r5, #0x4
	blt     branch_2237082
	mov     r0, r6
	mov     r1, #0x27
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x46
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x28
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x47
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x29
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x48
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x2a
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x49
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x2b
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x4a
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x2c
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x4b
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x2d
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x4c
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x32
	mov     r2, #0x0
	bl      Function_2236924
	mov     r7, r0
	cmp     r7, #0x4
	bgt     branch_22371a6
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22371a6
.thumb
branch_2237190: @ 2237190 :thumb
	mov     r0, #0x1
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x4e
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2237190
.thumb
branch_22371a6: @ 22371a6 :thumb
	mov     r0, r6
	mov     r1, #0x33
	mov     r2, #0x0
	bl      Function_2236924
	mov     r7, r0
	cmp     r7, #0x4
	bgt     branch_22371d2
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22371d2
.thumb
branch_22371bc: @ 22371bc :thumb
	mov     r0, #0x1
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x52
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_22371bc
.thumb
branch_22371d2: @ 22371d2 :thumb
	mov     r0, r6
	mov     r1, #0x34
	mov     r2, #0x0
	bl      Function_2236924
	mov     r7, r0
	cmp     r7, #0x4
	bgt     branch_22371fe
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_22371fe
.thumb
branch_22371e8: @ 22371e8 :thumb
	mov     r0, #0x1
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x56
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_22371e8
.thumb
branch_22371fe: @ 22371fe :thumb
	mov     r0, r6
	mov     r1, #0x35
	mov     r2, #0x0
	bl      Function_2236924
	mov     r7, r0
	cmp     r7, #0x4
	bgt     branch_223722a
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_223722a
.thumb
branch_2237214: @ 2237214 :thumb
	mov     r0, #0x1
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x5a
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2237214
.thumb
branch_223722a: @ 223722a :thumb
	mov     r0, r6
	mov     r1, #0x36
	mov     r2, #0x0
	bl      Function_2236924
	mov     r7, r0
	cmp     r7, #0x4
	bgt     branch_2237256
	mov     r5, #0x0
	cmp     r7, #0x0
	ble     branch_2237256
.thumb
branch_2237240: @ 2237240 :thumb
	mov     r0, #0x1
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, #0x5e
	add     r2, sp, #0x8
	bl      0x2074c60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, r7
	blt     branch_2237240
.thumb
branch_2237256: @ 2237256 :thumb
	mov     r0, r6
	mov     r1, #0x43
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x62
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x44
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x63
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x45
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x64
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x46
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x65
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x47
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x66
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x48
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x67
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x49
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x68
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x4a
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x69
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x4b
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6a
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6b
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x4d
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6c
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x4e
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6d
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x50
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6e
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r4
	bl      0x2075d74
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x6f
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	cmp     r0, #0xc9
	bne     branch_22373d2
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      Function_2236924
	mov     r3, r0
	mov     r7, #0x3
	lsl     r0, r7, #8
	and     r0, r3
	lsr     r1, r0, #6
	lsl     r0, r7, #24
	and     r0, r3
	lsr     r5, r0, #18
	lsl     r0, r7, #16
	and     r0, r3
	lsr     r0, r0, #12
	mov     r2, r3
	orr     r0, r5
	orr     r0, r1
	and     r2, r7
	str     r3, [sp, #0x8]
	orr     r0, r2
	mov     r1, #0x1c
	blx 0x20e2178
	str     r1, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x70
	add     r2, sp, #0x8
	bl      0x2074c60
.thumb
branch_22373d2: @ 22373d2 :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	ldr     r1, [pc, #0x134] @ 0x2237514, (=0x182)
	cmp     r0, r1
	bne     branch_2237422
	ldr     r0, [pc, #0x134] @ 0x2237518, (=0x21bf6dc)
	ldrb    r0, [r0, #0x6]
	cmp     r0, #0x5
	bhi     branch_2237402
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22373f6

Jumppoints_22373f6:
.hword branch_2237402 - Jumppoints_22373f6 - 2
.hword branch_2237402 - Jumppoints_22373f6 - 2
.hword branch_2237402 - Jumppoints_22373f6 - 2
.hword branch_2237414 - Jumppoints_22373f6 - 2
.hword branch_2237408 - Jumppoints_22373f6 - 2
.hword branch_223740e - Jumppoints_22373f6 - 2
.thumb
branch_2237402: @ 2237402 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	b       branch_2237418
@ 0x2237408

.thumb
branch_2237408: @ 2237408 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	b       branch_2237418
@ 0x223740e

.thumb
branch_223740e: @ 223740e :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	b       branch_2237418
@ 0x2237414

.thumb
branch_2237414: @ 2237414 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x8]
.thumb
branch_2237418: @ 2237418 :thumb
	mov     r0, r4
	mov     r1, #0x70
	add     r2, sp, #0x8
	bl      0x2074c60
.thumb
branch_2237422: @ 2237422 :thumb
	mov     r0, r6
	mov     r1, #0x2
	add     r2, sp, #0x24
	bl      Function_2236924
	ldr     r3, [sp, #0x4]
	add     r0, sp, #0x24
	add     r1, sp, #0xc
	mov     r2, #0xc
	bl      Function_223936c
	mov     r0, r4
	mov     r1, #0x76
	add     r2, sp, #0xc
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_2236924
	ldr     r1, [pc, #0xcc] @ 0x223751c, (=0x20e4c44)
	ldrb    r1, [r1, #0x0]
	cmp     r1, r0
	beq     branch_2237462
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x4d
	add     r2, sp, #0x8
	bl      0x2074c60
.thumb
branch_2237462: @ 2237462 :thumb
	mov     r0, r6
	mov     r1, #0x25
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x7a
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x7
	add     r2, sp, #0x24
	bl      Function_2236924
	ldr     r3, [sp, #0x4]
	add     r0, sp, #0x24
	add     r1, sp, #0xc
	mov     r2, #0x8
	bl      Function_223936c
	mov     r0, r4
	mov     r1, #0x90
	add     r2, sp, #0xc
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x23
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x99
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x22
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x9a
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x26
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x9b
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x24
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x9c
	add     r2, sp, #0x8
	bl      0x2074c60
	mov     r0, r6
	mov     r1, #0x31
	mov     r2, #0x0
	bl      Function_2236924
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x9d
	add     r2, sp, #0x8
	bl      0x2074c60
	ldr     r1, [sp, #0x0]
	mov     r0, r4
	bl      0x2073d48
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2237512


.align 2


.word 0x182 @ 0x2237514
.word 0x21bf6dc @ 0x2237518
.word 0x20e4c44 @ 0x223751c
.thumb
Function_2237520: @ 2237520 :thumb
	ldr     r1, [pc, #0x4] @ 0x2237528, (=0x223f54c)
	str     r0, [r1, #0x0]
	bx      lr
@ 0x2237526


.align 2


.word 0x223f54c @ 0x2237528
.thumb
Function_223752c: @ 223752c :thumb
	mov     r1, r0
	ldr     r0, [pc, #0x8] @ 0x2237538, (=0x223f54c)
	ldr     r3, [pc, #0x8] @ 0x223753c, (=0x2018145)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x2237536


.align 2


.word 0x223f54c @ 0x2237538
.word 0x2018145 @ 0x223753c
.thumb
Function_2237540: @ 2237540 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x1fc
	add     sp, #-0x1fc
	add     sp, #-0x130
	blx 0x20d0928
	lsr     r1, r0, #24
	lsl     r1, r1, #24
	lsr     r2, r1, #24
	lsr     r1, r0, #16
	lsl     r3, r0, #24
	lsr     r0, r0, #8
	lsl     r0, r0, #24
	lsl     r1, r1, #24
	lsr     r0, r0, #8
	lsr     r1, r1, #16
	orr     r0, r3
	orr     r0, r1
	mov     r6, r2
	orr     r6, r0
	ldr     r0, [pc, #0x68] @ 0x22375d4, (=0x223ef9c)
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bls     branch_22375ca
	ldr     r5, [pc, #0x64] @ 0x22375d8, (=0x223ef9c)
	add     r7, sp, #0x80
.thumb
branch_2237576: @ 2237576 :thumb
	ldr     r0, [r5, #0x0]
	cmp     r6, r0
	bne     branch_22375c0
	mov     r0, #0x1
	blx 0x20d0f48
	mov     r0, #0x81
	ldr     r2, [pc, #0x54] @ 0x22375dc, (=0x4a8)
	lsl     r0, r0, #20
	mov     r1, r7
	blx 0x20d0c5c
	ldr     r0, [pc, #0x50] @ 0x22375e0, (=0x8020000)
	add     r1, sp, #0x0
	mov     r2, #0x80
	blx 0x20d0c5c
	mov     r0, #0x0
	blx 0x20d0f48
	ldr     r0, [pc, #0x44] @ 0x22375e4, (=0x223752d)
	ldr     r1, [pc, #0x44] @ 0x22375e8, (=0x20181c5)
	blx     Function_223d5c8
	ldr     r1, [pc, #0x34] @ 0x22375dc, (=0x4a8)
	ldr     r3, [pc, #0x40] @ 0x22375ec, (=0x223da1c)
	mov     r0, r7
	add     r2, sp, #0x0
	blx     Function_2239498
	cmp     r0, #0x0
	beq     branch_22375c0
	add     sp, #0x1fc
	add     sp, #0x1fc
	add     sp, #0x130
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22375c0

.thumb
branch_22375c0: @ 22375c0 :thumb
	.hword  0x1d2d @ add r5, r5, #0x4
	ldr     r0, [r5, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, r0
	bcc     branch_2237576
.thumb
branch_22375ca: @ 22375ca :thumb
	mov     r0, #0x0
	add     sp, #0x1fc
	add     sp, #0x1fc
	add     sp, #0x130
	pop     {r3-r7,pc}
@ 0x22375d4

.word 0x223ef9c @ 0x22375d4
.word 0x223ef9c @ 0x22375d8
.word 0x4a8 @ 0x22375dc
.word 0x8020000 @ 0x22375e0
.word Function_223752c+1 @ =0x223752d, 0x22375e4
.word 0x20181c5 @ 0x22375e8
.word 0x223da1c @ 0x22375ec
.thumb
Function_22375f0: @ 22375f0 :thumb
	push    {r3,lr}
	blx 0x20d0fb4
	blx 0x20d08c0
	cmp     r0, #0x0
	bne     branch_2237602
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237602

.thumb
branch_2237602: @ 2237602 :thumb
	blx 0x20d0970
	ldr     r1, [pc, #0x18] @ 0x2237620, (=0x3130)
	cmp     r0, r1
	beq     branch_2237610
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237610

.thumb
branch_2237610: @ 2237610 :thumb
	bl      Function_2237540
	cmp     r0, #0x0
	beq     branch_223761c
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223761c

.thumb
branch_223761c: @ 223761c :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237620

.word 0x3130 @ 0x2237620
.thumb
Function_2237624: @ 2237624 :thumb
	push    {r3,lr}
	bl      Function_22375f0
	cmp     r0, #0x0
	bne     branch_2237632
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2237632

.thumb
branch_2237632: @ 2237632 :thumb
	mov     r0, #0x1
	blx 0x20d0f48
	mov     r0, #0x81
	lsl     r0, r0, #20
	add     r1, sp, #0x0
	blx 0x20d0e40
	mov     r0, #0x0
	blx 0x20d0f48
	ldr     r0, [sp, #0x0]
	pop     {r3,pc}
@ 0x223764c

.thumb
Function_223764c: @ 223764c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22375f0
	cmp     r0, #0x0
	bne     branch_223765e
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223765e

.thumb
branch_223765e: @ 223765e :thumb
	cmp     r4, #0x0
	bne     branch_2237668
	bl      Function_2237624
	mov     r4, r0
.thumb
branch_2237668: @ 2237668 :thumb
	mov     r0, #0x1
	blx 0x20d0f48
	ldr     r0, [pc, #0x20] @ 0x2237690, (=0x8100100)
	mov     r1, r5
	mov     r2, r4
	blx 0x20d0cb4
	mov     r4, r0
	mov     r0, #0x0
	blx 0x20d0f48
	blx 0x20d0a04
	cmp     r0, #0x0
	bne     branch_223768c
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x223768c

.thumb
branch_223768c: @ 223768c :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2237690

.word 0x8100100 @ 0x2237690
.thumb
Function_2237694: @ 2237694 :thumb
	push    {r3-r6}
	mov     r4, r0
	mov     r0, #0x0
	ldr     r6, [pc, #0x20] @ 0x22376bc, (=0x223f550)
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	mov     r5, #0x75
.thumb
branch_22376a4: @ 22376a4 :thumb
	stmia   r6!, {r0-r3}
	stmia   r6!, {r0-r3}
	.hword  0x1e6d @ sub r5, r5, #0x1
	bne     branch_22376a4
	stmia   r6!, {r0,r1}
	ldr     r0, [pc, #0x10] @ 0x22376c0, (=0x223f550)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	str     r4, [r0, #0x8]
	pop     {r3-r6}
	bx      lr
@ 0x22376ba


.align 2


.word 0x223f550 @ 0x22376bc
.word 0x223f550 @ 0x22376c0
.thumb
Function_22376c4: @ 22376c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r2
	mov     r6, r1
	mov     r0, #0x3
	mov     r2, r3
	bl      0x2017fc8
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, r4
	mov     r5, r0
	blx 0x20d5124
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, r5
	pop     {r4-r6,pc}
@ 0x22376fc

.thumb
Function_22376fc: @ 22376fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	ldr     r5, [pc, #0x7c] @ 0x2237780, (=0x223daac)
	mov     r6, r3
	mov     r7, r0
	mov     r4, r1
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x0
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	cmp     r2, #0x4
	str     r0, [r3, #0x0]
	add     r0, sp, #0x0
	strb    r2, [r0, #0x10]
	bhi     branch_2237756
	add     r0, r2, r2
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223772e

Jumppoints_223772e:
.hword branch_2237756 - Jumppoints_223772e - 2
.hword branch_2237738 - Jumppoints_223772e - 2
.hword branch_2237740 - Jumppoints_223772e - 2
.hword branch_2237748 - Jumppoints_223772e - 2
.hword branch_2237750 - Jumppoints_223772e - 2
.thumb
branch_2237738: @ 2237738 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #10
	str     r0, [sp, #0x8]
	b       branch_2237756
@ 0x2237740

.thumb
branch_2237740: @ 2237740 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	b       branch_2237756
@ 0x2237748

.thumb
branch_2237748: @ 2237748 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	b       branch_2237756
@ 0x2237750

.thumb
branch_2237750: @ 2237750 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
.thumb
branch_2237756: @ 2237756 :thumb
	lsr     r1, r6, #11
	add     r0, sp, #0x0
	strb    r1, [r0, #0x12]
	ldr     r1, [sp, #0x30]
	add     r2, sp, #0x0
	lsr     r1, r1, #14
	strb    r1, [r0, #0x13]
	lsl     r1, r4, #24
	mov     r0, r7
	lsr     r1, r1, #24
	mov     r3, #0x0
	bl      0x20183c4
	lsl     r1, r4, #24
	mov     r0, r7
	lsr     r1, r1, #24
	bl      0x2019ebc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223777e


.align 2


.word 0x223daac @ 0x2237780
.thumb
Function_2237784: @ 2237784 :thumb
	ldr     r1, [pc, #0x4] @ 0x223778c, (=0x223f550)
	str     r0, [r1, #0x10]
	bx      lr
@ 0x223778a


.align 2


.word 0x223f550 @ 0x223778c
.thumb
Function_2237790: @ 2237790 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x4c] @ 0x22377e4, (=0x223f550)
	mov     r5, r1
	ldr     r0, [r0, #0x10]
	mov     r4, r2
	mov     r6, r3
	ldr     r7, [pc, #0x44] @ 0x22377e8, (=0x223f550)
	cmp     r0, #0x0
	bne     branch_22377c0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	b       branch_22377d8
@ 0x22377c0

.thumb
branch_22377c0: @ 22377c0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	ldr     r3, [pc, #0x1c] @ 0x22377ec, (=0x7fff)
	mov     r0, #0x0
	mov     r2, r1
	bl      0x200f174
.thumb
branch_22377d8: @ 22377d8 :thumb
	cmp     r4, #0x0
	beq     branch_22377de
	str     r6, [r4, #0x0]
.thumb
branch_22377de: @ 22377de :thumb
	str     r5, [r7, #0xc]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x22377e4

.word 0x223f550 @ 0x22377e4
.word 0x223f550 @ 0x22377e8
.word 0x7fff @ 0x22377ec
.thumb
Function_22377f0: @ 22377f0 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r5, [pc, #0xc] @ 0x2237804, (=0x223f550)
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2237802
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0x0]
.thumb
branch_2237802: @ 2237802 :thumb
	pop     {r3-r5,pc}
@ 0x2237804

.word 0x223f550 @ 0x2237804
.thumb
Function_2237808: @ 2237808 :thumb
	push    {r3-r7,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r1, #0x0
	mov     r2, #0x54
	mov     r5, r0
	mov     r7, r3
	blx 0x20d5124
	mov     r0, #0x1
	str     r0, [r5, #0x4]
	str     r0, [r5, #0x8]
	.hword  0x1e80 @ sub r0, r0, #0x2
	str     r0, [r5, #0x4c]
	str     r4, [r5, #0x10]
	str     r6, [r5, #0x30]
	ldr     r0, [sp, #0x18]
	str     r7, [r5, #0x34]
	str     r0, [r5, #0x38]
	ldr     r0, [sp, #0x1c]
	mov     r2, #0x0
	str     r0, [r5, #0x3c]
	str     r2, [r5, #0x2c]
	ldr     r0, [pc, #0x1c] @ 0x2237854, (=0x1020f)
	str     r2, [r5, #0x40]
	str     r0, [r5, #0x44]
	mov     r0, r5
	mov     r1, #0xf
	add     r0, #0x48
	strb    r1, [r0, #0x0]
	str     r2, [r5, #0x0]
	str     r2, [r5, #0x24]
	str     r2, [r5, #0x20]
	str     r2, [r5, #0x14]
	mov     r0, #0xff
	str     r0, [r5, #0x50]
	pop     {r3-r7,pc}
@ 0x2237852


.align 2


.word 0x1020f @ 0x2237854
.thumb
Function_2237858: @ 2237858 :thumb
	str     r1, [r0, #0x18]
	str     r2, [r0, #0x1c]
	str     r3, [r0, #0x28]
	bx      lr
@ 0x2237860

.thumb
Function_2237860: @ 2237860 :thumb
	str     r1, [r0, #0x0]
	str     r2, [r0, #0x40]
	bx      lr
@ 0x2237866


.align 2, 0


.thumb
Function_2237868: @ 2237868 :thumb
	str     r1, [r0, #0x20]
	str     r2, [r0, #0x24]
	bx      lr
@ 0x223786e


.align 2, 0


.thumb
Function_2237870: @ 2237870 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	ldr     r4, [pc, #0xdc] @ 0x2237958, (=0x223f550)
	cmp     r1, r0
	beq     branch_223794e
	ldr     r0, [r5, #0x4c]
	cmp     r0, r1
	beq     branch_223794e
	str     r1, [r5, #0x4c]
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x1
	bne     branch_223789a
	mov     r1, r5
	add     r1, #0x48
	ldrb    r1, [r1, #0x0]
	ldr     r0, [r5, #0x10]
	bl      0x201ada4
.thumb
branch_223789a: @ 223789a :thumb
	mov     r0, #0x0
	ldr     r1, [r5, #0x4c]
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_223794e
	ldr     r2, [r5, #0x34]
	ldr     r3, [r4, #0x8]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      0x200b144
	ldr     r6, [r5, #0x14]
	str     r0, [sp, #0x10]
	cmp     r6, #0x0
	bne     branch_22378c0
	ldr     r0, [r4, #0x8]
	bl      0x200b358
	mov     r6, r0
.thumb
branch_22378c0: @ 22378c0 :thumb
	ldr     r1, [sp, #0x10]
	ldr     r2, [r5, #0x4c]
	ldr     r3, [r4, #0x8]
	mov     r0, r6
	bl      0x200b29c
	mov     r4, r0
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	bne     branch_22378f4
	ldr     r0, [r5, #0x24]
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x50]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x44]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x40]
	ldr     r3, [r5, #0x20]
	bl      0x201d78c
	mov     r7, r0
	b       branch_2237936
@ 0x22378f4

.thumb
branch_22378f4: @ 22378f4 :thumb
	ldr     r0, [r5, #0x40]
	mov     r1, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x2002df8
	mov     r2, r0
	ldr     r0, [r5, #0x40]
	mov     r1, r4
	bl      0x2002d7c
	mov     r7, r0
	ldr     r0, [r5, #0x10]
	bl      0x201c294
	lsl     r0, r0, #3
	sub     r3, r0, r7
	ldr     r0, [r5, #0x24]
	mov     r2, r4
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x50]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x44]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x40]
	bl      0x201d78c
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [r5, #0xc]
.thumb
branch_2237936: @ 2237936 :thumb
	mov     r0, r4
	bl      0x20237bc
	ldr     r0, [r5, #0x14]
	cmp     r0, #0x0
	bne     branch_2237948
	mov     r0, r6
	bl      0x200b3f0
.thumb
branch_2237948: @ 2237948 :thumb
	ldr     r0, [sp, #0x10]
	bl      0x200b190
.thumb
branch_223794e: @ 223794e :thumb
	mov     r0, #0xff
	str     r0, [r5, #0x50]
	mov     r0, r7
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2237958

.word 0x223f550 @ 0x2237958
.thumb
Function_223795c: @ 223795c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r4, r1
	ldr     r1, [r4, #0x10]
	mov     r6, r2
	ldr     r2, [r1, #0x0]
	mov     r5, r3
	cmp     r2, #0x0
	bne     branch_22379ae
	lsl     r2, r5, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x0]
	ldr     r2, [r4, #0x18]
	lsl     r3, r6, #24
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x1c]
	lsr     r3, r3, #24
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0x8]
	ldr     r2, [r4, #0x30]
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	str     r2, [sp, #0xc]
	ldr     r2, [r4, #0x28]
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	str     r2, [sp, #0x10]
	ldr     r2, [r4, #0x2c]
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      0x201a7e8
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_2237870
	mov     r5, r0
	b       branch_22379dc
@ 0x22379ae

.thumb
branch_22379ae: @ 22379ae :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r6, r0
	beq     branch_22379c0
	mov     r0, r1
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	bl      0x201c2ac
.thumb
branch_22379c0: @ 22379c0 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_22379d2
	lsl     r1, r5, #24
	ldr     r0, [r4, #0x10]
	lsr     r1, r1, #24
	bl      0x201c2b0
.thumb
branch_22379d2: @ 22379d2 :thumb
	ldr     r1, [sp, #0x28]
	mov     r0, r4
	bl      Function_2237870
	mov     r5, r0
.thumb
branch_22379dc: @ 22379dc :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x1
	bne     branch_2237a10
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	ldr     r0, [r4, #0x10]
	bne     branch_22379fe
	ldr     r2, [r4, #0x38]
	ldr     r3, [r4, #0x3c]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x200dc48
	b       branch_2237a10
@ 0x22379fe

.thumb
branch_22379fe: @ 22379fe :thumb
	ldr     r2, [r4, #0x38]
	ldr     r3, [r4, #0x3c]
	lsl     r2, r2, #16
	lsl     r3, r3, #24
	mov     r1, #0x0
	lsr     r2, r2, #16
	lsr     r3, r3, #24
	bl      0x200e060
.thumb
branch_2237a10: @ 2237a10 :thumb
	mov     r0, r5
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x2237a16


.align 2, 0


.thumb
Function_2237a18: @ 2237a18 :thumb
	ldr     r1, [r0, #0x18]
	ldr     r0, [r0, #0x1c]
	mul     r0, r1
	bx      lr
@ 0x2237a20

.thumb
Function_2237a20: @ 2237a20 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x30] @ 0x2237a58, (=0x223da9c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [pc, #0x28] @ 0x2237a5c, (=0x223f550)
	mov     r1, #0x10
	ldr     r0, [r0, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, r2
	mov     r2, r1
	bl      0x201e88c
	ldr     r1, [pc, #0x18] @ 0x2237a5c, (=0x223f550)
	mov     r0, #0x1e
	ldr     r1, [r1, #0x8]
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x2237a58

.word 0x223da9c @ 0x2237a58
.word 0x223f550 @ 0x2237a5c
.thumb
Function_2237a60: @ 2237a60 :thumb
	ldr     r0, [pc, #0xc] @ 0x2237a70, (=0x223f550)
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	beq     branch_2237a6c
	mov     r0, #0x1
	bx      lr
@ 0x2237a6c

.thumb
branch_2237a6c: @ 2237a6c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2237a70

.word 0x223f550 @ 0x2237a70
.thumb
Function_2237a74: @ 2237a74 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r6, [pc, #0x60] @ 0x2237adc, (=0x223f550)
	blx 0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	ldr     r2, [pc, #0x54] @ 0x2237ae0, (=0x223f550)
	str     r3, [sp, #0xc]
	ldr     r2, [r2, #0x8]
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	ldr     r2, [pc, #0x44] @ 0x2237ae0, (=0x223f550)
	ldr     r1, [pc, #0x48] @ 0x2237ae4, (=0x223f588)
	ldr     r2, [r2, #0x8]
	mov     r0, #0x80
	bl      0x20095c4
	ldr     r1, [pc, #0x38] @ 0x2237ae0, (=0x223f550)
	mov     r2, #0x1
	str     r0, [r1, #0x34]
	ldr     r0, [pc, #0x38] @ 0x2237ae4, (=0x223f588)
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	mov     r1, #0x3
	mov     r7, #0x16
	ldr     r0, [pc, #0x2c] @ 0x2237ae8, (=0x223f750)
	lsl     r1, r1, #18
	str     r1, [r0, #0x10]
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_2237ac4: @ 2237ac4 :thumb
	ldr     r2, [r6, #0x8]
	mov     r0, #0x20
	mov     r1, r4
	bl      0x2009714
	str     r0, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2237ac4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2237adc

.word 0x223f550 @ 0x2237adc
.word 0x223f550 @ 0x2237ae0
.word 0x223f588 @ 0x2237ae4
.word 0x223f750 @ 0x2237ae8
.thumb
Function_2237aec: @ 2237aec :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x14] @ 0x2237b04, (=0x223f550)
	ldr     r4, [pc, #0x14] @ 0x2237b08, (=0x223f550)
	ldr     r0, [r0, #0x34]
	cmp     r0, #0x0
	bne     branch_2237afc
	bl      0x2022974
.thumb
branch_2237afc: @ 2237afc :thumb
	add     r4, #0x34
	mov     r0, r4
	pop     {r4,pc}
@ 0x2237b02


.align 2


.word 0x223f550 @ 0x2237b04
.word 0x223f550 @ 0x2237b08
.thumb
Function_2237b0c: @ 2237b0c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r4, [sp, #0x54]
	mov     r6, r0
	mov     r12, r1
	str     r2, [sp, #0x2c]
	str     r3, [sp, #0x30]
	ldr     r5, [pc, #0x15c] @ 0x2237c78, (=0x223f550)
	cmp     r4, #0x0
	bne     branch_2237b24
	mov     r7, #0x1
	b       branch_2237b26
@ 0x2237b24

.thumb
branch_2237b24: @ 2237b24 :thumb
	mov     r7, #0x2
.thumb
branch_2237b26: @ 2237b26 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	cmp     r6, #0x10
	bne     branch_2237b32
	mov     r0, #0x0
	str     r0, [sp, #0x34]
.thumb
branch_2237b32: @ 2237b32 :thumb
	mov     r1, #0x0
	mvn     r1, r1
	mov     r0, r12
	cmp     r0, r1
	beq     branch_2237b60
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x8]
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r2, r12
	bl      0x200985c
	mov     r1, #0x18
	mul     r1, r4
	add     r2, r5, r1
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r2, r1]
.thumb
branch_2237b60: @ 2237b60 :thumb
	mov     r1, #0x0
	ldr     r0, [sp, #0x2c]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2237b92
	str     r4, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x8]
	ldr     r2, [sp, #0x2c]
	str     r0, [sp, #0xc]
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x18
	mul     r1, r4
	add     r2, r5, r1
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r2, r1]
.thumb
branch_2237b92: @ 2237b92 :thumb
	mov     r1, #0x0
	ldr     r0, [sp, #0x30]
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2237bc2
	str     r4, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	ldr     r2, [sp, #0x30]
	str     r0, [sp, #0x8]
	mov     r0, #0x5a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x34]
	mov     r1, r6
	bl      0x2009918
	mov     r1, #0x18
	mov     r2, r4
	mul     r2, r1
	add     r2, r5, r2
	lsl     r1, r1, #4
	str     r0, [r2, r1]
.thumb
branch_2237bc2: @ 2237bc2 :thumb
	mov     r0, #0x0
	ldr     r2, [sp, #0x50]
	mvn     r0, r0
	cmp     r2, r0
	beq     branch_2237bf0
	str     r4, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x8]
	ldr     r3, [sp, #0x34]
	str     r0, [sp, #0x8]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      0x2009918
	mov     r1, #0x18
	mul     r1, r4
	add     r2, r5, r1
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r2, r1]
.thumb
branch_2237bf0: @ 2237bf0 :thumb
	mov     r0, #0x18
	mov     r6, r4
	mul     r6, r0
	mov     r0, #0x5e
	add     r1, r5, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      0x200a328
	mov     r0, #0x5f
	add     r1, r5, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	bl      0x200a640
	mov     r0, #0x0
	mov     r2, #0x16
	str     r4, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	lsl     r2, r2, #4
	ldr     r1, [r5, r2]
	mov     r3, r4
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x1c]
	mov     r1, r2
	add     r1, #0xc
	ldr     r1, [r5, r1]
	add     r2, #0x48
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	mov     r0, #0x24
	add     r1, r5, r2
	mul     r0, r4
	add     r0, r1, r0
	mov     r1, r4
	mov     r2, r4
	bl      0x20093b4
	cmp     r4, #0x0
	bne     branch_2237c62
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	b       branch_2237c6a
@ 0x2237c62

.thumb
branch_2237c62: @ 2237c62 :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
.thumb
branch_2237c6a: @ 2237c6a :thumb
	ldr     r0, [pc, #0x10] @ 0x2237c7c, (=0x2237e59)
	mov     r1, #0x0
	bl      0x2017798
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2237c76


.align 2


.word 0x223f550 @ 0x2237c78
.word 0x2237e59 @ 0x2237c7c
.thumb
Function_2237c80: @ 2237c80 :thumb
	push    {r4,lr}
	mov     r2, r0
	mov     r4, r1
	mov     r1, r2
	ldr     r0, [pc, #0xc] @ 0x2237c98, (=0x223f588)
	mov     r2, r4
	bl      0x200964c
	ldr     r0, [pc, #0x8] @ 0x2237c9c, (=0x223f750)
	str     r4, [r0, #0x10]
	pop     {r4,pc}
@ 0x2237c96


.align 2


.word 0x223f588 @ 0x2237c98
.word 0x223f750 @ 0x2237c9c
.thumb
Function_2237ca0: @ 2237ca0 :thumb
	ldr     r3, [pc, #0x4] @ 0x2237ca8, (=0x2237cad)
	mov     r0, #0x0
	bx      r3
@ 0x2237ca6


.align 2


.word 0x2237cad @ 0x2237ca8
.thumb
Function_2237cac: @ 2237cac :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x58] @ 0x2237d0c, (=0x223f750)
	ldr     r4, [pc, #0x5c] @ 0x2237d10, (=0x223f550)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2237d00
	mov     r0, #0x83
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2237cfc
	.hword  0x1f00 @ sub r0, r0, #0x4
	ldr     r0, [r4, r0]
	bl      0x2021d34
	cmp     r0, #0x0
	bne     branch_2237ce0
	cmp     r5, #0x0
	bne     branch_2237ce0
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
.thumb
branch_2237ce0: @ 2237ce0 :thumb
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021d28
	mov     r1, #0x6
	ldr     r2, [r0, #0x4]
	lsl     r1, r1, #18
	cmp     r2, r1
	bge     branch_2237d00
	lsr     r1, r1, #7
	add     r1, r2, r1
	str     r1, [r0, #0x4]
	b       branch_2237d00
@ 0x2237cfc

.thumb
branch_2237cfc: @ 2237cfc :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_2237d00: @ 2237d00 :thumb
	ldr     r0, [r4, #0x34]
	cmp     r0, #0x0
	beq     branch_2237d0a
	bl      0x20219f8
.thumb
branch_2237d0a: @ 2237d0a :thumb
	pop     {r3-r5,pc}
@ 0x2237d0c

.word 0x223f750 @ 0x2237d0c
.word 0x223f550 @ 0x2237d10
.thumb
Function_2237d14: @ 2237d14 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x30
	mov     r4, r1
	ldr     r1, [pc, #0x80] @ 0x2237d9c, (=0x223f550)
	bne     branch_2237d76
	ldr     r4, [r1, #0x34]
	lsl     r2, r2, #12
	str     r4, [sp, #0x0]
	mov     r4, #0x6a
	lsl     r4, r4, #2
	add     r5, r1, r4
	mov     r4, #0x24
	mul     r4, r0
	add     r4, r5, r4
	str     r4, [sp, #0x4]
	mov     r4, #0x1
	lsl     r4, r4, #12
	mov     r5, #0x0
	str     r5, [sp, #0x10]
	str     r4, [sp, #0x14]
	str     r4, [sp, #0x18]
	str     r4, [sp, #0x1c]
	add     r4, sp, #0x0
	strh    r5, [r4, #0x20]
	str     r2, [sp, #0x8]
	lsl     r2, r3, #12
	str     r2, [sp, #0xc]
	mov     r2, #0xa
	str     r2, [sp, #0x24]
	cmp     r0, #0x0
	bne     branch_2237d56
	mov     r2, #0x1
	b       branch_2237d58
@ 0x2237d56

.thumb
branch_2237d56: @ 2237d56 :thumb
	mov     r2, #0x2
.thumb
branch_2237d58: @ 2237d58 :thumb
	ldr     r0, [r1, #0x8]
	str     r2, [sp, #0x28]
	str     r0, [sp, #0x2c]
	cmp     r2, #0x2
	bne     branch_2237d6e
	mov     r0, #0x21
	lsl     r0, r0, #4
	ldr     r2, [sp, #0xc]
	ldr     r0, [r1, r0]
	add     r0, r2, r0
	str     r0, [sp, #0xc]
.thumb
branch_2237d6e: @ 2237d6e :thumb
	add     r0, sp, #0x0
	bl      0x2021aa0
	mov     r4, r0
.thumb
branch_2237d76: @ 2237d76 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2021e80
	ldr     r1, [sp, #0x40]
	mov     r0, r4
	bl      0x2021d6c
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, r4
	add     sp, #0x30
	pop     {r3-r5,pc}
@ 0x2237d9c

.word 0x223f550 @ 0x2237d9c
.thumb
Function_2237da0: @ 2237da0 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x9c] @ 0x2237e40, (=0x223f750)
	ldr     r4, [pc, #0x9c] @ 0x2237e44, (=0x223f550)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2237dbe
	mov     r0, #0x82
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021bd4
	mov     r0, #0x82
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_2237dbe: @ 2237dbe :thumb
	mov     r1, #0x51
	ldr     r0, [pc, #0x84] @ 0x2237e48, (=0x223f584)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2237dce
	bl      0x200a4e4
.thumb
branch_2237dce: @ 2237dce :thumb
	mov     r1, #0x57
	ldr     r0, [pc, #0x74] @ 0x2237e48, (=0x223f584)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2237dde
	bl      0x200a4e4
.thumb
branch_2237dde: @ 2237dde :thumb
	mov     r1, #0x52
	ldr     r0, [pc, #0x64] @ 0x2237e48, (=0x223f584)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2237dee
	bl      0x200a6dc
.thumb
branch_2237dee: @ 2237dee :thumb
	mov     r1, #0x16
	ldr     r0, [pc, #0x54] @ 0x2237e48, (=0x223f584)
	lsl     r1, r1, #4
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	beq     branch_2237dfe
	bl      0x200a6dc
.thumb
branch_2237dfe: @ 2237dfe :thumb
	mov     r4, #0x0
	mov     r7, #0x4b
	ldr     r5, [pc, #0x44] @ 0x2237e48, (=0x223f584)
	mov     r6, r4
	lsl     r7, r7, #2
.thumb
branch_2237e08: @ 2237e08 :thumb
	mov     r0, #0x4b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2009754
	str     r6, [r5, r7]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2237e08
	ldr     r0, [pc, #0x28] @ 0x2237e48, (=0x223f584)
	ldr     r0, [r0, #0x0]
	bl      0x2021964
	ldr     r0, [pc, #0x20] @ 0x2237e48, (=0x223f584)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	pop     {r3-r7,pc}
@ 0x2237e40

.word 0x223f750 @ 0x2237e40
.word 0x223f550 @ 0x2237e44
.word 0x223f584 @ 0x2237e48
.thumb
Function_2237e4c: @ 2237e4c :thumb
	mov     r1, #0x1
	sub     r0, #0xa
	lsl     r1, r0
	mov     r0, r1
	bx      lr
@ 0x2237e56


.align 2, 0


.thumb
Function_2237e58: @ 2237e58 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x38] @ 0x2237e94, (=0x22403d0)
	ldr     r4, [pc, #0x38] @ 0x2237e98, (=0x223f550)
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_2237e72
	ldr     r1, [pc, #0x34] @ 0x2237e9c, (=0xea4)
	mov     r0, r4
	ldr     r1, [r4, r1]
	blx     r1
	ldr     r0, [pc, #0x2c] @ 0x2237e9c, (=0xea4)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_2237e72: @ 2237e72 :thumb
	bl      0x201dcac
	bl      0x200a858
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_2237e84
	bl      0x201c2b8
.thumb
branch_2237e84: @ 2237e84 :thumb
	ldr     r3, [pc, #0x18] @ 0x2237ea0, (=0x27e0000)
	ldr     r1, [pc, #0x1c] @ 0x2237ea4, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x2237e92


.align 2


.word 0x22403d0 @ 0x2237e94
.word 0x223f550 @ 0x2237e98
.word 0xea4 @ 0x2237e9c
.word 0x27e0000 @ 0x2237ea0
.word 0x3ff8 @ 0x2237ea4
.thumb
Function_2237ea8: @ 2237ea8 :thumb
	push    {r3,r4}
	add     sp, #-0x20
	ldr     r4, [pc, #0x44] @ 0x2237ef4, (=0x223dac8)
	add     r3, sp, #0x0
	mov     r2, #0x1e
.thumb
branch_2237eb2: @ 2237eb2 :thumb
	ldrb    r1, [r4, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r1, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_2237eb2
	add     r1, sp, #0x0
	ldrb    r2, [r1, #0x0]
	mov     r3, #0x0
	.hword  0x1e59 @ sub r1, r3, #0x1
	cmp     r2, r1
	beq     branch_2237eec
	add     r4, sp, #0x0
	.hword  0x1e59 @ sub r1, r3, #0x1
.thumb
branch_2237ece: @ 2237ece :thumb
	ldrb    r2, [r4, #0x0]
	cmp     r0, r2
	bne     branch_2237ee2
	add     r0, sp, #0x0
	lsl     r1, r3, #1
	add     r0, #0x1
	add     sp, #0x20
	ldrb    r0, [r0, r1]
	pop     {r3,r4}
	bx      lr
@ 0x2237ee2

.thumb
branch_2237ee2: @ 2237ee2 :thumb
	.hword  0x1ca4 @ add r4, r4, #0x2
	ldrb    r2, [r4, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r2, r1
	bne     branch_2237ece
.thumb
branch_2237eec: @ 2237eec :thumb
	mov     r0, #0x0
	add     sp, #0x20
	pop     {r3,r4}
	bx      lr
@ 0x2237ef4

.word 0x223dac8 @ 0x2237ef4
.thumb
Function_2237ef8: @ 2237ef8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r6, r1
	str     r0, [sp, #0x20]
	mov     r0, r6
	mov     r5, r2
	mov     r7, r3
	ldr     r4, [sp, #0x44]
	bl      0x2075d6c
	str     r0, [sp, #0x24]
	mov     r0, r6
	bl      0x2075e0c
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	lsl     r0, r7, #24
	ldr     r2, [sp, #0x24]
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	lsl     r1, r5, #16
	lsl     r2, r2, #24
	str     r0, [sp, #0x8]
	mov     r0, r4
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      0x2075fb4
	mov     r1, #0x0
	mov     r0, r6
	mov     r2, r1
	bl      0x2074470
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x40]
	ldr     r2, [pc, #0x60] @ 0x2237fb0, (=0x223f550)
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	str     r5, [sp, #0x1c]
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x2]
	ldr     r2, [r2, #0x8]
	bl      0x20136a4
	mov     r1, #0x32
	ldr     r0, [sp, #0x40]
	lsl     r1, r1, #6
	blx 0x20c2c54
	ldr     r0, [sp, #0x20]
	bl      0x2021f98
	mov     r1, #0x2
	blx 0x20a81b0
	mov     r2, #0x32
	mov     r1, r0
	lsl     r2, r2, #6
	ldr     r0, [sp, #0x40]
	add     r1, r1, r2
	blx 0x20c0314
	ldr     r0, [sp, #0x20]
	bl      0x2021f9c
	mov     r1, #0x2
	blx 0x20a81fc
	mov     r3, r0
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2237fb0, (=0x223f550)
	mov     r2, #0x5
	ldr     r0, [r0, #0x8]
	add     r3, #0x60
	str     r0, [sp, #0x4]
	ldrh    r0, [r4, #0x0]
	ldrh    r1, [r4, #0x4]
	bl      0x2006e84
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2237fb0

.word 0x223f550 @ 0x2237fb0
.thumb
Function_2237fb4: @ 2237fb4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x21
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x23
	mov     r2, #0x20
	mov     r3, #0x22
	bl      Function_2237b0c
	mov     r1, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #20
	bl      Function_2237c80
	mov     r3, #0x0
	mov     r1, #0x82
	str     r3, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, #0x1
	mov     r2, #0x80
	bl      Function_2237d14
	mov     r1, #0x82
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2237ff4

.thumb
Function_2237ff4: @ 2237ff4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0xc
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r4, r1
	mov     r6, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x36
	mov     r1, #0xa
	mov     r2, #0x0
	mov     r3, #0xb
	bl      Function_2237b0c
	mov     r1, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #20
	bl      Function_2237c80
	mov     r0, #0x1
	mov     r1, #0x82
	str     r0, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r2, #0x80
	mov     r3, #0x0
	bl      Function_2237d14
	mov     r2, #0x82
	lsl     r2, r2, #2
	add     r6, #0x8
	str     r0, [r5, r2]
	cmp     r4, #0x7
	bgt     branch_223804c
	cmp     r4, #0x1
	blt     branch_22380be
	beq     branch_2238050
	cmp     r4, #0x2
	beq     branch_2238086
	cmp     r4, #0x7
	beq     branch_22380a4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223804c

.thumb
branch_223804c: @ 223804c :thumb
	cmp     r4, #0xd
	bne     branch_22380be
.thumb
branch_2238050: @ 2238050 :thumb
	mov     r0, r6
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x70
	mov     r2, #0x0
	bl      0x2074470
	mov     r1, #0x85
	lsl     r1, r1, #2
	mov     r3, r0
	add     r0, r5, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x50] @ 0x22380c4, (=0xe94)
	sub     r1, #0xc
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r1]
	mov     r1, r6
	mov     r2, r4
	bl      Function_2237ef8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2238086

.thumb
branch_2238086: @ 2238086 :thumb
	mov     r0, r2
	add     r0, #0xc
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x34] @ 0x22380c4, (=0xe94)
	mov     r1, r6
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	sub     r2, #0x1a
	mov     r3, #0x0
	bl      Function_2237ef8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22380a4

.thumb
branch_22380a4: @ 22380a4 :thumb
	mov     r0, r2
	add     r0, #0xc
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x22380c4, (=0xe94)
	mov     r1, r6
	add     r0, r5, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, r2]
	sub     r2, #0x1a
	mov     r3, #0x1
	bl      Function_2237ef8
.thumb
branch_22380be: @ 22380be :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22380c2


.align 2


.word 0xe94 @ 0x22380c4
.thumb
Function_22380c8: @ 22380c8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	cmp     r1, #0xc
	bhi     branch_223810c
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22380de

Jumppoints_22380de:
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_22380f8 - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_22380fc - Jumppoints_22380de - 2
.hword branch_2238100 - Jumppoints_22380de - 2
.hword branch_2238106 - Jumppoints_22380de - 2
.hword branch_223810c - Jumppoints_22380de - 2
.hword branch_223810a - Jumppoints_22380de - 2
.thumb
branch_22380f8: @ 22380f8 :thumb
	ldr     r4, [r2, #0x4]
	b       branch_223810c
@ 0x22380fc

.thumb
branch_22380fc: @ 22380fc :thumb
	ldr     r4, [pc, #0x68] @ 0x2238168, (=0x1c6)
	b       branch_223810c
@ 0x2238100

.thumb
branch_2238100: @ 2238100 :thumb
	mov     r4, #0x71
	lsl     r4, r4, #2
	b       branch_223810c
@ 0x2238106

.thumb
branch_2238106: @ 2238106 :thumb
	ldr     r4, [pc, #0x64] @ 0x223816c, (=0x1c7)
	b       branch_223810c
@ 0x223810a

.thumb
branch_223810a: @ 223810a :thumb
	ldr     r4, [pc, #0x64] @ 0x2238170, (=0x1d3)
.thumb
branch_223810c: @ 223810c :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, #0x1
	bl      0x207ce78
	mov     r7, r0
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	mov     r1, #0x2
	bl      0x207ce78
	mov     r4, r0
	bl      0x207cf40
	mov     r6, r0
	bl      0x207cf44
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x10
	mov     r1, r7
	mov     r2, r4
	mov     r3, r6
	bl      Function_2237b0c
	mov     r1, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #20
	bl      Function_2237c80
	mov     r3, #0x0
	mov     r1, #0x82
	str     r3, [sp, #0x0]
	lsl     r1, r1, #2
	ldr     r1, [r5, r1]
	mov     r0, #0x1
	mov     r2, #0x80
	bl      Function_2237d14
	mov     r1, #0x82
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x2238166


.align 2


.word 0x1c6 @ 0x2238168
.word 0x1c7 @ 0x223816c
.word 0x1d3 @ 0x2238170
.thumb
Function_2238174: @ 2238174 :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r1, #0xc0
	str     r1, [sp, #0x0]
	ldr     r0, [r0, #0x8]
	mov     r2, #0x4
	mov     r3, r2
	str     r0, [sp, #0x4]
	mov     r0, #0x74
	mov     r1, #0x1d
	add     r3, #0xfc
	bl      0x2006e84
	add     sp, #0x8
	pop     {r3,pc}
@ 0x2238192


.align 2, 0


.thumb
Function_2238194: @ 2238194 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r6, r1
	ldrh    r4, [r6, #0x0]
	mov     r5, r0
	mov     r0, r4
	bl      Function_2237ea8
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xd4] @ 0x223828c, (=0x223f550)
	mov     r1, #0x1e
	ldr     r0, [r0, #0x8]
	mov     r2, r5
	str     r0, [sp, #0xc]
	mov     r0, #0x74
	mov     r3, #0x5
	bl      0x2006e3c
	mov     r2, #0x1
	ldr     r3, [pc, #0xc0] @ 0x223828c, (=0x223f550)
	str     r2, [sp, #0x0]
	ldr     r3, [r3, #0x8]
	mov     r0, #0x74
	mov     r1, #0x1f
	bl      0x2006fe8
	add     r1, sp, #0x14
	str     r0, [sp, #0x10]
	blx 0x20a7248
	ldr     r2, [sp, #0x14]
	mov     r3, #0x6
	mov     r0, r5
	mov     r1, #0x5
	add     r2, #0xc
	lsl     r3, r3, #8
	bl      0x2019574
	ldr     r0, [sp, #0x10]
	bl      0x20181c4
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	mov     r2, #0x0
	add     r7, #0x8
	str     r0, [sp, #0x4]
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019e2c
	mov     r0, r5
	mov     r1, #0x5
	bl      0x201c3c0
	ldr     r1, [pc, #0x74] @ 0x2238290, (=0x2238175)
	ldr     r0, [pc, #0x78] @ 0x2238294, (=0x22403d0)
	cmp     r4, #0xd
	str     r1, [r0, #0x24]
	ldr     r0, [pc, #0x68] @ 0x223828c, (=0x223f550)
	str     r5, [r0, #0x0]
	bhi     branch_223827a
	add     r0, r4, r4
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2238232

Jumppoints_2238232:
.hword branch_223827a - Jumppoints_2238232 - 2
.hword branch_2238264 - Jumppoints_2238232 - 2
.hword branch_2238264 - Jumppoints_2238232 - 2
.hword branch_2238270 - Jumppoints_2238232 - 2
.hword branch_223824e - Jumppoints_2238232 - 2
.hword branch_223824e - Jumppoints_2238232 - 2
.hword branch_223824e - Jumppoints_2238232 - 2
.hword branch_223825a - Jumppoints_2238232 - 2
.hword branch_2238270 - Jumppoints_2238232 - 2
.hword branch_2238270 - Jumppoints_2238232 - 2
.hword branch_2238270 - Jumppoints_2238232 - 2
.hword branch_223824e - Jumppoints_2238232 - 2
.hword branch_2238270 - Jumppoints_2238232 - 2
.hword branch_2238264 - Jumppoints_2238232 - 2
.thumb
branch_223824e: @ 223824e :thumb
	ldr     r0, [pc, #0x48] @ 0x2238298, (=0x223f550)
	mov     r1, r4
	mov     r2, r6
	bl      Function_2237fb4
	b       branch_223827a
@ 0x223825a

.thumb
branch_223825a: @ 223825a :thumb
	mov     r1, #0x83
	ldr     r0, [pc, #0x38] @ 0x2238298, (=0x223f550)
	mov     r2, #0x78
	lsl     r1, r1, #2
	str     r2, [r0, r1]
.thumb
branch_2238264: @ 2238264 :thumb
	ldr     r0, [pc, #0x30] @ 0x2238298, (=0x223f550)
	mov     r1, r4
	mov     r2, r6
	bl      Function_2237ff4
	b       branch_223827a
@ 0x2238270

.thumb
branch_2238270: @ 2238270 :thumb
	ldr     r0, [pc, #0x24] @ 0x2238298, (=0x223f550)
	mov     r1, r4
	mov     r2, r6
	bl      Function_22380c8
.thumb
branch_223827a: @ 223827a :thumb
	mov     r1, #0x82
	ldr     r0, [pc, #0x18] @ 0x2238298, (=0x223f550)
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223828c

.word 0x223f550 @ 0x223828c
.word 0x2238175 @ 0x2238290
.word 0x22403d0 @ 0x2238294
.word 0x223f550 @ 0x2238298
.thumb
Function_223829c: @ 223829c :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r1, #0x2
	mov     r5, r0
	mov     r0, r2
	lsl     r1, r1, #8
	str     r2, [sp, #0x0]
	bl      0x2018144
	ldr     r1, [pc, #0x68] @ 0x223831c, (=0xa001)
	mov     r4, r0
	blx 0x20d316c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x50
	blx 0x20d32d4
	mov     r6, r0
	mov     r0, r4
	bl      0x20181c4
	add     r0, sp, #0x4
	blx 0x20c3fa0
	add     r0, sp, #0x4
	ldrh    r1, [r0, #0x2]
	mov     r2, #0x0
	add     r3, sp, #0x4
	strh    r1, [r0, #0x6]
	ldr     r1, [pc, #0x44] @ 0x2238320, (=0xd679)
	strh    r6, [r0, #0x2]
.thumb
branch_22382de: @ 22382de :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	eor     r0, r1
	strh    r0, [r3, #0x0]
	ldrh    r1, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x4
	blt     branch_22382de
	mov     r1, #0x41
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	bl      0x2018144
	add     r1, sp, #0x4
	mov     r2, #0x8
	mov     r4, r0
	blx 0x20a49a4
	add     r5, #0x50
	mov     r2, #0xd6
	mov     r0, r4
	mov     r1, r5
	lsl     r2, r2, #2
	mov     r3, r7
	blx     Function_2239420
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223831c

.word 0xa001 @ 0x223831c
.word 0xd679 @ 0x2238320
.thumb
Function_2238324: @ 2238324 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r1
	mov     r1, #0x2
	mov     r5, r0
	mov     r0, r2
	lsl     r1, r1, #8
	str     r2, [sp, #0x0]
	bl      0x2018144
	ldr     r1, [pc, #0x80] @ 0x22383bc, (=0xa001)
	mov     r4, r0
	blx 0x20d316c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x50
	blx 0x20d32d4
	mov     r6, r0
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	bl      0x2033f3c
	ldrb    r2, [r0, #0x4]
	add     r1, sp, #0x4
	mov     r3, #0x0
	strb    r2, [r1, #0x0]
	ldrb    r2, [r0, #0x5]
	strb    r2, [r1, #0x1]
	ldrb    r2, [r0, #0x6]
	strb    r2, [r1, #0x2]
	ldrb    r2, [r0, #0x7]
	strb    r2, [r1, #0x3]
	ldrb    r2, [r0, #0x8]
	strb    r2, [r1, #0x4]
	ldrb    r0, [r0, #0x9]
	strb    r0, [r1, #0x5]
	add     r0, sp, #0x4
	ldrh    r2, [r0, #0x2]
	strh    r2, [r0, #0x6]
	ldr     r2, [pc, #0x44] @ 0x22383c0, (=0xd679)
	strh    r6, [r0, #0x2]
.thumb
branch_223837e: @ 223837e :thumb
	ldrh    r0, [r1, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	eor     r0, r2
	strh    r0, [r1, #0x0]
	ldrh    r2, [r1, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	cmp     r3, #0x4
	blt     branch_223837e
	mov     r1, #0x41
	ldr     r0, [sp, #0x0]
	lsl     r1, r1, #2
	bl      0x2018144
	add     r1, sp, #0x4
	mov     r2, #0x8
	mov     r4, r0
	blx 0x20a49a4
	add     r5, #0x50
	mov     r2, #0xd6
	mov     r0, r4
	mov     r1, r5
	lsl     r2, r2, #2
	mov     r3, r7
	blx     Function_2239420
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22383bc

.word 0xa001 @ 0x22383bc
.word 0xd679 @ 0x22383c0
.thumb
Function_22383c4: @ 22383c4 :thumb
	push    {r3,lr}
	cmp     r2, #0x0
	beq     branch_22383ce
	cmp     r2, #0x1
	pop     {r3,pc}
@ 0x22383ce

.thumb
branch_22383ce: @ 22383ce :thumb
	ldr     r0, [pc, #0x8] @ 0x22383d8, (=0x5dc)
	bl      0x2005748
	pop     {r3,pc}
@ 0x22383d6


.align 2


.word 0x5dc @ 0x22383d8
.thumb
Function_22383dc: @ 22383dc :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x1c] @ 0x22383fc, (=0x27fffa8)
	ldrh    r1, [r0, #0x0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	and     r0, r1
	asr     r0, r0, #15
	bne     branch_22383f8
	blx 0x20d08c0
	cmp     r0, #0x0
	bne     branch_22383f8
	blx 0x20d12e4
.thumb
branch_22383f8: @ 22383f8 :thumb
	pop     {r3,pc}
@ 0x22383fa


.align 2


.word 0x27fffa8 @ 0x22383fc
.thumb
Function_2238400: @ 2238400 :thumb
	push    {r3,lr}
	cmp     r0, #0x1
	bne     branch_2238428
	ldr     r1, [pc, #0x2c] @ 0x2238434, (=0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r1, #13
	ldr     r1, [pc, #0x24] @ 0x2238438, (=0x22383dd)
	blx 0x20c144c
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx 0x20c161c
	ldr     r1, [pc, #0x14] @ 0x2238434, (=0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x1
	strh    r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x2238428

.thumb
branch_2238428: @ 2238428 :thumb
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx 0x20c164c
	pop     {r3,pc}
@ 0x2238432


.align 2


.word 0x4000208 @ 0x2238434
.word 0x22383dd @ 0x2238438
.thumb
Function_223843c: @ 223843c :thumb
	bx      lr
@ 0x223843e


.align 2, 0


.thumb
Function_2238440: @ 2238440 :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x20] @ 0x2238464, (=0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x0
	strh    r0, [r1, #0x0]
	lsr     r0, r1, #13
	ldr     r1, [pc, #0x18] @ 0x2238468, (=0x223843d)
	blx 0x20c144c
	mov     r0, #0x2
	lsl     r0, r0, #12
	blx 0x20c161c
	ldr     r1, [pc, #0x8] @ 0x2238464, (=0x4000208)
	ldrh    r0, [r1, #0x0]
	mov     r0, #0x1
	strh    r0, [r1, #0x0]
	pop     {r3,pc}
@ 0x2238464

.word 0x4000208 @ 0x2238464
.word Function_223843c+1 @ =0x223843d, 0x2238468
.thumb
Function_223846c: @ 223846c :thumb
	ldr     r1, [pc, #0x8] @ 0x2238478, (=0x223f550)
	str     r0, [r1, #0x18]
	mov     r0, #0x0
	str     r0, [r1, #0x14]
	bx      lr
@ 0x2238476


.align 2


.word 0x223f550 @ 0x2238478
.thumb
Function_223847c: @ 223847c :thumb
	push    {r3-r5,lr}
	ldr     r0, [pc, #0x6c] @ 0x22384ec, (=0x223f550)
	ldr     r4, [pc, #0x6c] @ 0x22384f0, (=0x223f550)
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x4
	bhi     branch_22384e8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2238494

Jumppoints_2238494:
.hword branch_223849e - Jumppoints_2238494 - 2
.hword branch_22384b4 - Jumppoints_2238494 - 2
.hword branch_22384e8 - Jumppoints_2238494 - 2
.hword branch_22384e8 - Jumppoints_2238494 - 2
.hword branch_22384e8 - Jumppoints_2238494 - 2
.thumb
branch_223849e: @ 223849e :thumb
	mov     r0, #0x4
	bl      0x2017de0
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x2024814
	ldr     r0, [r4, #0x14]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x14]
	b       branch_22384e8
@ 0x22384b4

.thumb
branch_22384b4: @ 22384b4 :thumb
	ldr     r0, [r4, #0x18]
	bl      0x2024828
	mov     r5, r0
	cmp     r5, #0x3
	bne     branch_22384c6
	mov     r0, #0x3
	str     r0, [r4, #0x14]
	b       branch_22384d8
@ 0x22384c6

.thumb
branch_22384c6: @ 22384c6 :thumb
	cmp     r5, #0x2
	bne     branch_22384d0
	mov     r0, #0x2
	str     r0, [r4, #0x14]
	b       branch_22384d8
@ 0x22384d0

.thumb
branch_22384d0: @ 22384d0 :thumb
	cmp     r5, #0x1
	bne     branch_22384d8
	mov     r0, #0x4
	str     r0, [r4, #0x14]
.thumb
branch_22384d8: @ 22384d8 :thumb
	.hword  0x1ea8 @ sub r0, r5, #0x2
	cmp     r0, #0x1
	bhi     branch_22384e4
	mov     r0, #0x4
	bl      0x2017df0
.thumb
branch_22384e4: @ 22384e4 :thumb
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x22384e8

.thumb
branch_22384e8: @ 22384e8 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22384ec

.word 0x223f550 @ 0x22384ec
.word 0x223f550 @ 0x22384f0
.thumb
Function_22384f4: @ 22384f4 :thumb
	ldr     r0, [pc, #0xc] @ 0x2238504, (=0x223f550)
	ldr     r1, [pc, #0x10] @ 0x2238508, (=0x223f550)
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x4
	bne     branch_2238502
	mov     r0, #0x1
	str     r0, [r1, #0x14]
.thumb
branch_2238502: @ 2238502 :thumb
	bx      lr
@ 0x2238504

.word 0x223f550 @ 0x2238504
.word 0x223f550 @ 0x2238508
.thumb
Function_223850c: @ 223850c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2238524, (=0x223f550)
	ldr     r0, [r0, #0x18]
	bl      0x2024850
	ldr     r0, [pc, #0xc] @ 0x2238524, (=0x223f550)
	mov     r1, #0x3
	str     r1, [r0, #0x14]
	mov     r0, #0x4
	bl      0x2017df0
	pop     {r3,pc}
@ 0x2238524

.word 0x223f550 @ 0x2238524
.thumb
Function_2238528: @ 2238528 :thumb
	ldr     r0, [pc, #0x4] @ 0x2238530, (=0x223f550)
	ldr     r0, [r0, #0x14]
	bx      lr
@ 0x223852e


.align 2


.word 0x223f550 @ 0x2238530
.thumb
Function_2238534: @ 2238534 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x38] @ 0x2238570, (=0x22403f8)
	mov     r4, r0
	ldr     r2, [r1, #0x4]
	cmp     r2, #0x0
	beq     branch_2238550
	ldr     r3, [r1, #0x0]
	ldr     r1, [pc, #0x30] @ 0x2238574, (=0x1150)
	ldr     r0, [pc, #0x30] @ 0x2238578, (=0x223f10c)
	ldr     r1, [r3, r1]
	lsl     r3, r1, #2
	ldr     r1, [pc, #0x30] @ 0x223857c, (=0x223f0e4)
	ldr     r1, [r1, r3]
	blx     r2
.thumb
branch_2238550: @ 2238550 :thumb
	ldr     r3, [pc, #0x1c] @ 0x2238570, (=0x22403f8)
	ldr     r1, [pc, #0x20] @ 0x2238574, (=0x1150)
	ldr     r0, [r3, #0x0]
	str     r4, [r0, r1]
	ldr     r2, [r3, #0x4]
	cmp     r2, #0x0
	beq     branch_223856c
	ldr     r3, [r3, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2238580, (=0x223f114)
	ldr     r1, [r3, r1]
	lsl     r3, r1, #2
	ldr     r1, [pc, #0x14] @ 0x223857c, (=0x223f0e4)
	ldr     r1, [r1, r3]
	blx     r2
.thumb
branch_223856c: @ 223856c :thumb
	pop     {r4,pc}
@ 0x223856e


.align 2


.word 0x22403f8 @ 0x2238570
.word 0x1150 @ 0x2238574
.word 0x223f10c @ 0x2238578
.word 0x223f0e4 @ 0x223857c
.word 0x223f114 @ 0x2238580
.thumb
Function_2238584: @ 2238584 :thumb
	ldr     r1, [pc, #0x10] @ 0x2238598, (=0x22403f8)
	ldr     r3, [r1, #0x0]
	ldr     r1, [pc, #0x10] @ 0x223859c, (=0x1150)
	ldr     r2, [r3, r1]
	sub     r2, #0x9
	cmp     r2, #0x1
	bls     branch_2238596
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r3, r1]
.thumb
branch_2238596: @ 2238596 :thumb
	bx      lr
@ 0x2238598

.word 0x22403f8 @ 0x2238598
.word 0x1150 @ 0x223859c
.thumb
Function_22385a0: @ 22385a0 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x68] @ 0x223860c, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x68] @ 0x2238610, (=0x1150)
	ldr     r0, [r1, r0]
	cmp     r0, #0x4
	bne     branch_22385b2
	blx 0x20c42a8
.thumb
branch_22385b2: @ 22385b2 :thumb
	mov     r0, #0x2
	bl      Function_2238534
	ldr     r3, [pc, #0x50] @ 0x223860c, (=0x22403f8)
	ldr     r0, [pc, #0x58] @ 0x2238614, (=0xffff)
	ldr     r2, [r3, #0x0]
	ldr     r1, [pc, #0x58] @ 0x2238618, (=0xfcc)
	strh    r0, [r2, r1]
	.hword  0x1e8a @ sub r2, r1, #0x2
	ldr     r4, [r3, #0x0]
	.hword  0x1f09 @ sub r1, r1, #0x4
	strh    r0, [r4, r2]
	ldr     r2, [r3, #0x0]
	strh    r0, [r2, r1]
	bl      Function_2238624
	cmp     r0, #0x0
	bne     branch_22385f0
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0x2c] @ 0x223860c, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x223861c, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22385ec
	mov     r0, #0x4
	blx     r1
.thumb
branch_22385ec: @ 22385ec :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22385f0

.thumb
branch_22385f0: @ 22385f0 :thumb
	ldr     r1, [pc, #0x18] @ 0x223860c, (=0x22403f8)
	ldr     r0, [pc, #0x2c] @ 0x2238620, (=0x1158)
	ldr     r2, [r1, #0x0]
	mov     r3, #0x2
	strh    r3, [r2, r0]
	ldr     r1, [r1, #0x0]
	add     r0, #0x24
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238608
	mov     r0, #0x0
	blx     r1
.thumb
branch_2238608: @ 2238608 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223860c

.word 0x22403f8 @ 0x223860c
.word 0x1150 @ 0x2238610
.word 0xffff @ 0x2238614
.word 0xfcc @ 0x2238618
.word 0x117c @ 0x223861c
.word 0x1158 @ 0x2238620
.thumb
Function_2238624: @ 2238624 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0xd4] @ 0x22386fc, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xd4] @ 0x2238700, (=0x1150)
	ldr     r0, [r1, r0]
	cmp     r0, #0x2
	beq     branch_2238638
	blx 0x20c42a8
	mov     r0, #0x0
.thumb
branch_2238638: @ 2238638 :thumb
	blx 0x20ce7f4
	mov     r4, r0
	mov     r0, #0x2
	lsl     r0, r0, #14
	cmp     r4, r0
	bne     branch_2238650
	mov     r0, #0x3
	bl      Function_2238584
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2238650

.thumb
branch_2238650: @ 2238650 :thumb
	cmp     r4, #0x0
	bne     branch_223865e
	mov     r0, #0x16
	bl      Function_2238584
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x223865e

.thumb
branch_223865e: @ 223865e :thumb
	ldr     r0, [pc, #0x9c] @ 0x22386fc, (=0x22403f8)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0xa0] @ 0x2238704, (=0x1176)
	ldrh    r1, [r2, r0]
	cmp     r1, #0x10
	bcc     branch_22386a0
	sub     r1, #0x10
	mov     r5, #0x0
	mov     r7, #0xd
	mov     r6, #0x1
	b       branch_2238686
@ 0x2238674

.thumb
branch_2238674: @ 2238674 :thumb
	add     r0, r1, #0x1
	mov     r1, r7
	blx 0x20e1f6c
	mov     r0, r6
	lsl     r0, r1
	tst     r0, r4
	bne     branch_223868a
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_2238686: @ 2238686 :thumb
	cmp     r5, #0xd
	blt     branch_2238674
.thumb
branch_223868a: @ 223868a :thumb
	ldr     r2, [pc, #0x70] @ 0x22386fc, (=0x22403f8)
	mov     r4, r1
	ldr     r3, [r2, #0x0]
	ldr     r0, [pc, #0x70] @ 0x2238704, (=0x1176)
	add     r4, #0x10
	strh    r4, [r3, r0]
	add     r3, r1, #0x1
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x2238708, (=0xfc4)
	strh    r3, [r1, r0]
	b       branch_22386a4
@ 0x22386a0

.thumb
branch_22386a0: @ 22386a0 :thumb
	ldr     r0, [pc, #0x64] @ 0x2238708, (=0xfc4)
	strh    r1, [r2, r0]
.thumb
branch_22386a4: @ 22386a4 :thumb
	ldr     r2, [pc, #0x54] @ 0x22386fc, (=0x22403f8)
	ldr     r0, [pc, #0x64] @ 0x223870c, (=0xfc6)
	ldr     r1, [r2, #0x0]
	mov     r3, #0xdc
	strh    r3, [r1, r0]
	mov     r1, r0
	ldr     r3, [r2, #0x0]
	sub     r1, #0xc6
	add     r1, r3, r1
	.hword  0x1f80 @ sub r0, r0, #0x6
	str     r1, [r3, r0]
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2238710, (=0x1158)
	ldrh    r0, [r1, r0]
	cmp     r0, #0x3
	bne     branch_22386da
	mov     r5, #0x0
	ldr     r0, [pc, #0x4c] @ 0x2238714, (=0x1170)
	ldr     r1, [pc, #0x4c] @ 0x2238718, (=0xfc8)
	b       branch_22386d6
@ 0x22386cc

.thumb
branch_22386cc: @ 22386cc :thumb
	ldr     r3, [r2, #0x0]
	add     r4, r3, r5
	ldrb    r3, [r4, r0]
	.hword  0x1c6d @ add r5, r5, #0x1
	strb    r3, [r4, r1]
.thumb
branch_22386d6: @ 22386d6 :thumb
	cmp     r5, #0x6
	blt     branch_22386cc
.thumb
branch_22386da: @ 22386da :thumb
	ldr     r1, [pc, #0x20] @ 0x22386fc, (=0x22403f8)
	ldr     r0, [pc, #0x3c] @ 0x223871c, (=0x2238721)
	ldr     r2, [r1, #0x0]
	mov     r1, #0x3f
	lsl     r1, r1, #6
	add     r1, r2, r1
	blx 0x20cefa0
	cmp     r0, #0x2
	beq     branch_22386f6
	bl      Function_2238584
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22386f6

.thumb
branch_22386f6: @ 22386f6 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22386fa


.align 2


.word 0x22403f8 @ 0x22386fc
.word 0x1150 @ 0x2238700
.word 0x1176 @ 0x2238704
.word 0xfc4 @ 0x2238708
.word 0xfc6 @ 0x223870c
.word 0x1158 @ 0x2238710
.word 0x1170 @ 0x2238714
.word 0xfc8 @ 0x2238718
.word 0x2238721 @ 0x223871c
.thumb
Function_2238720: @ 2238720 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_2238746
	bl      Function_2238584
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0xfc] @ 0x2238834, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xfc] @ 0x2238838, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238832
	mov     r0, #0x4
	blx     r1
	pop     {r3-r5,pc}
@ 0x2238746

.thumb
branch_2238746: @ 2238746 :thumb
	ldr     r0, [pc, #0xec] @ 0x2238834, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x223883c, (=0x1150)
	ldr     r0, [r1, r0]
	cmp     r0, #0x2
	beq     branch_2238772
	bl      Function_2238858
	cmp     r0, #0x0
	bne     branch_2238832
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0xd0] @ 0x2238834, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x2238838, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238832
	mov     r0, #0x4
	blx     r1
	pop     {r3-r5,pc}
@ 0x2238772

.thumb
branch_2238772: @ 2238772 :thumb
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x3
	beq     branch_2238832
	cmp     r0, #0x4
	beq     branch_2238814
	cmp     r0, #0x5
	bne     branch_2238814
	mov     r0, #0xf
	lsl     r0, r0, #8
	add     r0, r1, r0
	mov     r1, #0xc0
	blx 0x20c2c1c
	ldrh    r0, [r4, #0x36]
	cmp     r0, #0x8
	bcc     branch_223879a
	ldr     r1, [r4, #0x3c]
	ldr     r0, [pc, #0xa8] @ 0x2238840, (=0x400318)
	cmp     r1, r0
	beq     branch_22387ac
.thumb
branch_223879a: @ 223879a :thumb
	ldr     r0, [pc, #0x98] @ 0x2238834, (=0x22403f8)
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	beq     branch_2238814
	ldr     r0, [pc, #0xa0] @ 0x2238844, (=0x223f118)
	ldr     r1, [r4, #0x3c]
	ldr     r2, [pc, #0x98] @ 0x2238840, (=0x400318)
	blx     r3
	b       branch_2238814
@ 0x22387ac

.thumb
branch_22387ac: @ 22387ac :thumb
	ldr     r1, [pc, #0x84] @ 0x2238834, (=0x22403f8)
	ldrh    r3, [r4, #0x12]
	ldr     r2, [r1, #0x0]
	ldr     r0, [pc, #0x94] @ 0x2238848, (=0x116c)
	str     r3, [r2, r0]
	ldr     r1, [r1, #0x0]
	sub     r0, #0x14
	ldrh    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_22387f8
	mov     r0, r4
	add     r0, #0x48
	bl      Function_2238ab4
	ldr     r2, [pc, #0x68] @ 0x2238834, (=0x22403f8)
	ldr     r1, [pc, #0x80] @ 0x223884c, (=0x1170)
	mov     r0, #0x0
.thumb
branch_22387ce: @ 22387ce :thumb
	add     r3, r4, r0
	ldrb    r5, [r3, #0xa]
	ldr     r3, [r2, #0x0]
	add     r3, r3, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r5, [r3, r1]
	cmp     r0, #0x6
	blt     branch_22387ce
	ldr     r1, [pc, #0x54] @ 0x2238834, (=0x22403f8)
	ldr     r0, [pc, #0x6c] @ 0x2238850, (=0x1176)
	ldr     r3, [r1, #0x0]
	ldrh    r2, [r3, r0]
	sub     r2, #0xf
	strh    r2, [r3, r0]
	ldr     r1, [r1, #0x0]
	.hword  0x1d80 @ add r0, r0, #0x6
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22387f8
	mov     r0, #0x1
	blx     r1
.thumb
branch_22387f8: @ 22387f8 :thumb
	add     r4, #0x48
	mov     r0, r4
	bl      Function_2238b34
	cmp     r0, #0x0
	beq     branch_2238814
	ldr     r0, [pc, #0x2c] @ 0x2238834, (=0x22403f8)
	mov     r2, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x48] @ 0x2238854, (=0x1158)
	strh    r2, [r1, r0]
	bl      Function_22389c8
	pop     {r3-r5,pc}
@ 0x2238814

.thumb
branch_2238814: @ 2238814 :thumb
	bl      Function_2238624
	cmp     r0, #0x0
	bne     branch_2238832
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0x10] @ 0x2238834, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2238838, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238832
	mov     r0, #0x4
	blx     r1
.thumb
branch_2238832: @ 2238832 :thumb
	pop     {r3-r5,pc}
@ 0x2238834

.word 0x22403f8 @ 0x2238834
.word 0x117c @ 0x2238838
.word 0x1150 @ 0x223883c
.word 0x400318 @ 0x2238840
.word 0x223f118 @ 0x2238844
.word 0x116c @ 0x2238848
.word 0x1170 @ 0x223884c
.word 0x1176 @ 0x2238850
.word 0x1158 @ 0x2238854
.thumb
Function_2238858: @ 2238858 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x14] @ 0x2238870, (=0x2238875)
	blx 0x20cf1dc
	cmp     r0, #0x2
	beq     branch_223886c
	bl      Function_2238584
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223886c

.thumb
branch_223886c: @ 223886c :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2238870

.word 0x2238875 @ 0x2238870
.thumb
Function_2238874: @ 2238874 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_2238882
	bl      Function_2238584
	pop     {r3,pc}
@ 0x2238882

.thumb
branch_2238882: @ 2238882 :thumb
	mov     r0, #0x1
	bl      Function_2238534
	pop     {r3,pc}
@ 0x223888a


.align 2, 0


.thumb
Function_223888c: @ 223888c :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_223889c
	mov     r0, #0xa
	bl      Function_2238534
	pop     {r3,pc}
@ 0x223889c

.thumb
branch_223889c: @ 223889c :thumb
	mov     r0, #0x0
	bl      Function_2238534
	ldr     r0, [pc, #0x10] @ 0x22388b4, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x22388b8, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22388b2
	mov     r0, #0x3
	blx     r1
.thumb
branch_22388b2: @ 22388b2 :thumb
	pop     {r3,pc}
@ 0x22388b4

.word 0x22403f8 @ 0x22388b4
.word 0x117c @ 0x22388b8
.thumb
Function_22388bc: @ 22388bc :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x22388d8, (=0x22403f8)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x22388dc, (=0x1154)
	str     r2, [r1, r0]
	bl      Function_2238908
	cmp     r0, #0x0
	beq     branch_22388d4
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22388d4

.thumb
branch_22388d4: @ 22388d4 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22388d8

.word 0x22403f8 @ 0x22388d8
.word 0x1154 @ 0x22388dc
.thumb
Function_22388e0: @ 22388e0 :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x8
	bne     branch_22388fe
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0x10] @ 0x2238900, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x2238904, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22388fe
	mov     r0, #0x4
	blx     r1
.thumb
branch_22388fe: @ 22388fe :thumb
	pop     {r3,pc}
@ 0x2238900

.word 0x22403f8 @ 0x2238900
.word 0x117c @ 0x2238904
.thumb
Function_2238908: @ 2238908 :thumb
	push    {r3,lr}
	mov     r0, #0x3
	bl      Function_2238534
	ldr     r0, [pc, #0x20] @ 0x2238934, (=0x22403f8)
	ldr     r1, [pc, #0x24] @ 0x2238938, (=0x223893d)
	ldr     r0, [r0, #0x0]
	mov     r2, #0x2
	blx 0x20cecc8
	cmp     r0, #0x2
	beq     branch_223892e
	bl      Function_2238584
	mov     r0, #0xa
	bl      Function_2238534
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223892e

.thumb
branch_223892e: @ 223892e :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2238932


.align 2


.word 0x22403f8 @ 0x2238934
.word 0x223893d @ 0x2238938
.thumb
Function_223893c: @ 223893c :thumb
	push    {r3,lr}
	ldrh    r0, [r0, #0x2]
	cmp     r0, #0x0
	beq     branch_2238950
	bl      Function_2238584
	mov     r0, #0xa
	bl      Function_2238534
	pop     {r3,pc}
@ 0x2238950

.thumb
branch_2238950: @ 2238950 :thumb
	ldr     r0, [pc, #0x20] @ 0x2238974, (=0x22388e1)
	blx 0x20ce478
	cmp     r0, #0x0
	beq     branch_2238966
	bl      Function_2238584
	mov     r0, #0xa
	bl      Function_2238534
	pop     {r3,pc}
@ 0x2238966

.thumb
branch_2238966: @ 2238966 :thumb
	mov     r0, #0x1
	bl      Function_2238534
	bl      Function_22385a0
	pop     {r3,pc}
@ 0x2238972


.align 2


.word Function_22388e0+1 @ =0x22388e1, 0x2238974
.thumb
Function_2238978: @ 2238978 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x22389b8, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x22389bc, (=0x1150)
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	beq     branch_223898a
	blx 0x20c42a8
.thumb
branch_223898a: @ 223898a :thumb
	mov     r0, #0x3
	bl      Function_2238534
	ldr     r0, [pc, #0x2c] @ 0x22389c0, (=0x223888d)
	blx 0x20ced88
	cmp     r0, #0x2
	beq     branch_22389b4
	mov     r0, #0x9
	bl      Function_2238534
	ldr     r0, [pc, #0x14] @ 0x22389b8, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x22389c4, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_22389b0
	mov     r0, #0x4
	blx     r1
.thumb
branch_22389b0: @ 22389b0 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22389b4

.thumb
branch_22389b4: @ 22389b4 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22389b8

.word 0x22403f8 @ 0x22389b8
.word 0x1150 @ 0x22389bc
.word 0x223888d @ 0x22389c0
.word 0x117c @ 0x22389c4
.thumb
Function_22389c8: @ 22389c8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x22389e4, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x18] @ 0x22389e8, (=0x1150)
	ldr     r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_22389dc
	bl      Function_2238978
	pop     {r3,pc}
@ 0x22389dc

.thumb
branch_22389dc: @ 22389dc :thumb
	bl      Function_22389ec
	pop     {r3,pc}
@ 0x22389e2


.align 2


.word 0x22403f8 @ 0x22389e4
.word 0x1150 @ 0x22389e8
.thumb
Function_22389ec: @ 22389ec :thumb
	push    {r3,lr}
	mov     r0, #0x3
	bl      Function_2238534
	ldr     r0, [pc, #0x14] @ 0x2238a0c, (=0x2238a11)
	blx 0x20ced50
	cmp     r0, #0x2
	beq     branch_2238a06
	bl      Function_2238584
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2238a06

.thumb
branch_2238a06: @ 2238a06 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x2238a0a


.align 2


.word 0x2238a11 @ 0x2238a0c
.thumb
Function_2238a10: @ 2238a10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r0, [r4, #0x2]
	cmp     r0, #0x0
	beq     branch_2238a38
	mov     r0, #0x9
	bl      Function_2238534
	ldrh    r0, [r4, #0x2]
	bl      Function_2238584
	ldr     r0, [pc, #0x1c] @ 0x2238a44, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x2238a48, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238a42
	mov     r0, #0x4
	blx     r1
	pop     {r4,pc}
@ 0x2238a38

.thumb
branch_2238a38: @ 2238a38 :thumb
	mov     r0, #0x1
	bl      Function_2238534
	bl      Function_2238978
.thumb
branch_2238a42: @ 2238a42 :thumb
	pop     {r4,pc}
@ 0x2238a44

.word 0x22403f8 @ 0x2238a44
.word 0x117c @ 0x2238a48
.thumb
Function_2238a4c: @ 2238a4c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	add     r2, #0x1f
	mov     r0, #0x1f
	bic     r2, r0
	ldr     r4, [pc, #0x50] @ 0x2238aa8, (=0x22403f8)
	ldr     r3, [pc, #0x50] @ 0x2238aac, (=0x1150)
	str     r2, [r4, #0x0]
	mov     r0, #0x0
	str     r0, [r2, r3]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	mov     r6, #0x1
	add     r2, #0x8
	strh    r6, [r5, r2]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	add     r2, #0x28
	str     r7, [r5, r2]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	add     r2, #0xc
	strh    r0, [r5, r2]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	add     r2, #0xe
	strh    r0, [r5, r2]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	add     r2, #0x2c
	str     r1, [r5, r2]
	mov     r2, r3
	ldr     r5, [r4, #0x0]
	mov     r1, #0x10
	add     r2, #0x26
	strh    r1, [r5, r2]
	ldr     r5, [r4, #0x0]
	ldr     r2, [pc, #0x18] @ 0x2238ab0, (=0x1048)
	sub     r1, #0x11
	str     r0, [r5, r2]
	ldr     r0, [r4, #0x0]
	add     r3, #0x1c
	str     r1, [r0, r3]
	bl      Function_22388bc
	pop     {r3-r7,pc}
@ 0x2238aa8

.word 0x22403f8 @ 0x2238aa8
.word 0x1150 @ 0x2238aac
.word 0x1048 @ 0x2238ab0
.thumb
Function_2238ab4: @ 2238ab4 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0x6c] @ 0x2238b24, (=0x22403f8)
	ldr     r1, [pc, #0x6c] @ 0x2238b28, (=0x1048)
	ldr     r2, [r3, #0x0]
	mov     r4, #0x0
	str     r4, [r2, r1]
	ldr     r1, [r3, #0x0]
	ldr     r2, [pc, #0x68] @ 0x2238b2c, (=0x1158)
	mov     r4, #0x3
	strh    r4, [r1, r2]
	ldrh    r5, [r0, #0x0]
	ldr     r4, [r3, #0x0]
	add     r1, r2, #0x2
	strh    r5, [r4, r1]
	ldr     r4, [r0, #0x4]
	mov     r0, r2
	ldr     r1, [r3, #0x0]
	add     r0, #0x8
	str     r4, [r1, r0]
	ldr     r4, [r3, #0x0]
	add     r2, #0x8
	ldr     r0, [r4, r2]
	mov     r1, #0x68
	.hword  0x1e40 @ sub r0, r0, #0x1
	blx 0x20e2178
	ldr     r2, [pc, #0x44] @ 0x2238b30, (=0x115c)
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, r2]
	ldr     r4, [pc, #0x34] @ 0x2238b24, (=0x22403f8)
	mov     r0, #0x0
	ldr     r3, [r4, #0x0]
	add     r1, r2, #0x2
	strh    r0, [r3, r1]
	mov     r1, r2
	ldr     r3, [r4, #0x0]
	add     r1, #0x8
	str     r0, [r3, r1]
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r1, r2]
	cmp     r2, #0x0
	ble     branch_2238b20
	mov     r2, #0x46
	lsl     r2, r2, #6
	mov     r3, r2
	mov     r6, r0
	sub     r3, #0x24
.thumb
branch_2238b12: @ 2238b12 :thumb
	add     r1, r1, r0
	strb    r6, [r1, r2]
	ldr     r1, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrh    r5, [r1, r3]
	cmp     r0, r5
	blt     branch_2238b12
.thumb
branch_2238b20: @ 2238b20 :thumb
	pop     {r4-r6,pc}
@ 0x2238b22


.align 2


.word 0x22403f8 @ 0x2238b24
.word 0x1048 @ 0x2238b28
.word 0x1158 @ 0x2238b2c
.word 0x115c @ 0x2238b30
.thumb
Function_2238b34: @ 2238b34 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x114] @ 0x2238c50, (=0x22403f8)
	ldrh    r1, [r4, #0x0]
	ldr     r3, [r0, #0x0]
	ldr     r0, [pc, #0x114] @ 0x2238c54, (=0x115a)
	ldrh    r2, [r3, r0]
	cmp     r2, r1
	bne     branch_2238b50
	.hword  0x1d80 @ add r0, r0, #0x6
	ldr     r1, [r3, r0]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	beq     branch_2238b7c
.thumb
branch_2238b50: @ 2238b50 :thumb
	ldr     r0, [pc, #0xfc] @ 0x2238c50, (=0x22403f8)
	ldr     r3, [r0, #0x0]
	ldr     r0, [pc, #0x100] @ 0x2238c58, (=0x1164)
	ldr     r2, [r3, r0]
	add     r1, r2, #0x1
	str     r1, [r3, r0]
	cmp     r2, #0x10
	bcc     branch_2238b78
	mov     r0, r4
	bl      Function_2238ab4
	ldr     r0, [pc, #0xe8] @ 0x2238c50, (=0x22403f8)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xf0] @ 0x2238c5c, (=0x117c)
	ldr     r1, [r1, r0]
	cmp     r1, #0x0
	beq     branch_2238b7c
	mov     r0, #0x5
	blx     r1
	b       branch_2238b7c
@ 0x2238b78

.thumb
branch_2238b78: @ 2238b78 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2238b7c

.thumb
branch_2238b7c: @ 2238b7c :thumb
	ldrh    r3, [r4, #0x2]
	ldr     r0, [pc, #0xe0] @ 0x2238c60, (=0xffff)
	cmp     r3, r0
	bne     branch_2238ba4
	ldr     r1, [pc, #0xc8] @ 0x2238c50, (=0x22403f8)
	add     r4, #0x8
	ldr     r2, [r1, #0x0]
	mov     r1, #0xfe
	lsl     r1, r1, #4
	add     r1, r2, r1
	mov     r0, r4
	mov     r2, #0x68
	blx 0x20c4b68
	ldr     r0, [pc, #0xb4] @ 0x2238c50, (=0x22403f8)
	mov     r2, #0x1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xc4] @ 0x2238c64, (=0x1048)
	str     r2, [r1, r0]
	b       branch_2238c4c
@ 0x2238ba4

.thumb
branch_2238ba4: @ 2238ba4 :thumb
	ldr     r1, [pc, #0xa8] @ 0x2238c50, (=0x22403f8)
	ldr     r0, [pc, #0xc0] @ 0x2238c68, (=0x1168)
	ldr     r2, [r1, #0x0]
	str     r3, [r2, r0]
	ldr     r3, [r1, #0x0]
	mov     r1, r0
	sub     r1, #0xc
	ldrh    r2, [r4, #0x2]
	ldrh    r1, [r3, r1]
	cmp     r2, r1
	bcc     branch_2238bcc
	add     r0, #0x14
	ldr     r1, [r3, r0]
	cmp     r1, #0x0
	beq     branch_2238bc6
	mov     r0, #0x4
	blx     r1
.thumb
branch_2238bc6: @ 2238bc6 :thumb
	mov     r0, #0x9
	bl      Function_2238534
.thumb
branch_2238bcc: @ 2238bcc :thumb
	ldr     r0, [pc, #0x80] @ 0x2238c50, (=0x22403f8)
	mov     r2, #0x46
	ldr     r1, [r0, #0x0]
	lsl     r2, r2, #6
	ldrh    r3, [r4, #0x2]
	add     r5, r1, r2
	ldrb    r1, [r5, r3]
	cmp     r1, #0x0
	bne     branch_2238c4c
	mov     r1, #0x1
	strb    r1, [r5, r3]
	ldr     r5, [r0, #0x0]
	mov     r0, r2
	sub     r0, #0x24
	ldrh    r0, [r5, r0]
	ldrh    r1, [r4, #0x2]
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r1, r0
	bne     branch_2238c10
	mov     r3, r1
	mov     r1, r2
	sub     r1, #0x8
	sub     r2, #0x20
	mov     r0, #0x68
	ldr     r1, [r5, r1]
	mul     r3, r0
	ldr     r2, [r5, r2]
	add     r4, #0x8
	mov     r0, r4
	add     r1, r1, r3
	sub     r2, r2, r3
	blx 0x20c4b68
	b       branch_2238c24
@ 0x2238c10

.thumb
branch_2238c10: @ 2238c10 :thumb
	add     r4, #0x8
	sub     r2, #0x8
	mov     r0, r4
	ldr     r4, [r5, r2]
	mov     r2, #0x68
	mov     r3, r1
	mul     r3, r2
	add     r1, r4, r3
	blx 0x20c4b68
.thumb
branch_2238c24: @ 2238c24 :thumb
	ldr     r1, [pc, #0x28] @ 0x2238c50, (=0x22403f8)
	ldr     r0, [pc, #0x44] @ 0x2238c6c, (=0x115e)
	ldr     r3, [r1, #0x0]
	ldrh    r2, [r3, r0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r2, [r3, r0]
	ldr     r3, [r1, #0x0]
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldrh    r2, [r3, r0]
	ldrh    r1, [r3, r1]
	cmp     r2, r1
	bne     branch_2238c4c
	add     r0, #0x1e
	ldr     r1, [r3, r0]
	cmp     r1, #0x0
	beq     branch_2238c48
	mov     r0, #0x2
	blx     r1
.thumb
branch_2238c48: @ 2238c48 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x2238c4c

.thumb
branch_2238c4c: @ 2238c4c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2238c50

.word 0x22403f8 @ 0x2238c50
.word 0x115a @ 0x2238c54
.word 0x1164 @ 0x2238c58
.word 0x117c @ 0x2238c5c
.word 0xffff @ 0x2238c60
.word 0x1048 @ 0x2238c64
.word 0x1168 @ 0x2238c68
.word 0x115e @ 0x2238c6c
.thumb
Function_2238c70: @ 2238c70 :thumb
	push    {r3,r4}
	mov     r2, #0x0
	mov     r3, r2
	lsr     r1, r1, #1
	beq     branch_2238c98
.thumb
branch_2238c7a: @ 2238c7a :thumb
	lsl     r4, r3, #1
	ldrh    r4, [r0, r4]
	.hword  0x1c5b @ add r3, r3, #0x1
	lsl     r3, r3, #16
	add     r2, r2, r4
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	lsl     r4, r2, #1
	asr     r2, r2, #15
	orr     r2, r4
	lsl     r2, r2, #16
	lsr     r3, r3, #16
	lsr     r2, r2, #16
	cmp     r3, r1
	bcc     branch_2238c7a
.thumb
branch_2238c98: @ 2238c98 :thumb
	mov     r0, r2
	pop     {r3,r4}
	bx      lr
@ 0x2238c9e


.align 2, 0


.thumb
Function_2238ca0: @ 2238ca0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x8c] @ 0x2238d34, (=0x22403f8)
	add     r1, sp, #0x0
	ldr     r4, [r0, #0x0]
	ldr     r0, [pc, #0x8c] @ 0x2238d38, (=0x1170)
	add     r3, r4, r0
	ldrh    r2, [r3, #0x0]
	sub     r0, #0x16
	strh    r2, [r1, #0x0]
	ldrh    r2, [r3, #0x2]
	strh    r2, [r1, #0x6]
	ldrh    r2, [r3, #0x4]
	add     r3, sp, #0x0
	strh    r2, [r1, #0x4]
	ldrh    r0, [r4, r0]
	ldr     r2, [pc, #0x78] @ 0x2238d3c, (=0x3fa2)
	strh    r0, [r1, #0x2]
	mov     r1, #0x0
.thumb
branch_2238cc6: @ 2238cc6 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	eor     r0, r2
	strh    r0, [r3, #0x0]
	ldrh    r2, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r1, #0x4
	blt     branch_2238cc6
	ldr     r0, [pc, #0x5c] @ 0x2238d34, (=0x22403f8)
	mov     r2, #0x8
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x60] @ 0x2238d40, (=0x104c)
	add     r0, r1, r0
	add     r1, sp, #0x0
	blx 0x20a49a4
	ldr     r0, [pc, #0x4c] @ 0x2238d34, (=0x22403f8)
	ldr     r2, [pc, #0x58] @ 0x2238d44, (=0x1178)
	ldr     r3, [r0, #0x0]
	ldr     r0, [pc, #0x50] @ 0x2238d40, (=0x104c)
	ldr     r1, [r3, r2]
	sub     r2, #0x18
	ldr     r2, [r3, r2]
	add     r0, r3, r0
	mov     r3, r1
	blx     Function_2239420
	ldr     r1, [pc, #0x34] @ 0x2238d34, (=0x22403f8)
	ldr     r2, [pc, #0x40] @ 0x2238d40, (=0x104c)
	ldr     r1, [r1, #0x0]
	mov     r0, #0x0
	add     r1, r1, r2
	lsr     r2, r2, #4
	blx 0x20c4b4c
	ldr     r0, [pc, #0x24] @ 0x2238d34, (=0x22403f8)
	ldr     r1, [pc, #0x34] @ 0x2238d44, (=0x1178)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, r1]
	sub     r1, #0x18
	ldr     r1, [r2, r1]
	bl      Function_2238c70
	ldr     r1, [pc, #0x14] @ 0x2238d34, (=0x22403f8)
	ldr     r2, [r1, #0x0]
	ldr     r1, [pc, #0x24] @ 0x2238d48, (=0x115a)
	ldrh    r1, [r2, r1]
	cmp     r1, r0
	bne     branch_2238d2e
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2238d2e

.thumb
branch_2238d2e: @ 2238d2e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2238d34

.word 0x22403f8 @ 0x2238d34
.word 0x1170 @ 0x2238d38
.word 0x3fa2 @ 0x2238d3c
.word 0x104c @ 0x2238d40
.word 0x1178 @ 0x2238d44
.word 0x115a @ 0x2238d48
.thumb
Function_2238d4c: @ 2238d4c :thumb
	ldr     r0, [pc, #0x0] @ 0x2238d50, (=0x16a0)
	bx      lr
@ 0x2238d50

.word 0x16a0 @ 0x2238d50
.thumb
Function_2238d54: @ 2238d54 :thumb
	ldr     r0, [pc, #0x14] @ 0x2238d6c, (=0x22403f8)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2238d70, (=0x1048)
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_2238d66
	sub     r0, #0x68
	add     r0, r2, r0
	bx      lr
@ 0x2238d66

.thumb
branch_2238d66: @ 2238d66 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2238d6a


.align 2


.word 0x22403f8 @ 0x2238d6c
.word 0x1048 @ 0x2238d70
.thumb
Function_2238d74: @ 2238d74 :thumb
	push    {r3,lr}
	add     r1, #0x24
	mov     r0, #0x1f
	bic     r1, r0
	add     r1, #0x20
	mov     r0, #0x56
	bl      0x2018144
	mov     r2, r0
	add     r2, #0x20
	mov     r1, #0x1f
	bic     r2, r1
	.hword  0x1f11 @ sub r1, r2, #0x4
	str     r0, [r1, #0x0]
	mov     r0, r2
	pop     {r3,pc}
@ 0x2238d94

.thumb
Function_2238d94: @ 2238d94 :thumb
	push    {r3,lr}
	cmp     r1, #0x0
	beq     branch_2238da2
	.hword  0x1f08 @ sub r0, r1, #0x4
	ldr     r0, [r0, #0x0]
	bl      0x20181c4
.thumb
branch_2238da2: @ 2238da2 :thumb
	pop     {r3,pc}
@ 0x2238da4

.thumb
Function_2238da4: @ 2238da4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	add     r0, sp, #0x0
	add     r1, sp, #0x4
	blx 0x21d75f4
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	neg     r0, r0
	bl      0x21d1f3c
	ldr     r2, [pc, #0x2c] @ 0x2238dec, (=0x266c)
	str     r0, [r4, r2]
	ldr     r0, [sp, #0x0]
	neg     r1, r0
	add     r0, r2, #0x4
	str     r1, [r4, r0]
	mov     r0, r2
	ldr     r1, [sp, #0x4]
	add     r0, #0x8
	str     r1, [r4, r0]
	.hword  0x1f10 @ sub r0, r2, #0x4
	mov     r1, #0x1
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x18] @ 0x2238df0, (=0x2240400)
	add     r2, #0x10
	str     r1, [r0, #0x10]
	mov     r1, #0x0
	mov     r0, r4
	str     r1, [r4, r2]
	bl      Function_222d344
	ldr     r0, [pc, #0xc] @ 0x2238df4, (=0x100f)
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2238dec

.word 0x266c @ 0x2238dec
.word 0x2240400 @ 0x2238df0
.word 0x100f @ 0x2238df4
.thumb
Function_2238df8: @ 2238df8 :thumb
	push    {lr}
	add     sp, #-0x3c
	blx 0x21d7bfc
	cmp     r0, #0x4
	beq     branch_2238e0c
	cmp     r0, #0x7
	beq     branch_2238e18
	cmp     r0, #0x8
	b       branch_2238e18
@ 0x2238e0c

.thumb
branch_2238e0c: @ 2238e0c :thumb
	add     r0, sp, #0x0
	blx 0x21d7eb8
	add     sp, #0x3c
	mov     r0, #0x1
	pop     {pc}
@ 0x2238e18

.thumb
branch_2238e18: @ 2238e18 :thumb
	mov     r0, #0x0
	add     sp, #0x3c
	pop     {pc}
@ 0x2238e1e


.align 2, 0


.thumb
Function_2238e20: @ 2238e20 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x14] @ 0x2238e38, (=0x2240400)
	mov     r4, #0x0
	str     r4, [r3, #0x0]
	str     r4, [r3, #0xc]
	ldr     r3, [pc, #0x10] @ 0x2238e3c, (=0x1650)
	str     r2, [r0, r3]
	ldr     r0, [pc, #0x10] @ 0x2238e40, (=0x1012)
	str     r0, [r1, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x2238e36


.align 2


.word 0x2240400 @ 0x2238e38
.word 0x1650 @ 0x2238e3c
.word 0x1012 @ 0x2238e40
.thumb
Function_2238e44: @ 2238e44 :thumb
	push    {r3-r5,lr}
	mov     r4, r2
	ldr     r2, [pc, #0x1c] @ 0x2238e68, (=0x2240400)
	mov     r5, #0x0
	str     r5, [r2, #0x4]
	str     r1, [r2, #0x8]
	ldr     r1, [pc, #0x18] @ 0x2238e6c, (=0x1650)
	str     r3, [r0, r1]
	ldr     r0, [pc, #0x18] @ 0x2238e70, (=0x1013)
	str     r0, [r4, #0x0]
	ldr     r0, [pc, #0x18] @ 0x2238e74, (=0x2238e89)
	blx 0x21d87e0
	cmp     r0, #0x0
	bne     branch_2238e66
	ldr     r0, [sp, #0x10]
	str     r0, [r4, #0x0]
.thumb
branch_2238e66: @ 2238e66 :thumb
	pop     {r3-r5,pc}
@ 0x2238e68

.word 0x2240400 @ 0x2238e68
.word 0x1650 @ 0x2238e6c
.word 0x1013 @ 0x2238e70
.word Function_2238e88+1 @ =0x2238e89, 0x2238e74
.thumb
Function_2238e78: @ 2238e78 :thumb
	ldr     r0, [pc, #0x8] @ 0x2238e84, (=0x2240400)
	mov     r2, #0x1
	str     r2, [r0, #0x0]
	str     r1, [r0, #0xc]
	bx      lr
@ 0x2238e82


.align 2


.word 0x2240400 @ 0x2238e84
.thumb
Function_2238e88: @ 2238e88 :thumb
	ldr     r0, [pc, #0x4] @ 0x2238e90, (=0x2240400)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2238e90

.word 0x2240400 @ 0x2238e90
.thumb
Function_2238e94: @ 2238e94 :thumb
	push    {r3,lr}
	bl      0x2039794
	bl      0x2038514
	bl      0x20995c4
	bl      0x2099560
	bl      0x20334cc
	pop     {r3,pc}
@ 0x2238eac

.thumb
Function_2238eac: @ 2238eac :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [pc, #0x2f4] @ 0x22391ac, (=0x267c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2238ecc
	blx     r0
	cmp     r0, #0x1
	bne     branch_2238ecc
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
.thumb
branch_2238ecc: @ 2238ecc :thumb
	mov     r3, #0x1
	ldr     r0, [r5, #0x0]
	lsl     r3, r3, #12
	sub     r0, r0, r3
	cmp     r0, #0x13
	bls     branch_2238eda
	b       branch_22392c4
@ 0x2238eda

.thumb
branch_2238eda: @ 2238eda :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2238ee6

Jumppoints_2238ee6:
.hword branch_2238f0e - Jumppoints_2238ee6 - 2
.hword branch_2238f20 - Jumppoints_2238ee6 - 2
.hword branch_2238f3c - Jumppoints_2238ee6 - 2
.hword branch_2238f64 - Jumppoints_2238ee6 - 2
.hword branch_2238fae - Jumppoints_2238ee6 - 2
.hword branch_2238fc6 - Jumppoints_2238ee6 - 2
.hword branch_223900c - Jumppoints_2238ee6 - 2
.hword branch_2239030 - Jumppoints_2238ee6 - 2
.hword branch_2239066 - Jumppoints_2238ee6 - 2
.hword branch_2239088 - Jumppoints_2238ee6 - 2
.hword branch_22390c4 - Jumppoints_2238ee6 - 2
.hword branch_22390ea - Jumppoints_2238ee6 - 2
.hword branch_2239160 - Jumppoints_2238ee6 - 2
.hword branch_223917e - Jumppoints_2238ee6 - 2
.hword branch_22392c4 - Jumppoints_2238ee6 - 2
.hword branch_2239196 - Jumppoints_2238ee6 - 2
.hword branch_223924e - Jumppoints_2238ee6 - 2
.hword branch_2239244 - Jumppoints_2238ee6 - 2
.hword branch_223926a - Jumppoints_2238ee6 - 2
.hword branch_22392a0 - Jumppoints_2238ee6 - 2
.thumb
branch_2238f0e: @ 2238f0e :thumb
	bl      0x2033478
	bl      0x2099550
	bl      0x20995b4
	ldr     r0, [pc, #0x294] @ 0x22391b0, (=0x1001)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2238f20

.thumb
branch_2238f20: @ 2238f20 :thumb
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_2239004
	ldr     r0, [pc, #0x288] @ 0x22391b4, (=0x2238d75)
	ldr     r1, [pc, #0x28c] @ 0x22391b8, (=0x2238d95)
	blx 0x21d776c
	ldr     r0, [r4, #0x4]
	bl      0x20384c0
	ldr     r0, [pc, #0x284] @ 0x22391bc, (=0x1002)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2238f3c

.thumb
branch_2238f3c: @ 2238f3c :thumb
	ldr     r0, [pc, #0x280] @ 0x22391c0, (=0x15e8)
	mov     r1, #0x2
	add     r0, r4, r0
	mov     r2, #0x1
	mov     r3, #0x14
	blx 0x21d78c8
	mov     r0, #0x2
	blx 0x21d792c
	blx 0x21d797c
	bl      0x2039734
	ldr     r0, [pc, #0x268] @ 0x22391c4, (=0x1003)
	mov     r1, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x268] @ 0x22391c8, (=0x2678)
	str     r1, [r4, r0]
	b       branch_22392c4
@ 0x2238f64

.thumb
branch_2238f64: @ 2238f64 :thumb
	blx 0x21d7ae4
	blx 0x21d7a8c
	cmp     r0, #0x0
	beq     branch_2238f9c
	mov     r0, r4
	bl      Function_2238df8
	cmp     r0, #0x1
	bne     branch_2238f94
	ldr     r0, [pc, #0x24c] @ 0x22391c8, (=0x2678)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2238f8e
	ldr     r0, [pc, #0x248] @ 0x22391cc, (=0x2240400)
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x244] @ 0x22391d0, (=0x100d)
	str     r0, [r5, #0x0]
	b       branch_2238f9c
@ 0x2238f8e

.thumb
branch_2238f8e: @ 2238f8e :thumb
	ldr     r0, [pc, #0x244] @ 0x22391d4, (=0x1004)
	str     r0, [r5, #0x0]
	b       branch_2238f9c
@ 0x2238f94

.thumb
branch_2238f94: @ 2238f94 :thumb
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
.thumb
branch_2238f9c: @ 2238f9c :thumb
	ldr     r0, [pc, #0x238] @ 0x22391d8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2239004
	ldr     r0, [pc, #0x220] @ 0x22391c8, (=0x2678)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_22392c4
@ 0x2238fae

.thumb
branch_2238fae: @ 2238fae :thumb
	blx 0x21d81dc
	cmp     r0, #0x0
	bne     branch_2238fc0
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2238fc0

.thumb
branch_2238fc0: @ 2238fc0 :thumb
	ldr     r0, [pc, #0x218] @ 0x22391dc, (=0x1005)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2238fc6

.thumb
branch_2238fc6: @ 2238fc6 :thumb
	blx 0x21d82a0
	cmp     r0, #0x3
	bne     branch_2238fda
	ldr     r0, [pc, #0x210] @ 0x22391e0, (=0x1006)
	ldr     r1, [pc, #0x210] @ 0x22391e4, (=0x21d8018)
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x1d4] @ 0x22391ac, (=0x267c)
	str     r1, [r4, r0]
	b       branch_2238ffa
@ 0x2238fda

.thumb
branch_2238fda: @ 2238fda :thumb
	cmp     r0, #0x4
	bne     branch_2238fec
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	blx 0x21d7db0
	b       branch_2238ffa
@ 0x2238fec

.thumb
branch_2238fec: @ 2238fec :thumb
	cmp     r0, #0x5
	bne     branch_2238ffa
	ldr     r0, [pc, #0x1d8] @ 0x22391cc, (=0x2240400)
	mov     r1, #0x3
	str     r1, [r0, #0x8]
	ldr     r0, [pc, #0x1d8] @ 0x22391d0, (=0x100d)
	str     r0, [r5, #0x0]
.thumb
branch_2238ffa: @ 2238ffa :thumb
	ldr     r0, [pc, #0x1dc] @ 0x22391d8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2239006
.thumb
branch_2239004: @ 2239004 :thumb
	b       branch_22392c4
@ 0x2239006

.thumb
branch_2239006: @ 2239006 :thumb
	blx 0x21d8398
	b       branch_22392c4
@ 0x223900c

.thumb
branch_223900c: @ 223900c :thumb
	ldr     r0, [pc, #0x1d8] @ 0x22391e8, (=0x2238e79)
	ldr     r1, [pc, #0x1dc] @ 0x22391ec, (=0x223f138)
	ldr     r2, [pc, #0x1dc] @ 0x22391f0, (=0x223f140)
	blx 0x21d86c8
	cmp     r0, #0x0
	bne     branch_2239024
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2239024

.thumb
branch_2239024: @ 2239024 :thumb
	ldr     r2, [pc, #0x1cc] @ 0x22391f4, (=0x1007)
	mov     r0, r4
	mov     r1, r5
	bl      Function_2238e20
	b       branch_22392c4
@ 0x2239030

.thumb
branch_2239030: @ 2239030 :thumb
	ldr     r0, [pc, #0x194] @ 0x22391c8, (=0x2678)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2239048
	add     r3, #0xc
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2238e44
	b       branch_22392c4
@ 0x2239048

.thumb
branch_2239048: @ 2239048 :thumb
	ldr     r0, [pc, #0x1ac] @ 0x22391f8, (=0x223f154)
	mov     r1, r0
	mov     r2, r0
	blx 0x21d882c
	cmp     r0, #0x0
	bne     branch_2239060
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2239060

.thumb
branch_2239060: @ 2239060 :thumb
	ldr     r0, [pc, #0x198] @ 0x22391fc, (=0x1008)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2239066

.thumb
branch_2239066: @ 2239066 :thumb
	ldr     r0, [pc, #0x198] @ 0x2239200, (=0x1654)
	add     r0, r4, r0
	blx 0x21d8860
	cmp     r0, #0x0
	bne     branch_223907c
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x223907c

.thumb
branch_223907c: @ 223907c :thumb
	ldr     r2, [pc, #0x184] @ 0x2239204, (=0x1009)
	mov     r0, r4
	mov     r1, r5
	bl      Function_2238e20
	b       branch_22392c4
@ 0x2239088

.thumb
branch_2239088: @ 2239088 :thumb
	ldr     r0, [pc, #0x174] @ 0x2239200, (=0x1654)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	beq     branch_22390a0
	add     r3, #0xd
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2238e44
	b       branch_22392c4
@ 0x22390a0

.thumb
branch_22390a0: @ 22390a0 :thumb
	ldr     r0, [pc, #0x164] @ 0x2239208, (=0x2240414)
	mov     r1, #0x0
	mov     r2, #0xa
	blx 0x21d8884
	cmp     r0, #0x0
	bne     branch_22390b8
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x22390b8

.thumb
branch_22390b8: @ 22390b8 :thumb
	ldr     r2, [pc, #0x150] @ 0x223920c, (=0x100a)
	mov     r0, r4
	mov     r1, r5
	bl      Function_2238e20
	b       branch_22392c4
@ 0x22390c4

.thumb
branch_22390c4: @ 22390c4 :thumb
	ldr     r1, [pc, #0x148] @ 0x2239210, (=0x1658)
	ldr     r0, [pc, #0x140] @ 0x2239208, (=0x2240414)
	add     r1, r4, r1
	mov     r2, r3
	blx 0x21d88cc
	cmp     r0, #0x0
	bne     branch_22390de
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x22390de

.thumb
branch_22390de: @ 22390de :thumb
	ldr     r0, [pc, #0x134] @ 0x2239214, (=0x100b)
	mov     r1, #0x0
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x130] @ 0x2239218, (=0x2664)
	str     r1, [r4, r0]
	b       branch_22392c4
@ 0x22390ea

.thumb
branch_22390ea: @ 22390ea :thumb
	ldr     r0, [pc, #0xe0] @ 0x22391cc, (=0x2240400)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2239138
	ldr     r0, [pc, #0xe4] @ 0x22391d8, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223910c
	add     r3, #0xc
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2238e44
	b       branch_22392c4
@ 0x223910c

.thumb
branch_223910c: @ 223910c :thumb
	ldr     r1, [pc, #0x10c] @ 0x223921c, (=0x265c)
	add     r0, r4, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r4, r1
	blx 0x21d891c
	cmp     r0, #0x1
	bne     branch_223919e
	ldr     r1, [pc, #0xfc] @ 0x223921c, (=0x265c)
	mov     r0, #0x64
	ldr     r2, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	mul     r0, r2
	blx 0x20e2178
	ldr     r1, [pc, #0xe8] @ 0x2239218, (=0x2664)
	ldr     r2, [r4, r1]
	cmp     r2, r0
	beq     branch_223919e
	str     r0, [r4, r1]
	b       branch_22392c4
@ 0x2239138

.thumb
branch_2239138: @ 2239138 :thumb
	ldr     r0, [pc, #0x8c] @ 0x22391c8, (=0x2678)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_2239150
	add     r3, #0xd
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2238e44
	b       branch_22392c4
@ 0x2239150

.thumb
branch_2239150: @ 2239150 :thumb
	add     r3, #0xd
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, r5
	str     r3, [sp, #0x0]
	bl      Function_2238e44
	b       branch_22392c4
@ 0x2239160

.thumb
branch_2239160: @ 2239160 :thumb
	blx 0x21d8900
	cmp     r0, #0x0
	bne     branch_223916e
	ldr     r0, [pc, #0x64] @ 0x22391d0, (=0x100d)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x223916e

.thumb
branch_223916e: @ 223916e :thumb
	ldr     r0, [pc, #0x3c] @ 0x22391ac, (=0x267c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	bl      Function_2238e94
	ldr     r0, [pc, #0x50] @ 0x22391cc, (=0x2240400)
	ldr     r0, [r0, #0x8]
	pop     {r3-r5,pc}
@ 0x223917e

.thumb
branch_223917e: @ 223917e :thumb
	blx 0x21d7e10
	cmp     r0, #0x1
	bne     branch_223919e
	ldr     r0, [pc, #0x24] @ 0x22391ac, (=0x267c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	bl      Function_2238e94
	ldr     r0, [pc, #0x38] @ 0x22391cc, (=0x2240400)
	ldr     r0, [r0, #0x8]
	pop     {r3-r5,pc}
@ 0x2239196

.thumb
branch_2239196: @ 2239196 :thumb
	ldr     r0, [pc, #0x34] @ 0x22391cc, (=0x2240400)
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	beq     branch_22391a0
.thumb
branch_223919e: @ 223919e :thumb
	b       branch_22392c4
@ 0x22391a0

.thumb
branch_22391a0: @ 22391a0 :thumb
	mov     r0, r4
	bl      Function_222e13c
	ldr     r0, [pc, #0x78] @ 0x2239220, (=0x2674)
	b       branch_2239224
@ 0x22391aa


.align 2


.word 0x267c @ 0x22391ac
.word 0x1001 @ 0x22391b0
.word 0x2238d75 @ 0x22391b4
.word 0x2238d95 @ 0x22391b8
.word 0x1002 @ 0x22391bc
.word 0x15e8 @ 0x22391c0
.word 0x1003 @ 0x22391c4
.word 0x2678 @ 0x22391c8
.word 0x2240400 @ 0x22391cc
.word 0x100d @ 0x22391d0
.word 0x1004 @ 0x22391d4
.word 0x21bf67c @ 0x22391d8
.word 0x1005 @ 0x22391dc
.word 0x1006 @ 0x22391e0
.word 0x21d8018 @ 0x22391e4
.word Function_2238e78+1 @ =0x2238e79, 0x22391e8
.word 0x223f138 @ 0x22391ec
.word 0x223f140 @ 0x22391f0
.word 0x1007 @ 0x22391f4
.word 0x223f154 @ 0x22391f8
.word 0x1008 @ 0x22391fc
.word 0x1654 @ 0x2239200
.word 0x1009 @ 0x2239204
.word 0x2240414 @ 0x2239208
.word 0x100a @ 0x223920c
.word 0x1658 @ 0x2239210
.word 0x100b @ 0x2239214
.word 0x2664 @ 0x2239218
.word 0x265c @ 0x223921c
.word 0x2674 @ 0x2239220
.thumb
branch_2239224: @ 2239224 :thumb
	ldr     r0, [r4, r0]
	.hword  0x1f40 @ sub r0, r0, #0x5
	cmp     r0, #0x1
	bhi     branch_223923e
	ldr     r3, [pc, #0x98] @ 0x22392c8, (=0x1010)
	mov     r0, r4
	str     r3, [sp, #0x0]
	mov     r1, #0x3
	mov     r2, r5
	.hword  0x1c5b @ add r3, r3, #0x1
	bl      Function_2238e44
	b       branch_22392c4
@ 0x223923e

.thumb
branch_223923e: @ 223923e :thumb
	ldr     r0, [pc, #0x8c] @ 0x22392cc, (=0x1011)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2239244

.thumb
branch_2239244: @ 2239244 :thumb
	blx 0x21d7db0
	ldr     r0, [pc, #0x7c] @ 0x22392c8, (=0x1010)
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x223924e

.thumb
branch_223924e: @ 223924e :thumb
	ldr     r0, [pc, #0x80] @ 0x22392d0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22392c4
	ldr     r0, [pc, #0x78] @ 0x22392d4, (=0x267c)
	mov     r1, #0x0
	str     r1, [r4, r0]
	blx 0x21d76e8
	bl      Function_2238e94
	mov     r0, #0x4
	pop     {r3-r5,pc}
@ 0x223926a

.thumb
branch_223926a: @ 223926a :thumb
	ldr     r0, [pc, #0x6c] @ 0x22392d8, (=0x2240400)
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x1
	bne     branch_223928e
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	beq     branch_2239286
	mov     r0, r4
	bl      Function_2238da4
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x2239286

.thumb
branch_2239286: @ 2239286 :thumb
	ldr     r0, [pc, #0x54] @ 0x22392dc, (=0x1650)
	ldr     r0, [r4, r0]
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x223928e

.thumb
branch_223928e: @ 223928e :thumb
	ldr     r0, [pc, #0x40] @ 0x22392d0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22392c4
	ldr     r0, [pc, #0x44] @ 0x22392e0, (=0x2678)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_22392c4
@ 0x22392a0

.thumb
branch_22392a0: @ 22392a0 :thumb
	ldr     r0, [pc, #0x34] @ 0x22392d8, (=0x2240400)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x1
	bne     branch_22392b4
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x22392dc, (=0x1650)
	ldr     r0, [r4, r0]
	str     r0, [r5, #0x0]
	b       branch_22392c4
@ 0x22392b4

.thumb
branch_22392b4: @ 22392b4 :thumb
	ldr     r0, [pc, #0x18] @ 0x22392d0, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22392c4
	ldr     r0, [pc, #0x20] @ 0x22392e0, (=0x2678)
	mov     r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22392c4: @ 22392c4 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x22392c8

.word 0x1010 @ 0x22392c8
.word 0x1011 @ 0x22392cc
.word 0x21bf67c @ 0x22392d0
.word 0x267c @ 0x22392d4
.word 0x2240400 @ 0x22392d8
.word 0x1650 @ 0x22392dc
.word 0x2678 @ 0x22392e0
.thumb
Function_22392e4: @ 22392e4 :thumb
	cmp     r0, #0x1
	bne     branch_22392ec
	mov     r0, #0x1
	b       branch_22392ee
@ 0x22392ec

.thumb
branch_22392ec: @ 22392ec :thumb
	ldr     r0, [pc, #0x4] @ 0x22392f4, (=0x1de)
.thumb
branch_22392ee: @ 22392ee :thumb
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bx      lr
@ 0x22392f4

.word 0x1de @ 0x22392f4
.thumb
Function_22392f8: @ 22392f8 :thumb
	cmp     r0, #0x7
	bhi     branch_2239318
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2239308

Jumppoints_2239308:
.hword branch_2239318 - Jumppoints_2239308 - 2
.hword branch_2239318 - Jumppoints_2239308 - 2
.hword branch_223931c - Jumppoints_2239308 - 2
.hword branch_2239322 - Jumppoints_2239308 - 2
.hword branch_223931c - Jumppoints_2239308 - 2
.hword branch_2239326 - Jumppoints_2239308 - 2
.hword branch_2239318 - Jumppoints_2239308 - 2
.hword branch_223931c - Jumppoints_2239308 - 2
.thumb
branch_2239318: @ 2239318 :thumb
	mov     r0, #0xea
	bx      lr
@ 0x223931c

.thumb
branch_223931c: @ 223931c :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #2
	bx      lr
@ 0x2239322

.thumb
branch_2239322: @ 2239322 :thumb
	ldr     r0, [pc, #0x8] @ 0x223932c, (=0x1b7)
	bx      lr
@ 0x2239326

.thumb
branch_2239326: @ 2239326 :thumb
	ldr     r0, [pc, #0x8] @ 0x2239330, (=0x1b6)
	bx      lr
@ 0x223932a


.align 2


.word 0x1b7 @ 0x223932c
.word 0x1b6 @ 0x2239330
.thumb
Function_2239334: @ 2239334 :thumb
	cmp     r0, #0x7
	bhi     branch_2239354
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2239344

Jumppoints_2239344:
.hword branch_2239354 - Jumppoints_2239344 - 2
.hword branch_2239354 - Jumppoints_2239344 - 2
.hword branch_2239358 - Jumppoints_2239344 - 2
.hword branch_223935c - Jumppoints_2239344 - 2
.hword branch_2239358 - Jumppoints_2239344 - 2
.hword branch_2239362 - Jumppoints_2239344 - 2
.hword branch_2239354 - Jumppoints_2239344 - 2
.hword branch_2239358 - Jumppoints_2239344 - 2
.thumb
branch_2239354: @ 2239354 :thumb
	mov     r0, #0xeb
	bx      lr
@ 0x2239358

.thumb
branch_2239358: @ 2239358 :thumb
	ldr     r0, [pc, #0xc] @ 0x2239368, (=0x1b5)
	bx      lr
@ 0x223935c

.thumb
branch_223935c: @ 223935c :thumb
	mov     r0, #0x6e
	lsl     r0, r0, #2
	bx      lr
@ 0x2239362

.thumb
branch_2239362: @ 2239362 :thumb
	mov     r0, #0x6d
	lsl     r0, r0, #2
	bx      lr
@ 0x2239368

.word 0x1b5 @ 0x2239368
.thumb
Function_223936c: @ 223936c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r3
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	cmp     r5, #0x1
	beq     branch_2239380
	mov     r2, #0x1
	b       branch_2239382
@ 0x2239380

.thumb
branch_2239380: @ 2239380 :thumb
	mov     r2, #0x0
.thumb
branch_2239382: @ 2239382 :thumb
	ldr     r0, [sp, #0x8]
	mov     r6, #0x0
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [sp, #0xc]
	beq     branch_223940a
	ldr     r1, [pc, #0x88] @ 0x2239418, (=0x223dae8)
	lsl     r0, r2, #1
	ldr     r4, [sp, #0x4]
	add     r7, r1, r0
.thumb
branch_2239394: @ 2239394 :thumb
	ldr     r0, [sp, #0x0]
	ldrb    r0, [r0, r6]
	cmp     r0, #0xff
	beq     branch_223940a
	cmp     r0, #0xf7
	bcc     branch_22393ce
	ldr     r0, [sp, #0x8]
	.hword  0x1e43 @ sub r3, r0, #0x1
	cmp     r3, #0xa
	bcc     branch_22393aa
	mov     r3, #0xa
.thumb
branch_22393aa: @ 22393aa :thumb
	mov     r1, #0x0
	cmp     r3, #0x0
	ble     branch_22393c0
	mov     r0, #0x6b
	ldr     r2, [sp, #0x4]
	lsl     r0, r0, #2
.thumb
branch_22393b6: @ 22393b6 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r3
	blt     branch_22393b6
.thumb
branch_22393c0: @ 22393c0 :thumb
	ldr     r0, [sp, #0x4]
	ldr     r2, [pc, #0x58] @ 0x223941c, (=0xffff)
	lsl     r1, r1, #1
	strh    r2, [r0, r1]
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22393ce

.thumb
branch_22393ce: @ 22393ce :thumb
	lsl     r0, r0, #2
	ldrh    r0, [r7, r0]
	cmp     r0, #0x1
	beq     branch_22393e0
	cmp     r0, #0xea
	beq     branch_22393ea
	cmp     r0, #0xeb
	beq     branch_22393f4
	b       branch_22393fe
@ 0x22393e0

.thumb
branch_22393e0: @ 22393e0 :thumb
	mov     r0, r5
	bl      Function_22392e4
	strh    r0, [r4, #0x0]
	b       branch_2239400
@ 0x22393ea

.thumb
branch_22393ea: @ 22393ea :thumb
	mov     r0, r5
	bl      Function_22392f8
	strh    r0, [r4, #0x0]
	b       branch_2239400
@ 0x22393f4

.thumb
branch_22393f4: @ 22393f4 :thumb
	mov     r0, r5
	bl      Function_2239334
	strh    r0, [r4, #0x0]
	b       branch_2239400
@ 0x22393fe

.thumb
branch_22393fe: @ 22393fe :thumb
	strh    r0, [r4, #0x0]
.thumb
branch_2239400: @ 2239400 :thumb
	ldr     r0, [sp, #0xc]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r6, r0
	bcc     branch_2239394
.thumb
branch_223940a: @ 223940a :thumb
	ldr     r2, [pc, #0x10] @ 0x223941c, (=0xffff)
	ldr     r0, [sp, #0x4]
	lsl     r1, r6, #1
	strh    r2, [r0, r1]
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2239418

.word 0x223dae8 @ 0x2239418
.word 0xffff @ 0x223941c
.arm
Function_2239420: @ 2239420 :arm
	stmfd   sp!, {r4-r9,lr}
	ldrb    r7, [r0]
	ldrb    r6, [r0, #0x1]
	add     r0, r0, #0x4
	mov     lr, #1, 8 @ #0x1000000
	add     r7, lr, r7, lsl #24
	mov     r6, r6, lsl #24
	ldrb    r9, [r0, r7, lsr #0x18]
	subs    r2, r2, #0x1
	bmi     branch_2239480
.arm
branch_2239448: @ 2239448 :arm
	add     r6, r6, r9, lsl #24
	subs    r2, r2, #0x1
	ldrb    r8, [r0, r6, lsr #0x18]
	ldrb    r5, [r1], #0x1
	strb    r8, [r0, r7, lsr #0x18]
	strb    r9, [r0, r6, lsr #0x18]
	add     r4, r9, r8
	and     r4, r4, #0xff
	add     r7, r7, lr
	ldrb    r4, [r0, r4]
	ldrb    r9, [r0, r7, lsr #0x18]
	eor     r5, r5, r4
	strb    r5, [r3], #0x1
	bge     branch_2239448
.arm
branch_2239480: @ 2239480 :arm
	sub     r7, r7, lr
	mov     r7, r7, lsr #24
	mov     r6, r6, lsr #24
	strb    r7, [r0, #-0x4]
	strb    r6, [r0, #-0x3]
	ldmfd   sp!, {r4-r9,pc}
@ 0x2239498

.arm
Function_2239498: @ 2239498 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x14
	mov     r12, r0
	mov     r4, r1
	mov     r5, r2
	mov     r2, r4
	add     r0, sp, #0x0
	mov     r1, r12
	mov     r4, r3
	bl      0x20d3068
	add     r0, sp, #0x0
	mov     r1, r5
	mov     r2, r4
	bl      Function_22394dc
	add     sp, sp, #0x14
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x22394dc

.arm
Function_22394dc: @ 22394dc :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #18, 28 @ #0x120
	mov     r3, #0x0
	str     r3, [sp, #0x10]
	str     r3, [sp, #0x18]
	str     r2, [sp]
	mov     r3, #0x80
	mov     r4, r0
	mov     r2, r1
	ldr     r12, [pc, #0xd0] @ [0x22395d8] (=0x10001)
	str     r3, [sp, #0x4]
	add     r0, sp, #0x1c
	mov     r1, #1, 24 @ #0x100
	str     r12, [sp, #0x8]
	bl      Function_2239918
	mov     r1, r0
	add     r0, sp, #0x1c
	add     r2, sp, #0xc
	add     r3, sp, #0x10
	bl      Function_2239780
	cmp     r0, #0x0
	addeq   sp, sp, #18, 28 @ #0x120
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	add     r1, sp, #0x14
	add     r0, sp, #0x18
	str     r1, [sp]
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	mov     r3, r2
	bl      Function_22395dc
	cmp     r0, #0x0
	addeq   sp, sp, #18, 28 @ #0x120
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x14
	addne   sp, sp, #18, 28 @ #0x120
	movne   r0, #0x0
	ldmnefd sp!, {r4,lr}
	bxne    lr
	ldr     r2, [sp, #0x14]
	mov     r3, #0x0
.arm
branch_2239598: @ 2239598 :arm
	ldrb    r1, [r2]
	ldrb    r0, [r4]
	cmp     r1, r0
	addne   sp, sp, #18, 28 @ #0x120
	movne   r0, #0x0
	ldmnefd sp!, {r4,lr}
	bxne    lr
	add     r3, r3, #0x1
	cmp     r3, #0x14
	add     r4, r4, #0x1
	add     r2, r2, #0x1
	blt     branch_2239598
	mov     r0, #0x1
	add     sp, sp, #18, 28 @ #0x120
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x22395d8

.word 0x10001 @ 0x22395d8
.arm
Function_22395dc: @ 22395dc :arm
	stmfd   sp!, {r0-r3}
.arm
Function_22395e0: @ 22395e0 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r5, r2
	mov     r4, r3
	add     r0, sp, #0x10
	add     r1, sp, #0x14
	mov     r2, #0x30
	mov     r3, #0x0
	bl      Function_2239844
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	add     r0, sp, #0x10
	add     r1, sp, #0x14
	mov     r2, #0x30
	mov     r3, #0x0
	bl      Function_2239844
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	add     r0, sp, #0x10
	add     r1, sp, #0x14
	add     r3, sp, #0x0
	mov     r2, #0x6
	bl      Function_2239844
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	cmp     r5, #0x0
	ldrne   r0, [sp, #0x10]
	strne   r0, [r5]
	cmp     r4, #0x0
	ldrne   r0, [sp]
	strne   r0, [r4]
	ldr     r2, [sp]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r0, r0, r2
	str     r0, [sp, #0x10]
	cmp     r1, r2
	addcc   sp, sp, #0x4
	movcc   r0, #0x0
	ldmccfd sp!, {r4,r5,lr}
	addcc   sp, sp, #0x10
	bxcc    lr
	sub     r12, r1, r2
	add     r0, sp, #0x10
	add     r1, sp, #0x14
	add     r3, sp, #0x0
	mov     r2, #0x5
	str     r12, [sp, #0x14]
	bl      Function_2239844
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	ldr     r2, [sp]
	ldr     r0, [sp, #0x10]
	ldr     r1, [sp, #0x14]
	add     r0, r0, r2
	str     r0, [sp, #0x10]
	cmp     r1, r2
	addcc   sp, sp, #0x4
	movcc   r0, #0x0
	ldmccfd sp!, {r4,r5,lr}
	addcc   sp, sp, #0x10
	bxcc    lr
	sub     r12, r1, r2
	add     r0, sp, #0x10
	add     r1, sp, #0x14
	add     r3, sp, #0x0
	mov     r2, #0x4
	str     r12, [sp, #0x14]
	bl      Function_2239844
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	ldr     r1, [sp, #0x20]
	cmp     r1, #0x0
	ldrne   r0, [sp, #0x10]
	strne   r0, [r1]
	ldr     r1, [sp, #0x24]
	cmp     r1, #0x0
	ldrne   r0, [sp]
	strne   r0, [r1]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x2239780

.arm
Function_2239780: @ 2239780 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	cmp     r1, #0xa
	addcc   sp, sp, #0x4
	movcc   r0, #0x0
	ldmccfd sp!, {lr}
	bxcc    lr
	ldrb    r12, [r0]
	add     lr, r0, r1
	cmp     r12, #0x1
	addne   sp, sp, #0x4
	movne   r0, #0x0
	ldmnefd sp!, {lr}
	bxne    lr
	add     r12, r0, #0x1
	mov     r1, #0x0
.arm
branch_22397c0: @ 22397c0 :arm
	ldrb    r0, [r12], #0x1
	cmp     r0, #0xff
	addne   sp, sp, #0x4
	movne   r0, #0x0
	ldmnefd sp!, {lr}
	bxne    lr
	add     r1, r1, #0x1
	cmp     r1, #0x8
	blt     branch_22397c0
	cmp     r12, lr
	beq     branch_2239804
.arm
branch_22397ec: @ 22397ec :arm
	ldrb    r0, [r12]
	cmp     r0, #0xff
	bne     branch_2239804
	add     r12, r12, #0x1
	cmp     r12, lr
	bne     branch_22397ec
.arm
branch_2239804: @ 2239804 :arm
	cmp     r12, lr
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {lr}
	bxeq    lr
	ldrb    r0, [r12]
	cmp     r0, #0x0
	movne   r0, #0x0
	addeq   r0, r12, #0x1
	subeq   r1, lr, r0
	streq   r1, [r3]
	streq   r0, [r2]
	moveq   r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x2239844

.arm
Function_2239844: @ 2239844 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r5, [r0]
	mov     r6, #0x0
	ldrb    r4, [r5]
	add     r5, r5, #0x1
	mov     r12, r6
	cmp     r4, r2
	ldr     r2, [r1]
	movne   r0, r6
	ldmnefd sp!, {r4-r6,lr}
	bxne    lr
	cmp     r2, #0x1
	movcc   r0, r6
	ldmccfd sp!, {r4-r6,lr}
	bxcc    lr
	ldrb    lr, [r5]
	sub     r4, r2, #0x1
	ands    r2, lr, #0x80
	beq     branch_22398e0
	and     r2, lr, #0x7f
	and     lr, r2, #0xff
	add     r2, lr, #0x1
	cmp     r4, r2
	movcc   r0, r6
	ldmccfd sp!, {r4-r6,lr}
	bxcc    lr
	cmp     r3, #0x0
	sub     r6, r4, lr
	beq     branch_22398d8
	ldrb    r2, [r5, #0x1]
	add     r5, r5, #0x1
	and     r4, r2, #0x7f
.arm
branch_22398c4: @ 22398c4 :arm
	sub     r2, lr, #0x1
	add     r12, r4, r12, lsl #7
	ands    lr, r2, #0xff
	bne     branch_22398c4
	b       branch_22398fc
@ 0x22398d8

.arm
branch_22398d8: @ 22398d8 :arm
	add     r5, r5, lr
	b       branch_22398fc
@ 0x22398e0

.arm
branch_22398e0: @ 22398e0 :arm
	add     r5, r5, #0x1
	cmp     r4, #0x1
	mov     r12, lr
	movcc   r0, r6
	ldmccfd sp!, {r4-r6,lr}
	bxcc    lr
	sub     r6, r4, #0x1
.arm
branch_22398fc: @ 22398fc :arm
	str     r5, [r0]
	str     r6, [r1]
	cmp     r3, #0x0
	strne   r12, [r3]
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x2239918

.arm
Function_2239918: @ 2239918 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x58
	movs    r6, r0
	mov     r5, r1
	mov     r8, r2
	mov     r7, r3
	beq     branch_2239948
	cmp     r8, #0x0
	beq     branch_2239948
	ldr     r0, [sp, #0x70]
	cmp     r0, #0x0
	bne     branch_2239958
.arm
branch_2239948: @ 2239948 :arm
	add     sp, sp, #0x58
	mvn     r0, #0x2
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x2239958

.arm
branch_2239958: @ 2239958 :arm
	bl      Function_223d358
	mov     r4, r0
	add     r0, sp, #0x4
	bl      Function_223d3d8
	add     r0, sp, #0x18
	bl      Function_223d3d8
	add     r0, sp, #0x2c
	bl      Function_223d3d8
	add     r0, sp, #0x40
	bl      Function_223d3d8
	cmp     r4, #0x0
	mvneq   r5, #0x1
	beq     branch_2239a34
	add     r2, sp, #0x4
	mov     r0, r8
	mov     r1, r7
	bl      Function_223d014
	cmp     r0, #0x0
	mvneq   r5, #0x1
	beq     branch_2239a34
	ldr     r1, [sp, #0x78]
	add     r0, sp, #0x2c
	bl      Function_223d128
	cmp     r0, #0x0
	mvneq   r5, #0x1
	beq     branch_2239a34
	ldr     r0, [sp, #0x70]
	ldr     r1, [sp, #0x74]
	add     r2, sp, #0x40
	bl      Function_223d014
	cmp     r0, #0x0
	mvneq   r5, #0x1
	beq     branch_2239a34
	add     r0, sp, #0x18
	add     r1, sp, #0x4
	add     r2, sp, #0x2c
	add     r3, sp, #0x40
	str     r4, [sp]
	bl      Function_223b564
	cmp     r0, #0x0
	mvneq   r5, #0x1
	beq     branch_2239a34
	add     r0, sp, #0x18
	bl      Function_223d534
	add     r1, r0, #0x7
	mov     r0, r1, asr #2
	add     r0, r1, r0, lsr #29
	mov     r0, r0, asr #3
	cmp     r0, r5
	mvngt   r5, #0x0
	bgt     branch_2239a34
	add     r0, sp, #0x18
	mov     r1, r6
	bl      Function_223cf98
	mov     r5, r0
.arm
branch_2239a34: @ 2239a34 :arm
	add     r0, sp, #0x4
	bl      Function_223d4b8
	add     r0, sp, #0x18
	bl      Function_223d4b8
	add     r0, sp, #0x2c
	bl      Function_223d4b8
	add     r0, sp, #0x40
	bl      Function_223d4b8
	cmp     r4, #0x0
	beq     branch_2239a64
	mov     r0, r4
	bl      Function_223d2e8
.arm
branch_2239a64: @ 2239a64 :arm
	mov     r0, r5
	add     sp, sp, #0x58
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x2239a74

.arm
Function_2239a74: @ 2239a74 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x7c
	mov     r4, #0x0
	mov     r5, r3
	mov     r3, r4
	str     r3, [sp, #0x34]
	ldr     r3, [r5]
	str     r0, [sp, #0x4]
	mov     r0, r4
	ldr     r3, [r3]
	str     r0, [sp, #0x1c]
	str     r0, [sp, #0x20]
	ands    r0, r3, #0x1
	ldr     r0, [sp, #0xa0]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xa0]
	mov     r7, r1
	mov     r6, r2
	addeq   sp, sp, #0x7c
	moveq   r0, r4
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	ldr     r1, [r7, #0x4]
	ldr     r0, [r0]
	cmp     r1, #0x0
	str     r0, [sp, #0xc]
	beq     branch_2239af8
	cmp     r1, #0x1
	bne     branch_2239b14
	ldr     r0, [r7]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_2239b14
.arm
branch_2239af8: @ 2239af8 :arm
	ldr     r0, [sp, #0x4]
	mov     r1, #0x0
	bl      Function_223d128
	add     sp, sp, #0x7c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x2239b14

.arm
branch_2239b14: @ 2239b14 :arm
	ldr     r1, [r6, #0x4]
	cmp     r1, #0x0
	beq     branch_2239b38
	cmp     r1, #0x1
	bne     branch_2239b54
	ldr     r0, [r6]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_2239b54
.arm
branch_2239b38: @ 2239b38 :arm
	ldr     r0, [sp, #0x4]
	mov     r1, #0x1
	bl      Function_223d128
	add     sp, sp, #0x7c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x2239b54

.arm
branch_2239b54: @ 2239b54 :arm
	cmp     r1, #0x1
	bne     branch_2239b88
	ldr     r0, [r6]
	ldr     r0, [r0]
	cmp     r0, #0x1
	bne     branch_2239b88
	ldr     r0, [sp, #0x4]
	mov     r1, r7
	bl      Function_223d1d0
	add     sp, sp, #0x7c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x2239b88

.arm
branch_2239b88: @ 2239b88 :arm
	ldr     r0, [sp, #0xa4]
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	bne     branch_2239bbc
	bl      Function_223ac0c
	str     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r2, [sp, #0xa0]
	mov     r1, r5
	bl      Function_223ac40
	cmp     r0, #0x0
	beq     branch_223a218
.arm
branch_2239bbc: @ 2239bbc :arm
	ldr     r3, [sp, #0xa0]
	add     r1, sp, #0x34
	mov     r4, r3
	ldr     r4, [r4, #0x10c]
	mov     r0, r6
	mov     r2, #0x0
	str     r4, [sp, #0x1c]
	bl      Function_223afd4
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r0, [sp, #0xa0]
	ldr     r0, [r0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xa0]
	str     r1, [r0]
	ldr     r0, [sp, #0x34]
	ldrb    r1, [r0, #0x2]
	ldrb    r0, [r0, #0x3]
	str     r0, [sp, #0x10]
	add     r0, r1, #0x3f
	bl      0x20e1f6c
	ldr     r1, [sp, #0x34]
	mov     r4, r0
	add     r0, r1, #0x4
	str     r0, [sp, #0x34]
	ldr     r0, [sp, #0x18]
	ldr     r3, [r7, #0x4]
	ldr     r10, [r0, #0x24]
	cmp     r3, r10
	bne     branch_2239c54
	ldr     r1, [r7]
	sub     r2, r10, #0x1
	ldr     r0, [r5]
	ldr     r1, [r1, r2, lsl #0x2]
	ldr     r0, [r0, r2, lsl #0x2]
	cmp     r1, r0
	strcc   r7, [sp, #0x14]
	bcc     branch_2239d0c
.arm
branch_2239c54: @ 2239c54 :arm
	cmp     r3, r10
	bge     branch_2239cc8
	ldr     r0, [sp, #0xa0]
	ldr     r3, [r0]
	add     r1, r0, #0x4
	add     r2, r3, #0x1
	str     r2, [r0]
	mov     r0, #0x14
	mla     r0, r3, r0, r1
	ldr     r2, [r7, #0x4]
	mov     r1, r0
	str     r2, [r1, #0x4]
	mov     r1, r10
	str     r0, [sp, #0x14]
	bl      Function_223d438
	ldr     r0, [r7, #0x4]
	mov     r2, #0x0
	cmp     r0, #0x0
	ble     branch_2239d0c
.arm
branch_2239ca0: @ 2239ca0 :arm
	ldr     r1, [r7]
	ldr     r0, [sp, #0x14]
	ldr     r1, [r1, r2, lsl #0x2]
	ldr     r0, [r0]
	str     r1, [r0, r2, lsl #0x2]
	ldr     r0, [r7, #0x4]
	add     r2, r2, #0x1
	cmp     r2, r0
	blt     branch_2239ca0
	b       branch_2239d0c
@ 0x2239cc8

.arm
branch_2239cc8: @ 2239cc8 :arm
	ldr     r0, [sp, #0xa0]
	mov     r2, r5
	ldr     r3, [r0]
	mov     r1, r7
	add     r5, r3, #0x1
	str     r5, [r0]
	add     r5, r0, #0x4
	mov     r0, #0x14
	mla     r0, r3, r0, r5
	ldr     r3, [sp, #0xa0]
	str     r0, [sp, #0x14]
	bl      Function_223b5c0
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r0, [sp, #0x14]
	mov     r1, r10
	bl      Function_223d438
.arm
branch_2239d0c: @ 2239d0c :arm
	ldr     r0, [sp, #0xa0]
	ldr     r3, [r0]
	ldr     r0, [r6, #0x4]
	add     r1, r3, #0x1
	mul     r2, r0, r4
	ldr     r0, [sp, #0xa0]
	mov     r4, r2, lsl #1
	str     r1, [r0]
	ldr     r1, [r0]
	add     r4, r4, #0x7
	add     r2, r1, #0x1
	str     r2, [r0]
	ldr     r2, [sp, #0x10]
	ldr     r0, [r0]
	mul     r5, r2, r10
	mov     r2, r4, asr #1
	add     r2, r4, r2, lsr #30
	add     r5, r5, r2, asr #2
	ldr     r2, [sp, #0xa0]
	mov     r6, #0x14
	add     r2, r2, #0x4
	mla     r8, r1, r6, r2
	mla     r4, r3, r6, r2
	ldr     r1, [sp, #0xa0]
	add     r3, r0, #0x1
	mla     r7, r0, r6, r2
	str     r3, [r1]
	mov     r0, r1
	ldr     r0, [r0]
	mla     r6, r0, r6, r2
	add     r1, r0, #0x1
	ldr     r0, [sp, #0xa0]
	str     r1, [r0]
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0, #0x8]
	cmp     r10, r0
	ldrle   r0, [sp, #0x4]
	ble     branch_2239db0
	ldr     r0, [sp, #0x4]
	mov     r1, r10
	bl      Function_223d268
.arm
branch_2239db0: @ 2239db0 :arm
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r0, [r8, #0x8]
	mov     r1, r10, lsl #2
	cmp     r1, r0
	movle   r0, r8
	ble     branch_2239dd4
	mov     r0, r8
	bl      Function_223d268
.arm
branch_2239dd4: @ 2239dd4 :arm
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r1, [r7, #0x8]
	mov     r0, r10, lsl #1
	str     r0, [sp, #0x24]
	cmp     r0, r1
	movle   r0, r7
	ble     branch_2239e00
	ldr     r1, [sp, #0x24]
	mov     r0, r7
	bl      Function_223d268
.arm
branch_2239e00: @ 2239e00 :arm
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r0, [r4, #0x8]
	cmp     r5, r0
	movle   r0, r4
	ble     branch_2239e24
	mov     r1, r5
	mov     r0, r4
	bl      Function_223d268
.arm
branch_2239e24: @ 2239e24 :arm
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r1, [r6, #0x8]
	ldr     r0, [sp, #0x24]
	cmp     r0, r1
	movle   r0, r6
	ble     branch_2239e4c
	ldr     r1, [sp, #0x24]
	mov     r0, r6
	bl      Function_223d268
.arm
branch_2239e4c: @ 2239e4c :arm
	cmp     r0, #0x0
	beq     branch_223a218
	ldr     r0, [sp, #0x18]
	ldr     r11, [r8]
	ldr     r8, [r7]
	ldr     r6, [r6]
	ldr     r1, [r4]
	ldr     r7, [r0, #0x48]
	ldr     r5, [r0, #0x20]
	ldr     r3, [sp, #0x18]
	str     r1, [sp, #0x38]
	str     r10, [sp]
	ldr     r1, [sp, #0x14]
	ldr     r3, [r3, #0xc]
	ldr     r1, [r1]
	mov     r0, r6
	mov     r2, r10
	bl      Function_223bb94
	str     r7, [sp]
	ldr     r0, [sp, #0x38]
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	bl      Function_223b1dc
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x1
	ble     branch_2239f54
	ldr     r1, [sp, #0x38]
	mov     r0, r6
	mov     r2, r10
	mov     r3, r11
	bl      Function_223b31c
	mov     r0, r11
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	str     r7, [sp]
	bl      Function_223b1dc
	ldr     r0, [sp, #0x10]
	mov     r4, #0x1
	cmp     r0, #0x1
	ble     branch_2239f54
	mov     r0, r10, lsl #2
	str     r0, [sp, #0x28]
	add     r9, sp, #0x38
.arm
branch_2239f00: @ 2239f00 :arm
	sub     r3, r4, #0x1
	ldr     r2, [r9, r3, lsl #0x2]
	ldr     r1, [sp, #0x28]
	mov     r0, r6
	add     r1, r2, r1
	str     r1, [r9, r4, lsl #0x2]
	str     r10, [sp]
	ldr     r1, [r9, r3, lsl #0x2]
	mov     r2, r10
	mov     r3, r11
	bl      Function_223bb94
	str     r7, [sp]
	ldr     r0, [r9, r4, lsl #0x2]
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	bl      Function_223b1dc
	ldr     r0, [sp, #0x10]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_2239f00
.arm
branch_2239f54: @ 2239f54 :arm
	ldr     r3, [sp, #0x34]
	add     r0, r3, #0x1
	str     r0, [sp, #0x34]
	add     r2, r0, #0x1
	ldrb    r1, [r3]
	str     r2, [sp, #0x34]
	ldrb    r9, [r3, #0x1]
	cmp     r9, #0xff
	bne     branch_2239fd4
	cmp     r1, #0x0
	bne     branch_2239fd4
	add     r0, r2, #0x1
	str     r0, [sp, #0x34]
	ldrb    r1, [r2]
	b       branch_2239fa4
@ 0x2239f90

.arm
branch_2239f90: @ 2239f90 :arm
	add     r9, r9, #1, 24 @ #0x100
	ldr     r1, [sp, #0x34]
	add     r1, r1, #0x2
	str     r1, [sp, #0x34]
	ldrb    r1, [r0, #0x1]
.arm
branch_2239fa4: @ 2239fa4 :arm
	ldr     r0, [sp, #0x34]
	ldrb    r2, [r0]
	cmp     r2, #0xff
	bne     branch_2239fbc
	cmp     r1, #0x0
	beq     branch_2239f90
.arm
branch_2239fbc: @ 2239fbc :arm
	ldr     r2, [sp, #0x34]
	add     r2, r2, #0x1
	str     r2, [sp, #0x34]
	ldrb    r0, [r0]
	add     r0, r0, #0x1
	add     r9, r9, r0
.arm
branch_2239fd4: @ 2239fd4 :arm
	mov     r2, r1, asr #1
	add     r0, sp, #0x38
	ldr     r0, [r0, r2, lsl #0x2]
	mov     r1, r8
	mov     r2, r10, lsl #2
	bl      0x20c4db0
	cmp     r9, #0x0
	beq     branch_223a1ac
	mov     r0, #0xff
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	str     r0, [sp, #0x30]
.arm
branch_223a004: @ 223a004 :arm
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_223a038
	mov     r3, r0
	ldr     r1, [sp, #0x2c]
	ldr     r2, [sp, #0x20]
	ldr     r3, [r3]
	blx     r3
	cmp     r0, #0x0
	ldr     r0, [sp, #0x20]
	add     r0, r0, #0x1
	str     r0, [sp, #0x20]
	bne     branch_223a218
.arm
branch_223a038: @ 223a038 :arm
	ldr     r0, [sp, #0xa0]
	ldr     r0, [r0, #0x108]
	ands    r0, r0, #1, 18 @ #0x4000
	bne     branch_223a218
	cmp     r9, #0x0
	ldr     r4, [sp, #0x30]
	ble     branch_223a08c
.arm
branch_223a054: @ 223a054 :arm
	mov     r0, r6
	mov     r1, r8
	mov     r2, r10
	mov     r3, r11
	bl      Function_223b31c
	str     r7, [sp]
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	bl      Function_223b1dc
	add     r4, r4, #0x1
	cmp     r4, r9
	blt     branch_223a054
.arm
branch_223a08c: @ 223a08c :arm
	ldr     r2, [sp, #0x34]
	add     r0, r2, #0x1
	str     r0, [sp, #0x34]
	add     r1, r0, #0x1
	ldrb    r0, [r2]
	str     r1, [sp, #0x34]
	ldrb    r9, [r2, #0x1]
	cmp     r9, #0xff
	bne     branch_223a10c
	cmp     r0, #0x0
	bne     branch_223a10c
	add     r0, r1, #0x1
	str     r0, [sp, #0x34]
	ldrb    r0, [r1]
	b       branch_223a0dc
@ 0x223a0c8

.arm
branch_223a0c8: @ 223a0c8 :arm
	add     r9, r9, #1, 24 @ #0x100
	ldr     r0, [sp, #0x34]
	add     r0, r0, #0x2
	str     r0, [sp, #0x34]
	ldrb    r0, [r1, #0x1]
.arm
branch_223a0dc: @ 223a0dc :arm
	ldr     r1, [sp, #0x34]
	ldrb    r2, [r1]
	cmp     r2, #0xff
	bne     branch_223a0f4
	cmp     r0, #0x0
	beq     branch_223a0c8
.arm
branch_223a0f4: @ 223a0f4 :arm
	ldr     r2, [sp, #0x34]
	add     r2, r2, #0x1
	str     r2, [sp, #0x34]
	ldrb    r1, [r1]
	add     r1, r1, #0x1
	add     r9, r9, r1
.arm
branch_223a10c: @ 223a10c :arm
	cmp     r0, #0x0
	bne     branch_223a11c
	cmp     r9, #0x0
	beq     branch_223a1ac
.arm
branch_223a11c: @ 223a11c :arm
	cmp     r9, #0x0
	bne     branch_223a12c
	cmp     r0, #0x1
	beq     branch_223a168
.arm
branch_223a12c: @ 223a12c :arm
	mov     r1, r0, asr #1
	str     r10, [sp]
	add     r0, sp, #0x38
	ldr     r3, [r0, r1, lsl #0x2]
	mov     r0, r6
	mov     r1, r8
	mov     r2, r10
	bl      Function_223bb94
	mov     r0, r8
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	str     r7, [sp]
	bl      Function_223b1dc
	b       branch_223a1a4
@ 0x223a168

.arm
branch_223a168: @ 223a168 :arm
	ldr     r0, [sp, #0x14]
	str     r10, [sp]
	ldr     r3, [r0]
	mov     r0, r6
	mov     r1, r8
	mov     r2, r10
	bl      Function_223bb94
	ldr     r0, [sp, #0x4]
	str     r7, [sp]
	ldr     r0, [r0]
	mov     r1, r6
	mov     r2, r5
	mov     r3, r10
	bl      Function_223b1dc
	b       branch_223a1f0
@ 0x223a1a4

.arm
branch_223a1a4: @ 223a1a4 :arm
	cmp     r9, #0x0
	bne     branch_223a004
.arm
branch_223a1ac: @ 223a1ac :arm
	ldr     r0, [sp, #0x24]
	mov     r2, r10
	cmp     r10, r0
	bge     branch_223a1d4
	mov     r1, #0x0
.arm
branch_223a1c0: @ 223a1c0 :arm
	ldr     r0, [sp, #0x24]
	str     r1, [r8, r2, lsl #0x2]
	add     r2, r2, #0x1
	cmp     r2, r0
	blt     branch_223a1c0
.arm
branch_223a1d4: @ 223a1d4 :arm
	ldr     r0, [sp, #0x4]
	str     r7, [sp]
	ldr     r0, [r0]
	mov     r1, r8
	mov     r2, r5
	mov     r3, r10
	bl      Function_223b1dc
.arm
branch_223a1f0: @ 223a1f0 :arm
	ldr     r0, [sp, #0xa0]
	ldr     r0, [r0, #0x108]
	ands    r0, r0, #1, 18 @ #0x4000
	bne     branch_223a218
	ldr     r0, [sp, #0x4]
	mov     r1, r0
	str     r10, [r1, #0x4]
	bl      Function_223d3ec
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.arm
branch_223a218: @ 223a218 :arm
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_223a240
	ldr     r3, [r0]
	mov     r1, #0xff
	mvn     r2, #0x0
	blx     r3
	cmp     r0, #0x0
	movne   r0, #0x0
	strne   r0, [sp, #0x8]
.arm
branch_223a240: @ 223a240 :arm
	ldr     r0, [sp, #0xa4]
	cmp     r0, #0x0
	bne     branch_223a25c
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_223a25c
	bl      Function_223ab90
.arm
branch_223a25c: @ 223a25c :arm
	ldr     r2, [sp, #0xc]
	ldr     r1, [sp, #0xa0]
	ldr     r0, [sp, #0x8]
	str     r2, [r1]
	add     sp, sp, #0x7c
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a278

.arm
Function_223a278: @ 223a278 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #99, 30 @ #0x18c
	mov     r10, r0
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r5, r1
	ldr     r1, [sp, #0x8]
	mov     r0, r2
	str     r2, [sp, #0x4]
	mov     r4, r3
	str     r1, [sp, #0xc]
	ldr     r9, [sp, #0x1b0]
	bl      Function_223d534
	ldr     r1, [r5, #0x4]
	mov     r8, r0
	cmp     r1, #0x0
	beq     branch_223a2d4
	cmp     r1, #0x1
	bne     branch_223a2f0
	ldr     r0, [r5]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_223a2f0
.arm
branch_223a2d4: @ 223a2d4 :arm
	mov     r0, r10
	mov     r1, #0x0
	bl      Function_223d128
	add     sp, sp, #99, 30 @ #0x18c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a2f0

.arm
branch_223a2f0: @ 223a2f0 :arm
	ldr     r0, [sp, #0x4]
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_223a318
	cmp     r1, #0x1
	bne     branch_223a334
	ldr     r0, [r0]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_223a334
.arm
branch_223a318: @ 223a318 :arm
	mov     r0, r10
	mov     r1, #0x1
	bl      Function_223d128
	add     sp, sp, #99, 30 @ #0x18c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a334

.arm
branch_223a334: @ 223a334 :arm
	cmp     r1, #0x1
	bne     branch_223a36c
	ldr     r0, [sp, #0x4]
	ldr     r0, [r0]
	ldr     r0, [r0]
	cmp     r0, #0x1
	bne     branch_223a36c
	mov     r0, r10
	mov     r1, r5
	bl      Function_223d1d0
	add     sp, sp, #99, 30 @ #0x18c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a36c

.arm
branch_223a36c: @ 223a36c :arm
	add     r0, sp, #0x18
	bl      Function_223ab68
	add     r0, sp, #0x18
	mov     r1, r4
	mov     r2, r9
	bl      Function_223aaf0
	cmp     r0, #0x0
	ble     branch_223a5b8
	add     r0, sp, #0x4c
	bl      Function_223d3d8
	ldr     r2, [r9]
	add     r1, r9, #0x4
	mov     r0, #0x14
	mla     r6, r2, r0, r1
	add     r1, r2, #0x1
	str     r1, [r9]
	mov     r2, r4
	mov     r4, #0x1
	add     r0, sp, #0x4c
	mov     r1, r5
	mov     r3, r9
	str     r4, [sp, #0xc]
	bl      Function_223b5c0
	cmp     r0, #0x0
	beq     branch_223a5b8
	add     r1, sp, #0x4c
	add     r3, sp, #0x18
	mov     r0, r6
	mov     r2, r1
	str     r9, [sp]
	bl      Function_223aa44
	cmp     r0, #0x0
	beq     branch_223a5b8
	cmp     r8, #0x11
	movle   r11, r4
	ble     branch_223a414
	cmp     r8, #1, 24 @ #0x100
	movge   r11, #0x5
	bge     branch_223a414
	cmp     r8, #0x80
	movge   r11, #0x4
	movlt   r11, #0x3
.arm
branch_223a414: @ 223a414 :arm
	sub     r0, r11, #0x1
	mov     r4, #0x1
	mov     r7, r4, lsl r0
	cmp     r7, #0x1
	ble     branch_223a470
	add     r5, sp, #0x60
.arm
branch_223a42c: @ 223a42c :arm
	mov     r0, r5
	bl      Function_223d3d8
	sub     r3, r4, #0x1
	mov     r2, #0x14
	add     r1, sp, #0x4c
	mla     r1, r3, r2, r1
	mov     r0, r5
	mov     r2, r6
	add     r3, sp, #0x18
	str     r9, [sp]
	bl      Function_223aa44
	cmp     r0, #0x0
	beq     branch_223a5b8
	add     r4, r4, #0x1
	cmp     r4, r7
	add     r5, r5, #0x14
	blt     branch_223a42c
.arm
branch_223a470: @ 223a470 :arm
	mov     r5, #0x1
	mov     r0, r10
	mov     r1, r5
	str     r4, [sp, #0xc]
	sub     r8, r8, #0x1
	bl      Function_223d128
	cmp     r0, #0x0
	beq     branch_223a5b8
	mov     r0, r5
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x14]
.arm
branch_223a4a0: @ 223a4a0 :arm
	ldr     r0, [sp, #0x4]
	mov     r1, r8
	bl      Function_223ce38
	cmp     r0, #0x0
	bne     branch_223a4ec
	cmp     r5, #0x0
	bne     branch_223a4dc
	mov     r0, r10
	mov     r1, r10
	mov     r2, r10
	add     r3, sp, #0x18
	str     r9, [sp]
	bl      Function_223aa44
	cmp     r0, #0x0
	beq     branch_223a5b8
.arm
branch_223a4dc: @ 223a4dc :arm
	cmp     r8, #0x0
	beq     branch_223a5b0
	sub     r8, r8, #0x1
	b       branch_223a4a0
@ 0x223a4ec

.arm
branch_223a4ec: @ 223a4ec :arm
	ldr     r6, [sp, #0x10]
	ldr     r7, [sp, #0x14]
	cmp     r11, #0x1
	mov     r4, r6
	ble     branch_223a530
.arm
branch_223a500: @ 223a500 :arm
	subs    r1, r8, r4
	bmi     branch_223a530
	ldr     r0, [sp, #0x4]
	bl      Function_223ce38
	cmp     r0, #0x0
	subne   r0, r4, r7
	movne   r0, r6, lsl r0
	movne   r7, r4
	add     r4, r4, #0x1
	orrne   r6, r0, #0x1
	cmp     r4, r11
	blt     branch_223a500
.arm
branch_223a530: @ 223a530 :arm
	cmp     r5, #0x0
	add     r5, r7, #0x1
	bne     branch_223a574
	cmp     r5, #0x0
	ldr     r4, [sp, #0x14]
	ble     branch_223a574
.arm
branch_223a548: @ 223a548 :arm
	mov     r0, r10
	mov     r1, r10
	mov     r2, r10
	add     r3, sp, #0x18
	str     r9, [sp]
	bl      Function_223aa44
	cmp     r0, #0x0
	beq     branch_223a5b8
	add     r4, r4, #0x1
	cmp     r4, r5
	blt     branch_223a548
.arm
branch_223a574: @ 223a574 :arm
	mov     r3, r6, asr #1
	mov     r1, #0x14
	add     r0, sp, #0x4c
	mla     r2, r3, r1, r0
	mov     r0, r10
	mov     r1, r10
	add     r3, sp, #0x18
	str     r9, [sp]
	bl      Function_223aa44
	cmp     r0, #0x0
	beq     branch_223a5b8
	add     r0, r7, #0x1
	ldr     r5, [sp, #0x14]
	subs    r8, r8, r0
	bpl     branch_223a4a0
.arm
branch_223a5b0: @ 223a5b0 :arm
	mov     r0, #0x1
	str     r0, [sp, #0x8]
.arm
branch_223a5b8: @ 223a5b8 :arm
	ldr     r0, [sp, #0xc]
	ldr     r1, [r9]
	cmp     r0, #0x0
	sub     r0, r1, #0x1
	str     r0, [r9]
	mov     r4, #0x0
	ble     branch_223a5f4
	add     r5, sp, #0x4c
.arm
branch_223a5d8: @ 223a5d8 :arm
	mov     r0, r5
	bl      Function_223d510
	ldr     r0, [sp, #0xc]
	add     r4, r4, #0x1
	cmp     r4, r0
	add     r5, r5, #0x14
	blt     branch_223a5d8
.arm
branch_223a5f4: @ 223a5f4 :arm
	add     r0, sp, #0x18
	bl      Function_223ab34
	ldr     r0, [sp, #0x8]
	add     sp, sp, #99, 30 @ #0x18c
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a60c

.arm
Function_223a60c: @ 223a60c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4
	movs    r8, r2
	mov     r10, r0
	mov     r9, r1
	mov     r11, #0x0
	mov     r5, #0x2
	addeq   sp, sp, #0x4
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	mov     r0, r8
	bl      Function_223d568
	cmp     r0, #0x20
	beq     branch_223a660
	mov     r1, #0x1
	cmp     r10, r1, lsl r0
	addhi   sp, sp, #0x4
	movhi   r0, r11
	ldmhifd sp!, {r4-r11,lr}
	bxhi    lr
.arm
branch_223a660: @ 223a660 :arm
	cmp     r10, r8
	rsb     r2, r0, #0x20
	subcs   r10, r10, r8
	cmp     r2, #0x0
	movne   r1, r10, lsl r2
	rsbne   r0, r2, #0x20
	orrne   r10, r1, r9, lsr r0
	movne   r8, r8, lsl r2
	ldr     r4, [pc, #0xc0] @ [0x223a748] (=0xffff)
	movne   r9, r9, lsl r2
	and     r7, r4, r8, lsr #16
	and     r6, r8, r4
.arm
branch_223a690: @ 223a690 :arm
	mov     r0, r10, lsr #16
	cmp     r0, r7
	moveq   r0, r4
	beq     branch_223a6ac
	mov     r0, r10
	mov     r1, r7
	bl      0x20e2178
.arm
branch_223a6ac: @ 223a6ac :arm
	mul     r12, r0, r7
	mul     r3, r0, r6
	and     r2, r4, r9, lsr #16
.arm
branch_223a6b8: @ 223a6b8 :arm
	mov     lr, #1, 16 @ #0x10000
	sub     r1, r10, r12
	rsb     lr, lr, #0x0
	ands    lr, r1, lr
	bne     branch_223a6e4
	add     r1, r2, r1, lsl #16
	cmp     r3, r1
	subhi   r12, r12, r7
	subhi   r3, r3, r6
	subhi   r0, r0, #0x1
	bhi     branch_223a6b8
.arm
branch_223a6e4: @ 223a6e4 :arm
	mul     r2, r0, r6
	and     r1, r2, r4
	mul     r3, r0, r7
	mov     r1, r1, lsl #16
	cmp     r9, r1
	add     r2, r3, r2, lsr #16
	addcc   r2, r2, #0x1
	cmp     r10, r2
	addcc   r10, r10, r8
	sub     r9, r9, r1
	subcc   r0, r0, #0x1
	sub     r1, r10, r2
	subs    r5, r5, #0x1
	beq     branch_223a738
	and     r2, r0, r4
	mov     r1, r1, lsl #16
	and     r0, r9, r4
	orr     r10, r1, r9, lsr #16
	mov     r11, r2, lsl #16
	mov     r9, r0, lsl #16
	b       branch_223a690
@ 0x223a738

.arm
branch_223a738: @ 223a738 :arm
	orr     r0, r11, r0
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a748

.word 0xffff @ 0x223a748
.arm
Function_223a74c: @ 223a74c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x18
	mov     r8, r0
	add     r0, sp, #0x4
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	mvn     r4, #0x0
	bl      Function_223d3d8
	add     r0, sp, #0x4
	mov     r1, #0x0
	bl      Function_223d128
	add     r0, sp, #0x4
	mov     r1, r6
	bl      Function_223cea8
	cmp     r0, #0x0
	beq     branch_223a7b0
	add     r2, sp, #0x4
	mov     r0, r8
	mov     r3, r7
	mov     r1, #0x0
	str     r5, [sp]
	bl      Function_223b5f4
	cmp     r0, #0x0
	movne   r4, r6
.arm
branch_223a7b0: @ 223a7b0 :arm
	add     r0, sp, #0x4
	bl      Function_223d4b8
	mov     r0, r4
	add     sp, sp, #0x18
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x223a7c8

.arm
Function_223a7c8: @ 223a7c8 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	ldr     r6, [sp, #0x30]
	mov     r9, r1
	ldr     r11, [r6]
	movs    r10, r0
	add     r0, r11, #0x1
	str     r0, [r6]
	ldr     r7, [r6]
	add     r4, r6, #0x4
	mov     r0, #0x14
	mla     r5, r11, r0, r4
	add     r12, r7, #0x1
	mov     r1, #0x0
	str     r5, [sp, #0x4]
	mla     r5, r7, r0, r4
	str     r12, [r6]
	str     r1, [sp]
	ldreq   r1, [r6]
	mov     r8, r2
	mlaeq   r10, r1, r0, r4
	addeq   r0, r1, #0x1
	streq   r0, [r6]
	mov     r7, r3
	cmp     r9, #0x0
	bne     branch_223a848
	ldr     r2, [r6]
	add     r1, r6, #0x4
	mov     r0, #0x14
	mla     r9, r2, r0, r1
	add     r0, r2, #0x1
	str     r0, [r6]
.arm
branch_223a848: @ 223a848 :arm
	mov     r0, r8
	mov     r1, r7
	bl      Function_223cf44
	cmp     r0, #0x0
	bge     branch_223a888
	mov     r0, r10
	mov     r1, #0x0
	bl      Function_223d128
	mov     r0, r9
	mov     r1, r8
	bl      Function_223d1d0
	add     sp, sp, #0xc
	str     r11, [r6]
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223a888

.arm
branch_223a888: @ 223a888 :arm
	mov     r0, r8
	bl      Function_223d534
	ldr     r1, [r7, #0x28]
	mov     r2, r0
	mov     r0, r1, lsl #1
	cmp     r0, r2
	movgt   r2, r0
	suble   r0, r2, r0
	movgt   r4, #0x0
	addle   r0, r0, r0, lsr #31
	movle   r4, r0, asr #1
	ldr     r1, [r7, #0x2c]
	add     r0, r2, r2, lsr #31
	mov     r0, r0, asr #1
	cmp     r2, r1
	str     r0, [sp, #0x8]
	beq     branch_223a8e0
	mov     r1, r7
	mov     r3, r6
	add     r0, r7, #0x14
	bl      Function_223a74c
	str     r0, [r7, #0x2c]
.arm
branch_223a8e0: @ 223a8e0 :arm
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x4]
	mov     r1, r8
	sub     r2, r2, r4
	bl      Function_223c4e0
	cmp     r0, #0x0
	beq     branch_223aa30
	ldr     r1, [sp, #0x4]
	mov     r0, r5
	mov     r3, r6
	add     r2, r7, #0x14
	bl      Function_223bcb8
	cmp     r0, #0x0
	beq     branch_223aa30
	ldr     r2, [sp, #0x8]
	mov     r0, r10
	mov     r1, r5
	add     r2, r2, r4
	bl      Function_223c4e0
	cmp     r0, #0x0
	beq     branch_223aa30
	mov     r4, #0x0
	mov     r0, r5
	mov     r1, r7
	mov     r2, r10
	mov     r3, r6
	str     r4, [r10, #0xc]
	bl      Function_223bcb8
	cmp     r0, #0x0
	beq     branch_223aa30
	mov     r0, r9
	mov     r1, r8
	mov     r2, r5
	bl      Function_223befc
	cmp     r0, #0x0
	beq     branch_223aa30
	mov     r5, r4
	mov     r0, r9
	mov     r1, r7
	str     r5, [r9, #0xc]
	bl      Function_223cf44
	cmp     r0, #0x0
	blt     branch_223a9dc
	mov     r4, #0x1
.arm
branch_223a990: @ 223a990 :arm
	cmp     r5, #0x2
	add     r5, r5, #0x1
	bgt     branch_223aa30
	mov     r0, r9
	mov     r1, r9
	mov     r2, r7
	bl      Function_223befc
	cmp     r0, #0x0
	beq     branch_223aa30
	mov     r0, r10
	mov     r1, r4
	bl      Function_223c3b8
	cmp     r0, #0x0
	beq     branch_223aa30
	mov     r0, r9
	mov     r1, r7
	bl      Function_223cf44
	cmp     r0, #0x0
	bge     branch_223a990
.arm
branch_223a9dc: @ 223a9dc :arm
	ldr     r0, [r9, #0x4]
	mov     r1, #0x1
	cmp     r0, #0x0
	beq     branch_223aa08
	cmp     r0, #0x1
	bne     branch_223aa04
	ldr     r0, [r9]
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_223aa08
.arm
branch_223aa04: @ 223aa04 :arm
	mov     r1, #0x0
.arm
branch_223aa08: @ 223aa08 :arm
	cmp     r1, #0x0
	movne   r0, #0x0
	ldreq   r0, [r8, #0xc]
	str     r0, [r9, #0xc]
	mov     r0, #0x1
	ldr     r2, [r8, #0xc]
	ldr     r1, [r7, #0xc]
	str     r0, [sp]
	eor     r0, r2, r1
	str     r0, [r10, #0xc]
.arm
branch_223aa30: @ 223aa30 :arm
	ldr     r0, [sp]
	str     r11, [r6]
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223aa44

.arm
Function_223aa44: @ 223aa44 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	ldr     r4, [sp, #0x20]
	mov     r12, #0x14
	ldr     r5, [r4]
	add     lr, r4, #0x4
	mla     r6, r5, r12, lr
	add     r12, r5, #0x1
	mov     r8, r0
	mov     r7, r3
	str     r12, [r4]
	cmp     r2, #0x0
	mov     r5, #0x0
	beq     branch_223aab4
	cmp     r1, r2
	bne     branch_223aa9c
	mov     r0, r6
	mov     r2, r4
	bl      Function_223b408
	cmp     r0, #0x0
	bne     branch_223aab8
	b       branch_223aad4
@ 0x223aa9c

.arm
branch_223aa9c: @ 223aa9c :arm
	mov     r0, r6
	mov     r3, r4
	bl      Function_223bcb8
	cmp     r0, #0x0
	bne     branch_223aab8
	b       branch_223aad4
@ 0x223aab4

.arm
branch_223aab4: @ 223aab4 :arm
	mov     r6, r1
.arm
branch_223aab8: @ 223aab8 :arm
	mov     r1, r8
	mov     r2, r6
	mov     r3, r7
	mov     r0, #0x0
	str     r4, [sp]
	bl      Function_223a7c8
	mov     r5, #0x1
.arm
branch_223aad4: @ 223aad4 :arm
	ldr     r1, [r4]
	mov     r0, r5
	sub     r1, r1, #0x1
	str     r1, [r4]
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x223aaf0

.arm
Function_223aaf0: @ 223aaf0 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	mov     r4, r1
	bl      Function_223d1d0
	add     r0, r5, #0x14
	mov     r1, #0x0
	bl      Function_223d128
	mov     r0, r4
	bl      Function_223d534
	str     r0, [r5, #0x28]
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223ab34

.arm
Function_223ab34: @ 223ab34 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_223d4b8
	add     r0, r4, #0x14
	bl      Function_223d4b8
	ldr     r0, [r4, #0x30]
	ands    r0, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	mov     r0, r4
	bl      Function_223d5e4
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223ab68

.arm
Function_223ab68: @ 223ab68 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_223d3d8
	add     r0, r4, #0x14
	bl      Function_223d3d8
	mov     r0, #0x0
	str     r0, [r4, #0x28]
	str     r0, [r4, #0x30]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223ab90

.arm
Function_223ab90: @ 223ab90 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0xc
	bl      Function_223d4b8
	add     r0, r4, #0x20
	bl      Function_223d4b8
	add     r0, r4, #0x34
	bl      Function_223d4b8
	ldr     r0, [r4, #0x4c]
	ands    r0, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	mov     r0, r4
	bl      Function_223d5e4
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223abd0

.arm
Function_223abd0: @ 223abd0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	str     r1, [r4]
	add     r0, r4, #0xc
	str     r1, [r4, #0x8]
	bl      Function_223d3d8
	add     r0, r4, #0x20
	bl      Function_223d3d8
	add     r0, r4, #0x34
	bl      Function_223d3d8
	mov     r0, #0x0
	str     r0, [r4, #0x4c]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223ac0c

.arm
Function_223ac0c: @ 223ac0c :arm
	stmfd   sp!, {r4,lr}
	mov     r0, #0x50
	bl      Function_223d62c
	movs    r4, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	bl      Function_223abd0
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x4c]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223ac40

.arm
Function_223ac40: @ 223ac40 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x14
	mov     r6, r1
	ldr     r3, [r6, #0x4]
	mov     r7, r0
	cmp     r3, #0x0
	mov     r5, r2
	addeq   sp, sp, #0x14
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	add     r0, r7, #0x20
	add     r4, r7, #0xc
	bl      Function_223d1d0
	cmp     r0, #0x0
	addeq   sp, sp, #0x14
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	add     r0, sp, #0x0
	bl      Function_223d3d8
	mov     r1, #0x1
	mov     r0, r6
	str     r1, [r7]
	bl      Function_223d534
	add     r1, r0, #0x1f
	mov     r0, r1, asr #4
	add     r0, r1, r0, lsr #27
	mov     r2, r0, asr #5
	mov     r0, r4
	mov     r1, #0x0
	str     r2, [r7, #0x8]
	bl      Function_223d128
	cmp     r0, #0x0
	addeq   sp, sp, #0x14
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	mov     r0, r4
	mov     r1, #0x20
	bl      Function_223cea8
	cmp     r0, #0x0
	beq     branch_223ade4
	ldr     r0, [r6]
	ldr     r4, [r0]
	mov     r0, r4
	bl      Function_223b148
	mov     r1, r0
	add     r0, sp, #0x0
	bl      Function_223d128
	cmp     r0, #0x0
	beq     branch_223ade4
	add     r0, sp, #0x0
	mov     r2, #0x20
	mov     r1, r0
	bl      Function_223c5fc
	cmp     r0, #0x0
	beq     branch_223ade4
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_223ad5c
	cmp     r0, #0x1
	bne     branch_223ad4c
	ldr     r0, [sp]
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_223ad5c
.arm
branch_223ad4c: @ 223ad4c :arm
	add     r0, sp, #0x0
	mov     r1, #0x1
	bl      Function_223c258
	b       branch_223ad70
@ 0x223ad5c

.arm
branch_223ad5c: @ 223ad5c :arm
	add     r0, sp, #0x0
	mvn     r1, #0x0
	bl      Function_223d128
	cmp     r0, #0x0
	beq     branch_223ade4
.arm
branch_223ad70: @ 223ad70 :arm
	ldr     r2, [sp, #0x4]
	cmp     r2, #0x1
	ldrge   r0, [sp]
	ldrge   r1, [r0]
	movlt   r1, #0x0
	cmp     r2, #0x2
	ldrge   r0, [sp]
	mov     r2, r4
	ldrge   r0, [r0, #0x4]
	movlt   r0, #0x0
	bl      Function_223a60c
	str     r0, [r7, #0x48]
	add     r0, r7, #0xc
	mov     r1, #0x0
	bl      Function_223d128
	ldr     r1, [r7, #0x8]
	add     r0, r7, #0xc
	mov     r1, r1, lsl #6
	bl      Function_223cea8
	cmp     r0, #0x0
	beq     branch_223ade4
	add     r0, r7, #0xc
	mov     r1, r0
	mov     r3, r5
	add     r2, r7, #0x20
	bl      Function_223b5c0
	ldr     r1, [r7, #0x8]
	add     r0, r7, #0xc
	bl      Function_223d438
.arm
branch_223ade4: @ 223ade4 :arm
	add     r0, sp, #0x0
	bl      Function_223d4b8
	mov     r0, #0x1
	add     sp, sp, #0x14
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x223adfc

.arm
Function_223adfc: @ 223adfc :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	mov     r4, r2
	mov     r7, r1
	cmp     r4, #0x6
	mov     r5, r0
	movgt   r4, #0x6
	mov     r1, #0x1
	mov     r2, r1, lsl r4
	ldr     r0, [r7, #0x4]
	sub     r2, r2, #0x1
	add     r0, r4, r0, lsl #5
	ldr     r3, [pc, #0x19c] @ [0x223afd0] (=0x223f158)
	str     r2, [sp]
	ldr     r2, [r3, r4, lsl #0x2]
	mov     r1, r4
	sub     r0, r0, #0x1
	str     r2, [sp, #0x4]
	mov     r6, #0x0
	bl      0x20e1f6c
	mov     r12, #0x0
	mov     r0, r0, lsl #1
	add     r0, r0, #0x2
	mov     r8, r6
	add     r1, r5, r0
	strb    r8, [r5, r0]
	strb    r8, [r1, #-0x1]
	ldr     r0, [r7]
	ldr     r2, [r7, #0x4]
	ldr     r7, [r0]
	add     lr, r0, #0x4
	cmp     r2, #0x1
	sub     r9, r1, #0x2
	ldrgt   r8, [lr], #0x4
	mov     r10, r7
	mov     r0, r12
	str     r12, [sp, #0x8]
	mov     r1, #0xff
	mov     r11, r12
.arm
branch_223ae98: @ 223ae98 :arm
	ldr     r3, [sp]
	and     r3, r10, r3
	ldr     r10, [sp, #0x4]
	ldrb    r10, [r10, r3]
	cmp     r10, #0x0
	beq     branch_223aef8
	add     r12, r12, r10
	add     r6, r6, r10
	cmp     r6, #0x20
	bcc     branch_223aee0
	cmp     r2, #0x1
	ble     branch_223aef8
	sub     r2, r2, #0x1
	mov     r7, r8
	cmp     r2, #0x1
	movle   r8, r11
	ldrgt   r8, [lr], #0x4
	sub     r6, r6, #0x20
.arm
branch_223aee0: @ 223aee0 :arm
	cmp     r6, #0x0
	moveq   r10, r7
	movne   r10, r7, lsr r6
	rsbne   r3, r6, #0x20
	orrne   r10, r10, r8, lsl r3
	b       branch_223ae98
@ 0x223aef8

.arm
branch_223aef8: @ 223aef8 :arm
	cmp     r3, #0x0
	beq     branch_223af7c
	strb    r12, [r9]
	strb    r3, [r9, #-0x1]
	cmp     r12, #1, 24 @ #0x100
	sub     r9, r9, #0x2
	bcc     branch_223af34
	cmp     r12, #1, 24 @ #0x100
	bcc     branch_223af34
.arm
branch_223af1c: @ 223af1c :arm
	strb    r1, [r9]
	sub     r12, r12, #1, 24 @ #0x100
	strb    r0, [r9, #-0x1]
	sub     r9, r9, #0x2
	cmp     r12, #1, 24 @ #0x100
	bcs     branch_223af1c
.arm
branch_223af34: @ 223af34 :arm
	mov     r12, r4
	add     r6, r6, r4
	cmp     r6, #0x20
	bcc     branch_223af64
	cmp     r2, #0x1
	ble     branch_223af7c
	sub     r2, r2, #0x1
	mov     r7, r8
	cmp     r2, #0x1
	ldrle   r8, [sp, #0x8]
	sub     r6, r6, #0x20
	ldrgt   r8, [lr], #0x4
.arm
branch_223af64: @ 223af64 :arm
	cmp     r6, #0x0
	moveq   r10, r7
	movne   r10, r7, lsr r6
	rsbne   r3, r6, #0x20
	orrne   r10, r10, r8, lsl r3
	b       branch_223ae98
@ 0x223af7c

.arm
branch_223af7c: @ 223af7c :arm
	add     r9, r9, #0x1
	mov     r0, #0x2
	b       branch_223afa0
@ 0x223af88

.arm
branch_223af88: @ 223af88 :arm
	strb    r2, [r5]
	ldrb    r1, [r9, #0x1]
	add     r9, r9, #0x2
	add     r0, r0, #0x2
	strb    r1, [r5, #0x1]
	add     r5, r5, #0x2
.arm
branch_223afa0: @ 223afa0 :arm
	ldrb    r2, [r9]
	cmp     r2, #0x0
	bne     branch_223af88
	ldrb    r1, [r9, #0x1]
	cmp     r1, #0x0
	bne     branch_223af88
	mov     r1, #0x0
	strb    r1, [r5]
	strb    r1, [r5, #0x1]
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223afd0

.word 0x223f158 @ 0x223afd0
.arm
Function_223afd4: @ 223afd4 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x4
	ldr     r5, [r3], #0x4
	mov     r2, #0x14
	mla     r4, r5, r2, r3
	mov     r9, r0
	ldr     r0, [r9, #0x4]
	mov     r8, r1
	cmp     r0, #0x0
	mov     r5, #0x0
	mov     r1, r0, lsl #5
	addeq   sp, sp, #0x4
	moveq   r0, r5
	ldmeqfd sp!, {r4-r9,lr}
	bxeq    lr
	cmp     r0, #0x1
	bne     branch_223b074
	cmp     r0, #0x1
	bne     branch_223b038
	ldr     r2, [r9]
	ldr     r1, [pc, #0x10c] @ [0x223b138] (=0x10001)
	ldr     r2, [r2]
	cmp     r2, r1
	ldreq   r5, [pc, #0x104] @ [0x223b13c] (=0x223dec4)
	beq     branch_223b064
.arm
branch_223b038: @ 223b038 :arm
	ldr     r1, [r9]
	ldr     r1, [r1]
	cmp     r1, #0x11
	bne     branch_223b054
	cmp     r0, #0x1
	ldreq   r5, [pc, #0xec] @ [0x223b140] (=0x223dedc)
	beq     branch_223b064
.arm
branch_223b054: @ 223b054 :arm
	cmp     r1, #0x3
	bne     branch_223b064
	cmp     r0, #0x1
	ldreq   r5, [pc, #0xdc] @ [0x223b144] (=0x223ded0)
.arm
branch_223b064: @ 223b064 :arm
	mov     r7, #0x1
	mov     r6, r7
	mov     r1, #0x20
	b       branch_223b0a4
@ 0x223b074

.arm
branch_223b074: @ 223b074 :arm
	cmp     r1, #1, 24 @ #0x100
	movge   r7, #0x5
	movge   r6, #0x10
	movge   r1, #0x7
	bge     branch_223b0a4
	cmp     r1, #0x80
	movge   r6, #0x8
	movge   r1, r6
	movge   r7, #0x4
	movlt   r7, #0x3
	movlt   r6, #0x4
	movlt   r1, #0xb
.arm
branch_223b0a4: @ 223b0a4 :arm
	mul     r1, r0, r1
	mov     r0, r1, lsl #1
	add     r1, r0, #0x7
	mov     r0, r1, asr #1
	add     r0, r1, r0, lsr #30
	cmp     r5, #0x0
	mov     r1, r0, asr #2
	bne     branch_223b120
	ldr     r0, [r4, #0x8]
	cmp     r1, r0
	movle   r0, r4
	ble     branch_223b0dc
	mov     r0, r4
	bl      Function_223d268
.arm
branch_223b0dc: @ 223b0dc :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	bxeq    lr
	ldr     r5, [r4]
	mov     r1, r9
	mov     r2, r7
	add     r0, r5, #0x4
	bl      Function_223adfc
	add     r1, r0, #0x2
	mov     r0, r1, asr #8
	strb    r0, [r5]
	strb    r1, [r5, #0x1]
	strb    r7, [r5, #0x2]
	strb    r6, [r5, #0x3]
	b       branch_223b124
@ 0x223b120

.arm
branch_223b120: @ 223b120 :arm
	mov     r1, #0x8
.arm
branch_223b124: @ 223b124 :arm
	str     r5, [r8]
	add     r0, r1, #0x2
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223b138

.word 0x10001 @ 0x223b138
.word 0x223dec4 @ 0x223b13c
.word 0x223dedc @ 0x223b140
.word 0x223ded0 @ 0x223b144
.arm
Function_223b148: @ 223b148 :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r10, r0
	mov     r1, r10
	rsb     r0, r10, #0x0
	bl      0x20e2178
	movs    r8, r1
	mov     r7, r10
	mov     r5, #0x0
	mov     r6, #0x1
	mvn     r4, #0x0
	beq     branch_223b1b0
.arm
branch_223b174: @ 223b174 :arm
	mov     r0, r7
	mov     r1, r8
	bl      0x20e2178
	mov     r9, r1
	mov     r0, r7
	mov     r1, r8
	bl      0x20e2178
	mla     r1, r0, r6, r5
	mov     r5, r6
	mov     r7, r8
	mov     r6, r1
	mov     r8, r9
	cmp     r9, #0x0
	rsb     r4, r4, #0x0
	bne     branch_223b174
.arm
branch_223b1b0: @ 223b1b0 :arm
	cmp     r4, #0x0
	sublt   r5, r10, r5
	cmp     r7, #0x1
	movne   r1, #0x0
	bne     branch_223b1d0
	mov     r0, r5
	mov     r1, r10
	bl      0x20e2178
.arm
branch_223b1d0: @ 223b1d0 :arm
	mov     r0, r1
	ldmfd   sp!, {r4-r10,lr}
	bx      lr
@ 0x223b1dc

.arm
Function_223b1dc: @ 223b1dc :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	mov     r7, r3
	mov     r9, r1
	mov     r6, #0x0
	mov     r10, r0
	mov     r8, r2
	mov     r4, r6
	cmp     r7, #0x0
	add     r5, r9, r7, lsl #2
	ldr     r11, [sp, #0x30]
	ble     branch_223b26c
	mov     r0, #0x1
	str     r6, [sp, #0x4]
	str     r0, [sp]
.arm
branch_223b218: @ 223b218 :arm
	ldr     r1, [r9]
	mov     r0, r9
	mul     r3, r1, r11
	mov     r1, r8
	mov     r2, r7
	bl      Function_223cc58
	add     r1, r0, r6
	ldr     r0, [r5]
	cmp     r1, r6
	ldrcc   r6, [sp]
	add     r0, r0, r1
	str     r0, [r5]
	ldr     r0, [r5]
	ldrcs   r6, [sp, #0x4]
	cmp     r0, r1
	add     r4, r4, #0x1
	addcc   r6, r6, #0x1
	cmp     r4, r7
	add     r9, r9, #0x4
	add     r5, r5, #0x4
	blt     branch_223b218
.arm
branch_223b26c: @ 223b26c :arm
	cmp     r6, #0x0
	sub     r2, r7, #0x1
	bne     branch_223b2c0
	ldr     r1, [r9, r2, lsl #0x2]
	ldr     r0, [r8, r2, lsl #0x2]
	cmp     r1, r0
	bne     branch_223b2ac
	cmp     r2, #0x0
	ble     branch_223b2ac
.arm
branch_223b290: @ 223b290 :arm
	ldr     r1, [r9, r2, lsl #0x2]
	ldr     r0, [r8, r2, lsl #0x2]
	cmp     r1, r0
	bne     branch_223b2ac
	sub     r2, r2, #0x1
	cmp     r2, #0x0
	bgt     branch_223b290
.arm
branch_223b2ac: @ 223b2ac :arm
	ldr     r1, [r9, r2, lsl #0x2]
	ldr     r0, [r8, r2, lsl #0x2]
	cmp     r1, r0
	movcs   r6, #0x1
	movcc   r6, #0x0
.arm
branch_223b2c0: @ 223b2c0 :arm
	cmp     r6, #0x0
	beq     branch_223b2e8
	mov     r0, r10
	mov     r1, r9
	mov     r2, r8
	mov     r3, r7
	bl      Function_223c700
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223b2e8

.arm
branch_223b2e8: @ 223b2e8 :arm
	cmp     r7, #0x0
	addle   sp, sp, #0xc
	mov     r1, #0x0
	ldmlefd sp!, {r4-r11,lr}
	bxle    lr
.arm
branch_223b2fc: @ 223b2fc :arm
	ldr     r0, [r9, r1, lsl #0x2]
	str     r0, [r10, r1, lsl #0x2]
	add     r1, r1, #0x1
	cmp     r1, r7
	blt     branch_223b2fc
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223b31c

.arm
Function_223b31c: @ 223b31c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4
	mov     r11, r2
	mov     r6, r11, lsl #1
	mov     r10, r0
	mov     r7, r11
	mov     r9, r1
	sub     r7, r7, #0x1
	sub     r2, r6, #0x1
	mov     r0, #0x0
	str     r0, [r10, r2, lsl #0x2]
	ldr     r0, [r10, r2, lsl #0x2]
	str     r3, [sp]
	mov     r5, r9
	str     r0, [r10]
	cmp     r7, #0x0
	add     r4, r10, #0x4
	ble     branch_223b384
	add     r5, r5, #0x4
	ldr     r3, [r9]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_223cab8
	str     r0, [r4, r7, lsl #0x2]
	add     r4, r4, #0x8
.arm
branch_223b384: @ 223b384 :arm
	sub     r8, r11, #0x2
	cmp     r8, #0x0
	ble     branch_223b3c4
.arm
branch_223b390: @ 223b390 :arm
	mov     r0, r5
	sub     r7, r7, #0x1
	add     r5, r5, #0x4
	ldr     r3, [r0]
	mov     r0, r4
	mov     r1, r5
	mov     r2, r7
	bl      Function_223cc58
	sub     r8, r8, #0x1
	str     r0, [r4, r7, lsl #0x2]
	cmp     r8, #0x0
	add     r4, r4, #0x8
	bgt     branch_223b390
.arm
branch_223b3c4: @ 223b3c4 :arm
	mov     r0, r10
	mov     r1, r10
	mov     r2, r10
	mov     r3, r6
	bl      Function_223c814
	ldr     r0, [sp]
	mov     r1, r9
	mov     r2, r11
	bl      Function_223c964
	ldr     r2, [sp]
	mov     r0, r10
	mov     r1, r10
	mov     r3, r6
	bl      Function_223c814
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223b408

.arm
Function_223b408: @ 223b408 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x64
	ldr     r5, [r2]
	mov     r9, r0
	mov     r8, r1
	cmp     r8, r9
	add     r3, r2, #0x4
	mov     r2, #0x14
	movne   r7, r9
	addeq   r0, r5, #0x1
	mla     r4, r5, r2, r3
	mlaeq   r7, r0, r2, r3
	ldr     r5, [r8, #0x4]
	cmp     r5, #0x0
	movle   r0, #0x0
	strle   r0, [r9, #0x4]
	addle   sp, sp, #0x64
	movle   r0, #0x1
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r0, [r7, #0x8]
	mov     r6, r5, lsl #1
	cmp     r6, r0
	movle   r0, r7
	ble     branch_223b478
	mov     r0, r7
	mov     r1, r6
	bl      Function_223d268
.arm
branch_223b478: @ 223b478 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x64
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	bxeq    lr
	str     r6, [r7, #0x4]
	mov     r0, #0x0
	str     r0, [r7, #0xc]
	cmp     r5, #0x4
	bne     branch_223b4b8
	ldr     r0, [r7]
	ldr     r1, [r8]
	add     r3, sp, #0x0
	mov     r2, #0x4
	bl      Function_223b31c
	b       branch_223b51c
@ 0x223b4b8

.arm
branch_223b4b8: @ 223b4b8 :arm
	cmp     r5, #0x8
	bne     branch_223b4d8
	ldr     r0, [r7]
	ldr     r1, [r8]
	add     r3, sp, #0x20
	mov     r2, #0x8
	bl      Function_223b31c
	b       branch_223b51c
@ 0x223b4d8

.arm
branch_223b4d8: @ 223b4d8 :arm
	ldr     r0, [r4, #0x8]
	cmp     r6, r0
	movle   r0, r4
	ble     branch_223b4f4
	mov     r0, r4
	mov     r1, r6
	bl      Function_223d268
.arm
branch_223b4f4: @ 223b4f4 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x64
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	bxeq    lr
	ldr     r0, [r7]
	ldr     r1, [r8]
	ldr     r3, [r4]
	mov     r2, r5
	bl      Function_223b31c
.arm
branch_223b51c: @ 223b51c :arm
	cmp     r6, #0x0
	ble     branch_223b540
	ldr     r1, [r7]
	sub     r0, r6, #0x1
	ldr     r0, [r1, r0, lsl #0x2]
	cmp     r0, #0x0
	ldreq   r0, [r7, #0x4]
	subeq   r0, r0, #0x1
	streq   r0, [r7, #0x4]
.arm
branch_223b540: @ 223b540 :arm
	cmp     r7, r9
	beq     branch_223b554
	mov     r0, r9
	mov     r1, r7
	bl      Function_223d1d0
.arm
branch_223b554: @ 223b554 :arm
	mov     r0, #0x1
	add     sp, sp, #0x64
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223b564

.arm
Function_223b564: @ 223b564 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	ldr     r12, [r3, #0x4]
	cmp     r12, #0x0
	ble     branch_223b5a8
	ldr     r12, [r3]
	ldr     r12, [r12]
	ands    r12, r12, #0x1
	beq     branch_223b5a8
	ldr     lr, [sp, #0x10]
	mov     r12, #0x0
	str     lr, [sp]
	str     r12, [sp, #0x4]
	bl      Function_2239a74
	add     sp, sp, #0xc
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223b5a8

.arm
branch_223b5a8: @ 223b5a8 :arm
	ldr     r12, [sp, #0x10]
	str     r12, [sp]
	bl      Function_223a278
	add     sp, sp, #0xc
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223b5c0

.arm
Function_223b5c0: @ 223b5c0 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	mov     lr, r1
	mov     r12, r2
	str     r3, [sp]
	mov     r1, r0
	mov     r2, lr
	mov     r3, r12
	mov     r0, #0x0
	bl      Function_223b5f4
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223b5f4

.arm
Function_223b5f4: @ 223b5f4 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4c
	mov     r6, r3
	ldr     r3, [r6, #0x4]
	mov     r8, r0
	str     r1, [sp]
	str     r2, [sp, #0x4]
	cmp     r3, #0x0
	ldr     r4, [sp, #0x70]
	beq     branch_223b634
	cmp     r3, #0x1
	bne     branch_223b644
	ldr     r0, [r6]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_223b644
.arm
branch_223b634: @ 223b634 :arm
	add     sp, sp, #0x4c
	mov     r0, #0x0
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223b644

.arm
branch_223b644: @ 223b644 :arm
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	bl      Function_223cf44
	cmp     r0, #0x0
	bge     branch_223b6a4
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_223b680
	ldr     r1, [sp, #0x4]
	bl      Function_223d1d0
	cmp     r0, #0x0
	addeq   sp, sp, #0x4c
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
.arm
branch_223b680: @ 223b680 :arm
	cmp     r8, #0x0
	beq     branch_223b694
	mov     r0, r8
	mov     r1, #0x0
	bl      Function_223d128
.arm
branch_223b694: @ 223b694 :arm
	add     sp, sp, #0x4c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223b6a4

.arm
branch_223b6a4: @ 223b6a4 :arm
	ldr     r3, [r4]
	add     r0, r4, #0x4
	mov     r2, #0x14
	mla     r1, r3, r2, r0
	mov     r3, #0x0
	str     r3, [r1, #0xc]
	ldr     r5, [r4]
	str     r1, [sp, #0x14]
	add     r4, r5, #0x1
	mla     r1, r4, r2, r0
	add     r3, r5, #0x2
	str     r1, [sp, #0x18]
	mla     r1, r3, r2, r0
	cmp     r8, #0x0
	str     r1, [sp, #0x1c]
	addeq   r1, r5, #0x3
	mlaeq   r8, r1, r2, r0
	mov     r0, r6
	bl      Function_223d534
	mov     r1, r0, lsr #31
	rsb     r0, r1, r0, lsl #27
	add     r0, r1, r0, ror #27
	rsb     r0, r0, #0x20
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x1c]
	ldr     r2, [sp, #0x8]
	mov     r1, r6
	bl      Function_223c5fc
	cmp     r0, #0x0
	addeq   sp, sp, #0x4c
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	ldr     r2, [sp, #0x8]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x4]
	ldr     r3, [sp, #0x1c]
	mov     r4, #0x0
	add     r2, r2, #0x20
	str     r4, [r3, #0xc]
	bl      Function_223c5fc
	cmp     r0, #0x0
	addeq   sp, sp, #0x4c
	moveq   r0, r4
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	ldr     r0, [sp, #0x18]
	mov     r1, r4
	str     r1, [r0, #0xc]
	ldr     r0, [sp, #0x1c]
	ldr     r0, [r0, #0x4]
	str     r0, [sp, #0x28]
	ldr     r0, [sp, #0x18]
	ldr     r1, [sp, #0x28]
	ldr     r4, [r0, #0x4]
	add     r0, sp, #0x38
	sub     r1, r4, r1
	str     r1, [sp, #0x10]
	bl      Function_223d3d8
	ldr     r0, [sp, #0x18]
	ldr     r2, [r0]
	ldr     r0, [sp, #0x28]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x10]
	add     r0, r2, r0, lsl #2
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x28]
	str     r0, [sp, #0x3c]
	ldr     r0, [sp, #0x18]
	ldr     r2, [r0, #0x8]
	ldr     r0, [sp, #0x28]
	cmp     r0, #0x1
	add     r0, r2, #0x1
	str     r0, [sp, #0x40]
	ldr     r0, [sp, #0x1c]
	moveq   r5, #0x0
	ldr     r2, [r0]
	ldr     r0, [r2, r1, lsl #0x2]
	str     r0, [sp, #0x24]
	ldrne   r0, [sp, #0x28]
	subne   r0, r0, #0x2
	ldrne   r5, [r2, r0, lsl #0x2]
	ldr     r0, [sp, #0x18]
	ldr     r2, [r8, #0x8]
	ldr     r1, [r0]
	sub     r0, r4, #0x1
	add     r7, r1, r0, lsl #2
	ldr     r0, [sp, #0x10]
	add     r1, r0, #0x1
	cmp     r1, r2
	movle   r0, r8
	ble     branch_223b81c
	mov     r0, r8
	bl      Function_223d268
.arm
branch_223b81c: @ 223b81c :arm
	cmp     r0, #0x0
	beq     branch_223bb80
	ldr     r0, [sp, #0x4]
	ldr     r1, [r6, #0xc]
	ldr     r3, [r0, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r2, r0, #0x1
	eor     r0, r3, r1
	str     r0, [r8, #0xc]
	ldr     r0, [sp, #0x10]
	str     r0, [r8, #0x4]
	ldr     r0, [sp, #0x28]
	ldr     r3, [r8]
	add     r1, r0, #0x1
	add     r0, r3, r2, lsl #2
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r0, [r0, #0x8]
	cmp     r1, r0
	ldrle   r0, [sp, #0x14]
	ble     branch_223b878
	ldr     r0, [sp, #0x14]
	bl      Function_223d268
.arm
branch_223b878: @ 223b878 :arm
	cmp     r0, #0x0
	beq     branch_223bb80
	ldr     r1, [sp, #0x1c]
	add     r0, sp, #0x38
	bl      Function_223cf44
	cmp     r0, #0x0
	blt     branch_223b8cc
	add     r0, sp, #0x38
	ldr     r2, [sp, #0x1c]
	mov     r1, r0
	bl      Function_223befc
	cmp     r0, #0x0
	beq     branch_223bb80
	ldr     r0, [sp, #0x20]
	mov     r2, #0x1
	str     r2, [r0]
	ldr     r0, [r8, #0x4]
	ldr     r1, [r8]
	sub     r0, r0, #0x1
	str     r2, [r1, r0, lsl #0x2]
	b       branch_223b8d8
@ 0x223b8cc

.arm
branch_223b8cc: @ 223b8cc :arm
	ldr     r0, [r8, #0x4]
	sub     r0, r0, #0x1
	str     r0, [r8, #0x4]
.arm
branch_223b8d8: @ 223b8d8 :arm
	ldr     r0, [sp, #0x10]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0x20]
	cmp     r1, #0x0
	sub     r0, r0, #0x4
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ble     branch_223bb28
	ldr     r8, [pc, #0x28c] @ [0x223bb90] (=0xffff)
	cmp     r1, #0x0
	and     r0, r5, r8
	str     r0, [sp, #0x2c]
	and     r0, r8, r5, lsr #16
	str     r0, [sp, #0x30]
	ldr     r0, [sp, #0x24]
	and     r4, r0, r8
	ble     branch_223bb28
	and     r9, r8, r0, lsr #16
	mvn     r0, #0x0
	str     r0, [sp, #0x34]
.arm
branch_223b92c: @ 223b92c :arm
	ldr     r1, [sp, #0x38]
	ldr     r0, [sp, #0x3c]
	sub     r1, r1, #0x4
	add     r0, r0, #0x1
	str     r0, [sp, #0x3c]
	str     r1, [sp, #0x38]
	ldr     r11, [r7]
	ldr     r0, [sp, #0x24]
	ldr     r5, [r7, #-0x4]
	cmp     r11, r0
	ldreq   r6, [sp, #0x34]
	beq     branch_223b970
	ldr     r2, [sp, #0x24]
	mov     r0, r11
	mov     r1, r5
	bl      Function_223a60c
	mov     r6, r0
.arm
branch_223b970: @ 223b970 :arm
	ldr     r0, [sp, #0x2c]
	and     r2, r6, r8
	mul     r12, r0, r2
	ldr     r0, [sp, #0x30]
	and     lr, r8, r6, lsr #16
	ldr     r1, [sp, #0x30]
	mul     r0, r2, r0
	mul     r3, r1, lr
	ldr     r1, [sp, #0x2c]
	mul     r10, r9, lr
	mla     r1, lr, r1, r0
	cmp     r1, r0
	addcc   r3, r3, #1, 16 @ #0x10000
	and     r0, r8, r1, lsr #16
	add     r3, r3, r0
	and     r0, r1, r8
	add     r12, r12, r0, lsl #16
	cmp     r12, r0, lsl #16
	mul     r0, r2, r9
	mul     r1, r4, r2
	mla     r2, lr, r4, r0
	addcc   r3, r3, #0x1
	cmp     r2, r0
	addcc   r10, r10, #1, 16 @ #0x10000
	and     r0, r8, r2, lsr #16
	add     r10, r10, r0
	and     r0, r2, r8
	add     r1, r1, r0, lsl #16
	cmp     r1, r0, lsl #16
	addcc   r10, r10, #0x1
	sub     r1, r5, r1
	cmp     r1, r5
	addhi   r10, r10, #0x1
	subs    r0, r11, r10
	bne     branch_223ba20
	cmp     r3, r1
	bcc     branch_223ba20
	cmp     r3, r1
	bne     branch_223ba18
	ldr     r0, [r7, #-0x8]
	cmp     r12, r0
	bls     branch_223ba20
.arm
branch_223ba18: @ 223ba18 :arm
	sub     r6, r6, #0x1
	b       branch_223b970
@ 0x223ba20

.arm
branch_223ba20: @ 223ba20 :arm
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x1c]
	ldr     r0, [r0]
	ldr     r1, [r1]
	ldr     r2, [sp, #0x28]
	mov     r3, r6
	bl      Function_223cab8
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x28]
	ldr     r3, [r1]
	ldr     r1, [sp, #0x28]
	str     r0, [r3, r2, lsl #0x2]
	add     r1, r1, #0x1
	cmp     r1, #0x0
	ble     branch_223ba80
	ldr     r0, [sp, #0x14]
	ldr     r2, [r0]
.arm
branch_223ba64: @ 223ba64 :arm
	sub     r0, r1, #0x1
	ldr     r0, [r2, r0, lsl #0x2]
	cmp     r0, #0x0
	bne     branch_223ba80
	sub     r1, r1, #0x1
	cmp     r1, #0x0
	bgt     branch_223ba64
.arm
branch_223ba80: @ 223ba80 :arm
	ldr     r0, [sp, #0x14]
	ldr     r2, [sp, #0x14]
	str     r1, [r0, #0x4]
	add     r0, sp, #0x38
	mov     r1, r0
	ldr     r5, [sp, #0x3c]
	bl      Function_223bdb8
	ldr     r0, [sp, #0x18]
	ldr     r1, [r0, #0x4]
	ldr     r0, [sp, #0x3c]
	add     r0, r1, r0
	sub     r1, r0, r5
	ldr     r0, [sp, #0x18]
	str     r1, [r0, #0x4]
	ldr     r0, [sp, #0x44]
	cmp     r0, #0x0
	beq     branch_223baf8
	add     r0, sp, #0x38
	ldr     r2, [sp, #0x1c]
	mov     r1, r0
	sub     r6, r6, #0x1
	ldr     r5, [sp, #0x3c]
	bl      Function_223c17c
	ldr     r0, [sp, #0x18]
	ldr     r1, [r0, #0x4]
	ldr     r0, [sp, #0x3c]
	sub     r0, r0, r5
	add     r1, r1, r0
	ldr     r0, [sp, #0x18]
	str     r1, [r0, #0x4]
.arm
branch_223baf8: @ 223baf8 :arm
	ldr     r0, [sp, #0x20]
	sub     r7, r7, #0x4
	str     r6, [r0], #-0x4
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0xc]
	add     r0, r0, #0x1
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x10]
	sub     r1, r0, #0x1
	ldr     r0, [sp, #0xc]
	cmp     r0, r1
	blt     branch_223b92c
.arm
branch_223bb28: @ 223bb28 :arm
	ldr     r0, [sp, #0x18]
	bl      Function_223d3ec
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_223bb70
	ldr     r2, [sp, #0x8]
	ldr     r3, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	add     r2, r2, #0x20
	ldr     r4, [r3, #0xc]
	bl      Function_223c4e0
	cmp     r0, #0x0
	addeq   sp, sp, #0x4c
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	ldr     r0, [sp]
	str     r4, [r0, #0xc]
.arm
branch_223bb70: @ 223bb70 :arm
	add     sp, sp, #0x4c
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223bb80

.arm
branch_223bb80: @ 223bb80 :arm
	mov     r0, #0x0
	add     sp, sp, #0x4c
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223bb90

.word 0xffff @ 0x223bb90
.arm
Function_223bb94: @ 223bb94 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x4
	ldr     r5, [sp, #0x20]
	mov     r7, r2
	mov     r9, r0
	mov     r8, r1
	mov     r6, r3
	cmp     r7, r5
	bge     branch_223bbd0
	mov     r1, r7
	mov     r0, r8
	mov     r7, r5
	mov     r8, r6
	mov     r5, r1
	mov     r6, r0
.arm
branch_223bbd0: @ 223bbd0 :arm
	ldr     r3, [r6]
	mov     r0, r9
	mov     r1, r8
	mov     r2, r7
	add     r4, r9, r7, lsl #2
	bl      Function_223cab8
	str     r0, [r9, r7, lsl #0x2]
.arm
branch_223bbec: @ 223bbec :arm
	sub     r0, r5, #0x1
	cmp     r0, #0x0
	addle   sp, sp, #0x4
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r3, [r6, #0x4]
	mov     r1, r8
	mov     r2, r7
	add     r0, r9, #0x4
	bl      Function_223cc58
	sub     r1, r5, #0x2
	cmp     r1, #0x0
	addle   sp, sp, #0x4
	str     r0, [r4, #0x4]
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r3, [r6, #0x8]
	mov     r1, r8
	mov     r2, r7
	add     r0, r9, #0x8
	bl      Function_223cc58
	sub     r1, r5, #0x3
	cmp     r1, #0x0
	addle   sp, sp, #0x4
	str     r0, [r4, #0x8]
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r3, [r6, #0xc]
	mov     r1, r8
	mov     r2, r7
	add     r0, r9, #0xc
	bl      Function_223cc58
	sub     r5, r5, #0x4
	cmp     r5, #0x0
	addle   sp, sp, #0x4
	str     r0, [r4, #0xc]
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r3, [r6, #0x10]
	mov     r1, r8
	mov     r2, r7
	add     r0, r9, #0x10
	bl      Function_223cc58
	str     r0, [r4, #0x10]
	add     r4, r4, #0x10
	add     r9, r9, #0x10
	add     r6, r6, #0x10
	b       branch_223bbec
@ 0x223bcac

.arm
Function_223bcac: @ 223bcac :arm
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223bcb8

.arm
Function_223bcb8: @ 223bcb8 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x4
	mov     r9, r1
	ldr     r6, [r9, #0x4]
	mov     r8, r2
	mov     r10, r0
	cmp     r6, #0x0
	ldr     r5, [r8, #0x4]
	beq     branch_223bce4
	cmp     r5, #0x0
	bne     branch_223bd00
.arm
branch_223bce4: @ 223bce4 :arm
	mov     r0, r10
	mov     r1, #0x0
	bl      Function_223d128
	add     sp, sp, #0x4
	mov     r0, #0x1
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223bd00

.arm
branch_223bd00: @ 223bd00 :arm
	ldr     r1, [r9, #0xc]
	ldr     r0, [r8, #0xc]
	cmp     r10, r9
	add     r7, r6, r5
	eor     r11, r1, r0
	beq     branch_223bd20
	cmp     r10, r8
	bne     branch_223bd38
.arm
branch_223bd20: @ 223bd20 :arm
	ldr     r0, [r3]
	add     r2, r3, #0x4
	add     r1, r0, #0x1
	mov     r0, #0x14
	mla     r4, r1, r0, r2
	b       branch_223bd3c
@ 0x223bd38

.arm
branch_223bd38: @ 223bd38 :arm
	mov     r4, r10
.arm
branch_223bd3c: @ 223bd3c :arm
	ldr     r0, [r4, #0x8]
	cmp     r7, r0
	movle   r0, r4
	ble     branch_223bd58
	mov     r0, r4
	mov     r1, r7
	bl      Function_223d268
.arm
branch_223bd58: @ 223bd58 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r11,lr}
	bxeq    lr
	str     r7, [r4, #0x4]
	str     r5, [sp]
	ldr     r0, [r4]
	ldr     r1, [r9]
	ldr     r3, [r8]
	mov     r2, r6
	bl      Function_223bb94
	mov     r0, r4
	str     r11, [r10, #0xc]
	bl      Function_223d3ec
	cmp     r10, r4
	beq     branch_223bda8
	mov     r0, r10
	mov     r1, r4
	bl      Function_223d1d0
.arm
branch_223bda8: @ 223bda8 :arm
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223bdb8

.arm
Function_223bdb8: @ 223bdb8 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x4
	mov     r6, r1
	ldr     r1, [r6, #0xc]
	mov     r3, #0x0
	mov     r7, r0
	mov     r5, r2
	mov     r4, r3
	cmp     r1, #0x0
	beq     branch_223be00
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	movne   r0, r6
	moveq   r3, #0x1
	movne   r6, r5
	movne   r5, r0
	moveq   r4, r3
	b       branch_223be0c
@ 0x223be00

.arm
branch_223be00: @ 223be00 :arm
	ldr     r0, [r5, #0xc]
	cmp     r0, #0x0
	movne   r3, #0x1
.arm
branch_223be0c: @ 223be0c :arm
	cmp     r3, #0x0
	beq     branch_223be40
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_223c060
	cmp     r0, #0x0
	moveq   r0, #0x0
	add     sp, sp, #0x4
	strne   r4, [r7, #0xc]
	movne   r0, #0x1
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x223be40

.arm
branch_223be40: @ 223be40 :arm
	ldr     r0, [r5, #0x4]
	ldr     r1, [r6, #0x4]
	cmp     r1, r0
	movle   r1, r0
	ldr     r0, [r7, #0x8]
	cmp     r1, r0
	movle   r0, r7
	ble     branch_223be68
	mov     r0, r7
	bl      Function_223d268
.arm
branch_223be68: @ 223be68 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	mov     r0, r6
	mov     r1, r5
	bl      Function_223cf44
	cmp     r0, #0x0
	bge     branch_223bec0
	mov     r0, r7
	mov     r1, r5
	mov     r2, r6
	bl      Function_223befc
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	mov     r0, #0x1
	str     r0, [r7, #0xc]
	b       branch_223beec
@ 0x223bec0

.arm
branch_223bec0: @ 223bec0 :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_223befc
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	mov     r0, #0x0
	str     r0, [r7, #0xc]
.arm
branch_223beec: @ 223beec :arm
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x223befc

.arm
Function_223befc: @ 223befc :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r8, r1
	mov     r7, r2
	ldr     r5, [r7, #0x4]
	ldr     r6, [r8, #0x4]
	mov     r4, r0
	cmp     r6, r5
	movlt   r0, #0x0
	ldmltfd sp!, {r4-r10,lr}
	bxlt    lr
	ldr     r1, [r4, #0x8]
	cmp     r6, r1
	ble     branch_223bf38
	mov     r1, r6
	bl      Function_223d268
.arm
branch_223bf38: @ 223bf38 :arm
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r10,lr}
	bxeq    lr
	mov     r3, #0x0
	mov     r0, r3
	cmp     r5, #0x0
	ldr     r2, [r8]
	ldr     r9, [r7]
	ldr     r1, [r4]
	ble     branch_223bfb8
	mov     r12, r3
	mov     r7, r3
	mov     lr, #0x1
.arm
branch_223bf70: @ 223bf70 :arm
	cmp     r3, #0x0
	ldr     r10, [r2], #0x4
	ldr     r8, [r9], #0x4
	beq     branch_223bf98
	cmp     r10, r8
	movls   r3, lr
	sub     r8, r10, r8
	movhi   r3, r12
	sub     r10, r8, #0x1
	b       branch_223bfa8
@ 0x223bf98

.arm
branch_223bf98: @ 223bf98 :arm
	cmp     r10, r8
	movcc   r3, lr
	movcs   r3, r7
	sub     r10, r10, r8
.arm
branch_223bfa8: @ 223bfa8 :arm
	add     r0, r0, #0x1
	cmp     r0, r5
	str     r10, [r1], #0x4
	blt     branch_223bf70
.arm
branch_223bfb8: @ 223bfb8 :arm
	cmp     r3, #0x0
	beq     branch_223bfe8
	cmp     r0, r6
	bge     branch_223bfe8
.arm
branch_223bfc8: @ 223bfc8 :arm
	ldr     r5, [r2], #0x4
	add     r0, r0, #0x1
	sub     r3, r5, #0x1
	cmp     r5, r3
	str     r3, [r1], #0x4
	bhi     branch_223bfe8
	cmp     r0, r6
	blt     branch_223bfc8
.arm
branch_223bfe8: @ 223bfe8 :arm
	cmp     r1, r2
	beq     branch_223c048
.arm
branch_223bff0: @ 223bff0 :arm
	cmp     r0, r6
	bge     branch_223c048
	ldr     r5, [r2]
	add     r3, r0, #0x1
	str     r5, [r1]
	cmp     r3, r6
	bge     branch_223c048
	ldr     r5, [r2, #0x4]
	add     r3, r0, #0x2
	str     r5, [r1, #0x4]
	cmp     r3, r6
	bge     branch_223c048
	ldr     r5, [r2, #0x8]
	add     r3, r0, #0x3
	str     r5, [r1, #0x8]
	cmp     r3, r6
	ldrlt   r3, [r2, #0xc]
	add     r0, r0, #0x4
	strlt   r3, [r1, #0xc]
	addlt   r2, r2, #0x10
	addlt   r1, r1, #0x10
	blt     branch_223bff0
.arm
branch_223c048: @ 223c048 :arm
	mov     r0, r4
	str     r6, [r4, #0x4]
	bl      Function_223d3ec
	mov     r0, #0x1
	ldmfd   sp!, {r4-r10,lr}
	bx      lr
@ 0x223c060

.arm
Function_223c060: @ 223c060 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x4
	mov     r4, r1
	mov     r8, r2
	ldr     r2, [r4, #0x4]
	ldr     r1, [r8, #0x4]
	mov     r9, r0
	cmp     r2, r1
	movlt   r0, r4
	movlt   r4, r8
	movlt   r8, r0
	ldr     r6, [r4, #0x4]
	ldr     r0, [r9, #0x8]
	add     r1, r6, #0x1
	cmp     r1, r0
	ldr     r7, [r8, #0x4]
	movle   r0, r9
	ble     branch_223c0b0
	mov     r0, r9
	bl      Function_223d268
.arm
branch_223c0b0: @ 223c0b0 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r9,lr}
	bxeq    lr
	str     r6, [r9, #0x4]
	ldr     r5, [r4]
	ldr     r4, [r9]
	ldr     r2, [r8]
	mov     r0, r4
	mov     r1, r5
	mov     r3, r7
	bl      Function_223c814
	cmp     r0, #0x0
	add     r4, r4, r7, lsl #2
	add     r5, r5, r7, lsl #2
	beq     branch_223c148
	cmp     r7, r6
	bge     branch_223c128
.arm
branch_223c0fc: @ 223c0fc :arm
	ldr     r2, [r5], #0x4
	mov     r3, r4
	add     r1, r2, #0x1
	str     r1, [r4], #0x4
	ldr     r1, [r3]
	add     r7, r7, #0x1
	cmp     r1, r2
	movcs   r0, #0x0
	bcs     branch_223c128
	cmp     r7, r6
	blt     branch_223c0fc
.arm
branch_223c128: @ 223c128 :arm
	cmp     r7, r6
	blt     branch_223c148
	cmp     r0, #0x0
	movne   r0, #0x1
	strne   r0, [r4], #0x4
	ldrne   r0, [r9, #0x4]
	addne   r0, r0, #0x1
	strne   r0, [r9, #0x4]
.arm
branch_223c148: @ 223c148 :arm
	cmp     r4, r5
	beq     branch_223c16c
	cmp     r7, r6
	bge     branch_223c16c
.arm
branch_223c158: @ 223c158 :arm
	ldr     r0, [r5], #0x4
	add     r7, r7, #0x1
	cmp     r7, r6
	str     r0, [r4], #0x4
	blt     branch_223c158
.arm
branch_223c16c: @ 223c16c :arm
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223c17c

.arm
Function_223c17c: @ 223c17c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	ldr     r2, [r5, #0xc]
	ldr     r1, [r4, #0xc]
	mov     r6, r0
	eors    r0, r2, r1
	beq     branch_223c220
	cmp     r2, #0x0
	movne   r0, r5
	movne   r5, r4
	movne   r4, r0
	mov     r0, r5
	mov     r1, r4
	bl      Function_223cf44
	cmp     r0, #0x0
	bge     branch_223c1ec
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_223befc
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	mov     r0, #0x1
	str     r0, [r6, #0xc]
	b       branch_223c214
@ 0x223c1ec

.arm
branch_223c1ec: @ 223c1ec :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_223befc
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	mov     r0, #0x0
	str     r0, [r6, #0xc]
.arm
branch_223c214: @ 223c214 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x223c220

.arm
branch_223c220: @ 223c220 :arm
	cmp     r2, #0x0
	movne   r0, #0x1
	strne   r0, [r6, #0xc]
	moveq   r0, #0x0
	streq   r0, [r6, #0xc]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_223c060
	cmp     r0, #0x0
	moveq   r0, #0x0
	movne   r0, #0x1
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x223c258

.arm
Function_223c258: @ 223c258 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	movs    r4, r1
	mov     r5, r0
	addeq   sp, sp, #0x4
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r2, [r5, #0xc]
	cmp     r2, #0x0
	beq     branch_223c2a4
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	bl      Function_223c3b8
	mov     r1, #0x1
	add     sp, sp, #0x4
	str     r1, [r5, #0xc]
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c2a4

.arm
branch_223c2a4: @ 223c2a4 :arm
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x1
	bgt     branch_223c348
	cmp     r1, #0x0
	bne     branch_223c300
	ldr     r1, [r5, #0x8]
	cmp     r1, #0x1
	bge     branch_223c2cc
	mov     r1, #0x1
	bl      Function_223d268
.arm
branch_223c2cc: @ 223c2cc :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r1, [r5]
	mov     r0, #0x1
	str     r4, [r1]
	str     r0, [r5, #0xc]
	add     sp, sp, #0x4
	str     r0, [r5, #0x4]
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c300

.arm
branch_223c300: @ 223c300 :arm
	ldr     r2, [r5]
	ldr     r1, [r2]
	cmp     r1, r4
	moveq   r0, #0x0
	streq   r0, [r5, #0x4]
	beq     branch_223c338
	cmp     r1, r4
	subhi   r0, r1, r4
	strhi   r0, [r2]
	movls   r0, #0x1
	strls   r0, [r5, #0xc]
	ldrls   r0, [r5]
	subls   r1, r4, r1
	strls   r1, [r0]
.arm
branch_223c338: @ 223c338 :arm
	add     sp, sp, #0x4
	mov     r0, #0x1
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c348

.arm
branch_223c348: @ 223c348 :arm
	mov     r0, #0x0
	mov     r1, #0x1
.arm
branch_223c350: @ 223c350 :arm
	ldr     r12, [r5]
	mov     r3, r0, lsl #2
	ldr     r2, [r12, r0, lsl #0x2]
	cmp     r2, r4
	ldrcs   r1, [r12, r3]
	subcs   r1, r1, r4
	strcs   r1, [r12, r3]
	bcs     branch_223c388
	ldr     r2, [r12, r3]
	add     r0, r0, #0x1
	sub     r2, r2, r4
	mov     r4, r1
	str     r2, [r12, r3]
	b       branch_223c350
@ 0x223c388

.arm
branch_223c388: @ 223c388 :arm
	ldr     r1, [r5]
	ldr     r1, [r1, r3]
	cmp     r1, #0x0
	bne     branch_223c3a8
	ldr     r1, [r5, #0x4]
	sub     r1, r1, #0x1
	cmp     r0, r1
	streq   r1, [r5, #0x4]
.arm
branch_223c3a8: @ 223c3a8 :arm
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c3b8

.arm
Function_223c3b8: @ 223c3b8 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	movs    r4, r1
	mov     r5, r0
	addeq   sp, sp, #0x4
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r2, [r5, #0xc]
	cmp     r2, #0x0
	beq     branch_223c460
	ldr     r2, [r5, #0x4]
	cmp     r2, #0x1
	ble     branch_223c410
	mov     r2, #0x0
	str     r2, [r5, #0xc]
	bl      Function_223c258
	mov     r1, #0x1
	add     sp, sp, #0x4
	str     r1, [r5, #0xc]
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c410

.arm
branch_223c410: @ 223c410 :arm
	ldr     r2, [r5]
	ldr     r1, [r2]
	cmp     r1, r4
	subhi   r0, r1, r4
	strhi   r0, [r2]
	bhi     branch_223c450
	cmp     r1, r4
	movcs   r0, #0x0
	strcs   r0, [r5, #0xc]
	strcs   r0, [r5, #0x4]
	bcs     branch_223c450
	mov     r0, #0x0
	str     r0, [r5, #0xc]
	ldr     r0, [r5]
	sub     r1, r4, r1
	str     r1, [r0]
.arm
branch_223c450: @ 223c450 :arm
	add     sp, sp, #0x4
	mov     r0, #0x1
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c460

.arm
branch_223c460: @ 223c460 :arm
	ldr     r1, [r5, #0x4]
	ldr     r2, [r5, #0x8]
	add     r1, r1, #0x1
	cmp     r1, r2
	ble     branch_223c478
	bl      Function_223d268
.arm
branch_223c478: @ 223c478 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r1, [r5]
	ldr     r0, [r5, #0x4]
	mov     r3, #0x0
	str     r3, [r1, r0, lsl #0x2]
	mov     r0, #0x1
.arm
branch_223c4a0: @ 223c4a0 :arm
	ldr     r2, [r5]
	ldr     r1, [r2, r3, lsl #0x2]
	add     r1, r4, r1
	cmp     r4, r1
	str     r1, [r2, r3, lsl #0x2]
	movhi   r4, r0
	addhi   r3, r3, #0x1
	bhi     branch_223c4a0
	ldr     r0, [r5, #0x4]
	cmp     r3, r0
	addge   r0, r0, #0x1
	strge   r0, [r5, #0x4]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223c4e0

.arm
Function_223c4e0: @ 223c4e0 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r7, r1
	mov     r1, r2, asr #4
	mov     r3, r2, lsr #31
	add     r1, r2, r1, lsr #27
	rsb     r2, r3, r2, lsl #27
	add     r4, r3, r2, ror #27
	ldr     r2, [r7, #0x4]
	mov     r6, r1, asr #5
	mov     r8, r0
	cmp     r6, r2
	rsb     r5, r4, #0x20
	ble     branch_223c528
	mov     r1, #0x0
	bl      Function_223d128
	mov     r0, #0x1
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x223c528

.arm
branch_223c528: @ 223c528 :arm
	cmp     r8, r7
	beq     branch_223c560
	sub     r1, r2, r6
	ldr     r2, [r8, #0x8]
	add     r1, r1, #0x2
	cmp     r1, r2
	ble     branch_223c548
	bl      Function_223d268
.arm
branch_223c548: @ 223c548 :arm
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,lr}
	bxeq    lr
	ldr     r0, [r7, #0xc]
	str     r0, [r8, #0xc]
.arm
branch_223c560: @ 223c560 :arm
	ldr     r0, [r7]
	ldr     r1, [r7, #0x4]
	add     r2, r0, r6, lsl #2
	ldr     r0, [r8]
	sub     r7, r1, r6
	mov     r6, r2
	str     r7, [r8, #0x4]
	cmp     r4, #0x0
	bne     branch_223c5a8
	add     r2, r7, #0x1
	cmp     r2, #0x0
	ble     branch_223c5e8
.arm
branch_223c590: @ 223c590 :arm
	ldr     r1, [r6], #0x4
	sub     r2, r2, #0x1
	cmp     r2, #0x0
	str     r1, [r0], #0x4
	bgt     branch_223c590
	b       branch_223c5e8
@ 0x223c5a8

.arm
branch_223c5a8: @ 223c5a8 :arm
	cmp     r7, #0x1
	add     r6, r2, #0x4
	ldr     r3, [r2]
	mov     r2, #0x1
	ble     branch_223c5d8
.arm
branch_223c5bc: @ 223c5bc :arm
	mov     r1, r3, lsr r4
	ldr     r3, [r6], #0x4
	add     r2, r2, #0x1
	orr     r1, r1, r3, lsl r5
	cmp     r2, r7
	str     r1, [r0], #0x4
	blt     branch_223c5bc
.arm
branch_223c5d8: @ 223c5d8 :arm
	mov     r1, r3, lsr r4
	str     r1, [r0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
.arm
branch_223c5e8: @ 223c5e8 :arm
	mov     r0, r8
	bl      Function_223d3ec
	mov     r0, #0x1
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x223c5fc

.arm
Function_223c5fc: @ 223c5fc :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r4, r1
	mov     r7, r2
	mov     r1, r7, asr #4
	mov     r5, r0
	add     r2, r7, r1, lsr #27
	ldr     r1, [r4, #0x4]
	ldr     r3, [r5, #0x8]
	add     r1, r1, r2, asr #5
	add     r1, r1, #0x1
	cmp     r1, r3
	mov     r6, r2, asr #5
	ble     branch_223c634
	bl      Function_223d268
.arm
branch_223c634: @ 223c634 :arm
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r10,lr}
	bxeq    lr
	ldr     r0, [r4, #0xc]
	mov     r1, r7, lsr #31
	str     r0, [r5, #0xc]
	ldr     r3, [r4, #0x4]
	rsb     r0, r1, r7, lsl #27
	adds    r12, r1, r0, ror #27
	ldr     r2, [r4]
	ldr     r0, [r5]
	add     r1, r3, r6
	mov     r3, #0x0
	str     r3, [r0, r1, lsl #0x2]
	rsb     r3, r12, #0x20
	bne     branch_223c69c
	ldr     r1, [r4, #0x4]
	subs    r7, r1, #0x1
	bmi     branch_223c6d0
.arm
branch_223c684: @ 223c684 :arm
	ldr     r3, [r2, r7, lsl #0x2]
	add     r1, r6, r7
	str     r3, [r0, r1, lsl #0x2]
	subs    r7, r7, #0x1
	bpl     branch_223c684
	b       branch_223c6d0
@ 0x223c69c

.arm
branch_223c69c: @ 223c69c :arm
	ldr     r1, [r4, #0x4]
	subs    r1, r1, #0x1
	bmi     branch_223c6d0
.arm
branch_223c6a8: @ 223c6a8 :arm
	add     r9, r6, r1
	add     r8, r9, #0x1
	ldr     r10, [r2, r1, lsl #0x2]
	ldr     lr, [r0, r8, lsl #0x2]
	mov     r7, r10, lsl r12
	orr     lr, lr, r10, lsr r3
	str     lr, [r0, r8, lsl #0x2]
	str     r7, [r0, r9, lsl #0x2]
	subs    r1, r1, #0x1
	bpl     branch_223c6a8
.arm
branch_223c6d0: @ 223c6d0 :arm
	mov     r2, r6, lsl #2
	mov     r1, #0x0
	bl      0x20c4cf4
	ldr     r1, [r4, #0x4]
	mov     r0, r5
	add     r1, r1, r6
	add     r1, r1, #0x1
	str     r1, [r5, #0x4]
	bl      Function_223d3ec
	mov     r0, #0x1
	ldmfd   sp!, {r4-r10,lr}
	bx      lr
@ 0x223c700

.arm
Function_223c700: @ 223c700 :arm
	stmfd   sp!, {r4-r10,lr}
	cmp     r3, #0x0
	movle   r0, #0x0
	ldmlefd sp!, {r4-r10,lr}
	bxle    lr
	mov     r6, #0x0
	mov     r4, r6
	mov     lr, r6
	mov     r12, r6
	mov     r7, r6
	mov     r5, #0x1
.arm
branch_223c72c: @ 223c72c :arm
	ldr     r10, [r1]
	ldr     r9, [r2]
	sub     r8, r10, r9
	sub     r8, r8, r6
	str     r8, [r0]
	cmp     r10, r9
	beq     branch_223c754
	cmp     r10, r9
	movcc   r6, r5
	movcs   r6, r4
.arm
branch_223c754: @ 223c754 :arm
	sub     r8, r3, #0x1
	cmp     r8, #0x0
	ble     branch_223c808
	ldr     r10, [r1, #0x4]
	ldr     r9, [r2, #0x4]
	sub     r8, r10, r9
	sub     r8, r8, r6
	str     r8, [r0, #0x4]
	cmp     r10, r9
	beq     branch_223c788
	cmp     r10, r9
	movcc   r6, r5
	movcs   r6, lr
.arm
branch_223c788: @ 223c788 :arm
	sub     r8, r3, #0x2
	cmp     r8, #0x0
	ble     branch_223c808
	ldr     r10, [r1, #0x8]
	ldr     r9, [r2, #0x8]
	sub     r8, r10, r9
	sub     r8, r8, r6
	str     r8, [r0, #0x8]
	cmp     r10, r9
	beq     branch_223c7bc
	cmp     r10, r9
	movcc   r6, r5
	movcs   r6, r12
.arm
branch_223c7bc: @ 223c7bc :arm
	sub     r8, r3, #0x3
	cmp     r8, #0x0
	ble     branch_223c808
	ldr     r10, [r1, #0xc]
	ldr     r9, [r2, #0xc]
	sub     r8, r10, r9
	sub     r8, r8, r6
	str     r8, [r0, #0xc]
	cmp     r10, r9
	beq     branch_223c7f0
	cmp     r10, r9
	movcc   r6, r5
	movcs   r6, r7
.arm
branch_223c7f0: @ 223c7f0 :arm
	sub     r3, r3, #0x4
	cmp     r3, #0x0
	addgt   r1, r1, #0x10
	addgt   r2, r2, #0x10
	addgt   r0, r0, #0x10
	bgt     branch_223c72c
.arm
branch_223c808: @ 223c808 :arm
	mov     r0, r6
	ldmfd   sp!, {r4-r10,lr}
	bx      lr
@ 0x223c814

.arm
Function_223c814: @ 223c814 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	cmp     r3, #0x0
	addle   sp, sp, #0xc
	movle   r0, #0x0
	ldmlefd sp!, {r4-r11,lr}
	bxle    lr
	mov     r12, #0x0
	mov     r7, r12
	mov     r6, r12
	mov     r5, r12
	mov     r4, r12
	mov     lr, r12
	mov     r11, r12
	str     r12, [sp]
	str     r12, [sp, #0x4]
	mov     r8, #0x1
.arm
branch_223c858: @ 223c858 :arm
	ldr     r9, [r1]
	add     r10, r9, r12
	ldr     r9, [r2]
	cmp     r10, r12
	movcc   r12, r8
	add     r9, r10, r9
	movcs   r12, r7
	cmp     r9, r10
	movcc   r10, r8
	movcs   r10, r6
	str     r9, [r0]
	sub     r9, r3, #0x1
	add     r12, r12, r10
	cmp     r9, #0x0
	ble     branch_223c954
	ldr     r9, [r1, #0x4]
	ldr     r10, [r2, #0x4]
	add     r9, r9, r12
	cmp     r9, r12
	movcc   r12, r8
	add     r10, r9, r10
	movcs   r12, r5
	cmp     r10, r9
	movcc   r9, r8
	movcs   r9, r4
	add     r12, r12, r9
	sub     r9, r3, #0x2
	str     r10, [r0, #0x4]
	cmp     r9, #0x0
	ble     branch_223c954
	ldr     r9, [r1, #0x8]
	ldr     r10, [r2, #0x8]
	add     r9, r9, r12
	cmp     r9, r12
	movcc   r12, r8
	add     r10, r9, r10
	movcs   r12, lr
	cmp     r10, r9
	movcc   r9, r8
	movcs   r9, r11
	add     r12, r12, r9
	sub     r9, r3, #0x3
	str     r10, [r0, #0x8]
	cmp     r9, #0x0
	ble     branch_223c954
	ldr     r9, [r1, #0xc]
	ldr     r10, [r2, #0xc]
	add     r9, r9, r12
	cmp     r9, r12
	movcc   r12, r8
	add     r10, r9, r10
	ldrcs   r12, [sp]
	cmp     r10, r9
	movcc   r9, r8
	ldrcs   r9, [sp, #0x4]
	sub     r3, r3, #0x4
	cmp     r3, #0x0
	str     r10, [r0, #0xc]
	add     r12, r12, r9
	addgt   r1, r1, #0x10
	addgt   r2, r2, #0x10
	addgt   r0, r0, #0x10
	bgt     branch_223c858
.arm
branch_223c954: @ 223c954 :arm
	mov     r0, r12
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,lr}
	bx      lr
@ 0x223c964

.arm
Function_223c964: @ 223c964 :arm
	stmfd   sp!, {r4-r8,lr}
	cmp     r2, #0x0
	ldmlefd sp!, {r4-r8,lr}
	bxle    lr
	mov     r3, #2, 18 @ #0x8000
	ldr     lr, [pc, #0x134] @ [0x223cab4] (=0xffff)
	rsb     r12, r3, #0x0
.arm
branch_223c980: @ 223c980 :arm
	ldr     r5, [r1]
	mov     r3, #2, 18 @ #0x8000
	and     r4, r5, lr
	and     r7, lr, r5, lsr #16
	mul     r6, r4, r7
	mul     r5, r4, r4
	and     r4, r6, lr
	add     r8, r5, r4, lsl #17
	rsb     r3, r3, #0x0
	mul     r5, r7, r7
	and     r3, r6, r3
	add     r3, r5, r3, lsr #15
	cmp     r8, r4, lsl #17
	addcc   r3, r3, #0x1
	str     r8, [r0]
	str     r3, [r0, #0x4]
	subs    r3, r2, #0x1
	ldmeqfd sp!, {r4-r8,lr}
	bxeq    lr
	ldr     r4, [r1, #0x4]
	and     r7, lr, r4, lsr #16
	and     r3, r4, lr
	mul     r6, r3, r7
	mul     r4, r3, r3
	and     r3, r6, lr
	add     r8, r4, r3, lsl #17
	mul     r5, r7, r7
	and     r4, r6, r12
	cmp     r8, r3, lsl #17
	add     r3, r5, r4, lsr #15
	addcc   r3, r3, #0x1
	str     r8, [r0, #0x8]
	str     r3, [r0, #0xc]
	subs    r3, r2, #0x2
	ldmeqfd sp!, {r4-r8,lr}
	bxeq    lr
	ldr     r5, [r1, #0x8]
	mov     r3, #2, 18 @ #0x8000
	and     r4, r5, lr
	and     r7, lr, r5, lsr #16
	mul     r6, r4, r7
	mul     r5, r4, r4
	and     r4, r6, lr
	add     r8, r5, r4, lsl #17
	rsb     r3, r3, #0x0
	mul     r5, r7, r7
	and     r3, r6, r3
	add     r3, r5, r3, lsr #15
	cmp     r8, r4, lsl #17
	addcc   r3, r3, #0x1
	str     r8, [r0, #0x10]
	str     r3, [r0, #0x14]
	subs    r3, r2, #0x3
	ldmeqfd sp!, {r4-r8,lr}
	bxeq    lr
	ldr     r5, [r1, #0xc]
	mov     r3, #2, 18 @ #0x8000
	and     r4, r5, lr
	and     r7, lr, r5, lsr #16
	mul     r6, r4, r7
	mul     r5, r4, r4
	and     r4, r6, lr
	add     r8, r5, r4, lsl #17
	rsb     r3, r3, #0x0
	mul     r5, r7, r7
	and     r3, r6, r3
	add     r3, r5, r3, lsr #15
	cmp     r8, r4, lsl #17
	addcc   r3, r3, #0x1
	str     r8, [r0, #0x18]
	subs    r2, r2, #0x4
	str     r3, [r0, #0x1c]
	addne   r1, r1, #0x10
	addne   r0, r0, #0x20
	bne     branch_223c980
	ldmfd   sp!, {r4-r8,lr}
	bx      lr
@ 0x223cab4

.word 0xffff @ 0x223cab4
.arm
Function_223cab8: @ 223cab8 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x4
	cmp     r2, #0x0
	mov     r4, #0x0
	addle   sp, sp, #0x4
	movle   r0, r4
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r5, [pc, #0x174] @ [0x223cc54] (=0xffff)
	and     lr, r3, r5
	and     r12, r5, r3, lsr #16
.arm
branch_223cae4: @ 223cae4 :arm
	ldr     r3, [r1]
	and     r7, r5, r3, lsr #16
	mul     r6, lr, r7
	and     r3, r3, r5
	mla     r9, r12, r3, r6
	mul     r8, r3, lr
	mul     r3, r7, r12
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r3, r3, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r3, r3, r7
	add     r6, r8, r4
	addcc   r3, r3, #0x1
	cmp     r6, r4
	addcc   r3, r3, #0x1
	str     r6, [r0]
	mov     r4, r3
	subs    r6, r2, #0x1
	beq     branch_223cc44
	ldr     r4, [r1, #0x4]
	and     r7, r5, r4, lsr #16
	mul     r6, lr, r7
	and     r4, r4, r5
	mla     r9, r12, r4, r6
	mul     r8, r4, lr
	mul     r4, r7, r12
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r4, r4, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r4, r4, r7
	add     r6, r8, r3
	addcc   r4, r4, #0x1
	cmp     r6, r3
	addcc   r4, r4, #0x1
	str     r6, [r0, #0x4]
	subs    r3, r2, #0x2
	beq     branch_223cc44
	ldr     r3, [r1, #0x8]
	and     r7, r5, r3, lsr #16
	mul     r6, lr, r7
	and     r3, r3, r5
	mla     r9, r12, r3, r6
	mul     r8, r3, lr
	mul     r3, r7, r12
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r3, r3, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r3, r3, r7
	add     r6, r8, r4
	addcc   r3, r3, #0x1
	cmp     r6, r4
	addcc   r3, r3, #0x1
	str     r6, [r0, #0x8]
	mov     r4, r3
	subs    r6, r2, #0x3
	beq     branch_223cc44
	ldr     r4, [r1, #0xc]
	and     r7, r5, r4, lsr #16
	mul     r6, lr, r7
	and     r4, r4, r5
	mla     r9, r12, r4, r6
	mul     r8, r4, lr
	mul     r4, r7, r12
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r4, r4, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r4, r4, r7
	add     r6, r8, r3
	addcc   r4, r4, #0x1
	cmp     r6, r3
	addcc   r4, r4, #0x1
	subs    r2, r2, #0x4
	str     r6, [r0, #0xc]
	addne   r1, r1, #0x10
	addne   r0, r0, #0x10
	bne     branch_223cae4
.arm
branch_223cc44: @ 223cc44 :arm
	mov     r0, r4
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223cc54

.word 0xffff @ 0x223cc54
.arm
Function_223cc58: @ 223cc58 :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x4
	cmp     r2, #0x0
	mov     r12, #0x0
	addle   sp, sp, #0x4
	movle   r0, r12
	ldmlefd sp!, {r4-r9,lr}
	bxle    lr
	ldr     r5, [pc, #0x1b4] @ [0x223ce34] (=0xffff)
	and     r4, r3, r5
	and     lr, r5, r3, lsr #16
.arm
branch_223cc84: @ 223cc84 :arm
	ldr     r3, [r1]
	and     r7, r5, r3, lsr #16
	mul     r6, r4, r7
	and     r3, r3, r5
	mla     r9, lr, r3, r6
	mul     r8, r3, r4
	mul     r3, r7, lr
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r3, r3, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r3, r3, r7
	ldr     r6, [r0]
	addcc   r3, r3, #0x1
	add     r7, r8, r12
	cmp     r7, r12
	add     r7, r7, r6
	addcc   r3, r3, #0x1
	cmp     r7, r6
	addcc   r3, r3, #0x1
	mov     r12, r3
	str     r7, [r0]
	subs    r6, r2, #0x1
	beq     branch_223ce24
	ldr     r12, [r1, #0x4]
	and     r7, r5, r12, lsr #16
	mul     r6, r4, r7
	and     r12, r12, r5
	mla     r9, lr, r12, r6
	mul     r8, r12, r4
	mul     r12, r7, lr
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r12, r12, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r12, r12, r7
	add     r6, r8, r3
	addcc   r12, r12, #0x1
	cmp     r6, r3
	ldr     r3, [r0, #0x4]
	addcc   r12, r12, #0x1
	add     r6, r6, r3
	cmp     r6, r3
	addcc   r12, r12, #0x1
	str     r6, [r0, #0x4]
	subs    r3, r2, #0x2
	beq     branch_223ce24
	ldr     r3, [r1, #0x8]
	and     r7, r5, r3, lsr #16
	mul     r6, r4, r7
	and     r3, r3, r5
	mla     r9, lr, r3, r6
	mul     r8, r3, r4
	mul     r3, r7, lr
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r3, r3, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r3, r3, r7
	ldr     r6, [r0, #0x8]
	addcc   r3, r3, #0x1
	add     r7, r8, r12
	cmp     r7, r12
	add     r7, r7, r6
	addcc   r3, r3, #0x1
	cmp     r7, r6
	addcc   r3, r3, #0x1
	mov     r12, r3
	str     r7, [r0, #0x8]
	subs    r6, r2, #0x3
	beq     branch_223ce24
	ldr     r12, [r1, #0xc]
	and     r7, r5, r12, lsr #16
	mul     r6, r4, r7
	and     r12, r12, r5
	mla     r9, lr, r12, r6
	mul     r8, r12, r4
	mul     r12, r7, lr
	cmp     r9, r6
	and     r6, r9, r5
	addcc   r12, r12, #1, 16 @ #0x10000
	and     r7, r5, r9, lsr #16
	add     r8, r8, r6, lsl #16
	cmp     r8, r6, lsl #16
	add     r12, r12, r7
	add     r6, r8, r3
	addcc   r12, r12, #0x1
	cmp     r6, r3
	ldr     r3, [r0, #0xc]
	addcc   r12, r12, #0x1
	add     r6, r6, r3
	cmp     r6, r3
	addcc   r12, r12, #0x1
	subs    r2, r2, #0x4
	str     r6, [r0, #0xc]
	addne   r1, r1, #0x10
	addne   r0, r0, #0x10
	bne     branch_223cc84
.arm
branch_223ce24: @ 223ce24 :arm
	mov     r0, r12
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r9,lr}
	bx      lr
@ 0x223ce34

.word 0xffff @ 0x223ce34
.arm
Function_223ce38: @ 223ce38 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	cmp     r1, #0x0
	addlt   sp, sp, #0x4
	movlt   r0, #0x0
	ldmltfd sp!, {lr}
	bxlt    lr
	mov     r2, r1, asr #4
	add     r2, r1, r2, lsr #27
	mov     r3, r1, lsr #31
	ldr     r12, [r0, #0x4]
	mov     lr, r2, asr #5
	cmp     r12, lr
	rsb     r1, r3, r1, lsl #27
	addle   sp, sp, #0x4
	add     r2, r3, r1, ror #27
	movle   r0, #0x0
	ldmlefd sp!, {lr}
	bxle    lr
	ldr     r1, [r0]
	mov     r0, #0x1
	mov     r2, r0, lsl r2
	ldr     r1, [r1, lr, lsl #0x2]
	ands    r1, r2, r1
	moveq   r0, #0x0
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223cea8

.arm
Function_223cea8: @ 223cea8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r2, r1, asr #4
	add     r2, r1, r2, lsr #27
	mov     r3, r1, lsr #31
	rsb     r1, r3, r1, lsl #27
	ldr     r4, [r6, #0x4]
	mov     r5, r2, asr #5
	cmp     r4, r5
	add     r4, r3, r1, ror #27
	bgt     branch_223cf28
	ldr     r2, [r6, #0x8]
	add     r1, r5, #0x1
	cmp     r1, r2
	ble     branch_223cee8
	bl      Function_223d268
.arm
branch_223cee8: @ 223cee8 :arm
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	ldr     r3, [r6, #0x4]
	add     r2, r5, #0x1
	cmp     r3, r2
	bge     branch_223cf20
	mov     r1, #0x0
.arm
branch_223cf0c: @ 223cf0c :arm
	ldr     r0, [r6]
	str     r1, [r0, r3, lsl #0x2]
	add     r3, r3, #0x1
	cmp     r3, r2
	blt     branch_223cf0c
.arm
branch_223cf20: @ 223cf20 :arm
	add     r0, r5, #0x1
	str     r0, [r6, #0x4]
.arm
branch_223cf28: @ 223cf28 :arm
	ldr     r2, [r6]
	mov     r0, #0x1
	ldr     r1, [r2, r5, lsl #0x2]
	orr     r1, r1, r0, lsl r4
	str     r1, [r2, r5, lsl #0x2]
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x223cf44

.arm
Function_223cf44: @ 223cf44 :arm
	ldr     r3, [r0, #0x4]
	ldr     r2, [r1, #0x4]
	subs    r2, r3, r2
	movne   r0, r2
	bxne    lr
	subs    r2, r3, #0x1
	ldr     r12, [r0]
	ldr     r3, [r1]
	bmi     branch_223cf90
.arm
branch_223cf68: @ 223cf68 :arm
	ldr     r1, [r12, r2, lsl #0x2]
	ldr     r0, [r3, r2, lsl #0x2]
	cmp     r1, r0
	beq     branch_223cf88
	cmp     r1, r0
	movhi   r0, #0x1
	mvnls   r0, #0x0
	bx      lr
@ 0x223cf88

.arm
branch_223cf88: @ 223cf88 :arm
	subs    r2, r2, #0x1
	bpl     branch_223cf68
.arm
branch_223cf90: @ 223cf90 :arm
	mov     r0, #0x0
	bx      lr
@ 0x223cf98

.arm
Function_223cf98: @ 223cf98 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	mov     r4, r1
	bl      Function_223d534
	add     r1, r0, #0x7
	mov     r0, r1, asr #2
	add     r0, r1, r0, lsr #29
	mov     r0, r0, asr #3
	cmp     r0, #0x0
	addle   sp, sp, #0x4
	sub     r12, r0, #0x1
	ldmlefd sp!, {r4,r5,lr}
	bxle    lr
.arm
branch_223cfd0: @ 223cfd0 :arm
	mov     r3, r12, lsr #31
	mov     r1, r12, asr #1
	rsb     r2, r3, r12, lsl #30
	add     r1, r12, r1, lsr #30
	add     r2, r3, r2, ror #30
	ldr     r3, [r5]
	mov     r1, r1, asr #2
	ldr     r3, [r3, r1, lsl #0x2]
	mov     r1, r2, lsl #3
	mov     r1, r3, lsr r1
	cmp     r12, #0x0
	strb    r1, [r4], #0x1
	sub     r12, r12, #0x1
	bgt     branch_223cfd0
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223d014

.arm
Function_223d014: @ 223d014 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x4
	movs    r5, r2
	mov     r7, r0
	mov     r6, r1
	bne     branch_223d034
	bl      Function_223d38c
	mov     r5, r0
.arm
branch_223d034: @ 223d034 :arm
	cmp     r5, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	cmp     r6, #0x0
	mov     r4, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, r5
	streq   r4, [r5, #0x4]
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	add     r0, r6, #0x2
	mov     r2, r0, lsl #3
	add     r1, r2, #0x1f
	mov     r0, r1, asr #4
	add     r0, r1, r0, lsr #27
	ldr     r1, [r5, #0x8]
	mov     r0, r0, asr #5
	cmp     r0, r1
	movle   r0, r5
	ble     branch_223d0a4
	mov     r0, r2, asr #4
	add     r0, r2, r0, lsr #27
	mov     r1, r0, asr #5
	mov     r0, r5
	add     r1, r1, #0x1
	bl      Function_223d268
.arm
branch_223d0a4: @ 223d0a4 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r7,lr}
	bxeq    lr
	sub     r0, r6, #0x1
	mov     r1, r0, lsr #2
	add     r12, r1, #0x1
	cmp     r6, #0x0
	str     r12, [r5, #0x4]
	and     r3, r0, #0x3
	sub     r6, r6, #0x1
	beq     branch_223d110
	mov     r1, #0x0
	mov     r0, #0x3
.arm
branch_223d0e0: @ 223d0e0 :arm
	ldrb    r2, [r7], #0x1
	cmp     r3, #0x0
	sub     r3, r3, #0x1
	orr     r4, r2, r4, lsl #8
	ldreq   r2, [r5]
	subeq   r12, r12, #0x1
	streq   r4, [r2, r12, lsl #0x2]
	moveq   r4, r1
	moveq   r3, r0
	cmp     r6, #0x0
	sub     r6, r6, #0x1
	bne     branch_223d0e0
.arm
branch_223d110: @ 223d110 :arm
	mov     r0, r5
	bl      Function_223d3ec
	mov     r0, r5
	add     sp, sp, #0x4
	ldmfd   sp!, {r4-r7,lr}
	bx      lr
@ 0x223d128

.arm
Function_223d128: @ 223d128 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r4, r0
	ldr     r2, [r4, #0x8]
	mov     r5, r1
	cmp     r2, #0x1
	bge     branch_223d14c
	mov     r1, #0x2
	bl      Function_223d268
.arm
branch_223d14c: @ 223d14c :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	str     r0, [r4, #0x4]
	ldr     r0, [r4]
	str     r5, [r0]
	ldr     r0, [r4]
	ldr     r0, [r0]
	cmp     r0, #0x0
	movne   r0, #0x1
	strne   r0, [r4, #0x4]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223d198

.arm
Function_223d198: @ 223d198 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4]
	cmp     r0, #0x0
	beq     branch_223d1bc
	ldr     r2, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, r2, lsl #2
	bl      0x20c4cf4
.arm
branch_223d1bc: @ 223d1bc :arm
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0xc]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d1d0

.arm
Function_223d1d0: @ 223d1d0 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	mov     r4, r1
	cmp     r5, r4
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r1, [r4, #0x4]
	ldr     r2, [r5, #0x8]
	cmp     r1, r2
	ble     branch_223d204
	bl      Function_223d268
.arm
branch_223d204: @ 223d204 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r2, [r4, #0x4]
	ldr     r0, [r4]
	ldr     r1, [r5]
	mov     r2, r2, lsl #2
	bl      0x20c4db0
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x4]
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_223d250
	ldr     r1, [r5]
	cmp     r1, #0x0
	movne   r0, #0x0
	strne   r0, [r1]
.arm
branch_223d250: @ 223d250 :arm
	ldr     r1, [r4, #0xc]
	mov     r0, r5
	str     r1, [r5, #0xc]
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223d268

.arm
Function_223d268: @ 223d268 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	mov     r4, r1
	cmp     r4, r0
	ble     branch_223d2dc
	ldr     r0, [r5, #0x10]
	ands    r0, r0, #0x2
	movne   r0, #0x0
	ldmnefd sp!, {r4-r6,lr}
	bxne    lr
	add     r0, r4, #0x1
	mov     r0, r0, lsl #2
	bl      Function_223d62c
	movs    r6, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	ldr     r0, [r5]
	cmp     r0, #0x0
	beq     branch_223d2d4
	ldr     r2, [r5, #0x4]
	mov     r1, r6
	mov     r2, r2, lsl #2
	bl      0x20c4db0
	ldr     r0, [r5]
	bl      Function_223d5e4
.arm
branch_223d2d4: @ 223d2d4 :arm
	str     r6, [r5]
	str     r4, [r5, #0x8]
.arm
branch_223d2dc: @ 223d2dc :arm
	mov     r0, r5
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x223d2e8

.arm
Function_223d2e8: @ 223d2e8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	add     r4, r6, #0x4
	mov     r5, #0x0
.arm
branch_223d2f8: @ 223d2f8 :arm
	mov     r0, r4
	bl      Function_223d510
	add     r5, r5, #0x1
	cmp     r5, #0xc
	add     r4, r4, #0x14
	blt     branch_223d2f8
	ldr     r0, [r6, #0x108]
	ands    r0, r0, #0x1
	ldmeqfd sp!, {r4-r6,lr}
	bxeq    lr
	mov     r0, r6
	bl      Function_223d5e4
	ldmfd   sp!, {r4-r6,lr}
	bx      lr
@ 0x223d330

.arm
Function_223d330: @ 223d330 :arm
	stmfd   sp!, {r4,lr}
	mov     r1, #0x0
	mov     r2, #17, 28 @ #0x110
	mov     r4, r0
	bl      0x20c4cf4
	mov     r0, #0x0
	str     r0, [r4]
	str     r0, [r4, #0x108]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d358

.arm
Function_223d358: @ 223d358 :arm
	stmfd   sp!, {r4,lr}
	mov     r0, #17, 28 @ #0x110
	bl      Function_223d62c
	movs    r4, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	bl      Function_223d330
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x108]
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d38c

.arm
Function_223d38c: @ 223d38c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	mov     r0, #0x14
	bl      Function_223d62c
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {lr}
	bxeq    lr
	mov     r1, #0x1
	str     r1, [r0, #0x10]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0, #0xc]
	str     r1, [r0, #0x8]
	str     r1, [r0]
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223d3d8

.arm
Function_223d3d8: @ 223d3d8 :arm
	ldr     r12, [pc, #0x8] @ [0x223d3e8] (=0x20c4cf4)
	mov     r1, #0x0
	mov     r2, #0x14
	bx      r12
@ 0x223d3e8

.word 0x20c4cf4 @ 0x223d3e8
.arm
Function_223d3ec: @ 223d3ec :arm
	ldr     r3, [r0, #0x4]
	cmp     r3, #0x0
	bxle    lr
	ldr     r2, [r0]
	sub     r1, r3, #0x1
	cmp     r3, #0x0
	add     r3, r2, r1, lsl #2
	bxle    lr
	add     r2, r0, #0x4
.arm
branch_223d410: @ 223d410 :arm
	ldr     r1, [r3], #-0x4
	cmp     r1, #0x0
	bxne    lr
	ldr     r1, [r2]
	sub     r1, r1, #0x1
	str     r1, [r2]
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	bgt     branch_223d410
	bx      lr
@ 0x223d438

.arm
Function_223d438: @ 223d438 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	ldr     r2, [r5, #0x4]
	mov     r4, r1
	cmp     r2, r4
	addge   sp, sp, #0x4
	ldmgefd sp!, {r4,r5,lr}
	bxge    lr
	ldr     r2, [r5, #0x8]
	cmp     r4, r2
	ble     branch_223d46c
	bl      Function_223d268
.arm
branch_223d46c: @ 223d46c :arm
	ldr     r0, [r5]
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r4,r5,lr}
	bxeq    lr
	ldr     r2, [r5, #0x4]
	cmp     r2, r4
	addge   sp, sp, #0x4
	ldmgefd sp!, {r4,r5,lr}
	bxge    lr
	mov     r1, #0x0
.arm
branch_223d498: @ 223d498 :arm
	ldr     r0, [r5]
	str     r1, [r0, r2, lsl #0x2]
	add     r2, r2, #0x1
	cmp     r2, r4
	blt     branch_223d498
	add     sp, sp, #0x4
	ldmfd   sp!, {r4,r5,lr}
	bx      lr
@ 0x223d4b8

.arm
Function_223d4b8: @ 223d4b8 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	ldr     r0, [r4]
	cmp     r0, #0x0
	beq     branch_223d4e4
	ldr     r1, [r4, #0x10]
	ands    r1, r1, #0x2
	bne     branch_223d4e4
	bl      Function_223d5e4
.arm
branch_223d4e4: @ 223d4e4 :arm
	ldr     r0, [r4, #0x10]
	orr     r0, r0, #2, 18 @ #0x8000
	str     r0, [r4, #0x10]
	ldr     r0, [r4, #0x10]
	ands    r0, r0, #0x1
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	mov     r0, r4
	bl      Function_223d5e4
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d510

.arm
Function_223d510: @ 223d510 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	bl      Function_223d198
	mov     r0, r4
	bl      Function_223d4b8
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d534

.arm
Function_223d534: @ 223d534 :arm
	stmfd   sp!, {r4,lr}
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,lr}
	bxeq    lr
	ldr     r0, [r0]
	sub     r4, r1, #0x1
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_223d568
	add     r0, r0, r4, lsl #5
	ldmfd   sp!, {r4,lr}
	bx      lr
@ 0x223d568

.arm
Function_223d568: @ 223d568 :arm
	mov     r1, #1, 16 @ #0x10000
	rsb     r1, r1, #0x0
	ands    r1, r0, r1
	beq     branch_223d588
	ands    r1, r0, #255, 8 @ #0xff000000
	movne   r2, #0x18
	moveq   r2, #0x10
	b       branch_223d594
@ 0x223d588

.arm
branch_223d588: @ 223d588 :arm
	ands    r1, r0, #255, 24 @ #0xff00
	movne   r2, #0x8
	moveq   r2, #0x0
.arm
branch_223d594: @ 223d594 :arm
	mov     r1, r0, lsr r2
	ands    r0, r1, #0xf0
	ldreq   r0, [pc, #0x20] @ [0x223d5c4] (=0x223dee8)
	ldreqsb r0, [r0, r1]
	addeq   r0, r0, r2
	bxeq    lr
	ldr     r0, [pc, #0x10] @ [0x223d5c4] (=0x223dee8)
	mov     r1, r1, lsr #4
	ldrsb   r0, [r0, r1]
	add     r0, r0, r2
	add     r0, r0, #0x4
	bx      lr
@ 0x223d5c4

.word 0x223dee8 @ 0x223d5c4
.arm
Function_223d5c8: @ 223d5c8 :arm
	ldr     r3, [pc, #0xc] @ [0x223d5dc] (=0x2240af4)
	ldr     r2, [pc, #0xc] @ [0x223d5e0] (=0x2240af8)
	str     r0, [r3]
	str     r1, [r2]
	bx      lr
@ 0x223d5dc

.word 0x2240af4 @ 0x223d5dc
.word 0x2240af8 @ 0x223d5e0
.arm
Function_223d5e4: @ 223d5e4 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	ldr     r1, [pc, #0x34] @ [0x223d628] (=0x2240af8)
	mov     r2, r0
	ldr     r1, [r1]
	cmp     r1, #0x0
	beq     branch_223d610
	blx     r1
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223d610

.arm
branch_223d610: @ 223d610 :arm
	mov     r0, #0x0
	mvn     r1, #0x0
	bl      0x20c331c
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223d628

.word 0x2240af8 @ 0x223d628
.arm
Function_223d62c: @ 223d62c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x4
	ldr     r1, [pc, #0x34] @ [0x223d670] (=0x2240af4)
	mov     r2, r0
	ldr     r1, [r1]
	cmp     r1, #0x0
	beq     branch_223d658
	blx     r1
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223d658

.arm
branch_223d658: @ 223d658 :arm
	mov     r0, #0x0
	mvn     r1, #0x0
	bl      0x20c3214
	add     sp, sp, #0x4
	ldmfd   sp!, {lr}
	bx      lr
@ 0x223d670

.word 0x2240af4 @ 0x223d670
.word Function_222bd70+1 @ =0x222bd71, 0x223d674
.word Function_222be24+1 @ =0x222be25, 0x223d678
.word Function_222c150+1 @ =0x222c151, 0x223d67c
.word 0xffffffff @ 0x223d680



Unknown_223d684: @ 0x223d684
.incbin "./baserom/overlay/overlay_0097.bin", 0x12824, 0x223d6bc - 0x223d684


.word Function_222c6f8+1 @ =0x222c6f9, 0x223d6bc
.word Function_222c78c+1 @ =0x222c78d, 0x223d6c0
.word Function_222c948+1 @ =0x222c949, 0x223d6c4
.word 0xffffffff @ 0x223d6c8

.incbin "./baserom/overlay/overlay_0097.bin", 0x1286c, 0x223d704 - 0x223d6cc


.word Function_222d284+1 @ =0x222d285, 0x223d704
.word Function_222d2b0+1 @ =0x222d2b1, 0x223d708
.word Function_222d2b8+1 @ =0x222d2b9, 0x223d70c
.word Function_222d2c4+1 @ =0x222d2c5, 0x223d710
.word 0x203294d @ 0x223d714
.word 0x0 @ 0x223d718
.word Function_222e2dc+1 @ =0x222e2dd, 0x223d71c
.word Function_222f75c+1 @ =0x222f75d, 0x223d720
.word Function_22301bc+1 @ =0x22301bd, 0x223d724
.word 0xffffffff @ 0x223d728

.incbin "./baserom/overlay/overlay_0097.bin", 0x128cc, 0x223d7ac - 0x223d72c


.word Function_2231224+1 @ =0x2231225, 0x223d7ac
.word Function_223161c+1 @ =0x223161d, 0x223d7b0
.word Function_2231f38+1 @ =0x2231f39, 0x223d7b4
.word 0xffffffff @ 0x223d7b8

.incbin "./baserom/overlay/overlay_0097.bin", 0x1295c, 0x223d864 - 0x223d7bc


.word Function_2235624+1 @ =0x2235625, 0x223d864
.word Function_22356e8+1 @ =0x22356e9, 0x223d868
.word Function_2235cc8+1 @ =0x2235cc9, 0x223d86c
.word 0xffffffff @ 0x223d870

.incbin "./baserom/overlay/overlay_0097.bin", 0x12a14, 0x223e56c - 0x223d874


.word Function_222da18+1 @ =0x222da19, 0x223e56c
.word 0x13 @ 0x223e570
.word Function_222d75c+1 @ =0x222d75d, 0x223e574
.word 0x12 @ 0x223e578
.word Function_222d984+1 @ =0x222d985, 0x223e57c
.word 0x13 @ 0x223e580
.word Function_222d75c+1 @ =0x222d75d, 0x223e584
.word 0x12 @ 0x223e588
.word Function_222d9bc+1 @ =0x222d9bd, 0x223e58c
.word 0x13 @ 0x223e590
.word Function_222d9f0+1 @ =0x222d9f1, 0x223e594
.word 0x12 @ 0x223e598
.word Function_222d474+1 @ =0x222d475, 0x223e59c
.word 0x13 @ 0x223e5a0
.word Function_222d75c+1 @ =0x222d75d, 0x223e5a4
.word 0x12 @ 0x223e5a8
.word Function_222d4d8+1 @ =0x222d4d9, 0x223e5ac
.word 0x13 @ 0x223e5b0
.word Function_222d94c+1 @ =0x222d94d, 0x223e5b4
.word 0xc @ 0x223e5b8
.word Function_222da84+1 @ =0x222da85, 0x223e5bc
.word 0xd @ 0x223e5c0
.word Function_222db08+1 @ =0x222db09, 0x223e5c4
.word 0xe @ 0x223e5c8
.word Function_222db40+1 @ =0x222db41, 0x223e5cc
.word 0x0 @ 0x223e5d0
.word Function_22383c4+1 @ =0x22383c5, 0x223e5d4
.word 0x0 @ 0x223e5d8
.word 0x0 @ 0x223e5dc
.word 0x30000 @ 0x223e5e0
.word 0x10000c00 @ 0x223e5e4
.word 0x80002f @ 0x223e5e8
.word 0x0 @ 0x223e5ec
.word 0xf @ 0x223e5f0
.word Function_222d798+1 @ =0x222d799, 0x223e5f4
.word 0x14 @ 0x223e5f8
.word Function_222d884+1 @ =0x222d885, 0x223e5fc
.word 0x10 @ 0x223e600
.word Function_222d814+1 @ =0x222d815, 0x223e604
.word 0x11 @ 0x223e608
.word Function_222da64+1 @ =0x222da65, 0x223e60c
.word 0x40 @ 0x223e610
.word Function_2230778+1 @ =0x2230779, 0x223e614
.word 0x41 @ 0x223e618
.word Function_2230834+1 @ =0x2230835, 0x223e61c
.word 0x40 @ 0x223e620
.word 0xf @ 0x223e624
.word 0x41 @ 0x223e628
.word Function_2230834+1 @ =0x2230835, 0x223e62c
.word 0x40 @ 0x223e630
.word 0xe @ 0x223e634
.word 0x41 @ 0x223e638
.word Function_2230834+1 @ =0x2230835, 0x223e63c
.word 0x2a @ 0x223e640
.word 0x6 @ 0x223e644
.word 0x2b @ 0x223e648
.word Function_22306f4+1 @ =0x22306f5, 0x223e64c
.word 0x2c @ 0x223e650
.word Function_2230728+1 @ =0x2230729, 0x223e654
.word 0x2d @ 0x223e658
.word 0xb @ 0x223e65c
.word 0x0 @ 0x223e660
.word Function_22383c4+1 @ =0x22383c5, 0x223e664

.incbin "./baserom/overlay/overlay_0097.bin", 0x13808, 0x223e69c - 0x223e668


.word 0xffffffff @ 0x223e69c
.word 0x24 @ 0x223e6a0
.word Function_22308b0+1 @ =0x22308b1, 0x223e6a4
.word 0x0 @ 0x223e6a8
.word 0x0 @ 0x223e6ac
.word 0x0 @ 0x223e6b0
.word 0x6 @ 0x223e6b4
.word 0x11 @ 0x223e6b8
.word 0xb @ 0x223e6bc
.word 0x2 @ 0x223e6c0
.word 0x1 @ 0x223e6c4
.word 0xf0200 @ 0x223e6c8
.word 0xffffffff @ 0x223e6cc
.word 0x28 @ 0x223e6d0
.word Function_22308b0+1 @ =0x22308b1, 0x223e6d4
.word 0x0 @ 0x223e6d8
.word 0x0 @ 0x223e6dc
.word 0x0 @ 0x223e6e0
.word 0x2 @ 0x223e6e4
.word 0x9 @ 0x223e6e8
.word 0x1c @ 0x223e6ec
.word 0x4 @ 0x223e6f0
.word 0x1 @ 0x223e6f4
.word 0x10200 @ 0x223e6f8
.word 0xffffffff @ 0x223e6fc
.word 0x0 @ 0x223e700
.word Function_2230904+1 @ =0x2230905, 0x223e704
.word 0x0 @ 0x223e708
.word 0x0 @ 0x223e70c
.word 0x0 @ 0x223e710
.word 0x2 @ 0x223e714
.word 0x6 @ 0x223e718
.word 0x1c @ 0x223e71c
.word 0x2 @ 0x223e720
.word 0x1 @ 0x223e724
.word 0xf0200 @ 0x223e728
.word 0xffffffff @ 0x223e72c
.word 0x0 @ 0x223e730
.word Function_22308b4+1 @ =0x22308b5, 0x223e734
.word 0x0 @ 0x223e738
.word 0x0 @ 0x223e73c
.word 0x0 @ 0x223e740
.word 0x12 @ 0x223e744
.word 0x11 @ 0x223e748
.word 0xb @ 0x223e74c
.word 0x2 @ 0x223e750
.word 0x1 @ 0x223e754
.word 0x10200 @ 0x223e758
.word 0xffffffff @ 0x223e75c
.word 0x31 @ 0x223e760
.word Function_223097c+1 @ =0x223097d, 0x223e764
.word 0x0 @ 0x223e768
.word 0x0 @ 0x223e76c
.word 0x1 @ 0x223e770
.word 0x2 @ 0x223e774
.word 0x3 @ 0x223e778
.word 0x1c @ 0x223e77c
.word 0xa @ 0x223e780
.word 0x1 @ 0x223e784
.word 0x10200 @ 0x223e788
.word 0xffffffff @ 0x223e78c
.word 0x0 @ 0x223e790
.word Function_22309e4+1 @ =0x22309e5, 0x223e794
.word 0x0 @ 0x223e798
.word 0x0 @ 0x223e79c
.word 0x1 @ 0x223e7a0
.word 0x2 @ 0x223e7a4
.word 0xe @ 0x223e7a8
.word 0x1c @ 0x223e7ac
.word 0x4 @ 0x223e7b0
.word 0x1 @ 0x223e7b4
.word 0x10200 @ 0x223e7b8
.word 0xffffffff @ 0x223e7bc
.word 0x29 @ 0x223e7c0
.word Function_2230a34+1 @ =0x2230a35, 0x223e7c4

.incbin "./baserom/overlay/overlay_0097.bin", 0x13968, 0x223e8ac - 0x223e7c8


.word 0xffffffff @ 0x223e8ac
.word 0x34 @ 0x223e8b0
.word Function_22308b0+1 @ =0x22308b1, 0x223e8b4
.word 0x7 @ 0x223e8b8
.word 0x0 @ 0x223e8bc
.word 0x3 @ 0x223e8c0
.word 0x17 @ 0x223e8c4
.word 0x7 @ 0x223e8c8
.word 0x9 @ 0x223e8cc
.word 0x4 @ 0x223e8d0
.word 0x0 @ 0x223e8d4
.word 0xe0f00 @ 0x223e8d8
.word 0xffffffff @ 0x223e8dc
.word 0x37 @ 0x223e8e0
.word Function_22308b0+1 @ =0x22308b1, 0x223e8e4
.word 0x2 @ 0x223e8e8
.word 0x0 @ 0x223e8ec
.word 0x3 @ 0x223e8f0
.word 0x6 @ 0x223e8f4
.word 0x14 @ 0x223e8f8
.word 0x6 @ 0x223e8fc
.word 0x2 @ 0x223e900
.word 0x0 @ 0x223e904
.word 0xe0f00 @ 0x223e908
.word 0xffffffff @ 0x223e90c
.word 0x39 @ 0x223e910
.word Function_22308b0+1 @ =0x22308b1, 0x223e914
.word 0xffffffff @ 0x223e918
.word 0x1 @ 0x223e91c
.word 0x3 @ 0x223e920
.word 0x14 @ 0x223e924
.word 0x14 @ 0x223e928
.word 0x6 @ 0x223e92c
.word 0x2 @ 0x223e930
.word 0x0 @ 0x223e934
.word 0xe0f00 @ 0x223e938
.word 0xffffffff @ 0x223e93c
.word 0x3a @ 0x223e940
.word Function_22308b0+1 @ =0x22308b1, 0x223e944
.word 0xffffffff @ 0x223e948
.word 0x1 @ 0x223e94c
.word 0x3 @ 0x223e950
.word 0x19 @ 0x223e954
.word 0xc @ 0x223e958
.word 0x4 @ 0x223e95c
.word 0x2 @ 0x223e960
.word 0x1 @ 0x223e964
.word 0x10200 @ 0x223e968
.word 0xffffffff @ 0x223e96c
.word 0x38 @ 0x223e970
.word Function_2230bf0+1 @ =0x2230bf1, 0x223e974
.word 0x0 @ 0x223e978
.word 0x0 @ 0x223e97c
.word 0x3 @ 0x223e980
.word 0x2 @ 0x223e984
.word 0x5 @ 0x223e988
.word 0x13 @ 0x223e98c
.word 0xb @ 0x223e990
.word 0x0 @ 0x223e994
.word 0x10200 @ 0x223e998
.word 0xffffffff @ 0x223e99c
.word 0x0 @ 0x223e9a0
.word Function_22308b0+1 @ =0x22308b1, 0x223e9a4
.word 0x0 @ 0x223e9a8
.word 0x0 @ 0x223e9ac
.word 0x2 @ 0x223e9b0
.word 0x2 @ 0x223e9b4
.word 0x13 @ 0x223e9b8
.word 0x1b @ 0x223e9bc
.word 0x4 @ 0x223e9c0
.word 0x1 @ 0x223e9c4
.word 0x10200 @ 0x223e9c8
.word 0xe @ 0x223e9cc
.word 0x3b @ 0x223e9d0
.word Function_22308b0+1 @ =0x22308b1, 0x223e9d4
.word 0x0 @ 0x223e9d8
.word 0x0 @ 0x223e9dc
.word 0x2 @ 0x223e9e0
.word 0x2 @ 0x223e9e4
.word 0x13 @ 0x223e9e8
.word 0x1b @ 0x223e9ec
.word 0x4 @ 0x223e9f0
.word 0x1 @ 0x223e9f4
.word 0x10200 @ 0x223e9f8
.word 0xe @ 0x223e9fc
.word 0x3c @ 0x223ea00
.word Function_22308b0+1 @ =0x22308b1, 0x223ea04
@ 0x223ea08


.incbin "./baserom/overlay/overlay_0097.bin", 0x13ba8, 0x223f180 - 0x223ea08


@end 0x223f180



