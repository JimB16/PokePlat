
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram94, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x14] @ 0x223b158, (=0x2246ac0)
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
.word 0x2246ac0 @ 0x223b158



.thumb
Function_223b15c: @ 223b15c :thumb
	push    {r3,lr}
	ldr     r1, [pc, #0x2e0] @ 0x223b440, (=0x2246ac0)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x18
	bls     branch_223b168
	b       branch_223b7a4
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
.hword branch_223b7a4 - Jumppoints_223b174 - 2
.hword branch_223b7a4 - Jumppoints_223b174 - 2
.hword branch_223b1a6 - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b254 - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b2da - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b35a - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b3ee - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b46c - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b4f2 - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b56a - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b63c - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b690 - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b700 - Jumppoints_223b174 - 2
.hword branch_223b798 - Jumppoints_223b174 - 2
.hword branch_223b7a4 - Jumppoints_223b174 - 2
.thumb
branch_223b1a6: @ 223b1a6 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b1b4
	cmp     r0, #0x7
	beq     branch_223b1cc
	pop     {r3,pc}
@ 0x223b1b4

.thumb
branch_223b1b4: @ 223b1b4 :thumb
	ldr     r0, [pc, #0x288] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x27c] @ 0x223b440, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b1cc

.thumb
branch_223b1cc: @ 223b1cc :thumb
	ldr     r0, [pc, #0x270] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	ldr     r2, [pc, #0x270] @ 0x223b444, (=0x2246be0)
	str     r1, [r0, #0x0]
	ldrb    r2, [r2, #0x1c]
	cmp     r2, #0xe
	bhi     branch_223b246
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223b1e6

Jumppoints_223b1e6:
.hword branch_223b246 - Jumppoints_223b1e6 - 2
.hword branch_223b204 - Jumppoints_223b1e6 - 2
.hword branch_223b20a - Jumppoints_223b1e6 - 2
.hword branch_223b210 - Jumppoints_223b1e6 - 2
.hword branch_223b246 - Jumppoints_223b1e6 - 2
.hword branch_223b246 - Jumppoints_223b1e6 - 2
.hword branch_223b246 - Jumppoints_223b1e6 - 2
.hword branch_223b216 - Jumppoints_223b1e6 - 2
.hword branch_223b228 - Jumppoints_223b1e6 - 2
.hword branch_223b22e - Jumppoints_223b1e6 - 2
.hword branch_223b234 - Jumppoints_223b1e6 - 2
.hword branch_223b23a - Jumppoints_223b1e6 - 2
.hword branch_223b21c - Jumppoints_223b1e6 - 2
.hword branch_223b222 - Jumppoints_223b1e6 - 2
.hword branch_223b240 - Jumppoints_223b1e6 - 2
.thumb
branch_223b204: @ 223b204 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b20a

.thumb
branch_223b20a: @ 223b20a :thumb
	sub     r1, #0x1d
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b210

.thumb
branch_223b210: @ 223b210 :thumb
	sub     r1, #0x1c
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b216

.thumb
branch_223b216: @ 223b216 :thumb
	sub     r1, #0x19
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b21c

.thumb
branch_223b21c: @ 223b21c :thumb
	sub     r1, #0x1e
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b222

.thumb
branch_223b222: @ 223b222 :thumb
	sub     r1, #0x1f
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b228

.thumb
branch_223b228: @ 223b228 :thumb
	sub     r1, #0x20
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b22e

.thumb
branch_223b22e: @ 223b22e :thumb
	sub     r1, #0x21
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b234

.thumb
branch_223b234: @ 223b234 :thumb
	sub     r1, #0x22
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b23a

.thumb
branch_223b23a: @ 223b23a :thumb
	sub     r1, #0x23
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b240

.thumb
branch_223b240: @ 223b240 :thumb
	sub     r1, #0x1a
	str     r1, [r0, #0x4]
	b       branch_223b24e
@ 0x223b246

.thumb
branch_223b246: @ 223b246 :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x1f4] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b24e: @ 223b24e :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b254

.thumb
branch_223b254: @ 223b254 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b262
	cmp     r0, #0x7
	beq     branch_223b27a
	pop     {r3,pc}
@ 0x223b262

.thumb
branch_223b262: @ 223b262 :thumb
	ldr     r0, [pc, #0x1dc] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x1cc] @ 0x223b440, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b27a

.thumb
branch_223b27a: @ 223b27a :thumb
	ldr     r0, [pc, #0x1c4] @ 0x223b440, (=0x2246ac0)
	mov     r2, #0x18
	ldr     r1, [pc, #0x1c4] @ 0x223b444, (=0x2246be0)
	str     r2, [r0, #0x0]
	ldrb    r1, [r1, #0x1c]
	cmp     r1, #0x5
	bgt     branch_223b2a4
	cmp     r1, #0x0
	blt     branch_223b2cc
	add     r3, r1, r1
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x223b298

Jumppoints_223b298:
.hword branch_223b2cc - Jumppoints_223b298 - 2
.hword branch_223b2aa - Jumppoints_223b298 - 2
.hword branch_223b2b0 - Jumppoints_223b298 - 2
.hword branch_223b2b6 - Jumppoints_223b298 - 2
.hword branch_223b2cc - Jumppoints_223b298 - 2
.hword branch_223b2bc - Jumppoints_223b298 - 2
.thumb
branch_223b2a4: @ 223b2a4 :thumb
	cmp     r1, #0xe
	beq     branch_223b2c2
	b       branch_223b2cc
@ 0x223b2aa

.thumb
branch_223b2aa: @ 223b2aa :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b2d4
@ 0x223b2b0

.thumb
branch_223b2b0: @ 223b2b0 :thumb
	sub     r2, #0x1d
	str     r2, [r0, #0x4]
	b       branch_223b2d4
@ 0x223b2b6

.thumb
branch_223b2b6: @ 223b2b6 :thumb
	sub     r2, #0x1c
	str     r2, [r0, #0x4]
	b       branch_223b2d4
@ 0x223b2bc

.thumb
branch_223b2bc: @ 223b2bc :thumb
	sub     r2, #0x1b
	str     r2, [r0, #0x4]
	b       branch_223b2d4
@ 0x223b2c2

.thumb
branch_223b2c2: @ 223b2c2 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x178] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b2d4
@ 0x223b2cc

.thumb
branch_223b2cc: @ 223b2cc :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x170] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b2d4: @ 223b2d4 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b2da

.thumb
branch_223b2da: @ 223b2da :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b2e8
	cmp     r0, #0x7
	beq     branch_223b300
	pop     {r3,pc}
@ 0x223b2e8

.thumb
branch_223b2e8: @ 223b2e8 :thumb
	ldr     r0, [pc, #0x154] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x148] @ 0x223b440, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b300

.thumb
branch_223b300: @ 223b300 :thumb
	ldr     r0, [pc, #0x13c] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe20
	mov     r1, #0x49
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_223b31a
	ldr     r0, [pc, #0x12c] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b354
@ 0x223b31a

.thumb
branch_223b31a: @ 223b31a :thumb
	ldr     r0, [pc, #0x12c] @ 0x223b448, (=0x2246bc0)
	ldr     r0, [r0, #0x40]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	beq     branch_223b338
	cmp     r0, #0x5
	beq     branch_223b32e
	cmp     r0, #0xe
	beq     branch_223b342
	b       branch_223b34c
@ 0x223b32e

.thumb
branch_223b32e: @ 223b32e :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x10c] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b354
@ 0x223b338

.thumb
branch_223b338: @ 223b338 :thumb
	mov     r1, #0x3
	ldr     r0, [pc, #0x104] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b354
@ 0x223b342

.thumb
branch_223b342: @ 223b342 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0xf8] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b354
@ 0x223b34c

.thumb
branch_223b34c: @ 223b34c :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0xf0] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b354: @ 223b354 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b35a

.thumb
branch_223b35a: @ 223b35a :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b368
	cmp     r0, #0x7
	beq     branch_223b380
	pop     {r3,pc}
@ 0x223b368

.thumb
branch_223b368: @ 223b368 :thumb
	ldr     r0, [pc, #0xd4] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0xc8] @ 0x223b440, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b380

.thumb
branch_223b380: @ 223b380 :thumb
	ldr     r0, [pc, #0xbc] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe20
	mov     r1, #0x49
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_223b39a
	ldr     r0, [pc, #0xac] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_223b3e8
@ 0x223b39a

.thumb
branch_223b39a: @ 223b39a :thumb
	ldr     r0, [pc, #0xac] @ 0x223b448, (=0x2246bc0)
	ldr     r0, [r0, #0x40]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x5
	bgt     branch_223b3b4
	cmp     r0, #0x3
	blt     branch_223b3e0
	beq     branch_223b3c4
	cmp     r0, #0x4
	beq     branch_223b3ce
	cmp     r0, #0x5
	beq     branch_223b3ba
	b       branch_223b3e0
@ 0x223b3b4

.thumb
branch_223b3b4: @ 223b3b4 :thumb
	cmp     r0, #0xe
	beq     branch_223b3d6
	b       branch_223b3e0
@ 0x223b3ba

.thumb
branch_223b3ba: @ 223b3ba :thumb
	mov     r1, #0x2
	ldr     r0, [pc, #0x80] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b3e8
@ 0x223b3c4

.thumb
branch_223b3c4: @ 223b3c4 :thumb
	mov     r1, #0x3
	ldr     r0, [pc, #0x78] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b3e8
@ 0x223b3ce

.thumb
branch_223b3ce: @ 223b3ce :thumb
	ldr     r0, [pc, #0x70] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b3e8
@ 0x223b3d6

.thumb
branch_223b3d6: @ 223b3d6 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x64] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b3e8
@ 0x223b3e0

.thumb
branch_223b3e0: @ 223b3e0 :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x5c] @ 0x223b440, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b3e8: @ 223b3e8 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b3ee

.thumb
branch_223b3ee: @ 223b3ee :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b3fc
	cmp     r0, #0x7
	beq     branch_223b414
	pop     {r3,pc}
@ 0x223b3fc

.thumb
branch_223b3fc: @ 223b3fc :thumb
	ldr     r0, [pc, #0x40] @ 0x223b440, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x34] @ 0x223b440, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b414

.thumb
branch_223b414: @ 223b414 :thumb
	ldr     r1, [pc, #0x28] @ 0x223b440, (=0x2246ac0)
	mov     r2, #0x18
	ldr     r0, [pc, #0x28] @ 0x223b444, (=0x2246be0)
	str     r2, [r1, #0x0]
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x5
	bgt     branch_223b432
	cmp     r0, #0x1
	blt     branch_223b45e
	beq     branch_223b438
	cmp     r0, #0x3
	beq     branch_223b452
	cmp     r0, #0x5
	beq     branch_223b44c
	b       branch_223b45e
@ 0x223b432

.thumb
branch_223b432: @ 223b432 :thumb
	cmp     r0, #0xe
	beq     branch_223b458
	b       branch_223b45e
@ 0x223b438

.thumb
branch_223b438: @ 223b438 :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	b       branch_223b466
@ 0x223b43e


.align 2


.word 0x2246ac0 @ 0x223b440
.word 0x2246be0 @ 0x223b444
.word 0x2246bc0 @ 0x223b448
.thumb
branch_223b44c: @ 223b44c :thumb
	sub     r2, #0x1b
	str     r2, [r1, #0x4]
	b       branch_223b466
@ 0x223b452

.thumb
branch_223b452: @ 223b452 :thumb
	sub     r2, #0x1c
	str     r2, [r1, #0x4]
	b       branch_223b466
@ 0x223b458

.thumb
branch_223b458: @ 223b458 :thumb
	sub     r2, #0x1a
	str     r2, [r1, #0x4]
	b       branch_223b466
@ 0x223b45e

.thumb
branch_223b45e: @ 223b45e :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x2dc] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b466: @ 223b466 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b46c

.thumb
branch_223b46c: @ 223b46c :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b47a
	cmp     r0, #0x7
	beq     branch_223b492
	pop     {r3,pc}
@ 0x223b47a

.thumb
branch_223b47a: @ 223b47a :thumb
	ldr     r0, [pc, #0x2c4] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x2b4] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b492

.thumb
branch_223b492: @ 223b492 :thumb
	ldr     r0, [pc, #0x2ac] @ 0x223b740, (=0x2246ac0)
	mov     r2, #0x18
	ldr     r1, [pc, #0x2ac] @ 0x223b744, (=0x2246be0)
	str     r2, [r0, #0x0]
	ldrb    r1, [r1, #0x1c]
	cmp     r1, #0x5
	bgt     branch_223b4bc
	cmp     r1, #0x0
	blt     branch_223b4e4
	add     r3, r1, r1
	add     r3, pc
	ldrh    r3, [r3, #0x6]
	lsl     r3, r3, #16
	asr     r3, r3, #16
	add     pc, r3
@ 0x223b4b0

Jumppoints_223b4b0:
.hword branch_223b4e4 - Jumppoints_223b4b0 - 2
.hword branch_223b4c2 - Jumppoints_223b4b0 - 2
.hword branch_223b4ce - Jumppoints_223b4b0 - 2
.hword branch_223b4d4 - Jumppoints_223b4b0 - 2
.hword branch_223b4e4 - Jumppoints_223b4b0 - 2
.hword branch_223b4c8 - Jumppoints_223b4b0 - 2
.thumb
branch_223b4bc: @ 223b4bc :thumb
	cmp     r1, #0xe
	beq     branch_223b4da
	b       branch_223b4e4
@ 0x223b4c2

.thumb
branch_223b4c2: @ 223b4c2 :thumb
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b4ec
@ 0x223b4c8

.thumb
branch_223b4c8: @ 223b4c8 :thumb
	sub     r2, #0x1b
	str     r2, [r0, #0x4]
	b       branch_223b4ec
@ 0x223b4ce

.thumb
branch_223b4ce: @ 223b4ce :thumb
	sub     r2, #0x1d
	str     r2, [r0, #0x4]
	b       branch_223b4ec
@ 0x223b4d4

.thumb
branch_223b4d4: @ 223b4d4 :thumb
	sub     r2, #0x1c
	str     r2, [r0, #0x4]
	b       branch_223b4ec
@ 0x223b4da

.thumb
branch_223b4da: @ 223b4da :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x260] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b4ec
@ 0x223b4e4

.thumb
branch_223b4e4: @ 223b4e4 :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x258] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b4ec: @ 223b4ec :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b4f2

.thumb
branch_223b4f2: @ 223b4f2 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b500
	cmp     r0, #0x7
	beq     branch_223b518
	pop     {r3,pc}
@ 0x223b500

.thumb
branch_223b500: @ 223b500 :thumb
	ldr     r0, [pc, #0x23c] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x230] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b518

.thumb
branch_223b518: @ 223b518 :thumb
	ldr     r0, [pc, #0x224] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe20
	mov     r1, #0x49
	lsl     r1, r1, #2
	cmp     r0, r1
	bcc     branch_223b53c
	bl      0x221fe20
	mov     r1, #0x49
	lsl     r1, r1, #2
	blx     _u32_div_f
	ldr     r1, [pc, #0x208] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	b       branch_223b564
@ 0x223b53c

.thumb
branch_223b53c: @ 223b53c :thumb
	cmp     r0, #0x0
	bne     branch_223b548
	ldr     r0, [pc, #0x1fc] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b564
@ 0x223b548

.thumb
branch_223b548: @ 223b548 :thumb
	ldr     r0, [pc, #0x1fc] @ 0x223b748, (=0x2246bc0)
	ldr     r0, [r0, #0x40]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xe
	bne     branch_223b55c
	mov     r1, #0x1
	ldr     r0, [pc, #0x1e8] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b564
@ 0x223b55c

.thumb
branch_223b55c: @ 223b55c :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x1e0] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b564: @ 223b564 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b56a

.thumb
branch_223b56a: @ 223b56a :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b578
	cmp     r0, #0x7
	beq     branch_223b590
	pop     {r3,pc}
@ 0x223b578

.thumb
branch_223b578: @ 223b578 :thumb
	ldr     r0, [pc, #0x1c4] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x1b8] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b590

.thumb
branch_223b590: @ 223b590 :thumb
	ldr     r0, [pc, #0x1ac] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe20
	mov     r1, #0x49
	lsl     r1, r1, #2
	cmp     r0, r1
	bne     branch_223b5aa
	ldr     r0, [pc, #0x19c] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b5aa

.thumb
branch_223b5aa: @ 223b5aa :thumb
	ldr     r0, [pc, #0x19c] @ 0x223b748, (=0x2246bc0)
	ldr     r0, [r0, #0x40]
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xe
	bhi     branch_223b62e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223b5c0

Jumppoints_223b5c0:
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b5de - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b62e - Jumppoints_223b5c0 - 2
.hword branch_223b5fc - Jumppoints_223b5c0 - 2
.hword branch_223b606 - Jumppoints_223b5c0 - 2
.hword branch_223b610 - Jumppoints_223b5c0 - 2
.hword branch_223b61a - Jumppoints_223b5c0 - 2
.hword branch_223b5e8 - Jumppoints_223b5c0 - 2
.hword branch_223b5f2 - Jumppoints_223b5c0 - 2
.hword branch_223b624 - Jumppoints_223b5c0 - 2
.thumb
branch_223b5de: @ 223b5de :thumb
	mov     r1, #0x4
	ldr     r0, [pc, #0x15c] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b5e8

.thumb
branch_223b5e8: @ 223b5e8 :thumb
	mov     r1, #0x5
	ldr     r0, [pc, #0x154] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b5f2

.thumb
branch_223b5f2: @ 223b5f2 :thumb
	mov     r1, #0x6
	ldr     r0, [pc, #0x148] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b5fc

.thumb
branch_223b5fc: @ 223b5fc :thumb
	mov     r1, #0x7
	ldr     r0, [pc, #0x140] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b606

.thumb
branch_223b606: @ 223b606 :thumb
	mov     r1, #0x8
	ldr     r0, [pc, #0x134] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b610

.thumb
branch_223b610: @ 223b610 :thumb
	mov     r1, #0x9
	ldr     r0, [pc, #0x12c] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b61a

.thumb
branch_223b61a: @ 223b61a :thumb
	mov     r1, #0xa
	ldr     r0, [pc, #0x120] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b624

.thumb
branch_223b624: @ 223b624 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x118] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b636
@ 0x223b62e

.thumb
branch_223b62e: @ 223b62e :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x10c] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b636: @ 223b636 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b63c

.thumb
branch_223b63c: @ 223b63c :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b64a
	cmp     r0, #0x7
	beq     branch_223b662
	pop     {r3,pc}
@ 0x223b64a

.thumb
branch_223b64a: @ 223b64a :thumb
	ldr     r0, [pc, #0xf4] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0xe4] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b662

.thumb
branch_223b662: @ 223b662 :thumb
	ldr     r1, [pc, #0xdc] @ 0x223b740, (=0x2246ac0)
	mov     r2, #0x18
	ldr     r0, [pc, #0xdc] @ 0x223b744, (=0x2246be0)
	str     r2, [r1, #0x0]
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x1
	beq     branch_223b67a
	cmp     r0, #0x2
	beq     branch_223b686
	cmp     r0, #0xe
	beq     branch_223b680
	b       branch_223b68a
@ 0x223b67a

.thumb
branch_223b67a: @ 223b67a :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	b       branch_223b68a
@ 0x223b680

.thumb
branch_223b680: @ 223b680 :thumb
	sub     r2, #0x1a
	str     r2, [r1, #0x4]
	b       branch_223b68a
@ 0x223b686

.thumb
branch_223b686: @ 223b686 :thumb
	sub     r2, #0x1d
	str     r2, [r1, #0x4]
.thumb
branch_223b68a: @ 223b68a :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b690

.thumb
branch_223b690: @ 223b690 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b69e
	cmp     r0, #0x7
	beq     branch_223b6b6
	pop     {r3,pc}
@ 0x223b69e

.thumb
branch_223b69e: @ 223b69e :thumb
	ldr     r0, [pc, #0xa0] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x90] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b6b6

.thumb
branch_223b6b6: @ 223b6b6 :thumb
	ldr     r1, [pc, #0x88] @ 0x223b740, (=0x2246ac0)
	mov     r2, #0x18
	ldr     r0, [pc, #0x88] @ 0x223b744, (=0x2246be0)
	str     r2, [r1, #0x0]
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x7
	bgt     branch_223b6d4
	cmp     r0, #0x1
	blt     branch_223b6f2
	beq     branch_223b6da
	cmp     r0, #0x6
	beq     branch_223b6e0
	cmp     r0, #0x7
	beq     branch_223b6e6
	b       branch_223b6f2
@ 0x223b6d4

.thumb
branch_223b6d4: @ 223b6d4 :thumb
	cmp     r0, #0xe
	beq     branch_223b6ec
	b       branch_223b6f2
@ 0x223b6da

.thumb
branch_223b6da: @ 223b6da :thumb
	mov     r0, #0x0
	str     r0, [r1, #0x4]
	b       branch_223b6fa
@ 0x223b6e0

.thumb
branch_223b6e0: @ 223b6e0 :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x4]
	b       branch_223b6fa
@ 0x223b6e6

.thumb
branch_223b6e6: @ 223b6e6 :thumb
	mov     r0, #0x2
	str     r0, [r1, #0x4]
	b       branch_223b6fa
@ 0x223b6ec

.thumb
branch_223b6ec: @ 223b6ec :thumb
	sub     r2, #0x1a
	str     r2, [r1, #0x4]
	b       branch_223b6fa
@ 0x223b6f2

.thumb
branch_223b6f2: @ 223b6f2 :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x48] @ 0x223b740, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b6fa: @ 223b6fa :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b700

.thumb
branch_223b700: @ 223b700 :thumb
	bl      0x221fd48
	cmp     r0, #0x1
	beq     branch_223b70e
	cmp     r0, #0x7
	beq     branch_223b726
	pop     {r3,pc}
@ 0x223b70e

.thumb
branch_223b70e: @ 223b70e :thumb
	ldr     r0, [pc, #0x30] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe14
	bl      Function_223bc18
	ldr     r1, [pc, #0x20] @ 0x223b740, (=0x2246ac0)
	str     r0, [r1, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b726

.thumb
branch_223b726: @ 223b726 :thumb
	ldr     r0, [pc, #0x18] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	bl      0x221fe20
	cmp     r0, #0x8
	bne     branch_223b73c
	ldr     r0, [pc, #0x8] @ 0x223b740, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b792
@ 0x223b73c

.thumb
branch_223b73c: @ 223b73c :thumb
	ldr     r0, [pc, #0x4] @ 0x223b744, (=0x2246be0)
	b       branch_223b74c
@ 0x223b740

.word 0x2246ac0 @ 0x223b740
.word 0x2246be0 @ 0x223b744
.word 0x2246bc0 @ 0x223b748
.thumb
branch_223b74c: @ 223b74c :thumb
	ldrb    r0, [r0, #0x1c]
	cmp     r0, #0x7
	bgt     branch_223b762
	cmp     r0, #0x1
	blt     branch_223b78a
	beq     branch_223b768
	cmp     r0, #0x6
	beq     branch_223b770
	cmp     r0, #0x7
	beq     branch_223b778
	b       branch_223b78a
@ 0x223b762

.thumb
branch_223b762: @ 223b762 :thumb
	cmp     r0, #0xe
	beq     branch_223b780
	b       branch_223b78a
@ 0x223b768

.thumb
branch_223b768: @ 223b768 :thumb
	ldr     r0, [pc, #0x3c] @ 0x223b7a8, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	b       branch_223b792
@ 0x223b770

.thumb
branch_223b770: @ 223b770 :thumb
	ldr     r0, [pc, #0x34] @ 0x223b7a8, (=0x2246ac0)
	mov     r1, #0x1
	str     r1, [r0, #0x4]
	b       branch_223b792
@ 0x223b778

.thumb
branch_223b778: @ 223b778 :thumb
	ldr     r0, [pc, #0x2c] @ 0x223b7a8, (=0x2246ac0)
	mov     r1, #0x2
	str     r1, [r0, #0x4]
	b       branch_223b792
@ 0x223b780

.thumb
branch_223b780: @ 223b780 :thumb
	mov     r1, #0x1
	ldr     r0, [pc, #0x24] @ 0x223b7a8, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
	b       branch_223b792
@ 0x223b78a

.thumb
branch_223b78a: @ 223b78a :thumb
	mov     r1, #0xc
	ldr     r0, [pc, #0x18] @ 0x223b7a8, (=0x2246ac0)
	mvn     r1, r1
	str     r1, [r0, #0x4]
.thumb
branch_223b792: @ 223b792 :thumb
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b798

.thumb
branch_223b798: @ 223b798 :thumb
	mov     r0, #0x18
	str     r0, [r1, #0x0]
	sub     r0, #0x24
	str     r0, [r1, #0x4]
	bl      0x221fdec
.thumb
branch_223b7a4: @ 223b7a4 :thumb
	pop     {r3,pc}
@ 0x223b7a6


.align 2


.word 0x2246ac0 @ 0x223b7a8
.thumb
Function_223b7ac: @ 223b7ac :thumb
	ldr     r0, [pc, #0x4] @ 0x223b7b4, (=0x2246ac0)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	bx      lr
@ 0x223b7b4

.word 0x2246ac0 @ 0x223b7b4
.thumb
Function_223b7b8: @ 223b7b8 :thumb
	ldr     r1, [pc, #0x18] @ 0x223b7d4, (=0x2246ac0)
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x1
	beq     branch_223b7c6
	cmp     r0, #0x18
	beq     branch_223b7ca
	b       branch_223b7d0
@ 0x223b7c6

.thumb
branch_223b7c6: @ 223b7c6 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x223b7ca

.thumb
branch_223b7ca: @ 223b7ca :thumb
	mov     r0, #0x1
	str     r0, [r1, #0x0]
	bx      lr
@ 0x223b7d0

.thumb
branch_223b7d0: @ 223b7d0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223b7d4

.word 0x2246ac0 @ 0x223b7d4
.thumb
Function_223b7d8: @ 223b7d8 :thumb
	ldr     r0, [pc, #0x4] @ 0x223b7e0, (=0x2246ac0)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x223b7de


.align 2


.word 0x2246ac0 @ 0x223b7e0
.thumb
Function_223b7e4: @ 223b7e4 :thumb
	push    {r3,lr}
	mov     r1, r0
	mov     r2, #0x49
	ldr     r0, [pc, #0x38] @ 0x223b824, (=0x2246ad4)
	lsl     r2, r2, #2
	blx     CopyDataInByteSteps
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r2, #0x49
	ldr     r0, [pc, #0x28] @ 0x223b828, (=0x2246400)
	ldr     r1, [pc, #0x24] @ 0x223b824, (=0x2246ad4)
	ldr     r3, [pc, #0x28] @ 0x223b82c, (=0x2246bfc)
	lsl     r2, r2, #2
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b814
	ldr     r0, [pc, #0x20] @ 0x223b830, (=0x2246ac0)
	mov     r1, #0x2
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223b814

.thumb
branch_223b814: @ 223b814 :thumb
	ldr     r0, [pc, #0x18] @ 0x223b830, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b824

.word 0x2246ad4 @ 0x223b824
.word 0x2246400 @ 0x223b828
.word 0x2246bfc @ 0x223b82c
.word 0x2246ac0 @ 0x223b830
.thumb
Function_223b834: @ 223b834 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x223b874, (=0x2246acc)
	ldr     r2, [pc, #0x3c] @ 0x223b878, (=0x2246ad4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r1, [r2, #0x0]
	str     r0, [r2, #0x4]
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223b87c, (=0x224644c)
	ldr     r1, [pc, #0x28] @ 0x223b878, (=0x2246ad4)
	ldr     r3, [pc, #0x30] @ 0x223b880, (=0x2246bfc)
	mov     r2, #0x8
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b862
	ldr     r0, [pc, #0x28] @ 0x223b884, (=0x2246ac0)
	mov     r1, #0x4
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223b862

.thumb
branch_223b862: @ 223b862 :thumb
	ldr     r0, [pc, #0x20] @ 0x223b884, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b872


.align 2


.word 0x2246acc @ 0x223b874
.word 0x2246ad4 @ 0x223b878
.word 0x224644c @ 0x223b87c
.word 0x2246bfc @ 0x223b880
.word 0x2246ac0 @ 0x223b884
.thumb
Function_223b888: @ 223b888 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x223b8c8, (=0x2246bc0)
	str     r4, [r0, #0x40]
	bl      0x221fc84
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223b8cc, (=0x224649c)
	ldr     r1, [pc, #0x30] @ 0x223b8d0, (=0x2246ad4)
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b8b6
	ldr     r0, [pc, #0x24] @ 0x223b8d4, (=0x2246ac0)
	mov     r1, #0x6
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b8b6

.thumb
branch_223b8b6: @ 223b8b6 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223b8d4, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b8c8

.word 0x2246bc0 @ 0x223b8c8
.word 0x224649c @ 0x223b8cc
.word 0x2246ad4 @ 0x223b8d0
.word 0x2246ac0 @ 0x223b8d4
.thumb
Function_223b8d8: @ 223b8d8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x38] @ 0x223b918, (=0x2246bc0)
	str     r4, [r0, #0x40]
	bl      0x221fc84
	mov     r0, #0x49
	lsl     r0, r0, #2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223b91c, (=0x22464e4)
	ldr     r1, [pc, #0x30] @ 0x223b920, (=0x2246ad4)
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b906
	ldr     r0, [pc, #0x24] @ 0x223b924, (=0x2246ac0)
	mov     r1, #0x8
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b906

.thumb
branch_223b906: @ 223b906 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223b924, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b918

.word 0x2246bc0 @ 0x223b918
.word 0x22464e4 @ 0x223b91c
.word 0x2246ad4 @ 0x223b920
.word 0x2246ac0 @ 0x223b924
.thumb
Function_223b928: @ 223b928 :thumb
	push    {r3,lr}
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223b95c, (=0x2246530)
	ldr     r1, [pc, #0x28] @ 0x223b960, (=0x2246ad4)
	ldr     r3, [pc, #0x2c] @ 0x223b964, (=0x2246bfc)
	mov     r2, #0x0
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b94a
	ldr     r0, [pc, #0x24] @ 0x223b968, (=0x2246ac0)
	mov     r1, #0xa
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223b94a

.thumb
branch_223b94a: @ 223b94a :thumb
	ldr     r0, [pc, #0x1c] @ 0x223b968, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b95a


.align 2


.word 0x2246530 @ 0x223b95c
.word 0x2246ad4 @ 0x223b960
.word 0x2246bfc @ 0x223b964
.word 0x2246ac0 @ 0x223b968
.thumb
Function_223b96c: @ 223b96c :thumb
	push    {r3,lr}
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223b9a0, (=0x224657c)
	ldr     r1, [pc, #0x28] @ 0x223b9a4, (=0x2246ad4)
	ldr     r3, [pc, #0x2c] @ 0x223b9a8, (=0x2246bfc)
	mov     r2, #0x0
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223b98e
	ldr     r0, [pc, #0x24] @ 0x223b9ac, (=0x2246ac0)
	mov     r1, #0xc
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223b98e

.thumb
branch_223b98e: @ 223b98e :thumb
	ldr     r0, [pc, #0x1c] @ 0x223b9ac, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223b99e


.align 2


.word 0x224657c @ 0x223b9a0
.word 0x2246ad4 @ 0x223b9a4
.word 0x2246bfc @ 0x223b9a8
.word 0x2246ac0 @ 0x223b9ac
.thumb
Function_223b9b0: @ 223b9b0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x5c] @ 0x223ba14, (=0x2246bc0)
	mov     r6, r2
	str     r6, [r0, #0x40]
	mov     r4, r1
	bl      0x221fc84
	ldrb    r0, [r5, #0x0]
	ldr     r1, [pc, #0x50] @ 0x223ba18, (=0x2246ad4)
	mov     r2, #0x7
	strb    r0, [r1, #0x0]
	ldrb    r0, [r5, #0x1]
	mov     r3, r6
	strb    r0, [r1, #0x1]
	ldrb    r0, [r5, #0x2]
	strb    r0, [r1, #0x2]
	ldrb    r0, [r5, #0x3]
	strb    r0, [r1, #0x3]
	ldrb    r0, [r5, #0x4]
	strb    r0, [r1, #0x4]
	ldrb    r0, [r5, #0x5]
	strb    r0, [r1, #0x5]
	ldr     r0, [pc, #0x38] @ 0x223ba1c, (=0x2246ac0)
	strb    r4, [r0, #0x1a]
	mov     r0, #0x49
	lsl     r0, r0, #2
	mul     r0, r4
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223ba20, (=0x22465c8)
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223ba00
	ldr     r0, [pc, #0x24] @ 0x223ba1c, (=0x2246ac0)
	mov     r1, #0xe
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223ba00

.thumb
branch_223ba00: @ 223ba00 :thumb
	ldr     r0, [pc, #0x18] @ 0x223ba1c, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223ba12


.align 2


.word 0x2246bc0 @ 0x223ba14
.word 0x2246ad4 @ 0x223ba18
.word 0x2246ac0 @ 0x223ba1c
.word 0x22465c8 @ 0x223ba20
.thumb
Function_223ba24: @ 223ba24 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x223ba78, (=0x2246bc0)
	mov     r4, r1
	str     r4, [r0, #0x40]
	bl      0x221fc84
	ldr     r3, [pc, #0x48] @ 0x223ba7c, (=0x2246ad4)
	mov     r2, r5
	mov     r1, #0x8
.thumb
branch_223ba38: @ 223ba38 :thumb
	ldrb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223ba38
	mov     r0, #0x6
	ldsb    r1, [r5, r0]
	mov     r0, #0x49
	lsl     r0, r0, #2
	mul     r0, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223ba80, (=0x22465c8)
	ldr     r1, [pc, #0x28] @ 0x223ba7c, (=0x2246ad4)
	mov     r2, #0x8
	mov     r3, r4
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223ba68
	ldr     r0, [pc, #0x20] @ 0x223ba84, (=0x2246ac0)
	mov     r1, #0xe
	str     r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223ba68

.thumb
branch_223ba68: @ 223ba68 :thumb
	ldr     r0, [pc, #0x18] @ 0x223ba84, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3-r5,pc}
@ 0x223ba78

.word 0x2246bc0 @ 0x223ba78
.word 0x2246ad4 @ 0x223ba7c
.word 0x22465c8 @ 0x223ba80
.word 0x2246ac0 @ 0x223ba84
.thumb
Function_223ba88: @ 223ba88 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x223badc, (=0x2246bc0)
	mov     r6, r2
	mov     r4, r1
	str     r6, [r0, #0x40]
	bl      0x221fc84
	mov     r2, #0x49
	ldr     r0, [pc, #0x40] @ 0x223bae0, (=0x2246ad4)
	mov     r1, r4
	lsl     r2, r2, #2
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0x34] @ 0x223badc, (=0x2246bc0)
	mov     r2, #0x49
	str     r5, [r0, #0x38]
	lsl     r2, r2, #2
	str     r2, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223bae4, (=0x2246614)
	ldr     r1, [pc, #0x2c] @ 0x223bae0, (=0x2246ad4)
	.hword  0x1d12 @ add r2, r2, #0x4
	mov     r3, r6
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223baca
	ldr     r0, [pc, #0x24] @ 0x223bae8, (=0x2246ac0)
	mov     r1, #0x10
	str     r1, [r0, #0x0]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223baca

.thumb
branch_223baca: @ 223baca :thumb
	ldr     r0, [pc, #0x1c] @ 0x223bae8, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223badc

.word 0x2246bc0 @ 0x223badc
.word 0x2246ad4 @ 0x223bae0
.word 0x2246614 @ 0x223bae4
.word 0x2246ac0 @ 0x223bae8
.thumb
Function_223baec: @ 223baec :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x223bb2c, (=0x2246acc)
	ldr     r2, [pc, #0x3c] @ 0x223bb30, (=0x2246ad4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [r0, #0x4]
	str     r1, [r2, #0x0]
	str     r0, [r2, #0x4]
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223bb34, (=0x2246664)
	ldr     r1, [pc, #0x28] @ 0x223bb30, (=0x2246ad4)
	ldr     r3, [pc, #0x30] @ 0x223bb38, (=0x2246bfc)
	mov     r2, #0x8
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223bb1a
	ldr     r0, [pc, #0x28] @ 0x223bb3c, (=0x2246ac0)
	mov     r1, #0x12
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223bb1a

.thumb
branch_223bb1a: @ 223bb1a :thumb
	ldr     r0, [pc, #0x20] @ 0x223bb3c, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223bb2a


.align 2


.word 0x2246acc @ 0x223bb2c
.word 0x2246ad4 @ 0x223bb30
.word 0x2246664 @ 0x223bb34
.word 0x2246bfc @ 0x223bb38
.word 0x2246ac0 @ 0x223bb3c
.thumb
Function_223bb40: @ 223bb40 :thumb
	push    {r3,lr}
	bl      0x221fc84
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223bb74, (=0x22466b8)
	ldr     r1, [pc, #0x28] @ 0x223bb78, (=0x2246ad4)
	ldr     r3, [pc, #0x2c] @ 0x223bb7c, (=0x2246bfc)
	mov     r2, #0x0
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223bb62
	ldr     r0, [pc, #0x24] @ 0x223bb80, (=0x2246ac0)
	mov     r1, #0x14
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223bb62

.thumb
branch_223bb62: @ 223bb62 :thumb
	ldr     r0, [pc, #0x1c] @ 0x223bb80, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3,pc}
@ 0x223bb72


.align 2


.word 0x22466b8 @ 0x223bb74
.word 0x2246ad4 @ 0x223bb78
.word 0x2246bfc @ 0x223bb7c
.word 0x2246ac0 @ 0x223bb80
.thumb
Function_223bb84: @ 223bb84 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0x1c
	mov     r4, r1
	blx     OS_GetMacAddress
	ldr     r0, [pc, #0x3c] @ 0x223bbd0, (=0x2246ad4)
	mov     r1, r5
	mov     r2, #0x64
	blx     CopyDataInByteSteps
	ldr     r0, [pc, #0x38] @ 0x223bbd4, (=0x2246bc0)
	str     r4, [r0, #0x40]
	bl      0x221fc84
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x2c] @ 0x223bbd4, (=0x2246bc0)
	ldr     r0, [pc, #0x2c] @ 0x223bbd8, (=0x2246704)
	ldr     r1, [pc, #0x24] @ 0x223bbd0, (=0x2246ad4)
	ldr     r3, [r3, #0x40]
	mov     r2, #0x64
	bl      Function_223bbe0
	cmp     r0, #0x0
	beq     branch_223bbc0
	ldr     r0, [pc, #0x20] @ 0x223bbdc, (=0x2246ac0)
	mov     r1, #0x16
	str     r1, [r0, #0x0]
	pop     {r3-r5,pc}
@ 0x223bbc0

.thumb
branch_223bbc0: @ 223bbc0 :thumb
	ldr     r0, [pc, #0x18] @ 0x223bbdc, (=0x2246ac0)
	mov     r1, #0x18
	str     r1, [r0, #0x0]
	sub     r1, #0x25
	str     r1, [r0, #0x4]
	bl      0x221fdec
	pop     {r3-r5,pc}
@ 0x223bbd0

.word 0x2246ad4 @ 0x223bbd0
.word 0x2246bc0 @ 0x223bbd4
.word 0x2246704 @ 0x223bbd8
.word 0x2246ac0 @ 0x223bbdc
.thumb
Function_223bbe0: @ 223bbe0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [sp, #0x18]
	str     r3, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r4, r2
	ldr     r1, [pc, #0x24] @ 0x223bc14, (=0x2246ac0)
	mov     r2, r5
	ldr     r1, [r1, #0x8]
	mov     r3, r4
	bl      0x221fca8
	cmp     r0, #0x0
	beq     branch_223bc06
	cmp     r0, #0x1
	beq     branch_223bc0c
	cmp     r0, #0x2
	b       branch_223bc0c
@ 0x223bc06

.thumb
branch_223bc06: @ 223bc06 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223bc0c

.thumb
branch_223bc0c: @ 223bc0c :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223bc12


.align 2


.word 0x2246ac0 @ 0x223bc14
.thumb
Function_223bc18: @ 223bc18 :thumb
	push    {r4,lr}
	cmp     r0, #0x20
	bhi     branch_223bc90
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bc2a

Jumppoints_223bc2a:
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc72 - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc90 - Jumppoints_223bc2a - 2
.hword branch_223bc72 - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc78 - Jumppoints_223bc2a - 2
.hword branch_223bc7e - Jumppoints_223bc2a - 2
.hword branch_223bc7e - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc8a - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.hword branch_223bc90 - Jumppoints_223bc2a - 2
.hword branch_223bc72 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc8a - Jumppoints_223bc2a - 2
.hword branch_223bc84 - Jumppoints_223bc2a - 2
.hword branch_223bc6c - Jumppoints_223bc2a - 2
.thumb
branch_223bc6c: @ 223bc6c :thumb
	mov     r4, #0xc
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc72

.thumb
branch_223bc72: @ 223bc72 :thumb
	mov     r4, #0xc
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc78

.thumb
branch_223bc78: @ 223bc78 :thumb
	mov     r4, #0xe
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc7e

.thumb
branch_223bc7e: @ 223bc7e :thumb
	mov     r4, #0xe
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc84

.thumb
branch_223bc84: @ 223bc84 :thumb
	mov     r4, #0x1
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc8a

.thumb
branch_223bc8a: @ 223bc8a :thumb
	mov     r4, #0x1
	mvn     r4, r4
	b       branch_223bc94
@ 0x223bc90

.thumb
branch_223bc90: @ 223bc90 :thumb
	mov     r4, #0xc
	mvn     r4, r4
.thumb
branch_223bc94: @ 223bc94 :thumb
	mov     r0, #0xc
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223bcac
	blx     Function_4_2213898
	cmp     r0, #0x9
	beq     branch_223bca8
	mov     r4, #0xd
	mvn     r4, r4
branch_223bca8: @ 223bca8 :thumb
	blx     Function_4_21d76e8
branch_223bcac: @ 223bcac :thumb
	mov     r0, r4
	pop     {r4,pc}
@ 0x223bcb0


.thumb
.globl Function_94_223bcb0
Function_94_223bcb0: @ 223bcb0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r1
	mov     r6, r0
	ldr     r0, [r5, #0x0]
	cmp     r0, #0x0
	beq     branch_223bcc6
	cmp     r0, #0x1
	bne     branch_223bcc4
	b       branch_223bdd4
@ 0x223bcc4

.thumb
branch_223bcc4: @ 223bcc4 :thumb
	b       branch_223bdea
@ 0x223bcc6

.thumb
branch_223bcc6: @ 223bcc6 :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x10c] @ 0x223bdf0, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x10c] @ 0x223bdf4, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r2, #0x7
	mov     r0, #0x3
	mov     r1, #0x3e
	lsl     r2, r2, #16
	bl      Function_2017fc8
	ldr     r1, [pc, #0xfc] @ 0x223bdf8, (=0x1488)
	mov     r0, r6
	mov     r2, #0x3e
	bl      MallocSomeDataAndStorePtrInOverlayData1c
	ldr     r2, [pc, #0xf0] @ 0x223bdf8, (=0x1488)
	mov     r1, #0x0
	mov     r4, r0
	blx     Call_FillMemWithValue
	mov     r0, #0x3e
	bl      Function_2018340
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x223bdfc, (=0x2246c04)
	add     r2, sp, #0x0
	ldr     r3, [pc, #0xe4] @ 0x223be00, (=0x2245a00)
	str     r4, [r0, #0x4]
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r7
	bl      SetGraphicsModes
	mov     r0, #0xb
	mov     r1, #0x40
	mov     r2, #0x3e
	bl      Function_200b368
	mov     r1, #0xb9
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [pc, #0xc4] @ 0x223be04, (=0x29f)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0xbc] @ 0x223be08, (=0xb94)
	ldr     r2, [pc, #0xbc] @ 0x223be0c, (=0x2a2)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0xb4] @ 0x223be10, (=0xb9c)
	ldr     r2, [pc, #0xb4] @ 0x223be14, (=0x2b7)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      LoadFromNARC_9
	mov     r1, #0xba
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r2, #0x67
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x3e
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0x98] @ 0x223be18, (=0xb98)
	ldr     r2, [pc, #0x98] @ 0x223be1c, (=0x2b6)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      LoadFromNARC_9
	ldr     r1, [pc, #0x90] @ 0x223be20, (=0xba4)
	str     r0, [r4, r1]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      Function_2017dd4
	mov     r0, r4
	mov     r1, r6
	bl      Function_223c03c
	mov     r0, r4
	bl      Function_223c4e0
	ldr     r1, [pc, #0x78] @ 0x223be24, (=0x497)
	mov     r0, #0xb
	mov     r2, #0x1
	bl      Function_2004550
	ldr     r1, [pc, #0x74] @ 0x223be28, (=0x20020)
	mov     r0, #0x3e
	bl      malloc
	str     r0, [r4, #0x4c]
	add     r0, #0x1f
	mov     r1, #0x1f
	bic     r0, r1
	mov     r1, #0x2
	lsl     r1, r1, #16
	mov     r2, #0x0
	blx     Function_20a5404
	str     r0, [r4, #0x50]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bdea

branch_223bdd4: @ 223bdd4 :thumb
	bl      LoadOverlay4
	bl      LoadOverlay60
	bl      Function_2033478
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_223bdea: @ 223bdea :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223bdf0

.word 0xffffe0ff @ 0x223bdf0
.word 0x4001000 @ 0x223bdf4
.word 0x1488 @ 0x223bdf8
.word 0x2246c04 @ 0x223bdfc
.word 0x2245a00 @ 0x223be00
.word 0x29f @ 0x223be04
.word 0xb94 @ 0x223be08
.word 0x2a2 @ 0x223be0c
.word 0xb9c @ 0x223be10
.word 0x2b7 @ 0x223be14
.word 0xb98 @ 0x223be18
.word 0x2b6 @ 0x223be1c
.word 0xba4 @ 0x223be20
.word 0x497 @ 0x223be24
.word 0x20020 @ 0x223be28



.thumb
.globl Function_94_223be2c
Function_94_223be2c: @ 223be2c :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	bl      LoadOverlayData1c
	mov     r4, r0
	blx     Function_4_21d8018
	bl      Function_223b15c
	ldr     r1, [r5, #0x0]
	cmp     r1, #0x5
	bhi     branch_223bf1c
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223be50

Jumppoints_223be50:
.hword branch_223be5c - Jumppoints_223be50 - 2
.hword branch_223be78 - Jumppoints_223be50 - 2
.hword branch_223be9c - Jumppoints_223be50 - 2
.hword branch_223beaa - Jumppoints_223be50 - 2
.hword branch_223bebe - Jumppoints_223be50 - 2
.hword branch_223bf18 - Jumppoints_223be50 - 2
.thumb
branch_223be5c: @ 223be5c :thumb
	bl      Function_20334a4
	cmp     r0, #0x0
	beq     branch_223bf1c
	ldr     r1, [r4, #0x50]
	ldr     r0, [pc, #0xd0] @ 0x223bf38, (=0x2246c04)
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x223bf3c, (=0x223c469)
	ldr     r1, [pc, #0xd0] @ 0x223bf40, (=0x223c491)
	blx     Function_4_21d776c
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bf1c
@ 0x223be78

.thumb
branch_223be78: @ 223be78 :thumb
	ldr     r3, [r4, #0x14]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0xc0] @ 0x223bf44, (=0x224674c)
	mov     r0, r4
	ldr     r2, [r2, r6]
	blx     r2
	str     r0, [r5, #0x0]
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223bf1c
	mov     r0, r4
	bl      Function_223c508
	b       branch_223bf1c
@ 0x223be9c

.thumb
branch_223be9c: @ 223be9c :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223bf1c
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_223bf1c
@ 0x223beaa

.thumb
branch_223beaa: @ 223beaa :thumb
	ldr     r3, [r4, #0x14]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x94] @ 0x223bf48, (=0x2246750)
	mov     r0, r4
	ldr     r2, [r2, r6]
	blx     r2
	str     r0, [r5, #0x0]
	b       branch_223bf1c
@ 0x223bebe

.thumb
branch_223bebe: @ 223bebe :thumb
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223bf1c
	mov     r0, #0x42
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223bf02
	mov     r0, r4
	bl      Function_223c4e0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      GetGender
	mov     r1, r0
	mov     r0, r4
	bl      Function_2243ef8
	mov     r1, #0x47
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2244234
	mov     r0, r4
	bl      Function_223d068
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_223bf02: @ 223bf02 :thumb
	ldr     r3, [r4, #0x14]
	mov     r2, #0xc
	mov     r6, r3
	mul     r6, r2
	ldr     r2, [pc, #0x40] @ 0x223bf4c, (=0x2246754)
	ldr     r1, [r5, #0x0]
	ldr     r2, [r2, r6]
	mov     r0, r4
	blx     r2
	str     r0, [r5, #0x0]
	b       branch_223bf1c
@ 0x223bf18

.thumb
branch_223bf18: @ 223bf18 :thumb
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x223bf1c

.thumb
branch_223bf1c: @ 223bf1c :thumb
	mov     r0, r4
	bl      Function_223c578
	mov     r0, r4
	bl      Function_223c598
	ldr     r0, [pc, #0x24] @ 0x223bf50, (=0xbe8)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223bf34
	bl      Function_20219f8
.thumb
branch_223bf34: @ 223bf34 :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223bf38

.word 0x2246c04 @ 0x223bf38
.word 0x223c469 @ 0x223bf3c
.word 0x223c491 @ 0x223bf40
.word 0x224674c @ 0x223bf44
.word 0x2246750 @ 0x223bf48
.word 0x2246754 @ 0x223bf4c
.word 0xbe8 @ 0x223bf50



.thumb
.globl Function_94_223bf54
Function_94_223bf54: @ 223bf54 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      LoadOverlayData1c
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	bl      free
	bl      UnloadOverlay60
	bl      UnloadOverlay4
	mov     r0, r4
	bl      Function_223c508
	ldr     r0, [pc, #0x60] @ 0x223bfd4, (=0xb98)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0xba
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x50] @ 0x223bfd8, (=0xb9c)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x4c] @ 0x223bfdc, (=0xb94)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	ldr     r0, [pc, #0x48] @ 0x223bfe0, (=0xba4)
	ldr     r0, [r4, r0]
	bl      Function_200b190
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_200b3f0
	mov     r0, r4
	bl      Function_223c0a0
	bl      Function_20334cc
	ldr     r0, [r4, #0x4]
	bl      free
	ldr     r0, [r4, #0x0]
	bl      free
	mov     r0, r5
	bl      FreeSomeDataAndStore0InOverlayData1c
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	mov     r0, #0x3e
	bl      Function_201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x223bfd4

.word 0xb98 @ 0x223bfd4
.word 0xb9c @ 0x223bfd8
.word 0xb94 @ 0x223bfdc
.word 0xba4 @ 0x223bfe0
.thumb
Function_223bfe4: @ 223bfe4 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x28] @ 0x223c010, (=0x10b8)
	mov     r4, r0
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_223bff8
	blx     r1
	ldr     r0, [pc, #0x1c] @ 0x223c010, (=0x10b8)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_223bff8: @ 223bff8 :thumb
	bl      Function_201dcac
	bl      Function_200a858
	ldr     r3, [pc, #0x10] @ 0x223c014, (=0x27e0000)
	ldr     r1, [pc, #0x14] @ 0x223c018, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x223c00e


.align 2


.word 0x10b8 @ 0x223c010
.word 0x27e0000 @ 0x223c014
.word 0x3ff8 @ 0x223c018
.thumb
Function_223c01c: @ 223c01c :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x223c038, (=0x2245a20)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223c026: @ 223c026 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c026
	add     r0, sp, #0x0
	bl      GX_SetBanks
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223c038

.word 0x2245a20 @ 0x223c038
.thumb
Function_223c03c: @ 223c03c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, r1
	bl      LoadPtrToOverWorldDataIn18
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r2, r1
	str     r1, [r4, #0x14]
	bl      Function_223c4c0
	mov     r2, #0x11
	ldr     r0, [pc, #0x40] @ 0x223c098, (=0xb7e)
	mov     r1, #0x0
	lsl     r2, r2, #4
	strh    r1, [r4, r2]
	strh    r1, [r4, r0]
	mov     r5, #0x3
	add     r3, r0, #0x2
	strb    r5, [r4, r3]
	add     r3, r0, #0x3
	strb    r1, [r4, r3]
	add     r3, r0, #0x4
	strb    r1, [r4, r3]
	.hword  0x1d80 @ add r0, r0, #0x6
	strh    r1, [r4, r0]
	ldr     r0, [pc, #0x28] @ 0x223c09c, (=0x1090)
	mov     r3, #0x12
	strh    r1, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	strh    r3, [r4, r2]
	mov     r2, r0
	add     r2, #0x1c
	strh    r1, [r4, r2]
	mov     r2, r0
	add     r2, #0x1e
	strh    r1, [r4, r2]
	add     r2, r0, #0x2
	strh    r1, [r4, r2]
	mov     r2, r0
	sub     r2, #0x14
	str     r1, [r4, r2]
	add     r0, #0xc0
	str     r1, [r4, r0]
	pop     {r3-r5,pc}
@ 0x223c098

.word 0xb7e @ 0x223c098
.word 0x1090 @ 0x223c09c
.thumb
Function_223c0a0: @ 223c0a0 :thumb
	bx      lr
@ 0x223c0a2


.align 2, 0


.thumb
Function_223c0a4: @ 223c0a4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x24] @ 0x223c0d0, (=0x2245a10)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      Function_201e86c
	mov     r0, #0x14
	mov     r1, #0x3e
	bl      Function_201f834
	bl      Function_201e994
	bl      Function_201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223c0d0

.word 0x2245a10 @ 0x223c0d0



.thumb
Function_223c0d4: @ 223c0d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0

	mov     r0, #Worldtrade_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	str     r0, [sp, #0x18]
	blx     Function_20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x7e
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x3e
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      Function_200a784
	ldr     r1, [pc, #0x1d8] @ 0x223c2dc, (=0xbec)
	mov     r0, #0x4e
	add     r1, r5, r1
	mov     r2, #0x3e
	bl      Function_20095c4
	ldr     r1, [pc, #0x1d0] @ 0x223c2e0, (=0xbe8)
	mov     r2, #0x1
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      Function_200964c
	ldr     r7, [pc, #0x1c4] @ 0x223c2e4, (=0xd14)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223c124: @ 223c124 :thumb
	mov     r0, #0x3
	mov     r1, r6
	mov     r2, #0x3e
	bl      Function_2009714
	str     r0, [r4, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x4
	blt     branch_223c124
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x19c] @ 0x223c2e4, (=0xd14)
	ldr     r1, [sp, #0x18]
	ldr     r0, [r5, r0]
	mov     r2, #0x12
	bl      Function_2009a4c
	ldr     r1, [pc, #0x194] @ 0x223c2e8, (=0xd24)
	mov     r3, #0x0
	str     r0, [r5, r1]
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	sub     r1, #0xc
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x9
	bl      Function_2009b04
	ldr     r1, [pc, #0x178] @ 0x223c2ec, (=0xd28)
	mov     r2, #0x13
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x1
	bl      Function_2009bc4
	ldr     r1, [pc, #0x160] @ 0x223c2f0, (=0xd2c)
	mov     r2, #0x14
	str     r0, [r5, r1]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	sub     r1, #0xc
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x1
	bl      Function_2009bc4
	mov     r1, #0xd3
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x20
	bl      Function_2009a4c
	ldr     r1, [pc, #0x128] @ 0x223c2f4, (=0xd34)
	mov     r2, #0x8
	str     r0, [r5, r1]
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x9
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	sub     r1, #0x1c
	str     r0, [sp, #0xc]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r3, #0x0
	bl      Function_2009b04
	ldr     r1, [pc, #0x108] @ 0x223c2f8, (=0xd38)
	mov     r3, #0x1
	str     r0, [r5, r1]
	str     r3, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x21
	bl      Function_2009bc4
	ldr     r1, [pc, #0xf0] @ 0x223c2fc, (=0xd3c)
	mov     r3, #0x1
	str     r0, [r5, r1]
	str     r3, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	sub     r1, #0x1c
	str     r0, [sp, #0x8]
	ldr     r0, [r5, r1]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x22
	bl      Function_2009bc4
	mov     r1, #0x35
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	bl      Function_200a328
	ldr     r0, [pc, #0xc0] @ 0x223c2f4, (=0xd34)
	ldr     r0, [r5, r0]
	bl      Function_200a328
	ldr     r0, [pc, #0xb0] @ 0x223c2ec, (=0xd28)
	ldr     r0, [r5, r0]
	bl      Function_200a5c8
	ldr     r0, [pc, #0xb4] @ 0x223c2f8, (=0xd38)
	ldr     r0, [r5, r0]
	bl      Function_200a5c8
	bl      Function_2079fd0
	mov     r1, r0
	mov     r0, #0x13
	add     r2, sp, #0x1c
	mov     r3, #0x3e
	bl      Function_2006f88
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x60
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x60
	ldr     r0, [r0, #0xc]
	mov     r2, r1
	blx     GX_LoadOBJPltt
	ldr     r0, [sp, #0x1c]
	mov     r7, #0x1f
	ldr     r4, [r0, #0xc]
	mov     r3, #0x0
	mov     r5, r7
.thumb
branch_223c27c: @ 223c27c :thumb
	ldrh    r2, [r4, #0x0]
	mov     r0, #0x1f
	.hword  0x1c5b @ add r3, r3, #0x1
	mov     r1, r2
	and     r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r1, r0, #1
	asr     r0, r2, #10
	mov     r6, r0
	and     r6, r7
	lsr     r0, r6, #31
	add     r0, r6, r0
	asr     r2, r2, #5
	mov     r6, r2
	and     r6, r5
	lsr     r2, r6, #31
	add     r2, r6, r2
	asr     r0, r0, #1
	asr     r2, r2, #1
	lsl     r0, r0, #10
	lsl     r2, r2, #5
	orr     r0, r2
	orr     r0, r1
	strh    r0, [r4, #0x0]
	.hword  0x1ca4 @ add r4, r4, #0x2
	cmp     r3, #0x30
	blt     branch_223c27c
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x60
	ldr     r0, [r0, #0xc]
	blx     DC_FlushRange
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xc0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x60
	blx     GX_LoadOBJPltt
	ldr     r0, [sp, #0x14]
	bl      free
	ldr     r0, [sp, #0x18]
	bl      Call_FS_CloseFile
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x223c2da


.align 2


.word 0xbec @ 0x223c2dc
.word 0xbe8 @ 0x223c2e0
.word 0xd14 @ 0x223c2e4
.word 0xd24 @ 0x223c2e8
.word 0xd28 @ 0x223c2ec
.word 0xd2c @ 0x223c2f0
.word 0xd34 @ 0x223c2f4
.word 0xd38 @ 0x223c2f8
.word 0xd3c @ 0x223c2fc
.thumb
Function_223c300: @ 223c300 :thumb
	push    {r3,r4}
	ldr     r4, [pc, #0x24] @ 0x223c328, (=0xbe8)
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
	mov     r1, #0x3e
	str     r1, [r0, #0x2c]
	pop     {r3,r4}
	bx      lr
@ 0x223c328

.word 0xbe8 @ 0x223c328
.thumb
Function_223c32c: @ 223c32c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	mov     r1, #0x0
	mov     r4, r0
	str     r1, [sp, #0x0]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r2, [pc, #0x7c] @ 0x223c3bc, (=0xd14)
	str     r1, [sp, #0x10]
	ldr     r0, [r4, r2]
	mov     r3, r1
	str     r0, [sp, #0x14]
	add     r0, r2, #0x4
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x18]
	mov     r0, r2
	add     r0, #0x8
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x1c]
	mov     r0, r2
	add     r0, #0xc
	ldr     r0, [r4, r0]
	add     r2, #0x40
	str     r0, [sp, #0x20]
	str     r1, [sp, #0x24]
	add     r0, r4, r2
	mov     r2, r1
	str     r1, [sp, #0x28]
	bl      Function_20093b4
	mov     r1, #0x1
	str     r1, [sp, #0x0]
	.hword  0x1e88 @ sub r0, r1, #0x2
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r3, [pc, #0x40] @ 0x223c3bc, (=0xd14)
	str     r0, [sp, #0x10]
	ldr     r2, [r4, r3]
	str     r2, [sp, #0x14]
	add     r2, r3, #0x4
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x18]
	mov     r2, r3
	add     r2, #0x8
	ldr     r2, [r4, r2]
	str     r2, [sp, #0x1c]
	mov     r2, r3
	add     r2, #0xc
	ldr     r2, [r4, r2]
	add     r3, #0x64
	str     r2, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, r4, r3
	mov     r2, r1
	mov     r3, r1
	bl      Function_20093b4
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x223c3bc

.word 0xd14 @ 0x223c3bc



.thumb
Function_223c3c0: @ 223c3c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x223c3f0, (=Unknown_22459f8)
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
	mov     r1, #0x3e
	str     r1, [sp, #0x0]
	mov     r1, r3
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_2002100
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c3f0

.word Unknown_22459f8 @ 0x223c3f0



.thumb
Function_223c3f4: @ 223c3f4 :thumb
	str     r1, [r0, #0x2c]
	str     r2, [r0, #0x30]
	bx      lr
@ 0x223c3fa


.align 2, 0
.thumb
Function_223c3fc: @ 223c3fc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r2
	cmp     r1, #0x0
	ble     branch_223c41a
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223c428
@ 0x223c41a

.thumb
branch_223c41a: @ 223c41a :thumb
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223c428: @ 223c428 :thumb
	blx     _ffix
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	ble     branch_223c444
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_223c452
@ 0x223c444

.thumb
branch_223c444: @ 223c444 :thumb
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_223c452: @ 223c452 :thumb
	blx     _ffix
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223c468

.thumb
Function_223c468: @ 223c468 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	blx     OS_DisableInterrupts
	mov     r6, r0
	ldr     r0, [pc, #0x14] @ 0x223c48c, (=0x2246c04)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	blx     Function_20a5448
	mov     r4, r0
	mov     r0, r6
	blx     OS_RestoreInterrupts
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223c48c

.word 0x2246c04 @ 0x223c48c
.thumb
Function_223c490: @ 223c490 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	beq     branch_223c4ac
	blx     OS_DisableInterrupts
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223c4b0, (=0x2246c04)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	blx     Function_20a55d8
	mov     r0, r4
	blx     OS_RestoreInterrupts
.thumb
branch_223c4ac: @ 223c4ac :thumb
	pop     {r3-r5,pc}
@ 0x223c4ae


.align 2


.word 0x2246c04 @ 0x223c4b0
.thumb
Function_223c4b4: @ 223c4b4 :thumb
	push    {r3,lr}
	blx     Function_4_21d7eac
	mov     r1, #0x3
	sub     r0, r1, r0
	pop     {r3,pc}
@ 0x223c4c0

.thumb
Function_223c4c0: @ 223c4c0 :thumb
	str     r1, [r0, #0x18]
	str     r2, [r0, #0x24]
	bx      lr
@ 0x223c4c6


.align 2, 0


.thumb
Function_223c4c8: @ 223c4c8 :thumb
	ldr     r1, [r0, #0x14]
	str     r1, [r0, #0x20]
	ldr     r1, [r0, #0x18]
	str     r1, [r0, #0x14]
	bx      lr
@ 0x223c4d2


.align 2, 0


.thumb
Function_223c4d4: @ 223c4d4 :thumb
	ldr     r0, [r0, #0x0]
	ldr     r3, [pc, #0x4] @ 0x223c4dc, (=Function_2027ac0+1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x223c4dc

.word Function_2027ac0+1 @ 0x223c4dc



.thumb
Function_223c4e0: @ 223c4e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c01c
	bl      Function_223c0a4
	mov     r0, r4
	bl      Function_223c0d4
	mov     r0, r4
	bl      Function_223c32c
	ldr     r0, [pc, #0x8] @ 0x223c504, (=0x223bfe5)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	pop     {r4,pc}
@ 0x223c502


.align 2


.word 0x223bfe5 @ 0x223c504
.thumb
Function_223c508: @ 223c508 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_22443b8
	ldr     r0, [pc, #0x4c] @ 0x223c560, (=0xd24)
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	ldr     r0, [pc, #0x48] @ 0x223c564, (=0xd34)
	ldr     r0, [r6, r0]
	bl      Function_200a4e4
	ldr     r0, [pc, #0x44] @ 0x223c568, (=0xd28)
	ldr     r0, [r6, r0]
	bl      Function_200a6dc
	ldr     r0, [pc, #0x40] @ 0x223c56c, (=0xd38)
	ldr     r0, [r6, r0]
	bl      Function_200a6dc
	ldr     r7, [pc, #0x3c] @ 0x223c570, (=0xd14)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223c536: @ 223c536 :thumb
	ldr     r0, [r5, r7]
	bl      Function_2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223c536
	ldr     r0, [pc, #0x2c] @ 0x223c574, (=0xbe8)
	ldr     r0, [r6, r0]
	bl      Function_2021964
	ldr     r0, [pc, #0x24] @ 0x223c574, (=0xbe8)
	mov     r1, #0x0
	str     r1, [r6, r0]
	bl      Function_200a878
	bl      Function_201e958
	bl      Function_201f8b4
	pop     {r3-r7,pc}
@ 0x223c560

.word 0xd24 @ 0x223c560
.word 0xd34 @ 0x223c564
.word 0xd28 @ 0x223c568
.word 0xd38 @ 0x223c56c
.word 0xd14 @ 0x223c570
.word 0xbe8 @ 0x223c574
.thumb
Function_223c578: @ 223c578 :thumb
	ldrh    r1, [r0, #0x3a]
	cmp     r1, #0x0
	beq     branch_223c582
	.hword  0x1e49 @ sub r1, r1, #0x1
	strh    r1, [r0, #0x3a]
.thumb
branch_223c582: @ 223c582 :thumb
	bx      lr
@ 0x223c584

.thumb
Function_223c584: @ 223c584 :thumb
	ldr     r1, [pc, #0xc] @ 0x223c594, (=0x10ae)
	mov     r2, #0x1
	strh    r2, [r0, r1]
	mov     r2, #0x0
	.hword  0x1e89 @ sub r1, r1, #0x2
	strh    r2, [r0, r1]
	bx      lr
@ 0x223c592


.align 2


.word 0x10ae @ 0x223c594
.thumb
Function_223c598: @ 223c598 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x223c5d0, (=0x10ae)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223c5cc
	ldr     r0, [r4, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	ldr     r0, [r0, #0xc]
	bl      Function_2079b54
	ldr     r1, [pc, #0x24] @ 0x223c5d4, (=0x10ac)
	ldrh    r2, [r4, r1]
	add     r0, r2, r0
	strh    r0, [r4, r1]
	add     r0, r1, #0x2
	ldrh    r0, [r4, r0]
	add     r2, r0, #0x1
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
	ldrh    r0, [r4, r0]
	cmp     r0, #0x13
	bne     branch_223c5cc
	mov     r2, #0x0
	add     r0, r1, #0x2
	strh    r2, [r4, r0]
.thumb
branch_223c5cc: @ 223c5cc :thumb
	pop     {r4,pc}
@ 0x223c5ce


.align 2


.word 0x10ae @ 0x223c5d0
.word 0x10ac @ 0x223c5d4
.thumb
Function_223c5d8: @ 223c5d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xc] @ 0x223c5ec, (=0xefc)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_200e7fc
	ldr     r1, [pc, #0x8] @ 0x223c5f0, (=0x107c)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223c5ec

.word 0xefc @ 0x223c5ec
.word 0x107c @ 0x223c5f0
.thumb
Function_223c5f4: @ 223c5f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223c60c, (=0x107c)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223c60a
	bl      Function_200eba0
	ldr     r0, [pc, #0x4] @ 0x223c60c, (=0x107c)
	mov     r1, #0x0
	str     r1, [r4, r0]
.thumb
branch_223c60a: @ 223c60a :thumb
	pop     {r4,pc}
@ 0x223c60c

.word 0x107c @ 0x223c60c
.thumb
Function_223c610: @ 223c610 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223cb0c
	ldr     r0, [r4, #0x4]
	bl      Function_223c720
	mov     r0, r4
	bl      Function_223c888
	mov     r0, r4
	bl      Function_223c9c0
	mov     r0, r4
	bl      Function_223c950
	mov     r0, r4
	bl      Function_2245934
	mov     r0, r4
	bl      Function_223cf3c
	ldr     r1, [pc, #0x8c] @ 0x223c6cc, (=0x449)
	mov     r0, #0x17
	mov     r2, #0x1
	bl      Function_2004550
	ldrh    r0, [r4, #0x34]
	cmp     r0, #0x0
	bne     branch_223c684
	mov     r0, r4
	bl      Function_223c85c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strh    r0, [r4, #0x34]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      GetGender
	mov     r1, r0
	mov     r0, r4
	bl      Function_2243fa8
	b       branch_223c6be
@ 0x223c684

.thumb
branch_223c684: @ 223c684 :thumb
	ldr     r0, [pc, #0x48] @ 0x223c6d0, (=0x10b0)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_223c6a4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	b       branch_223c6ba
@ 0x223c6a4

.thumb
branch_223c6a4: @ 223c6a4 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
.thumb
branch_223c6ba: @ 223c6ba :thumb
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
.thumb
branch_223c6be: @ 223c6be :thumb
	ldr     r0, [pc, #0x10] @ 0x223c6d0, (=0x10b0)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223c6ca


.align 2


.word 0x449 @ 0x223c6cc
.word 0x10b0 @ 0x223c6d0
.thumb
Function_223c6d4: @ 223c6d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      Function_20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223c6f0, (=0x22467c4)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x223c6ee


.align 2


.word 0x22467c4 @ 0x223c6f0
.thumb
Function_223c6f4: @ 223c6f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2039794
	mov     r0, r4
	bl      Function_223c9b0
	mov     r0, r4
	bl      Function_223cb34
	mov     r0, r4
	bl      Function_223cac8
	ldr     r0, [r4, #0x4]
	bl      Function_223c830
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223c71e


.align 2, 0


.thumb
Function_223c720: @ 223c720 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xf0] @ 0x223c818, (=0x2245a54)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xe0] @ 0x223c81c, (=0x2245ab4)
	add     r3, sp, #0x70
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xbc] @ 0x223c820, (=0x2245a98)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	ldr     r5, [pc, #0xa0] @ 0x223c824, (=0x2245ad0)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x84] @ 0x223c828, (=0x2245aec)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x60] @ 0x223c82c, (=0x2245a7c)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223c816


.align 2


.word 0x2245a54 @ 0x223c818
.word 0x2245ab4 @ 0x223c81c
.word 0x2245a98 @ 0x223c820
.word 0x2245ad0 @ 0x223c824
.word 0x2245aec @ 0x223c828
.word 0x2245a7c @ 0x223c82c
.thumb
Function_223c830: @ 223c830 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x223c85c

.thumb
Function_223c85c: @ 223c85c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	pop     {r4,pc}
@ 0x223c886


.align 2, 0


.thumb
Function_223c888: @ 223c888 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]

	mov     r0, #Worldtrade_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	mov     r3, r2
	mov     r4, r0
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, r5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1e
	mov     r2, r5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1d
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_200710c
	mov     r0, r6
	bl      Function_223d068
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223c94e


.align 2, 0


.thumb
Function_223c950: @ 223c950 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x4c] @ 0x223c9a4, (=0xd54)
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, r4
	add     r2, r4, r2
	mov     r3, #0x1
	bl      Function_223c300
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldrh    r1, [r4, r0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x38] @ 0x223c9a8, (=0x2245a48)
	ldrh    r1, [r1, r2]
	lsl     r1, r1, #12
	str     r1, [sp, #0x8]
	ldrh    r0, [r4, r0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x223c9ac, (=0x2245a4a)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021d6c
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223c9a4

.word 0xd54 @ 0x223c9a4
.word 0x2245a48 @ 0x223c9a8
.word 0x2245a4a @ 0x223c9ac
.thumb
Function_223c9b0: @ 223c9b0 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x223c9bc, (=Function_2021bd4+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223c9ba

.align 2
.word Function_2021bd4+1 @ 0x223c9bc



.thumb
Function_223c9c0: @ 223c9c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r7, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0xd4] @ 0x223cab0, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0xc8] @ 0x223cab0, (=0xf1c)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r0, [pc, #0xbc] @ 0x223cab4, (=0xf0400)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0xb0] @ 0x223cab0, (=0xf1c)
	ldr     r2, [pc, #0xb8] @ 0x223cab8, (=0xbb4)
	str     r3, [sp, #0xc]
	ldr     r2, [r7, r2]
	add     r0, r7, r0
	mov     r1, #0x1
	bl      Function_201d78c
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0xa8] @ 0x223cabc, (=0xf3c)
	mov     r6, #0x61
	mov     r4, #0x6
	add     r5, r7, r0
.thumb
branch_223ca18: @ 223ca18 :thumb
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xf
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	mov     r1, r5
	mov     r2, #0x1
	mov     r3, #0x9
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [sp, #0x14]
	add     r6, #0x1e
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d64 @ add r4, r4, #0x5
	add     r5, #0x10
	str     r0, [sp, #0x14]
	cmp     r0, #0x3
	blt     branch_223ca18
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	ldr     r1, [pc, #0x60] @ 0x223cac0, (=0xefc)
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0x48] @ 0x223cac0, (=0xefc)
	mov     r1, #0xf
	add     r0, r7, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x96
	ldr     r1, [pc, #0x30] @ 0x223cac4, (=0x103c)
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [pc, #0x20] @ 0x223cac4, (=0x103c)
	mov     r1, #0xf
	add     r0, r7, r0
	bl      Function_201ada4_ClearTextBox
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223caae


.align 2


.word 0xf1c @ 0x223cab0
.word 0xf0400 @ 0x223cab4
.word 0xbb4 @ 0x223cab8
.word 0xf3c @ 0x223cabc
.word 0xefc @ 0x223cac0
.word 0x103c @ 0x223cac4
.thumb
Function_223cac8: @ 223cac8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x2c] @ 0x223cafc, (=0x103c)
	add     r0, r6, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x28] @ 0x223cb00, (=0xefc)
	add     r0, r6, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x24] @ 0x223cb04, (=0xf3c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223cae2: @ 223cae2 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_223cae2
	ldr     r0, [pc, #0x14] @ 0x223cb08, (=0xf1c)
	add     r0, r6, r0
	bl      Function_201a8fc
	pop     {r4-r6,pc}
@ 0x223cafa


.align 2


.word 0x103c @ 0x223cafc
.word 0xefc @ 0x223cb00
.word 0xf3c @ 0x223cb04
.word 0xf1c @ 0x223cb08
.thumb
Function_223cb0c: @ 223cb0c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x27
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x4] @ 0x223cb30, (=0xbb4)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x223cb2e


.align 2


.word 0xbb4 @ 0x223cb30
.thumb
Function_223cb34: @ 223cb34 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x8] @ 0x223cb4c, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x223cb4c

.word 0xbb4 @ 0x223cb4c
.thumb
Function_223cb50: @ 223cb50 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x34] @ 0x223cb8c, (=0x1090)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223cb86
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xb
	bl      Function_223c4c0
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
.thumb
branch_223cb86: @ 223cb86 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cb8a


.align 2


.word 0x1090 @ 0x223cb8c
.thumb
Function_223cb90: @ 223cb90 :thumb
	push    {r3,lr}
	mov     r1, #0xa
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x223cb9e


.align 2, 0


.thumb
Function_223cba0: @ 223cba0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223cbc4

.thumb
Function_223cbc4: @ 223cbc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223cbd4
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
.thumb
branch_223cbd4: @ 223cbd4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cbd8

.thumb
Function_223cbd8: @ 223cbd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_223cbe8
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
.thumb
branch_223cbe8: @ 223cbe8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cbec

.thumb
Function_223cbec: @ 223cbec :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x30] @ 0x223cc24, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223cf80
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0x6
	bl      Function_223c3f4
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, r4
	bl      Function_223c584
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cc22


.align 2


.word 0xf0f @ 0x223cc24
.thumb
Function_223cc28: @ 223cc28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x18c] @ 0x223cdbc, (=RAM_21bf67c)
	mov     r2, #0x2
	ldr     r1, [r1, #0x48]
	mov     r4, r0
	tst     r2, r1
	beq     branch_223cc64
	bl      Function_223c4d4
	mov     r2, r0
	ldr     r0, [pc, #0x180] @ 0x223cdc0, (=0xf0f)
	mov     r1, #0x7
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_223cfd8
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0xc
	bl      Function_223c3f4
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cc8
	b       branch_223cdb4
@ 0x223cc64

.thumb
branch_223cc64: @ 223cc64 :thumb
	mov     r2, #0x1
	tst     r2, r1
	beq     branch_223cd36
	mov     r1, #0x11
	lsl     r1, r1, #4
	ldrh    r1, [r4, r1]
	cmp     r1, #0x0
	beq     branch_223cc7e
	cmp     r1, #0x1
	beq     branch_223ccf0
	cmp     r1, #0x2
	beq     branch_223cd04
	b       branch_223cdb4
@ 0x223cc7e

.thumb
branch_223cc7e: @ 223cc7e :thumb
	ldrh    r1, [r4, #0x36]
	cmp     r1, #0x0
	bne     branch_223cc98
	mov     r1, #0x5
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x130] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	b       branch_223cdb4
@ 0x223cc98

.thumb
branch_223cc98: @ 223cc98 :thumb
	ldrh    r1, [r4, #0x3a]
	cmp     r1, #0x0
	bne     branch_223ccba
	mov     r1, #0x7
	mov     r2, #0xb
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x1c]
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x118] @ 0x223cdc8, (=0x708)
	strh    r0, [r4, #0x3a]
	ldr     r0, [pc, #0x110] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	b       branch_223cdb4
@ 0x223ccba

.thumb
branch_223ccba: @ 223ccba :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [pc, #0xf8] @ 0x223cdc0, (=0xf0f)
	mov     r1, #0x22
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223cf80
	mov     r0, r4
	mov     r1, #0xb
	mov     r2, #0x5
	bl      Function_223c3f4
	ldr     r0, [pc, #0xe8] @ 0x223cdcc, (=0x5f3)
	bl      Function_2005748
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	b       branch_223cdb4
@ 0x223ccf0

.thumb
branch_223ccf0: @ 223ccf0 :thumb
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc4] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	b       branch_223cdb4
@ 0x223cd04

.thumb
branch_223cd04: @ 223cd04 :thumb
	bl      Function_223c4d4
	mov     r2, r0
	ldr     r0, [pc, #0xb4] @ 0x223cdc0, (=0xf0f)
	mov     r1, #0x7
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_223cfd8
	mov     r0, r4
	mov     r1, #0xa
	mov     r2, #0xc
	bl      Function_223c3f4
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021cc8
	ldr     r0, [pc, #0x94] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	b       branch_223cdb4
@ 0x223cd36

.thumb
branch_223cd36: @ 223cd36 :thumb
	mov     r2, #0x40
	mov     r0, r1
	tst     r0, r2
	beq     branch_223cd76
	mov     r0, r2
	add     r0, #0xd0
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223cdb4
	mov     r0, r2
	add     r0, #0xd0
	ldrh    r0, [r4, r0]
	add     r2, #0xd0
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r4, r2]
	ldr     r0, [pc, #0x6c] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldr     r1, [pc, #0x6c] @ 0x223cdd0, (=0x2245a48)
	ldr     r2, [pc, #0x70] @ 0x223cdd4, (=0x2245a4a)
	lsl     r3, r0, #2
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldrh    r1, [r1, r3]
	ldrh    r2, [r2, r3]
	ldr     r0, [r4, r0]
	bl      Function_223c3fc
	b       branch_223cdb4
@ 0x223cd76

.thumb
branch_223cd76: @ 223cd76 :thumb
	mov     r2, #0x80
	mov     r0, r1
	tst     r0, r2
	beq     branch_223cdb4
	mov     r0, r2
	add     r0, #0x90
	ldrh    r0, [r4, r0]
	cmp     r0, #0x2
	bcs     branch_223cdb4
	mov     r0, r2
	add     r0, #0x90
	ldrh    r0, [r4, r0]
	add     r2, #0x90
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, r2]
	ldr     r0, [pc, #0x2c] @ 0x223cdc4, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldr     r1, [pc, #0x2c] @ 0x223cdd0, (=0x2245a48)
	ldr     r2, [pc, #0x30] @ 0x223cdd4, (=0x2245a4a)
	lsl     r3, r0, #2
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldrh    r1, [r1, r3]
	ldrh    r2, [r2, r3]
	ldr     r0, [r4, r0]
	bl      Function_223c3fc
.thumb
branch_223cdb4: @ 223cdb4 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223cdba


.align 2


.word RAM_21bf67c @ 0x223cdbc
.word 0xf0f @ 0x223cdc0
.word 0x5dc @ 0x223cdc4
.word 0x708 @ 0x223cdc8
.word 0x5f3 @ 0x223cdcc
.word 0x2245a48 @ 0x223cdd0
.word 0x2245a4a @ 0x223cdd4
.thumb
Function_223cdd8: @ 223cdd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      GetGender
	mov     r1, r0
	mov     r0, r4
	bl      Function_22440b8
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x223cdfc, (=0x1090)
	mov     r1, #0x0
	strh    r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cdfa


.align 2


.word 0x1090 @ 0x223cdfc
.thumb
Function_223ce00: @ 223ce00 :thumb
	ldr     r1, [pc, #0xc] @ 0x223ce10, (=0x1090)
	ldrh    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_223ce0c
	mov     r1, #0x9
	str     r1, [r0, #0x2c]
.thumb
branch_223ce0c: @ 223ce0c :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223ce10

.word 0x1090 @ 0x223ce10
.thumb
Function_223ce14: @ 223ce14 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_223ce3a
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	b       branch_223ce52
@ 0x223ce3a

.thumb
branch_223ce3a: @ 223ce3a :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
.thumb
branch_223ce52: @ 223ce52 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223ce5c

.thumb
Function_223ce5c: @ 223ce5c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r4, #0x4]
	add     r2, #0xf5
	bl      Function_223c3c0
	ldr     r1, [pc, #0x8] @ 0x223ce78, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223ce78

.word 0x1070 @ 0x223ce78
.thumb
Function_223ce7c: @ 223ce7c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x223cee0, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223ceda
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	ldr     r0, [pc, #0x4c] @ 0x223cee4, (=0x103c)
	bne     branch_223cebc
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200e084
	ldr     r0, [pc, #0x40] @ 0x223cee4, (=0x103c)
	add     r0, r4, r0
	bl      Function_201acf4
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	b       branch_223ceda
@ 0x223cebc

.thumb
branch_223cebc: @ 223cebc :thumb
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200e084
	ldr     r0, [pc, #0x1c] @ 0x223cee4, (=0x103c)
	add     r0, r4, r0
	bl      Function_201acf4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x7
	str     r0, [r4, #0x2c]
.thumb
branch_223ceda: @ 223ceda :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cede


.align 2


.word 0x1070 @ 0x223cee0
.word 0x103c @ 0x223cee4
.thumb
Function_223cee8: @ 223cee8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223cf04, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223cf00
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223cf00: @ 223cf00 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cf04

.word 0xbe4 @ 0x223cf04
.thumb
Function_223cf08: @ 223cf08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223cf38, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223cf34
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x2d
	ble     branch_223cf34
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223cf34: @ 223cf34 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223cf38

.word 0xbe4 @ 0x223cf38
.thumb
Function_223cf3c: @ 223cf3c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldrh    r1, [r7, #0x36]
	mov     r0, #0xc
	ldr     r2, [pc, #0x28] @ 0x223cf70, (=0x2245a64)
	mul     r0, r1
	add     r4, r2, r0
	ldr     r0, [pc, #0x28] @ 0x223cf74, (=0xf3c)
	mov     r6, #0x0
	add     r5, r7, r0
.thumb
branch_223cf50: @ 223cf50 :thumb
	ldr     r1, [pc, #0x24] @ 0x223cf78, (=0xb94)
	ldr     r2, [r4, #0x0]
	ldr     r1, [r7, r1]
	ldr     r3, [pc, #0x24] @ 0x223cf7c, (=0xf0f)
	mov     r0, r5
	bl      Function_223d030
	mov     r0, r5
	bl      Function_201a954
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x3
	blt     branch_223cf50
	pop     {r3-r7,pc}
@ 0x223cf70

.word 0x2245a64 @ 0x223cf70
.word 0xf3c @ 0x223cf74
.word 0xb94 @ 0x223cf78
.word 0xf0f @ 0x223cf7c
.thumb
Function_223cf80: @ 223cf80 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [pc, #0x44] @ 0x223cfcc, (=0xb94)
	mov     r5, r0
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [pc, #0x38] @ 0x223cfd0, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x30] @ 0x223cfd0, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x18] @ 0x223cfd0, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0xc] @ 0x223cfd4, (=0xbe4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223cfcc

.word 0xb94 @ 0x223cfcc
.word 0xefc @ 0x223cfd0
.word 0xbe4 @ 0x223cfd4
.thumb
Function_223cfd8: @ 223cfd8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [pc, #0x44] @ 0x223d024, (=0xb94)
	mov     r5, r0
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [pc, #0x38] @ 0x223d028, (=0x103c)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x30] @ 0x223d028, (=0x103c)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x18] @ 0x223d028, (=0x103c)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0xc] @ 0x223d02c, (=0xbe4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223d024

.word 0xb94 @ 0x223d024
.word 0x103c @ 0x223d028
.word 0xbe4 @ 0x223d02c
.thumb
Function_223d030: @ 223d030 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r4, r3
	mov     r1, r2
	bl      Function_200b1ec_CallMsgDecrypt
	lsl     r1, r4, #24
	mov     r6, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223d068

.thumb
Function_223d068: @ 223d068 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [r0, #0x4]

	mov     r0, #0x2
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, #Worldtrade_Narc
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Call_LoadFromNARC_RLCN

	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2a
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, #0xf
	mov     r2, r4
	mov     r3, #0x5
	bl      LoadFromNARC_RGCN

	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, #0x1f
	mov     r2, r4
	mov     r3, #0x5
	bl      LoadFromNARC_RCSN
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223d0c4

.thumb
Function_223d0c4: @ 223d0c4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223d53c
	ldr     r0, [r4, #0x4]
	bl      Function_223d1d4
	mov     r0, r4
	bl      Function_223d2e8
	mov     r0, r4
	bl      Function_223d438
	mov     r0, r4
	bl      Function_223d3dc
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2076b10_Dummy
	str     r0, [sp, #0x0]
	mov     r0, #0x87
	lsl     r0, r0, #2
	ldr     r2, [pc, #0x90] @ 0x223d188, (=0xb94)
	add     r0, r4, r0
	str     r0, [sp, #0x4]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r3, [pc, #0x88] @ 0x223d18c, (=0xf6c)
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r4, r3
	bl      Function_223d910
	ldr     r1, [pc, #0x80] @ 0x223d190, (=0x100c)
	mov     r2, #0x8f
	add     r0, r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x223d188, (=0xb94)
	mov     r3, #0x13
	sub     r1, #0x50
	lsl     r2, r2, #2
	lsl     r3, r3, #4
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	add     r2, r4, r2
	add     r3, r4, r3
	bl      Function_223da78
	ldr     r1, [pc, #0x64] @ 0x223d194, (=0x223)
	mov     r2, #0x0
	ldsb    r0, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r4, r1]
	bl      Function_2242970
	mov     r1, #0x22
	lsl     r1, r1, #4
	ldsh    r2, [r4, r1]
	ldr     r3, [pc, #0x54] @ 0x223d198, (=0xfdc)
	.hword  0x1c89 @ add r1, r1, #0x2
	str     r2, [sp, #0x0]
	ldsb    r1, [r4, r1]
	ldr     r2, [pc, #0x3c] @ 0x223d188, (=0xb94)
	add     r3, r4, r3
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	bl      Function_2242368
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223db2c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223d188

.word 0xb94 @ 0x223d188
.word 0xf6c @ 0x223d18c
.word 0x100c @ 0x223d190
.word 0x223 @ 0x223d194
.word 0xfdc @ 0x223d198
.thumb
Function_223d19c: @ 223d19c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223d1ac, (=0x2246808)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x223d1aa


.align 2


.word 0x2246808 @ 0x223d1ac
.thumb
Function_223d1b0: @ 223d1b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223d428
	mov     r0, r4
	bl      Function_223d57c
	mov     r0, r4
	bl      Function_223d504
	ldr     r0, [r4, #0x4]
	bl      Function_223d2bc
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d1d4

.thumb
Function_223d1d4: @ 223d1d4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x8c
	ldr     r5, [pc, #0xcc] @ 0x223d2a8, (=0x2245b78)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x70
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xa8] @ 0x223d2ac, (=0x2245b5c)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x8c] @ 0x223d2b0, (=0x2245b40)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x70] @ 0x223d2b4, (=0x2245b24)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x4c] @ 0x223d2b8, (=0x2245b08)
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
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x223d2a6


.align 2


.word 0x2245b78 @ 0x223d2a8
.word 0x2245b5c @ 0x223d2ac
.word 0x2245b40 @ 0x223d2b0
.word 0x2245b24 @ 0x223d2b4
.word 0x2245b08 @ 0x223d2b8
.thumb
Function_223d2bc: @ 223d2bc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x223d2e8


.thumb
Function_223d2e8: @ 223d2e8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]

	mov     r0, #Worldtrade_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x7
	mov     r3, r2
	mov     r4, r0
	bl      Function_2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, r5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x19
	mov     r2, r5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x2a
	lsl     r0, r0, #10
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xf
	mov     r2, r5
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1f
	mov     r2, r5
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223d3dc

.thumb
Function_223d3dc: @ 223d3dc :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x40] @ 0x223d424, (=0xd54)
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, r4
	add     r2, r4, r2
	mov     r3, #0x1
	bl      Function_223c300
	mov     r0, #0xd
	lsl     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0xed
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0xed
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      Function_2021d6c
	bl      Function_2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223d424

.word 0xd54 @ 0x223d424
.thumb
Function_223d428: @ 223d428 :thumb
	mov     r1, #0xed
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x223d434, (=Function_2021bd4+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223d432


.align 2


.word Function_2021bd4+1 @ 0x223d434
.thumb
Function_223d438: @ 223d438 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x14]
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x9c] @ 0x223d4f4, (=0xefc)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r1, [pc, #0x90] @ 0x223d4f4, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x5e
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x70] @ 0x223d4f8, (=0xf3c)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r1, [pc, #0x64] @ 0x223d4fc, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x64] @ 0x223d500, (=0x2245b94)
	mov     r6, #0x86
	mov     r7, #0x0
	add     r5, r0, r1
.thumb
branch_223d4a0: @ 223d4a0 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r3, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	mul     r0, r1
	add     r6, r6, r0
	add     r4, #0x10
	add     r5, #0x10
	cmp     r7, #0xc
	blt     branch_223d4a0
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223d4f2


.align 2


.word 0xefc @ 0x223d4f4
.word 0xf3c @ 0x223d4f8
.word 0xf6c @ 0x223d4fc
.word 0x2245b94 @ 0x223d500
.thumb
Function_223d504: @ 223d504 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x223d530, (=0xefc)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x20] @ 0x223d534, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x1c] @ 0x223d538, (=0xf6c)
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_223d51e: @ 223d51e :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xc
	blt     branch_223d51e
	pop     {r3-r5,pc}
@ 0x223d52e


.align 2


.word 0xefc @ 0x223d530
.word 0xf3c @ 0x223d534
.word 0xf6c @ 0x223d538
.thumb
Function_223d53c: @ 223d53c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	mov     r1, #0x27
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x1c] @ 0x223d578, (=0xbb4)
	mov     r4, #0x0
	str     r0, [r5, r1]
	mov     r7, #0x14
	add     r6, r1, #0x4
.thumb
branch_223d562: @ 223d562 :thumb
	mov     r0, r7
	mov     r1, #0x3e
	bl      Function_2023790
	str     r0, [r5, r6]
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa
	blt     branch_223d562
	pop     {r3-r7,pc}
@ 0x223d576


.align 2


.word 0xbb4 @ 0x223d578
.thumb
Function_223d57c: @ 223d57c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	ldr     r6, [pc, #0x24] @ 0x223d5a8, (=0xbb8)
	mov     r4, #0x0
	mov     r5, r7
.thumb
branch_223d586: @ 223d586 :thumb
	ldr     r0, [r5, r6]
	bl      Function_20237bc_FreeMsg
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa
	blt     branch_223d586
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xc] @ 0x223d5ac, (=0xbb4)
	ldr     r0, [r7, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r3-r7,pc}
@ 0x223d5a8

.word 0xbb8 @ 0x223d5a8
.word 0xbb4 @ 0x223d5ac
.thumb
Function_223d5b0: @ 223d5b0 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x2c]
	mov     r0, #0x3
	bx      lr
@ 0x223d5b8

.thumb
Function_223d5b8: @ 223d5b8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x4c] @ 0x223d60c, (=RAM_21bf67c)
	mov     r2, #0x1
	ldr     r3, [r1, #0x48]
	mov     r4, r0
	mov     r1, r3
	tst     r1, r2
	beq     branch_223d5f0
	ldr     r1, [pc, #0x44] @ 0x223d610, (=0xf0f)
	mov     r3, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x13
	lsl     r1, r1, #4
	add     r1, r4, r1
	str     r1, [sp, #0x4]
	mov     r1, #0x5
	bl      Function_223d88c
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x7
	bl      Function_223c3f4
	ldr     r0, [pc, #0x28] @ 0x223d614, (=0x5dc)
	bl      Function_2005748
	b       branch_223d606
@ 0x223d5f0

.thumb
branch_223d5f0: @ 223d5f0 :thumb
	mov     r1, #0x2
	tst     r3, r1
	beq     branch_223d606
	str     r1, [r4, #0x2c]
	mov     r1, r2
	mov     r2, #0x0
	bl      Function_223c4c0
	ldr     r0, [pc, #0x10] @ 0x223d614, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223d606: @ 223d606 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223d60c

.word RAM_21bf67c @ 0x223d60c
.word 0xf0f @ 0x223d610
.word 0x5dc @ 0x223d614
.thumb
Function_223d618: @ 223d618 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x6
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223d640

.thumb
Function_223d640: @ 223d640 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x223d65c, (=0x15a)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x223d660, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d65a


.align 2


.word 0x15a @ 0x223d65c
.word 0x1070 @ 0x223d660
.thumb
Function_223d664: @ 223d664 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x223d6ac, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d6a8
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223d68e
	ldr     r0, [pc, #0x2c] @ 0x223d6b0, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	str     r1, [r4, #0x2c]
	bl      Function_200e084
	b       branch_223d6a2
@ 0x223d68e

.thumb
branch_223d68e: @ 223d68e :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x20] @ 0x223d6b4, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x8
	bl      Function_223c4c0
.thumb
branch_223d6a2: @ 223d6a2 :thumb
	mov     r0, r4
	bl      Function_223dbbc
.thumb
branch_223d6a8: @ 223d6a8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d6ac

.word 0x1070 @ 0x223d6ac
.word 0xefc @ 0x223d6b0
.word 0x10b0 @ 0x223d6b4
.thumb
Function_223d6b8: @ 223d6b8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x0
	add     r2, sp, #0x8
	strb    r0, [r2, #0x8]
	mov     r0, #0x1
	strb    r0, [r2, #0x9]
	mov     r0, #0x2
	strb    r0, [r2, #0xa]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xf
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0x30
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xc0
	bic     r3, r1
	mov     r1, #0x3e
	strb    r3, [r2, #0xb]
	bl      Function_2013a04
	ldr     r1, [pc, #0x58] @ 0x223d744, (=0x106c)
	mov     r2, #0x36
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x54] @ 0x223d748, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2013a4c
	ldr     r0, [pc, #0x44] @ 0x223d744, (=0x106c)
	ldr     r1, [pc, #0x48] @ 0x223d748, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x37
	mov     r3, #0x2
	bl      Function_2013a4c
	ldr     r0, [pc, #0x34] @ 0x223d744, (=0x106c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, #0x1f
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x34] @ 0x223d74c, (=0xf3c)
	mov     r3, #0xb
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      Function_200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      Function_2001b7c
	ldr     r1, [pc, #0x18] @ 0x223d750, (=0x1074)
	str     r0, [r4, r1]
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223d744

.word 0x106c @ 0x223d744
.word 0xb94 @ 0x223d748
.word 0xf3c @ 0x223d74c
.word 0x1074 @ 0x223d750
.thumb
Function_223d754: @ 223d754 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0xcc] @ 0x223d828, (=0x1074)
	ldr     r0, [r5, r0]
	bl      Function_2001be0
	cmp     r0, #0x1
	beq     branch_223d774
	cmp     r0, #0x2
	beq     branch_223d7f2
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223d7f2
	b       branch_223d822
@ 0x223d774

.thumb
branch_223d774: @ 223d774 :thumb
	ldr     r0, [pc, #0xb0] @ 0x223d828, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0xac] @ 0x223d82c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0xa8] @ 0x223d830, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r4, r5, r0
	mov     r0, r4
	bl      Function_2241498
	cmp     r0, #0x0
	beq     branch_223d7ce
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_223d7ce
	ldr     r0, [pc, #0x84] @ 0x223d834, (=0xf0f)
	mov     r1, #0x24
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_223d88c
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x1
	bl      Function_223c3f4
	add     sp, #0x8
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223d7ce

.thumb
branch_223d7ce: @ 223d7ce :thumb
	ldr     r0, [pc, #0x64] @ 0x223d834, (=0xf0f)
	mov     r1, #0x6
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r2, #0x1
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_223d88c
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x5
	bl      Function_223c3f4
	mov     r0, r5
	bl      Function_223dbbc
	b       branch_223d822
@ 0x223d7f2

.thumb
branch_223d7f2: @ 223d7f2 :thumb
	ldr     r0, [pc, #0x34] @ 0x223d828, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x2c] @ 0x223d82c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x28] @ 0x223d830, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r5
	bl      Function_223dbbc
.thumb
branch_223d822: @ 223d822 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223d828

.word 0x1074 @ 0x223d828
.word 0x106c @ 0x223d82c
.word 0xf3c @ 0x223d830
.word 0xf0f @ 0x223d834
.thumb
Function_223d838: @ 223d838 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223d854, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223d850
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223d850: @ 223d850 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d854

.word 0xbe4 @ 0x223d854
.thumb
Function_223d858: @ 223d858 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223d888, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223d884
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x2d
	ble     branch_223d884
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223d884: @ 223d884 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223d888

.word 0xbe4 @ 0x223d888
.thumb
Function_223d88c: @ 223d88c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [sp, #0x24]
	mov     r6, r1
	mov     r4, r2
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200b538
	ldr     r0, [pc, #0x58] @ 0x223d904, (=0xb94)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_200c388
	ldr     r0, [pc, #0x40] @ 0x223d908, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x34] @ 0x223d908, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x20] @ 0x223d908, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0x14] @ 0x223d90c, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223d904

.word 0xb94 @ 0x223d904
.word 0xefc @ 0x223d908
.word 0xbe4 @ 0x223d90c
.thumb
Function_223d910: @ 223d910 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r0
	str     r1, [sp, #0x8]
	mov     r0, #0x16
	mov     r1, #0x3e
	mov     r7, r2
	mov     r6, r3
	ldr     r4, [sp, #0x4c]
	bl      Function_2023790
	str     r0, [sp, #0x1c]
	mov     r0, #0x12
	mov     r1, #0x3e
	bl      Function_2023790
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x48]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x77
	bl      GetBoxPkmnData
	mov     r2, #0x0
	ldsh    r0, [r4, r2]
	mov     r1, #0x6
	str     r0, [sp, #0x10]
	mov     r0, #0x2
	ldsb    r0, [r4, r0]
	str     r0, [sp, #0x14]
	mov     r0, #0x3
	ldsb    r4, [r4, r0]
	ldr     r0, [sp, #0x48]
	bl      GetBoxPkmnData
	str     r0, [sp, #0x30]
	mov     r0, r5
	mov     r1, #0x46
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x108] @ 0x223da6c, (=0x2245fd8)
	lsl     r0, r0, #2
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r1, [r2, r1]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	mov     r3, r1
	bl      Function_200b60c
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x66
	mov     r3, #0x3e
	bl      Function_200b29c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x2c]
	lsl     r1, r1, #16
	ldr     r0, [sp, #0x18]
	lsr     r1, r1, #16
	mov     r2, #0x3e
	bl      Function_207cfa0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_223d9b4: @ 223d9b4 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_223d9b4
	mov     r2, #0x0
	ldr     r0, [pc, #0xa8] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x1c]
	mov     r0, r6
	mov     r3, r2
	bl      Function_2245900
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x3
	beq     branch_223d9f2
	mov     r3, #0x0
	ldr     r1, [pc, #0x94] @ 0x223da74, (=0x22467fc)
	ldr     r0, [sp, #0xc]
	str     r3, [sp, #0x0]
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x28]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x46
	bl      Function_2245900
.thumb
branch_223d9f2: @ 223d9f2 :thumb
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x2c]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x64] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x24]
	add     r0, #0x20
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x50] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x20]
	add     r0, #0x30
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	add     r6, #0x40
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	mov     r0, r6
	mov     r3, r2
	bl      Function_2245900
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x24]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x28]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x2c]
	bl      Function_20237bc_FreeMsg
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223da6a


.align 2


.word 0x2245fd8 @ 0x223da6c
.word 0xf0200 @ 0x223da70
.word 0x22467fc @ 0x223da74
.thumb
Function_223da78: @ 223da78 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x10
	mov     r1, #0x3e
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	bl      Function_2023790
	mov     r4, r0
	mov     r0, #0x10
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x30
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_2023d28
	mov     r0, r7
	mov     r1, #0xac
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r7, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x91
	mov     r2, r6
	bl      GetPkmnData
	mov     r2, #0x0
	ldr     r0, [pc, #0x64] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x54] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x40] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r7
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x2c] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	add     r0, #0x10
	mov     r3, r2
	bl      Function_2245900
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223db26


.align 2


.word 0xf0200 @ 0x223db28
.thumb
Function_223db2c: @ 223db2c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x30
	mov     r1, #0x32
	mov     r5, r0
	mov     r0, #0x3e
	lsl     r1, r1, #6
	bl      malloc
	mov     r4, r0
	add     r0, sp, #0x20
	mov     r1, r5
	mov     r2, #0x2
	bl      LoadPkmnDataForPlatGraphic
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      GetPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r1, #0xa
	str     r1, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r4, [sp, #0xc]
	str     r6, [sp, #0x10]
	str     r3, [sp, #0x14]
	mov     r1, #0x2
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x1c]
	add     r1, sp, #0x20
	ldrh    r0, [r1, #0x0]
	ldrh    r1, [r1, #0x2]
	mov     r2, #0x3e
	bl      Function_20136a4
	mov     r1, #0x32
	mov     r0, r4
	lsl     r1, r1, #6
	blx     DC_FlushRange
	mov     r1, #0x4a
	mov     r2, #0x32
	mov     r0, r4
	lsl     r1, r1, #8
	lsl     r2, r2, #6
	blx     GX_LoadOBJ

	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	mov     r3, #0x1a
	str     r0, [sp, #0x4]
	add     r1, sp, #0x20
	ldrh    r0, [r1, #0x0]
	ldrh    r1, [r1, #0x4]
	mov     r2, #0x1
	lsl     r3, r3, #4
	bl      Call_LoadFromNARC_RLCN

	mov     r0, r4
	bl      free

	add     sp, #0x30
	pop     {r4-r6,pc}
@ 0x223dbba


.align 2, 0
.thumb
Function_223dbbc: @ 223dbbc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x34] @ 0x223dbf8, (=0x223)
	mov     r4, r0
	ldsb    r0, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_2242970
	mov     r1, #0x22
	lsl     r1, r1, #4
	ldsh    r2, [r4, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	ldr     r3, [pc, #0x20] @ 0x223dbfc, (=0xfdc)
	str     r2, [sp, #0x0]
	ldsb    r1, [r4, r1]
	ldr     r2, [pc, #0x20] @ 0x223dc00, (=0xb94)
	add     r3, r4, r3
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	bl      Function_2242368
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223dbf8

.word 0x223 @ 0x223dbf8
.word 0xfdc @ 0x223dbfc
.word 0xb94 @ 0x223dc00
.thumb
Function_223dc04: @ 223dc04 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223dfdc
	ldr     r0, [r4, #0x4]
	bl      Function_223dd1c
	mov     r0, r4
	bl      Function_223de04
	mov     r0, r4
	bl      Function_223ded8
	mov     r0, r4
	bl      Function_223de7c
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r5, r1
	mul     r5, r0
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r0, r4, r0
	add     r0, r0, r5
	bl      Function_2076b10_Dummy
	str     r0, [sp, #0x0]
	mov     r0, #0xd
	lsl     r0, r0, #6
	add     r0, r4, r0
	ldr     r2, [pc, #0x8c] @ 0x223dcd4, (=0xb94)
	add     r0, r0, r5
	str     r0, [sp, #0x4]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r3, [pc, #0x84] @ 0x223dcd8, (=0xf6c)
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r4, r3
	bl      Function_223d910
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	mov     r2, #0x36
	mov     r3, r1
	.hword  0x1d00 @ add r0, r0, #0x4
	mov     r5, #0x95
	lsl     r2, r2, #4
	lsl     r5, r5, #2
	ldr     r1, [pc, #0x68] @ 0x223dcdc, (=0x100c)
	mul     r3, r0
	add     r0, r4, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x58] @ 0x223dcd4, (=0xb94)
	sub     r1, #0x50
	add     r2, r4, r2
	ldr     r0, [r4, r0]
	add     r5, r4, r5
	add     r2, r2, r3
	add     r1, r4, r1
	add     r3, r5, r3
	bl      Function_223da78
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_223db2c
	ldr     r0, [pc, #0x30] @ 0x223dcd4, (=0xb94)
	ldr     r1, [pc, #0x38] @ 0x223dce0, (=0xfdc)
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_223e358
	mov     r0, r4
	bl      Function_223e240
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223dcd4

.word 0xb94 @ 0x223dcd4
.word 0xf6c @ 0x223dcd8
.word 0x100c @ 0x223dcdc
.word 0xfdc @ 0x223dce0
.thumb
Function_223dce4: @ 223dce4 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223dcf4, (=0x224682c)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x223dcf2


.align 2


.word 0x224682c @ 0x223dcf4
.thumb
Function_223dcf8: @ 223dcf8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223dec8
	mov     r0, r4
	bl      Function_223e074
	mov     r0, r4
	bl      Function_223dfa4
	ldr     r0, [r4, #0x4]
	bl      Function_223dde0
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223dd1c

.thumb
Function_223dd1c: @ 223dd1c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xac] @ 0x223ddd0, (=0x2245ca8)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0x88] @ 0x223ddd4, (=0x2245c8c)
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x6c] @ 0x223ddd8, (=0x2245c70)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x48] @ 0x223dddc, (=0x2245c54)
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
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x223ddce


.align 2


.word 0x2245ca8 @ 0x223ddd0
.word 0x2245c8c @ 0x223ddd4
.word 0x2245c70 @ 0x223ddd8
.word 0x2245c54 @ 0x223dddc
.thumb
Function_223dde0: @ 223dde0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x223de04

.thumb
Function_223de04: @ 223de04 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r1, #0x1a
	mov     r5, r0
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	ldr     r4, [r5, #0x4]
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, #0x11
	mov     r2, r4
	bl      LoadFromNARC_RGCN

	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #Worldtrade_Narc
	mov     r1, #0x7
	mov     r3, r2
	bl      Call_LoadFromNARC_RLCN

	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223de7c


.thumb
Function_223de7c: @ 223de7c :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x40] @ 0x223dec4, (=0xd54)
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, r4
	add     r2, r4, r2
	mov     r3, #0x1
	bl      Function_223c300
	mov     r0, #0xd
	lsl     r0, r0, #16
	str     r0, [sp, #0x8]
	mov     r0, #0x3a
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0xed
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0xed
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      Function_2021d6c
	bl      Function_2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223dec4

.word 0xd54 @ 0x223dec4
.thumb
Function_223dec8: @ 223dec8 :thumb
	mov     r1, #0xed
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x223ded4, (=Function_2021bd4+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223ded2


.align 2


.word Function_2021bd4+1 @ 0x223ded4
.thumb
Function_223ded8: @ 223ded8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r0, [sp, #0x14]
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x9c] @ 0x223df94, (=0xefc)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r1, [pc, #0x90] @ 0x223df94, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0xf
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x5e
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x70] @ 0x223df98, (=0xf3c)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r1, [pc, #0x64] @ 0x223df9c, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x64] @ 0x223dfa0, (=0x2245cc4)
	mov     r6, #0x86
	mov     r7, #0x0
	add     r5, r0, r1
.thumb
branch_223df40: @ 223df40 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, r5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r2, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0xc]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r3, [r4, #0x0]
	ldr     r0, [r0, #0x4]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r1, [r4, #0x8]
	ldr     r0, [r4, #0xc]
	.hword  0x1c7f @ add r7, r7, #0x1
	mul     r0, r1
	add     r6, r6, r0
	add     r4, #0x10
	add     r5, #0x10
	cmp     r7, #0xc
	bcc     branch_223df40
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223df92


.align 2


.word 0xefc @ 0x223df94
.word 0xf3c @ 0x223df98
.word 0xf6c @ 0x223df9c
.word 0x2245cc4 @ 0x223dfa0
.thumb
Function_223dfa4: @ 223dfa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x223dfd0, (=0xefc)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x20] @ 0x223dfd4, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x1c] @ 0x223dfd8, (=0xf6c)
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_223dfbe: @ 223dfbe :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xc
	bcc     branch_223dfbe
	pop     {r3-r5,pc}
@ 0x223dfce


.align 2


.word 0xefc @ 0x223dfd0
.word 0xf3c @ 0x223dfd4
.word 0xf6c @ 0x223dfd8
.thumb
Function_223dfdc: @ 223dfdc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r5, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r4, r2, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0x20
	ldr     r0, [r5, r1]
	bl      Function_200c41c
	ldr     r0, [pc, #0x58] @ 0x223e064, (=0x11e)
	ldrb    r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_223e01c
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      Function_200bdd0
.thumb
branch_223e01c: @ 223e01c :thumb
	ldr     r2, [pc, #0x48] @ 0x223e068, (=0x11f)
	ldrb    r3, [r4, r2]
	cmp     r3, #0x0
	beq     branch_223e034
	mov     r0, #0xb9
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r0, r0, #4
	ldrb    r2, [r4, r2]
	ldr     r0, [r5, r0]
	mov     r1, #0x9
	bl      Function_200be08
.thumb
branch_223e034: @ 223e034 :thumb
	mov     r1, #0xb9
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x4f
	mov     r3, #0x3e
	bl      Function_200b29c
	ldr     r1, [pc, #0x24] @ 0x223e06c, (=0xbb8)
	mov     r2, #0x50
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x28
	sub     r1, #0x24
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r3, #0x3e
	bl      Function_200b29c
	ldr     r1, [pc, #0x10] @ 0x223e070, (=0xbbc)
	str     r0, [r5, r1]
	pop     {r3-r5,pc}
@ 0x223e062


.align 2


.word 0x11e @ 0x223e064
.word 0x11f @ 0x223e068
.word 0xbb8 @ 0x223e06c
.word 0xbbc @ 0x223e070
.thumb
Function_223e074: @ 223e074 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x223e094, (=0xbb8)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x14] @ 0x223e098, (=0xbbc)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x223e094

.word 0xbb8 @ 0x223e094
.word 0xbbc @ 0x223e098
.thumb
Function_223e09c: @ 223e09c :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x2c]
	mov     r0, #0x3
	bx      lr
@ 0x223e0a4

.thumb
Function_223e0a4: @ 223e0a4 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0xcc] @ 0x223e174, (=RAM_21bf67c)
	mov     r2, #0x1
	ldr     r1, [r1, #0x48]
	mov     r4, r0
	mov     r3, r1
	tst     r3, r2
	beq     branch_223e0d2
	ldr     r1, [pc, #0xc0] @ 0x223e178, (=0xf0f)
	mov     r3, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x10
	bl      Function_223e300
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_223c3f4
	ldr     r0, [pc, #0xb0] @ 0x223e17c, (=0x5dc)
	bl      Function_2005748
	b       branch_223e170
@ 0x223e0d2

.thumb
branch_223e0d2: @ 223e0d2 :thumb
	mov     r3, #0x2
	mov     r5, r1
	tst     r5, r3
	beq     branch_223e0ec
	mov     r1, #0x4
	mov     r2, #0x0
	str     r3, [r4, #0x2c]
	bl      Function_223c4c0
	ldr     r0, [pc, #0x94] @ 0x223e17c, (=0x5dc)
	bl      Function_2005748
	b       branch_223e170
@ 0x223e0ec

.thumb
branch_223e0ec: @ 223e0ec :thumb
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_223e108
	ldr     r0, [pc, #0x8c] @ 0x223e180, (=0x112)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_223e170
	strh    r2, [r4, r0]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x78] @ 0x223e17c, (=0x5dc)
	bl      Function_2005748
	b       branch_223e170
@ 0x223e108

.thumb
branch_223e108: @ 223e108 :thumb
	mov     r2, #0x20
	mov     r0, r1
	tst     r0, r2
	beq     branch_223e12c
	mov     r0, r2
	add     r0, #0xf2
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223e170
	mov     r0, #0x0
	add     r2, #0xf2
	strh    r0, [r4, r2]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x54] @ 0x223e17c, (=0x5dc)
	bl      Function_2005748
	b       branch_223e170
@ 0x223e12c

.thumb
branch_223e12c: @ 223e12c :thumb
	add     r2, #0xfc
	ldr     r0, [r4, r2]
	bl      Function_2244214
	mov     r5, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	cmp     r5, r0
	beq     branch_223e170
	cmp     r5, #0x0
	blt     branch_223e170
	add     r0, r5, #0x1
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x38] @ 0x223e184, (=0xed4)
	ldr     r0, [r1, r0]
	lsl     r1, r5, #2
	add     r1, #0x10
	bl      Function_2021d6c
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r5, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x223e17c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223e170: @ 223e170 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223e174

.word RAM_21bf67c @ 0x223e174
.word 0xf0f @ 0x223e178
.word 0x5dc @ 0x223e17c
.word 0x112 @ 0x223e180
.word 0xed4 @ 0x223e184
.thumb
Function_223e188: @ 223e188 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x6
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223e1b0

.thumb
Function_223e1b0: @ 223e1b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r2, #0x1f
	ldr     r0, [r4, #0x4]
	mov     r1, #0xf
	lsl     r2, r2, #4
	bl      Function_223c3c0
	ldr     r1, [pc, #0x8] @ 0x223e1cc, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223e1cc

.word 0x1070 @ 0x223e1cc
.thumb
Function_223e1d0: @ 223e1d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x5c] @ 0x223e234, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223e22e
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223e20e
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x0
	bl      Function_223c4c0
	ldr     r0, [pc, #0x3c] @ 0x223e238, (=0xb94)
	ldr     r1, [pc, #0x3c] @ 0x223e23c, (=0xfdc)
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_223e358
	mov     r0, r4
	bl      Function_223e240
	b       branch_223e22e
@ 0x223e20e

.thumb
branch_223e20e: @ 223e20e :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x6
	bl      Function_223c4c0
	ldr     r0, [pc, #0x18] @ 0x223e238, (=0xb94)
	ldr     r1, [pc, #0x1c] @ 0x223e23c, (=0xfdc)
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_223e358
	mov     r0, r4
	bl      Function_223e240
.thumb
branch_223e22e: @ 223e22e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223e232


.align 2


.word 0x1070 @ 0x223e234
.word 0xb94 @ 0x223e238
.word 0xfdc @ 0x223e23c
.thumb
Function_223e240: @ 223e240 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [pc, #0x78] @ 0x223e2c0, (=0x112)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_223e290
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x68
	mov     r1, #0x1b
	bl      LoadFromNARC_RCSN
	ldr     r2, [pc, #0x58] @ 0x223e2c4, (=0xb94)
	mov     r5, #0x12
	ldr     r0, [pc, #0x58] @ 0x223e2c8, (=0xffc)
	mov     r3, #0xd1
	lsl     r5, r5, #4
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r3, r3, #2
	ldr     r6, [r4, r5]
	add     r0, r4, r0
	ldr     r2, [r4, r2]
	add     r3, r4, r3
	add     r4, r5, #0x4
	mul     r4, r6
	add     r3, r3, r4
	bl      Function_223e3b0
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e290

.thumb
branch_223e290: @ 223e290 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r2, [r4, #0x4]
	mov     r0, #0x68
	mov     r1, #0x1c
	bl      LoadFromNARC_RCSN
	ldr     r2, [pc, #0x1c] @ 0x223e2cc, (=0xbb8)
	ldr     r0, [pc, #0x18] @ 0x223e2c8, (=0xffc)
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_223e424
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e2c0

.word 0x112 @ 0x223e2c0
.word 0xb94 @ 0x223e2c4
.word 0xffc @ 0x223e2c8
.word 0xbb8 @ 0x223e2cc
.thumb
Function_223e2d0: @ 223e2d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223e240
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223e2e0

.thumb
Function_223e2e0: @ 223e2e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223e2fc, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223e2f8
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223e2f8: @ 223e2f8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223e2fc

.word 0xbe4 @ 0x223e2fc
.thumb
Function_223e300: @ 223e300 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [pc, #0x44] @ 0x223e34c, (=0xb94)
	mov     r5, r0
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [pc, #0x38] @ 0x223e350, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x30] @ 0x223e350, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x18] @ 0x223e350, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0xc] @ 0x223e354, (=0xbe4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223e34c

.word 0xb94 @ 0x223e34c
.word 0xefc @ 0x223e350
.word 0xbe4 @ 0x223e354
.thumb
Function_223e358: @ 223e358 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r6, r0
	mov     r1, #0x4a
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x4e
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0x34] @ 0x223e3ac, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x2
	bl      Function_2245900
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223e3ac, (=0xf0200)
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_2245900
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223e3aa


.align 2


.word 0xf0200 @ 0x223e3ac
.thumb
Function_223e3b0: @ 223e3b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r1
	mov     r1, #0x0
	mov     r5, r0
	mov     r7, r2
	mov     r4, r3
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x58] @ 0x223e420, (=0xf0200)
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r3]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2242158
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x40] @ 0x223e420, (=0xf0200)
	mov     r2, #0x2
	str     r0, [sp, #0x8]
	ldsb    r2, [r4, r2]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2242204
	mov     r0, #0x3
	mov     r1, #0x4
	ldsb    r0, [r4, r0]
	ldsb    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_2242970
	mov     r2, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x18] @ 0x223e420, (=0xf0200)
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x8
	add     r5, #0x10
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_224226c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223e41e


.align 2


.word 0xf0200 @ 0x223e420
.thumb
Function_223e424: @ 223e424 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	mov     r6, r0
	mov     r4, r2
	bl      Function_201ada4_ClearTextBox
	cmp     r5, #0x0
	beq     branch_223e44a
	mov     r2, #0x0
	ldr     r0, [pc, #0x2c] @ 0x223e468, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x3
	bl      Function_2245900
.thumb
branch_223e44a: @ 223e44a :thumb
	cmp     r4, #0x0
	beq     branch_223e462
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223e468, (=0xf0200)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x8
	mov     r3, #0x13
	bl      Function_2245900
.thumb
branch_223e462: @ 223e462 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223e466


.align 2


.word 0xf0200 @ 0x223e468
.thumb
Function_223e46c: @ 223e46c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223e9b8
	ldr     r0, [r4, #0x4]
	bl      Function_223e598
	mov     r0, r4
	bl      Function_223e6b8
	mov     r0, r4
	bl      Function_223e7d4
	mov     r0, r4
	bl      Function_223e770
	ldr     r1, [pc, #0xa8] @ 0x223e538, (=0xf6c)
	ldr     r2, [pc, #0xa8] @ 0x223e53c, (=0xb94)
	add     r0, r4, r1
	add     r1, #0xe0
	ldr     r2, [r4, r2]
	add     r1, r4, r1
	bl      Function_223f9fc
	mov     r3, #0x0
	ldr     r0, [pc, #0x9c] @ 0x223e540, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x9c] @ 0x223e544, (=0xb98)
	ldr     r0, [pc, #0x9c] @ 0x223e548, (=0xf7c)
	ldr     r1, [r4, r2]
	sub     r2, #0x1a
	ldsh    r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_2242158
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x223e540, (=0x10200)
	ldr     r2, [pc, #0x7c] @ 0x223e53c, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r4, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x84] @ 0x223e54c, (=0xf9c)
	ldsb    r2, [r4, r2]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_2242204
	ldr     r1, [pc, #0x7c] @ 0x223e550, (=0xb81)
	mov     r2, #0x1
	ldsb    r0, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r4, r1]
	bl      Function_2242970
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x58] @ 0x223e540, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x4c] @ 0x223e53c, (=0xb94)
	ldr     r0, [pc, #0x60] @ 0x223e554, (=0xfbc)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_22422b8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223e540, (=0x10200)
	ldr     r3, [pc, #0x54] @ 0x223e558, (=0x105c)
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x54] @ 0x223e55c, (=0xba4)
	add     r0, r4, r3
	ldr     r1, [r4, r2]
	sub     r2, #0x10
	add     r3, #0xf4
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	bl      Function_224218c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223e538

.word 0xf6c @ 0x223e538
.word 0xb94 @ 0x223e53c
.word 0x10200 @ 0x223e540
.word 0xb98 @ 0x223e544
.word 0xf7c @ 0x223e548
.word 0xf9c @ 0x223e54c
.word 0xb81 @ 0x223e550
.word 0xfbc @ 0x223e554
.word 0x105c @ 0x223e558
.word 0xba4 @ 0x223e55c
.thumb
Function_223e560: @ 223e560 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223e570, (=0x2246860)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x223e56e


.align 2


.word 0x2246860 @ 0x223e570
.thumb
Function_223e574: @ 223e574 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223e7c4
	mov     r0, r4
	bl      Function_223ea20
	mov     r0, r4
	bl      Function_223e968
	ldr     r0, [r4, #0x4]
	bl      Function_223e684
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e598

.thumb
Function_223e598: @ 223e598 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xd4] @ 0x223e674, (=0x2245dc8)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xb0] @ 0x223e678, (=0x2245dac)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0x8c] @ 0x223e67c, (=0x2245de4)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x68] @ 0x223e680, (=0x2245e00)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x223e672


.align 2


.word 0x2245dc8 @ 0x223e674
.word 0x2245dac @ 0x223e678
.word 0x2245de4 @ 0x223e67c
.word 0x2245e00 @ 0x223e680
.thumb
Function_223e684: @ 223e684 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019044
	pop     {r4,pc}
@ 0x223e6b8


.thumb
Function_223e6b8: @ 223e6b8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]

	mov     r0, #Worldtrade_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	mov     r4, r0
	bl      Function_2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, r5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1a
	mov     r2, r5
	bl      Function_200710c
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e770

.thumb
Function_223e770: @ 223e770 :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x48] @ 0x223e7c0, (=0xd54)
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, r4
	add     r2, r4, r2
	mov     r3, #0x1
	bl      Function_223c300
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2021d6c
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021e80
	bl      Function_2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223e7c0

.word 0xd54 @ 0x223e7c0
.thumb
Function_223e7c4: @ 223e7c4 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x223e7d0, (=Function_2021bd4+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223e7ce


.align 2


.word Function_2021bd4+1 @ 0x223e7d0
.thumb
Function_223e7d4: @ 223e7d4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r3, #0x1
	str     r0, [sp, #0x14]
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x150] @ 0x223e944, (=0xf1c)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r1, [pc, #0x144] @ 0x223e944, (=0xf1c)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x0
	ldr     r0, [pc, #0x138] @ 0x223e948, (=0xf0d00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x130] @ 0x223e944, (=0xf1c)
	ldr     r0, [sp, #0x14]
	ldr     r3, [pc, #0x134] @ 0x223e94c, (=0xbb4)
	add     r0, r0, r1
	ldr     r1, [sp, #0x14]
	ldr     r1, [r1, r3]
	mov     r3, #0x1
	bl      Function_22458cc
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x114] @ 0x223e950, (=0xefc)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r1, [pc, #0x104] @ 0x223e950, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	ldr     r1, [pc, #0xfc] @ 0x223e954, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0xfc] @ 0x223e958, (=0x2245d94)
	mov     r7, #0x0
	mov     r6, #0x1
	add     r5, r0, r1
.thumb
branch_223e860: @ 223e860 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, r5
	mov     r2, #0x3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x16
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r7, #0x6
	blt     branch_223e860
	ldr     r1, [pc, #0xb0] @ 0x223e954, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0xb4] @ 0x223e95c, (=0x2245d84)
	add     r0, r0, r1
	mov     r5, #0x0
	mov     r6, #0x96
	str     r0, [sp, #0x18]
.thumb
branch_223e8ae: @ 223e8ae :thumb
	add     r0, r5, #0x6
	lsl     r7, r0, #4
	ldrh    r0, [r4, #0x2]
	ldr     r1, [sp, #0x18]
	mov     r2, #0x2
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	add     r1, r1, r7
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	lsr     r3, r3, #24
	bl      Function_201a7e8
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	add     r0, r0, r7
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_223e8ae
	ldr     r1, [pc, #0x68] @ 0x223e960, (=0x104c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x68] @ 0x223e964, (=0x2245d8c)
	mov     r7, #0x0
	mov     r6, #0x85
	add     r5, r0, r1
.thumb
branch_223e900: @ 223e900 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, r5
	mov     r2, #0x3
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [sp, #0x14]
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x4]
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x38
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r7, #0x2
	blt     branch_223e900
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e944

.word 0xf1c @ 0x223e944
.word 0xf0d00 @ 0x223e948
.word 0xbb4 @ 0x223e94c
.word 0xefc @ 0x223e950
.word 0xf6c @ 0x223e954
.word 0x2245d94 @ 0x223e958
.word 0x2245d84 @ 0x223e95c
.word 0x104c @ 0x223e960
.word 0x2245d8c @ 0x223e964
.thumb
Function_223e968: @ 223e968 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x38] @ 0x223e9a8, (=0xefc)
	add     r0, r6, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x34] @ 0x223e9ac, (=0xf1c)
	add     r0, r6, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x30] @ 0x223e9b0, (=0xf6c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223e982: @ 223e982 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223e982
	ldr     r0, [pc, #0x20] @ 0x223e9b4, (=0x104c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223e996: @ 223e996 :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_223e996
	pop     {r4-r6,pc}
@ 0x223e9a6


.align 2


.word 0xefc @ 0x223e9a8
.word 0xf1c @ 0x223e9ac
.word 0xf6c @ 0x223e9b0
.word 0x104c @ 0x223e9b4
.thumb
Function_223e9b8: @ 223e9b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x29
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x40] @ 0x223ea18, (=0xbb4)
	str     r0, [r4, r1]
	mov     r0, #0x3e
	mov     r1, #0x30
	bl      malloc
	ldr     r1, [pc, #0x38] @ 0x223ea1c, (=0x1084)
	mov     r2, #0x30
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	blx     MIi_CpuClearFast
	ldr     r2, [pc, #0x2c] @ 0x223ea1c, (=0x1084)
	mov     r0, #0x3e
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r2, #0x1c
	bl      Function_2242524
	ldr     r1, [pc, #0x1c] @ 0x223ea1c, (=0x1084)
	ldr     r1, [r4, r1]
	str     r0, [r1, #0x18]
	mov     r0, #0x3e
	bl      Function_2242548
	ldr     r1, [pc, #0x10] @ 0x223ea1c, (=0x1084)
	ldr     r2, [r4, r1]
	add     r1, #0x38
	str     r0, [r2, #0x14]
	add     r0, r4, r1
	bl      Function_2242aac
	pop     {r4,pc}
@ 0x223ea18

.word 0xbb4 @ 0x223ea18
.word 0x1084 @ 0x223ea1c
.thumb
Function_223ea20: @ 223ea20 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x223ea54, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x14]
	bl      free
	ldr     r0, [pc, #0x24] @ 0x223ea54, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x18]
	bl      free
	ldr     r0, [pc, #0x18] @ 0x223ea54, (=0x1084)
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xc] @ 0x223ea58, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x223ea54

.word 0x1084 @ 0x223ea54
.word 0xbb4 @ 0x223ea58
.thumb
Function_223ea5c: @ 223ea5c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x223ea80, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x8
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ea80

.word 0xf0f @ 0x223ea80
.thumb
Function_223ea84: @ 223ea84 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223efac
	ldr     r0, [pc, #0x120] @ 0x223ebb0, (=RAM_21bf67c)
	mov     r2, #0x1
	ldr     r1, [r0, #0x48]
	mov     r0, r1
	tst     r0, r2
	beq     branch_223eb42
	mov     r0, r4
	bl      Function_223ef94
	cmp     r0, #0x5
	bls     branch_223eaa4
	b       branch_223ebac
@ 0x223eaa4

.thumb
branch_223eaa4: @ 223eaa4 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223eab0

Jumppoints_223eab0:
.hword branch_223eabc - Jumppoints_223eab0 - 2
.hword branch_223eac8 - Jumppoints_223eab0 - 2
.hword branch_223eb02 - Jumppoints_223eab0 - 2
.hword branch_223eb0e - Jumppoints_223eab0 - 2
.hword branch_223eb1a - Jumppoints_223eab0 - 2
.hword branch_223eb20 - Jumppoints_223eab0 - 2
.thumb
branch_223eabc: @ 223eabc :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xf0] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eac8

.thumb
branch_223eac8: @ 223eac8 :thumb
	ldr     r0, [pc, #0xec] @ 0x223ebb8, (=0xb7e)
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223eaf6
	mov     r1, #0x12
	bl      GetPkmnBaseData1
	ldr     r1, [pc, #0xe4] @ 0x223ebbc, (=0x1084)
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x20]
	ldr     r1, [r4, r1]
	ldr     r0, [pc, #0xd8] @ 0x223ebb8, (=0xb7e)
	ldr     r1, [r1, #0x20]
	add     r0, r4, r0
	bl      Function_2241b80
	cmp     r0, #0x0
	beq     branch_223eaf6
	ldr     r0, [pc, #0xc4] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223eaf6

.thumb
branch_223eaf6: @ 223eaf6 :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xb8] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eb02

.thumb
branch_223eb02: @ 223eb02 :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xac] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eb0e

.thumb
branch_223eb0e: @ 223eb0e :thumb
	mov     r0, #0xe
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xa0] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eb1a

.thumb
branch_223eb1a: @ 223eb1a :thumb
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
	b       branch_223ebac
@ 0x223eb20

.thumb
branch_223eb20: @ 223eb20 :thumb
	ldr     r0, [pc, #0x9c] @ 0x223ebc0, (=0xf0f)
	mov     r1, #0xf
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x19
	bl      Function_223c3f4
	ldr     r0, [pc, #0x78] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eb42

.thumb
branch_223eb42: @ 223eb42 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223eb68
	ldr     r0, [pc, #0x74] @ 0x223ebc0, (=0xf0f)
	mov     r1, #0xf
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x19
	bl      Function_223c3f4
	ldr     r0, [pc, #0x50] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
	b       branch_223ebac
@ 0x223eb68

.thumb
branch_223eb68: @ 223eb68 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2244214
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x223ebc4, (=0x1092)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223ebac
	cmp     r5, #0x0
	blt     branch_223ebac
	add     r0, r5, #0x1
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x40] @ 0x223ebc8, (=0xed4)
	ldr     r0, [r1, r0]
	lsl     r1, r5, #2
	add     r1, #0x10
	bl      Function_2021d6c
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r5, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x223ebb4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223ebac: @ 223ebac :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223ebb0

.word RAM_21bf67c @ 0x223ebb0
.word 0x5dc @ 0x223ebb4
.word 0xb7e @ 0x223ebb8
.word 0x1084 @ 0x223ebbc
.word 0xf0f @ 0x223ebc0
.word 0x1092 @ 0x223ebc4
.word 0xed4 @ 0x223ebc8
.thumb
Function_223ebcc: @ 223ebcc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r3, [pc, #0x8c] @ 0x223ec60, (=0xb7e)
	mov     r4, r0
	ldsh    r1, [r4, r3]
	cmp     r1, #0x0
	bne     branch_223ebfa
	ldr     r1, [pc, #0x88] @ 0x223ec64, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0xc
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x74] @ 0x223ec68, (=0x5f3)
	bl      Function_2005748
	b       branch_223ec58
@ 0x223ebfa

.thumb
branch_223ebfa: @ 223ebfa :thumb
	ldr     r2, [pc, #0x70] @ 0x223ec6c, (=0x1150)
	add     r1, r3, #0x6
	add     r0, r4, r3
	add     r3, #0xe
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	bl      Function_223fb0c
	cmp     r0, #0x0
	beq     branch_223ec32
	ldr     r0, [pc, #0x50] @ 0x223ec64, (=0xf0f)
	mov     r1, #0x21
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x3c] @ 0x223ec68, (=0x5f3)
	bl      Function_2005748
	b       branch_223ec58
@ 0x223ec32

.thumb
branch_223ec32: @ 223ec32 :thumb
	ldr     r0, [pc, #0x3c] @ 0x223ec70, (=0x5ff)
	bl      Function_2005748
	ldr     r0, [pc, #0x28] @ 0x223ec64, (=0xf0f)
	mov     r1, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x12
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_22442e4
.thumb
branch_223ec58: @ 223ec58 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ec5e


.align 2


.word 0xb7e @ 0x223ec60
.word 0xf0f @ 0x223ec64
.word 0x5f3 @ 0x223ec68
.word 0x1150 @ 0x223ec6c
.word 0x5ff @ 0x223ec70
.thumb
Function_223ec74: @ 223ec74 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	cmp     r1, #0x1
	ldr     r0, [r0, #0x0]
	bne     branch_223ec86
	ldr     r0, [r0, #0x0]
	bl      Function_202da9c
	b       branch_223ec8c
@ 0x223ec86

.thumb
branch_223ec86: @ 223ec86 :thumb
	ldr     r0, [r0, #0x0]
	bl      Function_202da8c
.thumb
branch_223ec8c: @ 223ec8c :thumb
	lsr     r1, r0, #24
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x1c]
	lsr     r1, r0, #16
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x20]
	lsr     r1, r0, #8
	lsl     r1, r1, #24
	lsl     r0, r0, #24
	lsr     r1, r1, #24
	lsr     r0, r0, #24
	str     r1, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	blx     Function_4_21d806c
	add     r0, sp, #0xc
	blx     RTC_ConvertDateToDay
	mov     r4, r0
	add     r0, sp, #0x1c
	blx     RTC_ConvertDateToDay
	sub     r0, r4, r0
	bmi     branch_223ecce
	cmp     r0, #0x3
	bge     branch_223ecce
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x223ecce

.thumb
branch_223ecce: @ 223ecce :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x223ecd4

.thumb
Function_223ecd4: @ 223ecd4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r1, #0x1
	mov     r5, r0
	mov     r4, #0x3
	bl      Function_223ec74
	cmp     r0, #0x0
	beq     branch_223ece8
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_223ece8: @ 223ece8 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223ec74
	cmp     r0, #0x0
	beq     branch_223ecf6
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_223ecf6: @ 223ecf6 :thumb
	ldr     r0, [pc, #0x90] @ 0x223ed88, (=0x1150)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223ed10
	ldr     r0, [pc, #0x8c] @ 0x223ed8c, (=0xb7e)
	mov     r2, #0x95
	lsl     r2, r2, #2
	add     r0, r5, r0
	mov     r1, r4
	add     r2, r5, r2
	bl      Function_223b9b0
	b       branch_223ed4e
@ 0x223ed10

.thumb
branch_223ed10: @ 223ed10 :thumb
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x8
	blx     MI_CpuFill8
	ldr     r1, [pc, #0x70] @ 0x223ed8c, (=0xb7e)
	add     r0, sp, #0x0
	ldsh    r2, [r5, r1]
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldsb    r2, [r5, r2]
	strb    r2, [r0, #0x2]
	add     r2, r1, #0x3
	ldsb    r2, [r5, r2]
	strb    r2, [r0, #0x3]
	add     r2, r1, #0x4
	ldsb    r2, [r5, r2]
	.hword  0x1d49 @ add r1, r1, #0x5
	strb    r2, [r0, #0x4]
	ldsb    r1, [r5, r1]
	strb    r1, [r0, #0x5]
	ldr     r1, [pc, #0x4c] @ 0x223ed88, (=0x1150)
	strb    r4, [r0, #0x6]
	ldr     r1, [r5, r1]
	strb    r1, [r0, #0x7]
	mov     r1, #0x95
	lsl     r1, r1, #2
	add     r0, sp, #0x0
	add     r1, r5, r1
	bl      Function_223ba24
.thumb
branch_223ed4e: @ 223ed4e :thumb
	ldr     r1, [pc, #0x3c] @ 0x223ed8c, (=0xb7e)
	ldrh    r2, [r5, r1]
	add     r0, r1, #0x6
	strh    r2, [r5, r0]
	add     r0, r1, #0x2
	ldrh    r2, [r5, r0]
	mov     r0, r1
	add     r0, #0x8
	strh    r2, [r5, r0]
	add     r0, r1, #0x4
	ldrh    r2, [r5, r0]
	mov     r0, r1
	add     r0, #0xa
	strh    r2, [r5, r0]
	ldr     r2, [pc, #0x1c] @ 0x223ed88, (=0x1150)
	add     r1, #0xe
	ldr     r0, [r5, r2]
	sub     r2, #0xbe
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x18] @ 0x223ed90, (=0x1484)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, #0x13
	str     r0, [r5, #0x2c]
	strh    r1, [r5, r2]
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223ed86


.align 2


.word 0x1150 @ 0x223ed88
.word 0xb7e @ 0x223ed8c
.word 0x1484 @ 0x223ed90
.thumb
Function_223ed94: @ 223ed94 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_223ee1c
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0x90] @ 0x223ee38, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x16
	bhi     branch_223ee32
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223edc0

Jumppoints_223edc0:
.hword branch_223ee16 - Jumppoints_223edc0 - 2
.hword branch_223ee0a - Jumppoints_223edc0 - 2
.hword branch_223ee10 - Jumppoints_223edc0 - 2
.hword branch_223ee16 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223ee0a - Jumppoints_223edc0 - 2
.hword branch_223ee32 - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.hword branch_223edee - Jumppoints_223edc0 - 2
.thumb
branch_223edee: @ 223edee :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	ldr     r0, [pc, #0x44] @ 0x223ee3c, (=0x5ff)
	bl      Function_20057a4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244234
	mov     r0, #0x14
	str     r0, [r4, #0x2c]
	b       branch_223ee32
@ 0x223ee0a

.thumb
branch_223ee0a: @ 223ee0a :thumb
	mov     r0, #0x1d
	str     r0, [r4, #0x2c]
	b       branch_223ee32
@ 0x223ee10

.thumb
branch_223ee10: @ 223ee10 :thumb
	bl      Function_2038a0c
	b       branch_223ee32
@ 0x223ee16

.thumb
branch_223ee16: @ 223ee16 :thumb
	mov     r0, #0x16
	str     r0, [r4, #0x2c]
	b       branch_223ee32
@ 0x223ee1c

.thumb
branch_223ee1c: @ 223ee1c :thumb
	ldr     r0, [pc, #0x18] @ 0x223ee38, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223ee32
	bl      Function_2038a0c
.thumb
branch_223ee32: @ 223ee32 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223ee36


.align 2


.word 0x1484 @ 0x223ee38
.word 0x5ff @ 0x223ee3c
.thumb
Function_223ee40: @ 223ee40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x47
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	ldr     r1, [pc, #0x44] @ 0x223ee94, (=0xf0f)
	bne     branch_223ee70
	str     r1, [sp, #0x0]
	mov     r1, #0xe
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x2c] @ 0x223ee98, (=0x5f3)
	bl      Function_2005748
	b       branch_223ee8e
@ 0x223ee70

.thumb
branch_223ee70: @ 223ee70 :thumb
	str     r1, [sp, #0x0]
	mov     r1, #0x1e
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x15
	bl      Function_223c3f4
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_223ee8e: @ 223ee8e :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ee94

.word 0xf0f @ 0x223ee94
.word 0x5f3 @ 0x223ee98
.thumb
Function_223ee9c: @ 223ee9c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x42
	mov     r4, r0
	lsl     r1, r1, #6
	ldr     r2, [r4, r1]
	.hword  0x1c52 @ add r2, r2, #0x1
	str     r2, [r4, r1]
	ldr     r1, [r4, r1]
	cmp     r1, #0x2d
	ble     branch_223eed0
	ldr     r1, [pc, #0x24] @ 0x223eed8, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x10] @ 0x223eedc, (=0x1092)
	mov     r1, #0x1
	strh    r1, [r4, r0]
.thumb
branch_223eed0: @ 223eed0 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223eed6


.align 2


.word 0xf0f @ 0x223eed8
.word 0x1092 @ 0x223eedc
.thumb
Function_223eee0: @ 223eee0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x28] @ 0x223ef10, (=0xb84)
	mov     r4, r0
	mov     r3, #0x0
	strh    r3, [r4, r1]
	ldr     r1, [pc, #0x24] @ 0x223ef14, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x26
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x14] @ 0x223ef18, (=0x5f3)
	bl      Function_2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef0e


.align 2


.word 0xb84 @ 0x223ef10
.word 0xf0f @ 0x223ef14
.word 0x5f3 @ 0x223ef18
.thumb
Function_223ef1c: @ 223ef1c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223ef50, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x93
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1e
	bl      Function_223c3f4
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x223ef54, (=0x5f3)
	bl      Function_2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef4e


.align 2


.word 0xf0f @ 0x223ef50
.word 0x5f3 @ 0x223ef54
.thumb
Function_223ef58: @ 223ef58 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223ef8c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x98
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	ldr     r0, [pc, #0xc] @ 0x223ef90, (=0x5f3)
	bl      Function_2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef8c

.word 0xf0f @ 0x223ef8c
.word 0x5f3 @ 0x223ef90
.thumb
Function_223ef94: @ 223ef94 :thumb
	ldr     r1, [pc, #0x10] @ 0x223efa8, (=0x1084)
	ldr     r1, [r0, r1]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223efa2
	ldr     r0, [r1, #0x28]
	bx      lr
@ 0x223efa2

.thumb
branch_223efa2: @ 223efa2 :thumb
	ldr     r0, [r1, #0x2c]
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x223efa8

.word 0x1084 @ 0x223efa8
.thumb
Function_223efac: @ 223efac :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0xe0] @ 0x223f094, (=RAM_21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	beq     branch_223efee
	ldr     r0, [pc, #0xd8] @ 0x223f098, (=0x1084)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223efd8
	ldr     r0, [r1, #0x28]
	cmp     r0, #0x0
	ble     branch_223f064
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x28]
	ldr     r0, [pc, #0xc8] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
	b       branch_223f064
@ 0x223efd8

.thumb
branch_223efd8: @ 223efd8 :thumb
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x0
	beq     branch_223efe4
	ldr     r0, [pc, #0xbc] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223efe4: @ 223efe4 :thumb
	ldr     r0, [pc, #0xb0] @ 0x223f098, (=0x1084)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x2c]
	b       branch_223f064
@ 0x223efee

.thumb
branch_223efee: @ 223efee :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_223f026
	ldr     r0, [pc, #0xa0] @ 0x223f098, (=0x1084)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223f010
	ldr     r0, [r1, #0x28]
	cmp     r0, #0x3
	bge     branch_223f064
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x28]
	ldr     r0, [pc, #0x90] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
	b       branch_223f064
@ 0x223f010

.thumb
branch_223f010: @ 223f010 :thumb
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x1
	beq     branch_223f01c
	ldr     r0, [pc, #0x84] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223f01c: @ 223f01c :thumb
	ldr     r0, [pc, #0x78] @ 0x223f098, (=0x1084)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x2c]
	b       branch_223f064
@ 0x223f026

.thumb
branch_223f026: @ 223f026 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_223f046
	ldr     r0, [pc, #0x68] @ 0x223f098, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x1
	beq     branch_223f03c
	ldr     r0, [pc, #0x64] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223f03c: @ 223f03c :thumb
	ldr     r0, [pc, #0x58] @ 0x223f098, (=0x1084)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x24]
	b       branch_223f064
@ 0x223f046

.thumb
branch_223f046: @ 223f046 :thumb
	mov     r1, #0x20
	tst     r0, r1
	beq     branch_223f064
	ldr     r0, [pc, #0x48] @ 0x223f098, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_223f05c
	ldr     r0, [pc, #0x44] @ 0x223f09c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_223f05c: @ 223f05c :thumb
	ldr     r0, [pc, #0x38] @ 0x223f098, (=0x1084)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x24]
.thumb
branch_223f064: @ 223f064 :thumb
	mov     r0, r4
	bl      Function_223ef94
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x223f0a0, (=0x2246848)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_223ef94
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x24] @ 0x223f0a4, (=0x224684a)
	ldrh    r0, [r0, r1]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f094

.word RAM_21bf67c @ 0x223f094
.word 0x1084 @ 0x223f098
.word 0x5dc @ 0x223f09c
.word 0x2246848 @ 0x223f0a0
.word 0x224684a @ 0x223f0a4
.thumb
Function_223f0a8: @ 223f0a8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x6
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f0d0

.thumb
Function_223f0d0: @ 223f0d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x70] @ 0x223f148, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x9
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x4
	bl      Function_223c3f4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xb6
	ldr     r1, [pc, #0x4c] @ 0x223f14c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      Function_201a7e8
	ldr     r0, [pc, #0x3c] @ 0x223f14c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xea
	ldr     r1, [pc, #0x24] @ 0x223f150, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f150, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f148

.word 0xf0f @ 0x223f148
.word 0xf3c @ 0x223f14c
.word 0xf4c @ 0x223f150
.thumb
Function_223f154: @ 223f154 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x24] @ 0x223f17c, (=0xb94)
	mov     r4, r0
	ldr     r1, [pc, #0x24] @ 0x223f180, (=0x106c)
	ldr     r2, [pc, #0x24] @ 0x223f184, (=0xf3c)
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_22426a8
	ldr     r1, [pc, #0x1c] @ 0x223f188, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f18c, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f17c

.word 0xb94 @ 0x223f17c
.word 0x106c @ 0x223f180
.word 0xf3c @ 0x223f184
.word 0x1078 @ 0x223f188
.word 0xffff @ 0x223f18c
.thumb
Function_223f190: @ 223f190 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa8] @ 0x223f240, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a6c
	cmp     r0, #0x9
	bhi     branch_223f1c6
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223f1b2

Jumppoints_223f1b2:
.hword branch_223f23a - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.hword branch_223f1d0 - Jumppoints_223f1b2 - 2
.thumb
branch_223f1c6: @ 223f1c6 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223f1f4
	b       branch_223f23a
@ 0x223f1d0

.thumb
branch_223f1d0: @ 223f1d0 :thumb
	ldr     r0, [pc, #0x70] @ 0x223f244, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_2001384
	ldr     r0, [pc, #0x64] @ 0x223f248, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x60] @ 0x223f24c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	b       branch_223f23a
@ 0x223f1f4

.thumb
branch_223f1f4: @ 223f1f4 :thumb
	ldr     r0, [pc, #0x4c] @ 0x223f244, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_2001384
	ldr     r0, [pc, #0x40] @ 0x223f248, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x40] @ 0x223f250, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x3c] @ 0x223f254, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x2c] @ 0x223f250, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x2c] @ 0x223f258, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x18] @ 0x223f24c, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_223f23a: @ 223f23a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f23e


.align 2


.word 0x1078 @ 0x223f240
.word 0x1084 @ 0x223f244
.word 0x106c @ 0x223f248
.word 0x5dc @ 0x223f24c
.word 0xf3c @ 0x223f250
.word 0xefc @ 0x223f254
.word 0xf4c @ 0x223f258
.thumb
Function_223f25c: @ 223f25c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r3, [pc, #0x38] @ 0x223f29c, (=0xb98)
	mov     r4, r0
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x223f2a0, (=0x1084)
	ldr     r2, [r4, r1]
	sub     r1, #0x18
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	add     r1, r4, r1
	ldr     r2, [r2, #0x10]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x28] @ 0x223f2a4, (=0xf4c)
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22427c0
	ldr     r1, [pc, #0x20] @ 0x223f2a8, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x20] @ 0x223f2ac, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x7
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f29a


.align 2


.word 0xb98 @ 0x223f29c
.word 0x1084 @ 0x223f2a0
.word 0xf4c @ 0x223f2a4
.word 0x1078 @ 0x223f2a8
.word 0xffff @ 0x223f2ac
.thumb
Function_223f2b0: @ 223f2b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x134] @ 0x223f3ec, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a6c
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_223f2d8
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_223f2d6
	b       branch_223f3e4
@ 0x223f2d6

.thumb
branch_223f2d6: @ 223f2d6 :thumb
	b       branch_223f31e
@ 0x223f2d8

.thumb
branch_223f2d8: @ 223f2d8 :thumb
	ldr     r0, [pc, #0x114] @ 0x223f3f0, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      Function_2001384
	ldr     r0, [pc, #0x108] @ 0x223f3f4, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x104] @ 0x223f3f8, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xfc] @ 0x223f3fc, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xe8] @ 0x223f3f0, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac4
	b       branch_223f3e4
@ 0x223f31e

.thumb
branch_223f31e: @ 223f31e :thumb
	ldr     r0, [pc, #0xd0] @ 0x223f3f0, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      Function_2001384
	ldr     r0, [pc, #0xc0] @ 0x223f3f4, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0xc4] @ 0x223f400, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xb4] @ 0x223f3f8, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xb0] @ 0x223f400, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0xa0] @ 0x223f3f8, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0xa4] @ 0x223f404, (=0xb7e)
	strh    r5, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x94] @ 0x223f3fc, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x9c] @ 0x223f408, (=0xf7c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x0
	ldr     r0, [pc, #0x94] @ 0x223f40c, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x90] @ 0x223f410, (=0xb98)
	ldr     r0, [pc, #0x88] @ 0x223f408, (=0xf7c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, r5
	bl      Function_2242158
	mov     r0, r5
	mov     r1, #0x12
	bl      GetPkmnBaseData1
	ldr     r1, [pc, #0x5c] @ 0x223f3f0, (=0x1084)
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x20]
	ldr     r3, [r4, r1]
	add     r1, #0x38
	add     r0, r4, r1
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac4
	ldr     r1, [pc, #0x40] @ 0x223f3f0, (=0x1084)
	ldr     r0, [pc, #0x54] @ 0x223f404, (=0xb7e)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	ldr     r1, [r1, #0x20]
	bl      Function_2241b80
	cmp     r0, #0x0
	beq     branch_223f3e4
	ldr     r0, [pc, #0x54] @ 0x223f414, (=0xf9c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223f40c, (=0x10200)
	ldr     r2, [pc, #0x44] @ 0x223f418, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r4, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x38] @ 0x223f414, (=0xf9c)
	ldsb    r2, [r4, r2]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_2242204
.thumb
branch_223f3e4: @ 223f3e4 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f3ea


.align 2


.word 0x1078 @ 0x223f3ec
.word 0x1084 @ 0x223f3f0
.word 0x106c @ 0x223f3f4
.word 0xf4c @ 0x223f3f8
.word 0x5dc @ 0x223f3fc
.word 0xf3c @ 0x223f400
.word 0xb7e @ 0x223f404
.word 0xf7c @ 0x223f408
.word 0x10200 @ 0x223f40c
.word 0xb98 @ 0x223f410
.word 0xf9c @ 0x223f414
.word 0xb94 @ 0x223f418
.thumb
Function_223f41c: @ 223f41c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f46c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x9
	bl      Function_223c3f4
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0xb6
	ldr     r1, [pc, #0x24] @ 0x223f470, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f470, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f46a


.align 2


.word 0xf0f @ 0x223f46c
.word 0xf3c @ 0x223f470
.thumb
Function_223f474: @ 223f474 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x223f49c, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223f4a0, (=0x106c)
	ldr     r1, [pc, #0x24] @ 0x223f4a4, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2242840
	ldr     r1, [pc, #0x1c] @ 0x223f4a8, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f4ac, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f49c

.word 0xb94 @ 0x223f49c
.word 0x106c @ 0x223f4a0
.word 0xf3c @ 0x223f4a4
.word 0x1078 @ 0x223f4a8
.word 0xffff @ 0x223f4ac
.thumb
Function_223f4b0: @ 223f4b0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x223f580, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a6c
	mov     r4, r0
	cmp     r4, #0x2
	bhi     branch_223f4d8
	cmp     r4, #0x0
	beq     branch_223f51c
	cmp     r4, #0x1
	beq     branch_223f51c
	cmp     r4, #0x2
	beq     branch_223f51c
	b       branch_223f578
@ 0x223f4d8

.thumb
branch_223f4d8: @ 223f4d8 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_223f578
	ldr     r0, [pc, #0x9c] @ 0x223f580, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x94] @ 0x223f584, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x90] @ 0x223f588, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x8c] @ 0x223f58c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x7c] @ 0x223f588, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x7c] @ 0x223f590, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f578
@ 0x223f51c

.thumb
branch_223f51c: @ 223f51c :thumb
	ldr     r0, [pc, #0x60] @ 0x223f580, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x58] @ 0x223f584, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x54] @ 0x223f588, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x4c] @ 0x223f588, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x4c] @ 0x223f590, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x2e
	add     r1, r4, #0x1
	lsl     r0, r0, #6
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x40] @ 0x223f594, (=0xf9c)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x223f598, (=0x10200)
	ldr     r2, [pc, #0x34] @ 0x223f59c, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r5, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x24] @ 0x223f594, (=0xf9c)
	ldsb    r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x1
	bl      Function_2242204
.thumb
branch_223f578: @ 223f578 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f57e


.align 2


.word 0x1078 @ 0x223f580
.word 0x106c @ 0x223f584
.word 0xf3c @ 0x223f588
.word 0xefc @ 0x223f58c
.word 0x5dc @ 0x223f590
.word 0xf9c @ 0x223f594
.word 0x10200 @ 0x223f598
.word 0xb94 @ 0x223f59c
.thumb
Function_223f5a0: @ 223f5a0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f5f0, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xb
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0xc
	bl      Function_223c3f4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xb6
	ldr     r1, [pc, #0x24] @ 0x223f5f4, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      Function_201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f5f4, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f5ee


.align 2


.word 0xf0f @ 0x223f5f0
.word 0xf3c @ 0x223f5f4
.thumb
Function_223f5f8: @ 223f5f8 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x223f624, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f628, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x223f62c, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r3, #0x1
	bl      Function_22428b0
	ldr     r1, [pc, #0x20] @ 0x223f630, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f634, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f622


.align 2


.word 0xb94 @ 0x223f624
.word 0x106c @ 0x223f628
.word 0xf3c @ 0x223f62c
.word 0x1078 @ 0x223f630
.word 0xffff @ 0x223f634
.thumb
Function_223f638: @ 223f638 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc4] @ 0x223f704, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a6c
	mov     r4, r0
	cmp     r4, #0xb
	beq     branch_223f662
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223f662
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_223f6fc
	b       branch_223f69e
@ 0x223f662

.thumb
branch_223f662: @ 223f662 :thumb
	ldr     r0, [pc, #0xa0] @ 0x223f704, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x98] @ 0x223f708, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x94] @ 0x223f70c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x8c] @ 0x223f710, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x80] @ 0x223f70c, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x80] @ 0x223f714, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f6fc
@ 0x223f69e

.thumb
branch_223f69e: @ 223f69e :thumb
	ldr     r0, [pc, #0x64] @ 0x223f704, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x5c] @ 0x223f708, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x58] @ 0x223f70c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x4c] @ 0x223f70c, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x4c] @ 0x223f714, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x4c] @ 0x223f718, (=0xb7e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_2242934
	ldr     r0, [pc, #0x44] @ 0x223f71c, (=0xfbc)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x0
	ldr     r0, [pc, #0x38] @ 0x223f720, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x34] @ 0x223f724, (=0xb94)
	ldr     r0, [pc, #0x28] @ 0x223f71c, (=0xfbc)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	mov     r2, r4
	bl      Function_22422b8
.thumb
branch_223f6fc: @ 223f6fc :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f702


.align 2


.word 0x1078 @ 0x223f704
.word 0x106c @ 0x223f708
.word 0xf3c @ 0x223f70c
.word 0xefc @ 0x223f710
.word 0x5dc @ 0x223f714
.word 0xb7e @ 0x223f718
.word 0xfbc @ 0x223f71c
.word 0x10200 @ 0x223f720
.word 0xb94 @ 0x223f724
.thumb
Function_223f728: @ 223f728 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f778, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa9
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0xf
	bl      Function_223c3f4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xb6
	ldr     r1, [pc, #0x24] @ 0x223f77c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f77c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f776


.align 2


.word 0xf0f @ 0x223f778
.word 0xf3c @ 0x223f77c
.thumb
Function_223f780: @ 223f780 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x28] @ 0x223f7ac, (=0xba4)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f7b0, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x223f7b4, (=0xf3c)
	ldr     r2, [r4, r3]
	sub     r3, #0x10
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22429b4
	ldr     r1, [pc, #0x1c] @ 0x223f7b8, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f7bc, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x10
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f7ac

.word 0xba4 @ 0x223f7ac
.word 0x106c @ 0x223f7b0
.word 0xf3c @ 0x223f7b4
.word 0x1078 @ 0x223f7b8
.word 0xffff @ 0x223f7bc
.thumb
Function_223f7c0: @ 223f7c0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x223f890, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a6c
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223f888
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	beq     branch_223f7ee
	ldr     r0, [pc, #0xac] @ 0x223f894, (=0x2245fd4)
	ldr     r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223f82a
.thumb
branch_223f7ee: @ 223f7ee :thumb
	ldr     r0, [pc, #0xa0] @ 0x223f890, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x9c] @ 0x223f898, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x98] @ 0x223f89c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x90] @ 0x223f8a0, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x84] @ 0x223f89c, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x84] @ 0x223f8a4, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f888
@ 0x223f82a

.thumb
branch_223f82a: @ 223f82a :thumb
	ldr     r0, [pc, #0x64] @ 0x223f890, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x60] @ 0x223f898, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x5c] @ 0x223f89c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x50] @ 0x223f89c, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x50] @ 0x223f8a4, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, r4
	bl      Function_2242a44
	ldr     r0, [pc, #0x48] @ 0x223f8a8, (=0x105c)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x223f8ac, (=0x10200)
	ldr     r3, [pc, #0x34] @ 0x223f8a8, (=0x105c)
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x38] @ 0x223f8b0, (=0xba4)
	add     r0, r5, r3
	ldr     r1, [r5, r2]
	sub     r2, #0x10
	add     r3, #0xf4
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	bl      Function_224218c
.thumb
branch_223f888: @ 223f888 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f88e


.align 2


.word 0x1078 @ 0x223f890
.word 0x2245fd4 @ 0x223f894
.word 0x106c @ 0x223f898
.word 0xf3c @ 0x223f89c
.word 0xefc @ 0x223f8a0
.word 0x5dc @ 0x223f8a4
.word 0x105c @ 0x223f8a8
.word 0x10200 @ 0x223f8ac
.word 0xba4 @ 0x223f8b0
.thumb
Function_223f8b4: @ 223f8b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x223f8d0, (=0x186)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x223f8d4, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x1a
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f8ce


.align 2


.word 0x186 @ 0x223f8d0
.word 0x1070 @ 0x223f8d4
.thumb
Function_223f8d8: @ 223f8d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x223f91c, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223f916
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223f8fa
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_223f916
@ 0x223f8fa

.thumb
branch_223f8fa: @ 223f8fa :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_22442e4
	mov     r0, #0x47
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_223f916: @ 223f916 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f91a


.align 2


.word 0x1070 @ 0x223f91c
.thumb
Function_223f920: @ 223f920 :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x2c]
	mov     r0, #0x3
	bx      lr
@ 0x223f928

.thumb
Function_223f928: @ 223f928 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x223f94c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x92
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a4
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223f94c

.word 0xf0f @ 0x223f94c
.thumb
Function_223f950: @ 223f950 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223f96c, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223f968
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223f968: @ 223f968 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f96c

.word 0xbe4 @ 0x223f96c
.thumb
Function_223f970: @ 223f970 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f9a0, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_223f99c
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x2d
	ble     branch_223f99c
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223f99c: @ 223f99c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f9a0

.word 0xbe4 @ 0x223f9a0
.thumb
Function_223f9a4: @ 223f9a4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [pc, #0x44] @ 0x223f9f0, (=0xb94)
	mov     r5, r0
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
	ldr     r0, [pc, #0x38] @ 0x223f9f4, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x30] @ 0x223f9f4, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x18] @ 0x223f9f4, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0xc] @ 0x223f9f8, (=0xbe4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f9f0

.word 0xb94 @ 0x223f9f0
.word 0xefc @ 0x223f9f4
.word 0xbe4 @ 0x223f9f8
.thumb
Function_223f9fc: @ 223f9fc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r7, r1
	mov     r0, r4
	mov     r1, #0x3b
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xf0] @ 0x223fb04, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	mov     r1, #0x3d
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xcc] @ 0x223fb04, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x20
	mov     r1, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	mov     r1, #0x3f
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xa8] @ 0x223fb04, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x40
	mov     r1, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	mov     r1, #0xa5
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0x84] @ 0x223fb04, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	mov     r1, #0x41
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r6, r0
	mov     r3, r5
	add     r3, #0x67
	ldrb    r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	lsl     r3, r3, #3
	bl      Function_2002eec
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x54] @ 0x223fb08, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x60
	mov     r1, r6
	bl      Function_2245900
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	mov     r0, r4
	mov     r1, #0x42
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	mov     r3, r5
	add     r3, #0x77
	ldrb    r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	lsl     r3, r3, #3
	bl      Function_2002eec
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x1c] @ 0x223fb08, (=0x10200)
	str     r3, [sp, #0x0]
	add     r5, #0x70
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_2245900
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223fb02


.align 2


.word 0xf0200 @ 0x223fb04
.word 0x10200 @ 0x223fb08
.thumb
Function_223fb0c: @ 223fb0c :thumb
	push    {r4,r5}
	mov     r4, #0x0
	ldsh    r5, [r0, r4]
	ldsh    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb40
	mov     r4, #0x2
	ldsb    r5, [r0, r4]
	ldsb    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb40
	mov     r4, #0x3
	ldsb    r5, [r0, r4]
	ldsb    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb40
	mov     r4, #0x4
	ldsb    r5, [r0, r4]
	ldsb    r0, [r1, r4]
	cmp     r5, r0
	bne     branch_223fb40
	cmp     r2, r3
	bne     branch_223fb40
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x223fb40

.thumb
branch_223fb40: @ 223fb40 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x223fb46


.align 2, 0


.thumb
Function_223fb48: @ 223fb48 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_22401e0
	ldr     r0, [r4, #0x4]
	bl      Function_223fc08
	mov     r0, r4
	bl      Function_223fd4c
	mov     r0, r4
	bl      Function_2240028
	mov     r0, r4
	bl      Function_223fe24
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x8
	bne     branch_223fb88
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	b       branch_223fb9e
@ 0x223fb88

.thumb
branch_223fb88: @ 223fb88 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
.thumb
branch_223fb9e: @ 223fb9e :thumb
	mov     r1, #0x45
	lsl     r1, r1, #2
	ldrh    r1, [r4, r1]
	mov     r0, r4
	bl      Function_2240fa0
	mov     r0, r4
	bl      Function_2245934
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223fbba


.align 2, 0


.thumb
Function_223fbbc: @ 223fbbc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      Function_20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223fbd8, (=0x22468dc)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x223fbd6


.align 2


.word 0x22468dc @ 0x223fbd8
.thumb
Function_223fbdc: @ 223fbdc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2039794
	mov     r0, r4
	bl      Function_223ffc8
	mov     r0, r4
	bl      Function_2240268
	mov     r0, r4
	bl      Function_2240190
	ldr     r0, [r4, #0x4]
	bl      Function_223fd20
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223fc06


.align 2, 0


.thumb
Function_223fc08: @ 223fc08 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xf8] @ 0x223fd08, (=0x2245e24)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xe8] @ 0x223fd0c, (=0x2245e9c)
	add     r3, sp, #0x70
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xc4] @ 0x223fd10, (=0x2245eb8)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	ldr     r5, [pc, #0xa8] @ 0x223fd14, (=0x2245e80)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x84] @ 0x223fd18, (=0x2245e48)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x60] @ 0x223fd1c, (=0x2245e64)
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223fd06


.align 2


.word 0x2245e24 @ 0x223fd08
.word 0x2245e9c @ 0x223fd0c
.word 0x2245eb8 @ 0x223fd10
.word 0x2245e80 @ 0x223fd14
.word 0x2245e48 @ 0x223fd18
.word 0x2245e64 @ 0x223fd1c
.thumb
Function_223fd20: @ 223fd20 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x223fd4c

.thumb
Function_223fd4c: @ 223fd4c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]

	mov     r0, #Worldtrade_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x2
	mov     r3, r2
	mov     r4, r0
	bl      Function_2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, r5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, r5
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, r4
	mov     r1, #0x1d
	mov     r2, r5
	mov     r3, #0x2
	bl      Function_200710c
	mov     r0, r4
	bl      Call_FS_CloseFile
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223fe22


.align 2, 0


.thumb
Function_223fe24: @ 223fe24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x17c] @ 0x223ffa8, (=0xd54)
	mov     r5, r0
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_223c300
	ldr     r0, [pc, #0x170] @ 0x223ffac, (=0x116)
	ldrh    r1, [r5, r0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x170] @ 0x223ffb0, (=0x2245ed4)
	ldrh    r1, [r1, r2]
	lsl     r1, r1, #12
	str     r1, [sp, #0x8]
	ldrh    r0, [r5, r0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x168] @ 0x223ffb4, (=0x2245ed6)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	bl      Function_2021d6c
	ldr     r0, [pc, #0x138] @ 0x223ffac, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1f
	beq     branch_223fe7e
	cmp     r0, #0x5
	bhi     branch_223fe8c
.thumb
branch_223fe7e: @ 223fe7e :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021e80
	b       branch_223fe98
@ 0x223fe8c

.thumb
branch_223fe8c: @ 223fe8c :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021e80
.thumb
branch_223fe98: @ 223fe98 :thumb
	ldr     r6, [pc, #0x114] @ 0x223ffb0, (=0x2245ed4)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223fe9e: @ 223fe9e :thumb
	ldrh    r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, #0x14
	str     r0, [sp, #0x24]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	ldr     r1, [pc, #0x100] @ 0x223ffb8, (=0xdc8)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	add     r1, r7, #0x6
	bl      Function_2021d6c
	ldr     r0, [pc, #0xf4] @ 0x223ffb8, (=0xdc8)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x1e
	blt     branch_223fe9e
	ldr     r6, [pc, #0xd8] @ 0x223ffb0, (=0x2245ed4)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223fedc: @ 223fedc :thumb
	ldrh    r0, [r6, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x2]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x24]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	mov     r1, #0x39
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      Function_2021d6c
	mov     r0, #0x39
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x1e
	blt     branch_223fedc
	ldr     r6, [pc, #0x90] @ 0x223ffb0, (=0x2245ed4)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223ff22: @ 223ff22 :thumb
	ldrh    r0, [r6, #0x0]
	add     r0, #0xc
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x2]
	.hword  0x1d80 @ add r0, r0, #0x6
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, #0xa
	str     r0, [sp, #0x24]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	ldr     r1, [pc, #0x7c] @ 0x223ffbc, (=0xeb8)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x2a
	bl      Function_2021d6c
	ldr     r0, [pc, #0x70] @ 0x223ffbc, (=0xeb8)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      Function_2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_223ff22
	ldr     r4, [pc, #0x60] @ 0x223ffc0, (=0x2245e1c)
	ldr     r7, [pc, #0x60] @ 0x223ffc4, (=0xef4)
	mov     r6, #0x0
.thumb
branch_223ff64: @ 223ff64 :thumb
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r4, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	ldr     r1, [pc, #0x4c] @ 0x223ffc4, (=0xef4)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [pc, #0x3c] @ 0x223ffc4, (=0xef4)
	mov     r1, r6
	ldr     r0, [r5, r0]
	add     r1, #0x26
	bl      Function_2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      Function_2021e80
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_223ff64
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223ffa6


.align 2


.word 0xd54 @ 0x223ffa8
.word 0x116 @ 0x223ffac
.word 0x2245ed4 @ 0x223ffb0
.word 0x2245ed6 @ 0x223ffb4
.word 0xdc8 @ 0x223ffb8
.word 0xeb8 @ 0x223ffbc
.word 0x2245e1c @ 0x223ffc0
.word 0xef4 @ 0x223ffc4
.thumb
Function_223ffc8: @ 223ffc8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [pc, #0x4c] @ 0x224001c, (=0xef4)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223ffd2: @ 223ffd2 :thumb
	ldr     r0, [r4, r7]
	bl      Function_2021bd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_223ffd2
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      Function_2021bd4
	mov     r7, #0x39
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #6
.thumb
branch_223fff2: @ 223fff2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2240020, (=0xdc8)
	ldr     r0, [r4, r0]
	bl      Function_2021bd4
	ldr     r0, [r4, r7]
	bl      Function_2021bd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x1e
	blt     branch_223fff2
	ldr     r6, [pc, #0x18] @ 0x2240024, (=0xeb8)
	mov     r4, #0x0
.thumb
branch_224000c: @ 224000c :thumb
	ldr     r0, [r5, r6]
	bl      Function_2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_224000c
	pop     {r3-r7,pc}
@ 0x224001c

.word 0xef4 @ 0x224001c
.word 0xdc8 @ 0x2240020
.word 0xeb8 @ 0x2240024
.thumb
Function_2240028: @ 2240028 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r3, #0x1
	mov     r4, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x118] @ 0x224015c, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0x10c] @ 0x224015c, (=0xf1c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x0
	ldr     r0, [pc, #0x104] @ 0x2240160, (=0xf0e00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x100] @ 0x2240164, (=0xbb4)
	ldr     r0, [pc, #0xf8] @ 0x224015c, (=0xf1c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_2245900
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	ldr     r1, [pc, #0xe8] @ 0x2240168, (=0xf2c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x5
	bl      Function_201a7e8
	ldr     r0, [pc, #0xd8] @ 0x2240168, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0xd0] @ 0x2240168, (=0xf2c)
	add     r0, r4, r0
	bl      Function_201a954
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	ldr     r1, [pc, #0xc0] @ 0x224016c, (=0xefc)
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	add     r0, #0xfc
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0xac] @ 0x224016c, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x94] @ 0x2240170, (=0x13f)
	ldr     r1, [pc, #0x98] @ 0x2240174, (=0x103c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [pc, #0x88] @ 0x2240174, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x70] @ 0x2240178, (=0x165)
	ldr     r1, [pc, #0x74] @ 0x224017c, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x1
	mov     r3, #0x19
	bl      Function_201a7e8
	ldr     r0, [pc, #0x64] @ 0x224017c, (=0xf4c)
	mov     r1, #0x6
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x1
	ldr     r0, [pc, #0x5c] @ 0x2240180, (=0x10306)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x58] @ 0x2240184, (=0xbac)
	ldr     r0, [pc, #0x50] @ 0x224017c, (=0xf4c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_2245900
	mov     r1, #0xd
	str     r1, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x40] @ 0x2240188, (=0x171)
	ldr     r1, [pc, #0x44] @ 0x224018c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x224015a


.align 2


.word 0xf1c @ 0x224015c
.word 0xf0e00 @ 0x2240160
.word 0xbb4 @ 0x2240164
.word 0xf2c @ 0x2240168
.word 0xefc @ 0x224016c
.word 0x13f @ 0x2240170
.word 0x103c @ 0x2240174
.word 0x165 @ 0x2240178
.word 0xf4c @ 0x224017c
.word 0x10306 @ 0x2240180
.word 0xbac @ 0x2240184
.word 0x171 @ 0x2240188
.word 0xf3c @ 0x224018c
.thumb
Function_2240190: @ 2240190 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x22401c8, (=0x103c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x2c] @ 0x22401cc, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x28] @ 0x22401d0, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x24] @ 0x22401d4, (=0xefc)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x20] @ 0x22401d8, (=0xf2c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x1c] @ 0x22401dc, (=0xf1c)
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x22401c6


.align 2


.word 0x103c @ 0x22401c8
.word 0xf4c @ 0x22401cc
.word 0xf3c @ 0x22401d0
.word 0xefc @ 0x22401d4
.word 0xf2c @ 0x22401d8
.word 0xf1c @ 0x22401dc
.thumb
Function_22401e0: @ 22401e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x12
	mov     r1, #0x3e
	bl      Function_2023790
	ldr     r1, [pc, #0x60] @ 0x2240250, (=0xba8)
	str     r0, [r4, r1]
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x5
	bne     branch_2240214
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x15
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x44] @ 0x2240254, (=0xbb4)
	str     r0, [r4, r1]
	b       branch_2240226
@ 0x2240214

.thumb
branch_2240214: @ 2240214 :thumb
	cmp     r0, #0x6
	bne     branch_2240226
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x11
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x30] @ 0x2240254, (=0xbb4)
	str     r0, [r4, r1]
.thumb
branch_2240226: @ 2240226 :thumb
	ldr     r0, [pc, #0x30] @ 0x2240258, (=0xb94)
	mov     r1, #0x67
	ldr     r0, [r4, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x28] @ 0x224025c, (=0xbac)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x28] @ 0x2240260, (=0x116)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x1e
	bne     branch_2240240
	mov     r1, #0x0
	strh    r1, [r4, r0]
.thumb
branch_2240240: @ 2240240 :thumb
	mov     r0, #0x3e
	mov     r1, #0x78
	bl      malloc
	ldr     r1, [pc, #0x18] @ 0x2240264, (=0x10a8)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x224024e


.align 2


.word 0xba8 @ 0x2240250
.word 0xbb4 @ 0x2240254
.word 0xb94 @ 0x2240258
.word 0xbac @ 0x224025c
.word 0x116 @ 0x2240260
.word 0x10a8 @ 0x2240264
.thumb
Function_2240268: @ 2240268 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2240298, (=0x10a8)
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [pc, #0x24] @ 0x224029c, (=0xba8)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x18] @ 0x22402a0, (=0xbac)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x14] @ 0x22402a4, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x2240298

.word 0x10a8 @ 0x2240298
.word 0xba8 @ 0x224029c
.word 0xbac @ 0x22402a0
.word 0xbb4 @ 0x22402a4
.thumb
Function_22402a8: @ 22402a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_22402b8
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
.thumb
branch_22402b8: @ 22402b8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22402bc

.thumb
Function_22402bc: @ 22402bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_22404f0
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x5
	bne     branch_22403cc
	ldr     r0, [pc, #0x210] @ 0x22404e0, (=RAM_21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_22402ec
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0x1fc] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x22402ec

.thumb
branch_22402ec: @ 22402ec :thumb
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_2240336
	ldr     r0, [pc, #0x1f0] @ 0x22404e8, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1e
	bne     branch_2240310
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0x1d8] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x2240310

.thumb
branch_2240310: @ 2240310 :thumb
	cmp     r0, #0x1f
	beq     branch_2240336
	ldr     r0, [pc, #0x1cc] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22412f4
	cmp     r0, #0x1
	beq     branch_2240338
	cmp     r0, #0x2
	beq     branch_22403ae
.thumb
branch_2240336: @ 2240336 :thumb
	b       branch_22404da
@ 0x2240338

.thumb
branch_2240338: @ 2240338 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_224121c
	cmp     r0, #0x0
	beq     branch_2240390
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200b5cc
	ldr     r0, [pc, #0x178] @ 0x22404ec, (=0xf0f)
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x16
	mov     r2, #0x1
	str     r3, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x7
	bl      Function_223c3f4
	b       branch_22404da
@ 0x2240390

.thumb
branch_2240390: @ 2240390 :thumb
	ldr     r0, [pc, #0x158] @ 0x22404ec, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404da
@ 0x22403ae

.thumb
branch_22403ae: @ 22403ae :thumb
	ldr     r0, [pc, #0x13c] @ 0x22404ec, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1b
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404da
@ 0x22403cc

.thumb
branch_22403cc: @ 22403cc :thumb
	cmp     r0, #0x6
	bne     branch_2240432
	ldr     r0, [pc, #0x10c] @ 0x22404e0, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22403f0
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0xf8] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x22403f0

.thumb
branch_22403f0: @ 22403f0 :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22404da
	ldr     r2, [pc, #0xf0] @ 0x22404e8, (=0x116)
	ldrh    r3, [r5, r2]
	cmp     r3, #0x1e
	bne     branch_2240414
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0xd4] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x2240414

.thumb
branch_2240414: @ 2240414 :thumb
	cmp     r3, #0x1f
	beq     branch_22404da
	ldr     r1, [r5, #0x0]
	.hword  0x1e92 @ sub r2, r2, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r2, [r5, r2]
	ldr     r1, [r1, #0xc]
	bl      Function_22412f4
	cmp     r0, #0x0
	beq     branch_22404d4
	cmp     r0, #0x1
	beq     branch_2240434
	cmp     r0, #0x2
	beq     branch_22404d4
.thumb
branch_2240432: @ 2240432 :thumb
	b       branch_22404da
@ 0x2240434

.thumb
branch_2240434: @ 2240434 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r2, #0x12
	lsl     r2, r2, #4
	mov     r1, #0xd1
	ldr     r3, [r5, r2]
	lsl     r1, r1, #2
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r1, r5, r1
	mul     r2, r3
	add     r1, r1, r2
	mov     r4, r0
	bl      Function_2241384
	cmp     r0, #0x0
	beq     branch_22404cc
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_224121c
	cmp     r0, #0x0
	beq     branch_22404ae
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r4
	bl      Function_200b5cc
	ldr     r0, [pc, #0x60] @ 0x22404ec, (=0xf0f)
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x1
	str     r3, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x9
	bl      Function_223c3f4
	ldr     r0, [pc, #0x3c] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x22404ae

.thumb
branch_22404ae: @ 22404ae :thumb
	ldr     r0, [pc, #0x3c] @ 0x22404ec, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404da
@ 0x22404cc

.thumb
branch_22404cc: @ 22404cc :thumb
	ldr     r0, [pc, #0x14] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
	b       branch_22404da
@ 0x22404d4

.thumb
branch_22404d4: @ 22404d4 :thumb
	ldr     r0, [pc, #0xc] @ 0x22404e4, (=0x5dc)
	bl      Function_2005748
.thumb
branch_22404da: @ 22404da :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22404e0

.word RAM_21bf67c @ 0x22404e0
.word 0x5dc @ 0x22404e4
.word 0x116 @ 0x22404e8
.word 0xf0f @ 0x22404ec
.thumb
Function_22404f0: @ 22404f0 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xbc] @ 0x22405b4, (=RAM_21bf67c)
	mov     r4, #0x0
	ldr     r0, [r0, #0x48]
	mov     r1, #0x40
	mov     r6, r4
	tst     r1, r0
	beq     branch_2240506
	mov     r6, #0x1
	b       branch_2240522
@ 0x2240506

.thumb
branch_2240506: @ 2240506 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_2240510
	mov     r6, #0x2
	b       branch_2240522
@ 0x2240510

.thumb
branch_2240510: @ 2240510 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_224051a
	mov     r6, #0x3
	b       branch_2240522
@ 0x224051a

.thumb
branch_224051a: @ 224051a :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_2240522
	mov     r6, #0x4
.thumb
branch_2240522: @ 2240522 :thumb
	cmp     r6, #0x0
	beq     branch_2240568
	ldr     r0, [pc, #0x90] @ 0x22405b8, (=0x116)
	ldr     r1, [pc, #0x90] @ 0x22405bc, (=0x2245f54)
	ldrh    r3, [r5, r0]
	.hword  0x1e76 @ sub r6, r6, #0x1
	lsl     r2, r3, #2
	add     r1, r1, r2
	ldrb    r2, [r6, r1]
	cmp     r2, r3
	beq     branch_2240568
	cmp     r2, #0x63
	beq     branch_2240540
	cmp     r2, #0x65
	bne     branch_2240564
.thumb
branch_2240540: @ 2240540 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r1, #0x13
	sub     r2, #0x64
	bl      Function_22405cc
	mov     r1, #0x45
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	ldrh    r1, [r5, r1]
	mov     r0, r5
	bl      Function_2240fa0
	ldr     r0, [pc, #0x60] @ 0x22405c0, (=0x5dc)
	bl      Function_2005748
	b       branch_2240568
@ 0x2240564

.thumb
branch_2240564: @ 2240564 :thumb
	mov     r4, #0x1
	strh    r2, [r5, r0]
.thumb
branch_2240568: @ 2240568 :thumb
	cmp     r4, #0x0
	beq     branch_224058a
	ldr     r0, [pc, #0x50] @ 0x22405c0, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x44] @ 0x22405b8, (=0x116)
	ldr     r1, [pc, #0x4c] @ 0x22405c4, (=0x2245ed4)
	ldrh    r0, [r5, r0]
	ldr     r2, [pc, #0x4c] @ 0x22405c8, (=0x2245ed6)
	lsl     r3, r0, #2
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldrh    r1, [r1, r3]
	ldrh    r2, [r2, r3]
	ldr     r0, [r5, r0]
	bl      Function_223c3fc
.thumb
branch_224058a: @ 224058a :thumb
	ldr     r0, [pc, #0x2c] @ 0x22405b8, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1f
	beq     branch_2240596
	cmp     r0, #0x5
	bhi     branch_22405a4
.thumb
branch_2240596: @ 2240596 :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_2021e80
	pop     {r4-r6,pc}
@ 0x22405a4

.thumb
branch_22405a4: @ 22405a4 :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021e80
	pop     {r4-r6,pc}
@ 0x22405b2


.align 2


.word RAM_21bf67c @ 0x22405b4
.word 0x116 @ 0x22405b8
.word 0x2245f54 @ 0x22405bc
.word 0x5dc @ 0x22405c0
.word 0x2245ed4 @ 0x22405c4
.word 0x2245ed6 @ 0x22405c8
.thumb
Function_22405cc: @ 22405cc :thumb
	add     r0, r0, r2
	bpl     branch_22405d4
	.hword  0x1e48 @ sub r0, r1, #0x1
	bx      lr
@ 0x22405d4

.thumb
branch_22405d4: @ 22405d4 :thumb
	cmp     r0, r1
	bne     branch_22405da
	mov     r0, #0x0
.thumb
branch_22405da: @ 22405da :thumb
	bx      lr
@ 0x22405dc

.thumb
Function_22405dc: @ 22405dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x0
	add     r2, sp, #0x8
	strb    r0, [r2, #0x8]
	mov     r0, #0x1
	strb    r0, [r2, #0x9]
	mov     r0, #0x3
	strb    r0, [r2, #0xa]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xf
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0x30
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xc0
	bic     r3, r1
	mov     r1, #0x3e
	strb    r3, [r2, #0xb]
	bl      Function_2013a04
	ldr     r1, [pc, #0x68] @ 0x2240678, (=0x106c)
	mov     r2, #0x5e
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x64] @ 0x224067c, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2013a4c
	ldr     r0, [pc, #0x54] @ 0x2240678, (=0x106c)
	ldr     r1, [pc, #0x58] @ 0x224067c, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x5f
	mov     r3, #0x2
	bl      Function_2013a4c
	ldr     r0, [pc, #0x44] @ 0x2240678, (=0x106c)
	ldr     r1, [pc, #0x48] @ 0x224067c, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x60
	mov     r3, #0x3
	bl      Function_2013a4c
	ldr     r0, [pc, #0x34] @ 0x2240678, (=0x106c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	mov     r2, #0x1f
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x34] @ 0x2240680, (=0xf3c)
	mov     r3, #0xb
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      Function_200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      Function_2001b7c
	ldr     r1, [pc, #0x18] @ 0x2240684, (=0x1074)
	str     r0, [r4, r1]
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2240678

.word 0x106c @ 0x2240678
.word 0xb94 @ 0x224067c
.word 0xf3c @ 0x2240680
.word 0x1074 @ 0x2240684
.thumb
Function_2240688: @ 2240688 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x188] @ 0x2240818, (=0x1074)
	ldr     r0, [r5, r0]
	bl      Function_2001be0
	cmp     r0, #0x3
	bhi     branch_22406aa
	cmp     r0, #0x1
	bcc     branch_22406a8
	beq     branch_22406b6
	cmp     r0, #0x2
	beq     branch_22406e2
	cmp     r0, #0x3
	beq     branch_22406b2
.thumb
branch_22406a8: @ 22406a8 :thumb
	b       branch_2240810
@ 0x22406aa

.thumb
branch_22406aa: @ 22406aa :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_22406b4
.thumb
branch_22406b2: @ 22406b2 :thumb
	b       branch_22407e6
@ 0x22406b4

.thumb
branch_22406b4: @ 22406b4 :thumb
	b       branch_2240810
@ 0x22406b6

.thumb
branch_22406b6: @ 22406b6 :thumb
	ldr     r0, [pc, #0x160] @ 0x2240818, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x158] @ 0x224081c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x154] @ 0x2240820, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x5
	bl      Function_223c4c0
	b       branch_2240810
@ 0x22406e2

.thumb
branch_22406e2: @ 22406e2 :thumb
	ldr     r0, [pc, #0x134] @ 0x2240818, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x12c] @ 0x224081c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x128] @ 0x2240820, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r4, r0
	bl      Function_224123c
	cmp     r0, #0x0
	beq     branch_224073a
	ldr     r0, [pc, #0x104] @ 0x2240824, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240810
@ 0x224073a

.thumb
branch_224073a: @ 224073a :thumb
	mov     r0, r4
	bl      Function_2241278
	cmp     r0, #0x0
	beq     branch_2240762
	ldr     r0, [pc, #0xdc] @ 0x2240824, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xaa
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240810
@ 0x2240762

.thumb
branch_2240762: @ 2240762 :thumb
	mov     r0, r4
	bl      Function_22412c8
	cmp     r0, #0x0
	beq     branch_224078a
	ldr     r0, [pc, #0xb4] @ 0x2240824, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xab
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240810
@ 0x224078a

.thumb
branch_224078a: @ 224078a :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r4, #0x0
	bl      Function_22411d0
	cmp     r0, #0x0
	beq     branch_22407b8
	ldr     r1, [pc, #0x8c] @ 0x2240828, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa2
	mov     r2, r4
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_22407b8
	mov     r0, #0xe
	mov     r4, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_22407b8: @ 22407b8 :thumb
	cmp     r4, #0x0
	bne     branch_2240810
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_223c4c0
	b       branch_2240810
@ 0x22407e6

.thumb
branch_22407e6: @ 22407e6 :thumb
	ldr     r0, [pc, #0x30] @ 0x2240818, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x28] @ 0x224081c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x24] @ 0x2240820, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x28] @ 0x224082c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_2240810: @ 2240810 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240816


.align 2


.word 0x1074 @ 0x2240818
.word 0x106c @ 0x224081c
.word 0xf3c @ 0x2240820
.word 0xf0f @ 0x2240824
.word 0x116 @ 0x2240828
.word 0xefc @ 0x224082c
.thumb
Function_2240830: @ 2240830 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x0
	add     r2, sp, #0x8
	strb    r0, [r2, #0x8]
	mov     r0, #0x1
	strb    r0, [r2, #0x9]
	mov     r0, #0x3
	strb    r0, [r2, #0xa]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xf
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0x30
	bic     r3, r1
	strb    r3, [r2, #0xb]
	ldrb    r3, [r2, #0xb]
	mov     r1, #0xc0
	bic     r3, r1
	mov     r1, #0x3e
	strb    r3, [r2, #0xb]
	bl      Function_2013a04
	ldr     r1, [pc, #0x74] @ 0x22408d8, (=0x106c)
	mov     r2, #0x54
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x70] @ 0x22408dc, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2013a4c
	ldr     r0, [pc, #0x60] @ 0x22408d8, (=0x106c)
	ldr     r1, [pc, #0x64] @ 0x22408dc, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x55
	mov     r3, #0x2
	bl      Function_2013a4c
	ldr     r0, [pc, #0x50] @ 0x22408d8, (=0x106c)
	ldr     r1, [pc, #0x54] @ 0x22408dc, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x56
	mov     r3, #0x3
	bl      Function_2013a4c
	ldr     r0, [pc, #0x40] @ 0x22408d8, (=0x106c)
	mov     r1, #0xf
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x40] @ 0x22408e0, (=0xf3c)
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x38] @ 0x22408e0, (=0xf3c)
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      Function_2001b7c
	ldr     r1, [pc, #0x18] @ 0x22408e4, (=0x1074)
	str     r0, [r4, r1]
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x22408d6


.align 2


.word 0x106c @ 0x22408d8
.word 0xb94 @ 0x22408dc
.word 0xf3c @ 0x22408e0
.word 0x1074 @ 0x22408e4
.thumb
Function_22408e8: @ 22408e8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x164] @ 0x2240a54, (=0x1074)
	ldr     r0, [r5, r0]
	bl      Function_2001be0
	cmp     r0, #0x3
	bhi     branch_224090a
	cmp     r0, #0x1
	bcc     branch_2240908
	beq     branch_2240916
	cmp     r0, #0x2
	beq     branch_2240942
	cmp     r0, #0x3
	beq     branch_2240912
.thumb
branch_2240908: @ 2240908 :thumb
	b       branch_2240a4e
@ 0x224090a

.thumb
branch_224090a: @ 224090a :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2240914
.thumb
branch_2240912: @ 2240912 :thumb
	b       branch_2240a24
@ 0x2240914

.thumb
branch_2240914: @ 2240914 :thumb
	b       branch_2240a4e
@ 0x2240916

.thumb
branch_2240916: @ 2240916 :thumb
	ldr     r0, [pc, #0x13c] @ 0x2240a54, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x134] @ 0x2240a58, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x130] @ 0x2240a5c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x6
	bl      Function_223c4c0
	b       branch_2240a4e
@ 0x2240942

.thumb
branch_2240942: @ 2240942 :thumb
	ldr     r0, [pc, #0x110] @ 0x2240a54, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x108] @ 0x2240a58, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x104] @ 0x2240a5c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r4, r0
	bl      Function_224123c
	cmp     r0, #0x0
	beq     branch_224099a
	ldr     r0, [pc, #0xe0] @ 0x2240a60, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4e
@ 0x224099a

.thumb
branch_224099a: @ 224099a :thumb
	mov     r0, r4
	bl      Function_2241278
	cmp     r0, #0x0
	beq     branch_22409c2
	ldr     r0, [pc, #0xb8] @ 0x2240a60, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xaa
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4e
@ 0x22409c2

.thumb
branch_22409c2: @ 22409c2 :thumb
	mov     r0, r4
	bl      Function_22412c8
	cmp     r0, #0x0
	beq     branch_22409ea
	ldr     r0, [pc, #0x90] @ 0x2240a60, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xab
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4e
@ 0x22409ea

.thumb
branch_22409ea: @ 22409ea :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r4, #0x0
	bl      Function_22411d0
	cmp     r0, #0x0
	beq     branch_2240a18
	ldr     r1, [pc, #0x68] @ 0x2240a64, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      GetAdrOfPkmnInParty
	mov     r1, #0xa2
	mov     r2, r4
	bl      GetPkmnData
	cmp     r0, #0x0
	beq     branch_2240a18
	mov     r0, #0xb
	mov     r4, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_2240a18: @ 2240a18 :thumb
	cmp     r4, #0x0
	bne     branch_2240a4e
	mov     r0, r5
	bl      Function_2240bb0
	b       branch_2240a4e
@ 0x2240a24

.thumb
branch_2240a24: @ 2240a24 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2240a54, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2001bc4
	ldr     r0, [pc, #0x28] @ 0x2240a58, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x24] @ 0x2240a5c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x24] @ 0x2240a68, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_2240a4e: @ 2240a4e :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240a54

.word 0x1074 @ 0x2240a54
.word 0x106c @ 0x2240a58
.word 0xf3c @ 0x2240a5c
.word 0xf0f @ 0x2240a60
.word 0x116 @ 0x2240a64
.word 0xefc @ 0x2240a68
.thumb
Function_2240a6c: @ 2240a6c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_2240a7c
	cmp     r0, #0x8
	bne     branch_2240a9c
.thumb
branch_2240a7c: @ 2240a7c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [pc, #0x28] @ 0x2240ac0, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2240ab4
@ 0x2240a9c

.thumb
branch_2240a9c: @ 2240a9c :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
.thumb
branch_2240ab4: @ 2240ab4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240abe


.align 2


.word 0x10b0 @ 0x2240ac0
.thumb
Function_2240ac4: @ 2240ac4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240ae0, (=0x1ad)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240ae4, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240ade


.align 2


.word 0x1ad @ 0x2240ae0
.word 0x1070 @ 0x2240ae4
.thumb
Function_2240ae8: @ 2240ae8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2240b1c, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240b18
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240b0a
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_2240b18
@ 0x2240b0a

.thumb
branch_2240b0a: @ 2240b0a :thumb
	mov     r0, #0x2
	mov     r1, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
.thumb
branch_2240b18: @ 2240b18 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240b1c

.word 0x1070 @ 0x2240b1c
.thumb
Function_2240b20: @ 2240b20 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x20] @ 0x2240b48, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, #0x19
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0xc
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240b46


.align 2


.word 0xf0f @ 0x2240b48
.thumb
Function_2240b4c: @ 2240b4c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240b68, (=0x1ad)
	mov     r1, #0xd
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240b6c, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240b66


.align 2


.word 0x1ad @ 0x2240b68
.word 0x1070 @ 0x2240b6c
.thumb
Function_2240b70: @ 2240b70 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x2240ba8, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240ba2
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240b9c
	ldr     r0, [pc, #0x1c] @ 0x2240bac, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200e084
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_2240ba2
@ 0x2240b9c

.thumb
branch_2240b9c: @ 2240b9c :thumb
	mov     r0, r4
	bl      Function_2240bb0
.thumb
branch_2240ba2: @ 2240ba2 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240ba6


.align 2


.word 0x1070 @ 0x2240ba8
.word 0x103c @ 0x2240bac
.thumb
Function_2240bb0: @ 2240bb0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2241498
	cmp     r0, #0x0
	beq     branch_2240c08
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r4, r0]
	cmp     r0, #0x12
	beq     branch_2240c08
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2240c08
	ldr     r0, [pc, #0x68] @ 0x2240c50, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1c
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2240c08

.thumb
branch_2240c08: @ 2240c08 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x2c] @ 0x2240c54, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0x9
	bl      Function_223c4c0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_22413bc
	mov     r0, #0x47
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240c50

.word 0xf0f @ 0x2240c50
.word 0x10b0 @ 0x2240c54
.thumb
Function_2240c58: @ 2240c58 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x20] @ 0x2240c80, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, #0x19
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d58
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0xf
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240c7e


.align 2


.word 0xf0f @ 0x2240c80
.thumb
Function_2240c84: @ 2240c84 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240ca0, (=0x1ad)
	mov     r1, #0xd
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240ca4, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x10
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240c9e


.align 2


.word 0x1ad @ 0x2240ca0
.word 0x1070 @ 0x2240ca4
.thumb
Function_2240ca8: @ 2240ca8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x2240d00, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240cfc
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240cd4
	ldr     r0, [pc, #0x3c] @ 0x2240d04, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200e084
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_2240cfc
@ 0x2240cd4

.thumb
branch_2240cd4: @ 2240cd4 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_223c4c0
.thumb
branch_2240cfc: @ 2240cfc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240d00

.word 0x1070 @ 0x2240d00
.word 0x103c @ 0x2240d04
.thumb
Function_2240d08: @ 2240d08 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2240d24, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2240d20
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2240d20: @ 2240d20 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240d24

.word 0xbe4 @ 0x2240d24
.thumb
Function_2240d28: @ 2240d28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2240d50, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2240d4a
	ldr     r0, [pc, #0x14] @ 0x2240d54, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200e084
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2240d4a: @ 2240d4a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240d4e


.align 2


.word 0xbe4 @ 0x2240d50
.word 0x103c @ 0x2240d54
.thumb
Function_2240d58: @ 2240d58 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x2240dc0, (=0xb94)
	mov     r6, r2
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0xb9
	mov     r7, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      Function_200c388
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	bne     branch_2240d84
	ldr     r0, [pc, #0x40] @ 0x2240dc4, (=0xefc)
	b       branch_2240d86
@ 0x2240d84

.thumb
branch_2240d84: @ 2240d84 :thumb
	ldr     r0, [pc, #0x40] @ 0x2240dc8, (=0x103c)
.thumb
branch_2240d86: @ 2240d86 :thumb
	add     r4, r5, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r2, #0xbb
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0x18] @ 0x2240dcc, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r7
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2240dc0

.word 0xb94 @ 0x2240dc0
.word 0xefc @ 0x2240dc4
.word 0x103c @ 0x2240dc8
.word 0xbe4 @ 0x2240dcc
.thumb
Function_2240dd0: @ 2240dd0 :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, r3
	bl      Function_2006cb8_LoadFileInMemory
	mov     r4, r0
	beq     branch_2240df2
	mov     r1, r5
	blx     Function_20a7164
	cmp     r0, #0x0
	bne     branch_2240df2
	mov     r0, r4
	bl      free
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2240df2

.thumb
branch_2240df2: @ 2240df2 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2240df6


.align 2, 0


.thumb
Function_2240df8: @ 2240df8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r2
	mov     r1, r6
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r7, r3
	ldr     r4, [sp, #0x28]
	bl      Function_2079d8c
	mov     r1, r0
	ldr     r0, [sp, #0x24]
	add     r2, sp, #0x8
	mov     r3, #0x3e
	bl      Function_2240dd0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	add     r1, #0xc
	lsl     r2, r2, #8
	blx     MIi_CpuCopyFast
	lsl     r0, r7, #4
	add     r0, #0xc
	lsl     r0, r0, #5
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	bl      GetPokeIconPaletteNr
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	bl      free
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2240e50

.thumb
Function_2240e50: @ 2240e50 :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      InitPkmnLevel
	strb    r0, [r4, #0x3]
	pop     {r4,pc}
@ 0x2240e5c

.thumb
Function_2240e5c: @ 2240e5c :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x48] @ 0x2240ea8, (=0x10b4)
	mov     r6, #0x2
	lsl     r6, r6, #8
	mov     r7, r6
	ldr     r5, [r0, r1]
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	add     r7, #0xc
.thumb
branch_2240e6e: @ 2240e6e :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2240e92
	mov     r0, r5
	add     r0, #0xc
	mov     r1, r6
	blx     DC_FlushRange
	mov     r0, r5
	ldr     r1, [r5, #0x0]
	add     r0, #0xc
	mov     r2, r6
	blx     GX_LoadOBJ
	ldr     r0, [r5, #0x8]
	ldr     r1, [r5, #0x4]
	bl      Function_2021e90
.thumb
branch_2240e92: @ 2240e92 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x1e
	blt     branch_2240e6e
	ldr     r1, [pc, #0xc] @ 0x2240ea8, (=0x10b4)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      free
	pop     {r3-r7,pc}
@ 0x2240ea6


.align 2


.word 0x10b4 @ 0x2240ea8



.thumb
Function_2240eac: @ 2240eac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r1, [sp, #0xc]
	mov     r7, r2
	mov     r6, r3
	ldr     r4, [sp, #0x40]
	bl      InitEncryptPkmnData_Part1
	mov     r0, r5
	mov     r1, #0xac
	mov     r2, #0x0
	bl      GetBoxPkmnData
	str     r0, [sp, #0x1c]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetBoxPkmnData
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetBoxPkmnData
	str     r0, [sp, #0x18]
	ldrh    r0, [r6, #0x0]
	mov     r1, #0x6f
	mov     r2, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      GetBoxPkmnData
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2240f16
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
branch_2240f16: @ 2240f16 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      InitEncryptPkmnData_Part1Again
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2240f84
	ldr     r0, [sp, #0xc]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x3c]
	ldr     r2, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x44]
	ldr     r3, [sp, #0x38]
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x0]
	bl      Function_2240df8
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2240f78
	mov     r0, r7
	mov     r1, #0x1
	bl      Function_2021cac
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_2240f6c
	mov     r0, r7
	mov     r1, #0x29
	bl      Function_2021d6c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f6c

.thumb
branch_2240f6c: @ 2240f6c :thumb
	mov     r0, r7
	mov     r1, #0x28
	bl      Function_2021d6c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f78

.thumb
branch_2240f78: @ 2240f78 :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2021cac
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f84

.thumb
branch_2240f84: @ 2240f84 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, r7
	mov     r1, #0x0
	bl      Function_2021cac
	ldr     r0, [sp, #0x44]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f9e


.align 2, 0


.thumb
Function_2240fa0: @ 2240fa0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	ldr     r1, [pc, #0x1f4] @ 0x22411a4, (=0x3d68)
	str     r0, [sp, #0x20]
	mov     r0, #0x3
	bl      malloc2
	ldr     r1, [pc, #0x1f0] @ 0x22411a8, (=0x10b4)
	str     r0, [sp, #0x18]
	str     r0, [r5, r1]

	mov     r0, #PlPokeIcon_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	blt     branch_2241060
	cmp     r0, #0x12
	bge     branch_2241060
	ldr     r6, [pc, #0x1d8] @ 0x22411ac, (=0x10a8)
	mov     r4, #0x0
branch_2240fd4: @ 2240fd4 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r4
	bl      Function_2079c9c
	ldr     r2, [r5, r6]
	lsl     r1, r4, #2
	add     r1, r2, r1
	bl      Function_2240e50
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_2240fd4
	mov     r4, #0x0
.thumb
branch_2240ff4: @ 2240ff4 :thumb
	ldr     r0, [pc, #0x1b4] @ 0x22411ac, (=0x10a8)
	lsl     r6, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	strh    r0, [r1, r6]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r4
	add     r7, r5, r6
	bl      Function_2079c9c
	ldr     r1, [sp, #0x1c]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x198] @ 0x22411ac, (=0x10a8)
	mov     r2, r4
	ldr     r1, [r5, r1]
	add     r3, sp, #0x2c
	add     r1, r1, r6
	str     r1, [sp, #0x8]
	mov     r1, #0x83
	lsl     r1, r1, #2
	mul     r2, r1
	ldr     r1, [sp, #0x18]
	lsl     r6, r4, #1
	add     r1, r1, r2
	str     r1, [sp, #0xc]
	ldr     r1, [pc, #0x184] @ 0x22411b0, (=0xdc8)
	mov     r2, #0x39
	lsl     r2, r2, #6
	ldr     r1, [r7, r1]
	ldr     r2, [r7, r2]
	add     r3, r3, r6
	bl      Function_2240eac
	cmp     r4, #0x6
	bcs     branch_2241048
	ldr     r0, [pc, #0x174] @ 0x22411b4, (=0xeb8)
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	bl      Function_2021cac
.thumb
branch_2241048: @ 2241048 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_2240ff4
	ldr     r2, [pc, #0x164] @ 0x22411b8, (=0xba8)
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r5, r2]
	bl      Function_2079af4
	b       branch_224114c
@ 0x2241060

.thumb
branch_2241060: @ 2241060 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	mov     r4, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_22410f0
.thumb
branch_2241070: @ 2241070 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      GetAdrOfPkmnInParty
	str     r0, [sp, #0x24]
	bl      Function_2076b10_Dummy
	ldr     r1, [pc, #0x128] @ 0x22411ac, (=0x10a8)
	lsl     r6, r4, #2
	ldr     r1, [r5, r1]
	str     r0, [sp, #0x28]
	add     r1, r1, r6
	bl      Function_2240e50
	mov     r2, #0x39
	ldr     r0, [sp, #0x1c]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x114] @ 0x22411ac, (=0x10a8)
	mov     r1, r4
	ldr     r0, [r5, r0]
	add     r7, r5, r6
	add     r0, r0, r6
	str     r0, [sp, #0x8]
	mov     r0, #0x83
	lsl     r0, r0, #2
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	lsl     r2, r2, #6
	add     r0, r0, r1
	str     r0, [sp, #0xc]
	ldr     r1, [pc, #0xfc] @ 0x22411b0, (=0xdc8)
	ldr     r0, [sp, #0x28]
	ldr     r1, [r7, r1]
	ldr     r2, [r7, r2]
	lsl     r6, r4, #1
	add     r3, sp, #0x2c
	add     r3, r3, r6
	bl      Function_2240eac
	ldr     r0, [sp, #0x24]
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	ldr     r0, [pc, #0xe4] @ 0x22411b4, (=0xeb8)
	beq     branch_22410dc
	ldr     r0, [r7, r0]
	mov     r1, #0x1
	bl      Function_2021cac
	b       branch_22410e4
@ 0x22410dc

.thumb
branch_22410dc: @ 22410dc :thumb
	ldr     r0, [r7, r0]
	mov     r1, #0x0
	bl      Function_2021cac
.thumb
branch_22410e4: @ 22410e4 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [sp, #0x14]
	cmp     r4, r0
	blt     branch_2241070
.thumb
branch_22410f0: @ 22410f0 :thumb
	cmp     r4, #0x1e
	bcs     branch_224113e
	mov     r7, #0x0
.thumb
branch_22410f6: @ 22410f6 :thumb
	ldr     r0, [pc, #0xb4] @ 0x22411ac, (=0x10a8)
	lsl     r1, r4, #2
	ldr     r0, [r5, r0]
	add     r6, r5, r1
	strh    r7, [r0, r1]
	ldr     r0, [pc, #0xac] @ 0x22411b0, (=0xdc8)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      Function_2021cac
	mov     r0, #0x39
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      Function_2021cac
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r1, r0, r1
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	cmp     r4, #0x6
	bcs     branch_2241134
	ldr     r0, [pc, #0x88] @ 0x22411b4, (=0xeb8)
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	bl      Function_2021cac
.thumb
branch_2241134: @ 2241134 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_22410f6
.thumb
branch_224113e: @ 224113e :thumb
	ldr     r2, [pc, #0x7c] @ 0x22411bc, (=0xb94)
	mov     r1, #0x59
	ldr     r0, [r5, r2]
	add     r2, #0x14
	ldr     r2, [r5, r2]
	bl      Function_200b1b8_CallMsgDecrypt
.thumb
branch_224114c: @ 224114c :thumb
	ldr     r0, [sp, #0x1c]
	bl      Call_FS_CloseFile
	ldr     r0, [pc, #0x6c] @ 0x22411c0, (=0xf2c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x22411c4, (=0x10200)
	ldr     r1, [pc, #0x54] @ 0x22411b8, (=0xba8)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x22411c0, (=0xf2c)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x5
	bl      Function_2245900
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x6
	bne     branch_224119a
	mov     r3, #0x12
	lsl     r3, r3, #4
	mov     r2, #0xd1
	ldr     r4, [r5, r3]
	ldr     r0, [pc, #0x28] @ 0x22411ac, (=0x10a8)
	lsl     r2, r2, #2
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r1, [pc, #0x24] @ 0x22411b0, (=0xdc8)
	add     r2, r5, r2
	mul     r3, r4
	add     r2, r2, r3
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x18]
	add     r1, r5, r1
	bl      Function_2241464
.thumb
branch_224119a: @ 224119a :thumb
	ldr     r1, [pc, #0x2c] @ 0x22411c8, (=0x2240e5d)
	ldr     r0, [pc, #0x2c] @ 0x22411cc, (=0x10b8)
	str     r1, [r5, r0]
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x22411a4

.word 0x3d68 @ 0x22411a4
.word 0x10b4 @ 0x22411a8
.word 0x10a8 @ 0x22411ac
.word 0xdc8 @ 0x22411b0
.word 0xeb8 @ 0x22411b4
.word 0xba8 @ 0x22411b8
.word 0xb94 @ 0x22411bc
.word 0xf2c @ 0x22411c0
.word 0x10200 @ 0x22411c4
.word 0x2240e5d @ 0x22411c8
.word 0x10b8 @ 0x22411cc
.thumb
Function_22411d0: @ 22411d0 :thumb
	cmp     r0, #0x12
	bne     branch_22411d8
	mov     r0, #0x1
	bx      lr
@ 0x22411d8

.thumb
branch_22411d8: @ 22411d8 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22411dc

.thumb
Function_22411dc: @ 22411dc :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r7, r1
	mov     r4, r3
	bl      Function_22411d0
	cmp     r0, #0x0
	beq     branch_224120e
	mov     r0, r5
	bl      GetNrOfPkmnInParty
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	ble     branch_2241200
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241200

.thumb
branch_2241200: @ 2241200 :thumb
	mov     r0, r5
	mov     r1, r4
	bl      GetAdrOfPkmnInParty
	bl      Function_2076b10_Dummy
	pop     {r3-r7,pc}
@ 0x224120e

.thumb
branch_224120e: @ 224120e :thumb
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	bl      Function_2079c9c
	pop     {r3-r7,pc}
@ 0x224121a


.align 2, 0


.thumb
Function_224121c: @ 224121c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r2
	bl      Function_22411d0
	cmp     r0, #0x0
	beq     branch_2241238
	mov     r0, r4
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x2
	bge     branch_2241238
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241238

.thumb
branch_2241238: @ 2241238 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224123c

.thumb
Function_224123c: @ 224123c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	bl      InitEncryptPkmnData_Part1
	ldr     r5, [pc, #0x2c] @ 0x2241274, (=0x2245e34)
	str     r0, [sp, #0x0]
	mov     r6, r4
.thumb
branch_224124c: @ 224124c :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r7
	mov     r2, #0x0
	bl      GetBoxPkmnData
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0xa
	blt     branch_224124c
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      InitEncryptPkmnData_Part1Again
	cmp     r4, #0x0
	beq     branch_2241270
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2241270

.thumb
branch_2241270: @ 2241270 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241274

.word 0x2245e34 @ 0x2241274
.thumb
Function_2241278: @ 2241278 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      InitEncryptPkmnData_Part1Again
	cmp     r6, #0x0
	ble     branch_22412be
	ldr     r1, [pc, #0x1c] @ 0x22412c4, (=0x1df)
	cmp     r4, r1
	beq     branch_22412ba
	mov     r0, r1
	add     r0, #0x8
	cmp     r4, r0
	beq     branch_22412ba
	add     r1, #0xd
	cmp     r4, r1
	bne     branch_22412be
.thumb
branch_22412ba: @ 22412ba :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22412be

.thumb
branch_22412be: @ 22412be :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22412c2


.align 2


.word 0x1df @ 0x22412c4
.thumb
Function_22412c8: @ 22412c8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      InitEncryptPkmnData_Part1
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetBoxPkmnData
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      InitEncryptPkmnData_Part1Again
	cmp     r4, #0x70
	bne     branch_22412ee
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22412ee

.thumb
branch_22412ee: @ 22412ee :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22412f2


.align 2, 0


.thumb
Function_22412f4: @ 22412f4 :thumb
	push    {r4,lr}
	bl      Function_22411dc
	mov     r4, r0
	bne     branch_2241302
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241302

.thumb
branch_2241302: @ 2241302 :thumb
	mov     r1, #0xac
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	bne     branch_2241312
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241312

.thumb
branch_2241312: @ 2241312 :thumb
	mov     r0, r4
	mov     r1, #0xad
	mov     r2, #0x0
	bl      GetBoxPkmnData
	cmp     r0, #0x0
	beq     branch_2241324
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2241324

.thumb
branch_2241324: @ 2241324 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241328

.thumb
Function_2241328: @ 2241328 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	ldsh    r3, [r0, r4]
	ldsh    r2, [r1, r4]
	cmp     r3, r2
	beq     branch_224133a
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x224133a

.thumb
branch_224133a: @ 224133a :thumb
	mov     r2, #0x2
	ldsb    r3, [r1, r2]
	cmp     r3, #0x3
	beq     branch_224134e
	ldsb    r2, [r0, r2]
	cmp     r3, r2
	beq     branch_224134e
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x224134e

.thumb
branch_224134e: @ 224134e :thumb
	mov     r2, #0x3
	ldsb    r3, [r0, r2]
	cmp     r3, #0x0
	bne     branch_224135c
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224135c

.thumb
branch_224135c: @ 224135c :thumb
	ldsb    r0, [r1, r2]
	cmp     r0, #0x0
	beq     branch_224136c
	cmp     r0, r3
	ble     branch_224136c
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224136c

.thumb
branch_224136c: @ 224136c :thumb
	mov     r0, #0x4
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224137e
	cmp     r0, r3
	bge     branch_224137e
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224137e

.thumb
branch_224137e: @ 224137e :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2241384

.thumb
Function_2241384: @ 2241384 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r5, r0
	bl      GetBoxPkmnData
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetBoxPkmnData
	add     r1, r0, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	mov     r0, r5
	bl      InitPkmnLevel
	add     r1, sp, #0x0
	strb    r0, [r1, #0x3]
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_2241328
	pop     {r3-r5,pc}
@ 0x22413ba


.align 2, 0


.thumb
Function_22413bc: @ 22413bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x46
	mov     r5, r1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	add     r1, sp, #0x0
	strh    r0, [r1, #0x6]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetBoxPkmnData
	add     r1, r0, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x8]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      InitPkmnLevel
	add     r1, sp, #0x0
	strb    r0, [r1, #0x9]
	mov     r0, r4
	ldrh    r2, [r1, #0x6]
	add     r0, #0xec
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldrh    r1, [r1, #0x8]
	add     r0, #0xee
	strh    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, r5
	bl      Function_22425a8
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r5, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2076b10_Dummy
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r5, r0
	bl      GetBoxPkmnData
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetBoxPkmnData
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r1, sp, #0x0
	strb    r0, [r1, #0x2]
	mov     r0, #0x0
	strb    r0, [r1, #0x3]
	strb    r0, [r1, #0x4]
	mov     r0, r4
	ldrh    r2, [r1, #0x0]
	add     r0, #0xf0
	strh    r2, [r0, #0x0]
	mov     r0, r4
	ldrh    r2, [r1, #0x2]
	add     r0, #0xf2
	add     r4, #0xf4
	strh    r2, [r0, #0x0]
	ldrh    r0, [r1, #0x4]
	strh    r0, [r4, #0x0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241464

.thumb
Function_2241464: @ 2241464 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r4, r3
	mov     r6, #0x0
.thumb
branch_224146e: @ 224146e :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2241488
	mov     r0, r5
	mov     r1, r7
	bl      Function_2241328
	cmp     r0, #0x0
	bne     branch_2241488
	ldr     r0, [r4, #0x4]
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x4]
.thumb
branch_2241488: @ 2241488 :thumb
	mov     r0, #0x83
	lsl     r0, r0, #2
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r4, r4, r0
	cmp     r6, #0x1e
	blt     branch_224146e
	pop     {r3-r7,pc}
@ 0x2241498

.thumb
Function_2241498: @ 2241498 :thumb
	push    {r3,lr}
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_207d2d0
	cmp     r0, #0x0
	beq     branch_22414b2
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22414b2

.thumb
branch_22414b2: @ 22414b2 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22414b6


.align 2, 0


.thumb
Function_22414b8: @ 22414b8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_22418b8
	ldr     r0, [r4, #0x4]
	bl      Function_22415f8
	mov     r0, r4
	bl      Function_224170c
	mov     r0, r4
	bl      Function_22417a0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, r4
	bl      Function_2245934
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	ldr     r2, [pc, #0x40] @ 0x2241538, (=0xb94)
	str     r0, [sp, #0x4]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r0, [sp, #0x8]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r3, [pc, #0x34] @ 0x224153c, (=0xf6c)
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r4, r3
	bl      Function_22422d4
	ldr     r1, [pc, #0x2c] @ 0x2241540, (=0xb74)
	mov     r3, #0x46
	add     r0, r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r1
	add     r0, #0x20
	add     r1, #0x1c
	ldr     r2, [pc, #0x24] @ 0x2241544, (=0xf9c)
	lsl     r3, r3, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22423fc
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241538

.word 0xb94 @ 0x2241538
.word 0xf6c @ 0x224153c
.word 0xb74 @ 0x2241540
.word 0xf9c @ 0x2241544
.thumb
Function_2241548: @ 2241548 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      Function_20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x2241564, (=0x224695c)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x2241562


.align 2


.word 0x224695c @ 0x2241564
.thumb
Function_2241568: @ 2241568 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2039794
	mov     r0, r4
	bl      Function_2241920
	mov     r0, r4
	bl      Function_2241880
	ldr     r0, [r4, #0x4]
	bl      Function_22416e0
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224158c

.thumb
Function_224158c: @ 224158c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x58] @ 0x22415ec, (=0xb94)
	mov     r4, r2
	ldr     r0, [r5, r0]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_200c388
	ldr     r0, [pc, #0x40] @ 0x22415f0, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x34] @ 0x22415f0, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x20] @ 0x22415f0, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0x14] @ 0x22415f4, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22415ec

.word 0xb94 @ 0x22415ec
.word 0xefc @ 0x22415f0
.word 0xbe4 @ 0x22415f4
.thumb
Function_22415f8: @ 22415f8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x8c
	ldr     r5, [pc, #0xcc] @ 0x22416cc, (=0x224601c)
	mov     r4, r0
	ldmia   r5!, {r0,r1}
	add     r3, sp, #0x70
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xa8] @ 0x22416d0, (=0x2246038)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x8c] @ 0x22416d4, (=0x2246054)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	ldr     r5, [pc, #0x70] @ 0x22416d8, (=0x2246070)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x4c] @ 0x22416dc, (=0x2246000)
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
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x22416ca


.align 2


.word 0x224601c @ 0x22416cc
.word 0x2246038 @ 0x22416d0
.word 0x2246054 @ 0x22416d4
.word 0x2246070 @ 0x22416d8
.word 0x2246000 @ 0x22416dc
.thumb
Function_22416e0: @ 22416e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x224170c

.thumb
Function_224170c: @ 224170c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x4]

	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #Worldtrade_Narc
	mov     r1, #0x1
	mov     r3, r2
	bl      Call_LoadFromNARC_RLCN

	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2

	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, #0xb
	mov     r2, r4
	bl      LoadFromNARC_RGCN
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	mov     r3, #0x1
	str     r3, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	mov     r0, #0x68
	mov     r1, #0x17
	mov     r2, r4
	bl      LoadFromNARC_RCSN
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x22417a0

.thumb
Function_22417a0: @ 22417a0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r3, #0x1
	mov     r7, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0xac] @ 0x2241868, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0xa0] @ 0x2241868, (=0xf1c)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      Function_201ada4_ClearTextBox
	mov     r2, #0x0
	ldr     r0, [pc, #0x98] @ 0x224186c, (=0xf0e00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x94] @ 0x2241870, (=0xbb4)
	ldr     r0, [pc, #0x8c] @ 0x2241868, (=0xf1c)
	ldr     r1, [r7, r1]
	add     r0, r7, r0
	mov     r3, #0x1
	bl      Function_22458cc
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	ldr     r1, [pc, #0x80] @ 0x2241874, (=0xefc)
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0x6c] @ 0x2241874, (=0xefc)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x60] @ 0x2241878, (=0xf6c)
	ldr     r4, [pc, #0x64] @ 0x224187c, (=0x2245fe8)
	mov     r6, #0x96
	add     r5, r7, r0
.thumb
branch_224181c: @ 224181c :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, r5
	mov     r2, #0x0
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldrh    r3, [r4, #0x0]
	ldr     r0, [r7, #0x4]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201a954
	ldr     r0, [sp, #0x14]
	add     r6, #0x16
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	str     r0, [sp, #0x14]
	cmp     r0, #0x6
	blt     branch_224181c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2241868

.word 0xf1c @ 0x2241868
.word 0xf0e00 @ 0x224186c
.word 0xbb4 @ 0x2241870
.word 0xefc @ 0x2241874
.word 0xf6c @ 0x2241878
.word 0x2245fe8 @ 0x224187c
.thumb
Function_2241880: @ 2241880 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x22418ac, (=0xf6c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_224188a: @ 224188a :thumb
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_224188a
	ldr     r0, [pc, #0x14] @ 0x22418b0, (=0xefc)
	add     r0, r6, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x10] @ 0x22418b4, (=0xf1c)
	add     r0, r6, r0
	bl      Function_201a8fc
	pop     {r4-r6,pc}
@ 0x22418aa


.align 2


.word 0xf6c @ 0x22418ac
.word 0xefc @ 0x22418b0
.word 0xf1c @ 0x22418b4
.thumb
Function_22418b8: @ 22418b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x5a
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x40] @ 0x2241918, (=0xbb4)
	str     r0, [r4, r1]
	mov     r0, #0x3e
	mov     r1, #0x30
	bl      malloc
	ldr     r1, [pc, #0x38] @ 0x224191c, (=0x1084)
	mov     r2, #0x30
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	blx     MIi_CpuClearFast
	ldr     r2, [pc, #0x2c] @ 0x224191c, (=0x1084)
	mov     r0, #0x3e
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r2, #0x1c
	bl      Function_2242524
	ldr     r1, [pc, #0x1c] @ 0x224191c, (=0x1084)
	ldr     r1, [r4, r1]
	str     r0, [r1, #0x18]
	mov     r0, #0x3e
	bl      Function_2242548
	ldr     r1, [pc, #0x10] @ 0x224191c, (=0x1084)
	ldr     r2, [r4, r1]
	add     r1, #0x38
	str     r0, [r2, #0x14]
	add     r0, r4, r1
	bl      Function_2242aac
	pop     {r4,pc}
@ 0x2241918

.word 0xbb4 @ 0x2241918
.word 0x1084 @ 0x224191c
.thumb
Function_2241920: @ 2241920 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2241954, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x14]
	bl      free
	ldr     r0, [pc, #0x24] @ 0x2241954, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x18]
	bl      free
	ldr     r0, [pc, #0x18] @ 0x2241954, (=0x1084)
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0xc] @ 0x2241958, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x2241954

.word 0x1084 @ 0x2241954
.word 0xbb4 @ 0x2241958
.thumb
Function_224195c: @ 224195c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_200f2ac
	cmp     r0, #0x0
	beq     branch_2241984
	ldr     r0, [pc, #0x20] @ 0x224198c, (=0xf0f)
	mov     r1, #0x9
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_224158c
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_223c3f4
.thumb
branch_2241984: @ 2241984 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224198a


.align 2


.word 0xf0f @ 0x224198c
.thumb
Function_2241990: @ 2241990 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x70] @ 0x2241a08, (=RAM_21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_22419ac
	mov     r1, #0x5
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
.thumb
branch_22419ac: @ 22419ac :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x50] @ 0x2241a0c, (=0x11a)
	ldr     r1, [pc, #0x50] @ 0x2241a10, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      Function_201a7e8
	ldr     r0, [pc, #0x40] @ 0x2241a10, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x2241a14, (=0x14e)
	ldr     r1, [pc, #0x30] @ 0x2241a18, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r0, [pc, #0x20] @ 0x2241a18, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241a08

.word RAM_21bf67c @ 0x2241a08
.word 0x11a @ 0x2241a0c
.word 0xf3c @ 0x2241a10
.word 0x14e @ 0x2241a14
.word 0xf4c @ 0x2241a18
.thumb
Function_2241a1c: @ 2241a1c :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x24] @ 0x2241a44, (=0xb94)
	mov     r4, r0
	ldr     r1, [pc, #0x24] @ 0x2241a48, (=0x106c)
	ldr     r2, [pc, #0x24] @ 0x2241a4c, (=0xf3c)
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_22426a8
	ldr     r1, [pc, #0x1c] @ 0x2241a50, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241a54, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241a44

.word 0xb94 @ 0x2241a44
.word 0x106c @ 0x2241a48
.word 0xf3c @ 0x2241a4c
.word 0x1078 @ 0x2241a50
.word 0xffff @ 0x2241a54
.thumb
Function_2241a58: @ 2241a58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xb0] @ 0x2241b10, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a6c
	cmp     r0, #0x9
	bhi     branch_2241a8e
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241a7a

Jumppoints_2241a7a:
.hword branch_2241b0c - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.hword branch_2241a98 - Jumppoints_2241a7a - 2
.thumb
branch_2241a8e: @ 2241a8e :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2241abc
	b       branch_2241b0c
@ 0x2241a98

.thumb
branch_2241a98: @ 2241a98 :thumb
	ldr     r0, [pc, #0x78] @ 0x2241b14, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_2001384
	ldr     r0, [pc, #0x6c] @ 0x2241b18, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x64] @ 0x2241b1c, (=0x5dc)
	bl      Function_2005748
	b       branch_2241b0c
@ 0x2241abc

.thumb
branch_2241abc: @ 2241abc :thumb
	ldr     r0, [pc, #0x54] @ 0x2241b14, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      Function_2001384
	ldr     r0, [pc, #0x48] @ 0x2241b18, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x48] @ 0x2241b20, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x44] @ 0x2241b24, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x34] @ 0x2241b20, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x34] @ 0x2241b28, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r1, #0x5
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x14] @ 0x2241b1c, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2241b0c: @ 2241b0c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241b10

.word 0x1078 @ 0x2241b10
.word 0x1084 @ 0x2241b14
.word 0x106c @ 0x2241b18
.word 0x5dc @ 0x2241b1c
.word 0xf3c @ 0x2241b20
.word 0xefc @ 0x2241b24
.word 0xf4c @ 0x2241b28
.thumb
Function_2241b2c: @ 2241b2c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r3, [pc, #0x38] @ 0x2241b6c, (=0xb98)
	mov     r4, r0
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x2241b70, (=0x1084)
	ldr     r2, [r4, r1]
	sub     r1, #0x18
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	add     r1, r4, r1
	ldr     r2, [r2, #0x10]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x28] @ 0x2241b74, (=0xf4c)
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22427c0
	ldr     r1, [pc, #0x20] @ 0x2241b78, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x20] @ 0x2241b7c, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241b6a


.align 2


.word 0xb98 @ 0x2241b6c
.word 0x1084 @ 0x2241b70
.word 0xf4c @ 0x2241b74
.word 0x1078 @ 0x2241b78
.word 0xffff @ 0x2241b7c
.thumb
Function_2241b80: @ 2241b80 :thumb
	cmp     r1, #0x0
	beq     branch_2241b8e
	cmp     r1, #0xfe
	beq     branch_2241b96
	cmp     r1, #0xff
	beq     branch_2241b9e
	b       branch_2241ba6
@ 0x2241b8e

.thumb
branch_2241b8e: @ 2241b8e :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	mov     r0, r1
	bx      lr
@ 0x2241b96

.thumb
branch_2241b96: @ 2241b96 :thumb
	mov     r1, #0x2
	strb    r1, [r0, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2241b9e

.thumb
branch_2241b9e: @ 2241b9e :thumb
	mov     r1, #0x3
	strb    r1, [r0, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2241ba6

.thumb
branch_2241ba6: @ 2241ba6 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2241baa


.align 2, 0


.thumb
Function_2241bac: @ 2241bac :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x130] @ 0x2241ce4, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a6c
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_2241bd4
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_2241bd2
	b       branch_2241cdc
@ 0x2241bd2

.thumb
branch_2241bd2: @ 2241bd2 :thumb
	b       branch_2241c2a
@ 0x2241bd4

.thumb
branch_2241bd4: @ 2241bd4 :thumb
	ldr     r0, [pc, #0x110] @ 0x2241ce8, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      Function_2001384
	ldr     r0, [pc, #0x104] @ 0x2241cec, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x100] @ 0x2241cf0, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xf8] @ 0x2241cf4, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0xec] @ 0x2241cf0, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xe8] @ 0x2241cf8, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0xd4] @ 0x2241ce8, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac4
	b       branch_2241cdc
@ 0x2241c2a

.thumb
branch_2241c2a: @ 2241c2a :thumb
	ldr     r0, [pc, #0xbc] @ 0x2241ce8, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      Function_2001384
	ldr     r0, [pc, #0xac] @ 0x2241cec, (=0x106c)
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0xac] @ 0x2241cf4, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xa0] @ 0x2241cf0, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x98] @ 0x2241cf4, (=0xf3c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x8c] @ 0x2241cf0, (=0xf4c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x90] @ 0x2241cfc, (=0xb78)
	strh    r5, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x2241cf8, (=0x5dc)
	bl      Function_2005748
	mov     r0, r5
	mov     r1, #0x12
	bl      GetPkmnBaseData1
	ldr     r1, [pc, #0x6c] @ 0x2241ce8, (=0x1084)
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x20]
	ldr     r1, [r4, r1]
	ldr     r0, [pc, #0x78] @ 0x2241cfc, (=0xb78)
	ldr     r1, [r1, #0x20]
	add     r0, r4, r0
	bl      Function_2241b80
	cmp     r0, #0x0
	beq     branch_2241c9a
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x68] @ 0x2241d00, (=0xb7a)
	ldsb    r1, [r4, r0]
	b       branch_2241ca0
@ 0x2241c9a

.thumb
branch_2241c9a: @ 2241c9a :thumb
	mov     r0, #0x7
	str     r0, [r4, #0x2c]
	mov     r1, #0x3
.thumb
branch_2241ca0: @ 2241ca0 :thumb
	ldr     r2, [pc, #0x58] @ 0x2241cfc, (=0xb78)
	ldr     r3, [pc, #0x60] @ 0x2241d04, (=0xf6c)
	ldsh    r0, [r4, r2]
	add     r3, r4, r3
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r1, [sp, #0x4]
	mvn     r0, r0
	str     r0, [sp, #0x8]
	mov     r0, r2
	mov     r1, r2
	add     r0, #0x1c
	add     r1, #0x20
	add     r2, #0x18
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	bl      Function_22422d4
	ldr     r0, [pc, #0x20] @ 0x2241ce8, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac4
.thumb
branch_2241cdc: @ 2241cdc :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241ce2


.align 2


.word 0x1078 @ 0x2241ce4
.word 0x1084 @ 0x2241ce8
.word 0x106c @ 0x2241cec
.word 0xf4c @ 0x2241cf0
.word 0xf3c @ 0x2241cf4
.word 0x5dc @ 0x2241cf8
.word 0xb78 @ 0x2241cfc
.word 0xb7a @ 0x2241d00
.word 0xf6c @ 0x2241d04
.thumb
Function_2241d08: @ 2241d08 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x2241d58, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_224158c
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x8
	bl      Function_223c3f4
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x8
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x24] @ 0x2241d5c, (=0x11a)
	ldr     r1, [pc, #0x28] @ 0x2241d60, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      Function_201a7e8
	ldr     r0, [pc, #0x18] @ 0x2241d60, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241d56


.align 2


.word 0xf0f @ 0x2241d58
.word 0x11a @ 0x2241d5c
.word 0xf3c @ 0x2241d60
.thumb
Function_2241d64: @ 2241d64 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x2241d8c, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2241d90, (=0x106c)
	ldr     r1, [pc, #0x24] @ 0x2241d94, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_2242840
	ldr     r1, [pc, #0x1c] @ 0x2241d98, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241d9c, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241d8c

.word 0xb94 @ 0x2241d8c
.word 0x106c @ 0x2241d90
.word 0xf3c @ 0x2241d94
.word 0x1078 @ 0x2241d98
.word 0xffff @ 0x2241d9c
.thumb
Function_2241da0: @ 2241da0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x2241e70, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a6c
	mov     r4, r0
	cmp     r4, #0x2
	bhi     branch_2241dc8
	cmp     r4, #0x0
	beq     branch_2241e0c
	cmp     r4, #0x1
	beq     branch_2241e0c
	cmp     r4, #0x2
	beq     branch_2241e0c
	b       branch_2241e68
@ 0x2241dc8

.thumb
branch_2241dc8: @ 2241dc8 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2241e68
	ldr     r0, [pc, #0x9c] @ 0x2241e70, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x94] @ 0x2241e74, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x90] @ 0x2241e78, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x8c] @ 0x2241e7c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0x7c] @ 0x2241e78, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x7c] @ 0x2241e80, (=0x5dc)
	bl      Function_2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_2241e68
@ 0x2241e0c

.thumb
branch_2241e0c: @ 2241e0c :thumb
	ldr     r0, [pc, #0x60] @ 0x2241e70, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x58] @ 0x2241e74, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x54] @ 0x2241e78, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x4c] @ 0x2241e78, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x4c] @ 0x2241e80, (=0x5dc)
	bl      Function_2005748
	ldr     r3, [pc, #0x48] @ 0x2241e84, (=0xf6c)
	ldr     r2, [pc, #0x4c] @ 0x2241e88, (=0xb7a)
	add     r0, r4, #0x1
	strb    r0, [r5, r2]
	mov     r1, #0xa
	str     r1, [r5, #0x2c]
	.hword  0x1e90 @ sub r0, r2, #0x2
	ldsh    r0, [r5, r0]
	sub     r1, #0xb
	add     r3, r5, r3
	str     r0, [sp, #0x0]
	ldsb    r0, [r5, r2]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, r2
	mov     r1, r2
	add     r0, #0x1a
	add     r1, #0x1e
	add     r2, #0x16
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_22422d4
.thumb
branch_2241e68: @ 2241e68 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241e6e


.align 2


.word 0x1078 @ 0x2241e70
.word 0x106c @ 0x2241e74
.word 0xf3c @ 0x2241e78
.word 0xefc @ 0x2241e7c
.word 0x5dc @ 0x2241e80
.word 0xf6c @ 0x2241e84
.word 0xb7a @ 0x2241e88
.thumb
Function_2241e8c: @ 2241e8c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x2241edc, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xb
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_224158c
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0xb
	bl      Function_223c3f4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x24] @ 0x2241ee0, (=0x11a)
	ldr     r1, [pc, #0x28] @ 0x2241ee4, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      Function_201a7e8
	ldr     r0, [pc, #0x18] @ 0x2241ee4, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241eda


.align 2


.word 0xf0f @ 0x2241edc
.word 0x11a @ 0x2241ee0
.word 0xf3c @ 0x2241ee4
.thumb
Function_2241ee8: @ 2241ee8 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x2241f14, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2241f18, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x2241f1c, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r3, #0x0
	bl      Function_22428b0
	ldr     r1, [pc, #0x20] @ 0x2241f20, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241f24, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xc
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241f12


.align 2


.word 0xb94 @ 0x2241f14
.word 0x106c @ 0x2241f18
.word 0xf3c @ 0x2241f1c
.word 0x1078 @ 0x2241f20
.word 0xffff @ 0x2241f24
.thumb
Function_2241f28: @ 2241f28 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xec] @ 0x224201c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a6c
	mov     r4, r0
	cmp     r4, #0xc
	beq     branch_2241f52
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2241f52
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2242016
	b       branch_2241fa6
@ 0x2241f52

.thumb
branch_2241f52: @ 2241f52 :thumb
	ldr     r0, [pc, #0xc8] @ 0x224201c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0xc0] @ 0x2242020, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0xbc] @ 0x2242024, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0xb4] @ 0x2242028, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200e084
	ldr     r0, [pc, #0xa8] @ 0x2242024, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0xa8] @ 0x224202c, (=0x5dc)
	bl      Function_2005748
	ldr     r1, [pc, #0xa4] @ 0x2242030, (=0x1084)
	ldr     r0, [pc, #0xa8] @ 0x2242034, (=0xb78)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	ldr     r1, [r1, #0x20]
	bl      Function_2241b80
	cmp     r0, #0x0
	beq     branch_2241fa0
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_2242016
@ 0x2241fa0

.thumb
branch_2241fa0: @ 2241fa0 :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x2c]
	b       branch_2242016
@ 0x2241fa6

.thumb
branch_2241fa6: @ 2241fa6 :thumb
	ldr     r0, [pc, #0x84] @ 0x224202c, (=0x5dc)
	bl      Function_2005748
	ldr     r0, [pc, #0x6c] @ 0x224201c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      Function_2001384
	ldr     r0, [pc, #0x64] @ 0x2242020, (=0x106c)
	ldr     r0, [r5, r0]
	bl      Function_2013a3c
	ldr     r0, [pc, #0x60] @ 0x2242024, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      Function_200dc9c
	ldr     r0, [pc, #0x58] @ 0x2242024, (=0xf3c)
	add     r0, r5, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x60] @ 0x2242034, (=0xb78)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	bl      Function_2242934
	mov     r0, #0xd
	ldr     r1, [pc, #0x54] @ 0x2242038, (=0xb7b)
	str     r0, [r5, #0x2c]
	ldsb    r0, [r5, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r5, r1]
	mov     r2, #0x0
	bl      Function_2242970
	ldr     r2, [pc, #0x40] @ 0x2242034, (=0xb78)
	ldr     r3, [pc, #0x48] @ 0x224203c, (=0xf6c)
	ldsh    r1, [r5, r2]
	add     r3, r5, r3
	str     r1, [sp, #0x0]
	add     r1, r2, #0x2
	ldsb    r1, [r5, r1]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r2
	mov     r1, r2
	add     r0, #0x1c
	add     r1, #0x20
	add     r2, #0x18
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	ldr     r2, [r5, r2]
	bl      Function_22422d4
.thumb
branch_2242016: @ 2242016 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x224201c

.word 0x1078 @ 0x224201c
.word 0x106c @ 0x2242020
.word 0xf3c @ 0x2242024
.word 0xefc @ 0x2242028
.word 0x5dc @ 0x224202c
.word 0x1084 @ 0x2242030
.word 0xb78 @ 0x2242034
.word 0xb7b @ 0x2242038
.word 0xf6c @ 0x224203c
.thumb
Function_2242040: @ 2242040 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x2242064, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x17
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_224158c
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0xe
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2242064

.word 0xf0f @ 0x2242064
.thumb
Function_2242068: @ 2242068 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2242084, (=0x1ea)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2242088, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0xf
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242082


.align 2


.word 0x1ea @ 0x2242084
.word 0x1070 @ 0x2242088
.thumb
Function_224208c: @ 224208c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x48] @ 0x22420dc, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22420d8
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22420b8
	mov     r1, #0x5
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	b       branch_22420d8
@ 0x22420b8

.thumb
branch_22420b8: @ 22420b8 :thumb
	mov     r1, #0x7
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x18] @ 0x22420e0, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_2242668
.thumb
branch_22420d8: @ 22420d8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22420dc

.word 0x1070 @ 0x22420dc
.word 0x10b0 @ 0x22420e0
.thumb
Function_22420e4: @ 22420e4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_2242110
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [pc, #0x28] @ 0x2242134, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2242128
@ 0x2242110

.thumb
branch_2242110: @ 2242110 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
.thumb
branch_2242128: @ 2242128 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242132


.align 2


.word 0x10b0 @ 0x2242134
.thumb
Function_2242138: @ 2242138 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2242154, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2242150
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2242150: @ 2242150 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242154

.word 0xbe4 @ 0x2242154
.thumb
Function_2242158: @ 2242158 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r3
	cmp     r2, #0x0
	beq     branch_2242186
	mov     r0, r1
	mov     r1, r2
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2245900
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
.thumb
branch_2242186: @ 2242186 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x224218a


.align 2, 0


.thumb
Function_224218c: @ 224218c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	cmp     r3, #0x0
	beq     branch_22421be
	mov     r0, r1
	mov     r1, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2245900
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22421be

.thumb
branch_22421be: @ 22421be :thumb
	mov     r0, r2
	mov     r1, #0xa7
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2245900
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22421e6


.align 2, 0


.thumb
Function_22421e8: @ 22421e8 :thumb
	cmp     r0, #0x1
	bne     branch_22421f2
	ldr     r0, [pc, #0x10] @ 0x2242200, (=0x2246920)
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x22421f2

.thumb
branch_22421f2: @ 22421f2 :thumb
	cmp     r0, #0x2
	bne     branch_22421fa
	ldr     r0, [pc, #0x8] @ 0x2242200, (=0x2246920)
	ldr     r1, [r0, #0x4]
.thumb
branch_22421fa: @ 22421fa :thumb
	mov     r0, r1
	bx      lr
@ 0x22421fe


.align 2


.word 0x2246920 @ 0x2242200
.thumb
Function_2242204: @ 2242204 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r2
	cmp     r3, #0x0
	bne     branch_2242214
	cmp     r5, #0x3
	beq     branch_2242264
.thumb
branch_2242214: @ 2242214 :thumb
	mov     r0, r1
	ldr     r1, [pc, #0x50] @ 0x2242268, (=0x2245fd8)
	lsl     r2, r5, #2
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x3
	ble     branch_2242244
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_22421e8
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	bl      Function_2245900
	b       branch_224225e
@ 0x2242244

.thumb
branch_2242244: @ 2242244 :thumb
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_22421e8
	ldr     r1, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2245900
.thumb
branch_224225e: @ 224225e :thumb
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
.thumb
branch_2242264: @ 2242264 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2242268

.word 0x2245fd8 @ 0x2242268
.thumb
Function_224226c: @ 224226c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	mov     r5, r3
	cmp     r2, r0
	beq     branch_22422ac
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_2242286
	ldr     r3, [pc, #0x2c] @ 0x22422b0, (=0x224610c)
	b       branch_2242288
@ 0x2242286

.thumb
branch_2242286: @ 2242286 :thumb
	ldr     r3, [pc, #0x2c] @ 0x22422b4, (=0x22460ac)
.thumb
branch_2242288: @ 2242288 :thumb
	mov     r0, r1
	lsl     r1, r2, #3
	ldr     r1, [r3, r1]
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x24]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	bl      Function_2245900
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
.thumb
branch_22422ac: @ 22422ac :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22422b0

.word 0x224610c @ 0x22422b0
.word 0x22460ac @ 0x22422b4
.thumb
Function_22422b8: @ 22422b8 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [sp, #0x18]
	str     r4, [sp, #0x0]
	ldr     r4, [sp, #0x1c]
	str     r4, [sp, #0x4]
	ldr     r4, [sp, #0x20]
	str     r4, [sp, #0x8]
	mov     r4, #0x0
	str     r4, [sp, #0xc]
	bl      Function_224226c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22422d4

.thumb
Function_22422d4: @ 22422d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r1, #0x61
	str     r0, [sp, #0xc]
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x2242364, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r5, r6
	mov     r4, #0x1
	add     r5, #0x10
	mov     r7, #0x0
.thumb
branch_2242300: @ 2242300 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_2242300
	mov     r3, #0x0
	ldr     r0, [pc, #0x50] @ 0x2242364, (=0xf0200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r0, #0x10
	bl      Function_2242158
	ldr     r2, [sp, #0x34]
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r0, #0x1
	bhi     branch_2242342
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2242364, (=0xf0200)
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x10
	bl      Function_2242204
.thumb
branch_2242342: @ 2242342 :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x2242364, (=0xf0200)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r6, #0x20
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_22422b8
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2242364

.word 0xf0200 @ 0x2242364
.thumb
Function_2242368: @ 2242368 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r1, #0x61
	str     r0, [sp, #0xc]
	mov     r6, r3
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x22423f8, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	mov     r3, r2
	bl      Function_2245900
	mov     r5, r6
	mov     r4, #0x1
	add     r5, #0x10
	mov     r7, #0x0
.thumb
branch_2242394: @ 2242394 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_2242394
	mov     r3, #0x0
	ldr     r0, [pc, #0x50] @ 0x22423f8, (=0xf0200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r0, #0x10
	bl      Function_2242158
	ldr     r2, [sp, #0x34]
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r0, #0x1
	bhi     branch_22423d6
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x22423f8, (=0xf0200)
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x10
	bl      Function_2242204
.thumb
branch_22423d6: @ 22423d6 :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x22423f8, (=0xf0200)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r6, #0x20
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_22422b8
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22423f8

.word 0xf0200 @ 0x22423f8
.thumb
Function_22423fc: @ 22423fc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x3e
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r7, [sp, #0x38]
	bl      Function_2023790
	str     r0, [sp, #0x18]
	mov     r0, #0xb
	mov     r1, #0x3e
	bl      Function_2023790
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x18]
	mov     r1, #0x77
	bl      GetBoxPkmnData
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      GetBoxPkmnData
	add     r6, r0, #0x1
	ldr     r0, [sp, #0xc]
	bl      InitPkmnLevel
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x64
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r3, r1
	bl      Function_200b60c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x66
	mov     r3, #0x3e
	bl      Function_200b29c
	str     r0, [sp, #0x1c]
	cmp     r6, #0x3
	beq     branch_224247a
	ldr     r1, [pc, #0xa8] @ 0x2242518, (=0x2245fd8)
	lsl     r2, r6, #2
	ldr     r1, [r1, r2]
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	bl      Function_200b1b8_CallMsgDecrypt
.thumb
branch_224247a: @ 224247a :thumb
	ldr     r5, [sp, #0x8]
	mov     r4, #0x0
.thumb
branch_224247e: @ 224247e :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_224247e
	mov     r2, #0x0
	ldr     r0, [pc, #0x88] @ 0x224251c, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	mov     r3, r2
	bl      Function_2245900
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x224251c, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x18]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_2245900
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x224251c, (=0xf0200)
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x1c]
	add     r0, #0x20
	mov     r3, r2
	bl      Function_2245900
	cmp     r6, #0x3
	beq     branch_22424ea
	.hword  0x1e70 @ sub r0, r6, #0x1
	mov     r3, #0x0
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x48] @ 0x2242520, (=0x2246920)
	str     r3, [sp, #0x0]
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x46
	add     r0, #0x10
	str     r0, [sp, #0x8]
	bl      Function_2245900
.thumb
branch_22424ea: @ 22424ea :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetBoxPkmnData
	strh    r0, [r7, #0x0]
	ldr     r0, [sp, #0x10]
	strb    r6, [r7, #0x2]
	strb    r0, [r7, #0x3]
	ldr     r0, [sp, #0x1c]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x14]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x20]
	bl      Function_20237bc_FreeMsg
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2242518

.word 0x2245fd8 @ 0x2242518
.word 0xf0200 @ 0x224251c
.word 0x2246920 @ 0x2242520
.thumb
Function_2242524: @ 2242524 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r2
	mov     r2, #0x0
	mov     r3, r0
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	mov     r1, #0xd
	bl      Function_2007068
	ldr     r1, [sp, #0x8]
	lsr     r1, r1, #1
	str     r1, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242546


.align 2, 0


.thumb
Function_2242548: @ 2242548 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x50] @ 0x22425a0, (=0x1ee)
	mov     r5, r0
	mov     r0, #0x3e
	bl      malloc
	mov     r4, r0
	ldr     r2, [pc, #0x44] @ 0x22425a0, (=0x1ee)
	mov     r0, #0x0
	mov     r1, r4
	blx     MIi_CpuClearFast
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	mov     r1, #0xc
	mov     r3, r5
	bl      Function_2007068
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	ldr     r5, [pc, #0x28] @ 0x22425a4, (=0x0)
	lsr     r3, r0, #1
	beq     branch_2242594
	ldr     r0, [pc, #0x20] @ 0x22425a0, (=0x1ee)
	mov     r6, r7
	mov     r1, #0x1
.thumb
branch_2242584: @ 2242584 :thumb
	ldrh    r2, [r6, #0x0]
	cmp     r2, r0
	bcs     branch_224258c
	strb    r1, [r4, r2]
.thumb
branch_224258c: @ 224258c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, r3
	bcc     branch_2242584
.thumb
branch_2242594: @ 2242594 :thumb
	mov     r0, r7
	bl      free
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x22425a0

.word 0x1ee @ 0x22425a0
.word 0x0 @ 0x22425a4
.thumb
Function_22425a8: @ 22425a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x45
	mov     r4, r1
	lsl     r0, r0, #2
	ldrh    r0, [r4, r0]
	bl      Function_22411d0
	cmp     r0, #0x0
	beq     branch_22425dc
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2077acc
	bl      GetPkmnDataSize
	mov     r2, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	blx     MIi_CpuCopyFast
	b       branch_22425f4
@ 0x22425dc

.thumb
branch_22425dc: @ 22425dc :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2077adc
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      Function_20774c8
.thumb
branch_22425f4: @ 22425f4 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2025ef0_Dummy
	mov     r1, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, #0x8
	bl      Function_20021d0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      GetSecretTrainerID
	mov     r1, #0x47
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	bl      Function_202c8c0
	ldr     r1, [pc, #0x38] @ 0x224265c, (=0x11e)
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	bl      Function_202c8c4
	ldr     r1, [pc, #0x30] @ 0x2242660, (=0x11f)
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      Function_2025f8c
	mov     r1, #0x12
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      GetGender
	mov     r1, r5
	add     r1, #0xf6
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2242664, (=0x122)
	mov     r1, #0xc
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x224265a


.align 2


.word 0x11e @ 0x224265c
.word 0x11f @ 0x2242660
.word 0x122 @ 0x2242664
.thumb
Function_2242668: @ 2242668 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22425a8
	ldr     r0, [pc, #0x30] @ 0x22426a4, (=0xb74)
	mov     r1, r5
	ldrh    r2, [r4, r0]
	add     r1, #0xec
	strh    r2, [r1, #0x0]
	add     r1, r0, #0x2
	ldrh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xee
	strh    r2, [r1, #0x0]
	add     r1, r0, #0x4
	ldrh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xf0
	strh    r2, [r1, #0x0]
	add     r1, r0, #0x6
	ldrh    r2, [r4, r1]
	mov     r1, r5
	add     r1, #0xf2
	strh    r2, [r1, #0x0]
	add     r0, #0x8
	ldrh    r0, [r4, r0]
	add     r5, #0xf4
	strh    r0, [r5, #0x0]
	pop     {r3-r5,pc}
@ 0x22426a4

.word 0xb74 @ 0x22426a4
.thumb
Function_22426a8: @ 22426a8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x9
	mov     r1, #0x3e
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      Function_2013a04
	str     r0, [r5, #0x0]
	mov     r4, #0x0
.thumb
branch_22426c0: @ 22426c0 :thumb
	mov     r2, r4
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	add     r2, #0x68
	add     r3, r4, #0x1
	bl      Function_2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x9
	blt     branch_22426c0
	ldr     r3, [pc, #0x38] @ 0x2242710, (=0x224608c)
	add     r2, sp, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r0, [sp, #0x10]
	bl      Function_200dc48
	ldr     r0, [pc, #0x18] @ 0x2242714, (=0x1084)
	mov     r3, #0x3e
	ldr     r2, [r7, r0]
	add     r0, sp, #0x4
	ldrh    r1, [r2, #0x6]
	ldrh    r2, [r2, #0x4]
	bl      Function_200112c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224270e


.align 2


.word 0x224608c @ 0x2242710
.word 0x1084 @ 0x2242714
.thumb
Function_2242718: @ 2242718 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x8]
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x38]
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x94] @ 0x22427bc, (=0x2246928)
	lsl     r0, r2, #1
	ldrh    r0, [r1, r0]
	mov     r7, #0x0
	str     r3, [sp, #0xc]
	str     r0, [sp, #0x14]
	add     r0, r2, #0x1
	lsl     r0, r0, #1
	ldrh    r1, [r1, r0]
	ldr     r0, [sp, #0x14]
	ldr     r6, [sp, #0x3c]
	sub     r4, r1, r0
	str     r7, [sp, #0x18]
	cmp     r4, #0x0
	ble     branch_2242762
	lsl     r1, r0, #1
	mov     r0, r3
	add     r5, r0, r1
.thumb
branch_2242748: @ 2242748 :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      WasPkmnSeen
	cmp     r0, #0x0
	beq     branch_2242756
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2242756: @ 2242756 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r4
	blt     branch_2242748
.thumb
branch_2242762: @ 2242762 :thumb
	add     r0, r7, #0x1
	mov     r1, #0x3e
	bl      Function_2013a04
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	cmp     r4, #0x0
	ble     branch_22427a4
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0xc]
	add     r5, r0, r1
.thumb
branch_224277e: @ 224277e :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      WasPkmnSeen
	cmp     r0, #0x0
	beq     branch_2242798
	ldrh    r2, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r3, r2
	bl      Function_2013a4c
.thumb
branch_2242798: @ 2242798 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, r4
	blt     branch_224277e
.thumb
branch_22427a4: @ 22427a4 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x79
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	sub     r3, #0x7b
	bl      Function_2013a4c
	add     r0, r7, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22427ba


.align 2


.word 0x2246928 @ 0x22427bc
.thumb
Function_22427c0: @ 22427c0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r5, [sp, #0x54]
	mov     r7, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0xf
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      Function_201ada4_ClearTextBox
	ldrh    r1, [r5, #0x6]
	ldrh    r0, [r5, #0x4]
	ldr     r2, [sp, #0x14]
	add     r4, r1, r0
	ldr     r0, [r5, #0x14]
	ldr     r1, [sp, #0x50]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x1c]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x58]
	str     r4, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r3, [r5, #0x18]
	mov     r0, r6
	bl      Function_2242718
	ldr     r3, [pc, #0x44] @ 0x224283c, (=0x224608c)
	mov     r5, r0
	add     r2, sp, #0x18
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r0, sp, #0x18
	strh    r5, [r0, #0x10]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r0, [sp, #0x24]
	bl      Function_200dc48
	lsl     r1, r4, #1
	mov     r2, #0x43
	add     r3, r7, r1
	lsl     r2, r2, #6
	ldrh    r1, [r3, r2]
	add     r2, #0x12
	ldrh    r2, [r3, r2]
	add     r0, sp, #0x18
	mov     r3, #0x3e
	bl      Function_200112c
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x224283c

.word 0x224608c @ 0x224283c
.thumb
Function_2242840: @ 2242840 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, #0x3e
	mov     r7, r2
	bl      Function_2013a04
	ldr     r5, [pc, #0x54] @ 0x22428a8, (=0x224693c)
	str     r0, [r6, #0x0]
	mov     r4, #0x0
.thumb
branch_2242858: @ 2242858 :thumb
	ldr     r0, [r6, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x4]
	mov     r1, r7
	bl      Function_2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x4
	blt     branch_2242858
	ldr     r3, [pc, #0x3c] @ 0x22428ac, (=0x224608c)
	add     r2, sp, #0x4
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r1, #0x4
	add     r0, sp, #0x4
	strh    r1, [r0, #0x10]
	ldr     r0, [r6, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r0, [sp, #0x10]
	bl      Function_200dc48
	mov     r1, #0x0
	add     r0, sp, #0x4
	mov     r2, r1
	mov     r3, #0x3e
	bl      Function_200112c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22428a8

.word 0x224693c @ 0x22428a8
.word 0x224608c @ 0x22428ac
.thumb
Function_22428b0: @ 22428b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r7, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	cmp     r3, #0x0
	bne     branch_22428c4
	ldr     r5, [pc, #0x68] @ 0x2242928, (=0x224610c)
	mov     r6, #0xd
	b       branch_22428c8
@ 0x22428c4

.thumb
branch_22428c4: @ 22428c4 :thumb
	ldr     r5, [pc, #0x64] @ 0x224292c, (=0x22460ac)
	mov     r6, #0xc
.thumb
branch_22428c8: @ 22428c8 :thumb
	mov     r0, r6
	mov     r1, #0x3e
	bl      Function_2013a04
	mov     r4, #0x0
	str     r0, [r7, #0x0]
	cmp     r6, #0x0
	ble     branch_22428ec
.thumb
branch_22428d8: @ 22428d8 :thumb
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	mov     r3, r4
	bl      Function_2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, r6
	blt     branch_22428d8
.thumb
branch_22428ec: @ 22428ec :thumb
	ldr     r3, [pc, #0x40] @ 0x2242930, (=0x224608c)
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r0, sp, #0x8
	strh    r6, [r0, #0x10]
	ldr     r0, [r7, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r0, [sp, #0x14]
	bl      Function_200dc48
	mov     r1, #0x0
	add     r0, sp, #0x8
	mov     r2, r1
	mov     r3, #0x3e
	bl      Function_200112c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2242926


.align 2


.word 0x224610c @ 0x2242928
.word 0x22460ac @ 0x224292c
.word 0x224608c @ 0x2242930
.thumb
Function_2242934: @ 2242934 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r2, #0x0
	bne     branch_224294a
	ldr     r6, [pc, #0x28] @ 0x2242968, (=0x224610c)
	cmp     r4, #0xc
	blt     branch_2242954
	bl      ErrorHandling
	b       branch_2242954
@ 0x224294a

.thumb
branch_224294a: @ 224294a :thumb
	ldr     r6, [pc, #0x20] @ 0x224296c, (=0x22460ac)
	cmp     r4, #0xb
	bcc     branch_2242954
	bl      ErrorHandling
.thumb
branch_2242954: @ 2242954 :thumb
	lsl     r0, r4, #3
	add     r1, r6, r0
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	strb    r0, [r5, #0x3]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	strb    r0, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x2242966


.align 2


.word 0x224610c @ 0x2242968
.word 0x22460ac @ 0x224296c
.thumb
Function_2242970: @ 2242970 :thumb
	push    {r4-r7}
	cmp     r2, #0x0
	bne     branch_224297c
	ldr     r4, [pc, #0x34] @ 0x22429ac, (=0x224610c)
	mov     r3, #0xd
	b       branch_2242980
@ 0x224297c

.thumb
branch_224297c: @ 224297c :thumb
	ldr     r4, [pc, #0x30] @ 0x22429b0, (=0x22460ac)
	mov     r3, #0xc
.thumb
branch_2242980: @ 2242980 :thumb
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_22429a4
	mov     r5, #0x6
	mov     r6, #0x4
.thumb
branch_224298a: @ 224298a :thumb
	ldsh    r7, [r4, r6]
	cmp     r0, r7
	bne     branch_224299c
	ldsh    r7, [r4, r5]
	cmp     r1, r7
	bne     branch_224299c
	mov     r0, r2
	pop     {r4-r7}
	bx      lr
@ 0x224299c

.thumb
branch_224299c: @ 224299c :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r4, #0x8
	cmp     r2, r3
	blt     branch_224298a
.thumb
branch_22429a4: @ 22429a4 :thumb
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x22429aa


.align 2


.word 0x224610c @ 0x22429ac
.word 0x22460ac @ 0x22429b0
.thumb
Function_22429b4: @ 22429b4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, #0x84
	mov     r1, #0x3e
	mov     r7, r2
	bl      Function_2013a04
	ldr     r1, [sp, #0x4]
	mov     r2, #0xa7
	mov     r3, #0x0
	str     r0, [r5, #0x0]
	bl      Function_2013a4c
	mov     r0, #0x84
	mov     r4, #0x1
	.hword  0x1e46 @ sub r6, r0, #0x1
	b       branch_22429f0
@ 0x22429dc

.thumb
branch_22429dc: @ 22429dc :thumb
	.hword  0x1e62 @ sub r2, r4, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x58] @ 0x2242a3c, (=0x2246174)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r2, r3]
	mov     r1, r7
	mov     r3, r4
	bl      Function_2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_22429f0: @ 22429f0 :thumb
	cmp     r4, r6
	blt     branch_22429dc
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, #0xa8
	mov     r3, r6
	bl      Function_2013a4c
	ldr     r3, [pc, #0x3c] @ 0x2242a40, (=0x224608c)
	add     r2, sp, #0x8
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	add     r1, sp, #0x8
	mov     r0, #0x84
	strh    r0, [r1, #0x10]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, #0x1f
	mov     r3, #0xb
	str     r0, [sp, #0x14]
	bl      Function_200dc48
	mov     r1, #0x0
	add     r0, sp, #0x8
	mov     r2, r1
	mov     r3, #0x3e
	bl      Function_200112c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2242a3c

.word 0x2246174 @ 0x2242a3c
.word 0x224608c @ 0x2242a40
.thumb
Function_2242a44: @ 2242a44 :thumb
	cmp     r1, #0x0
	bne     branch_2242a50
	ldr     r1, [pc, #0x18] @ 0x2242a64, (=0x1150)
	mov     r2, #0x0
	str     r2, [r0, r1]
	bx      lr
@ 0x2242a50

.thumb
branch_2242a50: @ 2242a50 :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r1, #0x82
	bcs     branch_2242a60
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xc] @ 0x2242a68, (=0x2246174)
	ldrh    r2, [r1, r2]
	ldr     r1, [pc, #0x4] @ 0x2242a64, (=0x1150)
	str     r2, [r0, r1]
.thumb
branch_2242a60: @ 2242a60 :thumb
	bx      lr
@ 0x2242a62


.align 2


.word 0x1150 @ 0x2242a64
.word 0x2246174 @ 0x2242a68
.thumb
Function_2242a6c: @ 2242a6c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	bl      Function_2001288
	mov     r6, r0
	mov     r0, r5
	add     r1, sp, #0x0
	bl      Function_20014d0
	add     r0, sp, #0x0
	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2242a9e
	ldr     r0, [pc, #0x14] @ 0x2242aa4, (=0xffff)
	cmp     r1, r0
	beq     branch_2242a98
	ldr     r0, [pc, #0x14] @ 0x2242aa8, (=0x5dc)
	bl      Function_2005748
.thumb
branch_2242a98: @ 2242a98 :thumb
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
.thumb
branch_2242a9e: @ 2242a9e :thumb
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2242aa4

.word 0xffff @ 0x2242aa4
.word 0x5dc @ 0x2242aa8
.thumb
Function_2242aac: @ 2242aac :thumb
	mov     r2, #0x0
	mov     r3, r0
	mov     r1, r2
.thumb
branch_2242ab2: @ 2242ab2 :thumb
	strh    r1, [r3, #0x4]
	strh    r1, [r3, #0x16]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x9
	blt     branch_2242ab2
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	bx      lr
@ 0x2242ac4

.thumb
Function_2242ac4: @ 2242ac4 :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	strh    r2, [r0, #0x4]
	strh    r3, [r0, #0x16]
	bx      lr
@ 0x2242ace


.align 2, 0


.thumb
Function_2242ad0: @ 2242ad0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2242d84
	ldr     r0, [r4, #0x4]
	bl      Function_2242b54
	mov     r0, r4
	bl      Function_2242cac
	mov     r0, r4
	bl      Function_2242d38
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      Function_200f174
	mov     r0, r4
	bl      Function_2245934
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242b12


.align 2, 0


.thumb
Function_2242b14: @ 2242b14 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      Function_20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x2242b30, (=0x22469a0)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x2242b2e


.align 2


.word 0x22469a0 @ 0x2242b30
.thumb
Function_2242b34: @ 2242b34 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2242d98
	mov     r0, r4
	bl      Function_2242d74
	ldr     r0, [r4, #0x4]
	bl      Function_2242c80
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242b52


.align 2, 0


.thumb
Function_2242b54: @ 2242b54 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0x10c] @ 0x2242c68, (=0x2246278)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xfc] @ 0x2242c6c, (=0x22462c0)
	add     r3, sp, #0x70
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xd8] @ 0x2242c70, (=0x22462a4)
	add     r3, sp, #0x54
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	ldr     r5, [pc, #0xb4] @ 0x2242c74, (=0x22462f8)
	add     r3, sp, #0x38
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	ldr     r5, [pc, #0x90] @ 0x2242c78, (=0x22462dc)
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
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x6c] @ 0x2242c7c, (=0x2246288)
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
	bl      Function_20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x2242c66


.align 2


.word 0x2246278 @ 0x2242c68
.word 0x22462c0 @ 0x2242c6c
.word 0x22462a4 @ 0x2242c70
.word 0x22462f8 @ 0x2242c74
.word 0x22462dc @ 0x2242c78
.word 0x2246288 @ 0x2242c7c
.thumb
Function_2242c80: @ 2242c80 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x2242cac

.thumb
Function_2242cac: @ 2242cac :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r4, [r5, #0x4]

	mov     r0, #0x60
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, #Worldtrade_Narc
	mov     r2, r1
	mov     r3, r1
	bl      Call_LoadFromNARC_RLCN

	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	ldr     r0, [pc, #0x2c] @ 0x2242d34, (=0x1090)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2242d24
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      Function_2019120
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff74
.thumb
branch_2242d24: @ 2242d24 :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x9
	bne     branch_2242d30
	mov     r0, r5
	bl      Function_223d068
.thumb
branch_2242d30: @ 2242d30 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2242d34

.word 0x1090 @ 0x2242d34
.thumb
Function_2242d38: @ 2242d38 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r4, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x1c] @ 0x2242d70, (=0xefc)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [pc, #0xc] @ 0x2242d70, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2242d6e


.align 2


.word 0xefc @ 0x2242d70
.thumb
Function_2242d74: @ 2242d74 :thumb
	ldr     r1, [pc, #0x4] @ 0x2242d7c, (=0xefc)
	ldr     r3, [pc, #0x8] @ 0x2242d80, (=Function_201a8fc+1)
	add     r0, r0, r1
	bx      r3
@ 0x2242d7c

.word 0xefc @ 0x2242d7c
.word Function_201a8fc+1 @ 0x2242d80
.thumb
Function_2242d84: @ 2242d84 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2242d98

.thumb
Function_2242d98: @ 2242d98 :thumb
	mov     r1, #0xbb
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2242da4, (=Function_20237bc_FreeMsg+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x2242da2


.align 2


.word Function_20237bc_FreeMsg+1 @ 0x2242da4
.thumb
Function_2242da8: @ 2242da8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r1, [r4, #0x24]
	cmp     r1, #0xc
	bhi     branch_2242e80
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242dc0

Jumppoints_2242dc0:
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242e80 - Jumppoints_2242dc0 - 2
.hword branch_2242dda - Jumppoints_2242dc0 - 2
.hword branch_2242df6 - Jumppoints_2242dc0 - 2
.hword branch_2242e12 - Jumppoints_2242dc0 - 2
.hword branch_2242e2e - Jumppoints_2242dc0 - 2
.hword branch_2242e50 - Jumppoints_2242dc0 - 2
.hword branch_2242e66 - Jumppoints_2242dc0 - 2
.thumb
branch_2242dda: @ 2242dda :thumb
	ldr     r1, [pc, #0xb4] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0xb0] @ 0x2242e94, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x2
	bl      Function_223c3f4
	b       branch_2242e84
@ 0x2242df6

.thumb
branch_2242df6: @ 2242df6 :thumb
	ldr     r1, [pc, #0x98] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x94] @ 0x2242e94, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x7
	bl      Function_223c3f4
	b       branch_2242e84
@ 0x2242e12

.thumb
branch_2242e12: @ 2242e12 :thumb
	ldr     r1, [pc, #0x7c] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x78] @ 0x2242e94, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0xc
	bl      Function_223c3f4
	b       branch_2242e84
@ 0x2242e2e

.thumb
branch_2242e2e: @ 2242e2e :thumb
	ldr     r1, [pc, #0x60] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x2242e94, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x12
	bl      Function_223c3f4
	ldr     r0, [pc, #0x4c] @ 0x2242e98, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2242e84
@ 0x2242e50

.thumb
branch_2242e50: @ 2242e50 :thumb
	ldr     r1, [pc, #0x3c] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x2242e94, (=0xb94)
	mov     r3, #0x0
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	b       branch_2242e84
@ 0x2242e66

.thumb
branch_2242e66: @ 2242e66 :thumb
	ldr     r1, [pc, #0x28] @ 0x2242e90, (=0xf0f)
	mov     r2, #0x8e
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x24] @ 0x2242e94, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	mov     r0, #0x1d
	str     r0, [r4, #0x2c]
	b       branch_2242e84
@ 0x2242e80

.thumb
branch_2242e80: @ 2242e80 :thumb
	bl      ErrorHandling
.thumb
branch_2242e84: @ 2242e84 :thumb
	mov     r0, r4
	bl      Function_223c5d8
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2242e90

.word 0xf0f @ 0x2242e90
.word 0xb94 @ 0x2242e94
.word 0x10b0 @ 0x2242e98
.thumb
Function_2242e9c: @ 2242e9c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_207893c
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b7e4
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x10] @ 0x2242ecc, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x6
	bl      Function_2243ec8
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242ecc

.word 0x1484 @ 0x2242ecc
.thumb
Function_2242ed0: @ 2242ed0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2242f58
	bl      Function_223b7d8
	ldr     r1, [pc, #0x90] @ 0x2242f74, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_2242f6e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242efa

Jumppoints_2242efa:
.hword branch_2242f4a - Jumppoints_2242efa - 2
.hword branch_2242f4a - Jumppoints_2242efa - 2
.hword branch_2242f52 - Jumppoints_2242efa - 2
.hword branch_2242f42 - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f3a - Jumppoints_2242efa - 2
.hword branch_2242f42 - Jumppoints_2242efa - 2
.hword branch_2242f6e - Jumppoints_2242efa - 2
.hword branch_2242f4a - Jumppoints_2242efa - 2
.hword branch_2242f32 - Jumppoints_2242efa - 2
.hword branch_2242f1a - Jumppoints_2242efa - 2
.thumb
branch_2242f1a: @ 2242f1a :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2243b08
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2c
	ldr     r0, [r0, #0x28]
	bl      Function_202cf28
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	b       branch_2242f6e
@ 0x2242f32

.thumb
branch_2242f32: @ 2242f32 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_2242f6e
@ 0x2242f3a

.thumb
branch_2242f3a: @ 2242f3a :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2242f6e
@ 0x2242f42

.thumb
branch_2242f42: @ 2242f42 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2242f6e
@ 0x2242f4a

.thumb
branch_2242f4a: @ 2242f4a :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_2242f6e
@ 0x2242f52

.thumb
branch_2242f52: @ 2242f52 :thumb
	bl      Function_2038a0c
	b       branch_2242f6e
@ 0x2242f58

.thumb
branch_2242f58: @ 2242f58 :thumb
	ldr     r0, [pc, #0x18] @ 0x2242f74, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2242f6e
	bl      Function_2038a0c
.thumb
branch_2242f6e: @ 2242f6e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242f72


.align 2


.word 0x1484 @ 0x2242f74
.thumb
Function_2242f78: @ 2242f78 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b834
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x2242f94, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	strh    r0, [r4, #0x36]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242f92


.align 2


.word 0x1484 @ 0x2242f94
.thumb
Function_2242f98: @ 2242f98 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2242ffe
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x2243018, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_2243014
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242fc2

Jumppoints_2242fc2:
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242ff8 - Jumppoints_2242fc2 - 2
.hword branch_2242fe8 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2243014 - Jumppoints_2242fc2 - 2
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242fe8 - Jumppoints_2242fc2 - 2
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242ff0 - Jumppoints_2242fc2 - 2
.hword branch_2242fe2 - Jumppoints_2242fc2 - 2
.thumb
branch_2242fe2: @ 2242fe2 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_2243014
@ 0x2242fe8

.thumb
branch_2242fe8: @ 2242fe8 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2243014
@ 0x2242ff0

.thumb
branch_2242ff0: @ 2242ff0 :thumb
	mov     r0, #0x4
	bl      Function_2038ae0
	b       branch_2243014
@ 0x2242ff8

.thumb
branch_2242ff8: @ 2242ff8 :thumb
	bl      Function_2038a0c
	b       branch_2243014
@ 0x2242ffe

.thumb
branch_2242ffe: @ 2242ffe :thumb
	ldr     r0, [pc, #0x18] @ 0x2243018, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2243014
	bl      Function_2038a0c
.thumb
branch_2243014: @ 2243014 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243018

.word 0x1484 @ 0x2243018
.thumb
Function_224301c: @ 224301c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b888
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x14] @ 0x2243044, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0xb
	bl      Function_2243ec8
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243042


.align 2


.word 0x1484 @ 0x2243044
.thumb
Function_2243048: @ 2243048 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_22430e0
	bl      Function_223b7d8
	ldr     r1, [pc, #0xa0] @ 0x22430fc, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_22430f6
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2243072

Jumppoints_2243072:
.hword branch_22430d2 - Jumppoints_2243072 - 2
.hword branch_22430d2 - Jumppoints_2243072 - 2
.hword branch_22430da - Jumppoints_2243072 - 2
.hword branch_22430ca - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_22430c4 - Jumppoints_2243072 - 2
.hword branch_22430be - Jumppoints_2243072 - 2
.hword branch_22430d2 - Jumppoints_2243072 - 2
.hword branch_22430f6 - Jumppoints_2243072 - 2
.hword branch_2243092 - Jumppoints_2243072 - 2
.thumb
branch_2243092: @ 2243092 :thumb
	ldr     r0, [pc, #0x6c] @ 0x2243100, (=0x251)
	ldsb    r5, [r4, r0]
	cmp     r5, #0x0
	beq     branch_22430a0
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430a0

.thumb
branch_22430a0: @ 22430a0 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202daac
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, r0
	mov     r0, r4
	add     r1, r4, r1
	mov     r3, r5
	bl      Function_2243bc4
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430be

.thumb
branch_22430be: @ 22430be :thumb
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430c4

.thumb
branch_22430c4: @ 22430c4 :thumb
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430ca

.thumb
branch_22430ca: @ 22430ca :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430d2

.thumb
branch_22430d2: @ 22430d2 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f6
@ 0x22430da

.thumb
branch_22430da: @ 22430da :thumb
	bl      Function_2038a0c
	b       branch_22430f6
@ 0x22430e0

.thumb
branch_22430e0: @ 22430e0 :thumb
	ldr     r0, [pc, #0x18] @ 0x22430fc, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22430f6
	bl      Function_2038a0c
.thumb
branch_22430f6: @ 22430f6 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22430fa


.align 2


.word 0x1484 @ 0x22430fc
.word 0x251 @ 0x2243100
.thumb
Function_2243104: @ 2243104 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b96c
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x224311c, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224311a


.align 2


.word 0x1484 @ 0x224311c
.thumb
Function_2243120: @ 2243120 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243184
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x22431a0, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_224319a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243148

Jumppoints_2243148:
.hword branch_2243176 - Jumppoints_2243148 - 2
.hword branch_2243176 - Jumppoints_2243148 - 2
.hword branch_224317e - Jumppoints_2243148 - 2
.hword branch_2243176 - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_224316e - Jumppoints_2243148 - 2
.hword branch_224316e - Jumppoints_2243148 - 2
.hword branch_224316e - Jumppoints_2243148 - 2
.hword branch_2243176 - Jumppoints_2243148 - 2
.hword branch_224319a - Jumppoints_2243148 - 2
.hword branch_2243168 - Jumppoints_2243148 - 2
.thumb
branch_2243168: @ 2243168 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_224319a
@ 0x224316e

.thumb
branch_224316e: @ 224316e :thumb
	mov     r0, #0x3
	bl      Function_2038ae0
	b       branch_224319a
@ 0x2243176

.thumb
branch_2243176: @ 2243176 :thumb
	mov     r0, #0x4
	bl      Function_2038ae0
	b       branch_224319a
@ 0x224317e

.thumb
branch_224317e: @ 224317e :thumb
	bl      Function_2038a0c
	b       branch_224319a
@ 0x2243184

.thumb
branch_2243184: @ 2243184 :thumb
	ldr     r0, [pc, #0x18] @ 0x22431a0, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224319a
	bl      Function_2038a0c
.thumb
branch_224319a: @ 224319a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224319e


.align 2


.word 0x1484 @ 0x22431a0
.thumb
Function_22431a4: @ 22431a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_207893c
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r2, [r4, r1]
	add     r0, r1, #0x4
	mul     r0, r2
	add     r2, r4, r0
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	mov     r2, #0xa5
	add     r1, #0x10
	lsl     r2, r2, #4
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_223ba88
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x10
	bl      Function_2243ec8
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22431ec, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22431ea


.align 2


.word 0x1484 @ 0x22431ec
.thumb
Function_22431f0: @ 22431f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_22432ba
	bl      Function_223b7d8
	ldr     r2, [pc, #0xd0] @ 0x22432d4, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0xf
	cmp     r2, #0xf
	bhi     branch_22432d0
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x224321a

Jumppoints_224321a:
.hword branch_22432ac - Jumppoints_224321a - 2
.hword branch_22432ac - Jumppoints_224321a - 2
.hword branch_22432b4 - Jumppoints_224321a - 2
.hword branch_22432a4 - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_224329c - Jumppoints_224321a - 2
.hword branch_2243294 - Jumppoints_224321a - 2
.hword branch_22432d0 - Jumppoints_224321a - 2
.hword branch_22432d0 - Jumppoints_224321a - 2
.hword branch_22432ac - Jumppoints_224321a - 2
.hword branch_22432d0 - Jumppoints_224321a - 2
.hword branch_224323a - Jumppoints_224321a - 2
.thumb
branch_224323a: @ 224323a :thumb
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_2243b08
	mov     r2, #0x45
	lsl     r2, r2, #2
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldrh    r2, [r4, r2]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243ce4
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x18]
	add     r1, r4, r1
	bl      Function_2243e2c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x19
	ldr     r0, [r0, #0x28]
	bl      Function_202cfec
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x2c]
	add     r1, r4, r1
	bl      Function_2243e48
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	ldr     r0, [r0, #0x28]
	bl      Function_202cf28
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_202440c
	bl      Function_206d104
	b       branch_22432d0
@ 0x2243294

.thumb
branch_2243294: @ 2243294 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
	b       branch_22432d0
@ 0x224329c

.thumb
branch_224329c: @ 224329c :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22432d0
@ 0x22432a4

.thumb
branch_22432a4: @ 22432a4 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22432d0
@ 0x22432ac

.thumb
branch_22432ac: @ 22432ac :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22432d0
@ 0x22432b4

.thumb
branch_22432b4: @ 22432b4 :thumb
	bl      Function_2038a0c
	b       branch_22432d0
@ 0x22432ba

.thumb
branch_22432ba: @ 22432ba :thumb
	ldr     r0, [pc, #0x18] @ 0x22432d4, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22432d0
	bl      Function_2038a0c
.thumb
branch_22432d0: @ 22432d0 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22432d4

.word 0x1484 @ 0x22432d4
.thumb
Function_22432d8: @ 22432d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223baec
	mov     r0, #0xf
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22432f0, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22432ee


.align 2


.word 0x1484 @ 0x22432f0
.thumb
Function_22432f4: @ 22432f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243358
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x2243374, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_224336e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224331c

Jumppoints_224331c:
.hword branch_224334a - Jumppoints_224331c - 2
.hword branch_224334a - Jumppoints_224331c - 2
.hword branch_2243352 - Jumppoints_224331c - 2
.hword branch_224334a - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_2243342 - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224334a - Jumppoints_224331c - 2
.hword branch_224336e - Jumppoints_224331c - 2
.hword branch_224333c - Jumppoints_224331c - 2
.thumb
branch_224333c: @ 224333c :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_224336e
@ 0x2243342

.thumb
branch_2243342: @ 2243342 :thumb
	mov     r0, #0x3
	bl      Function_2038ae0
	b       branch_224336e
@ 0x224334a

.thumb
branch_224334a: @ 224334a :thumb
	mov     r0, #0x4
	bl      Function_2038ae0
	b       branch_224336e
@ 0x2243352

.thumb
branch_2243352: @ 2243352 :thumb
	bl      Function_2038a0c
	b       branch_224336e
@ 0x2243358

.thumb
branch_2243358: @ 2243358 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243374, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224336e
	bl      Function_2038a0c
.thumb
branch_224336e: @ 224336e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243372


.align 2


.word 0x1484 @ 0x2243374
.thumb
Function_2243378: @ 2243378 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b8d8
	mov     r0, #0x19
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2243394, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243394

.word 0x1484 @ 0x2243394
.thumb
Function_2243398: @ 2243398 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	bne     branch_22433a6
	b       branch_2243528
@ 0x22433a6

.thumb
branch_22433a6: @ 22433a6 :thumb
	bl      Function_223b7d8
	ldr     r1, [pc, #0x198] @ 0x2243544, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0x10
	bhi     branch_2243408
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22433c4

Jumppoints_22433c4:
.hword branch_2243516 - Jumppoints_22433c4 - 2
.hword branch_2243516 - Jumppoints_22433c4 - 2
.hword branch_224351e - Jumppoints_22433c4 - 2
.hword branch_2243516 - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_22434c8 - Jumppoints_22433c4 - 2
.hword branch_224345e - Jumppoints_22433c4 - 2
.hword branch_2243516 - Jumppoints_22433c4 - 2
.hword branch_224353e - Jumppoints_22433c4 - 2
.hword branch_22433e6 - Jumppoints_22433c4 - 2
.hword branch_22433ec - Jumppoints_22433c4 - 2
.thumb
branch_22433e6: @ 22433e6 :thumb
	mov     r0, #0x1a
	str     r0, [r4, #0x2c]
	b       branch_224353e
@ 0x22433ec

.thumb
branch_22433ec: @ 22433ec :thumb
	mov     r1, #0x13
	mov     r0, #0x1
	lsl     r1, r1, #4
	strh    r0, [r4, #0x36]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243e84
	cmp     r0, #0x0
	beq     branch_2243452
	cmp     r0, #0x1
	beq     branch_224340a
	cmp     r0, #0x2
	beq     branch_224342e
.thumb
branch_2243408: @ 2243408 :thumb
	b       branch_224353e
@ 0x224340a

.thumb
branch_224340a: @ 224340a :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x134] @ 0x2243548, (=0xf0f)
	ldr     r1, [pc, #0x138] @ 0x224354c, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1d
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
	b       branch_224353e
@ 0x224342e

.thumb
branch_224342e: @ 224342e :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x110] @ 0x2243548, (=0xf0f)
	ldr     r1, [pc, #0x114] @ 0x224354c, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x23
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
	b       branch_224353e
@ 0x2243452

.thumb
branch_2243452: @ 2243452 :thumb
	mov     r0, #0x12
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xf8] @ 0x2243550, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_224353e
@ 0x224345e

.thumb
branch_224345e: @ 224345e :thumb
	strh    r2, [r4, #0x36]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202da60
	cmp     r0, #0x0
	beq     branch_22434c0
	mov     r0, #0x3e
	bl      AllocPkmnData
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	bl      Function_202da70
	mov     r0, r5
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b5cc
	mov     r0, #0x2
	str     r0, [r4, #0x28]
	mov     r0, #0x22
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202daac
	mov     r2, r0
	mov     r0, r4
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_2243bc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_202da68
	mov     r0, r5
	bl      free
	b       branch_224353e
@ 0x22434c0

.thumb
branch_22434c0: @ 22434c0 :thumb
	mov     r0, r4
	bl      Function_224362c
	b       branch_224353e
@ 0x22434c8

.thumb
branch_22434c8: @ 22434c8 :thumb
	strh    r2, [r4, #0x36]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202da60
	cmp     r0, #0x0
	beq     branch_224353e
	mov     r0, #0x3e
	bl      AllocPkmnData
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	bl      Function_202da70
	mov     r0, r5
	bl      Function_2076b10_Dummy
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200b5cc
	mov     r0, #0x3
	str     r0, [r4, #0x28]
	mov     r0, #0x22
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_202da68
	mov     r0, r5
	bl      free
	b       branch_224353e
@ 0x2243516

.thumb
branch_2243516: @ 2243516 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_224353e
@ 0x224351e

.thumb
branch_224351e: @ 224351e :thumb
	mov     r0, #0x3
	mov     r1, #0x1
	bl      Function_2039834
	b       branch_224353e
@ 0x2243528

.thumb
branch_2243528: @ 2243528 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243544, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224353e
	bl      Function_2038a0c
.thumb
branch_224353e: @ 224353e :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2243542


.align 2


.word 0x1484 @ 0x2243544
.word 0xf0f @ 0x2243548
.word 0xb94 @ 0x224354c
.word 0x10b0 @ 0x2243550
.thumb
Function_2243554: @ 2243554 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243568

.thumb
Function_2243568: @ 2243568 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b888
	mov     r0, #0x1b
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2243584, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243584

.word 0x1484 @ 0x2243584
.thumb
Function_2243588: @ 2243588 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_224360c
	bl      Function_223b7d8
	ldr     r2, [pc, #0x8c] @ 0x2243628, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0xf
	cmp     r2, #0xf
	bhi     branch_2243604
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22435b2

Jumppoints_22435b2:
.hword branch_22435f2 - Jumppoints_22435b2 - 2
.hword branch_22435f2 - Jumppoints_22435b2 - 2
.hword branch_22435fc - Jumppoints_22435b2 - 2
.hword branch_22435f2 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_22435ee - Jumppoints_22435b2 - 2
.hword branch_22435f2 - Jumppoints_22435b2 - 2
.hword branch_2243604 - Jumppoints_22435b2 - 2
.hword branch_22435d2 - Jumppoints_22435b2 - 2
.thumb
branch_22435d2: @ 22435d2 :thumb
	mov     r0, r4
	bl      Function_2243ed8
	cmp     r0, #0x0
	beq     branch_22435e8
	mov     r0, #0x16
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	strh    r0, [r4, #0x36]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22435e8

.thumb
branch_22435e8: @ 22435e8 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x36]
	b       branch_2243604
@ 0x22435ee

.thumb
branch_22435ee: @ 22435ee :thumb
	strh    r1, [r4, #0x36]
	b       branch_2243604
@ 0x22435f2

.thumb
branch_22435f2: @ 22435f2 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22435fc

.thumb
branch_22435fc: @ 22435fc :thumb
	bl      Function_2038a0c
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243604

.thumb
branch_2243604: @ 2243604 :thumb
	mov     r0, r4
	bl      Function_224362c
	b       branch_2243622
@ 0x224360c

.thumb
branch_224360c: @ 224360c :thumb
	ldr     r0, [pc, #0x18] @ 0x2243628, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2243622
	bl      Function_2038a0c
.thumb
branch_2243622: @ 2243622 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243626


.align 2


.word 0x1484 @ 0x2243628
.thumb
Function_224362c: @ 224362c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x1
	beq     branch_224363c
	cmp     r1, #0x2
	beq     branch_224364a
	pop     {r4,pc}
@ 0x224363c

.thumb
branch_224363c: @ 224363c :thumb
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x224364a

.thumb
branch_224364a: @ 224364a :thumb
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2243658

.thumb
Function_2243658: @ 2243658 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202daac
	ldr     r3, [pc, #0x68] @ 0x22436d0, (=0x251)
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, r0
	ldsb    r3, [r4, r3]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243bc4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x18]
	add     r1, r4, r1
	bl      Function_2243e2c
	ldr     r0, [r4, #0x0]
	mov     r1, #0x19
	ldr     r0, [r0, #0x28]
	bl      Function_202cfec
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x2c]
	add     r1, r4, r1
	bl      Function_2243e48
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	ldr     r0, [r0, #0x28]
	bl      Function_202cf28
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_202440c
	bl      Function_206d104
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_202da68
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x13
	mov     r2, #0xb
	bl      Function_2243ec8
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22436ce


.align 2


.word 0x251 @ 0x22436d0
.thumb
Function_22436d4: @ 22436d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b928
	mov     r0, #0x14
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22436ec, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22436ea


.align 2


.word 0x1484 @ 0x22436ec
.thumb
Function_22436f0: @ 22436f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243758
	bl      Function_223b7d8
	ldr     r1, [pc, #0x70] @ 0x2243774, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_224376e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224371a

Jumppoints_224371a:
.hword branch_224374a - Jumppoints_224371a - 2
.hword branch_224374a - Jumppoints_224371a - 2
.hword branch_2243752 - Jumppoints_224371a - 2
.hword branch_2243748 - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_2243748 - Jumppoints_224371a - 2
.hword branch_2243740 - Jumppoints_224371a - 2
.hword branch_224374a - Jumppoints_224371a - 2
.hword branch_224376e - Jumppoints_224371a - 2
.hword branch_224373a - Jumppoints_224371a - 2
.thumb
branch_224373a: @ 224373a :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_224376e
@ 0x2243740

.thumb
branch_2243740: @ 2243740 :thumb
	mov     r0, #0x3
	bl      Function_2038ae0
	b       branch_224376e
@ 0x2243748

.thumb
branch_2243748: @ 2243748 :thumb
	str     r0, [r4, #0x3c]
.thumb
branch_224374a: @ 224374a :thumb
	mov     r0, #0x4
	bl      Function_2038ae0
	b       branch_224376e
@ 0x2243752

.thumb
branch_2243752: @ 2243752 :thumb
	bl      Function_2038a0c
	b       branch_224376e
@ 0x2243758

.thumb
branch_2243758: @ 2243758 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243774, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224376e
	bl      Function_2038a0c
.thumb
branch_224376e: @ 224376e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243772


.align 2


.word 0x1484 @ 0x2243774
.thumb
Function_2243778: @ 2243778 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x224377c

.thumb
Function_224377c: @ 224377c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	strh    r1, [r4, #0x36]
	mov     r1, #0x9
	mov     r2, #0x7
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243794

.thumb
Function_2243794: @ 2243794 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	strh    r1, [r4, #0x36]
	mov     r1, #0x9
	mov     r2, #0x8
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437ac

.thumb
Function_22437ac: @ 22437ac :thumb
	push    {r4,lr}
	mov     r1, #0x9
	mov     r2, r1
	mov     r4, r0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437c0

.thumb
Function_22437c0: @ 22437c0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x0
	strh    r1, [r4, #0x36]
	mov     r1, #0x9
	mov     r2, #0xa
	bl      Function_223c4c0
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437d8

.thumb
Function_22437d8: @ 22437d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b96c
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22437f0, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437ee


.align 2


.word 0x1484 @ 0x22437f0
.thumb
Function_22437f4: @ 22437f4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243866
	bl      Function_223b7d8
	ldr     r1, [pc, #0x78] @ 0x2243880, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_224387c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224381c

Jumppoints_224381c:
.hword branch_2243858 - Jumppoints_224381c - 2
.hword branch_2243858 - Jumppoints_224381c - 2
.hword branch_2243860 - Jumppoints_224381c - 2
.hword branch_2243858 - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_2243850 - Jumppoints_224381c - 2
.hword branch_224384a - Jumppoints_224381c - 2
.hword branch_2243844 - Jumppoints_224381c - 2
.hword branch_2243858 - Jumppoints_224381c - 2
.hword branch_224387c - Jumppoints_224381c - 2
.hword branch_224383c - Jumppoints_224381c - 2
.thumb
branch_224383c: @ 224383c :thumb
	mov     r0, r4
	bl      Function_224362c
	b       branch_224387c
@ 0x2243844

.thumb
branch_2243844: @ 2243844 :thumb
	mov     r0, r4
	bl      Function_224362c
.thumb
branch_224384a: @ 224384a :thumb
	mov     r0, r4
	bl      Function_224362c
.thumb
branch_2243850: @ 2243850 :thumb
	mov     r0, #0x3
	bl      Function_2038ae0
	b       branch_224387c
@ 0x2243858

.thumb
branch_2243858: @ 2243858 :thumb
	mov     r0, #0x4
	bl      Function_2038ae0
	b       branch_224387c
@ 0x2243860

.thumb
branch_2243860: @ 2243860 :thumb
	bl      Function_2038a0c
	b       branch_224387c
@ 0x2243866

.thumb
branch_2243866: @ 2243866 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243880, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224387c
	bl      Function_2038a0c
.thumb
branch_224387c: @ 224387c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243880

.word 0x1484 @ 0x2243880
.thumb
Function_2243884: @ 2243884 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x34] @ 0x22438c0, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x22438c4, (=0xb94)
	mov     r2, #0x8d
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x24
	bl      Function_223c3f4
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, r4
	bl      Function_22442e4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22438c0

.word 0xf0f @ 0x22438c0
.word 0xb94 @ 0x22438c4
.thumb
Function_22438c8: @ 22438c8 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x3c]
	mov     r2, #0x94
	add     r1, #0xf
	cmp     r1, #0xe
	bhi     branch_2243908
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22438e0

Jumppoints_22438e0:
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_2243906 - Jumppoints_22438e0 - 2
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_22438fe - Jumppoints_22438e0 - 2
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_2243908 - Jumppoints_22438e0 - 2
.hword branch_2243906 - Jumppoints_22438e0 - 2
.hword branch_2243902 - Jumppoints_22438e0 - 2
.thumb
branch_22438fe: @ 22438fe :thumb
	mov     r2, #0x1a
	b       branch_2243908
@ 0x2243902

.thumb
branch_2243902: @ 2243902 :thumb
	mov     r2, #0x91
	b       branch_2243908
@ 0x2243906

.thumb
branch_2243906: @ 2243906 :thumb
	mov     r2, #0x96
.thumb
branch_2243908: @ 2243908 :thumb
	ldr     r1, [pc, #0xc] @ 0x2243918, (=0xf0f)
	mov     r3, #0x1
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0xc] @ 0x224391c, (=0xb94)
	ldr     r1, [r0, r1]
	bl      Function_2245824
	pop     {r3,pc}
@ 0x2243918

.word 0xf0f @ 0x2243918
.word 0xb94 @ 0x224391c
.thumb
Function_2243920: @ 2243920 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22438c8
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x24
	bl      Function_223c3f4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243946


.align 2, 0


.thumb
Function_2243948: @ 2243948 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22438c8
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x24
	bl      Function_223c3f4
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, r4
	bl      Function_22442e4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243974

.thumb
Function_2243974: @ 2243974 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x25
	mov     r2, #0x1e
	bl      Function_223c3f4
	mov     r0, r4
	mov     r1, #0x21
	mov     r2, #0x24
	bl      Function_2243ec8
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224398e


.align 2, 0


.thumb
Function_2243990: @ 2243990 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_2024804
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x20]
	bl      Function_2024814
	mov     r0, #0x1f
	str     r0, [r4, #0x2c]
	bl      PRNG
	ldr     r1, [pc, #0x1c] @ 0x22439c8, (=0x445)
	blx     _s32_div_f
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3c
	bcc     branch_22439bc
	bl      ErrorHandling
.thumb
branch_22439bc: @ 22439bc :thumb
	mov     r0, #0x42
	add     r1, r5, #0x2
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22439c8

.word 0x445 @ 0x22439c8
.thumb
Function_22439cc: @ 22439cc :thumb
	mov     r1, #0x42
	lsl     r1, r1, #6
	ldr     r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_22439e0
	mov     r1, #0x20
	str     r1, [r0, #0x2c]
.thumb
branch_22439e0: @ 22439e0 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x22439e4

.thumb
Function_22439e4: @ 22439e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_2024828
	cmp     r0, #0x1
	bne     branch_22439fa
	ldr     r0, [pc, #0x8] @ 0x2243a00, (=0x1088)
	ldrh    r0, [r4, r0]
	str     r0, [r4, #0x2c]
.thumb
branch_22439fa: @ 22439fa :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22439fe


.align 2


.word 0x1088 @ 0x2243a00
.thumb
Function_2243a04: @ 2243a04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_2024828
	cmp     r0, #0x2
	bne     branch_2243a20
	ldr     r0, [pc, #0xc] @ 0x2243a24, (=0x108a)
	ldrh    r0, [r4, r0]
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_223c5f4
.thumb
branch_2243a20: @ 2243a20 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243a24

.word 0x108a @ 0x2243a24
.thumb
Function_2243a28: @ 2243a28 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2024804
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x20]
	bl      Function_2024814
	mov     r0, #0x23
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243a42


.align 2, 0


.thumb
Function_2243a44: @ 2243a44 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_2024828
	cmp     r0, #0x2
	bne     branch_2243a82
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x20] @ 0x2243a88, (=0xf0f)
	ldr     r1, [pc, #0x20] @ 0x2243a8c, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	ldr     r2, [r4, #0x28]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
.thumb
branch_2243a82: @ 2243a82 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2243a88

.word 0xf0f @ 0x2243a88
.word 0xb94 @ 0x2243a8c
.thumb
Function_2243a90: @ 2243a90 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223c5f4
	bl      Function_2039794
	ldr     r0, [pc, #0x44] @ 0x2243ae4, (=0x10b0)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2243ac0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	b       branch_2243ad8
@ 0x2243ac0

.thumb
branch_2243ac0: @ 2243ac0 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, r1
	bl      Function_200f174
.thumb
branch_2243ad8: @ 2243ad8 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2243ae2


.align 2


.word 0x10b0 @ 0x2243ae4
.thumb
Function_2243ae8: @ 2243ae8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2243b04, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2243b00
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2243b00: @ 2243b00 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243b04

.word 0xbe4 @ 0x2243b04
.thumb
Function_2243b08: @ 2243b08 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x45
	mov     r5, r0
	lsl     r1, r1, #2
	ldrh    r0, [r5, r1]
	cmp     r0, #0x12
	beq     branch_2243b62
	mov     r0, #0x3e
	bl      AllocPkmnData
	mov     r2, #0x45
	lsl     r2, r2, #2
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r2]
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0xc]
	bl      Function_2079c9c
	mov     r1, r4
	bl      Function_20774c8
	mov     r2, #0x45
	ldr     r0, [r5, #0x0]
	lsl     r2, r2, #2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_202da7c
	mov     r2, #0x45
	lsl     r2, r2, #2
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r2]
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0xc]
	bl      Function_2079968
	mov     r0, r4
	bl      free
	b       branch_2243baa
@ 0x2243b62

.thumb
branch_2243b62: @ 2243b62 :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      GetAdrOfPkmnInParty
	mov     r4, r0
	bl      Function_207893c
	mov     r2, #0x45
	ldr     r0, [r5, #0x0]
	lsl     r2, r2, #2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      Function_202da7c
	ldr     r1, [pc, #0x34] @ 0x2243bbc, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      Function_207a080
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x2243bc0, (=0x1b9)
	ldr     r0, [r0, #0x8]
	bl      IsFirstPkmnInPartyWantedSpecies
	cmp     r0, #0x0
	bne     branch_2243baa
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      LoadVariableAreaAdress_16
	bl      Function_202cca8
branch_2243baa: @ 2243baa :thumb

	cmp     r6, #0x0
	beq     branch_2243bb8
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_202da68
.thumb
branch_2243bb8: @ 2243bb8 :thumb
	pop     {r4-r6,pc}
@ 0x2243bba


.align 2


.word 0x116 @ 0x2243bbc
.word 0x1b9 @ 0x2243bc0
.thumb
Function_2243bc4: @ 2243bc4 :thumb
	push    {r0-r3}
.thumb
Function_2243bc6: @ 2243bc6 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r6, r3
	bl      GetPkmnData
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x20]
	bl      Function_202f180
	mov     r0, #0x12
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2243bf8
	mov     r0, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_2243bf8: @ 2243bf8 :thumb
	cmp     r6, #0x0
	beq     branch_2243c74
	mov     r1, #0x46
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0xd0] @ 0x2243ce0, (=0x1ed)
	cmp     r0, r1
	bne     branch_2243c56
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2243c3c
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x56
	bne     branch_2243c56
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2243c56
.thumb
branch_2243c3c: @ 2243c3c :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      LoadFlagAdress
	mov     r6, r0
	bl      Function_206b5f8
	cmp     r0, #0x0
	bne     branch_2243c56
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_206b608
.thumb
branch_2243c56: @ 2243c56 :thumb
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      SetPkmnData
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2243de8
branch_2243c74: @ 2243c74 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x12
	bne     branch_2243c9c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      CopyPkmnDataToParty
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	mov     r1, #0x4a
	mov     r2, #0x12
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	sub     r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_2243ccc
@ 0x2243c9c

.thumb
branch_2243c9c: @ 2243c9c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x20
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x4
	bl      Function_20799f0
	mov     r0, r4
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	bl      Function_20798a0
	mov     r0, #0x4a
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2243ccc: @ 2243ccc :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_202da68
	add     sp, #0x8
	pop     {r4-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2243ce0

.word 0x1ed @ 0x2243ce0
.thumb
Function_2243ce4: @ 2243ce4 :thumb
	push    {r0-r3}
.thumb
Function_2243ce6: @ 2243ce6 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x20]
	bl      Function_202f180
	mov     r0, #0x12
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2243d0a
	mov     r0, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_2243d0a: @ 2243d0a :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	ldr     r1, [pc, #0xcc] @ 0x2243de4, (=0x1ed)
	cmp     r0, r1
	bne     branch_2243d5e
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2243d44
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x56
	bne     branch_2243d5e
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_2243d5e
.thumb
branch_2243d44: @ 2243d44 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      LoadFlagAdress
	mov     r6, r0
	bl      Function_206b5f8
	cmp     r0, #0x0
	bne     branch_2243d5e
	mov     r0, r6
	mov     r1, #0x1
	bl      Function_206b608
.thumb
branch_2243d5e: @ 2243d5e :thumb
	mov     r1, #0x46
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x0
	bl      SetPkmnData
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      SetPkmnData
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x12
	bne     branch_2243da0
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      CopyPkmnDataToParty
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	mov     r1, #0x4a
	mov     r2, #0x12
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	sub     r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_2243dd0
@ 0x2243da0

.thumb
branch_2243da0: @ 2243da0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x20
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x4
	bl      Function_20799f0
	mov     r0, r4
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	bl      Function_20798a0
	mov     r0, #0x4a
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2243dd0: @ 2243dd0 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2243de8
	add     sp, #0x8
	pop     {r4-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2243de4

.word 0x1ed @ 0x2243de4
.thumb
Function_2243de8: @ 2243de8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	blx     Function_4_21d806c
	ldr     r0, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	lsl     r0, r0, #24
	lsr     r1, r0, #16
	ldr     r0, [sp, #0xc]
	lsl     r3, r3, #24
	ldr     r2, [sp, #0x18]
	lsl     r0, r0, #24
	lsr     r3, r3, #8
	orr     r0, r3
	orr     r0, r1
	mov     r1, r2
	orr     r1, r0
	cmp     r4, #0x1
	bne     branch_2243e20
	mov     r0, r5
	bl      Function_202daa4
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e20

.thumb
branch_2243e20: @ 2243e20 :thumb
	mov     r0, r5
	bl      Function_202da94
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e2a


.align 2, 0


.thumb
Function_2243e2c: @ 2243e2c :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x2243e44, (=0x11e)
	mov     r4, r1
	add     r2, r3, #0x1
	ldrb    r1, [r4, r3]
	.hword  0x1d5b @ add r3, r3, #0x5
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      Function_2038fdc
	pop     {r4,pc}
@ 0x2243e42


.align 2


.word 0x11e @ 0x2243e44
.thumb
Function_2243e48: @ 2243e48 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x75
	add     r2, sp, #0x4
	bl      GetPkmnData
	mov     r0, r4
	bl      Call_DecidePkmnGender
	mov     r3, r0
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	add     r0, #0xce
	add     r0, r4, r0
	add     r4, #0xf6
	ldrb    r1, [r4, #0x0]
	add     r2, sp, #0x4
	bl      Function_202c1ec
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x4
	bl      Function_202b758
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e82


.align 2, 0


.thumb
Function_2243e84: @ 2243e84 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2241498
	cmp     r0, #0x0
	beq     branch_2243ea2
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2243ea2
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2243ea2

.thumb
branch_2243ea2: @ 2243ea2 :thumb
	ldr     r0, [pc, #0x20] @ 0x2243ec4, (=0x10ac)
	ldrh    r1, [r4, r0]
	mov     r0, #0x87
	lsl     r0, r0, #2
	cmp     r1, r0
	bne     branch_2243ebe
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      GetNrOfPkmnInParty
	cmp     r0, #0x6
	bne     branch_2243ebe
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243ebe

.thumb
branch_2243ebe: @ 2243ebe :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243ec2


.align 2


.word 0x10ac @ 0x2243ec4
.thumb
Function_2243ec8: @ 2243ec8 :thumb
	ldr     r3, [pc, #0x8] @ 0x2243ed4, (=0x1088)
	strh    r1, [r0, r3]
	add     r1, r3, #0x2
	strh    r2, [r0, r1]
	bx      lr
@ 0x2243ed2


.align 2


.word 0x1088 @ 0x2243ed4
.thumb
Function_2243ed8: @ 2243ed8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      Function_202da60
	cmp     r0, #0x0
	bne     branch_2243ef2
	ldrh    r0, [r4, #0x36]
	cmp     r0, #0x0
	beq     branch_2243ef2
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243ef2

.thumb
branch_2243ef2: @ 2243ef2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243ef6


.align 2, 0


.thumb
Function_2243ef8: @ 2243ef8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	mov     r4, r1
	bl      Function_224432c
	ldr     r2, [pc, #0x8c] @ 0x2243f94, (=0xd78)
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x2
	bl      Function_223c300
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	lsl     r0, r0, #18
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x7c] @ 0x2243f98, (=0x182000)
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      Function_2021aa0
	ldr     r1, [pc, #0x74] @ 0x2243f9c, (=0xed4)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [pc, #0x68] @ 0x2243f9c, (=0xed4)
	mov     r1, #0x7
	mul     r1, r4
	ldr     r0, [r5, r0]
	.hword  0x1cc9 @ add r1, r1, #0x3
	bl      Function_2021d6c
	ldr     r0, [pc, #0x5c] @ 0x2243f9c, (=0xed4)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_2021cac
	ldr     r4, [pc, #0x54] @ 0x2243fa0, (=0x2246322)
	mov     r7, #0x0
	mov     r6, #0xe
.thumb
branch_2243f4e: @ 2243f4e :thumb
	add     r0, sp, #0x0
	bl      Function_2021aa0
	ldr     r1, [pc, #0x4c] @ 0x2243fa4, (=0xed8)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2021cc8
	ldr     r0, [pc, #0x40] @ 0x2243fa4, (=0xed8)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      Function_2021d6c
	ldr     r0, [pc, #0x34] @ 0x2243fa4, (=0xed8)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2021cac
	ldr     r0, [pc, #0x2c] @ 0x2243fa4, (=0xed8)
	ldrh    r1, [r4, #0x0]
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, r0]
	bl      Function_22441a0
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x7
	blt     branch_2243f4e
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2243f92


.align 2


.word 0xd78 @ 0x2243f94
.word 0x182000 @ 0x2243f98
.word 0xed4 @ 0x2243f9c
.word 0x2246322 @ 0x2243fa0
.word 0xed8 @ 0x2243fa4
.thumb
Function_2243fa8: @ 2243fa8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2243ef8
	ldr     r0, [pc, #0x30] @ 0x2243fe4, (=0x224400d)
	mov     r1, #0x10
	mov     r2, #0x5
	mov     r3, #0x3e
	bl      Function_200679c
	ldr     r1, [pc, #0x28] @ 0x2243fe8, (=0x108c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      Function_201ced0
	mov     r1, #0x0
	mov     r2, r1
	str     r1, [r0, #0x0]
	sub     r2, #0x28
	str     r2, [r0, #0x4]
	str     r4, [r0, #0x8]
	str     r5, [r0, #0xc]
	bl      Function_2243ff0
	ldr     r0, [pc, #0x10] @ 0x2243fec, (=0x62f)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x2243fe2


.align 2


.word 0x224400d @ 0x2243fe4
.word 0x108c @ 0x2243fe8
.word 0x62f @ 0x2243fec
.thumb
Function_2243ff0: @ 2243ff0 :thumb
	mov     r3, r0
	ldr     r2, [r3, #0xc]
	ldr     r0, [pc, #0xc] @ 0x2244004, (=0xed4)
	ldr     r3, [r3, #0x8]
	ldr     r0, [r2, r0]
	mov     r2, #0x7
	mul     r2, r3
	ldr     r3, [pc, #0x8] @ 0x2244008, (=Function_2021d6c+1)
	add     r1, r1, r2
	bx      r3
@ 0x2244004

.word 0xed4 @ 0x2244004
.word Function_2021d6c+1 @ 0x2244008



.thumb
Function_224400c: @ 224400c :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r5, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_22440a8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2244026

Jumppoints_2244026:
.hword branch_224402e - Jumppoints_2244026 - 2
.hword branch_2244054 - Jumppoints_2244026 - 2
.hword branch_224406e - Jumppoints_2244026 - 2
.hword branch_2244094 - Jumppoints_2244026 - 2
.thumb
branch_224402e: @ 224402e :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa0
	ble     branch_2244042
	mov     r0, #0xa0
	str     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243ff0
.thumb
branch_2244042: @ 2244042 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	add     r2, r0, #0x5
	ldr     r0, [pc, #0x60] @ 0x22440ac, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_22441a0
	pop     {r4-r6,pc}
@ 0x2244054

.thumb
branch_2244054: @ 2244054 :thumb
	ldr     r0, [pc, #0x54] @ 0x22440ac, (=0xed4)
	ldr     r0, [r5, r0]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_22440a8
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2243ff0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x224406e

.thumb
branch_224406e: @ 224406e :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x82
	bge     branch_2244082
	mov     r0, #0x82
	str     r0, [r4, #0x4]
	mov     r1, #0x3
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243ff0
.thumb
branch_2244082: @ 2244082 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	.hword  0x1e82 @ sub r2, r0, #0x2
	ldr     r0, [pc, #0x20] @ 0x22440ac, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_22441a0
	pop     {r4-r6,pc}
@ 0x2244094

.thumb
branch_2244094: @ 2244094 :thumb
	ldr     r0, [pc, #0x18] @ 0x22440b0, (=0x60d)
	bl      Function_2005748
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x14] @ 0x22440b4, (=0x1090)
	mov     r2, #0x1
	strh    r2, [r1, r0]
	mov     r0, r6
	bl      Function_20067d0
.thumb
branch_22440a8: @ 22440a8 :thumb
	pop     {r4-r6,pc}
@ 0x22440aa


.align 2


.word 0xed4 @ 0x22440ac
.word 0x60d @ 0x22440b0
.word 0x1090 @ 0x22440b4
.thumb
Function_22440b8: @ 22440b8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x30] @ 0x22440f0, (=0x22440fd)
	mov     r1, #0x10
	mov     r2, #0x5
	mov     r3, #0x3e
	bl      Function_200679c
	ldr     r1, [pc, #0x28] @ 0x22440f4, (=0x108c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      Function_201ced0
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r1, #0x82
	str     r1, [r0, #0x4]
	str     r4, [r0, #0x8]
	mov     r1, #0x5
	str     r5, [r0, #0xc]
	bl      Function_2243ff0
	ldr     r0, [pc, #0x10] @ 0x22440f8, (=0x60e)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x22440ee


.align 2


.word 0x22440fd @ 0x22440f0
.word 0x108c @ 0x22440f4
.word 0x60e @ 0x22440f8
.thumb
Function_22440fc: @ 22440fc :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	ldr     r5, [r4, #0xc]
	cmp     r1, #0x3
	bhi     branch_2244196
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2244114

Jumppoints_2244114:
.hword branch_224411c - Jumppoints_2244114 - 2
.hword branch_2244144 - Jumppoints_2244114 - 2
.hword branch_2244166 - Jumppoints_2244114 - 2
.hword branch_224418c - Jumppoints_2244114 - 2
.thumb
branch_224411c: @ 224411c :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa0
	ble     branch_2244132
	mov     r0, #0xa0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2243ff0
.thumb
branch_2244132: @ 2244132 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	add     r2, r0, #0x2
	ldr     r0, [pc, #0x5c] @ 0x2244198, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_22441a0
	pop     {r3-r5,pc}
@ 0x2244144

.thumb
branch_2244144: @ 2244144 :thumb
	ldr     r0, [pc, #0x50] @ 0x2244198, (=0xed4)
	ldr     r0, [r5, r0]
	bl      Function_2021fd0
	cmp     r0, #0x0
	bne     branch_2244196
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2243ff0
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x63
	lsl     r0, r0, #4
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x2244166

.thumb
branch_2244166: @ 2244166 :thumb
	mov     r0, #0x13
	ldr     r1, [r4, #0x4]
	mvn     r0, r0
	cmp     r1, r0
	bge     branch_224417a
	mov     r1, #0x3
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243ff0
.thumb
branch_224417a: @ 224417a :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	.hword  0x1f42 @ sub r2, r0, #0x5
	ldr     r0, [pc, #0x14] @ 0x2244198, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_22441a0
	pop     {r3-r5,pc}
@ 0x224418c

.thumb
branch_224418c: @ 224418c :thumb
	ldr     r1, [pc, #0xc] @ 0x224419c, (=0x1090)
	mov     r2, #0x1
	strh    r2, [r5, r1]
	bl      Function_20067d0
.thumb
branch_2244196: @ 2244196 :thumb
	pop     {r3-r5,pc}
@ 0x2244198

.word 0xed4 @ 0x2244198
.word 0x1090 @ 0x224419c
.thumb
Function_22441a0: @ 22441a0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r2
	cmp     r1, #0x0
	ble     branch_22441be
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22441cc
@ 0x22441be

.thumb
branch_22441be: @ 22441be :thumb
	lsl     r0, r1, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22441cc: @ 22441cc :thumb
	blx     _ffix
	sub     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	ble     branch_22441ea
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_22441f8
@ 0x22441ea

.thumb
branch_22441ea: @ 22441ea :thumb
	lsl     r0, r5, #12
	blx     _fflt
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     _fsub
.thumb
branch_22441f8: @ 22441f8 :thumb
	blx     _ffix
	mov     r1, #0x1
	lsl     r1, r1, #20
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      Function_2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2244214

.thumb
Function_2244214: @ 2244214 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2244230, (=0x224633e)
	bl      Function_2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_224422a
	cmp     r0, r4
	blt     branch_224422e
.thumb
branch_224422a: @ 224422a :thumb
	mov     r0, #0x0
	mvn     r0, r0
.thumb
branch_224422e: @ 224422e :thumb
	pop     {r4,pc}
@ 0x2244230

.word 0x224633e @ 0x2244230
.thumb
Function_2244234: @ 2244234 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, r1
	beq     branch_224424e
	mov     r0, r2
	cmp     r0, #0x1
	bne     branch_224424e
	ldr     r0, [pc, #0x7c] @ 0x22442c8, (=0x64f)
	bl      Function_2005748
.thumb
branch_224424e: @ 224424e :thumb
	ldr     r4, [sp, #0x4]
	mov     r0, #0xe
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	mov     r5, r4
	mov     r7, #0x11
.thumb
branch_224425a: @ 224425a :thumb
	ldr     r0, [sp, #0x8]
	cmp     r6, r0
	bge     branch_22442a4
	ldr     r0, [pc, #0x68] @ 0x22442cc, (=0x34a)
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r4, r0]
	mov     r3, #0xdd
	mov     r2, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x22442d0, (=0x1098)
	lsl     r3, r3, #2
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x60] @ 0x22442d4, (=0x10a0)
	ldrb    r3, [r4, r3]
	ldr     r1, [r2, r1]
	mov     r2, r6
	bl      Function_2244378
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x54] @ 0x22442d8, (=0xed8)
	beq     branch_2244290
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x10]
	bl      Function_2021d6c
	b       branch_2244298
@ 0x2244290

.thumb
branch_2244290: @ 2244290 :thumb
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      Function_2021d6c
.thumb
branch_2244298: @ 2244298 :thumb
	ldr     r0, [pc, #0x3c] @ 0x22442d8, (=0xed8)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_2021cac
	b       branch_22442ae
@ 0x22442a4

.thumb
branch_22442a4: @ 22442a4 :thumb
	ldr     r0, [pc, #0x30] @ 0x22442d8, (=0xed8)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      Function_2021cac
.thumb
branch_22442ae: @ 22442ae :thumb
	mov     r0, #0x49
	lsl     r0, r0, #2
	add     r4, r4, r0
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0x10]
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	cmp     r6, #0x7
	blt     branch_224425a
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22442c8

.word 0x64f @ 0x22442c8
.word 0x34a @ 0x22442cc
.word 0x1098 @ 0x22442d0
.word 0x10a0 @ 0x22442d4
.word 0xed8 @ 0x22442d8
.thumb
Function_22442dc: @ 22442dc :thumb
	lsl     r0, r0, #2
	add     r0, #0xe
	bx      lr
@ 0x22442e2


.align 2, 0


.thumb
Function_22442e4: @ 22442e4 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x40] @ 0x2244328, (=0xed8)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_22442ec: @ 22442ec :thumb
	ldr     r0, [r5, r7]
	bl      Function_2021d34
	cmp     r0, #0x0
	beq     branch_224431e
	ldr     r0, [pc, #0x30] @ 0x2244328, (=0xed8)
	ldr     r0, [r5, r0]
	bl      Function_2021e24
	mov     r6, r0
	mov     r0, r4
	bl      Function_22442dc
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r6, r0
	beq     branch_224431e
	mov     r0, r4
	bl      Function_22442dc
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x2244328, (=0xed8)
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r0, [r5, r0]
	bl      Function_2021d6c
.thumb
branch_224431e: @ 224431e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	blt     branch_22442ec
	pop     {r3-r7,pc}
@ 0x2244328

.word 0xed8 @ 0x2244328
.thumb
Function_224432c: @ 224432c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r2, [pc, #0x38] @ 0x224436c, (=0x10a0)
	mov     r4, r0
	mov     r0, #0x56
	mov     r1, #0x7
	add     r2, r4, r2
	mov     r3, #0x3e
	bl      Function_2006f88
	ldr     r3, [pc, #0x2c] @ 0x2244370, (=0x109c)
	mov     r1, #0x9
	str     r0, [r4, r3]
	mov     r0, #0x3e
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	mov     r2, #0x1
	add     r3, r4, r3
	bl      Function_2006f50
	ldr     r1, [pc, #0x1c] @ 0x2244374, (=0x1094)
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	lsl     r1, r1, #14
	blx     DC_FlushRange
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224436a


.align 2


.word 0x10a0 @ 0x224436c
.word 0x109c @ 0x2244370
.word 0x1094 @ 0x2244374
.thumb
Function_2244378: @ 2244378 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [sp, #0x18]
	mov     r1, r3
	mov     r5, r2
	bl      Function_205ca0c
	mov     r4, r0
	mov     r0, #0x6
	lsl     r0, r0, #8
	ldr     r1, [r7, #0x14]
	mul     r0, r4
	add     r0, r1, r0
	ldr     r1, [pc, #0x1c] @ 0x22443b4, (=0x2246314)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	mov     r2, #0x2
	ldr     r6, [r6, #0xc]
	lsl     r2, r2, #8
	blx     GXS_LoadOBJ
	lsl     r0, r4, #5
	add     r1, r5, #0x2
	add     r0, r6, r0
	lsl     r1, r1, #5
	mov     r2, #0x20
	blx     GXS_LoadOBJPltt
	pop     {r3-r7,pc}
@ 0x22443b4

.word 0x2246314 @ 0x22443b4
.thumb
Function_22443b8: @ 22443b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x22443d8, (=0x1090)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22443d4
	add     r0, #0xc
	ldr     r0, [r4, r0]
	bl      free
	ldr     r0, [pc, #0xc] @ 0x22443dc, (=0x1094)
	ldr     r0, [r4, r0]
	bl      free
.thumb
branch_22443d4: @ 22443d4 :thumb
	pop     {r4,pc}
@ 0x22443d6


.align 2


.word 0x1090 @ 0x22443d8
.word 0x1094 @ 0x22443dc
.thumb
Function_22443e0: @ 22443e0 :thumb
	push    {r4,lr}
	mov     r3, #0x45
	mov     r4, r0
	lsl     r3, r3, #2
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411dc
	mov     r1, r4
	add     r1, #0xbc
	str     r0, [r1, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0xcd
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	add     r0, #0xcf
	strb    r2, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x0
	add     r0, #0xd0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xce
	strb    r2, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xd4
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_208c324
	mov     r1, r4
	add     r1, #0xe8
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r0, #0x34]
	mov     r0, r4
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [r0, #0x24]
	mov     r0, r4
	add     r0, #0xc0
	str     r1, [r0, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      LoadVariableAreaAdress_18
	mov     r1, r4
	add     r1, #0xdc
	str     r0, [r1, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x30] @ 0x2244488, (=0x2246360)
	add     r0, #0xbc
	bl      Function_208d720
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x1c]
	add     r0, #0xbc
	bl      Function_208e9c0
	mov     r1, r4
	ldr     r0, [pc, #0x20] @ 0x224448c, (=Unknown_20f410c)
	add     r1, #0xbc
	mov     r2, #0x3e
	bl      AllocAndInitOverlayData
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x42
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2244486


.align 2


.word 0x2246360 @ 0x2244488
.word Unknown_20f410c @ 0x224448c
.thumb
Function_2244490: @ 2244490 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x3
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	beq     branch_22444b8
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      Call_free2
	ldr     r2, [r5, #0x24]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_223c4c0
	mov     r4, #0x4
.thumb
branch_22444b8: @ 22444b8 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22444bc

.thumb
Function_22444bc: @ 22444bc :thumb
	push    {r3,lr}
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22444c6


.align 2, 0


.thumb
Function_22444c8: @ 22444c8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x3e
	bl      AllocPkmnData
	ldr     r1, [pc, #0x19c] @ 0x2244670, (=0x10a4)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x24]
	cmp     r0, #0xa
	bls     branch_22444de
	b       branch_2244648
@ 0x22444de

.thumb
branch_22444de: @ 22444de :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22444ea

Jumppoints_22444ea:
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244648 - Jumppoints_22444ea - 2
.hword branch_2244500 - Jumppoints_22444ea - 2
.hword branch_2244546 - Jumppoints_22444ea - 2
.hword branch_22445e0 - Jumppoints_22444ea - 2
.hword branch_224458c - Jumppoints_22444ea - 2
.thumb
branch_2244500: @ 2244500 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xec
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	str     r1, [r0, #0x0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2244870
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	b       branch_2244648
@ 0x2244546

.thumb
branch_2244546: @ 2244546 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xf0
	ldr     r1, [r0, #0x0]
	mov     r0, r4
	add     r0, #0xec
	str     r1, [r0, #0x0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2244870
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x4
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	b       branch_2244648
@ 0x224458c

.thumb
branch_224458c: @ 224458c :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xd0] @ 0x2244670, (=0x10a4)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	bl      Function_202da70
	ldr     r0, [pc, #0xc4] @ 0x2244670, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_2244870
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
	b       branch_2244648
@ 0x22445e0

.thumb
branch_22445e0: @ 22445e0 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, r1]
	ldr     r0, [r0, #0x0]
	bl      Function_202da70
	ldr     r0, [pc, #0x84] @ 0x2244670, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2076b10_Dummy
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r4, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_2244870
	mov     r1, #0x49
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r4
	ldr     r1, [r4, r1]
	add     r0, #0xf4
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x3
	add     r0, #0xf8
	str     r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	add     r0, #0xfc
	str     r1, [r0, #0x0]
.thumb
branch_2244648: @ 2244648 :thumb
	ldr     r0, [r4, #0x0]
	mov     r2, #0x3e
	ldr     r1, [r0, #0x24]
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r1, [r4, r0]
	mov     r1, r4
	ldr     r0, [pc, #0x1c] @ 0x2244674, (=0x224636c)
	add     r1, #0xec
	bl      AllocAndInitOverlayData
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x42
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2244670

.word 0x10a4 @ 0x2244670
.word 0x224636c @ 0x2244674
.thumb
Function_2244678: @ 2244678 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	mov     r6, #0x3
	cmp     r0, #0x0
	beq     branch_224468e
	cmp     r0, #0x1
	bne     branch_224468c
	b       branch_224480c
@ 0x224468c

.thumb
branch_224468c: @ 224468c :thumb
	b       branch_2244842
@ 0x224468e

.thumb
branch_224468e: @ 224468e :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      CallOverlayDataJumpTable
	cmp     r0, #0x0
	bne     branch_224469e
	b       branch_2244842
@ 0x224469e

.thumb
branch_224469e: @ 224469e :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      Call_free2
	ldr     r1, [r4, #0x24]
	cmp     r1, #0x9
	bne     branch_2244724
	mov     r0, r4
	bl      Function_22448ac
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r7, r0
	bl      GetPkmnData
	mov     r3, r0
	add     r0, sp, #0x30
	lsl     r3, r3, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      CheckIfPkmnEvolves
	str     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2244716
	ldr     r5, [r4, #0x0]
	ldr     r0, [r5, #0x20]
	bl      LoadVariableAreaAdress_5
	ldr     r1, [r5, #0x3c]
	ldr     r2, [sp, #0x24]
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r5, #0x30]
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x28]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x30]
	mov     r1, r7
	str     r0, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [sp, #0x18]
	mov     r0, #0x3e
	str     r0, [sp, #0x1c]
	ldr     r3, [r5, #0x24]
	mov     r0, #0x0
	bl      Function_207ae68
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_2244842
@ 0x2244716

.thumb
branch_2244716: @ 2244716 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_2244842
@ 0x2244724

.thumb
branch_2244724: @ 2244724 :thumb
	cmp     r1, #0x8
	beq     branch_224472c
	cmp     r1, #0xa
	bne     branch_22447fe
.thumb
branch_224472c: @ 224472c :thumb
	mov     r0, r4
	bl      Function_22448ac
	mov     r7, r0
	mov     r0, #0x3e
	bl      AllocPkmnData
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	bl      Function_202da70
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r5, r0
	ldr     r0, [sp, #0x20]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r5, r0
	bne     branch_224477a
	mov     r1, #0x0
	mov     r0, r7
	mov     r2, r1
	bl      GetPkmnData
	mov     r5, r0
	mov     r1, #0x0
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	bl      GetPkmnData
	cmp     r5, r0
	beq     branch_22447ea
.thumb
branch_224477a: @ 224477a :thumb
	mov     r0, r7
	mov     r1, #0x6
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r3, r0
	add     r0, sp, #0x2c
	lsl     r3, r3, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      CheckIfPkmnEvolves
	str     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_22447dc
	ldr     r5, [r4, #0x0]
	ldr     r0, [r5, #0x20]
	bl      LoadVariableAreaAdress_5
	ldr     r1, [r5, #0x3c]
	ldr     r2, [sp, #0x28]
	str     r1, [sp, #0x0]
	ldr     r1, [r5, #0x10]
	str     r1, [sp, #0x4]
	ldr     r1, [r5, #0x30]
	str     r1, [sp, #0x8]
	ldr     r1, [r5, #0x28]
	str     r1, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x2c]
	mov     r1, r7
	str     r0, [sp, #0x14]
	mov     r0, #0x4
	str     r0, [sp, #0x18]
	mov     r0, #0x3e
	str     r0, [sp, #0x1c]
	ldr     r3, [r5, #0x24]
	mov     r0, #0x0
	bl      Function_207ae68
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_22447f6
@ 0x22447dc

.thumb
branch_22447dc: @ 22447dc :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_22447f6
@ 0x22447ea

.thumb
branch_22447ea: @ 22447ea :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
.thumb
branch_22447f6: @ 22447f6 :thumb
	ldr     r0, [sp, #0x20]
	bl      free
	b       branch_2244842
@ 0x22447fe

.thumb
branch_22447fe: @ 22447fe :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_2244842
@ 0x224480c

.thumb
branch_224480c: @ 224480c :thumb
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207b0d0
	cmp     r0, #0x0
	beq     branch_2244842
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_207b0e0
	mov     r0, r4
	bl      Function_22448e8
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2244848, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xc
	bl      Function_223c4c0
	mov     r6, #0x4
.thumb
branch_2244842: @ 2244842 :thumb
	mov     r0, r6
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2244848

.word 0xffff1fff @ 0x2244848
.thumb
Function_224484c: @ 224484c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x224486c, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      free
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x224486c

.word 0x10a4 @ 0x224486c



.thumb
Function_2244870: @ 2244870 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3e
	bl      AllocTrainerData
	mov     r4, r0
	bl      InitTrainerData
	mov     r1, #0x43
	lsl     r1, r1, #2
	mov     r0, r4
	add     r1, r5, r1
	bl      Function_2025ec0
	ldr     r1, [pc, #0x14] @ 0x22448a4, (=0x122)
	mov     r0, r4
	ldrb    r1, [r5, r1]
	bl      Function_2025fd0
	ldr     r1, [pc, #0x10] @ 0x22448a8, (=0x123)
	mov     r0, r4
	ldrb    r1, [r5, r1]
	bl      Function_2025fdc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22448a4

.word 0x122 @ 0x22448a4
.word 0x123 @ 0x22448a8
.thumb
Function_22448ac: @ 22448ac :thumb
	push    {r3,lr}
	cmp     r1, #0x9
	bne     branch_22448c6
	mov     r1, #0x95
	lsl     r1, r1, #2
	add     r3, r0, r1
	mov     r1, #0x12
	lsl     r1, r1, #4
	ldr     r2, [r0, r1]
	add     r0, r1, #0x4
	mul     r0, r2
	add     r0, r3, r0
	pop     {r3,pc}
@ 0x22448c6

.thumb
branch_22448c6: @ 22448c6 :thumb
	cmp     r1, #0xa
	bne     branch_22448d2
	mov     r1, #0x13
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x22448d2

.thumb
branch_22448d2: @ 22448d2 :thumb
	cmp     r1, #0x8
	bne     branch_22448de
	mov     r1, #0x13
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x22448de

.thumb
branch_22448de: @ 22448de :thumb
	bl      ErrorHandling
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22448e6


.align 2, 0


.thumb
Function_22448e8: @ 22448e8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r1, [r5, #0x24]
	bl      Function_22448ac
	mov     r2, #0x4a
	lsl     r2, r2, #2
	mov     r4, r0
	ldr     r0, [r5, r2]
	cmp     r0, #0x12
	bne     branch_2244918
	ldr     r0, [r5, #0x0]
	add     r1, r2, #0x4
	ldr     r0, [r0, #0x8]
	ldr     r1, [r5, r1]
	bl      GetAdrOfPkmnInParty
	mov     r1, r0
	mov     r0, r4
	bl      Function_20775ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2244918

.thumb
branch_2244918: @ 2244918 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r0, [r0, #0xc]
	ldr     r2, [r5, r2]
	bl      Function_2079968
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x4
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x0
	bl      Function_20799f0
	mov     r0, r4
	bl      Function_2076b10_Dummy
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      Function_20798a0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x224494e


.align 2, 0


.thumb
Function_2244950: @ 2244950 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2244f2c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	ldr     r0, [r4, #0x4]
	bl      Function_2244a7c
	mov     r0, r4
	bl      Function_2244b8c
	mov     r0, r4
	bl      Function_2244e48
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff74
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      Function_2038438
	mov     r0, r4
	bl      Function_2245934
	blx     Function_4_21d7a8c
	cmp     r0, #0x0
	bne     branch_22449ea
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x40]
	cmp     r0, #0x0
	beq     branch_22449e4
	ldr     r0, [pc, #0x30] @ 0x22449f4, (=0xf0f)
	ldr     r1, [pc, #0x34] @ 0x22449f8, (=0xb9c)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_223c5d8
	b       branch_22449ee
@ 0x22449e4

.thumb
branch_22449e4: @ 22449e4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_22449ee
@ 0x22449ea

.thumb
branch_22449ea: @ 22449ea :thumb
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
.thumb
branch_22449ee: @ 22449ee :thumb
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22449f4

.word 0xf0f @ 0x22449f4
.word 0xb9c @ 0x22449f8
.thumb
Function_22449fc: @ 22449fc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223c4b4
	bl      Function_20397b0
	ldr     r4, [r5, #0x2c]
	ldr     r1, [pc, #0x1c] @ 0x2244a28, (=0x2246a40)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r0, r5
	blx     r1
	ldr     r1, [r5, #0x2c]
	cmp     r4, r1
	beq     branch_2244a26
	mov     r1, #0x52
	mov     r2, #0x0
	lsl     r1, r1, #6
	strh    r2, [r5, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r2, [r5, r1]
.thumb
branch_2244a26: @ 2244a26 :thumb
	pop     {r3-r5,pc}
@ 0x2244a28

.word 0x2246a40 @ 0x2244a28
.thumb
Function_2244a2c: @ 2244a2c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x2244a74, (=0x1154)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244a46
	bl      Call_RemoveTaskFromTaskList
	ldr     r0, [pc, #0x34] @ 0x2244a74, (=0x1154)
	mov     r1, #0x0
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_2244a46: @ 2244a46 :thumb
	mov     r0, r4
	bl      Function_2244f64
	mov     r0, r4
	bl      Function_2244f00
	ldr     r0, [r4, #0x4]
	bl      Function_2244b68
	ldr     r0, [pc, #0x1c] @ 0x2244a78, (=0x1158)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223c4c8
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2244a6e
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2244a6e

.thumb
branch_2244a6e: @ 2244a6e :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244a72


.align 2


.word 0x1154 @ 0x2244a74
.word 0x1158 @ 0x2244a78
.thumb
Function_2244a7c: @ 2244a7c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xd4] @ 0x2244b58, (=0x22463b4)
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
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019ebc
	ldr     r5, [pc, #0xa8] @ 0x2244b5c, (=0x2246398)
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
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	ldr     r5, [pc, #0x84] @ 0x2244b60, (=0x22463d0)
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
	bl      Function_20183c4
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	ldr     r5, [pc, #0x58] @ 0x2244b64, (=0x224637c)
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
	bl      Function_20183c4
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      Function_2019690
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff74
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x2244b56


.align 2


.word 0x22463b4 @ 0x2244b58
.word 0x2246398 @ 0x2244b5c
.word 0x22463d0 @ 0x2244b60
.word 0x224637c @ 0x2244b64
.thumb
Function_2244b68: @ 2244b68 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2019044
	pop     {r4,pc}
@ 0x2244b8c


.thumb
Function_2244b8c: @ 2244b8c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x10]
	ldr     r4, [r0, #0x4]

	mov     r0, #Wifip2pmatch_Narc
	mov     r1, #0x3e
	bl      LoadFromNARC_8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x3e
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	str     r0, [sp, #0x2c]
	bl      Function_2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      Function_2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      LoadFromNARC_PlFont2
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x24]
	bl      Function_2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200daa4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x5
	mov     r2, r4
	mov     r3, #0x1
	bl      Function_200710c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xa
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r1, #0x0
	mov     r0, #0x6
	str     r1, [sp, #0x0]
	lsl     r0, r0, #8
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r0, #0x3e
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0xb
	mov     r2, r4
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x0
	mov     r1, r0
	bl      Function_201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201975c
	mov     r2, #0xcb
	ldr     r1, [pc, #0x118] @ 0x2244da0, (=0x1154)
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #2
	add     r0, r0, r1
	mov     r1, #0x0
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, #0x3e
	bl      Function_20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0x100] @ 0x2244da4, (=0x115c)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx     MIi_CpuCopy16
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0xf4] @ 0x2244da8, (=0x11dc)
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
	ldr     r1, [pc, #0xd8] @ 0x2244da8, (=0x11dc)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	sub     r1, #0x80
	add     r0, r0, r1
	str     r0, [sp, #0x14]
.thumb
branch_2244cdc: @ 2244cdc :thumb
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
branch_2244cee: @ 2244cee :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_2244cf8
	bl      ErrorHandling
.thumb
branch_2244cf8: @ 2244cf8 :thumb
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
branch_2244d10: @ 2244d10 :thumb
	ldr     r0, [pc, #0x90] @ 0x2244da4, (=0x115c)
	ldr     r3, [sp, #0x34]
	ldrh    r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      Function_200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_2244d10
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_2244d5a
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_2244cee
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_2244cee
@ 0x2244d5a

.thumb
branch_2244d5a: @ 2244d5a :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_2244cdc
	ldr     r1, [pc, #0x3c] @ 0x2244da8, (=0x11dc)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx     DC_FlushRange
	ldr     r1, [pc, #0x30] @ 0x2244dac, (=0x1158)
	ldr     r0, [sp, #0x10]
	mov     r2, #0x1
	str     r2, [r0, r1]
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x28] @ 0x2244db0, (=0x2244db5)
	add     r1, r1, r2
	mov     r2, #0x14
	bl      AddTaskToTaskList2
	ldr     r2, [pc, #0x10] @ 0x2244da0, (=0x1154)
	ldr     r1, [sp, #0x10]
	str     r0, [r1, r2]
	ldr     r0, [sp, #0x2c]
	bl      Call_FS_CloseFile
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2244d9e


.align 2


.word 0x1154 @ 0x2244da0
.word 0x115c @ 0x2244da4
.word 0x11dc @ 0x2244da8
.word 0x1158 @ 0x2244dac
.word 0x2244db5 @ 0x2244db0
.thumb
Function_2244db4: @ 2244db4 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2244e3c
	ldr     r0, [pc, #0x80] @ 0x2244e40, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_2244e3c
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GX_LoadBGPltt
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx     GXS_LoadBGPltt
	ldr     r0, [pc, #0x48] @ 0x2244e44, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2244e20
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_2244e3c
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2244e20

.thumb
branch_2244e20: @ 2244e20 :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_2244e3c
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_2244e3c: @ 2244e3c :thumb
	pop     {r4,pc}
@ 0x2244e3e


.align 2


.word 0x32b @ 0x2244e40
.word 0x32a @ 0x2244e44
.thumb
Function_2244e48: @ 2244e48 :thumb
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
	mov     r0, #0x94
	ldr     r1, [pc, #0x88] @ 0x2244eec, (=0xf2c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      Function_201a7e8
	ldr     r0, [pc, #0x7c] @ 0x2244eec, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x81
	lsl     r0, r0, #2
	ldr     r1, [pc, #0x60] @ 0x2244ef0, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x4
	bl      Function_201a7e8
	ldr     r0, [pc, #0x50] @ 0x2244ef0, (=0xf1c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x1
	ldr     r0, [pc, #0x48] @ 0x2244ef4, (=0xf0e00)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x48] @ 0x2244ef8, (=0xbb4)
	ldr     r0, [pc, #0x3c] @ 0x2244ef0, (=0xf1c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_22458cc
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x2c] @ 0x2244efc, (=0xefc)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_201a7e8
	ldr     r0, [pc, #0x1c] @ 0x2244efc, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_201ada4_ClearTextBox
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2244eec

.word 0xf2c @ 0x2244eec
.word 0xf1c @ 0x2244ef0
.word 0xf0e00 @ 0x2244ef4
.word 0xbb4 @ 0x2244ef8
.word 0xefc @ 0x2244efc
.thumb
Function_2244f00: @ 2244f00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2244f20, (=0xefc)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x14] @ 0x2244f24, (=0xf1c)
	add     r0, r4, r0
	bl      Function_201a8fc
	ldr     r0, [pc, #0x10] @ 0x2244f28, (=0xf2c)
	add     r0, r4, r0
	bl      Function_201a8fc
	pop     {r4,pc}
@ 0x2244f1e


.align 2


.word 0xefc @ 0x2244f20
.word 0xf1c @ 0x2244f24
.word 0xf2c @ 0x2244f28
.thumb
Function_2244f2c: @ 2244f2c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r1, #0xbe
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x4c
	ldr     r0, [r4, r1]
	mov     r1, #0x1f
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r1, [pc, #0x4] @ 0x2244f60, (=0xbb4)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244f5e


.align 2


.word 0xbb4 @ 0x2244f60
.thumb
Function_2244f64: @ 2244f64 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x2244f88, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0xbe
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_20237bc_FreeMsg
	pop     {r4,pc}
@ 0x2244f86


.align 2


.word 0xbb4 @ 0x2244f88
.thumb
Function_2244f8c: @ 2244f8c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x28] @ 0x2244fbc, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x11
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x10] @ 0x2244fc0, (=0x10ae)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244fba


.align 2


.word 0xf0f @ 0x2244fbc
.word 0x10ae @ 0x2244fc0
.thumb
Function_2244fc4: @ 2244fc4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x54] @ 0x2245020, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2245018
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2244ff6
	bl      Function_203848c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_2245018
@ 0x2244ff6

.thumb
branch_2244ff6: @ 2244ff6 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2245024, (=0xf0f)
	ldr     r1, [pc, #0x2c] @ 0x2245028, (=0xb9c)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_223c5d8
.thumb
branch_2245018: @ 2245018 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224501e


.align 2


.word 0x1070 @ 0x2245020
.word 0xf0f @ 0x2245024
.word 0xb9c @ 0x2245028
.thumb
Function_224502c: @ 224502c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x2245054, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2245058, (=0xb94)
	mov     r2, #0x7
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x10
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245052


.align 2


.word 0xf0f @ 0x2245054
.word 0xb94 @ 0x2245058
.thumb
Function_224505c: @ 224505c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x22450bc, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22450b8
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_224509a
	blx     Function_4_21d7a8c
	cmp     r0, #0x0
	bne     branch_2245086
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_22450b8
@ 0x2245086

.thumb
branch_2245086: @ 2245086 :thumb
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xb
	bl      Function_223c4c0
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_22450b8
@ 0x224509a

.thumb
branch_224509a: @ 224509a :thumb
	blx     Function_4_21d7a8c
	cmp     r0, #0x0
	beq     branch_22450a6
	blx     Function_4_21d7db0
.thumb
branch_22450a6: @ 22450a6 :thumb
	bl      Function_203848c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_22450b8: @ 22450b8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22450bc

.word 0x1070 @ 0x22450bc
.thumb
Function_22450c0: @ 22450c0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x22450e8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x1a
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x12
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22450e8

.word 0xf0f @ 0x22450e8
.thumb
Function_22450ec: @ 22450ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203848c
	blx     Function_4_21d7db0
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x13
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224510a


.align 2, 0


.thumb
Function_224510c: @ 224510c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x2245134, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x1b
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0x14
	mov     r2, #0xb
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245134

.word 0xf0f @ 0x2245134



.thumb
Function_2245138: @ 2245138 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x54
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x14
	blx     Function_4_21d78c8
	mov     r0, #0x2
	blx     Function_4_21d792c
	blx     Function_4_21d797c
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2245158


.thumb
Function_2245158: @ 2245158 :thumb
	push    {r4,lr}
	add     sp, #-0x48
	mov     r4, r0
	blx     Function_4_21d7ae4
	blx     Function_4_21d7a8c
	cmp     r0, #0x0
	beq     branch_22451d6
	blx     Function_4_21d7bfc
	cmp     r0, #0x8
	bhi     branch_22451b6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224517e

Jumppoints_224517e:
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_22451cc - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.hword branch_2245190 - Jumppoints_224517e - 2
.hword branch_22451b6 - Jumppoints_224517e - 2
.thumb
branch_2245190: @ 2245190 :thumb
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	blx     Function_4_21d75f4
	str     r0, [r4, #0x40]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x44]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x48]
	blx     Function_4_21d76e8
	blx     Function_4_21d7db0
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_22451d6
@ 0x22451b6

.thumb
branch_22451b6: @ 22451b6 :thumb
	add     r0, sp, #0x0
	blx     Function_4_21d75d4
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	sub     r0, #0x17
	str     r0, [r4, #0x3c]
	b       branch_22451d6
@ 0x22451cc

.thumb
branch_22451cc: @ 22451cc :thumb
	add     r0, sp, #0xc
	blx     Function_4_21d7eb8
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
.thumb
branch_22451d6: @ 22451d6 :thumb
	mov     r0, #0x3
	add     sp, #0x48
	pop     {r4,pc}
@ 0x22451dc

.thumb
Function_22451dc: @ 22451dc :thumb
	push    {r4,lr}
	mov     r4, r0
	blx     Function_4_21d81dc
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22451ec

.thumb
Function_22451ec: @ 22451ec :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	blx     Function_4_21d82a0
	cmp     r0, #0x5
	bhi     branch_224528c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245206

Jumppoints_2245206:
.hword branch_2245218 - Jumppoints_2245206 - 2
.hword branch_224528c - Jumppoints_2245206 - 2
.hword branch_224528c - Jumppoints_2245206 - 2
.hword branch_2245212 - Jumppoints_2245206 - 2
.hword branch_2245218 - Jumppoints_2245206 - 2
.hword branch_2245218 - Jumppoints_2245206 - 2
.thumb
branch_2245212: @ 2245212 :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	b       branch_224528c
@ 0x2245218

.thumb
branch_2245218: @ 2245218 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx     Function_4_21d75f4
	str     r0, [r4, #0x40]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x44]
	blx     Function_4_21d76e8
	blx     Function_4_21d7db0
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x7
	bhi     branch_224527a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224524a

Jumppoints_224524a:
.hword branch_224527a - Jumppoints_224524a - 2
.hword branch_224525a - Jumppoints_224524a - 2
.hword branch_224525a - Jumppoints_224524a - 2
.hword branch_224526c - Jumppoints_224524a - 2
.hword branch_224525e - Jumppoints_224524a - 2
.hword branch_2245276 - Jumppoints_224524a - 2
.hword branch_2245268 - Jumppoints_224524a - 2
.hword branch_2245276 - Jumppoints_224524a - 2
.thumb
branch_224525a: @ 224525a :thumb
	str     r0, [r4, #0x2c]
	b       branch_224527a
@ 0x224525e

.thumb
branch_224525e: @ 224525e :thumb
	blx     Function_4_21e55b0
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_224527a
@ 0x2245268

.thumb
branch_2245268: @ 2245268 :thumb
	str     r0, [r4, #0x2c]
	b       branch_224527a
@ 0x224526c

.thumb
branch_224526c: @ 224526c :thumb
	blx     Function_4_21d8e8c
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_224527a
@ 0x2245276

.thumb
branch_2245276: @ 2245276 :thumb
	bl      Function_2038a0c
.thumb
branch_224527a: @ 224527a :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x2245294, (=0xffffb1e0)
	cmp     r1, r0
	bge     branch_224528c
	ldr     r0, [pc, #0x14] @ 0x2245298, (=0xffff8ad1)
	cmp     r1, r0
	blt     branch_224528c
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
.thumb
branch_224528c: @ 224528c :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2245292


.align 2


.word 0xffffb1e0 @ 0x2245294
.word 0xffff8ad1 @ 0x2245298
.thumb
Function_224529c: @ 224529c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x14]
	bl      Function_202ad28
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2025d74
	cmp     r0, #0x0
	bne     branch_22452c0
	ldr     r1, [r5, #0x0]
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x38]
	bl      Function_2025d78
.thumb
branch_22452c0: @ 22452c0 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      Function_2025d74
	mov     r6, r0
	mov     r0, r4
	blx     Function_20a471c
	mov     r3, r0
	mov     r2, r1
	mov     r0, r6
	mov     r1, r3
	bl      Function_223b140
	mov     r0, #0x7
	str     r0, [r5, #0x2c]
	mov     r0, #0x3
	pop     {r4-r6,pc}
@ 0x22452e4

.thumb
Function_22452e4: @ 22452e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223bb40
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22452fc, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22452fa


.align 2


.word 0x1484 @ 0x22452fc
.thumb
Function_2245300: @ 2245300 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_224539a
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0xa0] @ 0x22453b4, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_224538e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224532c

Jumppoints_224532c:
.hword branch_2245372 - Jumppoints_224532c - 2
.hword branch_2245380 - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_2245372 - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_224538e - Jumppoints_224532c - 2
.hword branch_2245380 - Jumppoints_224532c - 2
.hword branch_2245364 - Jumppoints_224532c - 2
.hword branch_2245350 - Jumppoints_224532c - 2
.hword branch_2245356 - Jumppoints_224532c - 2
.hword branch_2245364 - Jumppoints_224532c - 2
.thumb
branch_2245350: @ 2245350 :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	b       branch_22453b0
@ 0x2245356

.thumb
branch_2245356: @ 2245356 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453b0
@ 0x2245364

.thumb
branch_2245364: @ 2245364 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453b0
@ 0x2245372

.thumb
branch_2245372: @ 2245372 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453b0
@ 0x2245380

.thumb
branch_2245380: @ 2245380 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453b0
@ 0x224538e

.thumb
branch_224538e: @ 224538e :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      Function_2038a0c
	b       branch_22453b0
@ 0x224539a

.thumb
branch_224539a: @ 224539a :thumb
	ldr     r0, [pc, #0x18] @ 0x22453b4, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22453b0
	bl      Function_2038a0c
.thumb
branch_22453b0: @ 22453b0 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22453b4

.word 0x1484 @ 0x22453b4
.thumb
Function_22453b8: @ 22453b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x24] @ 0x22453e4, (=0x10e4)
	ldr     r0, [r0, #0x20]
	add     r1, r4, r1
	bl      Function_2030e78
	ldr     r1, [pc, #0x18] @ 0x22453e4, (=0x10e4)
	add     r0, r4, r1
	add     r1, #0x64
	add     r1, r4, r1
	bl      Function_223bb84
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x22453e8, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22453e2


.align 2


.word 0x10e4 @ 0x22453e4
.word 0x1484 @ 0x22453e8
.thumb
Function_22453ec: @ 22453ec :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	bne     branch_22453fa
	b       branch_224550a
@ 0x22453fa

.thumb
branch_22453fa: @ 22453fa :thumb
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0x120] @ 0x2245524, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_22454fe
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224541a

Jumppoints_224541a:
.hword branch_22454e2 - Jumppoints_224541a - 2
.hword branch_22454f0 - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454e2 - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454fe - Jumppoints_224541a - 2
.hword branch_22454f0 - Jumppoints_224541a - 2
.hword branch_22454d4 - Jumppoints_224541a - 2
.hword branch_224543e - Jumppoints_224541a - 2
.hword branch_22454c6 - Jumppoints_224541a - 2
.hword branch_22454d4 - Jumppoints_224541a - 2
.thumb
branch_224543e: @ 224543e :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0xe0] @ 0x2245528, (=0x1148)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2245456
	cmp     r1, #0x1
	beq     branch_22454a6
	cmp     r1, #0x2
	beq     branch_22454b0
	b       branch_22454ba
@ 0x2245456

.thumb
branch_2245456: @ 2245456 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_22454a0
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224546a

Jumppoints_224546a:
.hword branch_2245472 - Jumppoints_224546a - 2
.hword branch_224548c - Jumppoints_224546a - 2
.hword branch_2245496 - Jumppoints_224546a - 2
.hword branch_2245482 - Jumppoints_224546a - 2
.thumb
branch_2245472: @ 2245472 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x2245482

.thumb
branch_2245482: @ 2245482 :thumb
	ldr     r0, [pc, #0xa8] @ 0x224552c, (=0xffffec75)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x224548c

.thumb
branch_224548c: @ 224548c :thumb
	ldr     r0, [pc, #0xa0] @ 0x2245530, (=0xffffec78)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x2245496

.thumb
branch_2245496: @ 2245496 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2245534, (=0xffffec77)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454a0

.thumb
branch_22454a0: @ 22454a0 :thumb
	bl      Function_2038a0c
	b       branch_2245520
@ 0x22454a6

.thumb
branch_22454a6: @ 22454a6 :thumb
	ldr     r0, [pc, #0x90] @ 0x2245538, (=0xffffec74)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454b0

.thumb
branch_22454b0: @ 22454b0 :thumb
	ldr     r0, [pc, #0x88] @ 0x224553c, (=0xffffec73)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454ba

.thumb
branch_22454ba: @ 22454ba :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      Function_2038a0c
	b       branch_2245520
@ 0x22454c6

.thumb
branch_22454c6: @ 22454c6 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454d4

.thumb
branch_22454d4: @ 22454d4 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454e2

.thumb
branch_22454e2: @ 22454e2 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454f0

.thumb
branch_22454f0: @ 22454f0 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_2245520
@ 0x22454fe

.thumb
branch_22454fe: @ 22454fe :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      Function_2038a0c
	b       branch_2245520
@ 0x224550a

.thumb
branch_224550a: @ 224550a :thumb
	ldr     r0, [pc, #0x18] @ 0x2245524, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2245520
	bl      Function_2038a0c
.thumb
branch_2245520: @ 2245520 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2245524

.word 0x1484 @ 0x2245524
.word 0x1148 @ 0x2245528
.word 0xffffec75 @ 0x224552c
.word 0xffffec78 @ 0x2245530
.word 0xffffec77 @ 0x2245534
.word 0xffffec74 @ 0x2245538
.word 0xffffec73 @ 0x224553c
.thumb
Function_2245540: @ 2245540 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x44]
	ldr     r1, [r4, #0x48]
	neg     r0, r0
	bl      0x21d1f3c
	ldr     r2, [r4, #0x44]
	mov     r1, r0
	mov     r0, r4
	neg     r2, r2
	bl      Function_22459b4
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245562


.align 2, 0


.thumb
Function_2245564: @ 2245564 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x224558c, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2245578
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2245586
.thumb
branch_2245578: @ 2245578 :thumb
	ldr     r0, [pc, #0x14] @ 0x2245590, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      Function_200dc9c
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_2245586: @ 2245586 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224558a


.align 2


.word RAM_21bf67c @ 0x224558c
.word 0xf2c @ 0x2245590
.thumb
Function_2245594: @ 2245594 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2039794
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22455cc, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22455cc

.word 0x10b0 @ 0x22455cc
.thumb
Function_22455d0: @ 22455d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2245604, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      Function_2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2245600
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22455f2
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_2245600
@ 0x22455f2

.thumb
branch_22455f2: @ 22455f2 :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_2245600: @ 2245600 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245604

.word 0x1070 @ 0x2245604
.thumb
Function_2245608: @ 2245608 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r2, #0xd
	ldr     r0, [r4, #0x3c]
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_2245646
	bge     branch_2245682
	ldr     r1, [pc, #0xa0] @ 0x22456bc, (=0xffffec78)
	cmp     r0, r1
	bgt     branch_224563e
	ldr     r1, [pc, #0x9c] @ 0x22456c0, (=0x138d)
	add     r1, r0, r1
	bmi     branch_2245686
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2245632

Jumppoints_2245632:
.hword branch_224569a - Jumppoints_2245632 - 2
.hword branch_2245696 - Jumppoints_2245632 - 2
.hword branch_224568a - Jumppoints_2245632 - 2
.hword branch_2245686 - Jumppoints_2245632 - 2
.hword branch_2245692 - Jumppoints_2245632 - 2
.hword branch_224568e - Jumppoints_2245632 - 2
.thumb
branch_224563e: @ 224563e :thumb
	mov     r1, #0xe
	mvn     r1, r1
	cmp     r0, r1
	b       branch_2245686
@ 0x2245646

.thumb
branch_2245646: @ 2245646 :thumb
	mov     r1, r2
	add     r1, #0x9
	cmp     r0, r1
	bgt     branch_224565c
	mov     r1, r2
	add     r1, #0x9
	cmp     r0, r1
	bge     branch_2245686
	add     r1, r2, #0x2
	cmp     r0, r1
	b       branch_2245686
@ 0x224565c

.thumb
branch_224565c: @ 224565c :thumb
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x5
	bhi     branch_2245686
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224566e

Jumppoints_224566e:
.hword branch_2245686 - Jumppoints_224566e - 2
.hword branch_2245682 - Jumppoints_224566e - 2
.hword branch_224567e - Jumppoints_224566e - 2
.hword branch_2245686 - Jumppoints_224566e - 2
.hword branch_224567a - Jumppoints_224566e - 2
.hword branch_224567e - Jumppoints_224566e - 2
.thumb
branch_224567a: @ 224567a :thumb
	mov     r2, #0x90
	b       branch_224569c
@ 0x224567e

.thumb
branch_224567e: @ 224567e :thumb
	mov     r2, #0x91
	b       branch_224569c
@ 0x2245682

.thumb
branch_2245682: @ 2245682 :thumb
	mov     r2, #0x96
	b       branch_224569c
@ 0x2245686

.thumb
branch_2245686: @ 2245686 :thumb
	mov     r2, #0x95
	b       branch_224569c
@ 0x224568a

.thumb
branch_224568a: @ 224568a :thumb
	mov     r2, #0xb1
	b       branch_224569c
@ 0x224568e

.thumb
branch_224568e: @ 224568e :thumb
	mov     r2, #0xae
	b       branch_224569c
@ 0x2245692

.thumb
branch_2245692: @ 2245692 :thumb
	mov     r2, #0xae
	b       branch_224569c
@ 0x2245696

.thumb
branch_2245696: @ 2245696 :thumb
	mov     r2, #0xaf
	b       branch_224569c
@ 0x224569a

.thumb
branch_224569a: @ 224569a :thumb
	mov     r2, #0xb0
.thumb
branch_224569c: @ 224569c :thumb
	ldr     r0, [pc, #0x24] @ 0x22456c4, (=0xf0f)
	ldr     r1, [pc, #0x28] @ 0x22456c8, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2245824
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x16
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22456bc

.word 0xffffec78 @ 0x22456bc
.word 0x138d @ 0x22456c0
.word 0xf0f @ 0x22456c4
.word 0xb94 @ 0x22456c8
.thumb
Function_22456cc: @ 22456cc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x52
	mov     r4, r0
	lsl     r1, r1, #6
	ldsh    r1, [r4, r1]
	cmp     r1, #0x3
	bhi     branch_2245768
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22456e8

Jumppoints_22456e8:
.hword branch_22456f0 - Jumppoints_22456e8 - 2
.hword branch_224570c - Jumppoints_22456e8 - 2
.hword branch_2245730 - Jumppoints_22456e8 - 2
.hword branch_224574c - Jumppoints_22456e8 - 2
.thumb
branch_22456f0: @ 22456f0 :thumb
	ldr     r1, [pc, #0x98] @ 0x224578c, (=0xf0f)
	mov     r2, #0xb2
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x98] @ 0x2245790, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245784
@ 0x224570c

.thumb
branch_224570c: @ 224570c :thumb
	ldr     r0, [pc, #0x84] @ 0x2245794, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2245784
	bl      Function_203848c
	blx     Function_4_21d7db0
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245784
@ 0x2245730

.thumb
branch_2245730: @ 2245730 :thumb
	ldr     r1, [pc, #0x58] @ 0x224578c, (=0xf0f)
	mov     r2, #0xb3
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x58] @ 0x2245790, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245824
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245784
@ 0x224574c

.thumb
branch_224574c: @ 224574c :thumb
	ldr     r0, [pc, #0x44] @ 0x2245794, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2245784
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245784
@ 0x2245768

.thumb
branch_2245768: @ 2245768 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2245798, (=0x1482)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_2245784
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_2245784: @ 2245784 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224578a


.align 2


.word 0xf0f @ 0x224578c
.word 0xb94 @ 0x2245790
.word 0xbe4 @ 0x2245794
.word 0x1482 @ 0x2245798
.thumb
Function_224579c: @ 224579c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x22457b8, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_22457b4
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_22457b4: @ 22457b4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22457b8

.word 0xbe4 @ 0x22457b8
.thumb
Function_22457bc: @ 22457bc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x22457ec, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_22457e8
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_22457de
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_22457de: @ 22457de :thumb
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22457e8: @ 22457e8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22457ec

.word 0xbe4 @ 0x22457ec
.thumb
Function_22457f0: @ 22457f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x224581c, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      Function_201d724
	cmp     r0, #0x0
	bne     branch_2245818
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_223c3c0
	ldr     r1, [pc, #0xc] @ 0x2245820, (=0x1070)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2245818: @ 2245818 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224581c

.word 0xbe4 @ 0x224581c
.word 0x1070 @ 0x2245820
.thumb
Function_2245824: @ 2245824 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      Function_200c388
	mov     r0, r6
	bl      Function_20237bc_FreeMsg
	ldr     r0, [pc, #0x3c] @ 0x224588c, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x34] @ 0x224588c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      Function_200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x1c] @ 0x224588c, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0x10] @ 0x2245890, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x224588c

.word 0xefc @ 0x224588c
.word 0xbe4 @ 0x2245890
.thumb
Function_2245894: @ 2245894 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r3, #0x1
	beq     branch_22458a2
	cmp     r3, #0x2
	beq     branch_22458b8
	b       branch_22458c6
@ 0x22458a2

.thumb
branch_22458a2: @ 22458a2 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	b       branch_22458c6
@ 0x22458b8

.thumb
branch_22458b8: @ 22458b8 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      Function_2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r2, r1, r0
.thumb
branch_22458c6: @ 22458c6 :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x22458ca


.align 2, 0


.thumb
Function_22458cc: @ 22458cc :thumb
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
	bl      Function_2245894
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
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2245900

.thumb
Function_2245900: @ 2245900 :thumb
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
	bl      Function_2245894
	mov     r3, r0
	str     r4, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [sp, #0x24]
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	str     r1, [sp, #0xc]
	bl      Function_201d78c
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x2245932


.align 2, 0
.thumb
Function_2245934: @ 2245934 :thumb
	ldr     r3, [pc, #0x0] @ 0x2245938, (=Function_2039734+1)
	bx      r3
@ 0x2245938

.word Function_2039734+1 @ 0x2245938



.thumb
Function_224593c: @ 224593c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r6, r1
	lsl     r0, r0, #8
	mov     r1, #0x3e
	bl      Function_2023790
	mov     r4, r0
	mov     r0, #0xba
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r2, r4
	bl      Function_200b1b8_CallMsgDecrypt
	mov     r1, #0xb9
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x50
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      Function_200c388
	ldr     r0, [pc, #0x3c] @ 0x22459ac, (=0xf2c)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      Function_201ada4_ClearTextBox
	ldr     r0, [pc, #0x30] @ 0x22459ac, (=0xf2c)
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      Function_200dc48
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r2, #0xbe
	ldr     r0, [pc, #0x1c] @ 0x22459ac, (=0xf2c)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      Function_201d738_CallInitTextInterpreter
	ldr     r1, [pc, #0x10] @ 0x22459b0, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22459ac

.word 0xf2c @ 0x22459ac
.word 0xbe4 @ 0x22459b0
.thumb
Function_22459b4: @ 22459b4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22459c6
	mov     r4, #0xb
.thumb
branch_22459c6: @ 22459c6 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      Function_200b60c
	ldr     r0, [pc, #0x14] @ 0x22459f4, (=0xefc)
	mov     r1, #0x1
	add     r0, r5, r0
	bl      Function_200e084
	mov     r0, r5
	mov     r1, r4
	bl      Function_224593c
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22459f2

.align 2
.word 0xefc @ 0x22459f4



Unknown_22459f8: @ 0x22459f8
.incbin "./baserom/overlay/overlay_0094.bin", 0xa8b8, 0x224674c - 0x22459f8


.word Function_2244950+1 @ =0x2244951, 0x224674c
.word Function_22449fc+1 @ =0x22449fd, 0x2246750
.word Function_2244a2c+1 @ =0x2244a2d, 0x2246754
.word Function_223c610+1 @ =0x223c611, 0x2246758
.word Function_223c6d4+1 @ =0x223c6d5, 0x224675c
.word Function_223c6f4+1 @ =0x223c6f5, 0x2246760
.word Function_223d0c4+1 @ =0x223d0c5, 0x2246764
.word Function_223d19c+1 @ =0x223d19d, 0x2246768
.word Function_223d1b0+1 @ =0x223d1b1, 0x224676c
.word Function_223dc04+1 @ =0x223dc05, 0x2246770
.word Function_223dce4+1 @ =0x223dce5, 0x2246774
.word Function_223dcf8+1 @ =0x223dcf9, 0x2246778
.word Function_223e46c+1 @ =0x223e46d, 0x224677c
.word Function_223e560+1 @ =0x223e561, 0x2246780
.word Function_223e574+1 @ =0x223e575, 0x2246784
.word Function_223fb48+1 @ =0x223fb49, 0x2246788
.word Function_223fbbc+1 @ =0x223fbbd, 0x224678c
.word Function_223fbdc+1 @ =0x223fbdd, 0x2246790
.word Function_22414b8+1 @ =0x22414b9, 0x2246794
.word Function_2241548+1 @ =0x2241549, 0x2246798
.word Function_2241568+1 @ =0x2241569, 0x224679c
.word Function_2242ad0+1 @ =0x2242ad1, 0x22467a0
.word Function_2242b14+1 @ =0x2242b15, 0x22467a4
.word Function_2242b34+1 @ =0x2242b35, 0x22467a8
.word Function_22443e0+1 @ =0x22443e1, 0x22467ac
.word Function_2244490+1 @ =0x2244491, 0x22467b0
.word Function_22444bc+1 @ =0x22444bd, 0x22467b4
.word Function_22444c8+1 @ =0x22444c9, 0x22467b8
.word Function_2244678+1 @ =0x2244679, 0x22467bc
.word Function_224484c+1 @ =0x224484d, 0x22467c0
.word Function_223cb50+1 @ =0x223cb51, 0x22467c4
.word Function_223cb90+1 @ =0x223cb91, 0x22467c8
.word Function_223cba0+1 @ =0x223cba1, 0x22467cc
.word Function_223cbc4+1 @ =0x223cbc5, 0x22467d0
.word Function_223cbd8+1 @ =0x223cbd9, 0x22467d4
.word Function_223cbec+1 @ =0x223cbed, 0x22467d8
.word Function_223cc28+1 @ =0x223cc29, 0x22467dc
.word Function_223cdd8+1 @ =0x223cdd9, 0x22467e0
.word Function_223ce00+1 @ =0x223ce01, 0x22467e4
.word Function_223ce14+1 @ =0x223ce15, 0x22467e8
.word Function_223cee8+1 @ =0x223cee9, 0x22467ec
.word Function_223cf08+1 @ =0x223cf09, 0x22467f0
.word Function_223ce5c+1 @ =0x223ce5d, 0x22467f4
.word Function_223ce7c+1 @ =0x223ce7d, 0x22467f8

.incbin "./baserom/overlay/overlay_0094.bin", 0xb6bc, 0x2246808 - 0x22467fc


.word Function_223d5b0+1 @ =0x223d5b1, 0x2246808
.word Function_223d5b8+1 @ =0x223d5b9, 0x224680c
.word Function_223d618+1 @ =0x223d619, 0x2246810
.word Function_223d838+1 @ =0x223d839, 0x2246814
.word Function_223d858+1 @ =0x223d859, 0x2246818
.word Function_223d640+1 @ =0x223d641, 0x224681c
.word Function_223d664+1 @ =0x223d665, 0x2246820
.word Function_223d6b8+1 @ =0x223d6b9, 0x2246824
.word Function_223d754+1 @ =0x223d755, 0x2246828
.word Function_223e09c+1 @ =0x223e09d, 0x224682c
.word Function_223e0a4+1 @ =0x223e0a5, 0x2246830
.word Function_223e188+1 @ =0x223e189, 0x2246834
.word Function_223e2e0+1 @ =0x223e2e1, 0x2246838
.word Function_223e1b0+1 @ =0x223e1b1, 0x224683c
.word Function_223e1d0+1 @ =0x223e1d1, 0x2246840
.word Function_223e2d0+1 @ =0x223e2d1, 0x2246844

.incbin "./baserom/overlay/overlay_0094.bin", 0xb708, 0x2246860 - 0x2246848


.word Function_223ea5c+1 @ =0x223ea5d, 0x2246860
.word Function_223ea84+1 @ =0x223ea85, 0x2246864
.word Function_223f0a8+1 @ =0x223f0a9, 0x2246868
.word Function_223f0d0+1 @ =0x223f0d1, 0x224686c
.word Function_223f154+1 @ =0x223f155, 0x2246870
.word Function_223f190+1 @ =0x223f191, 0x2246874
.word Function_223f25c+1 @ =0x223f25d, 0x2246878
.word Function_223f2b0+1 @ =0x223f2b1, 0x224687c
.word Function_223f41c+1 @ =0x223f41d, 0x2246880
.word Function_223f474+1 @ =0x223f475, 0x2246884
.word Function_223f4b0+1 @ =0x223f4b1, 0x2246888
.word Function_223f5a0+1 @ =0x223f5a1, 0x224688c
.word Function_223f5f8+1 @ =0x223f5f9, 0x2246890
.word Function_223f638+1 @ =0x223f639, 0x2246894
.word Function_223f728+1 @ =0x223f729, 0x2246898
.word Function_223f780+1 @ =0x223f781, 0x224689c
.word Function_223f7c0+1 @ =0x223f7c1, 0x22468a0
.word Function_223ebcc+1 @ =0x223ebcd, 0x22468a4
.word Function_223ecd4+1 @ =0x223ecd5, 0x22468a8
.word Function_223ed94+1 @ =0x223ed95, 0x22468ac
.word Function_223ee40+1 @ =0x223ee41, 0x22468b0
.word Function_223ee9c+1 @ =0x223ee9d, 0x22468b4
.word Function_223eee0+1 @ =0x223eee1, 0x22468b8
.word Function_223f950+1 @ =0x223f951, 0x22468bc
.word Function_223f970+1 @ =0x223f971, 0x22468c0
.word Function_223f8b4+1 @ =0x223f8b5, 0x22468c4
.word Function_223f8d8+1 @ =0x223f8d9, 0x22468c8
.word Function_223f920+1 @ =0x223f921, 0x22468cc
.word Function_223f928+1 @ =0x223f929, 0x22468d0
.word Function_223ef1c+1 @ =0x223ef1d, 0x22468d4
.word Function_223ef58+1 @ =0x223ef59, 0x22468d8
.word Function_22402a8+1 @ =0x22402a9, 0x22468dc
.word Function_22402bc+1 @ =0x22402bd, 0x22468e0
.word Function_2240a6c+1 @ =0x2240a6d, 0x22468e4
.word Function_2240d08+1 @ =0x2240d09, 0x22468e8
.word Function_2240d28+1 @ =0x2240d29, 0x22468ec
.word Function_2240ac4+1 @ =0x2240ac5, 0x22468f0
.word Function_2240ae8+1 @ =0x2240ae9, 0x22468f4
.word Function_22405dc+1 @ =0x22405dd, 0x22468f8
.word Function_2240688+1 @ =0x2240689, 0x22468fc
.word Function_2240830+1 @ =0x2240831, 0x2246900
.word Function_22408e8+1 @ =0x22408e9, 0x2246904
.word Function_2240b20+1 @ =0x2240b21, 0x2246908
.word Function_2240b4c+1 @ =0x2240b4d, 0x224690c
.word Function_2240b70+1 @ =0x2240b71, 0x2246910
.word Function_2240c58+1 @ =0x2240c59, 0x2246914
.word Function_2240c84+1 @ =0x2240c85, 0x2246918
.word Function_2240ca8+1 @ =0x2240ca9, 0x224691c

.incbin "./baserom/overlay/overlay_0094.bin", 0xb7e0, 0x224695c - 0x2246920


.word Function_224195c+1 @ =0x224195d, 0x224695c
.word Function_2241990+1 @ =0x2241991, 0x2246960
.word Function_22420e4+1 @ =0x22420e5, 0x2246964
.word Function_2241a1c+1 @ =0x2241a1d, 0x2246968
.word Function_2241a58+1 @ =0x2241a59, 0x224696c
.word Function_2241b2c+1 @ =0x2241b2d, 0x2246970
.word Function_2241bac+1 @ =0x2241bad, 0x2246974
.word Function_2241d08+1 @ =0x2241d09, 0x2246978
.word Function_2241d64+1 @ =0x2241d65, 0x224697c
.word Function_2241da0+1 @ =0x2241da1, 0x2246980
.word Function_2241e8c+1 @ =0x2241e8d, 0x2246984
.word Function_2241ee8+1 @ =0x2241ee9, 0x2246988
.word Function_2241f28+1 @ =0x2241f29, 0x224698c
.word Function_2242040+1 @ =0x2242041, 0x2246990
.word Function_2242068+1 @ =0x2242069, 0x2246994
.word Function_224208c+1 @ =0x224208d, 0x2246998
.word Function_2242138+1 @ =0x2242139, 0x224699c
.word Function_2242da8+1 @ =0x2242da9, 0x22469a0
.word Function_2243778+1 @ =0x2243779, 0x22469a4
.word Function_2242e9c+1 @ =0x2242e9d, 0x22469a8
.word Function_2242ed0+1 @ =0x2242ed1, 0x22469ac
.word Function_2242f78+1 @ =0x2242f79, 0x22469b0
.word Function_2242f98+1 @ =0x2242f99, 0x22469b4
.word Function_224377c+1 @ =0x224377d, 0x22469b8
.word Function_224301c+1 @ =0x224301d, 0x22469bc
.word Function_2243048+1 @ =0x2243049, 0x22469c0
.word Function_2243104+1 @ =0x2243105, 0x22469c4
.word Function_2243120+1 @ =0x2243121, 0x22469c8
.word Function_2243794+1 @ =0x2243795, 0x22469cc
.word Function_22431a4+1 @ =0x22431a5, 0x22469d0
.word Function_22431f0+1 @ =0x22431f1, 0x22469d4
.word Function_22432d8+1 @ =0x22432d9, 0x22469d8
.word Function_22432f4+1 @ =0x22432f5, 0x22469dc
.word Function_22437ac+1 @ =0x22437ad, 0x22469e0
.word Function_2243884+1 @ =0x2243885, 0x22469e4
.word Function_2243658+1 @ =0x2243659, 0x22469e8
.word Function_22436d4+1 @ =0x22436d5, 0x22469ec
.word Function_22436f0+1 @ =0x22436f1, 0x22469f0
.word Function_22437c0+1 @ =0x22437c1, 0x22469f4
.word Function_22437d8+1 @ =0x22437d9, 0x22469f8
.word Function_22437f4+1 @ =0x22437f5, 0x22469fc
.word Function_2243378+1 @ =0x2243379, 0x2246a00
.word Function_2243398+1 @ =0x2243399, 0x2246a04
.word Function_2243568+1 @ =0x2243569, 0x2246a08
.word Function_2243588+1 @ =0x2243589, 0x2246a0c
.word Function_2243554+1 @ =0x2243555, 0x2246a10
.word Function_2243974+1 @ =0x2243975, 0x2246a14
.word Function_2243990+1 @ =0x2243991, 0x2246a18
.word Function_22439cc+1 @ =0x22439cd, 0x2246a1c
.word Function_22439e4+1 @ =0x22439e5, 0x2246a20
.word Function_2243a04+1 @ =0x2243a05, 0x2246a24
.word Function_2243a28+1 @ =0x2243a29, 0x2246a28
.word Function_2243a44+1 @ =0x2243a45, 0x2246a2c
.word Function_2243a90+1 @ =0x2243a91, 0x2246a30
.word Function_2243ae8+1 @ =0x2243ae9, 0x2246a34
.word Function_2243920+1 @ =0x2243921, 0x2246a38
.word Function_2243948+1 @ =0x2243949, 0x2246a3c
.word Function_2244f8c+1 @ =0x2244f8d, 0x2246a40
.word Function_2244fc4+1 @ =0x2244fc5, 0x2246a44
.word Function_2245138+1 @ =0x2245139, 0x2246a48
.word Function_2245158+1 @ =0x2245159, 0x2246a4c
.word Function_22451dc+1 @ =0x22451dd, 0x2246a50
.word Function_22451ec+1 @ =0x22451ed, 0x2246a54
.word Function_224529c+1 @ =0x224529d, 0x2246a58
.word Function_22452e4+1 @ =0x22452e5, 0x2246a5c
.word Function_2245300+1 @ =0x2245301, 0x2246a60
.word Function_22453b8+1 @ =0x22453b9, 0x2246a64
.word Function_22453ec+1 @ =0x22453ed, 0x2246a68
.word Function_2245594+1 @ =0x2245595, 0x2246a6c
.word Function_224579c+1 @ =0x224579d, 0x2246a70
.word Function_22457f0+1 @ =0x22457f1, 0x2246a74
.word Function_22455d0+1 @ =0x22455d1, 0x2246a78
.word Function_224502c+1 @ =0x224502d, 0x2246a7c
.word Function_224505c+1 @ =0x224505d, 0x2246a80
.word Function_22450c0+1 @ =0x22450c1, 0x2246a84
.word Function_22450ec+1 @ =0x22450ed, 0x2246a88
.word Function_224510c+1 @ =0x224510d, 0x2246a8c
.word Function_22457bc+1 @ =0x22457bd, 0x2246a90
.word Function_2245608+1 @ =0x2245609, 0x2246a94
.word Function_22456cc+1 @ =0x22456cd, 0x2246a98
.word Function_2245540+1 @ =0x2245541, 0x2246a9c
.word Function_2245564+1 @ =0x2245565, 0x2246aa0
@ 0x2246aa4


.incbin "./baserom/overlay/overlay_0094.bin", 0xb964, 0x2246ac0 - 0x2246aa4


@end 0x2246ac0




