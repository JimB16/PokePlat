
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
	blx 0x20e2178
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
	blx 0x20d50b8
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
	blx 0x20d50b8
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
	blx 0x20c3fa0
	ldr     r0, [pc, #0x3c] @ 0x223bbd0, (=0x2246ad4)
	mov     r1, r5
	mov     r2, #0x64
	blx 0x20d50b8
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
	blx 0x2213898
	cmp     r0, #0x9
	beq     branch_223bca8
	mov     r4, #0xd
	mvn     r4, r4
.thumb
branch_223bca8: @ 223bca8 :thumb
	blx 0x21d76e8
.thumb
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
	bl      0x2017798
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
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
	bl      0x2017fc8
	ldr     r1, [pc, #0xfc] @ 0x223bdf8, (=0x1488)
	mov     r0, r6
	mov     r2, #0x3e
	bl      0x200681c
	ldr     r2, [pc, #0xf0] @ 0x223bdf8, (=0x1488)
	mov     r1, #0x0
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x3e
	bl      0x2018340
	str     r0, [r4, #0x4]
	ldr     r0, [pc, #0xe4] @ 0x223bdfc, (=0x2246c04)
	add     r2, sp, #0x0
	ldr     r3, [pc, #0xe4] @ 0x223be00, (=0x22459fc)
	str     r4, [r0, #0x4]
	mov     r7, r2
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	mov     r0, r7
	bl      0x2018368
	mov     r0, #0xb
	mov     r1, #0x40
	mov     r2, #0x3e
	bl      0x200b368
	mov     r1, #0xb9
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r2, [pc, #0xc4] @ 0x223be04, (=0x29f)
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      0x200b144
	ldr     r1, [pc, #0xbc] @ 0x223be08, (=0xb94)
	ldr     r2, [pc, #0xbc] @ 0x223be0c, (=0x2a2)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      0x200b144
	ldr     r1, [pc, #0xb4] @ 0x223be10, (=0xb9c)
	ldr     r2, [pc, #0xb4] @ 0x223be14, (=0x2b7)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      0x200b144
	mov     r1, #0xba
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r2, #0x67
	mov     r0, #0x0
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x3e
	bl      0x200b144
	ldr     r1, [pc, #0x98] @ 0x223be18, (=0xb98)
	ldr     r2, [pc, #0x98] @ 0x223be1c, (=0x2b6)
	str     r0, [r4, r1]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, #0x3e
	bl      0x200b144
	ldr     r1, [pc, #0x90] @ 0x223be20, (=0xba4)
	str     r0, [r4, r1]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	mov     r1, r6
	bl      Function_223c03c
	mov     r0, r4
	bl      Function_223c4e0
	ldr     r1, [pc, #0x78] @ 0x223be24, (=0x497)
	mov     r0, #0xb
	mov     r2, #0x1
	bl      0x2004550
	ldr     r1, [pc, #0x74] @ 0x223be28, (=0x20020)
	mov     r0, #0x3e
	bl      0x2018144
	str     r0, [r4, #0x4c]
	add     r0, #0x1f
	mov     r1, #0x1f
	bic     r0, r1
	mov     r1, #0x2
	lsl     r1, r1, #16
	mov     r2, #0x0
	blx 0x20a5404
	str     r0, [r4, #0x50]
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_223bdea
@ 0x223bdd4

.thumb
branch_223bdd4: @ 223bdd4 :thumb
	bl      0x2099550
	bl      0x20995b4
	bl      0x2033478
	mov     r0, #0x0
	str     r0, [r5, #0x0]
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223bdea

.thumb
branch_223bdea: @ 223bdea :thumb
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223bdf0

.word 0xffffe0ff @ 0x223bdf0
.word 0x4001000 @ 0x223bdf4
.word 0x1488 @ 0x223bdf8
.word 0x2246c04 @ 0x223bdfc
.word 0x22459fc @ 0x223be00
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
	bl      0x200682c
	mov     r4, r0
	blx 0x21d8018
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
	bl      0x20334a4
	cmp     r0, #0x0
	beq     branch_223bf1c
	ldr     r1, [r4, #0x50]
	ldr     r0, [pc, #0xd0] @ 0x223bf38, (=0x2246c04)
	str     r1, [r0, #0x0]
	ldr     r0, [pc, #0xd0] @ 0x223bf3c, (=0x223c469)
	ldr     r1, [pc, #0xd0] @ 0x223bf40, (=0x223c491)
	blx 0x21d776c
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
	bl      0x200f2ac
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
	bl      0x200f2ac
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
	bl      0x2025f30
	mov     r1, r0
	mov     r0, r4
	bl      Function_2243ef4
	mov     r1, #0x47
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_2244230
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
	bl      0x20219f8
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
	bl      0x200682c
	mov     r4, r0
	ldr     r0, [r4, #0x4c]
	bl      0x20181c4
	bl      0x20995c4
	bl      0x2099560
	mov     r0, r4
	bl      Function_223c508
	ldr     r0, [pc, #0x60] @ 0x223bfd4, (=0xb98)
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0xba
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x200b190
	ldr     r0, [pc, #0x50] @ 0x223bfd8, (=0xb9c)
	ldr     r0, [r4, r0]
	bl      0x200b190
	ldr     r0, [pc, #0x4c] @ 0x223bfdc, (=0xb94)
	ldr     r0, [r4, r0]
	bl      0x200b190
	ldr     r0, [pc, #0x48] @ 0x223bfe0, (=0xba4)
	ldr     r0, [r4, r0]
	bl      0x200b190
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x200b3f0
	mov     r0, r4
	bl      Function_223c0a0
	bl      0x20334cc
	ldr     r0, [r4, #0x4]
	bl      0x20181c4
	ldr     r0, [r4, #0x0]
	bl      0x20181c4
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x3e
	bl      0x201807c
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
	bl      0x201dcac
	bl      0x200a858
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
	ldr     r4, [pc, #0x14] @ 0x223c038, (=0x2245a1c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_223c026: @ 223c026 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c026
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x223c038

.word 0x2245a1c @ 0x223c038
.thumb
Function_223c03c: @ 223c03c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r0, r1
	bl      0x2006840
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
	ldr     r4, [pc, #0x24] @ 0x223c0d0, (=0x2245a0c)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x201e86c
	mov     r0, #0x14
	mov     r1, #0x3e
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x223c0d0

.word 0x2245a0c @ 0x223c0d0
.thumb
Function_223c0d4: @ 223c0d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	mov     r0, #0x68
	mov     r1, #0x3e
	bl      0x2006c24
	str     r0, [sp, #0x18]
	blx 0x20a7944
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
	bl      0x200a784
	ldr     r1, [pc, #0x1d8] @ 0x223c2dc, (=0xbec)
	mov     r0, #0x4e
	add     r1, r5, r1
	mov     r2, #0x3e
	bl      0x20095c4
	ldr     r1, [pc, #0x1d0] @ 0x223c2e0, (=0xbe8)
	mov     r2, #0x1
	str     r0, [r5, r1]
	add     r0, r1, #0x4
	add     r0, r5, r0
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	ldr     r7, [pc, #0x1c4] @ 0x223c2e4, (=0xd14)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223c124: @ 223c124 :thumb
	mov     r0, #0x3
	mov     r1, r6
	mov     r2, #0x3e
	bl      0x2009714
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
	bl      0x2009a4c
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
	bl      0x2009b04
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
	bl      0x2009bc4
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
	bl      0x2009bc4
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
	bl      0x2009a4c
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
	bl      0x2009b04
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
	bl      0x2009bc4
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
	bl      0x2009bc4
	mov     r1, #0x35
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	bl      0x200a328
	ldr     r0, [pc, #0xc0] @ 0x223c2f4, (=0xd34)
	ldr     r0, [r5, r0]
	bl      0x200a328
	ldr     r0, [pc, #0xb0] @ 0x223c2ec, (=0xd28)
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	ldr     r0, [pc, #0xb4] @ 0x223c2f8, (=0xd38)
	ldr     r0, [r5, r0]
	bl      0x200a5c8
	bl      0x2079fd0
	mov     r1, r0
	mov     r0, #0x13
	add     r2, sp, #0x1c
	mov     r3, #0x3e
	bl      0x2006f88
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x60
	ldr     r0, [r0, #0xc]
	blx 0x20c2c54
	ldr     r0, [sp, #0x1c]
	mov     r1, #0x60
	ldr     r0, [r0, #0xc]
	mov     r2, r1
	blx 0x20c0160
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
	blx 0x20c2c54
	ldr     r0, [sp, #0x1c]
	mov     r1, #0xc0
	ldr     r0, [r0, #0xc]
	mov     r2, #0x60
	blx 0x20c0160
	ldr     r0, [sp, #0x14]
	bl      0x20181c4
	ldr     r0, [sp, #0x18]
	bl      0x2006ca8
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
	bl      0x20093b4
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
	bl      0x20093b4
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x223c3bc

.word 0xd14 @ 0x223c3bc
.thumb
Function_223c3c0: @ 223c3c0 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	ldr     r5, [pc, #0x28] @ 0x223c3f0, (=0x22459f4)
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
	bl      0x2002100
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c3f0

.word 0x22459f4 @ 0x223c3f0
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
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_223c428
@ 0x223c41a

.thumb
branch_223c41a: @ 223c41a :thumb
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_223c428: @ 223c428 :thumb
	blx 0x20e1740
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	ble     branch_223c444
	lsl     r0, r5, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_223c452
@ 0x223c444

.thumb
branch_223c444: @ 223c444 :thumb
	lsl     r0, r5, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_223c452: @ 223c452 :thumb
	blx 0x20e1740
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223c468

.thumb
Function_223c468: @ 223c468 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, r2
	blx 0x20c3d98
	mov     r6, r0
	ldr     r0, [pc, #0x14] @ 0x223c48c, (=0x2246c04)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	mov     r2, r4
	blx 0x20a5448
	mov     r4, r0
	mov     r0, r6
	blx 0x20c3dac
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x223c48c

.word 0x2246c04 @ 0x223c48c
.thumb
Function_223c490: @ 223c490 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	beq     branch_223c4ac
	blx 0x20c3d98
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x223c4b0, (=0x2246c04)
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	blx 0x20a55d8
	mov     r0, r4
	blx 0x20c3dac
.thumb
branch_223c4ac: @ 223c4ac :thumb
	pop     {r3-r5,pc}
@ 0x223c4ae


.align 2


.word 0x2246c04 @ 0x223c4b0
.thumb
Function_223c4b4: @ 223c4b4 :thumb
	push    {r3,lr}
	blx 0x21d7eac
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
	ldr     r3, [pc, #0x4] @ 0x223c4dc, (=0x2027ac1)
	ldr     r0, [r0, #0x24]
	bx      r3
@ 0x223c4dc

.word 0x2027ac1 @ 0x223c4dc
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
	bl      0x2017798
	pop     {r4,pc}
@ 0x223c502


.align 2


.word 0x223bfe5 @ 0x223c504
.thumb
Function_223c508: @ 223c508 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	bl      Function_22443b4
	ldr     r0, [pc, #0x4c] @ 0x223c560, (=0xd24)
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	ldr     r0, [pc, #0x48] @ 0x223c564, (=0xd34)
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	ldr     r0, [pc, #0x44] @ 0x223c568, (=0xd28)
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	ldr     r0, [pc, #0x40] @ 0x223c56c, (=0xd38)
	ldr     r0, [r6, r0]
	bl      0x200a6dc
	ldr     r7, [pc, #0x3c] @ 0x223c570, (=0xd14)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_223c536: @ 223c536 :thumb
	ldr     r0, [r5, r7]
	bl      0x2009754
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223c536
	ldr     r0, [pc, #0x2c] @ 0x223c574, (=0xbe8)
	ldr     r0, [r6, r0]
	bl      0x2021964
	ldr     r0, [pc, #0x24] @ 0x223c574, (=0xbe8)
	mov     r1, #0x0
	str     r1, [r6, r0]
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
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
	bl      0x2079b54
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
	bl      0x200e7fc
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
	bl      0x200eba0
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
	bl      Function_2245930
	mov     r0, r4
	bl      Function_223cf3c
	ldr     r1, [pc, #0x8c] @ 0x223c6cc, (=0x449)
	mov     r0, #0x17
	mov     r2, #0x1
	bl      0x2004550
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
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x1
	strh    r0, [r4, #0x34]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025f30
	mov     r1, r0
	mov     r0, r4
	bl      Function_2243fa4
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
	bl      0x200f174
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
	bl      0x200f174
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
	bl      0x20397b0
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
	bl      0x2039794
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
	ldr     r5, [pc, #0xf0] @ 0x223c818, (=0x2245a50)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xe0] @ 0x223c81c, (=0x2245ab0)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xbc] @ 0x223c820, (=0x2245a94)
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
	bl      0x20183c4
	ldr     r5, [pc, #0xa0] @ 0x223c824, (=0x2245acc)
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
	bl      0x20183c4
	ldr     r5, [pc, #0x84] @ 0x223c828, (=0x2245ae8)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x60] @ 0x223c82c, (=0x2245a78)
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
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223c816


.align 2


.word 0x2245a50 @ 0x223c818
.word 0x2245ab0 @ 0x223c81c
.word 0x2245a94 @ 0x223c820
.word 0x2245acc @ 0x223c824
.word 0x2245ae8 @ 0x223c828
.word 0x2245a78 @ 0x223c82c
.thumb
Function_223c830: @ 223c830 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x223c85c

.thumb
Function_223c85c: @ 223c85c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	pop     {r4,pc}
@ 0x223c886


.align 2, 0


.thumb
Function_223c888: @ 223c888 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]
	mov     r0, #0x68
	mov     r1, #0x3e
	bl      0x2006c24
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x20070e8
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
	bl      0x200710c
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
	bl      0x200710c
	mov     r0, r6
	bl      Function_223d068
	mov     r0, r4
	bl      0x2006ca8
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
	ldr     r1, [pc, #0x38] @ 0x223c9a8, (=0x2245a44)
	ldrh    r1, [r1, r2]
	lsl     r1, r1, #12
	str     r1, [sp, #0x8]
	ldrh    r0, [r4, r0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x223c9ac, (=0x2245a46)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      0x2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021d6c
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223c9a4

.word 0xd54 @ 0x223c9a4
.word 0x2245a44 @ 0x223c9a8
.word 0x2245a46 @ 0x223c9ac
.thumb
Function_223c9b0: @ 223c9b0 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x223c9bc, (=0x2021bd5)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223c9ba


.align 2


.word 0x2021bd5 @ 0x223c9bc
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
	bl      0x201a7e8
	ldr     r0, [pc, #0xc8] @ 0x223cab0, (=0xf1c)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      0x201ada4
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
	bl      0x201d78c
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
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
	bl      0x201a7e8
	ldr     r0, [pc, #0x48] @ 0x223cac0, (=0xefc)
	mov     r1, #0xf
	add     r0, r7, r0
	bl      0x201ada4
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
	bl      0x201a7e8
	ldr     r0, [pc, #0x20] @ 0x223cac4, (=0x103c)
	mov     r1, #0xf
	add     r0, r7, r0
	bl      0x201ada4
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
	bl      0x201a8fc
	ldr     r0, [pc, #0x28] @ 0x223cb00, (=0xefc)
	add     r0, r6, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x24] @ 0x223cb04, (=0xf3c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223cae2: @ 223cae2 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_223cae2
	ldr     r0, [pc, #0x14] @ 0x223cb08, (=0xf1c)
	add     r0, r6, r0
	bl      0x201a8fc
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
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x27
	bl      0x200b1ec
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
	bl      0x20237bc
	ldr     r0, [pc, #0x8] @ 0x223cb4c, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      0x20237bc
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
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
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
	bl      0x200f174
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223cbc4

.thumb
Function_223cbc4: @ 223cbc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
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
	bl      0x200f2ac
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
	bl      0x2021cc8
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
	ldr     r1, [pc, #0x18c] @ 0x223cdbc, (=0x21bf67c)
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
	bl      0x2021cc8
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
	bl      0x2005748
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
	bl      0x2005748
	b       branch_223cdb4
@ 0x223ccba

.thumb
branch_223ccba: @ 223ccba :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
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
	bl      0x2005748
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
	bl      0x2005748
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
	bl      0x2021cc8
	ldr     r0, [pc, #0x94] @ 0x223cdc4, (=0x5dc)
	bl      0x2005748
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
	bl      0x2005748
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldr     r1, [pc, #0x6c] @ 0x223cdd0, (=0x2245a44)
	ldr     r2, [pc, #0x70] @ 0x223cdd4, (=0x2245a46)
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
	bl      0x2005748
	mov     r0, #0x11
	lsl     r0, r0, #4
	ldrh    r0, [r4, r0]
	ldr     r1, [pc, #0x2c] @ 0x223cdd0, (=0x2245a44)
	ldr     r2, [pc, #0x30] @ 0x223cdd4, (=0x2245a46)
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


.word 0x21bf67c @ 0x223cdbc
.word 0xf0f @ 0x223cdc0
.word 0x5dc @ 0x223cdc4
.word 0x708 @ 0x223cdc8
.word 0x5f3 @ 0x223cdcc
.word 0x2245a44 @ 0x223cdd0
.word 0x2245a46 @ 0x223cdd4
.thumb
Function_223cdd8: @ 223cdd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025f30
	mov     r1, r0
	mov     r0, r4
	bl      Function_22440b4
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
	bl      0x200f174
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
	bl      0x200f174
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
	bl      0x2002114
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
	bl      0x200e084
	ldr     r0, [pc, #0x40] @ 0x223cee4, (=0x103c)
	add     r0, r4, r0
	bl      0x201acf4
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	b       branch_223ceda
@ 0x223cebc

.thumb
branch_223cebc: @ 223cebc :thumb
	add     r0, r4, r0
	mov     r1, #0x1
	bl      0x200e084
	ldr     r0, [pc, #0x1c] @ 0x223cee4, (=0x103c)
	add     r0, r4, r0
	bl      0x201acf4
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
	bl      0x201d724
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
	bl      0x201d724
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
	ldr     r2, [pc, #0x28] @ 0x223cf70, (=0x2245a60)
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
	bl      0x201a954
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x3
	blt     branch_223cf50
	pop     {r3-r7,pc}
@ 0x223cf70

.word 0x2245a60 @ 0x223cf70
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
	bl      0x200b1b8
	ldr     r0, [pc, #0x38] @ 0x223cfd0, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x30] @ 0x223cfd0, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
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
	bl      0x201d738
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
	bl      0x200b1b8
	ldr     r0, [pc, #0x38] @ 0x223d028, (=0x103c)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x30] @ 0x223d028, (=0x103c)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
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
	bl      0x201d738
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
	bl      0x200b1ec
	lsl     r1, r4, #24
	mov     r6, r0
	mov     r0, r5
	lsr     r1, r1, #24
	bl      0x201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, r6
	str     r3, [sp, #0x8]
	bl      0x201d738
	mov     r0, r6
	bl      0x20237bc
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
	mov     r0, #0x68
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
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
	bl      0x2006e3c
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
	bl      0x2006e60
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
	bl      0x2076b10
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
	bl      Function_224296c
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
	bl      Function_2242364
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
	bl      0x200f174
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
	ldr     r5, [pc, #0xcc] @ 0x223d2a8, (=0x2245b74)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xa8] @ 0x223d2ac, (=0x2245b58)
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
	bl      0x20183c4
	ldr     r5, [pc, #0x8c] @ 0x223d2b0, (=0x2245b3c)
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
	bl      0x20183c4
	ldr     r5, [pc, #0x70] @ 0x223d2b4, (=0x2245b20)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x4c] @ 0x223d2b8, (=0x2245b04)
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x223d2a6


.align 2


.word 0x2245b74 @ 0x223d2a8
.word 0x2245b58 @ 0x223d2ac
.word 0x2245b3c @ 0x223d2b0
.word 0x2245b20 @ 0x223d2b4
.word 0x2245b04 @ 0x223d2b8
.thumb
Function_223d2bc: @ 223d2bc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x223d2e8

.thumb
Function_223d2e8: @ 223d2e8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]
	mov     r0, #0x68
	mov     r1, #0x3e
	bl      0x2006c24
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x7
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x20070e8
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
	bl      0x200710c
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
	bl      0x20070e8
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
	bl      0x200710c
	mov     r0, r4
	bl      0x2006ca8
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
	bl      0x2021aa0
	mov     r1, #0xed
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0xed
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      0x2021d6c
	bl      0x2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223d424

.word 0xd54 @ 0x223d424
.thumb
Function_223d428: @ 223d428 :thumb
	mov     r1, #0xed
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x223d434, (=0x2021bd5)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223d432


.align 2


.word 0x2021bd5 @ 0x223d434
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
	bl      0x201a7e8
	ldr     r1, [pc, #0x90] @ 0x223d4f4, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      0x201ada4
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
	bl      0x201a7e8
	ldr     r1, [pc, #0x64] @ 0x223d4fc, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x64] @ 0x223d500, (=0x2245b90)
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
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
.word 0x2245b90 @ 0x223d500
.thumb
Function_223d504: @ 223d504 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x223d530, (=0xefc)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x20] @ 0x223d534, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x1c] @ 0x223d538, (=0xf6c)
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_223d51e: @ 223d51e :thumb
	mov     r0, r5
	bl      0x201a8fc
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
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0x1c
	ldr     r0, [r5, r1]
	mov     r1, #0x27
	bl      0x200b1ec
	ldr     r1, [pc, #0x1c] @ 0x223d578, (=0xbb4)
	mov     r4, #0x0
	str     r0, [r5, r1]
	mov     r7, #0x14
	add     r6, r1, #0x4
.thumb
branch_223d562: @ 223d562 :thumb
	mov     r0, r7
	mov     r1, #0x3e
	bl      0x2023790
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
	bl      0x20237bc
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xa
	blt     branch_223d586
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r7, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0xc] @ 0x223d5ac, (=0xbb4)
	ldr     r0, [r7, r0]
	bl      0x20237bc
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
	ldr     r1, [pc, #0x4c] @ 0x223d60c, (=0x21bf67c)
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
	bl      0x2005748
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
	bl      0x2005748
.thumb
branch_223d606: @ 223d606 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x223d60c

.word 0x21bf67c @ 0x223d60c
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
	bl      0x200f174
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
	bl      0x2002114
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
	bl      0x200e084
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
	bl      0x2013a04
	ldr     r1, [pc, #0x58] @ 0x223d744, (=0x106c)
	mov     r2, #0x36
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x54] @ 0x223d748, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      0x2013a4c
	ldr     r0, [pc, #0x44] @ 0x223d744, (=0x106c)
	ldr     r1, [pc, #0x48] @ 0x223d748, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x37
	mov     r3, #0x2
	bl      0x2013a4c
	ldr     r0, [pc, #0x34] @ 0x223d744, (=0x106c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	mov     r2, #0x1f
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x34] @ 0x223d74c, (=0xf3c)
	mov     r3, #0xb
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      0x200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      0x2001b7c
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
	bl      0x2001be0
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
	bl      0x2001bc4
	ldr     r0, [pc, #0xac] @ 0x223d82c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0xa8] @ 0x223d830, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r4, r5, r0
	mov     r0, r4
	bl      Function_2241494
	cmp     r0, #0x0
	beq     branch_223d7ce
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
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
	bl      0x2001bc4
	ldr     r0, [pc, #0x2c] @ 0x223d82c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x28] @ 0x223d830, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
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
	bl      0x201d724
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
	bl      0x201d724
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
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b538
	ldr     r0, [pc, #0x58] @ 0x223d904, (=0xb94)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      0x200b1ec
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	ldr     r0, [pc, #0x40] @ 0x223d908, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x34] @ 0x223d908, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
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
	bl      0x201d738
	ldr     r1, [pc, #0x14] @ 0x223d90c, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      0x20237bc
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
	bl      0x2023790
	str     r0, [sp, #0x1c]
	mov     r0, #0x12
	mov     r1, #0x3e
	bl      0x2023790
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x48]
	ldr     r2, [sp, #0x1c]
	mov     r1, #0x77
	bl      0x2074570
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
	bl      0x2074570
	str     r0, [sp, #0x30]
	mov     r0, r5
	mov     r1, #0x46
	bl      0x200b1ec
	str     r0, [sp, #0x20]
	ldr     r0, [sp, #0x14]
	ldr     r2, [pc, #0x108] @ 0x223da6c, (=0x2245fd4)
	lsl     r0, r0, #2
	str     r0, [sp, #0xc]
	ldr     r1, [sp, #0xc]
	mov     r0, r5
	ldr     r1, [r2, r1]
	bl      0x200b1ec
	str     r0, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r2, r4
	mov     r3, r1
	bl      0x200b60c
	mov     r0, r7
	mov     r1, r5
	mov     r2, #0x66
	mov     r3, #0x3e
	bl      0x200b29c
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x10]
	bl      0x200b1ec
	ldr     r1, [sp, #0x30]
	str     r0, [sp, #0x2c]
	lsl     r1, r1, #16
	ldr     r0, [sp, #0x18]
	lsr     r1, r1, #16
	mov     r2, #0x3e
	bl      0x207cfa0
	mov     r4, #0x0
	mov     r5, r6
	mov     r7, r4
.thumb
branch_223d9b4: @ 223d9b4 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      0x201ada4
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
	bl      Function_22458fc
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
	bl      Function_22458fc
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
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x64] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x24]
	add     r0, #0x20
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x50] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x20]
	add     r0, #0x30
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x3c] @ 0x223da70, (=0xf0200)
	str     r2, [sp, #0x0]
	add     r6, #0x40
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x18]
	mov     r0, r6
	mov     r3, r2
	bl      Function_22458fc
	ldr     r0, [sp, #0x20]
	bl      0x20237bc
	ldr     r0, [sp, #0x18]
	bl      0x20237bc
	ldr     r0, [sp, #0x24]
	bl      0x20237bc
	ldr     r0, [sp, #0x28]
	bl      0x20237bc
	ldr     r0, [sp, #0x1c]
	bl      0x20237bc
	ldr     r0, [sp, #0x2c]
	bl      0x20237bc
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223da6a


.align 2


.word 0x2245fd4 @ 0x223da6c
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
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0x10
	mov     r1, #0x3e
	bl      0x2023790
	mov     r6, r0
	mov     r0, r7
	mov     r1, #0x30
	bl      0x200b1ec
	str     r0, [sp, #0x10]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      0x2023d28
	mov     r0, r7
	mov     r1, #0xac
	bl      0x200b1ec
	mov     r7, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x91
	mov     r2, r6
	bl      0x2074470
	mov     r2, #0x0
	ldr     r0, [pc, #0x64] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x10]
	mov     r0, r5
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x54] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x40] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r7
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x2c] @ 0x223db28, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, r6
	add     r0, #0x10
	mov     r3, r2
	bl      Function_22458fc
	ldr     r0, [sp, #0x10]
	bl      0x20237bc
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r7
	bl      0x20237bc
	mov     r0, r6
	bl      0x20237bc
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
	bl      0x2018144
	mov     r4, r0
	add     r0, sp, #0x20
	mov     r1, r5
	mov     r2, #0x2
	bl      0x2075ef4
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	bl      0x2074470
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
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
	bl      0x20136a4
	mov     r1, #0x32
	mov     r0, r4
	lsl     r1, r1, #6
	blx 0x20c2c54
	mov     r1, #0x4a
	mov     r2, #0x32
	mov     r0, r4
	lsl     r1, r1, #8
	lsl     r2, r2, #6
	blx 0x20c02bc
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
	bl      0x2006e84
	mov     r0, r4
	bl      0x20181c4
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
	bl      Function_224296c
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
	bl      Function_2242364
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
	bl      0x2076b10
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
	bl      0x200f174
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
	ldr     r5, [pc, #0xac] @ 0x223ddd0, (=0x2245ca4)
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
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0x88] @ 0x223ddd4, (=0x2245c88)
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
	ldr     r5, [pc, #0x6c] @ 0x223ddd8, (=0x2245c6c)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x48] @ 0x223dddc, (=0x2245c50)
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x223ddce


.align 2


.word 0x2245ca4 @ 0x223ddd0
.word 0x2245c88 @ 0x223ddd4
.word 0x2245c6c @ 0x223ddd8
.word 0x2245c50 @ 0x223dddc
.thumb
Function_223dde0: @ 223dde0 :thumb
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
	bl      0x2002e98
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x2006e3c
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x68
	mov     r1, #0x7
	mov     r3, r2
	bl      0x2006e84
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
	bl      0x2021aa0
	mov     r1, #0xed
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0xed
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x25
	bl      0x2021d6c
	bl      0x2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223dec4

.word 0xd54 @ 0x223dec4
.thumb
Function_223dec8: @ 223dec8 :thumb
	mov     r1, #0xed
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x223ded4, (=0x2021bd5)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223ded2


.align 2


.word 0x2021bd5 @ 0x223ded4
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
	bl      0x201a7e8
	ldr     r1, [pc, #0x90] @ 0x223df94, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      0x201ada4
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
	bl      0x201a7e8
	ldr     r1, [pc, #0x64] @ 0x223df9c, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x64] @ 0x223dfa0, (=0x2245cc0)
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
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
.word 0x2245cc0 @ 0x223dfa0
.thumb
Function_223dfa4: @ 223dfa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x24] @ 0x223dfd0, (=0xefc)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x20] @ 0x223dfd4, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x1c] @ 0x223dfd8, (=0xf6c)
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_223dfbe: @ 223dfbe :thumb
	mov     r0, r5
	bl      0x201a8fc
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
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	sub     r1, #0x20
	ldr     r0, [r5, r1]
	bl      0x200c41c
	ldr     r0, [pc, #0x58] @ 0x223e064, (=0x11e)
	ldrb    r2, [r4, r0]
	cmp     r2, #0x0
	beq     branch_223e01c
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x8
	bl      0x200bdd0
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
	bl      0x200be08
.thumb
branch_223e034: @ 223e034 :thumb
	mov     r1, #0xb9
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r5, r1]
	mov     r2, #0x4f
	mov     r3, #0x3e
	bl      0x200b29c
	ldr     r1, [pc, #0x24] @ 0x223e06c, (=0xbb8)
	mov     r2, #0x50
	str     r0, [r5, r1]
	mov     r0, r1
	sub     r0, #0x28
	sub     r1, #0x24
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r3, #0x3e
	bl      0x200b29c
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
	bl      0x20237bc
	ldr     r0, [pc, #0x14] @ 0x223e098, (=0xbbc)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
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
	ldr     r1, [pc, #0xcc] @ 0x223e174, (=0x21bf67c)
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
	bl      0x2005748
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
	bl      0x2005748
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
	bl      0x2005748
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
	bl      0x2005748
	b       branch_223e170
@ 0x223e12c

.thumb
branch_223e12c: @ 223e12c :thumb
	add     r2, #0xfc
	ldr     r0, [r4, r2]
	bl      Function_2244210
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
	bl      0x2021d6c
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
	bl      0x2005748
.thumb
branch_223e170: @ 223e170 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223e174

.word 0x21bf67c @ 0x223e174
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
	bl      0x200f174
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
	bl      0x2002114
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
	bl      0x2006e60
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
	bl      0x2006e60
	ldr     r2, [pc, #0x1c] @ 0x223e2cc, (=0xbb8)
	ldr     r0, [pc, #0x18] @ 0x223e2c8, (=0xffc)
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_223e420
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
	bl      0x201d724
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
	bl      0x200b1b8
	ldr     r0, [pc, #0x38] @ 0x223e350, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x30] @ 0x223e350, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
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
	bl      0x201d738
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
	bl      0x200b1ec
	mov     r4, r0
	mov     r0, r6
	mov     r1, #0x4e
	bl      0x200b1ec
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0x34] @ 0x223e3ac, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x2
	bl      Function_22458fc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223e3ac, (=0xf0200)
	add     r5, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r2, #0x0
	mov     r3, #0x2
	bl      Function_22458fc
	mov     r0, r4
	bl      0x20237bc
	mov     r0, r6
	bl      0x20237bc
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
	bl      0x201ada4
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x223e41c, (=0xf0200)
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	ldsh    r2, [r4, r3]
	mov     r0, r5
	mov     r1, r7
	bl      Function_2242154
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223e41c, (=0xf0200)
	mov     r2, #0x2
	str     r0, [sp, #0x8]
	ldsb    r2, [r4, r2]
	mov     r0, r5
	mov     r1, r6
	mov     r3, #0x0
	bl      Function_2242200
	mov     r0, #0x3
	mov     r1, #0x4
	ldsb    r0, [r4, r0]
	ldsb    r1, [r4, r1]
	mov     r2, #0x0
	bl      Function_224296c
	mov     r2, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223e41c, (=0xf0200)
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x8
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r1, r6
	bl      Function_2242268
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x223e41c

.word 0xf0200 @ 0x223e41c
.thumb
Function_223e420: @ 223e420 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r1, #0x0
	mov     r6, r0
	mov     r4, r2
	bl      0x201ada4
	cmp     r5, #0x0
	beq     branch_223e446
	mov     r2, #0x0
	ldr     r0, [pc, #0x2c] @ 0x223e464, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r3, #0x3
	bl      Function_22458fc
.thumb
branch_223e446: @ 223e446 :thumb
	cmp     r4, #0x0
	beq     branch_223e45e
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223e464, (=0xf0200)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x8
	mov     r3, #0x13
	bl      Function_22458fc
.thumb
branch_223e45e: @ 223e45e :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223e462


.align 2


.word 0xf0200 @ 0x223e464
.thumb
Function_223e468: @ 223e468 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223e9b4
	ldr     r0, [r4, #0x4]
	bl      Function_223e594
	mov     r0, r4
	bl      Function_223e6b4
	mov     r0, r4
	bl      Function_223e7d0
	mov     r0, r4
	bl      Function_223e76c
	ldr     r1, [pc, #0xa8] @ 0x223e534, (=0xf6c)
	ldr     r2, [pc, #0xa8] @ 0x223e538, (=0xb94)
	add     r0, r4, r1
	add     r1, #0xe0
	ldr     r2, [r4, r2]
	add     r1, r4, r1
	bl      Function_223f9f8
	mov     r3, #0x0
	ldr     r0, [pc, #0x9c] @ 0x223e53c, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x9c] @ 0x223e540, (=0xb98)
	ldr     r0, [pc, #0x9c] @ 0x223e544, (=0xf7c)
	ldr     r1, [r4, r2]
	sub     r2, #0x1a
	ldsh    r2, [r4, r2]
	add     r0, r4, r0
	bl      Function_2242154
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x80] @ 0x223e53c, (=0x10200)
	ldr     r2, [pc, #0x7c] @ 0x223e538, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r4, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x84] @ 0x223e548, (=0xf9c)
	ldsb    r2, [r4, r2]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_2242200
	ldr     r1, [pc, #0x7c] @ 0x223e54c, (=0xb81)
	mov     r2, #0x1
	ldsb    r0, [r4, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r4, r1]
	bl      Function_224296c
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x58] @ 0x223e53c, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x4c] @ 0x223e538, (=0xb94)
	ldr     r0, [pc, #0x60] @ 0x223e550, (=0xfbc)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	bl      Function_22422b4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223e53c, (=0x10200)
	ldr     r3, [pc, #0x54] @ 0x223e554, (=0x105c)
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x54] @ 0x223e558, (=0xba4)
	add     r0, r4, r3
	ldr     r1, [r4, r2]
	sub     r2, #0x10
	add     r3, #0xf4
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	bl      Function_2242188
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223e534

.word 0xf6c @ 0x223e534
.word 0xb94 @ 0x223e538
.word 0x10200 @ 0x223e53c
.word 0xb98 @ 0x223e540
.word 0xf7c @ 0x223e544
.word 0xf9c @ 0x223e548
.word 0xb81 @ 0x223e54c
.word 0xfbc @ 0x223e550
.word 0x105c @ 0x223e554
.word 0xba4 @ 0x223e558
.thumb
Function_223e55c: @ 223e55c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x2c]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223e56c, (=0x2246860)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r3,pc}
@ 0x223e56a


.align 2


.word 0x2246860 @ 0x223e56c
.thumb
Function_223e570: @ 223e570 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223e7c0
	mov     r0, r4
	bl      Function_223ea1c
	mov     r0, r4
	bl      Function_223e964
	ldr     r0, [r4, #0x4]
	bl      Function_223e680
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e594

.thumb
Function_223e594: @ 223e594 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xd4] @ 0x223e670, (=0x2245dc4)
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
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xb0] @ 0x223e674, (=0x2245da8)
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
	ldr     r5, [pc, #0x8c] @ 0x223e678, (=0x2245de0)
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
	ldr     r5, [pc, #0x68] @ 0x223e67c, (=0x2245dfc)
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
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x223e66e


.align 2


.word 0x2245dc4 @ 0x223e670
.word 0x2245da8 @ 0x223e674
.word 0x2245de0 @ 0x223e678
.word 0x2245dfc @ 0x223e67c
.thumb
Function_223e680: @ 223e680 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	pop     {r4,pc}
@ 0x223e6b4

.thumb
Function_223e6b4: @ 223e6b4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]
	mov     r0, #0x68
	mov     r1, #0x3e
	bl      0x2006c24
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x20070e8
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
	bl      0x200710c
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223e76c

.thumb
Function_223e76c: @ 223e76c :thumb
	push    {r4,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x48] @ 0x223e7bc, (=0xd54)
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
	bl      0x2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021d6c
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021e80
	bl      0x2039734
	add     sp, #0x30
	pop     {r4,pc}
@ 0x223e7bc

.word 0xd54 @ 0x223e7bc
.thumb
Function_223e7c0: @ 223e7c0 :thumb
	mov     r1, #0x37
	lsl     r1, r1, #6
	ldr     r3, [pc, #0x4] @ 0x223e7cc, (=0x2021bd5)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223e7ca


.align 2


.word 0x2021bd5 @ 0x223e7cc
.thumb
Function_223e7d0: @ 223e7d0 :thumb
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
	ldr     r2, [pc, #0x150] @ 0x223e940, (=0xf1c)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r1, [pc, #0x144] @ 0x223e940, (=0xf1c)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      0x201ada4
	mov     r2, #0x0
	ldr     r0, [pc, #0x138] @ 0x223e944, (=0xf0d00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x130] @ 0x223e940, (=0xf1c)
	ldr     r0, [sp, #0x14]
	ldr     r3, [pc, #0x134] @ 0x223e948, (=0xbb4)
	add     r0, r0, r1
	ldr     r1, [sp, #0x14]
	ldr     r1, [r1, r3]
	mov     r3, #0x1
	bl      Function_22458c8
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
	ldr     r2, [pc, #0x114] @ 0x223e94c, (=0xefc)
	ldr     r1, [sp, #0x14]
	ldr     r0, [r0, #0x4]
	add     r1, r1, r2
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r1, [pc, #0x104] @ 0x223e94c, (=0xefc)
	ldr     r0, [sp, #0x14]
	add     r0, r0, r1
	mov     r1, #0x0
	bl      0x201ada4
	ldr     r1, [pc, #0xfc] @ 0x223e950, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0xfc] @ 0x223e954, (=0x2245d90)
	mov     r7, #0x0
	mov     r6, #0x1
	add     r5, r0, r1
.thumb
branch_223e85c: @ 223e85c :thumb
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x16
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r7, #0x6
	blt     branch_223e85c
	ldr     r1, [pc, #0xb0] @ 0x223e950, (=0xf6c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0xb4] @ 0x223e958, (=0x2245d80)
	add     r0, r0, r1
	mov     r5, #0x0
	mov     r6, #0x96
	str     r0, [sp, #0x18]
.thumb
branch_223e8aa: @ 223e8aa :thumb
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
	bl      0x201a7e8
	ldr     r0, [sp, #0x18]
	mov     r1, #0x0
	add     r0, r0, r7
	bl      0x201ada4
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x2
	blt     branch_223e8aa
	ldr     r1, [pc, #0x68] @ 0x223e95c, (=0x104c)
	ldr     r0, [sp, #0x14]
	ldr     r4, [pc, #0x68] @ 0x223e960, (=0x2245d88)
	mov     r7, #0x0
	mov     r6, #0x85
	add     r5, r0, r1
.thumb
branch_223e8fc: @ 223e8fc :thumb
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x38
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r7, #0x2
	blt     branch_223e8fc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223e940

.word 0xf1c @ 0x223e940
.word 0xf0d00 @ 0x223e944
.word 0xbb4 @ 0x223e948
.word 0xefc @ 0x223e94c
.word 0xf6c @ 0x223e950
.word 0x2245d90 @ 0x223e954
.word 0x2245d80 @ 0x223e958
.word 0x104c @ 0x223e95c
.word 0x2245d88 @ 0x223e960
.thumb
Function_223e964: @ 223e964 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x38] @ 0x223e9a4, (=0xefc)
	add     r0, r6, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x34] @ 0x223e9a8, (=0xf1c)
	add     r0, r6, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x30] @ 0x223e9ac, (=0xf6c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223e97e: @ 223e97e :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223e97e
	ldr     r0, [pc, #0x20] @ 0x223e9b0, (=0x104c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_223e992: @ 223e992 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x2
	blt     branch_223e992
	pop     {r4-r6,pc}
@ 0x223e9a2


.align 2


.word 0xefc @ 0x223e9a4
.word 0xf1c @ 0x223e9a8
.word 0xf6c @ 0x223e9ac
.word 0x104c @ 0x223e9b0
.thumb
Function_223e9b4: @ 223e9b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x29
	bl      0x200b1ec
	ldr     r1, [pc, #0x40] @ 0x223ea14, (=0xbb4)
	str     r0, [r4, r1]
	mov     r0, #0x3e
	mov     r1, #0x30
	bl      0x2018144
	ldr     r1, [pc, #0x38] @ 0x223ea18, (=0x1084)
	mov     r2, #0x30
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	blx 0x20c4bb8
	ldr     r2, [pc, #0x2c] @ 0x223ea18, (=0x1084)
	mov     r0, #0x3e
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r2, #0x1c
	bl      Function_2242520
	ldr     r1, [pc, #0x1c] @ 0x223ea18, (=0x1084)
	ldr     r1, [r4, r1]
	str     r0, [r1, #0x18]
	mov     r0, #0x3e
	bl      Function_2242544
	ldr     r1, [pc, #0x10] @ 0x223ea18, (=0x1084)
	ldr     r2, [r4, r1]
	add     r1, #0x38
	str     r0, [r2, #0x14]
	add     r0, r4, r1
	bl      Function_2242aa8
	pop     {r4,pc}
@ 0x223ea14

.word 0xbb4 @ 0x223ea14
.word 0x1084 @ 0x223ea18
.thumb
Function_223ea1c: @ 223ea1c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x223ea50, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x14]
	bl      0x20181c4
	ldr     r0, [pc, #0x24] @ 0x223ea50, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x18]
	bl      0x20181c4
	ldr     r0, [pc, #0x18] @ 0x223ea50, (=0x1084)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0xc] @ 0x223ea54, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x223ea50

.word 0x1084 @ 0x223ea50
.word 0xbb4 @ 0x223ea54
.thumb
Function_223ea58: @ 223ea58 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x223ea7c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x8
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ea7c

.word 0xf0f @ 0x223ea7c
.thumb
Function_223ea80: @ 223ea80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223efa8
	ldr     r0, [pc, #0x120] @ 0x223ebac, (=0x21bf67c)
	mov     r2, #0x1
	ldr     r1, [r0, #0x48]
	mov     r0, r1
	tst     r0, r2
	beq     branch_223eb3e
	mov     r0, r4
	bl      Function_223ef90
	cmp     r0, #0x5
	bls     branch_223eaa0
	b       branch_223eba8
@ 0x223eaa0

.thumb
branch_223eaa0: @ 223eaa0 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223eaac

Jumppoints_223eaac:
.hword branch_223eab8 - Jumppoints_223eaac - 2
.hword branch_223eac4 - Jumppoints_223eaac - 2
.hword branch_223eafe - Jumppoints_223eaac - 2
.hword branch_223eb0a - Jumppoints_223eaac - 2
.hword branch_223eb16 - Jumppoints_223eaac - 2
.hword branch_223eb1c - Jumppoints_223eaac - 2
.thumb
branch_223eab8: @ 223eab8 :thumb
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xf0] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eac4

.thumb
branch_223eac4: @ 223eac4 :thumb
	ldr     r0, [pc, #0xec] @ 0x223ebb4, (=0xb7e)
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223eaf2
	mov     r1, #0x12
	bl      0x20759f0
	ldr     r1, [pc, #0xe4] @ 0x223ebb8, (=0x1084)
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x20]
	ldr     r1, [r4, r1]
	ldr     r0, [pc, #0xd8] @ 0x223ebb4, (=0xb7e)
	ldr     r1, [r1, #0x20]
	add     r0, r4, r0
	bl      Function_2241b7c
	cmp     r0, #0x0
	beq     branch_223eaf2
	ldr     r0, [pc, #0xc4] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223eaf2

.thumb
branch_223eaf2: @ 223eaf2 :thumb
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xb8] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eafe

.thumb
branch_223eafe: @ 223eafe :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xac] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eb0a

.thumb
branch_223eb0a: @ 223eb0a :thumb
	mov     r0, #0xe
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xa0] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eb16

.thumb
branch_223eb16: @ 223eb16 :thumb
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
	b       branch_223eba8
@ 0x223eb1c

.thumb
branch_223eb1c: @ 223eb1c :thumb
	ldr     r0, [pc, #0x9c] @ 0x223ebbc, (=0xf0f)
	mov     r1, #0xf
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x19
	bl      Function_223c3f4
	ldr     r0, [pc, #0x78] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eb3e

.thumb
branch_223eb3e: @ 223eb3e :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223eb64
	ldr     r0, [pc, #0x74] @ 0x223ebbc, (=0xf0f)
	mov     r1, #0xf
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x19
	bl      Function_223c3f4
	ldr     r0, [pc, #0x50] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
	b       branch_223eba8
@ 0x223eb64

.thumb
branch_223eb64: @ 223eb64 :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2244210
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x223ebc0, (=0x1092)
	ldrh    r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_223eba8
	cmp     r5, #0x0
	blt     branch_223eba8
	add     r0, r5, #0x1
	lsl     r0, r0, #2
	add     r1, r4, r0
	ldr     r0, [pc, #0x40] @ 0x223ebc4, (=0xed4)
	ldr     r0, [r1, r0]
	lsl     r1, r5, #2
	add     r1, #0x10
	bl      0x2021d6c
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x12
	lsl     r0, r0, #4
	str     r5, [r4, r0]
	ldr     r0, [pc, #0xc] @ 0x223ebb0, (=0x5dc)
	bl      0x2005748
.thumb
branch_223eba8: @ 223eba8 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223ebac

.word 0x21bf67c @ 0x223ebac
.word 0x5dc @ 0x223ebb0
.word 0xb7e @ 0x223ebb4
.word 0x1084 @ 0x223ebb8
.word 0xf0f @ 0x223ebbc
.word 0x1092 @ 0x223ebc0
.word 0xed4 @ 0x223ebc4
.thumb
Function_223ebc8: @ 223ebc8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r3, [pc, #0x8c] @ 0x223ec5c, (=0xb7e)
	mov     r4, r0
	ldsh    r1, [r4, r3]
	cmp     r1, #0x0
	bne     branch_223ebf6
	ldr     r1, [pc, #0x88] @ 0x223ec60, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0xc
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x74] @ 0x223ec64, (=0x5f3)
	bl      0x2005748
	b       branch_223ec54
@ 0x223ebf6

.thumb
branch_223ebf6: @ 223ebf6 :thumb
	ldr     r2, [pc, #0x70] @ 0x223ec68, (=0x1150)
	add     r1, r3, #0x6
	add     r0, r4, r3
	add     r3, #0xe
	ldr     r2, [r4, r2]
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	bl      Function_223fb08
	cmp     r0, #0x0
	beq     branch_223ec2e
	ldr     r0, [pc, #0x50] @ 0x223ec60, (=0xf0f)
	mov     r1, #0x21
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x3c] @ 0x223ec64, (=0x5f3)
	bl      0x2005748
	b       branch_223ec54
@ 0x223ec2e

.thumb
branch_223ec2e: @ 223ec2e :thumb
	ldr     r0, [pc, #0x3c] @ 0x223ec6c, (=0x5ff)
	bl      0x2005748
	ldr     r0, [pc, #0x28] @ 0x223ec60, (=0xf0f)
	mov     r1, #0xd
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x12
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_22442e0
.thumb
branch_223ec54: @ 223ec54 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ec5a


.align 2


.word 0xb7e @ 0x223ec5c
.word 0xf0f @ 0x223ec60
.word 0x5f3 @ 0x223ec64
.word 0x1150 @ 0x223ec68
.word 0x5ff @ 0x223ec6c
.thumb
Function_223ec70: @ 223ec70 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x2c
	cmp     r1, #0x1
	ldr     r0, [r0, #0x0]
	bne     branch_223ec82
	ldr     r0, [r0, #0x0]
	bl      0x202da9c
	b       branch_223ec88
@ 0x223ec82

.thumb
branch_223ec82: @ 223ec82 :thumb
	ldr     r0, [r0, #0x0]
	bl      0x202da8c
.thumb
branch_223ec88: @ 223ec88 :thumb
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
	blx 0x21d806c
	add     r0, sp, #0xc
	blx 0x20cc16c
	mov     r4, r0
	add     r0, sp, #0x1c
	blx 0x20cc16c
	sub     r0, r4, r0
	bmi     branch_223ecca
	cmp     r0, #0x3
	bge     branch_223ecca
	add     sp, #0x2c
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x223ecca

.thumb
branch_223ecca: @ 223ecca :thumb
	mov     r0, #0x0
	add     sp, #0x2c
	pop     {r3,r4,pc}
@ 0x223ecd0

.thumb
Function_223ecd0: @ 223ecd0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r1, #0x1
	mov     r5, r0
	mov     r4, #0x3
	bl      Function_223ec70
	cmp     r0, #0x0
	beq     branch_223ece4
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_223ece4: @ 223ece4 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_223ec70
	cmp     r0, #0x0
	beq     branch_223ecf2
	.hword  0x1ca4 @ add r4, r4, #0x2
.thumb
branch_223ecf2: @ 223ecf2 :thumb
	ldr     r0, [pc, #0x90] @ 0x223ed84, (=0x1150)
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223ed0c
	ldr     r0, [pc, #0x8c] @ 0x223ed88, (=0xb7e)
	mov     r2, #0x95
	lsl     r2, r2, #2
	add     r0, r5, r0
	mov     r1, r4
	add     r2, r5, r2
	bl      Function_223b9b0
	b       branch_223ed4a
@ 0x223ed0c

.thumb
branch_223ed0c: @ 223ed0c :thumb
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x8
	blx 0x20c4cf4
	ldr     r1, [pc, #0x70] @ 0x223ed88, (=0xb7e)
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
	ldr     r1, [pc, #0x4c] @ 0x223ed84, (=0x1150)
	strb    r4, [r0, #0x6]
	ldr     r1, [r5, r1]
	strb    r1, [r0, #0x7]
	mov     r1, #0x95
	lsl     r1, r1, #2
	add     r0, sp, #0x0
	add     r1, r5, r1
	bl      Function_223ba24
.thumb
branch_223ed4a: @ 223ed4a :thumb
	ldr     r1, [pc, #0x3c] @ 0x223ed88, (=0xb7e)
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
	ldr     r2, [pc, #0x1c] @ 0x223ed84, (=0x1150)
	add     r1, #0xe
	ldr     r0, [r5, r2]
	sub     r2, #0xbe
	str     r0, [r5, r1]
	ldr     r0, [pc, #0x18] @ 0x223ed8c, (=0x1484)
	mov     r1, #0x0
	str     r1, [r5, r0]
	mov     r0, #0x13
	str     r0, [r5, #0x2c]
	strh    r1, [r5, r2]
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x223ed82


.align 2


.word 0x1150 @ 0x223ed84
.word 0xb7e @ 0x223ed88
.word 0x1484 @ 0x223ed8c
.thumb
Function_223ed90: @ 223ed90 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_223ee18
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0x90] @ 0x223ee34, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x16
	bhi     branch_223ee2e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223edbc

Jumppoints_223edbc:
.hword branch_223ee12 - Jumppoints_223edbc - 2
.hword branch_223ee06 - Jumppoints_223edbc - 2
.hword branch_223ee0c - Jumppoints_223edbc - 2
.hword branch_223ee12 - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223ee06 - Jumppoints_223edbc - 2
.hword branch_223ee2e - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.hword branch_223edea - Jumppoints_223edbc - 2
.thumb
branch_223edea: @ 223edea :thumb
	mov     r0, #0x47
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	ldr     r0, [pc, #0x44] @ 0x223ee38, (=0x5ff)
	bl      0x20057a4
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_2244230
	mov     r0, #0x14
	str     r0, [r4, #0x2c]
	b       branch_223ee2e
@ 0x223ee06

.thumb
branch_223ee06: @ 223ee06 :thumb
	mov     r0, #0x1d
	str     r0, [r4, #0x2c]
	b       branch_223ee2e
@ 0x223ee0c

.thumb
branch_223ee0c: @ 223ee0c :thumb
	bl      0x2038a0c
	b       branch_223ee2e
@ 0x223ee12

.thumb
branch_223ee12: @ 223ee12 :thumb
	mov     r0, #0x16
	str     r0, [r4, #0x2c]
	b       branch_223ee2e
@ 0x223ee18

.thumb
branch_223ee18: @ 223ee18 :thumb
	ldr     r0, [pc, #0x18] @ 0x223ee34, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_223ee2e
	bl      0x2038a0c
.thumb
branch_223ee2e: @ 223ee2e :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x223ee32


.align 2


.word 0x1484 @ 0x223ee34
.word 0x5ff @ 0x223ee38
.thumb
Function_223ee3c: @ 223ee3c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x47
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	cmp     r1, #0x0
	ldr     r1, [pc, #0x44] @ 0x223ee90, (=0xf0f)
	bne     branch_223ee6c
	str     r1, [sp, #0x0]
	mov     r1, #0xe
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x2c] @ 0x223ee94, (=0x5f3)
	bl      0x2005748
	b       branch_223ee8a
@ 0x223ee6c

.thumb
branch_223ee6c: @ 223ee6c :thumb
	str     r1, [sp, #0x0]
	mov     r1, #0x1e
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x15
	bl      Function_223c3f4
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
.thumb
branch_223ee8a: @ 223ee8a :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ee90

.word 0xf0f @ 0x223ee90
.word 0x5f3 @ 0x223ee94
.thumb
Function_223ee98: @ 223ee98 :thumb
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
	ble     branch_223eecc
	ldr     r1, [pc, #0x24] @ 0x223eed4, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x20
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x10] @ 0x223eed8, (=0x1092)
	mov     r1, #0x1
	strh    r1, [r4, r0]
.thumb
branch_223eecc: @ 223eecc :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223eed2


.align 2


.word 0xf0f @ 0x223eed4
.word 0x1092 @ 0x223eed8
.thumb
Function_223eedc: @ 223eedc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x28] @ 0x223ef0c, (=0xb84)
	mov     r4, r0
	mov     r3, #0x0
	strh    r3, [r4, r1]
	ldr     r1, [pc, #0x24] @ 0x223ef10, (=0xf0f)
	mov     r2, #0x1
	str     r1, [sp, #0x0]
	mov     r1, #0x26
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x14] @ 0x223ef14, (=0x5f3)
	bl      0x2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef0a


.align 2


.word 0xb84 @ 0x223ef0c
.word 0xf0f @ 0x223ef10
.word 0x5f3 @ 0x223ef14
.thumb
Function_223ef18: @ 223ef18 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223ef4c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x93
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x1e
	bl      Function_223c3f4
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x10] @ 0x223ef50, (=0x5f3)
	bl      0x2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef4a


.align 2


.word 0xf0f @ 0x223ef4c
.word 0x5f3 @ 0x223ef50
.thumb
Function_223ef54: @ 223ef54 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x2c] @ 0x223ef88, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x98
	mov     r2, #0x4
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x18
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	ldr     r0, [pc, #0xc] @ 0x223ef8c, (=0x5f3)
	bl      0x2005748
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223ef88

.word 0xf0f @ 0x223ef88
.word 0x5f3 @ 0x223ef8c
.thumb
Function_223ef90: @ 223ef90 :thumb
	ldr     r1, [pc, #0x10] @ 0x223efa4, (=0x1084)
	ldr     r1, [r0, r1]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223ef9e
	ldr     r0, [r1, #0x28]
	bx      lr
@ 0x223ef9e

.thumb
branch_223ef9e: @ 223ef9e :thumb
	ldr     r0, [r1, #0x2c]
	.hword  0x1d00 @ add r0, r0, #0x4
	bx      lr
@ 0x223efa4

.word 0x1084 @ 0x223efa4
.thumb
Function_223efa8: @ 223efa8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0xe0] @ 0x223f090, (=0x21bf67c)
	mov     r1, #0x40
	ldr     r0, [r0, #0x48]
	tst     r1, r0
	beq     branch_223efea
	ldr     r0, [pc, #0xd8] @ 0x223f094, (=0x1084)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223efd4
	ldr     r0, [r1, #0x28]
	cmp     r0, #0x0
	ble     branch_223f060
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r1, #0x28]
	ldr     r0, [pc, #0xc8] @ 0x223f098, (=0x5dc)
	bl      0x2005748
	b       branch_223f060
@ 0x223efd4

.thumb
branch_223efd4: @ 223efd4 :thumb
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x0
	beq     branch_223efe0
	ldr     r0, [pc, #0xbc] @ 0x223f098, (=0x5dc)
	bl      0x2005748
.thumb
branch_223efe0: @ 223efe0 :thumb
	ldr     r0, [pc, #0xb0] @ 0x223f094, (=0x1084)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x2c]
	b       branch_223f060
@ 0x223efea

.thumb
branch_223efea: @ 223efea :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_223f022
	ldr     r0, [pc, #0xa0] @ 0x223f094, (=0x1084)
	ldr     r1, [r4, r0]
	ldr     r0, [r1, #0x24]
	cmp     r0, #0x0
	bne     branch_223f00c
	ldr     r0, [r1, #0x28]
	cmp     r0, #0x3
	bge     branch_223f060
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r1, #0x28]
	ldr     r0, [pc, #0x90] @ 0x223f098, (=0x5dc)
	bl      0x2005748
	b       branch_223f060
@ 0x223f00c

.thumb
branch_223f00c: @ 223f00c :thumb
	ldr     r0, [r1, #0x2c]
	cmp     r0, #0x1
	beq     branch_223f018
	ldr     r0, [pc, #0x84] @ 0x223f098, (=0x5dc)
	bl      0x2005748
.thumb
branch_223f018: @ 223f018 :thumb
	ldr     r0, [pc, #0x78] @ 0x223f094, (=0x1084)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x2c]
	b       branch_223f060
@ 0x223f022

.thumb
branch_223f022: @ 223f022 :thumb
	mov     r1, #0x10
	tst     r1, r0
	beq     branch_223f042
	ldr     r0, [pc, #0x68] @ 0x223f094, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x1
	beq     branch_223f038
	ldr     r0, [pc, #0x64] @ 0x223f098, (=0x5dc)
	bl      0x2005748
.thumb
branch_223f038: @ 223f038 :thumb
	ldr     r0, [pc, #0x58] @ 0x223f094, (=0x1084)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x24]
	b       branch_223f060
@ 0x223f042

.thumb
branch_223f042: @ 223f042 :thumb
	mov     r1, #0x20
	tst     r0, r1
	beq     branch_223f060
	ldr     r0, [pc, #0x48] @ 0x223f094, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	beq     branch_223f058
	ldr     r0, [pc, #0x44] @ 0x223f098, (=0x5dc)
	bl      0x2005748
.thumb
branch_223f058: @ 223f058 :thumb
	ldr     r0, [pc, #0x38] @ 0x223f094, (=0x1084)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	str     r1, [r0, #0x24]
.thumb
branch_223f060: @ 223f060 :thumb
	mov     r0, r4
	bl      Function_223ef90
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x223f09c, (=0x2246848)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0x0]
	mov     r0, r4
	bl      Function_223ef90
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x24] @ 0x223f0a0, (=0x224684a)
	ldrh    r0, [r0, r1]
	add     r1, sp, #0x0
	lsl     r0, r0, #12
	str     r0, [sp, #0x4]
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	bl      0x2021c50
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f090

.word 0x21bf67c @ 0x223f090
.word 0x1084 @ 0x223f094
.word 0x5dc @ 0x223f098
.word 0x2246848 @ 0x223f09c
.word 0x224684a @ 0x223f0a0
.thumb
Function_223f0a4: @ 223f0a4 :thumb
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
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f0cc

.thumb
Function_223f0cc: @ 223f0cc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x70] @ 0x223f144, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x9
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
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
	ldr     r1, [pc, #0x4c] @ 0x223f148, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      0x201a7e8
	ldr     r0, [pc, #0x3c] @ 0x223f148, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0xea
	ldr     r1, [pc, #0x24] @ 0x223f14c, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      0x201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f14c, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f144

.word 0xf0f @ 0x223f144
.word 0xf3c @ 0x223f148
.word 0xf4c @ 0x223f14c
.thumb
Function_223f150: @ 223f150 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x24] @ 0x223f178, (=0xb94)
	mov     r4, r0
	ldr     r1, [pc, #0x24] @ 0x223f17c, (=0x106c)
	ldr     r2, [pc, #0x24] @ 0x223f180, (=0xf3c)
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_22426a4
	ldr     r1, [pc, #0x1c] @ 0x223f184, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f188, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f178

.word 0xb94 @ 0x223f178
.word 0x106c @ 0x223f17c
.word 0xf3c @ 0x223f180
.word 0x1078 @ 0x223f184
.word 0xffff @ 0x223f188
.thumb
Function_223f18c: @ 223f18c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa8] @ 0x223f23c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a68
	cmp     r0, #0x9
	bhi     branch_223f1c2
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223f1ae

Jumppoints_223f1ae:
.hword branch_223f236 - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.hword branch_223f1cc - Jumppoints_223f1ae - 2
.thumb
branch_223f1c2: @ 223f1c2 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223f1f0
	b       branch_223f236
@ 0x223f1cc

.thumb
branch_223f1cc: @ 223f1cc :thumb
	ldr     r0, [pc, #0x70] @ 0x223f240, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      0x2001384
	ldr     r0, [pc, #0x64] @ 0x223f244, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x60] @ 0x223f248, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	b       branch_223f236
@ 0x223f1f0

.thumb
branch_223f1f0: @ 223f1f0 :thumb
	ldr     r0, [pc, #0x4c] @ 0x223f240, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      0x2001384
	ldr     r0, [pc, #0x40] @ 0x223f244, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x40] @ 0x223f24c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x3c] @ 0x223f250, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	ldr     r0, [pc, #0x2c] @ 0x223f24c, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x2c] @ 0x223f254, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x18] @ 0x223f248, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_223f236: @ 223f236 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f23a


.align 2


.word 0x1078 @ 0x223f23c
.word 0x1084 @ 0x223f240
.word 0x106c @ 0x223f244
.word 0x5dc @ 0x223f248
.word 0xf3c @ 0x223f24c
.word 0xefc @ 0x223f250
.word 0xf4c @ 0x223f254
.thumb
Function_223f258: @ 223f258 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r3, [pc, #0x38] @ 0x223f298, (=0xb98)
	mov     r4, r0
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x223f29c, (=0x1084)
	ldr     r2, [r4, r1]
	sub     r1, #0x18
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	add     r1, r4, r1
	ldr     r2, [r2, #0x10]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x28] @ 0x223f2a0, (=0xf4c)
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22427bc
	ldr     r1, [pc, #0x20] @ 0x223f2a4, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x20] @ 0x223f2a8, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x7
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223f296


.align 2


.word 0xb98 @ 0x223f298
.word 0x1084 @ 0x223f29c
.word 0xf4c @ 0x223f2a0
.word 0x1078 @ 0x223f2a4
.word 0xffff @ 0x223f2a8
.thumb
Function_223f2ac: @ 223f2ac :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x134] @ 0x223f3e8, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a68
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_223f2d4
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_223f2d2
	b       branch_223f3e0
@ 0x223f2d2

.thumb
branch_223f2d2: @ 223f2d2 :thumb
	b       branch_223f31a
@ 0x223f2d4

.thumb
branch_223f2d4: @ 223f2d4 :thumb
	ldr     r0, [pc, #0x114] @ 0x223f3ec, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      0x2001384
	ldr     r0, [pc, #0x108] @ 0x223f3f0, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x104] @ 0x223f3f4, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xfc] @ 0x223f3f8, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xe8] @ 0x223f3ec, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac0
	b       branch_223f3e0
@ 0x223f31a

.thumb
branch_223f31a: @ 223f31a :thumb
	ldr     r0, [pc, #0xd0] @ 0x223f3ec, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      0x2001384
	ldr     r0, [pc, #0xc0] @ 0x223f3f0, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0xc4] @ 0x223f3fc, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xb4] @ 0x223f3f4, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xb0] @ 0x223f3fc, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0xa0] @ 0x223f3f4, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0xa4] @ 0x223f400, (=0xb7e)
	strh    r5, [r4, r0]
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x94] @ 0x223f3f8, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x9c] @ 0x223f404, (=0xf7c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r3, #0x0
	ldr     r0, [pc, #0x94] @ 0x223f408, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x90] @ 0x223f40c, (=0xb98)
	ldr     r0, [pc, #0x88] @ 0x223f404, (=0xf7c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, r5
	bl      Function_2242154
	mov     r0, r5
	mov     r1, #0x12
	bl      0x20759f0
	ldr     r1, [pc, #0x5c] @ 0x223f3ec, (=0x1084)
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
	bl      Function_2242ac0
	ldr     r1, [pc, #0x40] @ 0x223f3ec, (=0x1084)
	ldr     r0, [pc, #0x54] @ 0x223f400, (=0xb7e)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	ldr     r1, [r1, #0x20]
	bl      Function_2241b7c
	cmp     r0, #0x0
	beq     branch_223f3e0
	ldr     r0, [pc, #0x54] @ 0x223f410, (=0xf9c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223f408, (=0x10200)
	ldr     r2, [pc, #0x44] @ 0x223f414, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r4, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x38] @ 0x223f410, (=0xf9c)
	ldsb    r2, [r4, r2]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_2242200
.thumb
branch_223f3e0: @ 223f3e0 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f3e6


.align 2


.word 0x1078 @ 0x223f3e8
.word 0x1084 @ 0x223f3ec
.word 0x106c @ 0x223f3f0
.word 0xf4c @ 0x223f3f4
.word 0x5dc @ 0x223f3f8
.word 0xf3c @ 0x223f3fc
.word 0xb7e @ 0x223f400
.word 0xf7c @ 0x223f404
.word 0x10200 @ 0x223f408
.word 0xb98 @ 0x223f40c
.word 0xf9c @ 0x223f410
.word 0xb94 @ 0x223f414
.thumb
Function_223f418: @ 223f418 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f468, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
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
	ldr     r1, [pc, #0x24] @ 0x223f46c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      0x201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f46c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f466


.align 2


.word 0xf0f @ 0x223f468
.word 0xf3c @ 0x223f46c
.thumb
Function_223f470: @ 223f470 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x223f498, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x223f49c, (=0x106c)
	ldr     r1, [pc, #0x24] @ 0x223f4a0, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_224283c
	ldr     r1, [pc, #0x1c] @ 0x223f4a4, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f4a8, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f498

.word 0xb94 @ 0x223f498
.word 0x106c @ 0x223f49c
.word 0xf3c @ 0x223f4a0
.word 0x1078 @ 0x223f4a4
.word 0xffff @ 0x223f4a8
.thumb
Function_223f4ac: @ 223f4ac :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x223f57c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a68
	mov     r4, r0
	cmp     r4, #0x2
	bhi     branch_223f4d4
	cmp     r4, #0x0
	beq     branch_223f518
	cmp     r4, #0x1
	beq     branch_223f518
	cmp     r4, #0x2
	beq     branch_223f518
	b       branch_223f574
@ 0x223f4d4

.thumb
branch_223f4d4: @ 223f4d4 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_223f574
	ldr     r0, [pc, #0x9c] @ 0x223f57c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x94] @ 0x223f580, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x90] @ 0x223f584, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x8c] @ 0x223f588, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	ldr     r0, [pc, #0x7c] @ 0x223f584, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x7c] @ 0x223f58c, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f574
@ 0x223f518

.thumb
branch_223f518: @ 223f518 :thumb
	ldr     r0, [pc, #0x60] @ 0x223f57c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x58] @ 0x223f580, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x54] @ 0x223f584, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x4c] @ 0x223f584, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x4c] @ 0x223f58c, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x2e
	add     r1, r4, #0x1
	lsl     r0, r0, #6
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x40] @ 0x223f590, (=0xf9c)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      0x201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x34] @ 0x223f594, (=0x10200)
	ldr     r2, [pc, #0x34] @ 0x223f598, (=0xb94)
	str     r0, [sp, #0x8]
	ldr     r1, [r5, r2]
	sub     r2, #0x14
	ldr     r0, [pc, #0x24] @ 0x223f590, (=0xf9c)
	ldsb    r2, [r5, r2]
	add     r0, r5, r0
	mov     r3, #0x1
	bl      Function_2242200
.thumb
branch_223f574: @ 223f574 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f57a


.align 2


.word 0x1078 @ 0x223f57c
.word 0x106c @ 0x223f580
.word 0xf3c @ 0x223f584
.word 0xefc @ 0x223f588
.word 0x5dc @ 0x223f58c
.word 0xf9c @ 0x223f590
.word 0x10200 @ 0x223f594
.word 0xb94 @ 0x223f598
.thumb
Function_223f59c: @ 223f59c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f5ec, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xb
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
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
	ldr     r1, [pc, #0x24] @ 0x223f5f0, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      0x201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f5f0, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f5ea


.align 2


.word 0xf0f @ 0x223f5ec
.word 0xf3c @ 0x223f5f0
.thumb
Function_223f5f4: @ 223f5f4 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x223f620, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f624, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x223f628, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r3, #0x1
	bl      Function_22428ac
	ldr     r1, [pc, #0x20] @ 0x223f62c, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f630, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f61e


.align 2


.word 0xb94 @ 0x223f620
.word 0x106c @ 0x223f624
.word 0xf3c @ 0x223f628
.word 0x1078 @ 0x223f62c
.word 0xffff @ 0x223f630
.thumb
Function_223f634: @ 223f634 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc4] @ 0x223f700, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a68
	mov     r4, r0
	cmp     r4, #0xb
	beq     branch_223f65e
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223f65e
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_223f6f8
	b       branch_223f69a
@ 0x223f65e

.thumb
branch_223f65e: @ 223f65e :thumb
	ldr     r0, [pc, #0xa0] @ 0x223f700, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x98] @ 0x223f704, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x94] @ 0x223f708, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x8c] @ 0x223f70c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	ldr     r0, [pc, #0x80] @ 0x223f708, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x80] @ 0x223f710, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f6f8
@ 0x223f69a

.thumb
branch_223f69a: @ 223f69a :thumb
	ldr     r0, [pc, #0x64] @ 0x223f700, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x5c] @ 0x223f704, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x58] @ 0x223f708, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x4c] @ 0x223f708, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x4c] @ 0x223f710, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x4c] @ 0x223f714, (=0xb7e)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x1
	bl      Function_2242930
	ldr     r0, [pc, #0x44] @ 0x223f718, (=0xfbc)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      0x201ada4
	mov     r3, #0x0
	ldr     r0, [pc, #0x38] @ 0x223f71c, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [pc, #0x34] @ 0x223f720, (=0xb94)
	ldr     r0, [pc, #0x28] @ 0x223f718, (=0xfbc)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	mov     r2, r4
	bl      Function_22422b4
.thumb
branch_223f6f8: @ 223f6f8 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f6fe


.align 2


.word 0x1078 @ 0x223f700
.word 0x106c @ 0x223f704
.word 0xf3c @ 0x223f708
.word 0xefc @ 0x223f70c
.word 0x5dc @ 0x223f710
.word 0xb7e @ 0x223f714
.word 0xfbc @ 0x223f718
.word 0x10200 @ 0x223f71c
.word 0xb94 @ 0x223f720
.thumb
Function_223f724: @ 223f724 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x223f774, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa9
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
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
	ldr     r1, [pc, #0x24] @ 0x223f778, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0x14] @ 0x223f778, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223f772


.align 2


.word 0xf0f @ 0x223f774
.word 0xf3c @ 0x223f778
.thumb
Function_223f77c: @ 223f77c :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x28] @ 0x223f7a8, (=0xba4)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f7ac, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x223f7b0, (=0xf3c)
	ldr     r2, [r4, r3]
	sub     r3, #0x10
	ldr     r3, [r4, r3]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_22429b0
	ldr     r1, [pc, #0x1c] @ 0x223f7b4, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x223f7b8, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x10
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f7a8

.word 0xba4 @ 0x223f7a8
.word 0x106c @ 0x223f7ac
.word 0xf3c @ 0x223f7b0
.word 0x1078 @ 0x223f7b4
.word 0xffff @ 0x223f7b8
.thumb
Function_223f7bc: @ 223f7bc :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x223f88c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a68
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_223f884
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	beq     branch_223f7ea
	ldr     r0, [pc, #0xac] @ 0x223f890, (=0x2245fd0)
	ldr     r0, [r0, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	bne     branch_223f826
.thumb
branch_223f7ea: @ 223f7ea :thumb
	ldr     r0, [pc, #0xa0] @ 0x223f88c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x9c] @ 0x223f894, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x98] @ 0x223f898, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x90] @ 0x223f89c, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	ldr     r0, [pc, #0x84] @ 0x223f898, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x84] @ 0x223f8a0, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_223f884
@ 0x223f826

.thumb
branch_223f826: @ 223f826 :thumb
	ldr     r0, [pc, #0x64] @ 0x223f88c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x60] @ 0x223f894, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x5c] @ 0x223f898, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x50] @ 0x223f898, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x50] @ 0x223f8a0, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	mov     r1, r4
	bl      Function_2242a40
	ldr     r0, [pc, #0x48] @ 0x223f8a4, (=0x105c)
	mov     r1, #0x0
	add     r0, r5, r0
	str     r1, [r5, #0x2c]
	bl      0x201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x223f8a8, (=0x10200)
	ldr     r3, [pc, #0x34] @ 0x223f8a4, (=0x105c)
	str     r0, [sp, #0x8]
	ldr     r2, [pc, #0x38] @ 0x223f8ac, (=0xba4)
	add     r0, r5, r3
	ldr     r1, [r5, r2]
	sub     r2, #0x10
	add     r3, #0xf4
	ldr     r2, [r5, r2]
	ldr     r3, [r5, r3]
	bl      Function_2242188
.thumb
branch_223f884: @ 223f884 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f88a


.align 2


.word 0x1078 @ 0x223f88c
.word 0x2245fd0 @ 0x223f890
.word 0x106c @ 0x223f894
.word 0xf3c @ 0x223f898
.word 0xefc @ 0x223f89c
.word 0x5dc @ 0x223f8a0
.word 0x105c @ 0x223f8a4
.word 0x10200 @ 0x223f8a8
.word 0xba4 @ 0x223f8ac
.thumb
Function_223f8b0: @ 223f8b0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x223f8cc, (=0x186)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x223f8d0, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x1a
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f8ca


.align 2


.word 0x186 @ 0x223f8cc
.word 0x1070 @ 0x223f8d0
.thumb
Function_223f8d4: @ 223f8d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x3c] @ 0x223f918, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_223f912
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_223f8f6
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_223f912
@ 0x223f8f6

.thumb
branch_223f8f6: @ 223f8f6 :thumb
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_22442e0
	mov     r0, #0x47
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_223f912: @ 223f912 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f916


.align 2


.word 0x1070 @ 0x223f918
.thumb
Function_223f91c: @ 223f91c :thumb
	mov     r1, #0x1
	str     r1, [r0, #0x2c]
	mov     r0, #0x3
	bx      lr
@ 0x223f924

.thumb
Function_223f924: @ 223f924 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x223f948, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x92
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_223f9a0
	mov     r0, r4
	mov     r1, #0x17
	mov     r2, #0x1
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223f948

.word 0xf0f @ 0x223f948
.thumb
Function_223f94c: @ 223f94c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x223f968, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223f964
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223f964: @ 223f964 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f968

.word 0xbe4 @ 0x223f968
.thumb
Function_223f96c: @ 223f96c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x223f99c, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_223f998
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	cmp     r1, #0x2d
	ble     branch_223f998
	mov     r1, #0x0
	str     r1, [r4, r0]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_223f998: @ 223f998 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x223f99c

.word 0xbe4 @ 0x223f99c
.thumb
Function_223f9a0: @ 223f9a0 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r2
	ldr     r2, [pc, #0x44] @ 0x223f9ec, (=0xb94)
	mov     r5, r0
	ldr     r0, [r5, r2]
	add     r2, #0x1c
	ldr     r2, [r5, r2]
	bl      0x200b1b8
	ldr     r0, [pc, #0x38] @ 0x223f9f0, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x30] @ 0x223f9f0, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x18] @ 0x223f9f0, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0xc] @ 0x223f9f4, (=0xbe4)
	str     r0, [r5, r1]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223f9ec

.word 0xb94 @ 0x223f9ec
.word 0xefc @ 0x223f9f0
.word 0xbe4 @ 0x223f9f4
.thumb
Function_223f9f8: @ 223f9f8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r2
	mov     r5, r0
	mov     r7, r1
	mov     r0, r4
	mov     r1, #0x3b
	bl      0x200b1ec
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xf0] @ 0x223fb00, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0x3d
	bl      0x200b1ec
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xcc] @ 0x223fb00, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x20
	mov     r1, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0x3f
	bl      0x200b1ec
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0xa8] @ 0x223fb00, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x40
	mov     r1, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0xa5
	bl      0x200b1ec
	mov     r6, r0
	mov     r2, #0x0
	ldr     r0, [pc, #0x84] @ 0x223fb00, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r1, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0x41
	bl      0x200b1ec
	mov     r6, r0
	mov     r3, r5
	add     r3, #0x67
	ldrb    r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	lsl     r3, r3, #3
	bl      0x2002eec
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x54] @ 0x223fb04, (=0x10200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0x60
	mov     r1, r6
	bl      Function_22458fc
	mov     r0, r6
	bl      0x20237bc
	mov     r0, r4
	mov     r1, #0x42
	bl      0x200b1ec
	mov     r4, r0
	mov     r3, r5
	add     r3, #0x77
	ldrb    r3, [r3, #0x0]
	mov     r0, #0x0
	mov     r1, r4
	mov     r2, r0
	lsl     r3, r3, #3
	bl      0x2002eec
	mov     r2, r0
	mov     r3, #0x0
	ldr     r0, [pc, #0x1c] @ 0x223fb04, (=0x10200)
	str     r3, [sp, #0x0]
	add     r5, #0x70
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r4
	bl      Function_22458fc
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223fafe


.align 2


.word 0xf0200 @ 0x223fb00
.word 0x10200 @ 0x223fb04
.thumb
Function_223fb08: @ 223fb08 :thumb
	push    {r4,r5}
	mov     r4, #0x0
	ldsh    r5, [r0, r4]
	ldsh    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb3c
	mov     r4, #0x2
	ldsb    r5, [r0, r4]
	ldsb    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb3c
	mov     r4, #0x3
	ldsb    r5, [r0, r4]
	ldsb    r4, [r1, r4]
	cmp     r5, r4
	bne     branch_223fb3c
	mov     r4, #0x4
	ldsb    r5, [r0, r4]
	ldsb    r0, [r1, r4]
	cmp     r5, r0
	bne     branch_223fb3c
	cmp     r2, r3
	bne     branch_223fb3c
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x223fb3c

.thumb
branch_223fb3c: @ 223fb3c :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x223fb42


.align 2, 0


.thumb
Function_223fb44: @ 223fb44 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_22401dc
	ldr     r0, [r4, #0x4]
	bl      Function_223fc04
	mov     r0, r4
	bl      Function_223fd48
	mov     r0, r4
	bl      Function_2240024
	mov     r0, r4
	bl      Function_223fe20
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x8
	bne     branch_223fb84
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	b       branch_223fb9a
@ 0x223fb84

.thumb
branch_223fb84: @ 223fb84 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
.thumb
branch_223fb9a: @ 223fb9a :thumb
	mov     r1, #0x45
	lsl     r1, r1, #2
	ldrh    r1, [r4, r1]
	mov     r0, r4
	bl      Function_2240f9c
	mov     r0, r4
	bl      Function_2245930
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x223fbb6


.align 2, 0


.thumb
Function_223fbb8: @ 223fbb8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      0x20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x223fbd4, (=0x22468dc)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x223fbd2


.align 2


.word 0x22468dc @ 0x223fbd4
.thumb
Function_223fbd8: @ 223fbd8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2039794
	mov     r0, r4
	bl      Function_223ffc4
	mov     r0, r4
	bl      Function_2240264
	mov     r0, r4
	bl      Function_224018c
	ldr     r0, [r4, #0x4]
	bl      Function_223fd1c
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223fc02


.align 2, 0


.thumb
Function_223fc04: @ 223fc04 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0xf8] @ 0x223fd04, (=0x2245e20)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xe8] @ 0x223fd08, (=0x2245e98)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xc4] @ 0x223fd0c, (=0x2245eb4)
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
	bl      0x20183c4
	ldr     r5, [pc, #0xa8] @ 0x223fd10, (=0x2245e7c)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x84] @ 0x223fd14, (=0x2245e44)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x60] @ 0x223fd18, (=0x2245e60)
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
	bl      0x20183c4
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x223fd02


.align 2


.word 0x2245e20 @ 0x223fd04
.word 0x2245e98 @ 0x223fd08
.word 0x2245eb4 @ 0x223fd0c
.word 0x2245e7c @ 0x223fd10
.word 0x2245e44 @ 0x223fd14
.word 0x2245e60 @ 0x223fd18
.thumb
Function_223fd1c: @ 223fd1c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x223fd48

.thumb
Function_223fd48: @ 223fd48 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r5, [r6, #0x4]
	mov     r0, #0x68
	mov     r1, #0x3e
	bl      0x2006c24
	mov     r1, #0x60
	str     r1, [sp, #0x0]
	mov     r1, #0x3e
	mov     r2, #0x0
	str     r1, [sp, #0x4]
	mov     r1, #0x2
	mov     r3, r2
	mov     r4, r0
	bl      0x2007130
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x20070e8
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
	bl      0x200710c
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
	bl      0x200710c
	mov     r0, r4
	bl      0x2006ca8
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223fe1e


.align 2, 0


.thumb
Function_223fe20: @ 223fe20 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	ldr     r2, [pc, #0x17c] @ 0x223ffa4, (=0xd54)
	mov     r5, r0
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x1
	bl      Function_223c300
	ldr     r0, [pc, #0x170] @ 0x223ffa8, (=0x116)
	ldrh    r1, [r5, r0]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x170] @ 0x223ffac, (=0x2245ed0)
	ldrh    r1, [r1, r2]
	lsl     r1, r1, #12
	str     r1, [sp, #0x8]
	ldrh    r0, [r5, r0]
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x168] @ 0x223ffb0, (=0x2245ed2)
	ldrh    r0, [r0, r1]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      0x2021aa0
	mov     r1, #0x37
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x4
	bl      0x2021d6c
	ldr     r0, [pc, #0x138] @ 0x223ffa8, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1f
	beq     branch_223fe7a
	cmp     r0, #0x5
	bhi     branch_223fe88
.thumb
branch_223fe7a: @ 223fe7a :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021e80
	b       branch_223fe94
@ 0x223fe88

.thumb
branch_223fe88: @ 223fe88 :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021e80
.thumb
branch_223fe94: @ 223fe94 :thumb
	ldr     r6, [pc, #0x114] @ 0x223ffac, (=0x2245ed0)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223fe9a: @ 223fe9a :thumb
	ldrh    r0, [r6, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r6, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	mov     r0, #0x14
	str     r0, [sp, #0x24]
	add     r0, sp, #0x0
	bl      0x2021aa0
	ldr     r1, [pc, #0x100] @ 0x223ffb4, (=0xdc8)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	add     r1, r7, #0x6
	bl      0x2021d6c
	ldr     r0, [pc, #0xf4] @ 0x223ffb4, (=0xdc8)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x1e
	blt     branch_223fe9a
	ldr     r6, [pc, #0xd8] @ 0x223ffac, (=0x2245ed0)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223fed8: @ 223fed8 :thumb
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
	bl      0x2021aa0
	mov     r1, #0x39
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x28
	bl      0x2021d6c
	mov     r0, #0x39
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x1e
	blt     branch_223fed8
	ldr     r6, [pc, #0x90] @ 0x223ffac, (=0x2245ed0)
	mov     r7, #0x0
	mov     r4, r5
.thumb
branch_223ff1e: @ 223ff1e :thumb
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
	bl      0x2021aa0
	ldr     r1, [pc, #0x7c] @ 0x223ffb8, (=0xeb8)
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x2a
	bl      0x2021d6c
	ldr     r0, [pc, #0x70] @ 0x223ffb8, (=0xeb8)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	bl      0x2021e80
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x6
	blt     branch_223ff1e
	ldr     r4, [pc, #0x60] @ 0x223ffbc, (=0x2245e18)
	ldr     r7, [pc, #0x60] @ 0x223ffc0, (=0xef4)
	mov     r6, #0x0
.thumb
branch_223ff60: @ 223ff60 :thumb
	ldrh    r0, [r4, #0x0]
	lsl     r0, r0, #12
	str     r0, [sp, #0x8]
	ldrh    r0, [r4, #0x2]
	lsl     r0, r0, #12
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      0x2021aa0
	ldr     r1, [pc, #0x4c] @ 0x223ffc0, (=0xef4)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [pc, #0x3c] @ 0x223ffc0, (=0xef4)
	mov     r1, r6
	ldr     r0, [r5, r0]
	add     r1, #0x26
	bl      0x2021d6c
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      0x2021e80
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x2
	blt     branch_223ff60
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x223ffa2


.align 2


.word 0xd54 @ 0x223ffa4
.word 0x116 @ 0x223ffa8
.word 0x2245ed0 @ 0x223ffac
.word 0x2245ed2 @ 0x223ffb0
.word 0xdc8 @ 0x223ffb4
.word 0xeb8 @ 0x223ffb8
.word 0x2245e18 @ 0x223ffbc
.word 0xef4 @ 0x223ffc0
.thumb
Function_223ffc4: @ 223ffc4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r7, [pc, #0x4c] @ 0x2240018, (=0xef4)
	mov     r6, #0x0
	mov     r4, r5
.thumb
branch_223ffce: @ 223ffce :thumb
	ldr     r0, [r4, r7]
	bl      0x2021bd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x2
	blt     branch_223ffce
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	bl      0x2021bd4
	mov     r7, #0x39
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #6
.thumb
branch_223ffee: @ 223ffee :thumb
	ldr     r0, [pc, #0x2c] @ 0x224001c, (=0xdc8)
	ldr     r0, [r4, r0]
	bl      0x2021bd4
	ldr     r0, [r4, r7]
	bl      0x2021bd4
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x1e
	blt     branch_223ffee
	ldr     r6, [pc, #0x18] @ 0x2240020, (=0xeb8)
	mov     r4, #0x0
.thumb
branch_2240008: @ 2240008 :thumb
	ldr     r0, [r5, r6]
	bl      0x2021bd4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x6
	blt     branch_2240008
	pop     {r3-r7,pc}
@ 0x2240018

.word 0xef4 @ 0x2240018
.word 0xdc8 @ 0x224001c
.word 0xeb8 @ 0x2240020
.thumb
Function_2240024: @ 2240024 :thumb
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
	ldr     r1, [pc, #0x118] @ 0x2240158, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0x10c] @ 0x2240158, (=0xf1c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r2, #0x0
	ldr     r0, [pc, #0x104] @ 0x224015c, (=0xf0e00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x100] @ 0x2240160, (=0xbb4)
	ldr     r0, [pc, #0xf8] @ 0x2240158, (=0xf1c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r3, #0x1
	bl      Function_22458fc
	mov     r1, #0x3
	str     r1, [sp, #0x0]
	mov     r0, #0xd
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	ldr     r1, [pc, #0xe8] @ 0x2240164, (=0xf2c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x5
	bl      0x201a7e8
	ldr     r0, [pc, #0xd8] @ 0x2240164, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	ldr     r0, [pc, #0xd0] @ 0x2240164, (=0xf2c)
	add     r0, r4, r0
	bl      0x201a954
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	ldr     r1, [pc, #0xc0] @ 0x2240168, (=0xefc)
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	add     r0, #0xfc
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0xac] @ 0x2240168, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x94] @ 0x224016c, (=0x13f)
	ldr     r1, [pc, #0x98] @ 0x2240170, (=0x103c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0x88] @ 0x2240170, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x70] @ 0x2240174, (=0x165)
	ldr     r1, [pc, #0x74] @ 0x2240178, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x1
	mov     r3, #0x19
	bl      0x201a7e8
	ldr     r0, [pc, #0x64] @ 0x2240178, (=0xf4c)
	mov     r1, #0x6
	add     r0, r4, r0
	bl      0x201ada4
	mov     r3, #0x1
	ldr     r0, [pc, #0x5c] @ 0x224017c, (=0x10306)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x58] @ 0x2240180, (=0xbac)
	ldr     r0, [pc, #0x50] @ 0x2240178, (=0xf4c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_22458fc
	mov     r1, #0xd
	str     r1, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x6
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldr     r0, [pc, #0x40] @ 0x2240184, (=0x171)
	ldr     r1, [pc, #0x44] @ 0x2240188, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      0x201a7e8
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2240156


.align 2


.word 0xf1c @ 0x2240158
.word 0xf0e00 @ 0x224015c
.word 0xbb4 @ 0x2240160
.word 0xf2c @ 0x2240164
.word 0xefc @ 0x2240168
.word 0x13f @ 0x224016c
.word 0x103c @ 0x2240170
.word 0x165 @ 0x2240174
.word 0xf4c @ 0x2240178
.word 0x10306 @ 0x224017c
.word 0xbac @ 0x2240180
.word 0x171 @ 0x2240184
.word 0xf3c @ 0x2240188
.thumb
Function_224018c: @ 224018c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x22401c4, (=0x103c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x2c] @ 0x22401c8, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x28] @ 0x22401cc, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x24] @ 0x22401d0, (=0xefc)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x20] @ 0x22401d4, (=0xf2c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x1c] @ 0x22401d8, (=0xf1c)
	add     r0, r4, r0
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x22401c2


.align 2


.word 0x103c @ 0x22401c4
.word 0xf4c @ 0x22401c8
.word 0xf3c @ 0x22401cc
.word 0xefc @ 0x22401d0
.word 0xf2c @ 0x22401d4
.word 0xf1c @ 0x22401d8
.thumb
Function_22401dc: @ 22401dc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x12
	mov     r1, #0x3e
	bl      0x2023790
	ldr     r1, [pc, #0x60] @ 0x224024c, (=0xba8)
	str     r0, [r4, r1]
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x5
	bne     branch_2240210
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x15
	bl      0x200b1ec
	ldr     r1, [pc, #0x44] @ 0x2240250, (=0xbb4)
	str     r0, [r4, r1]
	b       branch_2240222
@ 0x2240210

.thumb
branch_2240210: @ 2240210 :thumb
	cmp     r0, #0x6
	bne     branch_2240222
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x11
	bl      0x200b1ec
	ldr     r1, [pc, #0x30] @ 0x2240250, (=0xbb4)
	str     r0, [r4, r1]
.thumb
branch_2240222: @ 2240222 :thumb
	ldr     r0, [pc, #0x30] @ 0x2240254, (=0xb94)
	mov     r1, #0x67
	ldr     r0, [r4, r0]
	bl      0x200b1ec
	ldr     r1, [pc, #0x28] @ 0x2240258, (=0xbac)
	str     r0, [r4, r1]
	ldr     r0, [pc, #0x28] @ 0x224025c, (=0x116)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x1e
	bne     branch_224023c
	mov     r1, #0x0
	strh    r1, [r4, r0]
.thumb
branch_224023c: @ 224023c :thumb
	mov     r0, #0x3e
	mov     r1, #0x78
	bl      0x2018144
	ldr     r1, [pc, #0x18] @ 0x2240260, (=0x10a8)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x224024a


.align 2


.word 0xba8 @ 0x224024c
.word 0xbb4 @ 0x2240250
.word 0xb94 @ 0x2240254
.word 0xbac @ 0x2240258
.word 0x116 @ 0x224025c
.word 0x10a8 @ 0x2240260
.thumb
Function_2240264: @ 2240264 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2240294, (=0x10a8)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0x24] @ 0x2240298, (=0xba8)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0x18] @ 0x224029c, (=0xbac)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0x14] @ 0x22402a0, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x2240294

.word 0x10a8 @ 0x2240294
.word 0xba8 @ 0x2240298
.word 0xbac @ 0x224029c
.word 0xbb4 @ 0x22402a0
.thumb
Function_22402a4: @ 22402a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_22402b4
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
.thumb
branch_22402b4: @ 22402b4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22402b8

.thumb
Function_22402b8: @ 22402b8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	bl      Function_22404ec
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x5
	bne     branch_22403c8
	ldr     r0, [pc, #0x210] @ 0x22404dc, (=0x21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_22402e8
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0x1fc] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x22402e8

.thumb
branch_22402e8: @ 22402e8 :thumb
	mov     r1, #0x1
	mov     r0, r2
	tst     r0, r1
	beq     branch_2240332
	ldr     r0, [pc, #0x1f0] @ 0x22404e4, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1e
	bne     branch_224030c
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0x1d8] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x224030c

.thumb
branch_224030c: @ 224030c :thumb
	cmp     r0, #0x1f
	beq     branch_2240332
	ldr     r0, [pc, #0x1cc] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22412f0
	cmp     r0, #0x1
	beq     branch_2240334
	cmp     r0, #0x2
	beq     branch_22403aa
.thumb
branch_2240332: @ 2240332 :thumb
	b       branch_22404d6
@ 0x2240334

.thumb
branch_2240334: @ 2240334 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_2241218
	cmp     r0, #0x0
	beq     branch_224038c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	ldr     r0, [pc, #0x178] @ 0x22404e8, (=0xf0f)
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x16
	mov     r2, #0x1
	str     r3, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x7
	bl      Function_223c3f4
	b       branch_22404d6
@ 0x224038c

.thumb
branch_224038c: @ 224038c :thumb
	ldr     r0, [pc, #0x158] @ 0x22404e8, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404d6
@ 0x22403aa

.thumb
branch_22403aa: @ 22403aa :thumb
	ldr     r0, [pc, #0x13c] @ 0x22404e8, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1b
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404d6
@ 0x22403c8

.thumb
branch_22403c8: @ 22403c8 :thumb
	cmp     r0, #0x6
	bne     branch_224042e
	ldr     r0, [pc, #0x10c] @ 0x22404dc, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_22403ec
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0xf8] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x22403ec

.thumb
branch_22403ec: @ 22403ec :thumb
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_22404d6
	ldr     r2, [pc, #0xf0] @ 0x22404e4, (=0x116)
	ldrh    r3, [r5, r2]
	cmp     r3, #0x1e
	bne     branch_2240410
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	ldr     r0, [pc, #0xd4] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x2240410

.thumb
branch_2240410: @ 2240410 :thumb
	cmp     r3, #0x1f
	beq     branch_22404d6
	ldr     r1, [r5, #0x0]
	.hword  0x1e92 @ sub r2, r2, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r2, [r5, r2]
	ldr     r1, [r1, #0xc]
	bl      Function_22412f0
	cmp     r0, #0x0
	beq     branch_22404d0
	cmp     r0, #0x1
	beq     branch_2240430
	cmp     r0, #0x2
	beq     branch_22404d0
.thumb
branch_224042e: @ 224042e :thumb
	b       branch_22404d6
@ 0x2240430

.thumb
branch_2240430: @ 2240430 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
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
	bl      Function_2241380
	cmp     r0, #0x0
	beq     branch_22404c8
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_2241218
	cmp     r0, #0x0
	beq     branch_22404aa
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r4
	bl      0x200b5cc
	ldr     r0, [pc, #0x60] @ 0x22404e8, (=0xf0f)
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x12
	mov     r2, #0x1
	str     r3, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x3
	mov     r2, #0x9
	bl      Function_223c3f4
	ldr     r0, [pc, #0x3c] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x22404aa

.thumb
branch_22404aa: @ 22404aa :thumb
	ldr     r0, [pc, #0x3c] @ 0x22404e8, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x1a
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_22404d6
@ 0x22404c8

.thumb
branch_22404c8: @ 22404c8 :thumb
	ldr     r0, [pc, #0x14] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
	b       branch_22404d6
@ 0x22404d0

.thumb
branch_22404d0: @ 22404d0 :thumb
	ldr     r0, [pc, #0xc] @ 0x22404e0, (=0x5dc)
	bl      0x2005748
.thumb
branch_22404d6: @ 22404d6 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22404dc

.word 0x21bf67c @ 0x22404dc
.word 0x5dc @ 0x22404e0
.word 0x116 @ 0x22404e4
.word 0xf0f @ 0x22404e8
.thumb
Function_22404ec: @ 22404ec :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [pc, #0xbc] @ 0x22405b0, (=0x21bf67c)
	mov     r4, #0x0
	ldr     r0, [r0, #0x48]
	mov     r1, #0x40
	mov     r6, r4
	tst     r1, r0
	beq     branch_2240502
	mov     r6, #0x1
	b       branch_224051e
@ 0x2240502

.thumb
branch_2240502: @ 2240502 :thumb
	mov     r1, #0x80
	tst     r1, r0
	beq     branch_224050c
	mov     r6, #0x2
	b       branch_224051e
@ 0x224050c

.thumb
branch_224050c: @ 224050c :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_2240516
	mov     r6, #0x3
	b       branch_224051e
@ 0x2240516

.thumb
branch_2240516: @ 2240516 :thumb
	mov     r1, #0x10
	tst     r0, r1
	beq     branch_224051e
	mov     r6, #0x4
.thumb
branch_224051e: @ 224051e :thumb
	cmp     r6, #0x0
	beq     branch_2240564
	ldr     r0, [pc, #0x90] @ 0x22405b4, (=0x116)
	ldr     r1, [pc, #0x90] @ 0x22405b8, (=0x2245f50)
	ldrh    r3, [r5, r0]
	.hword  0x1e76 @ sub r6, r6, #0x1
	lsl     r2, r3, #2
	add     r1, r1, r2
	ldrb    r2, [r6, r1]
	cmp     r2, r3
	beq     branch_2240564
	cmp     r2, #0x63
	beq     branch_224053c
	cmp     r2, #0x65
	bne     branch_2240560
.thumb
branch_224053c: @ 224053c :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r1, #0x13
	sub     r2, #0x64
	bl      Function_22405c8
	mov     r1, #0x45
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	ldrh    r1, [r5, r1]
	mov     r0, r5
	bl      Function_2240f9c
	ldr     r0, [pc, #0x60] @ 0x22405bc, (=0x5dc)
	bl      0x2005748
	b       branch_2240564
@ 0x2240560

.thumb
branch_2240560: @ 2240560 :thumb
	mov     r4, #0x1
	strh    r2, [r5, r0]
.thumb
branch_2240564: @ 2240564 :thumb
	cmp     r4, #0x0
	beq     branch_2240586
	ldr     r0, [pc, #0x50] @ 0x22405bc, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x44] @ 0x22405b4, (=0x116)
	ldr     r1, [pc, #0x4c] @ 0x22405c0, (=0x2245ed0)
	ldrh    r0, [r5, r0]
	ldr     r2, [pc, #0x4c] @ 0x22405c4, (=0x2245ed2)
	lsl     r3, r0, #2
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldrh    r1, [r1, r3]
	ldrh    r2, [r2, r3]
	ldr     r0, [r5, r0]
	bl      Function_223c3fc
.thumb
branch_2240586: @ 2240586 :thumb
	ldr     r0, [pc, #0x2c] @ 0x22405b4, (=0x116)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x1f
	beq     branch_2240592
	cmp     r0, #0x5
	bhi     branch_22405a0
.thumb
branch_2240592: @ 2240592 :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      0x2021e80
	pop     {r4-r6,pc}
@ 0x22405a0

.thumb
branch_22405a0: @ 22405a0 :thumb
	mov     r0, #0x37
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021e80
	pop     {r4-r6,pc}
@ 0x22405ae


.align 2


.word 0x21bf67c @ 0x22405b0
.word 0x116 @ 0x22405b4
.word 0x2245f50 @ 0x22405b8
.word 0x5dc @ 0x22405bc
.word 0x2245ed0 @ 0x22405c0
.word 0x2245ed2 @ 0x22405c4
.thumb
Function_22405c8: @ 22405c8 :thumb
	add     r0, r0, r2
	bpl     branch_22405d0
	.hword  0x1e48 @ sub r0, r1, #0x1
	bx      lr
@ 0x22405d0

.thumb
branch_22405d0: @ 22405d0 :thumb
	cmp     r0, r1
	bne     branch_22405d6
	mov     r0, #0x0
.thumb
branch_22405d6: @ 22405d6 :thumb
	bx      lr
@ 0x22405d8

.thumb
Function_22405d8: @ 22405d8 :thumb
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
	bl      0x2013a04
	ldr     r1, [pc, #0x68] @ 0x2240674, (=0x106c)
	mov     r2, #0x5e
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x64] @ 0x2240678, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      0x2013a4c
	ldr     r0, [pc, #0x54] @ 0x2240674, (=0x106c)
	ldr     r1, [pc, #0x58] @ 0x2240678, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x5f
	mov     r3, #0x2
	bl      0x2013a4c
	ldr     r0, [pc, #0x44] @ 0x2240674, (=0x106c)
	ldr     r1, [pc, #0x48] @ 0x2240678, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x60
	mov     r3, #0x3
	bl      0x2013a4c
	ldr     r0, [pc, #0x34] @ 0x2240674, (=0x106c)
	mov     r1, #0x1
	ldr     r0, [r4, r0]
	mov     r2, #0x1f
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x34] @ 0x224067c, (=0xf3c)
	mov     r3, #0xb
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      0x200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      0x2001b7c
	ldr     r1, [pc, #0x18] @ 0x2240680, (=0x1074)
	str     r0, [r4, r1]
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2240674

.word 0x106c @ 0x2240674
.word 0xb94 @ 0x2240678
.word 0xf3c @ 0x224067c
.word 0x1074 @ 0x2240680
.thumb
Function_2240684: @ 2240684 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x188] @ 0x2240814, (=0x1074)
	ldr     r0, [r5, r0]
	bl      0x2001be0
	cmp     r0, #0x3
	bhi     branch_22406a6
	cmp     r0, #0x1
	bcc     branch_22406a4
	beq     branch_22406b2
	cmp     r0, #0x2
	beq     branch_22406de
	cmp     r0, #0x3
	beq     branch_22406ae
.thumb
branch_22406a4: @ 22406a4 :thumb
	b       branch_224080c
@ 0x22406a6

.thumb
branch_22406a6: @ 22406a6 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_22406b0
.thumb
branch_22406ae: @ 22406ae :thumb
	b       branch_22407e2
@ 0x22406b0

.thumb
branch_22406b0: @ 22406b0 :thumb
	b       branch_224080c
@ 0x22406b2

.thumb
branch_22406b2: @ 22406b2 :thumb
	ldr     r0, [pc, #0x160] @ 0x2240814, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x158] @ 0x2240818, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x154] @ 0x224081c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x5
	bl      Function_223c4c0
	b       branch_224080c
@ 0x22406de

.thumb
branch_22406de: @ 22406de :thumb
	ldr     r0, [pc, #0x134] @ 0x2240814, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x12c] @ 0x2240818, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x128] @ 0x224081c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
	mov     r4, r0
	bl      Function_2241238
	cmp     r0, #0x0
	beq     branch_2240736
	ldr     r0, [pc, #0x104] @ 0x2240820, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_224080c
@ 0x2240736

.thumb
branch_2240736: @ 2240736 :thumb
	mov     r0, r4
	bl      Function_2241274
	cmp     r0, #0x0
	beq     branch_224075e
	ldr     r0, [pc, #0xdc] @ 0x2240820, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xaa
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_224080c
@ 0x224075e

.thumb
branch_224075e: @ 224075e :thumb
	mov     r0, r4
	bl      Function_22412c4
	cmp     r0, #0x0
	beq     branch_2240786
	ldr     r0, [pc, #0xb4] @ 0x2240820, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xab
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_224080c
@ 0x2240786

.thumb
branch_2240786: @ 2240786 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r4, #0x0
	bl      Function_22411cc
	cmp     r0, #0x0
	beq     branch_22407b4
	ldr     r1, [pc, #0x8c] @ 0x2240824, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      0x207a0fc
	mov     r1, #0xa2
	mov     r2, r4
	bl      0x2074470
	cmp     r0, #0x0
	beq     branch_22407b4
	mov     r0, #0xe
	mov     r4, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_22407b4: @ 22407b4 :thumb
	cmp     r4, #0x0
	bne     branch_224080c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      Function_223c4c0
	b       branch_224080c
@ 0x22407e2

.thumb
branch_22407e2: @ 22407e2 :thumb
	ldr     r0, [pc, #0x30] @ 0x2240814, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x28] @ 0x2240818, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x24] @ 0x224081c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x28] @ 0x2240828, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_224080c: @ 224080c :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240812


.align 2


.word 0x1074 @ 0x2240814
.word 0x106c @ 0x2240818
.word 0xf3c @ 0x224081c
.word 0xf0f @ 0x2240820
.word 0x116 @ 0x2240824
.word 0xefc @ 0x2240828
.thumb
Function_224082c: @ 224082c :thumb
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
	bl      0x2013a04
	ldr     r1, [pc, #0x74] @ 0x22408d4, (=0x106c)
	mov     r2, #0x54
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	ldr     r1, [pc, #0x70] @ 0x22408d8, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      0x2013a4c
	ldr     r0, [pc, #0x60] @ 0x22408d4, (=0x106c)
	ldr     r1, [pc, #0x64] @ 0x22408d8, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x55
	mov     r3, #0x2
	bl      0x2013a4c
	ldr     r0, [pc, #0x50] @ 0x22408d4, (=0x106c)
	ldr     r1, [pc, #0x54] @ 0x22408d8, (=0xb94)
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	mov     r2, #0x56
	mov     r3, #0x3
	bl      0x2013a4c
	ldr     r0, [pc, #0x40] @ 0x22408d4, (=0x106c)
	mov     r1, #0xf
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x40] @ 0x22408dc, (=0xf3c)
	add     r0, r4, r0
	str     r0, [sp, #0xc]
	bl      0x201ada4
	ldr     r0, [pc, #0x38] @ 0x22408dc, (=0xf3c)
	mov     r1, #0x1
	add     r0, r4, r0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x8
	mov     r1, #0x9
	mov     r3, r2
	bl      0x2001b7c
	ldr     r1, [pc, #0x18] @ 0x22408e0, (=0x1074)
	str     r0, [r4, r1]
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x22408d2


.align 2


.word 0x106c @ 0x22408d4
.word 0xb94 @ 0x22408d8
.word 0xf3c @ 0x22408dc
.word 0x1074 @ 0x22408e0
.thumb
Function_22408e4: @ 22408e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [pc, #0x164] @ 0x2240a50, (=0x1074)
	ldr     r0, [r5, r0]
	bl      0x2001be0
	cmp     r0, #0x3
	bhi     branch_2240906
	cmp     r0, #0x1
	bcc     branch_2240904
	beq     branch_2240912
	cmp     r0, #0x2
	beq     branch_224093e
	cmp     r0, #0x3
	beq     branch_224090e
.thumb
branch_2240904: @ 2240904 :thumb
	b       branch_2240a4a
@ 0x2240906

.thumb
branch_2240906: @ 2240906 :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	bne     branch_2240910
.thumb
branch_224090e: @ 224090e :thumb
	b       branch_2240a20
@ 0x2240910

.thumb
branch_2240910: @ 2240910 :thumb
	b       branch_2240a4a
@ 0x2240912

.thumb
branch_2240912: @ 2240912 :thumb
	ldr     r0, [pc, #0x13c] @ 0x2240a50, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x134] @ 0x2240a54, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x130] @ 0x2240a58, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	mov     r0, #0x2
	str     r0, [r5, #0x2c]
	mov     r0, r5
	mov     r1, #0x8
	mov     r2, #0x6
	bl      Function_223c4c0
	b       branch_2240a4a
@ 0x224093e

.thumb
branch_224093e: @ 224093e :thumb
	ldr     r0, [pc, #0x110] @ 0x2240a50, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x108] @ 0x2240a54, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x104] @ 0x2240a58, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r5, #0x0]
	ldrh    r2, [r5, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r5, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
	mov     r4, r0
	bl      Function_2241238
	cmp     r0, #0x0
	beq     branch_2240996
	ldr     r0, [pc, #0xe0] @ 0x2240a5c, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0x25
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4a
@ 0x2240996

.thumb
branch_2240996: @ 2240996 :thumb
	mov     r0, r4
	bl      Function_2241274
	cmp     r0, #0x0
	beq     branch_22409be
	ldr     r0, [pc, #0xb8] @ 0x2240a5c, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xaa
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4a
@ 0x22409be

.thumb
branch_22409be: @ 22409be :thumb
	mov     r0, r4
	bl      Function_22412c4
	cmp     r0, #0x0
	beq     branch_22409e6
	ldr     r0, [pc, #0x90] @ 0x2240a5c, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	mov     r1, #0xab
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	b       branch_2240a4a
@ 0x22409e6

.thumb
branch_22409e6: @ 22409e6 :thumb
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r4, #0x0
	bl      Function_22411cc
	cmp     r0, #0x0
	beq     branch_2240a14
	ldr     r1, [pc, #0x68] @ 0x2240a60, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      0x207a0fc
	mov     r1, #0xa2
	mov     r2, r4
	bl      0x2074470
	cmp     r0, #0x0
	beq     branch_2240a14
	mov     r0, #0xb
	mov     r4, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_2240a14: @ 2240a14 :thumb
	cmp     r4, #0x0
	bne     branch_2240a4a
	mov     r0, r5
	bl      Function_2240bac
	b       branch_2240a4a
@ 0x2240a20

.thumb
branch_2240a20: @ 2240a20 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2240a50, (=0x1074)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2001bc4
	ldr     r0, [pc, #0x28] @ 0x2240a54, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x24] @ 0x2240a58, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x24] @ 0x2240a64, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	mov     r0, #0x1
	str     r0, [r5, #0x2c]
.thumb
branch_2240a4a: @ 2240a4a :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2240a50

.word 0x1074 @ 0x2240a50
.word 0x106c @ 0x2240a54
.word 0xf3c @ 0x2240a58
.word 0xf0f @ 0x2240a5c
.word 0x116 @ 0x2240a60
.word 0xefc @ 0x2240a64
.thumb
Function_2240a68: @ 2240a68 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	beq     branch_2240a78
	cmp     r0, #0x8
	bne     branch_2240a98
.thumb
branch_2240a78: @ 2240a78 :thumb
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
	bl      0x200f174
	ldr     r0, [pc, #0x28] @ 0x2240abc, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2240ab0
@ 0x2240a98

.thumb
branch_2240a98: @ 2240a98 :thumb
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
	bl      0x200f174
.thumb
branch_2240ab0: @ 2240ab0 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2240aba


.align 2


.word 0x10b0 @ 0x2240abc
.thumb
Function_2240ac0: @ 2240ac0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240adc, (=0x1ad)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240ae0, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240ada


.align 2


.word 0x1ad @ 0x2240adc
.word 0x1070 @ 0x2240ae0
.thumb
Function_2240ae4: @ 2240ae4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2240b18, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240b14
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240b06
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_2240b14
@ 0x2240b06

.thumb
branch_2240b06: @ 2240b06 :thumb
	mov     r0, #0x2
	mov     r1, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
.thumb
branch_2240b14: @ 2240b14 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240b18

.word 0x1070 @ 0x2240b18
.thumb
Function_2240b1c: @ 2240b1c :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x20] @ 0x2240b44, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, #0x19
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0xc
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240b42


.align 2


.word 0xf0f @ 0x2240b44
.thumb
Function_2240b48: @ 2240b48 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240b64, (=0x1ad)
	mov     r1, #0xd
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240b68, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240b62


.align 2


.word 0x1ad @ 0x2240b64
.word 0x1070 @ 0x2240b68
.thumb
Function_2240b6c: @ 2240b6c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x2240ba4, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240b9e
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240b98
	ldr     r0, [pc, #0x1c] @ 0x2240ba8, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_2240b9e
@ 0x2240b98

.thumb
branch_2240b98: @ 2240b98 :thumb
	mov     r0, r4
	bl      Function_2240bac
.thumb
branch_2240b9e: @ 2240b9e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240ba2


.align 2


.word 0x1070 @ 0x2240ba4
.word 0x103c @ 0x2240ba8
.thumb
Function_2240bac: @ 2240bac :thumb
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
	bl      Function_2241494
	cmp     r0, #0x0
	beq     branch_2240c04
	mov     r0, #0x45
	lsl     r0, r0, #2
	ldrh    r0, [r4, r0]
	cmp     r0, #0x12
	beq     branch_2240c04
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	cmp     r0, #0x6
	bne     branch_2240c04
	ldr     r0, [pc, #0x68] @ 0x2240c4c, (=0xf0f)
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1c
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x1
	bl      Function_223c3f4
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2240c04

.thumb
branch_2240c04: @ 2240c04 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
	mov     r1, #0x46
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x2c] @ 0x2240c50, (=0x10b0)
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
	bl      Function_22413b8
	mov     r0, #0x47
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240c4c

.word 0xf0f @ 0x2240c4c
.word 0x10b0 @ 0x2240c50
.thumb
Function_2240c54: @ 2240c54 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	ldr     r1, [pc, #0x20] @ 0x2240c7c, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r2, #0x1
	mov     r1, #0x19
	mov     r3, #0x0
	str     r2, [sp, #0x4]
	bl      Function_2240d54
	mov     r0, r4
	mov     r1, #0x3
	mov     r2, #0xf
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x2240c7a


.align 2


.word 0xf0f @ 0x2240c7c
.thumb
Function_2240c80: @ 2240c80 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2240c9c, (=0x1ad)
	mov     r1, #0xd
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2240ca0, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0x10
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240c9a


.align 2


.word 0x1ad @ 0x2240c9c
.word 0x1070 @ 0x2240ca0
.thumb
Function_2240ca4: @ 2240ca4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x50] @ 0x2240cfc, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2240cf8
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2240cd0
	ldr     r0, [pc, #0x3c] @ 0x2240d00, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_2240cf8
@ 0x2240cd0

.thumb
branch_2240cd0: @ 2240cd0 :thumb
	mov     r3, #0x45
	lsl     r3, r3, #2
	ldr     r1, [r4, #0x0]
	ldrh    r2, [r4, r3]
	.hword  0x1c9b @ add r3, r3, #0x2
	ldr     r0, [r1, #0x8]
	ldrh    r3, [r4, r3]
	ldr     r1, [r1, #0xc]
	bl      Function_22411d8
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
branch_2240cf8: @ 2240cf8 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240cfc

.word 0x1070 @ 0x2240cfc
.word 0x103c @ 0x2240d00
.thumb
Function_2240d04: @ 2240d04 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2240d20, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2240d1c
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2240d1c: @ 2240d1c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240d20

.word 0xbe4 @ 0x2240d20
.thumb
Function_2240d24: @ 2240d24 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2240d4c, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2240d46
	ldr     r0, [pc, #0x14] @ 0x2240d50, (=0x103c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2240d46: @ 2240d46 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2240d4a


.align 2


.word 0xbe4 @ 0x2240d4c
.word 0x103c @ 0x2240d50
.thumb
Function_2240d54: @ 2240d54 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x60] @ 0x2240dbc, (=0xb94)
	mov     r6, r2
	ldr     r0, [r5, r0]
	bl      0x200b1ec
	mov     r1, #0xb9
	mov     r7, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r7
	bl      0x200c388
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	bne     branch_2240d80
	ldr     r0, [pc, #0x40] @ 0x2240dc0, (=0xefc)
	b       branch_2240d82
@ 0x2240d80

.thumb
branch_2240d80: @ 2240d80 :thumb
	ldr     r0, [pc, #0x40] @ 0x2240dc4, (=0x103c)
.thumb
branch_2240d82: @ 2240d82 :thumb
	add     r4, r5, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r6, [sp, #0x4]
	mov     r2, #0xbb
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	mov     r0, r4
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x18] @ 0x2240dc8, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r7
	bl      0x20237bc
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2240dbc

.word 0xb94 @ 0x2240dbc
.word 0xefc @ 0x2240dc0
.word 0x103c @ 0x2240dc4
.word 0xbe4 @ 0x2240dc8
.thumb
Function_2240dcc: @ 2240dcc :thumb
	push    {r3-r5,lr}
	mov     r5, r2
	mov     r2, r3
	bl      0x2006cb8
	mov     r4, r0
	beq     branch_2240dee
	mov     r1, r5
	blx 0x20a7164
	cmp     r0, #0x0
	bne     branch_2240dee
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x2240dee

.thumb
branch_2240dee: @ 2240dee :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2240df2


.align 2, 0


.thumb
Function_2240df4: @ 2240df4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r1
	mov     r6, r2
	mov     r1, r6
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r7, r3
	ldr     r4, [sp, #0x28]
	bl      0x2079d8c
	mov     r1, r0
	ldr     r0, [sp, #0x24]
	add     r2, sp, #0x8
	mov     r3, #0x3e
	bl      Function_2240dcc
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	mov     r2, #0x2
	ldr     r0, [r0, #0x14]
	add     r1, #0xc
	lsl     r2, r2, #8
	blx 0x20c4c14
	lsl     r0, r7, #4
	add     r0, #0xc
	lsl     r0, r0, #5
	str     r0, [r4, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [r4, #0x8]
	ldr     r0, [sp, #0x0]
	mov     r2, r6
	bl      0x2079edc
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x4]
	ldr     r0, [sp, #0x4]
	bl      0x20181c4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x2240e4c

.thumb
Function_2240e4c: @ 2240e4c :thumb
	push    {r4,lr}
	mov     r4, r1
	bl      0x2075b40
	strb    r0, [r4, #0x3]
	pop     {r4,pc}
@ 0x2240e58

.thumb
Function_2240e58: @ 2240e58 :thumb
	push    {r3-r7,lr}
	ldr     r1, [pc, #0x48] @ 0x2240ea4, (=0x10b4)
	mov     r6, #0x2
	lsl     r6, r6, #8
	mov     r7, r6
	ldr     r5, [r0, r1]
	str     r0, [sp, #0x0]
	mov     r4, #0x0
	add     r7, #0xc
.thumb
branch_2240e6a: @ 2240e6a :thumb
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_2240e8e
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
branch_2240e8e: @ 2240e8e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, r5, r7
	cmp     r4, #0x1e
	blt     branch_2240e6a
	ldr     r1, [pc, #0xc] @ 0x2240ea4, (=0x10b4)
	ldr     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	bl      0x20181c4
	pop     {r3-r7,pc}
@ 0x2240ea2


.align 2


.word 0x10b4 @ 0x2240ea4
.thumb
Function_2240ea8: @ 2240ea8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r5, r0
	str     r1, [sp, #0xc]
	mov     r7, r2
	mov     r6, r3
	ldr     r4, [sp, #0x40]
	bl      0x2073d20
	mov     r0, r5
	mov     r1, #0xac
	mov     r2, #0x0
	bl      0x2074570
	str     r0, [sp, #0x1c]
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	strh    r0, [r6, #0x0]
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      0x2074570
	str     r0, [sp, #0x10]
	mov     r0, r5
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      0x2074570
	str     r0, [sp, #0x14]
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2074570
	str     r0, [sp, #0x18]
	ldrh    r0, [r6, #0x0]
	mov     r1, #0x6f
	mov     r2, #0x0
	strh    r0, [r4, #0x0]
	mov     r0, r5
	bl      0x2074570
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldr     r0, [sp, #0x14]
	cmp     r0, #0x0
	beq     branch_2240f12
	mov     r0, #0x0
	strb    r0, [r4, #0x3]
.thumb
branch_2240f12: @ 2240f12 :thumb
	mov     r0, r5
	mov     r1, #0x1
	bl      0x2073d48
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	beq     branch_2240f80
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
	bl      Function_2240df4
	ldr     r0, [sp, #0xc]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	beq     branch_2240f74
	mov     r0, r7
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r0, [sp, #0x18]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x207d2d0
	cmp     r0, #0x0
	beq     branch_2240f68
	mov     r0, r7
	mov     r1, #0x29
	bl      0x2021d6c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f68

.thumb
branch_2240f68: @ 2240f68 :thumb
	mov     r0, r7
	mov     r1, #0x28
	bl      0x2021d6c
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f74

.thumb
branch_2240f74: @ 2240f74 :thumb
	mov     r0, r7
	mov     r1, #0x0
	bl      0x2021cac
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f80

.thumb
branch_2240f80: @ 2240f80 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, r7
	mov     r1, #0x0
	bl      0x2021cac
	ldr     r0, [sp, #0x44]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2240f9a


.align 2, 0


.thumb
Function_2240f9c: @ 2240f9c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x68
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	str     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	ldr     r1, [pc, #0x1f4] @ 0x22411a0, (=0x3d68)
	str     r0, [sp, #0x20]
	mov     r0, #0x3
	bl      0x2018184
	ldr     r1, [pc, #0x1f0] @ 0x22411a4, (=0x10b4)
	str     r0, [sp, #0x18]
	str     r0, [r5, r1]
	mov     r0, #0x13
	mov     r1, #0x3e
	bl      0x2006c24
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x10]
	cmp     r0, #0x0
	blt     branch_224105c
	cmp     r0, #0x12
	bge     branch_224105c
	ldr     r6, [pc, #0x1d8] @ 0x22411a8, (=0x10a8)
	mov     r4, #0x0
.thumb
branch_2240fd0: @ 2240fd0 :thumb
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r4
	bl      0x2079c9c
	ldr     r2, [r5, r6]
	lsl     r1, r4, #2
	add     r1, r2, r1
	bl      Function_2240e4c
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_2240fd0
	mov     r4, #0x0
.thumb
branch_2240ff0: @ 2240ff0 :thumb
	ldr     r0, [pc, #0x1b4] @ 0x22411a8, (=0x10a8)
	lsl     r6, r4, #2
	ldr     r1, [r5, r0]
	mov     r0, #0x0
	strh    r0, [r1, r6]
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	mov     r2, r4
	add     r7, r5, r6
	bl      0x2079c9c
	ldr     r1, [sp, #0x1c]
	str     r4, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r1, [pc, #0x198] @ 0x22411a8, (=0x10a8)
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
	ldr     r1, [pc, #0x184] @ 0x22411ac, (=0xdc8)
	mov     r2, #0x39
	lsl     r2, r2, #6
	ldr     r1, [r7, r1]
	ldr     r2, [r7, r2]
	add     r3, r3, r6
	bl      Function_2240ea8
	cmp     r4, #0x6
	bcs     branch_2241044
	ldr     r0, [pc, #0x174] @ 0x22411b0, (=0xeb8)
	mov     r1, #0x0
	ldr     r0, [r7, r0]
	bl      0x2021cac
.thumb
branch_2241044: @ 2241044 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_2240ff0
	ldr     r2, [pc, #0x164] @ 0x22411b4, (=0xba8)
	ldr     r0, [sp, #0x20]
	ldr     r1, [sp, #0x10]
	ldr     r2, [r5, r2]
	bl      0x2079af4
	b       branch_2241148
@ 0x224105c

.thumb
branch_224105c: @ 224105c :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	mov     r4, #0x0
	str     r0, [sp, #0x14]
	cmp     r0, #0x0
	ble     branch_22410ec
.thumb
branch_224106c: @ 224106c :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      0x207a0fc
	str     r0, [sp, #0x24]
	bl      0x2076b10
	ldr     r1, [pc, #0x128] @ 0x22411a8, (=0x10a8)
	lsl     r6, r4, #2
	ldr     r1, [r5, r1]
	str     r0, [sp, #0x28]
	add     r1, r1, r6
	bl      Function_2240e4c
	mov     r2, #0x39
	ldr     r0, [sp, #0x1c]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x114] @ 0x22411a8, (=0x10a8)
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
	ldr     r1, [pc, #0xfc] @ 0x22411ac, (=0xdc8)
	ldr     r0, [sp, #0x28]
	ldr     r1, [r7, r1]
	ldr     r2, [r7, r2]
	lsl     r6, r4, #1
	add     r3, sp, #0x2c
	add     r3, r3, r6
	bl      Function_2240ea8
	ldr     r0, [sp, #0x24]
	mov     r1, #0xa2
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x0
	ldr     r0, [pc, #0xe4] @ 0x22411b0, (=0xeb8)
	beq     branch_22410d8
	ldr     r0, [r7, r0]
	mov     r1, #0x1
	bl      0x2021cac
	b       branch_22410e0
@ 0x22410d8

.thumb
branch_22410d8: @ 22410d8 :thumb
	ldr     r0, [r7, r0]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_22410e0: @ 22410e0 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	ldr     r0, [sp, #0x14]
	cmp     r4, r0
	blt     branch_224106c
.thumb
branch_22410ec: @ 22410ec :thumb
	cmp     r4, #0x1e
	bcs     branch_224113a
	mov     r7, #0x0
.thumb
branch_22410f2: @ 22410f2 :thumb
	ldr     r0, [pc, #0xb4] @ 0x22411a8, (=0x10a8)
	lsl     r1, r4, #2
	ldr     r0, [r5, r0]
	add     r6, r5, r1
	strh    r7, [r0, r1]
	ldr     r0, [pc, #0xac] @ 0x22411ac, (=0xdc8)
	mov     r1, r7
	ldr     r0, [r6, r0]
	bl      0x2021cac
	mov     r0, #0x39
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x83
	lsl     r0, r0, #2
	mov     r1, r4
	mul     r1, r0
	ldr     r0, [sp, #0x18]
	add     r1, r0, r1
	mov     r0, #0x0
	str     r0, [r1, #0x8]
	cmp     r4, #0x6
	bcs     branch_2241130
	ldr     r0, [pc, #0x88] @ 0x22411b0, (=0xeb8)
	mov     r1, #0x0
	ldr     r0, [r6, r0]
	bl      0x2021cac
.thumb
branch_2241130: @ 2241130 :thumb
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x1e
	bcc     branch_22410f2
.thumb
branch_224113a: @ 224113a :thumb
	ldr     r2, [pc, #0x7c] @ 0x22411b8, (=0xb94)
	mov     r1, #0x59
	ldr     r0, [r5, r2]
	add     r2, #0x14
	ldr     r2, [r5, r2]
	bl      0x200b1b8
.thumb
branch_2241148: @ 2241148 :thumb
	ldr     r0, [sp, #0x1c]
	bl      0x2006ca8
	ldr     r0, [pc, #0x6c] @ 0x22411bc, (=0xf2c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x201ada4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x22411c0, (=0x10200)
	ldr     r1, [pc, #0x54] @ 0x22411b4, (=0xba8)
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x58] @ 0x22411bc, (=0xf2c)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	mov     r2, #0x0
	mov     r3, #0x5
	bl      Function_22458fc
	ldr     r0, [r5, #0x24]
	cmp     r0, #0x6
	bne     branch_2241196
	mov     r3, #0x12
	lsl     r3, r3, #4
	mov     r2, #0xd1
	ldr     r4, [r5, r3]
	ldr     r0, [pc, #0x28] @ 0x22411a8, (=0x10a8)
	lsl     r2, r2, #2
	.hword  0x1d1b @ add r3, r3, #0x4
	ldr     r1, [pc, #0x24] @ 0x22411ac, (=0xdc8)
	add     r2, r5, r2
	mul     r3, r4
	add     r2, r2, r3
	ldr     r0, [r5, r0]
	ldr     r3, [sp, #0x18]
	add     r1, r5, r1
	bl      Function_2241460
.thumb
branch_2241196: @ 2241196 :thumb
	ldr     r1, [pc, #0x2c] @ 0x22411c4, (=0x2240e59)
	ldr     r0, [pc, #0x2c] @ 0x22411c8, (=0x10b8)
	str     r1, [r5, r0]
	add     sp, #0x68
	pop     {r3-r7,pc}
@ 0x22411a0

.word 0x3d68 @ 0x22411a0
.word 0x10b4 @ 0x22411a4
.word 0x10a8 @ 0x22411a8
.word 0xdc8 @ 0x22411ac
.word 0xeb8 @ 0x22411b0
.word 0xba8 @ 0x22411b4
.word 0xb94 @ 0x22411b8
.word 0xf2c @ 0x22411bc
.word 0x10200 @ 0x22411c0
.word 0x2240e59 @ 0x22411c4
.word 0x10b8 @ 0x22411c8
.thumb
Function_22411cc: @ 22411cc :thumb
	cmp     r0, #0x12
	bne     branch_22411d4
	mov     r0, #0x1
	bx      lr
@ 0x22411d4

.thumb
branch_22411d4: @ 22411d4 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x22411d8

.thumb
Function_22411d8: @ 22411d8 :thumb
	push    {r3-r7,lr}
	mov     r6, r2
	mov     r5, r0
	mov     r0, r6
	mov     r7, r1
	mov     r4, r3
	bl      Function_22411cc
	cmp     r0, #0x0
	beq     branch_224120a
	mov     r0, r5
	bl      0x207a0f8
	.hword  0x1e40 @ sub r0, r0, #0x1
	cmp     r4, r0
	ble     branch_22411fc
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22411fc

.thumb
branch_22411fc: @ 22411fc :thumb
	mov     r0, r5
	mov     r1, r4
	bl      0x207a0fc
	bl      0x2076b10
	pop     {r3-r7,pc}
@ 0x224120a

.thumb
branch_224120a: @ 224120a :thumb
	mov     r0, r7
	mov     r1, r6
	mov     r2, r4
	bl      0x2079c9c
	pop     {r3-r7,pc}
@ 0x2241216


.align 2, 0


.thumb
Function_2241218: @ 2241218 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r2
	bl      Function_22411cc
	cmp     r0, #0x0
	beq     branch_2241234
	mov     r0, r4
	bl      0x207a0f8
	cmp     r0, #0x2
	bge     branch_2241234
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2241234

.thumb
branch_2241234: @ 2241234 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241238

.thumb
Function_2241238: @ 2241238 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r4, #0x0
	bl      0x2073d20
	ldr     r5, [pc, #0x2c] @ 0x2241270, (=0x2245e30)
	str     r0, [sp, #0x0]
	mov     r6, r4
.thumb
branch_2241248: @ 2241248 :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r7
	mov     r2, #0x0
	bl      0x2074570
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, r4, r0
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r6, #0xa
	blt     branch_2241248
	ldr     r1, [sp, #0x0]
	mov     r0, r7
	bl      0x2073d48
	cmp     r4, #0x0
	beq     branch_224126c
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x224126c

.thumb
branch_224126c: @ 224126c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x2241270

.word 0x2245e30 @ 0x2241270
.thumb
Function_2241274: @ 2241274 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      0x2073d20
	mov     r7, r0
	mov     r0, r5
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	mov     r4, r0
	mov     r0, r5
	mov     r1, #0x70
	mov     r2, #0x0
	bl      0x2074570
	mov     r6, r0
	mov     r0, r5
	mov     r1, r7
	bl      0x2073d48
	cmp     r6, #0x0
	ble     branch_22412ba
	ldr     r1, [pc, #0x1c] @ 0x22412c0, (=0x1df)
	cmp     r4, r1
	beq     branch_22412b6
	mov     r0, r1
	add     r0, #0x8
	cmp     r4, r0
	beq     branch_22412b6
	add     r1, #0xd
	cmp     r4, r1
	bne     branch_22412ba
.thumb
branch_22412b6: @ 22412b6 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x22412ba

.thumb
branch_22412ba: @ 22412ba :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x22412be


.align 2


.word 0x1df @ 0x22412c0
.thumb
Function_22412c4: @ 22412c4 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      0x2073d20
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2074570
	mov     r4, r0
	mov     r0, r5
	mov     r1, r6
	bl      0x2073d48
	cmp     r4, #0x70
	bne     branch_22412ea
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x22412ea

.thumb
branch_22412ea: @ 22412ea :thumb
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x22412ee


.align 2, 0


.thumb
Function_22412f0: @ 22412f0 :thumb
	push    {r4,lr}
	bl      Function_22411d8
	mov     r4, r0
	bne     branch_22412fe
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x22412fe

.thumb
branch_22412fe: @ 22412fe :thumb
	mov     r1, #0xac
	mov     r2, #0x0
	bl      0x2074570
	cmp     r0, #0x0
	bne     branch_224130e
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x224130e

.thumb
branch_224130e: @ 224130e :thumb
	mov     r0, r4
	mov     r1, #0xad
	mov     r2, #0x0
	bl      0x2074570
	cmp     r0, #0x0
	beq     branch_2241320
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2241320

.thumb
branch_2241320: @ 2241320 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241324

.thumb
Function_2241324: @ 2241324 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	ldsh    r3, [r0, r4]
	ldsh    r2, [r1, r4]
	cmp     r3, r2
	beq     branch_2241336
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x2241336

.thumb
branch_2241336: @ 2241336 :thumb
	mov     r2, #0x2
	ldsb    r3, [r1, r2]
	cmp     r3, #0x3
	beq     branch_224134a
	ldsb    r2, [r0, r2]
	cmp     r3, r2
	beq     branch_224134a
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x224134a

.thumb
branch_224134a: @ 224134a :thumb
	mov     r2, #0x3
	ldsb    r3, [r0, r2]
	cmp     r3, #0x0
	bne     branch_2241358
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2241358

.thumb
branch_2241358: @ 2241358 :thumb
	ldsb    r0, [r1, r2]
	cmp     r0, #0x0
	beq     branch_2241368
	cmp     r0, r3
	ble     branch_2241368
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x2241368

.thumb
branch_2241368: @ 2241368 :thumb
	mov     r0, #0x4
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_224137a
	cmp     r0, r3
	bge     branch_224137a
	mov     r0, #0x0
	pop     {r3,r4}
	bx      lr
@ 0x224137a

.thumb
branch_224137a: @ 224137a :thumb
	mov     r0, #0x1
	pop     {r3,r4}
	bx      lr
@ 0x2241380

.thumb
Function_2241380: @ 2241380 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r5, r0
	bl      0x2074570
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074570
	add     r1, r0, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x2]
	mov     r0, r5
	bl      0x2075b40
	add     r1, sp, #0x0
	strb    r0, [r1, #0x3]
	add     r0, sp, #0x0
	mov     r1, r4
	bl      Function_2241324
	pop     {r3-r5,pc}
@ 0x22413b6


.align 2, 0


.thumb
Function_22413b8: @ 22413b8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r0, #0x46
	mov     r5, r1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	add     r1, sp, #0x0
	strh    r0, [r1, #0x6]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074570
	add     r1, r0, #0x1
	add     r0, sp, #0x0
	strb    r1, [r0, #0x8]
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      0x2075b40
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
	bl      Function_22425a4
	mov     r0, #0x95
	lsl     r0, r0, #2
	add     r2, r5, r0
	mov     r0, #0x12
	lsl     r0, r0, #4
	ldr     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	mul     r0, r1
	add     r0, r2, r0
	bl      0x2076b10
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r5, r0
	bl      0x2074570
	add     r1, sp, #0x0
	strh    r0, [r1, #0x0]
	mov     r0, r5
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074570
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
@ 0x2241460

.thumb
Function_2241460: @ 2241460 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r2
	mov     r4, r3
	mov     r6, #0x0
.thumb
branch_224146a: @ 224146a :thumb
	mov     r0, #0x0
	ldsh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_2241484
	mov     r0, r5
	mov     r1, r7
	bl      Function_2241324
	cmp     r0, #0x0
	bne     branch_2241484
	ldr     r0, [r4, #0x4]
	.hword  0x1cc0 @ add r0, r0, #0x3
	str     r0, [r4, #0x4]
.thumb
branch_2241484: @ 2241484 :thumb
	mov     r0, #0x83
	lsl     r0, r0, #2
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r4, r4, r0
	cmp     r6, #0x1e
	blt     branch_224146a
	pop     {r3-r7,pc}
@ 0x2241494

.thumb
Function_2241494: @ 2241494 :thumb
	push    {r3,lr}
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2074470
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      0x207d2d0
	cmp     r0, #0x0
	beq     branch_22414ae
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22414ae

.thumb
branch_22414ae: @ 22414ae :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22414b2


.align 2, 0


.thumb
Function_22414b4: @ 22414b4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_22418b4
	ldr     r0, [r4, #0x4]
	bl      Function_22415f4
	mov     r0, r4
	bl      Function_2241708
	mov     r0, r4
	bl      Function_224179c
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	mov     r0, r4
	bl      Function_2245930
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	ldr     r2, [pc, #0x40] @ 0x2241534, (=0xb94)
	str     r0, [sp, #0x4]
	.hword  0x1f00 @ sub r0, r0, #0x4
	str     r0, [sp, #0x8]
	add     r1, r2, #0x4
	ldr     r0, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r3, [pc, #0x34] @ 0x2241538, (=0xf6c)
	ldr     r1, [r4, r1]
	ldr     r2, [r4, r2]
	add     r3, r4, r3
	bl      Function_22422d0
	ldr     r1, [pc, #0x2c] @ 0x224153c, (=0xb74)
	mov     r3, #0x46
	add     r0, r4, r1
	str     r0, [sp, #0x0]
	mov     r0, r1
	add     r0, #0x20
	add     r1, #0x1c
	ldr     r2, [pc, #0x24] @ 0x2241540, (=0xf9c)
	lsl     r3, r3, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22423f8
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241534

.word 0xb94 @ 0x2241534
.word 0xf6c @ 0x2241538
.word 0xb74 @ 0x224153c
.word 0xf9c @ 0x2241540
.thumb
Function_2241544: @ 2241544 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      0x20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x2241560, (=0x224695c)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x224155e


.align 2


.word 0x224695c @ 0x2241560
.thumb
Function_2241564: @ 2241564 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2039794
	mov     r0, r4
	bl      Function_224191c
	mov     r0, r4
	bl      Function_224187c
	ldr     r0, [r4, #0x4]
	bl      Function_22416dc
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2241588

.thumb
Function_2241588: @ 2241588 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x58] @ 0x22415e8, (=0xb94)
	mov     r4, r2
	ldr     r0, [r5, r0]
	bl      0x200b1ec
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	ldr     r0, [pc, #0x40] @ 0x22415ec, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x34] @ 0x22415ec, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x20] @ 0x22415ec, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x14] @ 0x22415f0, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r6
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22415e8

.word 0xb94 @ 0x22415e8
.word 0xefc @ 0x22415ec
.word 0xbe4 @ 0x22415f0
.thumb
Function_22415f4: @ 22415f4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x8c
	ldr     r5, [pc, #0xcc] @ 0x22416c8, (=0x2246018)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xa8] @ 0x22416cc, (=0x2246034)
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
	bl      0x20183c4
	ldr     r5, [pc, #0x8c] @ 0x22416d0, (=0x2246050)
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
	bl      0x20183c4
	ldr     r5, [pc, #0x70] @ 0x22416d4, (=0x224606c)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x4c] @ 0x22416d8, (=0x2245ffc)
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	add     sp, #0x8c
	pop     {r4,r5,pc}
@ 0x22416c6


.align 2


.word 0x2246018 @ 0x22416c8
.word 0x2246034 @ 0x22416cc
.word 0x2246050 @ 0x22416d0
.word 0x224606c @ 0x22416d4
.word 0x2245ffc @ 0x22416d8
.thumb
Function_22416dc: @ 22416dc :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x2241708

.thumb
Function_2241708: @ 2241708 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r4, [r5, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x68
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2006e84
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x2006e3c
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
	bl      0x2006e60
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x224179c

.thumb
Function_224179c: @ 224179c :thumb
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
	ldr     r1, [pc, #0xac] @ 0x2241864, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0xa0] @ 0x2241864, (=0xf1c)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      0x201ada4
	mov     r2, #0x0
	ldr     r0, [pc, #0x98] @ 0x2241868, (=0xf0e00)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x94] @ 0x224186c, (=0xbb4)
	ldr     r0, [pc, #0x8c] @ 0x2241864, (=0xf1c)
	ldr     r1, [r7, r1]
	add     r0, r7, r0
	mov     r3, #0x1
	bl      Function_22458c8
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	ldr     r1, [pc, #0x80] @ 0x2241870, (=0xefc)
	str     r3, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x60
	str     r0, [sp, #0x10]
	ldr     r0, [r7, #0x4]
	add     r1, r7, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0x6c] @ 0x2241870, (=0xefc)
	mov     r1, #0x0
	add     r0, r7, r0
	bl      0x201ada4
	mov     r0, #0x0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x60] @ 0x2241874, (=0xf6c)
	ldr     r4, [pc, #0x64] @ 0x2241878, (=0x2245fe4)
	mov     r6, #0x96
	add     r5, r7, r0
.thumb
branch_2241818: @ 2241818 :thumb
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
	bl      0x201a7e8
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r5
	bl      0x201a954
	ldr     r0, [sp, #0x14]
	add     r6, #0x16
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	str     r0, [sp, #0x14]
	cmp     r0, #0x6
	blt     branch_2241818
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2241864

.word 0xf1c @ 0x2241864
.word 0xf0e00 @ 0x2241868
.word 0xbb4 @ 0x224186c
.word 0xefc @ 0x2241870
.word 0xf6c @ 0x2241874
.word 0x2245fe4 @ 0x2241878
.thumb
Function_224187c: @ 224187c :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [pc, #0x24] @ 0x22418a8, (=0xf6c)
	mov     r4, #0x0
	add     r5, r6, r0
.thumb
branch_2241886: @ 2241886 :thumb
	mov     r0, r5
	bl      0x201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_2241886
	ldr     r0, [pc, #0x14] @ 0x22418ac, (=0xefc)
	add     r0, r6, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x10] @ 0x22418b0, (=0xf1c)
	add     r0, r6, r0
	bl      0x201a8fc
	pop     {r4-r6,pc}
@ 0x22418a6


.align 2


.word 0xf6c @ 0x22418a8
.word 0xefc @ 0x22418ac
.word 0xf1c @ 0x22418b0
.thumb
Function_22418b4: @ 22418b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x1c
	ldr     r0, [r4, r1]
	mov     r1, #0x5a
	bl      0x200b1ec
	ldr     r1, [pc, #0x40] @ 0x2241914, (=0xbb4)
	str     r0, [r4, r1]
	mov     r0, #0x3e
	mov     r1, #0x30
	bl      0x2018144
	ldr     r1, [pc, #0x38] @ 0x2241918, (=0x1084)
	mov     r2, #0x30
	str     r0, [r4, r1]
	ldr     r1, [r4, r1]
	mov     r0, #0x0
	blx 0x20c4bb8
	ldr     r2, [pc, #0x2c] @ 0x2241918, (=0x1084)
	mov     r0, #0x3e
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r2, #0x1c
	bl      Function_2242520
	ldr     r1, [pc, #0x1c] @ 0x2241918, (=0x1084)
	ldr     r1, [r4, r1]
	str     r0, [r1, #0x18]
	mov     r0, #0x3e
	bl      Function_2242544
	ldr     r1, [pc, #0x10] @ 0x2241918, (=0x1084)
	ldr     r2, [r4, r1]
	add     r1, #0x38
	str     r0, [r2, #0x14]
	add     r0, r4, r1
	bl      Function_2242aa8
	pop     {r4,pc}
@ 0x2241914

.word 0xbb4 @ 0x2241914
.word 0x1084 @ 0x2241918
.thumb
Function_224191c: @ 224191c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2241950, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x14]
	bl      0x20181c4
	ldr     r0, [pc, #0x24] @ 0x2241950, (=0x1084)
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x18]
	bl      0x20181c4
	ldr     r0, [pc, #0x18] @ 0x2241950, (=0x1084)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	ldr     r0, [pc, #0xc] @ 0x2241954, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x2241950

.word 0x1084 @ 0x2241950
.word 0xbb4 @ 0x2241954
.thumb
Function_2241958: @ 2241958 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_2241980
	ldr     r0, [pc, #0x20] @ 0x2241988, (=0xf0f)
	mov     r1, #0x9
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2241588
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0x1
	bl      Function_223c3f4
.thumb
branch_2241980: @ 2241980 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2241986


.align 2


.word 0xf0f @ 0x2241988
.thumb
Function_224198c: @ 224198c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x70] @ 0x2241a04, (=0x21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_22419a8
	mov     r1, #0x5
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
.thumb
branch_22419a8: @ 22419a8 :thumb
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x50] @ 0x2241a08, (=0x11a)
	ldr     r1, [pc, #0x50] @ 0x2241a0c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      0x201a7e8
	ldr     r0, [pc, #0x40] @ 0x2241a0c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0xd
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x2c] @ 0x2241a10, (=0x14e)
	ldr     r1, [pc, #0x30] @ 0x2241a14, (=0xf4c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      0x201a7e8
	ldr     r0, [pc, #0x20] @ 0x2241a14, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241a04

.word 0x21bf67c @ 0x2241a04
.word 0x11a @ 0x2241a08
.word 0xf3c @ 0x2241a0c
.word 0x14e @ 0x2241a10
.word 0xf4c @ 0x2241a14
.thumb
Function_2241a18: @ 2241a18 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x24] @ 0x2241a40, (=0xb94)
	mov     r4, r0
	ldr     r1, [pc, #0x24] @ 0x2241a44, (=0x106c)
	ldr     r2, [pc, #0x24] @ 0x2241a48, (=0xf3c)
	ldr     r3, [r4, r3]
	add     r1, r4, r1
	add     r2, r4, r2
	bl      Function_22426a4
	ldr     r1, [pc, #0x1c] @ 0x2241a4c, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241a50, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241a40

.word 0xb94 @ 0x2241a40
.word 0x106c @ 0x2241a44
.word 0xf3c @ 0x2241a48
.word 0x1078 @ 0x2241a4c
.word 0xffff @ 0x2241a50
.thumb
Function_2241a54: @ 2241a54 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xb0] @ 0x2241b0c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a68
	cmp     r0, #0x9
	bhi     branch_2241a8a
	add     r1, r0, r0
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2241a76

Jumppoints_2241a76:
.hword branch_2241b08 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.hword branch_2241a94 - Jumppoints_2241a76 - 2
.thumb
branch_2241a8a: @ 2241a8a :thumb
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2241ab8
	b       branch_2241b08
@ 0x2241a94

.thumb
branch_2241a94: @ 2241a94 :thumb
	ldr     r0, [pc, #0x78] @ 0x2241b10, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      0x2001384
	ldr     r0, [pc, #0x6c] @ 0x2241b14, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x64] @ 0x2241b18, (=0x5dc)
	bl      0x2005748
	b       branch_2241b08
@ 0x2241ab8

.thumb
branch_2241ab8: @ 2241ab8 :thumb
	ldr     r0, [pc, #0x54] @ 0x2241b10, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	add     r1, r2, #0x6
	ldr     r0, [r4, r0]
	.hword  0x1d12 @ add r2, r2, #0x4
	bl      0x2001384
	ldr     r0, [pc, #0x48] @ 0x2241b14, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x48] @ 0x2241b1c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x44] @ 0x2241b20, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200e084
	ldr     r0, [pc, #0x34] @ 0x2241b1c, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x34] @ 0x2241b24, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r1, #0x5
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x14] @ 0x2241b18, (=0x5dc)
	bl      0x2005748
.thumb
branch_2241b08: @ 2241b08 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241b0c

.word 0x1078 @ 0x2241b0c
.word 0x1084 @ 0x2241b10
.word 0x106c @ 0x2241b14
.word 0x5dc @ 0x2241b18
.word 0xf3c @ 0x2241b1c
.word 0xefc @ 0x2241b20
.word 0xf4c @ 0x2241b24
.thumb
Function_2241b28: @ 2241b28 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	ldr     r3, [pc, #0x38] @ 0x2241b68, (=0xb98)
	mov     r4, r0
	ldr     r1, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x2241b6c, (=0x1084)
	ldr     r2, [r4, r1]
	sub     r1, #0x18
	str     r2, [sp, #0x4]
	ldr     r2, [r4, #0x0]
	add     r1, r4, r1
	ldr     r2, [r2, #0x10]
	str     r2, [sp, #0x8]
	ldr     r2, [pc, #0x28] @ 0x2241b70, (=0xf4c)
	ldr     r3, [r4, r3]
	add     r2, r4, r2
	bl      Function_22427bc
	ldr     r1, [pc, #0x20] @ 0x2241b74, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x20] @ 0x2241b78, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2241b66


.align 2


.word 0xb98 @ 0x2241b68
.word 0x1084 @ 0x2241b6c
.word 0xf4c @ 0x2241b70
.word 0x1078 @ 0x2241b74
.word 0xffff @ 0x2241b78
.thumb
Function_2241b7c: @ 2241b7c :thumb
	cmp     r1, #0x0
	beq     branch_2241b8a
	cmp     r1, #0xfe
	beq     branch_2241b92
	cmp     r1, #0xff
	beq     branch_2241b9a
	b       branch_2241ba2
@ 0x2241b8a

.thumb
branch_2241b8a: @ 2241b8a :thumb
	mov     r1, #0x1
	strb    r1, [r0, #0x2]
	mov     r0, r1
	bx      lr
@ 0x2241b92

.thumb
branch_2241b92: @ 2241b92 :thumb
	mov     r1, #0x2
	strb    r1, [r0, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2241b9a

.thumb
branch_2241b9a: @ 2241b9a :thumb
	mov     r1, #0x3
	strb    r1, [r0, #0x2]
	mov     r0, #0x1
	bx      lr
@ 0x2241ba2

.thumb
branch_2241ba2: @ 2241ba2 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2241ba6


.align 2, 0


.thumb
Function_2241ba8: @ 2241ba8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [pc, #0x130] @ 0x2241ce0, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	add     r1, r4, r1
	bl      Function_2242a68
	mov     r5, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_2241bd0
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r5, r0
	bne     branch_2241bce
	b       branch_2241cd8
@ 0x2241bce

.thumb
branch_2241bce: @ 2241bce :thumb
	b       branch_2241c26
@ 0x2241bd0

.thumb
branch_2241bd0: @ 2241bd0 :thumb
	ldr     r0, [pc, #0x110] @ 0x2241ce4, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      0x2001384
	ldr     r0, [pc, #0x104] @ 0x2241ce8, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x100] @ 0x2241cec, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xf8] @ 0x2241cf0, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0xec] @ 0x2241cec, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xe8] @ 0x2241cf4, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0xd4] @ 0x2241ce4, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac0
	b       branch_2241cd8
@ 0x2241c26

.thumb
branch_2241c26: @ 2241c26 :thumb
	ldr     r0, [pc, #0xbc] @ 0x2241ce4, (=0x1084)
	ldr     r2, [r4, r0]
	sub     r0, #0xc
	mov     r1, r2
	ldr     r0, [r4, r0]
	add     r1, #0xa
	add     r2, #0x8
	bl      0x2001384
	ldr     r0, [pc, #0xac] @ 0x2241ce8, (=0x106c)
	ldr     r0, [r4, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0xac] @ 0x2241cf0, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xa0] @ 0x2241cec, (=0xf4c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x98] @ 0x2241cf0, (=0xf3c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x8c] @ 0x2241cec, (=0xf4c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x90] @ 0x2241cf8, (=0xb78)
	strh    r5, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x2241cf4, (=0x5dc)
	bl      0x2005748
	mov     r0, r5
	mov     r1, #0x12
	bl      0x20759f0
	ldr     r1, [pc, #0x6c] @ 0x2241ce4, (=0x1084)
	ldr     r2, [r4, r1]
	str     r0, [r2, #0x20]
	ldr     r1, [r4, r1]
	ldr     r0, [pc, #0x78] @ 0x2241cf8, (=0xb78)
	ldr     r1, [r1, #0x20]
	add     r0, r4, r0
	bl      Function_2241b7c
	cmp     r0, #0x0
	beq     branch_2241c96
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x68] @ 0x2241cfc, (=0xb7a)
	ldsb    r1, [r4, r0]
	b       branch_2241c9c
@ 0x2241c96

.thumb
branch_2241c96: @ 2241c96 :thumb
	mov     r0, #0x7
	str     r0, [r4, #0x2c]
	mov     r1, #0x3
.thumb
branch_2241c9c: @ 2241c9c :thumb
	ldr     r2, [pc, #0x58] @ 0x2241cf8, (=0xb78)
	ldr     r3, [pc, #0x60] @ 0x2241d00, (=0xf6c)
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
	bl      Function_22422d0
	ldr     r0, [pc, #0x20] @ 0x2241ce4, (=0x1084)
	ldr     r3, [r4, r0]
	add     r0, #0x38
	ldrh    r2, [r3, #0x6]
	ldrh    r1, [r3, #0x4]
	add     r0, r4, r0
	add     r1, r2, r1
	ldrh    r2, [r3, #0xa]
	ldrh    r3, [r3, #0x8]
	bl      Function_2242ac0
.thumb
branch_2241cd8: @ 2241cd8 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241cde


.align 2


.word 0x1078 @ 0x2241ce0
.word 0x1084 @ 0x2241ce4
.word 0x106c @ 0x2241ce8
.word 0xf4c @ 0x2241cec
.word 0xf3c @ 0x2241cf0
.word 0x5dc @ 0x2241cf4
.word 0xb78 @ 0x2241cf8
.word 0xb7a @ 0x2241cfc
.word 0xf6c @ 0x2241d00
.thumb
Function_2241d04: @ 2241d04 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x2241d54, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xa
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2241588
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
	ldr     r0, [pc, #0x24] @ 0x2241d58, (=0x11a)
	ldr     r1, [pc, #0x28] @ 0x2241d5c, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x15
	bl      0x201a7e8
	ldr     r0, [pc, #0x18] @ 0x2241d5c, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241d52


.align 2


.word 0xf0f @ 0x2241d54
.word 0x11a @ 0x2241d58
.word 0xf3c @ 0x2241d5c
.thumb
Function_2241d60: @ 2241d60 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x2241d88, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2241d8c, (=0x106c)
	ldr     r1, [pc, #0x24] @ 0x2241d90, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	bl      Function_224283c
	ldr     r1, [pc, #0x1c] @ 0x2241d94, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241d98, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241d88

.word 0xb94 @ 0x2241d88
.word 0x106c @ 0x2241d8c
.word 0xf3c @ 0x2241d90
.word 0x1078 @ 0x2241d94
.word 0xffff @ 0x2241d98
.thumb
Function_2241d9c: @ 2241d9c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xc8] @ 0x2241e6c, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a68
	mov     r4, r0
	cmp     r4, #0x2
	bhi     branch_2241dc4
	cmp     r4, #0x0
	beq     branch_2241e08
	cmp     r4, #0x1
	beq     branch_2241e08
	cmp     r4, #0x2
	beq     branch_2241e08
	b       branch_2241e64
@ 0x2241dc4

.thumb
branch_2241dc4: @ 2241dc4 :thumb
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_2241e64
	ldr     r0, [pc, #0x9c] @ 0x2241e6c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x94] @ 0x2241e70, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x90] @ 0x2241e74, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x8c] @ 0x2241e78, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	ldr     r0, [pc, #0x7c] @ 0x2241e74, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x7c] @ 0x2241e7c, (=0x5dc)
	bl      0x2005748
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_2241e64
@ 0x2241e08

.thumb
branch_2241e08: @ 2241e08 :thumb
	ldr     r0, [pc, #0x60] @ 0x2241e6c, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x58] @ 0x2241e70, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x54] @ 0x2241e74, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x4c] @ 0x2241e74, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x4c] @ 0x2241e7c, (=0x5dc)
	bl      0x2005748
	ldr     r3, [pc, #0x48] @ 0x2241e80, (=0xf6c)
	ldr     r2, [pc, #0x4c] @ 0x2241e84, (=0xb7a)
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
	bl      Function_22422d0
.thumb
branch_2241e64: @ 2241e64 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2241e6a


.align 2


.word 0x1078 @ 0x2241e6c
.word 0x106c @ 0x2241e70
.word 0xf3c @ 0x2241e74
.word 0xefc @ 0x2241e78
.word 0x5dc @ 0x2241e7c
.word 0xf6c @ 0x2241e80
.word 0xb7a @ 0x2241e84
.thumb
Function_2241e88: @ 2241e88 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	ldr     r1, [pc, #0x48] @ 0x2241ed8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xb
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2241588
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
	ldr     r0, [pc, #0x24] @ 0x2241edc, (=0x11a)
	ldr     r1, [pc, #0x28] @ 0x2241ee0, (=0xf3c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0xf
	bl      0x201a7e8
	ldr     r0, [pc, #0x18] @ 0x2241ee0, (=0xf3c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r0, #0x3
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2241ed6


.align 2


.word 0xf0f @ 0x2241ed8
.word 0x11a @ 0x2241edc
.word 0xf3c @ 0x2241ee0
.thumb
Function_2241ee4: @ 2241ee4 :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x28] @ 0x2241f10, (=0xb94)
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x2241f14, (=0x106c)
	ldr     r1, [pc, #0x28] @ 0x2241f18, (=0xf3c)
	ldr     r2, [r4, r2]
	add     r0, r4, r0
	add     r1, r4, r1
	mov     r3, #0x0
	bl      Function_22428ac
	ldr     r1, [pc, #0x20] @ 0x2241f1c, (=0x1078)
	str     r0, [r4, r1]
	mov     r0, #0x43
	ldr     r1, [pc, #0x1c] @ 0x2241f20, (=0xffff)
	lsl     r0, r0, #2
	strh    r1, [r4, r0]
	mov     r0, #0xc
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2241f0e


.align 2


.word 0xb94 @ 0x2241f10
.word 0x106c @ 0x2241f14
.word 0xf3c @ 0x2241f18
.word 0x1078 @ 0x2241f1c
.word 0xffff @ 0x2241f20
.thumb
Function_2241f24: @ 2241f24 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0xec] @ 0x2242018, (=0x1078)
	mov     r1, #0x43
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	add     r1, r5, r1
	bl      Function_2242a68
	mov     r4, r0
	cmp     r4, #0xc
	beq     branch_2241f4e
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_2241f4e
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r4, r0
	beq     branch_2242012
	b       branch_2241fa2
@ 0x2241f4e

.thumb
branch_2241f4e: @ 2241f4e :thumb
	ldr     r0, [pc, #0xc8] @ 0x2242018, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0xc0] @ 0x224201c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0xbc] @ 0x2242020, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0xb4] @ 0x2242024, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200e084
	ldr     r0, [pc, #0xa8] @ 0x2242020, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0xa8] @ 0x2242028, (=0x5dc)
	bl      0x2005748
	ldr     r1, [pc, #0xa4] @ 0x224202c, (=0x1084)
	ldr     r0, [pc, #0xa8] @ 0x2242030, (=0xb78)
	ldr     r1, [r5, r1]
	add     r0, r5, r0
	ldr     r1, [r1, #0x20]
	bl      Function_2241b7c
	cmp     r0, #0x0
	beq     branch_2241f9c
	mov     r0, #0x0
	str     r0, [r5, #0x2c]
	b       branch_2242012
@ 0x2241f9c

.thumb
branch_2241f9c: @ 2241f9c :thumb
	mov     r0, #0x7
	str     r0, [r5, #0x2c]
	b       branch_2242012
@ 0x2241fa2

.thumb
branch_2241fa2: @ 2241fa2 :thumb
	ldr     r0, [pc, #0x84] @ 0x2242028, (=0x5dc)
	bl      0x2005748
	ldr     r0, [pc, #0x6c] @ 0x2242018, (=0x1078)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	mov     r2, r1
	bl      0x2001384
	ldr     r0, [pc, #0x64] @ 0x224201c, (=0x106c)
	ldr     r0, [r5, r0]
	bl      0x2013a3c
	ldr     r0, [pc, #0x60] @ 0x2242020, (=0xf3c)
	mov     r1, #0x0
	add     r0, r5, r0
	bl      0x200dc9c
	ldr     r0, [pc, #0x58] @ 0x2242020, (=0xf3c)
	add     r0, r5, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x60] @ 0x2242030, (=0xb78)
	mov     r1, r4
	add     r0, r5, r0
	mov     r2, #0x0
	bl      Function_2242930
	mov     r0, #0xd
	ldr     r1, [pc, #0x54] @ 0x2242034, (=0xb7b)
	str     r0, [r5, #0x2c]
	ldsb    r0, [r5, r1]
	.hword  0x1c49 @ add r1, r1, #0x1
	ldsb    r1, [r5, r1]
	mov     r2, #0x0
	bl      Function_224296c
	ldr     r2, [pc, #0x40] @ 0x2242030, (=0xb78)
	ldr     r3, [pc, #0x48] @ 0x2242038, (=0xf6c)
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
	bl      Function_22422d0
.thumb
branch_2242012: @ 2242012 :thumb
	mov     r0, #0x3
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2242018

.word 0x1078 @ 0x2242018
.word 0x106c @ 0x224201c
.word 0xf3c @ 0x2242020
.word 0xefc @ 0x2242024
.word 0x5dc @ 0x2242028
.word 0x1084 @ 0x224202c
.word 0xb78 @ 0x2242030
.word 0xb7b @ 0x2242034
.word 0xf6c @ 0x2242038
.thumb
Function_224203c: @ 224203c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x1c] @ 0x2242060, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0x17
	mov     r2, #0x1
	mov     r3, #0x0
	bl      Function_2241588
	mov     r0, r4
	mov     r1, #0x10
	mov     r2, #0xe
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2242060

.word 0xf0f @ 0x2242060
.thumb
Function_2242064: @ 2242064 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	ldr     r2, [pc, #0x14] @ 0x2242080, (=0x1ea)
	mov     r1, #0xf
	bl      Function_223c3c0
	ldr     r1, [pc, #0x10] @ 0x2242084, (=0x1070)
	str     r0, [r4, r1]
	mov     r0, #0xf
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224207e


.align 2


.word 0x1ea @ 0x2242080
.word 0x1070 @ 0x2242084
.thumb
Function_2242088: @ 2242088 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x48] @ 0x22420d8, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22420d4
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22420b4
	mov     r1, #0x5
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	b       branch_22420d4
@ 0x22420b4

.thumb
branch_22420b4: @ 22420b4 :thumb
	mov     r1, #0x7
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x2
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x18] @ 0x22420dc, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, r4
	bl      Function_2242664
.thumb
branch_22420d4: @ 22420d4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22420d8

.word 0x1070 @ 0x22420d8
.word 0x10b0 @ 0x22420dc
.thumb
Function_22420e0: @ 22420e0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x0
	bne     branch_224210c
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
	bl      0x200f174
	ldr     r0, [pc, #0x28] @ 0x2242130, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2242124
@ 0x224210c

.thumb
branch_224210c: @ 224210c :thumb
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
	bl      0x200f174
.thumb
branch_2242124: @ 2242124 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x224212e


.align 2


.word 0x10b0 @ 0x2242130
.thumb
Function_2242134: @ 2242134 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2242150, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_224214c
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_224214c: @ 224214c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242150

.word 0xbe4 @ 0x2242150
.thumb
Function_2242154: @ 2242154 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r3
	cmp     r2, #0x0
	beq     branch_2242182
	mov     r0, r1
	mov     r1, r2
	bl      0x200b1ec
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22458fc
	mov     r0, r4
	bl      0x20237bc
.thumb
branch_2242182: @ 2242182 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2242186


.align 2, 0


.thumb
Function_2242188: @ 2242188 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	cmp     r3, #0x0
	beq     branch_22421ba
	mov     r0, r1
	mov     r1, r3
	bl      0x200b1ec
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_22458fc
	mov     r0, r5
	bl      0x20237bc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22421ba

.thumb
branch_22421ba: @ 22421ba :thumb
	mov     r0, r2
	mov     r1, #0xa7
	bl      0x200b1ec
	mov     r5, r0
	ldr     r0, [sp, #0x18]
	ldr     r3, [sp, #0x1c]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x0
	bl      Function_22458fc
	mov     r0, r5
	bl      0x20237bc
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22421e2


.align 2, 0


.thumb
Function_22421e4: @ 22421e4 :thumb
	cmp     r0, #0x1
	bne     branch_22421ee
	ldr     r0, [pc, #0x10] @ 0x22421fc, (=0x2246920)
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x22421ee

.thumb
branch_22421ee: @ 22421ee :thumb
	cmp     r0, #0x2
	bne     branch_22421f6
	ldr     r0, [pc, #0x8] @ 0x22421fc, (=0x2246920)
	ldr     r1, [r0, #0x4]
.thumb
branch_22421f6: @ 22421f6 :thumb
	mov     r0, r1
	bx      lr
@ 0x22421fa


.align 2


.word 0x2246920 @ 0x22421fc
.thumb
Function_2242200: @ 2242200 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r5, r2
	cmp     r3, #0x0
	bne     branch_2242210
	cmp     r5, #0x3
	beq     branch_2242260
.thumb
branch_2242210: @ 2242210 :thumb
	mov     r0, r1
	ldr     r1, [pc, #0x50] @ 0x2242264, (=0x2245fd4)
	lsl     r2, r5, #2
	ldr     r1, [r1, r2]
	bl      0x200b1ec
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x3
	ble     branch_2242240
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_22421e4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	bl      Function_22458fc
	b       branch_224225a
@ 0x2242240

.thumb
branch_2242240: @ 2242240 :thumb
	ldr     r1, [sp, #0x20]
	mov     r0, r5
	bl      Function_22421e4
	ldr     r1, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_22458fc
.thumb
branch_224225a: @ 224225a :thumb
	mov     r0, r4
	bl      0x20237bc
.thumb
branch_2242260: @ 2242260 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2242264

.word 0x2245fd4 @ 0x2242264
.thumb
Function_2242268: @ 2242268 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x0
	mvn     r0, r0
	mov     r5, r3
	cmp     r2, r0
	beq     branch_22422a8
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_2242282
	ldr     r3, [pc, #0x2c] @ 0x22422ac, (=0x2246108)
	b       branch_2242284
@ 0x2242282

.thumb
branch_2242282: @ 2242282 :thumb
	ldr     r3, [pc, #0x2c] @ 0x22422b0, (=0x22460a8)
.thumb
branch_2242284: @ 2242284 :thumb
	mov     r0, r1
	lsl     r1, r2, #3
	ldr     r1, [r3, r1]
	bl      0x200b1ec
	mov     r4, r0
	ldr     r0, [sp, #0x1c]
	str     r5, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x24]
	ldr     r3, [sp, #0x18]
	mov     r0, r6
	mov     r1, r4
	bl      Function_22458fc
	mov     r0, r4
	bl      0x20237bc
.thumb
branch_22422a8: @ 22422a8 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x22422ac

.word 0x2246108 @ 0x22422ac
.word 0x22460a8 @ 0x22422b0
.thumb
Function_22422b4: @ 22422b4 :thumb
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
	bl      Function_2242268
	add     sp, #0x10
	pop     {r4,pc}
@ 0x22422d0

.thumb
Function_22422d0: @ 22422d0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r1, #0x61
	str     r0, [sp, #0xc]
	mov     r6, r3
	bl      0x200b1ec
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x2242360, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r5, r6
	mov     r4, #0x1
	add     r5, #0x10
	mov     r7, #0x0
.thumb
branch_22422fc: @ 22422fc :thumb
	mov     r0, r5
	mov     r1, r7
	bl      0x201ada4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_22422fc
	mov     r3, #0x0
	ldr     r0, [pc, #0x50] @ 0x2242360, (=0xf0200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r0, #0x10
	bl      Function_2242154
	ldr     r2, [sp, #0x34]
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r0, #0x1
	bhi     branch_224233e
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2242360, (=0xf0200)
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x10
	bl      Function_2242200
.thumb
branch_224233e: @ 224233e :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x2242360, (=0xf0200)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r6, #0x20
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_22422b4
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x2242360

.word 0xf0200 @ 0x2242360
.thumb
Function_2242364: @ 2242364 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	str     r1, [sp, #0x10]
	mov     r1, #0x61
	str     r0, [sp, #0xc]
	mov     r6, r3
	bl      0x200b1ec
	str     r0, [sp, #0x14]
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x22423f4, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, r6
	mov     r3, r2
	bl      Function_22458fc
	mov     r5, r6
	mov     r4, #0x1
	add     r5, #0x10
	mov     r7, #0x0
.thumb
branch_2242390: @ 2242390 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      0x201ada4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_2242390
	mov     r3, #0x0
	ldr     r0, [pc, #0x50] @ 0x22423f4, (=0xf0200)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r6
	ldr     r1, [sp, #0x10]
	ldr     r2, [sp, #0x30]
	add     r0, #0x10
	bl      Function_2242154
	ldr     r2, [sp, #0x34]
	.hword  0x1e50 @ sub r0, r2, #0x1
	cmp     r0, #0x1
	bhi     branch_22423d2
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x46
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x22423f4, (=0xf0200)
	ldr     r1, [sp, #0xc]
	str     r0, [sp, #0x8]
	mov     r0, r6
	add     r0, #0x10
	bl      Function_2242200
.thumb
branch_22423d2: @ 22423d2 :thumb
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x22423f4, (=0xf0200)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	add     r6, #0x20
	ldr     r1, [sp, #0xc]
	ldr     r2, [sp, #0x38]
	mov     r0, r6
	mov     r3, #0x2
	bl      Function_22422b4
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x22423f4

.word 0xf0200 @ 0x22423f4
.thumb
Function_22423f8: @ 22423f8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r4, r0
	mov     r5, r1
	mov     r0, #0xb
	mov     r1, #0x3e
	str     r2, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r7, [sp, #0x38]
	bl      0x2023790
	str     r0, [sp, #0x18]
	mov     r0, #0xb
	mov     r1, #0x3e
	bl      0x2023790
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0xc]
	ldr     r2, [sp, #0x18]
	mov     r1, #0x77
	bl      0x2074570
	ldr     r0, [sp, #0xc]
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074570
	add     r6, r0, #0x1
	ldr     r0, [sp, #0xc]
	bl      0x2075b40
	str     r0, [sp, #0x10]
	mov     r0, r4
	mov     r1, #0x64
	bl      0x200b1ec
	str     r0, [sp, #0x20]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	mov     r1, #0x3
	str     r0, [sp, #0x4]
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r3, r1
	bl      0x200b60c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x66
	mov     r3, #0x3e
	bl      0x200b29c
	str     r0, [sp, #0x1c]
	cmp     r6, #0x3
	beq     branch_2242476
	ldr     r1, [pc, #0xa8] @ 0x2242514, (=0x2245fd4)
	lsl     r2, r6, #2
	ldr     r1, [r1, r2]
	ldr     r2, [sp, #0x14]
	mov     r0, r4
	bl      0x200b1b8
.thumb
branch_2242476: @ 2242476 :thumb
	ldr     r5, [sp, #0x8]
	mov     r4, #0x0
.thumb
branch_224247a: @ 224247a :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      0x201ada4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x3
	blt     branch_224247a
	mov     r2, #0x0
	ldr     r0, [pc, #0x88] @ 0x2242518, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	mov     r3, r2
	bl      Function_22458fc
	mov     r2, #0x0
	ldr     r0, [pc, #0x78] @ 0x2242518, (=0xf0200)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x18]
	add     r0, #0x10
	mov     r3, r2
	bl      Function_22458fc
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x2242518, (=0xf0200)
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r1, [sp, #0x1c]
	add     r0, #0x20
	mov     r3, r2
	bl      Function_22458fc
	cmp     r6, #0x3
	beq     branch_22424e6
	.hword  0x1e70 @ sub r0, r6, #0x1
	mov     r3, #0x0
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x48] @ 0x224251c, (=0x2246920)
	str     r3, [sp, #0x0]
	ldr     r0, [r0, r1]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	mov     r2, #0x46
	add     r0, #0x10
	str     r0, [sp, #0x8]
	bl      Function_22458fc
.thumb
branch_22424e6: @ 22424e6 :thumb
	ldr     r0, [sp, #0xc]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074570
	strh    r0, [r7, #0x0]
	ldr     r0, [sp, #0x10]
	strb    r6, [r7, #0x2]
	strb    r0, [r7, #0x3]
	ldr     r0, [sp, #0x1c]
	bl      0x20237bc
	ldr     r0, [sp, #0x14]
	bl      0x20237bc
	ldr     r0, [sp, #0x18]
	bl      0x20237bc
	ldr     r0, [sp, #0x20]
	bl      0x20237bc
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x2242514

.word 0x2245fd4 @ 0x2242514
.word 0xf0200 @ 0x2242518
.word 0x2246920 @ 0x224251c
.thumb
Function_2242520: @ 2242520 :thumb
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
	bl      0x2007068
	ldr     r1, [sp, #0x8]
	lsr     r1, r1, #1
	str     r1, [r4, #0x0]
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242542


.align 2, 0


.thumb
Function_2242544: @ 2242544 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	ldr     r1, [pc, #0x50] @ 0x224259c, (=0x1ee)
	mov     r5, r0
	mov     r0, #0x3e
	bl      0x2018144
	mov     r4, r0
	ldr     r2, [pc, #0x44] @ 0x224259c, (=0x1ee)
	mov     r0, #0x0
	mov     r1, r4
	blx 0x20c4bb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	add     r0, sp, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x4b
	mov     r1, #0xc
	mov     r3, r5
	bl      0x2007068
	mov     r7, r0
	ldr     r0, [sp, #0x8]
	ldr     r5, [pc, #0x28] @ 0x22425a0, (=0x0)
	lsr     r3, r0, #1
	beq     branch_2242590
	ldr     r0, [pc, #0x20] @ 0x224259c, (=0x1ee)
	mov     r6, r7
	mov     r1, #0x1
.thumb
branch_2242580: @ 2242580 :thumb
	ldrh    r2, [r6, #0x0]
	cmp     r2, r0
	bcs     branch_2242588
	strb    r1, [r4, r2]
.thumb
branch_2242588: @ 2242588 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1cb6 @ add r6, r6, #0x2
	cmp     r5, r3
	bcc     branch_2242580
.thumb
branch_2242590: @ 2242590 :thumb
	mov     r0, r7
	bl      0x20181c4
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x224259c

.word 0x1ee @ 0x224259c
.word 0x0 @ 0x22425a0
.thumb
Function_22425a4: @ 22425a4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x45
	mov     r4, r1
	lsl     r0, r0, #2
	ldrh    r0, [r4, r0]
	bl      Function_22411cc
	cmp     r0, #0x0
	beq     branch_22425d8
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2077acc
	bl      0x2073c70
	mov     r2, r0
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	blx 0x20c4c14
	b       branch_22425f0
@ 0x22425d8

.thumb
branch_22425d8: @ 22425d8 :thumb
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2077adc
	mov     r0, #0x46
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	bl      0x20774c8
.thumb
branch_22425f0: @ 22425f0 :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025ef0
	mov     r1, r0
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r2, #0x8
	bl      0x20021d0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025f24
	mov     r1, #0x47
	lsl     r1, r1, #2
	strh    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	bl      0x202c8c0
	ldr     r1, [pc, #0x38] @ 0x2242658, (=0x11e)
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x18]
	bl      0x202c8c4
	ldr     r1, [pc, #0x30] @ 0x224265c, (=0x11f)
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025f8c
	mov     r1, #0x12
	lsl     r1, r1, #4
	strb    r0, [r5, r1]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x1c]
	bl      0x2025f30
	mov     r1, r5
	add     r1, #0xf6
	strb    r0, [r1, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2242660, (=0x122)
	mov     r1, #0xc
	strb    r1, [r5, r0]
	mov     r1, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	pop     {r3-r5,pc}
@ 0x2242656


.align 2


.word 0x11e @ 0x2242658
.word 0x11f @ 0x224265c
.word 0x122 @ 0x2242660
.thumb
Function_2242664: @ 2242664 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_22425a4
	ldr     r0, [pc, #0x30] @ 0x22426a0, (=0xb74)
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
@ 0x22426a0

.word 0xb74 @ 0x22426a0
.thumb
Function_22426a4: @ 22426a4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r7, r0
	mov     r5, r1
	mov     r0, #0x9
	mov     r1, #0x3e
	str     r2, [sp, #0x0]
	mov     r6, r3
	bl      0x2013a04
	str     r0, [r5, #0x0]
	mov     r4, #0x0
.thumb
branch_22426bc: @ 22426bc :thumb
	mov     r2, r4
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	add     r2, #0x68
	add     r3, r4, #0x1
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x9
	blt     branch_22426bc
	ldr     r3, [pc, #0x38] @ 0x224270c, (=0x2246088)
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
	bl      0x200dc48
	ldr     r0, [pc, #0x18] @ 0x2242710, (=0x1084)
	mov     r3, #0x3e
	ldr     r2, [r7, r0]
	add     r0, sp, #0x4
	ldrh    r1, [r2, #0x6]
	ldrh    r2, [r2, #0x4]
	bl      0x200112c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x224270a


.align 2


.word 0x2246088 @ 0x224270c
.word 0x1084 @ 0x2242710
.thumb
Function_2242714: @ 2242714 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	str     r2, [sp, #0x8]
	str     r1, [sp, #0x4]
	ldr     r2, [sp, #0x38]
	str     r0, [sp, #0x0]
	ldr     r1, [pc, #0x94] @ 0x22427b8, (=0x2246928)
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
	ble     branch_224275e
	lsl     r1, r0, #1
	mov     r0, r3
	add     r5, r0, r1
.thumb
branch_2242744: @ 2242744 :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      0x2026fe8
	cmp     r0, #0x0
	beq     branch_2242752
	.hword  0x1c7f @ add r7, r7, #0x1
.thumb
branch_2242752: @ 2242752 :thumb
	ldr     r0, [sp, #0x18]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	cmp     r0, r4
	blt     branch_2242744
.thumb
branch_224275e: @ 224275e :thumb
	add     r0, r7, #0x1
	mov     r1, #0x3e
	bl      0x2013a04
	ldr     r1, [sp, #0x0]
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x10]
	cmp     r4, #0x0
	ble     branch_22427a0
	ldr     r0, [sp, #0x14]
	lsl     r1, r0, #1
	ldr     r0, [sp, #0xc]
	add     r5, r0, r1
.thumb
branch_224277a: @ 224277a :thumb
	ldrh    r1, [r5, #0x0]
	mov     r0, r6
	bl      0x2026fe8
	cmp     r0, #0x0
	beq     branch_2242794
	ldrh    r2, [r5, #0x0]
	ldr     r0, [sp, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0x0]
	mov     r3, r2
	bl      0x2013a4c
.thumb
branch_2242794: @ 2242794 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1cad @ add r5, r5, #0x2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x10]
	cmp     r0, r4
	blt     branch_224277a
.thumb
branch_22427a0: @ 22427a0 :thumb
	ldr     r0, [sp, #0x0]
	mov     r2, #0x79
	mov     r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	sub     r3, #0x7b
	bl      0x2013a4c
	add     r0, r7, #0x1
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x22427b6


.align 2


.word 0x2246928 @ 0x22427b8
.thumb
Function_22427bc: @ 22427bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x38
	ldr     r5, [sp, #0x54]
	mov     r7, r0
	mov     r6, r1
	mov     r0, r2
	mov     r1, #0xf
	str     r2, [sp, #0x10]
	str     r3, [sp, #0x14]
	bl      0x201ada4
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
	bl      Function_2242714
	ldr     r3, [pc, #0x44] @ 0x2242838, (=0x2246088)
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
	bl      0x200dc48
	lsl     r1, r4, #1
	mov     r2, #0x43
	add     r3, r7, r1
	lsl     r2, r2, #6
	ldrh    r1, [r3, r2]
	add     r2, #0x12
	ldrh    r2, [r3, r2]
	add     r0, sp, #0x18
	mov     r3, #0x3e
	bl      0x200112c
	add     sp, #0x38
	pop     {r3-r7,pc}
@ 0x2242838

.word 0x2246088 @ 0x2242838
.thumb
Function_224283c: @ 224283c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	mov     r6, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	mov     r1, #0x3e
	mov     r7, r2
	bl      0x2013a04
	ldr     r5, [pc, #0x54] @ 0x22428a4, (=0x224693c)
	str     r0, [r6, #0x0]
	mov     r4, #0x0
.thumb
branch_2242854: @ 2242854 :thumb
	ldr     r0, [r6, #0x0]
	ldr     r2, [r5, #0x0]
	ldr     r3, [r5, #0x4]
	mov     r1, r7
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x4
	blt     branch_2242854
	ldr     r3, [pc, #0x3c] @ 0x22428a8, (=0x2246088)
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
	bl      0x200dc48
	mov     r1, #0x0
	add     r0, sp, #0x4
	mov     r2, r1
	mov     r3, #0x3e
	bl      0x200112c
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x22428a4

.word 0x224693c @ 0x22428a4
.word 0x2246088 @ 0x22428a8
.thumb
Function_22428ac: @ 22428ac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r7, r0
	str     r1, [sp, #0x0]
	str     r2, [sp, #0x4]
	cmp     r3, #0x0
	bne     branch_22428c0
	ldr     r5, [pc, #0x68] @ 0x2242924, (=0x2246108)
	mov     r6, #0xd
	b       branch_22428c4
@ 0x22428c0

.thumb
branch_22428c0: @ 22428c0 :thumb
	ldr     r5, [pc, #0x64] @ 0x2242928, (=0x22460a8)
	mov     r6, #0xc
.thumb
branch_22428c4: @ 22428c4 :thumb
	mov     r0, r6
	mov     r1, #0x3e
	bl      0x2013a04
	mov     r4, #0x0
	str     r0, [r7, #0x0]
	cmp     r6, #0x0
	ble     branch_22428e8
.thumb
branch_22428d4: @ 22428d4 :thumb
	ldr     r0, [r7, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r2, [r5, #0x0]
	mov     r3, r4
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, r6
	blt     branch_22428d4
.thumb
branch_22428e8: @ 22428e8 :thumb
	ldr     r3, [pc, #0x40] @ 0x224292c, (=0x2246088)
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
	bl      0x200dc48
	mov     r1, #0x0
	add     r0, sp, #0x8
	mov     r2, r1
	mov     r3, #0x3e
	bl      0x200112c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2242922


.align 2


.word 0x2246108 @ 0x2242924
.word 0x22460a8 @ 0x2242928
.word 0x2246088 @ 0x224292c
.thumb
Function_2242930: @ 2242930 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r4, r1
	cmp     r2, #0x0
	bne     branch_2242946
	ldr     r6, [pc, #0x28] @ 0x2242964, (=0x2246108)
	cmp     r4, #0xc
	blt     branch_2242950
	bl      0x2022974
	b       branch_2242950
@ 0x2242946

.thumb
branch_2242946: @ 2242946 :thumb
	ldr     r6, [pc, #0x20] @ 0x2242968, (=0x22460a8)
	cmp     r4, #0xb
	bcc     branch_2242950
	bl      0x2022974
.thumb
branch_2242950: @ 2242950 :thumb
	lsl     r0, r4, #3
	add     r1, r6, r0
	mov     r0, #0x4
	ldsh    r0, [r1, r0]
	strb    r0, [r5, #0x3]
	mov     r0, #0x6
	ldsh    r0, [r1, r0]
	strb    r0, [r5, #0x4]
	pop     {r4-r6,pc}
@ 0x2242962


.align 2


.word 0x2246108 @ 0x2242964
.word 0x22460a8 @ 0x2242968
.thumb
Function_224296c: @ 224296c :thumb
	push    {r4-r7}
	cmp     r2, #0x0
	bne     branch_2242978
	ldr     r4, [pc, #0x34] @ 0x22429a8, (=0x2246108)
	mov     r3, #0xd
	b       branch_224297c
@ 0x2242978

.thumb
branch_2242978: @ 2242978 :thumb
	ldr     r4, [pc, #0x30] @ 0x22429ac, (=0x22460a8)
	mov     r3, #0xc
.thumb
branch_224297c: @ 224297c :thumb
	mov     r2, #0x0
	cmp     r3, #0x0
	ble     branch_22429a0
	mov     r5, #0x6
	mov     r6, #0x4
.thumb
branch_2242986: @ 2242986 :thumb
	ldsh    r7, [r4, r6]
	cmp     r0, r7
	bne     branch_2242998
	ldsh    r7, [r4, r5]
	cmp     r1, r7
	bne     branch_2242998
	mov     r0, r2
	pop     {r4-r7}
	bx      lr
@ 0x2242998

.thumb
branch_2242998: @ 2242998 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	add     r4, #0x8
	cmp     r2, r3
	blt     branch_2242986
.thumb
branch_22429a0: @ 22429a0 :thumb
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x22429a6


.align 2


.word 0x2246108 @ 0x22429a8
.word 0x22460a8 @ 0x22429ac
.thumb
Function_22429b0: @ 22429b0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	str     r1, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, #0x84
	mov     r1, #0x3e
	mov     r7, r2
	bl      0x2013a04
	ldr     r1, [sp, #0x4]
	mov     r2, #0xa7
	mov     r3, #0x0
	str     r0, [r5, #0x0]
	bl      0x2013a4c
	mov     r0, #0x84
	mov     r4, #0x1
	.hword  0x1e46 @ sub r6, r0, #0x1
	b       branch_22429ec
@ 0x22429d8

.thumb
branch_22429d8: @ 22429d8 :thumb
	.hword  0x1e62 @ sub r2, r4, #0x1
	lsl     r3, r2, #1
	ldr     r2, [pc, #0x58] @ 0x2242a38, (=0x2246170)
	ldr     r0, [r5, #0x0]
	ldrh    r2, [r2, r3]
	mov     r1, r7
	mov     r3, r4
	bl      0x2013a4c
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_22429ec: @ 22429ec :thumb
	cmp     r4, r6
	blt     branch_22429d8
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	mov     r2, #0xa8
	mov     r3, r6
	bl      0x2013a4c
	ldr     r3, [pc, #0x3c] @ 0x2242a3c, (=0x2246088)
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
	bl      0x200dc48
	mov     r1, #0x0
	add     r0, sp, #0x8
	mov     r2, r1
	mov     r3, #0x3e
	bl      0x200112c
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x2242a38

.word 0x2246170 @ 0x2242a38
.word 0x2246088 @ 0x2242a3c
.thumb
Function_2242a40: @ 2242a40 :thumb
	cmp     r1, #0x0
	bne     branch_2242a4c
	ldr     r1, [pc, #0x18] @ 0x2242a60, (=0x1150)
	mov     r2, #0x0
	str     r2, [r0, r1]
	bx      lr
@ 0x2242a4c

.thumb
branch_2242a4c: @ 2242a4c :thumb
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r1, #0x82
	bcs     branch_2242a5c
	lsl     r2, r1, #1
	ldr     r1, [pc, #0xc] @ 0x2242a64, (=0x2246170)
	ldrh    r2, [r1, r2]
	ldr     r1, [pc, #0x4] @ 0x2242a60, (=0x1150)
	str     r2, [r0, r1]
.thumb
branch_2242a5c: @ 2242a5c :thumb
	bx      lr
@ 0x2242a5e


.align 2


.word 0x1150 @ 0x2242a60
.word 0x2246170 @ 0x2242a64
.thumb
Function_2242a68: @ 2242a68 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r4, r1
	bl      0x2001288
	mov     r6, r0
	mov     r0, r5
	add     r1, sp, #0x0
	bl      0x20014d0
	add     r0, sp, #0x0
	ldrh    r1, [r4, #0x0]
	ldrh    r0, [r0, #0x0]
	cmp     r1, r0
	beq     branch_2242a9a
	ldr     r0, [pc, #0x14] @ 0x2242aa0, (=0xffff)
	cmp     r1, r0
	beq     branch_2242a94
	ldr     r0, [pc, #0x14] @ 0x2242aa4, (=0x5dc)
	bl      0x2005748
.thumb
branch_2242a94: @ 2242a94 :thumb
	add     r0, sp, #0x0
	ldrh    r0, [r0, #0x0]
	strh    r0, [r4, #0x0]
.thumb
branch_2242a9a: @ 2242a9a :thumb
	mov     r0, r6
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x2242aa0

.word 0xffff @ 0x2242aa0
.word 0x5dc @ 0x2242aa4
.thumb
Function_2242aa8: @ 2242aa8 :thumb
	mov     r2, #0x0
	mov     r3, r0
	mov     r1, r2
.thumb
branch_2242aae: @ 2242aae :thumb
	strh    r1, [r3, #0x4]
	strh    r1, [r3, #0x16]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x9
	blt     branch_2242aae
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	bx      lr
@ 0x2242ac0

.thumb
Function_2242ac0: @ 2242ac0 :thumb
	lsl     r1, r1, #1
	add     r0, r0, r1
	strh    r2, [r0, #0x4]
	strh    r3, [r0, #0x16]
	bx      lr
@ 0x2242aca


.align 2, 0


.thumb
Function_2242acc: @ 2242acc :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2242d80
	ldr     r0, [r4, #0x4]
	bl      Function_2242b50
	mov     r0, r4
	bl      Function_2242ca8
	mov     r0, r4
	bl      Function_2242d34
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	mov     r3, #0x0
	bl      0x200f174
	mov     r0, r4
	bl      Function_2245930
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2242b0e


.align 2, 0


.thumb
Function_2242b10: @ 2242b10 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223c4b4
	bl      0x20397b0
	ldr     r1, [r4, #0x2c]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x8] @ 0x2242b2c, (=0x22469a0)
	ldr     r1, [r1, r2]
	blx     r1
	pop     {r4,pc}
@ 0x2242b2a


.align 2


.word 0x22469a0 @ 0x2242b2c
.thumb
Function_2242b30: @ 2242b30 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_2242d94
	mov     r0, r4
	bl      Function_2242d70
	ldr     r0, [r4, #0x4]
	bl      Function_2242c7c
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2242b4e


.align 2, 0


.thumb
Function_2242b50: @ 2242b50 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	ldr     r5, [pc, #0x10c] @ 0x2242c64, (=0x2246274)
	add     r3, sp, #0x8c
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xfc] @ 0x2242c68, (=0x22462bc)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xd8] @ 0x2242c6c, (=0x22462a0)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r5, [pc, #0xb4] @ 0x2242c70, (=0x22462f4)
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
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r5, [pc, #0x90] @ 0x2242c74, (=0x22462d8)
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
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0x6c] @ 0x2242c78, (=0x2246284)
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
	mov     r0, #0x0
	mov     r1, #0x20
	mov     r2, r0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x2242c62


.align 2


.word 0x2246274 @ 0x2242c64
.word 0x22462bc @ 0x2242c68
.word 0x22462a0 @ 0x2242c6c
.word 0x22462f4 @ 0x2242c70
.word 0x22462d8 @ 0x2242c74
.word 0x2246284 @ 0x2242c78
.thumb
Function_2242c7c: @ 2242c7c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x5
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019044
	pop     {r4,pc}
@ 0x2242ca8

.thumb
Function_2242ca8: @ 2242ca8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r4, [r5, #0x4]
	mov     r0, #0x60
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, #0x68
	mov     r2, r1
	mov     r3, r1
	bl      0x2006e84
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
	ldr     r0, [pc, #0x2c] @ 0x2242d30, (=0x1090)
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_2242d20
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff74
.thumb
branch_2242d20: @ 2242d20 :thumb
	ldr     r0, [r5, #0x20]
	cmp     r0, #0x9
	bne     branch_2242d2c
	mov     r0, r5
	bl      Function_223d068
.thumb
branch_2242d2c: @ 2242d2c :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2242d30

.word 0x1090 @ 0x2242d30
.thumb
Function_2242d34: @ 2242d34 :thumb
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
	ldr     r1, [pc, #0x1c] @ 0x2242d6c, (=0xefc)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0xc] @ 0x2242d6c, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2242d6a


.align 2


.word 0xefc @ 0x2242d6c
.thumb
Function_2242d70: @ 2242d70 :thumb
	ldr     r1, [pc, #0x4] @ 0x2242d78, (=0xefc)
	ldr     r3, [pc, #0x8] @ 0x2242d7c, (=0x201a8fd)
	add     r0, r0, r1
	bx      r3
@ 0x2242d78

.word 0xefc @ 0x2242d78
.word 0x201a8fd @ 0x2242d7c
.thumb
Function_2242d80: @ 2242d80 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2242d94

.thumb
Function_2242d94: @ 2242d94 :thumb
	mov     r1, #0xbb
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x2242da0, (=0x20237bd)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x2242d9e


.align 2


.word 0x20237bd @ 0x2242da0
.thumb
Function_2242da4: @ 2242da4 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r1, [r4, #0x24]
	cmp     r1, #0xc
	bhi     branch_2242e7c
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242dbc

Jumppoints_2242dbc:
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242e7c - Jumppoints_2242dbc - 2
.hword branch_2242dd6 - Jumppoints_2242dbc - 2
.hword branch_2242df2 - Jumppoints_2242dbc - 2
.hword branch_2242e0e - Jumppoints_2242dbc - 2
.hword branch_2242e2a - Jumppoints_2242dbc - 2
.hword branch_2242e4c - Jumppoints_2242dbc - 2
.hword branch_2242e62 - Jumppoints_2242dbc - 2
.thumb
branch_2242dd6: @ 2242dd6 :thumb
	ldr     r1, [pc, #0xb4] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0xb0] @ 0x2242e90, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x2
	bl      Function_223c3f4
	b       branch_2242e80
@ 0x2242df2

.thumb
branch_2242df2: @ 2242df2 :thumb
	ldr     r1, [pc, #0x98] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x94] @ 0x2242e90, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x7
	bl      Function_223c3f4
	b       branch_2242e80
@ 0x2242e0e

.thumb
branch_2242e0e: @ 2242e0e :thumb
	ldr     r1, [pc, #0x7c] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x78] @ 0x2242e90, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0xc
	bl      Function_223c3f4
	b       branch_2242e80
@ 0x2242e2a

.thumb
branch_2242e2a: @ 2242e2a :thumb
	ldr     r1, [pc, #0x60] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x5c] @ 0x2242e90, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x12
	bl      Function_223c3f4
	ldr     r0, [pc, #0x4c] @ 0x2242e94, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_2242e80
@ 0x2242e4c

.thumb
branch_2242e4c: @ 2242e4c :thumb
	ldr     r1, [pc, #0x3c] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x18
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x2242e90, (=0xb94)
	mov     r3, #0x0
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	b       branch_2242e80
@ 0x2242e62

.thumb
branch_2242e62: @ 2242e62 :thumb
	ldr     r1, [pc, #0x28] @ 0x2242e8c, (=0xf0f)
	mov     r2, #0x8e
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x24] @ 0x2242e90, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, #0x1
	str     r0, [r4, #0x18]
	mov     r0, #0x1d
	str     r0, [r4, #0x2c]
	b       branch_2242e80
@ 0x2242e7c

.thumb
branch_2242e7c: @ 2242e7c :thumb
	bl      0x2022974
.thumb
branch_2242e80: @ 2242e80 :thumb
	mov     r0, r4
	bl      Function_223c5d8
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2242e8c

.word 0xf0f @ 0x2242e8c
.word 0xb94 @ 0x2242e90
.word 0x10b0 @ 0x2242e94
.thumb
Function_2242e98: @ 2242e98 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x207893c
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b7e4
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x10] @ 0x2242ec8, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x4
	mov     r2, #0x6
	bl      Function_2243ec4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242ec8

.word 0x1484 @ 0x2242ec8
.thumb
Function_2242ecc: @ 2242ecc :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2242f54
	bl      Function_223b7d8
	ldr     r1, [pc, #0x90] @ 0x2242f70, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_2242f6a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242ef6

Jumppoints_2242ef6:
.hword branch_2242f46 - Jumppoints_2242ef6 - 2
.hword branch_2242f46 - Jumppoints_2242ef6 - 2
.hword branch_2242f4e - Jumppoints_2242ef6 - 2
.hword branch_2242f3e - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f36 - Jumppoints_2242ef6 - 2
.hword branch_2242f3e - Jumppoints_2242ef6 - 2
.hword branch_2242f6a - Jumppoints_2242ef6 - 2
.hword branch_2242f46 - Jumppoints_2242ef6 - 2
.hword branch_2242f2e - Jumppoints_2242ef6 - 2
.hword branch_2242f16 - Jumppoints_2242ef6 - 2
.thumb
branch_2242f16: @ 2242f16 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2243b04
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2c
	ldr     r0, [r0, #0x28]
	bl      0x202cf28
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	b       branch_2242f6a
@ 0x2242f2e

.thumb
branch_2242f2e: @ 2242f2e :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_2242f6a
@ 0x2242f36

.thumb
branch_2242f36: @ 2242f36 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2242f6a
@ 0x2242f3e

.thumb
branch_2242f3e: @ 2242f3e :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2242f6a
@ 0x2242f46

.thumb
branch_2242f46: @ 2242f46 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_2242f6a
@ 0x2242f4e

.thumb
branch_2242f4e: @ 2242f4e :thumb
	bl      0x2038a0c
	b       branch_2242f6a
@ 0x2242f54

.thumb
branch_2242f54: @ 2242f54 :thumb
	ldr     r0, [pc, #0x18] @ 0x2242f70, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2242f6a
	bl      0x2038a0c
.thumb
branch_2242f6a: @ 2242f6a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242f6e


.align 2


.word 0x1484 @ 0x2242f70
.thumb
Function_2242f74: @ 2242f74 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b834
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x2242f90, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x1
	strh    r0, [r4, #0x36]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2242f8e


.align 2


.word 0x1484 @ 0x2242f90
.thumb
Function_2242f94: @ 2242f94 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2242ffa
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x2243014, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_2243010
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2242fbe

Jumppoints_2242fbe:
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242ff4 - Jumppoints_2242fbe - 2
.hword branch_2242fe4 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2243010 - Jumppoints_2242fbe - 2
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242fe4 - Jumppoints_2242fbe - 2
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242fec - Jumppoints_2242fbe - 2
.hword branch_2242fde - Jumppoints_2242fbe - 2
.thumb
branch_2242fde: @ 2242fde :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_2243010
@ 0x2242fe4

.thumb
branch_2242fe4: @ 2242fe4 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_2243010
@ 0x2242fec

.thumb
branch_2242fec: @ 2242fec :thumb
	mov     r0, #0x4
	bl      0x2038ae0
	b       branch_2243010
@ 0x2242ff4

.thumb
branch_2242ff4: @ 2242ff4 :thumb
	bl      0x2038a0c
	b       branch_2243010
@ 0x2242ffa

.thumb
branch_2242ffa: @ 2242ffa :thumb
	ldr     r0, [pc, #0x18] @ 0x2243014, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2243010
	bl      0x2038a0c
.thumb
branch_2243010: @ 2243010 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243014

.word 0x1484 @ 0x2243014
.thumb
Function_2243018: @ 2243018 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b888
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x14] @ 0x2243040, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x9
	mov     r2, #0xb
	bl      Function_2243ec4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224303e


.align 2


.word 0x1484 @ 0x2243040
.thumb
Function_2243044: @ 2243044 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_22430dc
	bl      Function_223b7d8
	ldr     r1, [pc, #0xa0] @ 0x22430f8, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_22430f2
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224306e

Jumppoints_224306e:
.hword branch_22430ce - Jumppoints_224306e - 2
.hword branch_22430ce - Jumppoints_224306e - 2
.hword branch_22430d6 - Jumppoints_224306e - 2
.hword branch_22430c6 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_22430c0 - Jumppoints_224306e - 2
.hword branch_22430ba - Jumppoints_224306e - 2
.hword branch_22430ce - Jumppoints_224306e - 2
.hword branch_22430f2 - Jumppoints_224306e - 2
.hword branch_224308e - Jumppoints_224306e - 2
.thumb
branch_224308e: @ 224308e :thumb
	ldr     r0, [pc, #0x6c] @ 0x22430fc, (=0x251)
	ldsb    r5, [r4, r0]
	cmp     r5, #0x0
	beq     branch_224309c
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x224309c

.thumb
branch_224309c: @ 224309c :thumb
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202daac
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, r0
	mov     r0, r4
	add     r1, r4, r1
	mov     r3, r5
	bl      Function_2243bc0
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x22430ba

.thumb
branch_22430ba: @ 22430ba :thumb
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x22430c0

.thumb
branch_22430c0: @ 22430c0 :thumb
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x22430c6

.thumb
branch_22430c6: @ 22430c6 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x22430ce

.thumb
branch_22430ce: @ 22430ce :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22430f2
@ 0x22430d6

.thumb
branch_22430d6: @ 22430d6 :thumb
	bl      0x2038a0c
	b       branch_22430f2
@ 0x22430dc

.thumb
branch_22430dc: @ 22430dc :thumb
	ldr     r0, [pc, #0x18] @ 0x22430f8, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22430f2
	bl      0x2038a0c
.thumb
branch_22430f2: @ 22430f2 :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22430f6


.align 2


.word 0x1484 @ 0x22430f8
.word 0x251 @ 0x22430fc
.thumb
Function_2243100: @ 2243100 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b96c
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2243118, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243116


.align 2


.word 0x1484 @ 0x2243118
.thumb
Function_224311c: @ 224311c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243180
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x224319c, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_2243196
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243144

Jumppoints_2243144:
.hword branch_2243172 - Jumppoints_2243144 - 2
.hword branch_2243172 - Jumppoints_2243144 - 2
.hword branch_224317a - Jumppoints_2243144 - 2
.hword branch_2243172 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_224316a - Jumppoints_2243144 - 2
.hword branch_224316a - Jumppoints_2243144 - 2
.hword branch_224316a - Jumppoints_2243144 - 2
.hword branch_2243172 - Jumppoints_2243144 - 2
.hword branch_2243196 - Jumppoints_2243144 - 2
.hword branch_2243164 - Jumppoints_2243144 - 2
.thumb
branch_2243164: @ 2243164 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_2243196
@ 0x224316a

.thumb
branch_224316a: @ 224316a :thumb
	mov     r0, #0x3
	bl      0x2038ae0
	b       branch_2243196
@ 0x2243172

.thumb
branch_2243172: @ 2243172 :thumb
	mov     r0, #0x4
	bl      0x2038ae0
	b       branch_2243196
@ 0x224317a

.thumb
branch_224317a: @ 224317a :thumb
	bl      0x2038a0c
	b       branch_2243196
@ 0x2243180

.thumb
branch_2243180: @ 2243180 :thumb
	ldr     r0, [pc, #0x18] @ 0x224319c, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2243196
	bl      0x2038a0c
.thumb
branch_2243196: @ 2243196 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224319a


.align 2


.word 0x1484 @ 0x224319c
.thumb
Function_22431a0: @ 22431a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x207893c
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
	bl      Function_2243ec4
	mov     r0, #0xd
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22431e8, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22431e6


.align 2


.word 0x1484 @ 0x22431e8
.thumb
Function_22431ec: @ 22431ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_22432b6
	bl      Function_223b7d8
	ldr     r2, [pc, #0xd0] @ 0x22432d0, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0xf
	cmp     r2, #0xf
	bhi     branch_22432cc
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x2243216

Jumppoints_2243216:
.hword branch_22432a8 - Jumppoints_2243216 - 2
.hword branch_22432a8 - Jumppoints_2243216 - 2
.hword branch_22432b0 - Jumppoints_2243216 - 2
.hword branch_22432a0 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243298 - Jumppoints_2243216 - 2
.hword branch_2243290 - Jumppoints_2243216 - 2
.hword branch_22432cc - Jumppoints_2243216 - 2
.hword branch_22432cc - Jumppoints_2243216 - 2
.hword branch_22432a8 - Jumppoints_2243216 - 2
.hword branch_22432cc - Jumppoints_2243216 - 2
.hword branch_2243236 - Jumppoints_2243216 - 2
.thumb
branch_2243236: @ 2243236 :thumb
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_2243b04
	mov     r2, #0x45
	lsl     r2, r2, #2
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldrh    r2, [r4, r2]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243ce0
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x18]
	add     r1, r4, r1
	bl      Function_2243e28
	ldr     r0, [r4, #0x0]
	mov     r1, #0x19
	ldr     r0, [r0, #0x28]
	bl      0x202cfec
	ldr     r0, [r4, #0x0]
	mov     r1, #0xa5
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x2c]
	add     r1, r4, r1
	bl      Function_2243e44
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	ldr     r0, [r0, #0x28]
	bl      0x202cf28
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x202440c
	bl      0x206d104
	b       branch_22432cc
@ 0x2243290

.thumb
branch_2243290: @ 2243290 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
	b       branch_22432cc
@ 0x2243298

.thumb
branch_2243298: @ 2243298 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22432cc
@ 0x22432a0

.thumb
branch_22432a0: @ 22432a0 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x27
	str     r0, [r4, #0x2c]
	b       branch_22432cc
@ 0x22432a8

.thumb
branch_22432a8: @ 22432a8 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_22432cc
@ 0x22432b0

.thumb
branch_22432b0: @ 22432b0 :thumb
	bl      0x2038a0c
	b       branch_22432cc
@ 0x22432b6

.thumb
branch_22432b6: @ 22432b6 :thumb
	ldr     r0, [pc, #0x18] @ 0x22432d0, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22432cc
	bl      0x2038a0c
.thumb
branch_22432cc: @ 22432cc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22432d0

.word 0x1484 @ 0x22432d0
.thumb
Function_22432d4: @ 22432d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223baec
	mov     r0, #0xf
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22432ec, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22432ea


.align 2


.word 0x1484 @ 0x22432ec
.thumb
Function_22432f0: @ 22432f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243354
	bl      Function_223b7d8
	ldr     r1, [pc, #0x6c] @ 0x2243370, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_224336a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243318

Jumppoints_2243318:
.hword branch_2243346 - Jumppoints_2243318 - 2
.hword branch_2243346 - Jumppoints_2243318 - 2
.hword branch_224334e - Jumppoints_2243318 - 2
.hword branch_2243346 - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224333e - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_2243346 - Jumppoints_2243318 - 2
.hword branch_224336a - Jumppoints_2243318 - 2
.hword branch_2243338 - Jumppoints_2243318 - 2
.thumb
branch_2243338: @ 2243338 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_224336a
@ 0x224333e

.thumb
branch_224333e: @ 224333e :thumb
	mov     r0, #0x3
	bl      0x2038ae0
	b       branch_224336a
@ 0x2243346

.thumb
branch_2243346: @ 2243346 :thumb
	mov     r0, #0x4
	bl      0x2038ae0
	b       branch_224336a
@ 0x224334e

.thumb
branch_224334e: @ 224334e :thumb
	bl      0x2038a0c
	b       branch_224336a
@ 0x2243354

.thumb
branch_2243354: @ 2243354 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243370, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224336a
	bl      0x2038a0c
.thumb
branch_224336a: @ 224336a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224336e


.align 2


.word 0x1484 @ 0x2243370
.thumb
Function_2243374: @ 2243374 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b8d8
	mov     r0, #0x19
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2243390, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243390

.word 0x1484 @ 0x2243390
.thumb
Function_2243394: @ 2243394 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	bne     branch_22433a2
	b       branch_2243524
@ 0x22433a2

.thumb
branch_22433a2: @ 22433a2 :thumb
	bl      Function_223b7d8
	ldr     r1, [pc, #0x198] @ 0x2243540, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0x10
	bhi     branch_2243404
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22433c0

Jumppoints_22433c0:
.hword branch_2243512 - Jumppoints_22433c0 - 2
.hword branch_2243512 - Jumppoints_22433c0 - 2
.hword branch_224351a - Jumppoints_22433c0 - 2
.hword branch_2243512 - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_22434c4 - Jumppoints_22433c0 - 2
.hword branch_224345a - Jumppoints_22433c0 - 2
.hword branch_2243512 - Jumppoints_22433c0 - 2
.hword branch_224353a - Jumppoints_22433c0 - 2
.hword branch_22433e2 - Jumppoints_22433c0 - 2
.hword branch_22433e8 - Jumppoints_22433c0 - 2
.thumb
branch_22433e2: @ 22433e2 :thumb
	mov     r0, #0x1a
	str     r0, [r4, #0x2c]
	b       branch_224353a
@ 0x22433e8

.thumb
branch_22433e8: @ 22433e8 :thumb
	mov     r1, #0x13
	mov     r0, #0x1
	lsl     r1, r1, #4
	strh    r0, [r4, #0x36]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243e80
	cmp     r0, #0x0
	beq     branch_224344e
	cmp     r0, #0x1
	beq     branch_2243406
	cmp     r0, #0x2
	beq     branch_224342a
.thumb
branch_2243404: @ 2243404 :thumb
	b       branch_224353a
@ 0x2243406

.thumb
branch_2243406: @ 2243406 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x134] @ 0x2243544, (=0xf0f)
	ldr     r1, [pc, #0x138] @ 0x2243548, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x1d
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
	b       branch_224353a
@ 0x224342a

.thumb
branch_224342a: @ 224342a :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x110] @ 0x2243544, (=0xf0f)
	ldr     r1, [pc, #0x114] @ 0x2243548, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r2, #0x23
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
	b       branch_224353a
@ 0x224344e

.thumb
branch_224344e: @ 224344e :thumb
	mov     r0, #0x12
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xf8] @ 0x224354c, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	b       branch_224353a
@ 0x224345a

.thumb
branch_224345a: @ 224345a :thumb
	strh    r2, [r4, #0x36]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202da60
	cmp     r0, #0x0
	beq     branch_22434bc
	mov     r0, #0x3e
	bl      0x2073c74
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	bl      0x202da70
	mov     r0, r5
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, #0x2
	str     r0, [r4, #0x28]
	mov     r0, #0x22
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202daac
	mov     r2, r0
	mov     r0, r4
	mov     r1, r5
	mov     r3, #0x0
	bl      Function_2243bc0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x202da68
	mov     r0, r5
	bl      0x20181c4
	b       branch_224353a
@ 0x22434bc

.thumb
branch_22434bc: @ 22434bc :thumb
	mov     r0, r4
	bl      Function_2243628
	b       branch_224353a
@ 0x22434c4

.thumb
branch_22434c4: @ 22434c4 :thumb
	strh    r2, [r4, #0x36]
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202da60
	cmp     r0, #0x0
	beq     branch_224353a
	mov     r0, #0x3e
	bl      0x2073c74
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r1, r5
	ldr     r0, [r0, #0x0]
	bl      0x202da70
	mov     r0, r5
	bl      0x2076b10
	mov     r2, r0
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x200b5cc
	mov     r0, #0x3
	str     r0, [r4, #0x28]
	mov     r0, #0x22
	str     r0, [r4, #0x2c]
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x202da68
	mov     r0, r5
	bl      0x20181c4
	b       branch_224353a
@ 0x2243512

.thumb
branch_2243512: @ 2243512 :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	b       branch_224353a
@ 0x224351a

.thumb
branch_224351a: @ 224351a :thumb
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2039834
	b       branch_224353a
@ 0x2243524

.thumb
branch_2243524: @ 2243524 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243540, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224353a
	bl      0x2038a0c
.thumb
branch_224353a: @ 224353a :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x224353e


.align 2


.word 0x1484 @ 0x2243540
.word 0xf0f @ 0x2243544
.word 0xb94 @ 0x2243548
.word 0x10b0 @ 0x224354c
.thumb
Function_2243550: @ 2243550 :thumb
	push    {r4,lr}
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r4, r0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243564

.thumb
Function_2243564: @ 2243564 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_223b888
	mov     r0, #0x1b
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x2243580, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243580

.word 0x1484 @ 0x2243580
.thumb
Function_2243584: @ 2243584 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243608
	bl      Function_223b7d8
	ldr     r2, [pc, #0x8c] @ 0x2243624, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r2]
	mov     r2, r0
	add     r2, #0xf
	cmp     r2, #0xf
	bhi     branch_2243600
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x22435ae

Jumppoints_22435ae:
.hword branch_22435ee - Jumppoints_22435ae - 2
.hword branch_22435ee - Jumppoints_22435ae - 2
.hword branch_22435f8 - Jumppoints_22435ae - 2
.hword branch_22435ee - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_22435ea - Jumppoints_22435ae - 2
.hword branch_22435ee - Jumppoints_22435ae - 2
.hword branch_2243600 - Jumppoints_22435ae - 2
.hword branch_22435ce - Jumppoints_22435ae - 2
.thumb
branch_22435ce: @ 22435ce :thumb
	mov     r0, r4
	bl      Function_2243ed4
	cmp     r0, #0x0
	beq     branch_22435e4
	mov     r0, #0x16
	str     r0, [r4, #0x2c]
	mov     r0, #0x0
	strh    r0, [r4, #0x36]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22435e4

.thumb
branch_22435e4: @ 22435e4 :thumb
	mov     r0, #0x1
	strh    r0, [r4, #0x36]
	b       branch_2243600
@ 0x22435ea

.thumb
branch_22435ea: @ 22435ea :thumb
	strh    r1, [r4, #0x36]
	b       branch_2243600
@ 0x22435ee

.thumb
branch_22435ee: @ 22435ee :thumb
	str     r0, [r4, #0x3c]
	mov     r0, #0x26
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22435f8

.thumb
branch_22435f8: @ 22435f8 :thumb
	bl      0x2038a0c
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243600

.thumb
branch_2243600: @ 2243600 :thumb
	mov     r0, r4
	bl      Function_2243628
	b       branch_224361e
@ 0x2243608

.thumb
branch_2243608: @ 2243608 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243624, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224361e
	bl      0x2038a0c
.thumb
branch_224361e: @ 224361e :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243622


.align 2


.word 0x1484 @ 0x2243624
.thumb
Function_2243628: @ 2243628 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x1c]
	cmp     r1, #0x1
	beq     branch_2243638
	cmp     r1, #0x2
	beq     branch_2243646
	pop     {r4,pc}
@ 0x2243638

.thumb
branch_2243638: @ 2243638 :thumb
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2243646

.thumb
branch_2243646: @ 2243646 :thumb
	mov     r1, #0x2
	mov     r2, #0x3
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2243654

.thumb
Function_2243654: @ 2243654 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202daac
	ldr     r3, [pc, #0x68] @ 0x22436cc, (=0x251)
	mov     r1, #0x13
	lsl     r1, r1, #4
	mov     r2, r0
	ldsb    r3, [r4, r3]
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_2243bc0
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x18]
	add     r1, r4, r1
	bl      Function_2243e28
	ldr     r0, [r4, #0x0]
	mov     r1, #0x19
	ldr     r0, [r0, #0x28]
	bl      0x202cfec
	ldr     r0, [r4, #0x0]
	mov     r1, #0x13
	lsl     r1, r1, #4
	ldr     r0, [r0, #0x2c]
	add     r1, r4, r1
	bl      Function_2243e44
	ldr     r0, [r4, #0x0]
	mov     r1, #0x18
	ldr     r0, [r0, #0x28]
	bl      0x202cf28
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x202440c
	bl      0x206d104
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x202da68
	mov     r0, #0x1e
	str     r0, [r4, #0x2c]
	mov     r0, r4
	mov     r1, #0x13
	mov     r2, #0xb
	bl      Function_2243ec4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22436ca


.align 2


.word 0x251 @ 0x22436cc
.thumb
Function_22436d0: @ 22436d0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b928
	mov     r0, #0x14
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22436e8, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22436e6


.align 2


.word 0x1484 @ 0x22436e8
.thumb
Function_22436ec: @ 22436ec :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243754
	bl      Function_223b7d8
	ldr     r1, [pc, #0x70] @ 0x2243770, (=0x1484)
	mov     r2, #0x0
	str     r2, [r4, r1]
	mov     r1, r0
	add     r1, #0xf
	cmp     r1, #0xf
	bhi     branch_224376a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2243716

Jumppoints_2243716:
.hword branch_2243746 - Jumppoints_2243716 - 2
.hword branch_2243746 - Jumppoints_2243716 - 2
.hword branch_224374e - Jumppoints_2243716 - 2
.hword branch_2243744 - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_2243744 - Jumppoints_2243716 - 2
.hword branch_224373c - Jumppoints_2243716 - 2
.hword branch_2243746 - Jumppoints_2243716 - 2
.hword branch_224376a - Jumppoints_2243716 - 2
.hword branch_2243736 - Jumppoints_2243716 - 2
.thumb
branch_2243736: @ 2243736 :thumb
	mov     r0, #0x21
	str     r0, [r4, #0x2c]
	b       branch_224376a
@ 0x224373c

.thumb
branch_224373c: @ 224373c :thumb
	mov     r0, #0x3
	bl      0x2038ae0
	b       branch_224376a
@ 0x2243744

.thumb
branch_2243744: @ 2243744 :thumb
	str     r0, [r4, #0x3c]
.thumb
branch_2243746: @ 2243746 :thumb
	mov     r0, #0x4
	bl      0x2038ae0
	b       branch_224376a
@ 0x224374e

.thumb
branch_224374e: @ 224374e :thumb
	bl      0x2038a0c
	b       branch_224376a
@ 0x2243754

.thumb
branch_2243754: @ 2243754 :thumb
	ldr     r0, [pc, #0x18] @ 0x2243770, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224376a
	bl      0x2038a0c
.thumb
branch_224376a: @ 224376a :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224376e


.align 2


.word 0x1484 @ 0x2243770
.thumb
Function_2243774: @ 2243774 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x2243778

.thumb
Function_2243778: @ 2243778 :thumb
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
@ 0x2243790

.thumb
Function_2243790: @ 2243790 :thumb
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
@ 0x22437a8

.thumb
Function_22437a8: @ 22437a8 :thumb
	push    {r4,lr}
	mov     r1, #0x9
	mov     r2, r1
	mov     r4, r0
	bl      Function_223c4c0
	mov     r0, #0x24
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437bc

.thumb
Function_22437bc: @ 22437bc :thumb
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
@ 0x22437d4

.thumb
Function_22437d4: @ 22437d4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b96c
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22437ec, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22437ea


.align 2


.word 0x1484 @ 0x22437ec
.thumb
Function_22437f0: @ 22437f0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2243862
	bl      Function_223b7d8
	ldr     r1, [pc, #0x78] @ 0x224387c, (=0x1484)
	mov     r2, #0x0
	add     r0, #0xf
	str     r2, [r4, r1]
	cmp     r0, #0xf
	bhi     branch_2243878
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2243818

Jumppoints_2243818:
.hword branch_2243854 - Jumppoints_2243818 - 2
.hword branch_2243854 - Jumppoints_2243818 - 2
.hword branch_224385c - Jumppoints_2243818 - 2
.hword branch_2243854 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_224384c - Jumppoints_2243818 - 2
.hword branch_2243846 - Jumppoints_2243818 - 2
.hword branch_2243840 - Jumppoints_2243818 - 2
.hword branch_2243854 - Jumppoints_2243818 - 2
.hword branch_2243878 - Jumppoints_2243818 - 2
.hword branch_2243838 - Jumppoints_2243818 - 2
.thumb
branch_2243838: @ 2243838 :thumb
	mov     r0, r4
	bl      Function_2243628
	b       branch_2243878
@ 0x2243840

.thumb
branch_2243840: @ 2243840 :thumb
	mov     r0, r4
	bl      Function_2243628
.thumb
branch_2243846: @ 2243846 :thumb
	mov     r0, r4
	bl      Function_2243628
.thumb
branch_224384c: @ 224384c :thumb
	mov     r0, #0x3
	bl      0x2038ae0
	b       branch_2243878
@ 0x2243854

.thumb
branch_2243854: @ 2243854 :thumb
	mov     r0, #0x4
	bl      0x2038ae0
	b       branch_2243878
@ 0x224385c

.thumb
branch_224385c: @ 224385c :thumb
	bl      0x2038a0c
	b       branch_2243878
@ 0x2243862

.thumb
branch_2243862: @ 2243862 :thumb
	ldr     r0, [pc, #0x18] @ 0x224387c, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_2243878
	bl      0x2038a0c
.thumb
branch_2243878: @ 2243878 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224387c

.word 0x1484 @ 0x224387c
.thumb
Function_2243880: @ 2243880 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x34] @ 0x22438bc, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x34] @ 0x22438c0, (=0xb94)
	mov     r2, #0x8d
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_2245820
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
	bl      Function_22442e0
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22438bc

.word 0xf0f @ 0x22438bc
.word 0xb94 @ 0x22438c0
.thumb
Function_22438c4: @ 22438c4 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x3c]
	mov     r2, #0x94
	add     r1, #0xf
	cmp     r1, #0xe
	bhi     branch_2243904
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22438dc

Jumppoints_22438dc:
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_2243902 - Jumppoints_22438dc - 2
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_22438fa - Jumppoints_22438dc - 2
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_2243904 - Jumppoints_22438dc - 2
.hword branch_2243902 - Jumppoints_22438dc - 2
.hword branch_22438fe - Jumppoints_22438dc - 2
.thumb
branch_22438fa: @ 22438fa :thumb
	mov     r2, #0x1a
	b       branch_2243904
@ 0x22438fe

.thumb
branch_22438fe: @ 22438fe :thumb
	mov     r2, #0x91
	b       branch_2243904
@ 0x2243902

.thumb
branch_2243902: @ 2243902 :thumb
	mov     r2, #0x96
.thumb
branch_2243904: @ 2243904 :thumb
	ldr     r1, [pc, #0xc] @ 0x2243914, (=0xf0f)
	mov     r3, #0x1
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0xc] @ 0x2243918, (=0xb94)
	ldr     r1, [r0, r1]
	bl      Function_2245820
	pop     {r3,pc}
@ 0x2243914

.word 0xf0f @ 0x2243914
.word 0xb94 @ 0x2243918
.thumb
Function_224391c: @ 224391c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22438c4
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
@ 0x2243942


.align 2, 0


.thumb
Function_2243944: @ 2243944 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_22438c4
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
	bl      Function_22442e0
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243970

.thumb
Function_2243970: @ 2243970 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x25
	mov     r2, #0x1e
	bl      Function_223c3f4
	mov     r0, r4
	mov     r1, #0x21
	mov     r2, #0x24
	bl      Function_2243ec4
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224398a


.align 2, 0


.thumb
Function_224398c: @ 224398c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x2024804
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x20]
	bl      0x2024814
	mov     r0, #0x1f
	str     r0, [r4, #0x2c]
	bl      0x201d2e8
	ldr     r1, [pc, #0x1c] @ 0x22439c4, (=0x445)
	blx 0x20e1f6c
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x3c
	bcc     branch_22439b8
	bl      0x2022974
.thumb
branch_22439b8: @ 22439b8 :thumb
	mov     r0, #0x42
	add     r1, r5, #0x2
	lsl     r0, r0, #6
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22439c4

.word 0x445 @ 0x22439c4
.thumb
Function_22439c8: @ 22439c8 :thumb
	mov     r1, #0x42
	lsl     r1, r1, #6
	ldr     r2, [r0, r1]
	.hword  0x1e52 @ sub r2, r2, #0x1
	str     r2, [r0, r1]
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_22439dc
	mov     r1, #0x20
	str     r1, [r0, #0x2c]
.thumb
branch_22439dc: @ 22439dc :thumb
	mov     r0, #0x3
	bx      lr
@ 0x22439e0

.thumb
Function_22439e0: @ 22439e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x2024828
	cmp     r0, #0x1
	bne     branch_22439f6
	ldr     r0, [pc, #0x8] @ 0x22439fc, (=0x1088)
	ldrh    r0, [r4, r0]
	str     r0, [r4, #0x2c]
.thumb
branch_22439f6: @ 22439f6 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22439fa


.align 2


.word 0x1088 @ 0x22439fc
.thumb
Function_2243a00: @ 2243a00 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x2024828
	cmp     r0, #0x2
	bne     branch_2243a1c
	ldr     r0, [pc, #0xc] @ 0x2243a20, (=0x108a)
	ldrh    r0, [r4, r0]
	str     r0, [r4, #0x2c]
	mov     r0, r4
	bl      Function_223c5f4
.thumb
branch_2243a1c: @ 2243a1c :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243a20

.word 0x108a @ 0x2243a20
.thumb
Function_2243a24: @ 2243a24 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x2024804
	ldr     r0, [r4, #0x0]
	mov     r1, #0x2
	ldr     r0, [r0, #0x20]
	bl      0x2024814
	mov     r0, #0x23
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243a3e


.align 2, 0


.thumb
Function_2243a40: @ 2243a40 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x2024828
	cmp     r0, #0x2
	bne     branch_2243a7e
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0x20] @ 0x2243a84, (=0xf0f)
	ldr     r1, [pc, #0x20] @ 0x2243a88, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	ldr     r2, [r4, #0x28]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x25
	mov     r2, #0x1c
	bl      Function_223c3f4
.thumb
branch_2243a7e: @ 2243a7e :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2243a84

.word 0xf0f @ 0x2243a84
.word 0xb94 @ 0x2243a88
.thumb
Function_2243a8c: @ 2243a8c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_223c5f4
	bl      0x2039794
	ldr     r0, [pc, #0x44] @ 0x2243ae0, (=0x10b0)
	ldr     r0, [r4, r0]
	cmp     r0, #0x1
	bne     branch_2243abc
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
	bl      0x200f174
	b       branch_2243ad4
@ 0x2243abc

.thumb
branch_2243abc: @ 2243abc :thumb
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
	bl      0x200f174
.thumb
branch_2243ad4: @ 2243ad4 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x2243ade


.align 2


.word 0x10b0 @ 0x2243ae0
.thumb
Function_2243ae4: @ 2243ae4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x2243b00, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2243afc
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2243afc: @ 2243afc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2243b00

.word 0xbe4 @ 0x2243b00
.thumb
Function_2243b04: @ 2243b04 :thumb
	push    {r4-r6,lr}
	mov     r6, r1
	mov     r1, #0x45
	mov     r5, r0
	lsl     r1, r1, #2
	ldrh    r0, [r5, r1]
	cmp     r0, #0x12
	beq     branch_2243b5e
	mov     r0, #0x3e
	bl      0x2073c74
	mov     r2, #0x45
	lsl     r2, r2, #2
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r2]
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0xc]
	bl      0x2079c9c
	mov     r1, r4
	bl      0x20774c8
	mov     r2, #0x45
	ldr     r0, [r5, #0x0]
	lsl     r2, r2, #2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      0x202da7c
	mov     r2, #0x45
	lsl     r2, r2, #2
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r2]
	.hword  0x1c92 @ add r2, r2, #0x2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0xc]
	bl      0x2079968
	mov     r0, r4
	bl      0x20181c4
	b       branch_2243ba6
@ 0x2243b5e

.thumb
branch_2243b5e: @ 2243b5e :thumb
	ldr     r0, [r5, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      0x207a0fc
	mov     r4, r0
	bl      0x207893c
	mov     r2, #0x45
	ldr     r0, [r5, #0x0]
	lsl     r2, r2, #2
	ldrh    r2, [r5, r2]
	ldr     r0, [r0, #0x0]
	mov     r1, r4
	bl      0x202da7c
	ldr     r1, [pc, #0x34] @ 0x2243bb8, (=0x116)
	ldr     r0, [r5, #0x0]
	ldrh    r1, [r5, r1]
	ldr     r0, [r0, #0x8]
	bl      0x207a080
	ldr     r0, [r5, #0x0]
	ldr     r1, [pc, #0x2c] @ 0x2243bbc, (=0x1b9)
	ldr     r0, [r0, #0x8]
	bl      0x207a230
	cmp     r0, #0x0
	bne     branch_2243ba6
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x202cc98
	bl      0x202cca8
.thumb
branch_2243ba6: @ 2243ba6 :thumb
	cmp     r6, #0x0
	beq     branch_2243bb4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      0x202da68
.thumb
branch_2243bb4: @ 2243bb4 :thumb
	pop     {r4-r6,pc}
@ 0x2243bb6


.align 2


.word 0x116 @ 0x2243bb8
.word 0x1b9 @ 0x2243bbc
.thumb
Function_2243bc0: @ 2243bc0 :thumb
	push    {r0-r3}
.thumb
Function_2243bc2: @ 2243bc2 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r6, r3
	bl      0x2074470
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x20]
	bl      0x202f180
	mov     r0, #0x12
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	cmp     r0, #0x6
	bne     branch_2243bf4
	mov     r0, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_2243bf4: @ 2243bf4 :thumb
	cmp     r6, #0x0
	beq     branch_2243c70
	mov     r1, #0x46
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	ldr     r1, [pc, #0xd0] @ 0x2243cdc, (=0x1ed)
	cmp     r0, r1
	bne     branch_2243c52
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x0
	bne     branch_2243c38
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x56
	bne     branch_2243c52
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x0
	bne     branch_2243c52
.thumb
branch_2243c38: @ 2243c38 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x20507e4
	mov     r6, r0
	bl      0x206b5f8
	cmp     r0, #0x0
	bne     branch_2243c52
	mov     r0, r6
	mov     r1, #0x1
	bl      0x206b608
.thumb
branch_2243c52: @ 2243c52 :thumb
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x0
	bl      0x2074b30
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074b30
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      Function_2243de4
.thumb
branch_2243c70: @ 2243c70 :thumb
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x12
	bne     branch_2243c98
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      0x207a048
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	mov     r1, #0x4a
	mov     r2, #0x12
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_2243cc8
@ 0x2243c98

.thumb
branch_2243c98: @ 2243c98 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x20
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x4
	bl      0x20799f0
	mov     r0, r4
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	bl      0x20798a0
	mov     r0, #0x4a
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2243cc8: @ 2243cc8 :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0x0]
	bl      0x202da68
	add     sp, #0x8
	pop     {r4-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2243cdc

.word 0x1ed @ 0x2243cdc
.thumb
Function_2243ce0: @ 2243ce0 :thumb
	push    {r0-r3}
.thumb
Function_2243ce2: @ 2243ce2 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	mov     r4, r1
	ldr     r0, [r0, #0x20]
	bl      0x202f180
	mov     r0, #0x12
	str     r0, [sp, #0x20]
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	cmp     r0, #0x6
	bne     branch_2243d06
	mov     r0, #0x0
	str     r0, [sp, #0x20]
.thumb
branch_2243d06: @ 2243d06 :thumb
	mov     r0, r4
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	ldr     r1, [pc, #0xcc] @ 0x2243de0, (=0x1ed)
	cmp     r0, r1
	bne     branch_2243d5a
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x0
	bne     branch_2243d40
	mov     r0, r4
	mov     r1, #0x99
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x56
	bne     branch_2243d5a
	mov     r0, r4
	mov     r1, #0x6e
	mov     r2, #0x0
	bl      0x2074470
	cmp     r0, #0x0
	bne     branch_2243d5a
.thumb
branch_2243d40: @ 2243d40 :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x20507e4
	mov     r6, r0
	bl      0x206b5f8
	cmp     r0, #0x0
	bne     branch_2243d5a
	mov     r0, r6
	mov     r1, #0x1
	bl      0x206b608
.thumb
branch_2243d5a: @ 2243d5a :thumb
	mov     r1, #0x46
	add     r0, sp, #0x0
	strb    r1, [r0, #0x0]
	mov     r0, r4
	mov     r1, #0x9
	add     r2, sp, #0x0
	bl      0x2074b30
	mov     r0, r4
	mov     r1, #0x6f
	mov     r2, #0x0
	bl      0x2074b30
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x12
	bne     branch_2243d9c
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	ldr     r0, [r0, #0x8]
	bl      0x207a048
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	mov     r1, #0x4a
	mov     r2, #0x12
	lsl     r1, r1, #2
	str     r2, [r5, r1]
	.hword  0x1e42 @ sub r2, r0, #0x1
	add     r0, r1, #0x4
	str     r2, [r5, r0]
	b       branch_2243dcc
@ 0x2243d9c

.thumb
branch_2243d9c: @ 2243d9c :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x20
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x4
	bl      0x20799f0
	mov     r0, r4
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0xc]
	bl      0x20798a0
	mov     r0, #0x4a
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	ldr     r1, [sp, #0x4]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r5, r0]
.thumb
branch_2243dcc: @ 2243dcc :thumb
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	ldr     r0, [r0, #0x0]
	bl      Function_2243de4
	add     sp, #0x8
	pop     {r4-r6}
	pop     {r3}
	add     sp, #0x10
	bx      r3
@ 0x2243de0

.word 0x1ed @ 0x2243de0
.thumb
Function_2243de4: @ 2243de4 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	add     r0, sp, #0xc
	add     r1, sp, #0x0
	blx 0x21d806c
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
	bne     branch_2243e1c
	mov     r0, r5
	bl      0x202daa4
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e1c

.thumb
branch_2243e1c: @ 2243e1c :thumb
	mov     r0, r5
	bl      0x202da94
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e26


.align 2, 0


.thumb
Function_2243e28: @ 2243e28 :thumb
	push    {r4,lr}
	ldr     r3, [pc, #0x14] @ 0x2243e40, (=0x11e)
	mov     r4, r1
	add     r2, r3, #0x1
	ldrb    r1, [r4, r3]
	.hword  0x1d5b @ add r3, r3, #0x5
	ldrb    r2, [r4, r2]
	ldrb    r3, [r4, r3]
	bl      0x2038fdc
	pop     {r4,pc}
@ 0x2243e3e


.align 2


.word 0x11e @ 0x2243e40
.thumb
Function_2243e44: @ 2243e44 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x75
	add     r2, sp, #0x4
	bl      0x2074470
	mov     r0, r4
	bl      0x2075d6c
	mov     r3, r0
	mov     r0, #0x3e
	str     r0, [sp, #0x0]
	add     r0, #0xce
	add     r0, r4, r0
	add     r4, #0xf6
	ldrb    r1, [r4, #0x0]
	add     r2, sp, #0x4
	bl      0x202c1ec
	mov     r1, r0
	mov     r0, r5
	mov     r2, #0x4
	bl      0x202b758
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x2243e7e


.align 2, 0


.thumb
Function_2243e80: @ 2243e80 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      Function_2241494
	cmp     r0, #0x0
	beq     branch_2243e9e
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	cmp     r0, #0x6
	bne     branch_2243e9e
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2243e9e

.thumb
branch_2243e9e: @ 2243e9e :thumb
	ldr     r0, [pc, #0x20] @ 0x2243ec0, (=0x10ac)
	ldrh    r1, [r4, r0]
	mov     r0, #0x87
	lsl     r0, r0, #2
	cmp     r1, r0
	bne     branch_2243eba
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x8]
	bl      0x207a0f8
	cmp     r0, #0x6
	bne     branch_2243eba
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243eba

.thumb
branch_2243eba: @ 2243eba :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243ebe


.align 2


.word 0x10ac @ 0x2243ec0
.thumb
Function_2243ec4: @ 2243ec4 :thumb
	ldr     r3, [pc, #0x8] @ 0x2243ed0, (=0x1088)
	strh    r1, [r0, r3]
	add     r1, r3, #0x2
	strh    r2, [r0, r1]
	bx      lr
@ 0x2243ece


.align 2


.word 0x1088 @ 0x2243ed0
.thumb
Function_2243ed4: @ 2243ed4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x0]
	bl      0x202da60
	cmp     r0, #0x0
	bne     branch_2243eee
	ldrh    r0, [r4, #0x36]
	cmp     r0, #0x0
	beq     branch_2243eee
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2243eee

.thumb
branch_2243eee: @ 2243eee :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x2243ef2


.align 2, 0


.thumb
Function_2243ef4: @ 2243ef4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x30
	mov     r5, r0
	mov     r4, r1
	bl      Function_2244328
	ldr     r2, [pc, #0x8c] @ 0x2243f90, (=0xd78)
	add     r0, sp, #0x0
	mov     r1, r5
	add     r2, r5, r2
	mov     r3, #0x2
	bl      Function_223c300
	mov     r0, #0x2
	str     r0, [sp, #0x28]
	lsl     r0, r0, #18
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x7c] @ 0x2243f94, (=0x182000)
	str     r0, [sp, #0xc]
	add     r0, sp, #0x0
	bl      0x2021aa0
	ldr     r1, [pc, #0x74] @ 0x2243f98, (=0xed4)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [pc, #0x68] @ 0x2243f98, (=0xed4)
	mov     r1, #0x7
	mul     r1, r4
	ldr     r0, [r5, r0]
	.hword  0x1cc9 @ add r1, r1, #0x3
	bl      0x2021d6c
	ldr     r0, [pc, #0x5c] @ 0x2243f98, (=0xed4)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x2021cac
	ldr     r4, [pc, #0x54] @ 0x2243f9c, (=0x224631e)
	mov     r7, #0x0
	mov     r6, #0xe
.thumb
branch_2243f4a: @ 2243f4a :thumb
	add     r0, sp, #0x0
	bl      0x2021aa0
	ldr     r1, [pc, #0x4c] @ 0x2243fa0, (=0xed8)
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r0, [pc, #0x40] @ 0x2243fa0, (=0xed8)
	mov     r1, r6
	ldr     r0, [r5, r0]
	bl      0x2021d6c
	ldr     r0, [pc, #0x34] @ 0x2243fa0, (=0xed8)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2021cac
	ldr     r0, [pc, #0x2c] @ 0x2243fa0, (=0xed8)
	ldrh    r1, [r4, #0x0]
	ldrh    r2, [r4, #0x2]
	ldr     r0, [r5, r0]
	bl      Function_224419c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x7
	blt     branch_2243f4a
	add     sp, #0x30
	pop     {r3-r7,pc}
@ 0x2243f8e


.align 2


.word 0xd78 @ 0x2243f90
.word 0x182000 @ 0x2243f94
.word 0xed4 @ 0x2243f98
.word 0x224631e @ 0x2243f9c
.word 0xed8 @ 0x2243fa0
.thumb
Function_2243fa4: @ 2243fa4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_2243ef4
	ldr     r0, [pc, #0x30] @ 0x2243fe0, (=0x2244009)
	mov     r1, #0x10
	mov     r2, #0x5
	mov     r3, #0x3e
	bl      0x200679c
	ldr     r1, [pc, #0x28] @ 0x2243fe4, (=0x108c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      0x201ced0
	mov     r1, #0x0
	mov     r2, r1
	str     r1, [r0, #0x0]
	sub     r2, #0x28
	str     r2, [r0, #0x4]
	str     r4, [r0, #0x8]
	str     r5, [r0, #0xc]
	bl      Function_2243fec
	ldr     r0, [pc, #0x10] @ 0x2243fe8, (=0x62f)
	bl      0x2005748
	pop     {r3-r5,pc}
@ 0x2243fde


.align 2


.word 0x2244009 @ 0x2243fe0
.word 0x108c @ 0x2243fe4
.word 0x62f @ 0x2243fe8
.thumb
Function_2243fec: @ 2243fec :thumb
	mov     r3, r0
	ldr     r2, [r3, #0xc]
	ldr     r0, [pc, #0xc] @ 0x2244000, (=0xed4)
	ldr     r3, [r3, #0x8]
	ldr     r0, [r2, r0]
	mov     r2, #0x7
	mul     r2, r3
	ldr     r3, [pc, #0x8] @ 0x2244004, (=0x2021d6d)
	add     r1, r1, r2
	bx      r3
@ 0x2244000

.word 0xed4 @ 0x2244000
.word 0x2021d6d @ 0x2244004
.thumb
Function_2244008: @ 2244008 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r0
	ldr     r0, [r4, #0x0]
	ldr     r5, [r4, #0xc]
	cmp     r0, #0x3
	bhi     branch_22440a4
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2244022

Jumppoints_2244022:
.hword branch_224402a - Jumppoints_2244022 - 2
.hword branch_2244050 - Jumppoints_2244022 - 2
.hword branch_224406a - Jumppoints_2244022 - 2
.hword branch_2244090 - Jumppoints_2244022 - 2
.thumb
branch_224402a: @ 224402a :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa0
	ble     branch_224403e
	mov     r0, #0xa0
	str     r0, [r4, #0x4]
	mov     r1, #0x1
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243fec
.thumb
branch_224403e: @ 224403e :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	add     r2, r0, #0x5
	ldr     r0, [pc, #0x60] @ 0x22440a8, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_224419c
	pop     {r4-r6,pc}
@ 0x2244050

.thumb
branch_2244050: @ 2244050 :thumb
	ldr     r0, [pc, #0x54] @ 0x22440a8, (=0xed4)
	ldr     r0, [r5, r0]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_22440a4
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2243fec
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	pop     {r4-r6,pc}
@ 0x224406a

.thumb
branch_224406a: @ 224406a :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x82
	bge     branch_224407e
	mov     r0, #0x82
	str     r0, [r4, #0x4]
	mov     r1, #0x3
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243fec
.thumb
branch_224407e: @ 224407e :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	.hword  0x1e82 @ sub r2, r0, #0x2
	ldr     r0, [pc, #0x20] @ 0x22440a8, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_224419c
	pop     {r4-r6,pc}
@ 0x2244090

.thumb
branch_2244090: @ 2244090 :thumb
	ldr     r0, [pc, #0x18] @ 0x22440ac, (=0x60d)
	bl      0x2005748
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x14] @ 0x22440b0, (=0x1090)
	mov     r2, #0x1
	strh    r2, [r1, r0]
	mov     r0, r6
	bl      0x20067d0
.thumb
branch_22440a4: @ 22440a4 :thumb
	pop     {r4-r6,pc}
@ 0x22440a6


.align 2


.word 0xed4 @ 0x22440a8
.word 0x60d @ 0x22440ac
.word 0x1090 @ 0x22440b0
.thumb
Function_22440b4: @ 22440b4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r0, [pc, #0x30] @ 0x22440ec, (=0x22440f9)
	mov     r1, #0x10
	mov     r2, #0x5
	mov     r3, #0x3e
	bl      0x200679c
	ldr     r1, [pc, #0x28] @ 0x22440f0, (=0x108c)
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	bl      0x201ced0
	mov     r1, #0x0
	str     r1, [r0, #0x0]
	mov     r1, #0x82
	str     r1, [r0, #0x4]
	str     r4, [r0, #0x8]
	mov     r1, #0x5
	str     r5, [r0, #0xc]
	bl      Function_2243fec
	ldr     r0, [pc, #0x10] @ 0x22440f4, (=0x60e)
	bl      0x2005748
	pop     {r3-r5,pc}
@ 0x22440ea


.align 2


.word 0x22440f9 @ 0x22440ec
.word 0x108c @ 0x22440f0
.word 0x60e @ 0x22440f4
.thumb
Function_22440f8: @ 22440f8 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x0]
	ldr     r5, [r4, #0xc]
	cmp     r1, #0x3
	bhi     branch_2244192
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2244110

Jumppoints_2244110:
.hword branch_2244118 - Jumppoints_2244110 - 2
.hword branch_2244140 - Jumppoints_2244110 - 2
.hword branch_2244162 - Jumppoints_2244110 - 2
.hword branch_2244188 - Jumppoints_2244110 - 2
.thumb
branch_2244118: @ 2244118 :thumb
	ldr     r0, [r4, #0x4]
	cmp     r0, #0xa0
	ble     branch_224412e
	mov     r0, #0xa0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2243fec
.thumb
branch_224412e: @ 224412e :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	add     r2, r0, #0x2
	ldr     r0, [pc, #0x5c] @ 0x2244194, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_224419c
	pop     {r3-r5,pc}
@ 0x2244140

.thumb
branch_2244140: @ 2244140 :thumb
	ldr     r0, [pc, #0x50] @ 0x2244194, (=0xed4)
	ldr     r0, [r5, r0]
	bl      0x2021fd0
	cmp     r0, #0x0
	bne     branch_2244192
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_2243fec
	mov     r0, #0x2
	str     r0, [r4, #0x0]
	mov     r0, #0x63
	lsl     r0, r0, #4
	bl      0x2005748
	pop     {r3-r5,pc}
@ 0x2244162

.thumb
branch_2244162: @ 2244162 :thumb
	mov     r0, #0x13
	ldr     r1, [r4, #0x4]
	mvn     r0, r0
	cmp     r1, r0
	bge     branch_2244176
	mov     r1, #0x3
	mov     r0, r4
	str     r1, [r4, #0x0]
	bl      Function_2243fec
.thumb
branch_2244176: @ 2244176 :thumb
	ldr     r0, [r4, #0x4]
	mov     r1, #0x80
	.hword  0x1f42 @ sub r2, r0, #0x5
	ldr     r0, [pc, #0x14] @ 0x2244194, (=0xed4)
	str     r2, [r4, #0x4]
	ldr     r0, [r5, r0]
	bl      Function_224419c
	pop     {r3-r5,pc}
@ 0x2244188

.thumb
branch_2244188: @ 2244188 :thumb
	ldr     r1, [pc, #0xc] @ 0x2244198, (=0x1090)
	mov     r2, #0x1
	strh    r2, [r5, r1]
	bl      0x20067d0
.thumb
branch_2244192: @ 2244192 :thumb
	pop     {r3-r5,pc}
@ 0x2244194

.word 0xed4 @ 0x2244194
.word 0x1090 @ 0x2244198
.thumb
Function_224419c: @ 224419c :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r0
	mov     r5, r2
	cmp     r1, #0x0
	ble     branch_22441ba
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_22441c8
@ 0x22441ba

.thumb
branch_22441ba: @ 22441ba :thumb
	lsl     r0, r1, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_22441c8: @ 22441c8 :thumb
	blx 0x20e1740
	sub     r5, #0x8
	str     r0, [sp, #0x0]
	cmp     r5, #0x0
	ble     branch_22441e6
	lsl     r0, r5, #12
	blx 0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx 0x20e0b00
	b       branch_22441f4
@ 0x22441e6

.thumb
branch_22441e6: @ 22441e6 :thumb
	lsl     r0, r5, #12
	blx 0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx 0x20e1a9c
.thumb
branch_22441f4: @ 22441f4 :thumb
	blx 0x20e1740
	mov     r1, #0x1
	lsl     r1, r1, #20
	add     r0, r0, r1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x2244210

.thumb
Function_2244210: @ 2244210 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x224422c, (=0x224633a)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2244226
	cmp     r0, r4
	blt     branch_224422a
.thumb
branch_2244226: @ 2244226 :thumb
	mov     r0, #0x0
	mvn     r0, r0
.thumb
branch_224422a: @ 224422a :thumb
	pop     {r4,pc}
@ 0x224422c

.word 0x224633a @ 0x224422c
.thumb
Function_2244230: @ 2244230 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	mov     r0, r1
	beq     branch_224424a
	mov     r0, r2
	cmp     r0, #0x1
	bne     branch_224424a
	ldr     r0, [pc, #0x7c] @ 0x22442c4, (=0x64f)
	bl      0x2005748
.thumb
branch_224424a: @ 224424a :thumb
	ldr     r4, [sp, #0x4]
	mov     r0, #0xe
	mov     r6, #0x0
	str     r0, [sp, #0x10]
	mov     r5, r4
	mov     r7, #0x11
.thumb
branch_2244256: @ 2244256 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r6, r0
	bge     branch_22442a0
	ldr     r0, [pc, #0x68] @ 0x22442c8, (=0x34a)
	ldr     r1, [sp, #0x4]
	ldrb    r0, [r4, r0]
	mov     r3, #0xdd
	mov     r2, r1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x60] @ 0x22442cc, (=0x1098)
	lsl     r3, r3, #2
	ldr     r0, [r1, r0]
	ldr     r1, [pc, #0x60] @ 0x22442d0, (=0x10a0)
	ldrb    r3, [r4, r3]
	ldr     r1, [r2, r1]
	mov     r2, r6
	bl      Function_2244374
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ldr     r0, [pc, #0x54] @ 0x22442d4, (=0xed8)
	beq     branch_224428c
	ldr     r0, [r5, r0]
	ldr     r1, [sp, #0x10]
	bl      0x2021d6c
	b       branch_2244294
@ 0x224428c

.thumb
branch_224428c: @ 224428c :thumb
	ldr     r0, [r5, r0]
	mov     r1, r7
	bl      0x2021d6c
.thumb
branch_2244294: @ 2244294 :thumb
	ldr     r0, [pc, #0x3c] @ 0x22442d4, (=0xed8)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x2021cac
	b       branch_22442aa
@ 0x22442a0

.thumb
branch_22442a0: @ 22442a0 :thumb
	ldr     r0, [pc, #0x30] @ 0x22442d4, (=0xed8)
	mov     r1, #0x0
	ldr     r0, [r5, r0]
	bl      0x2021cac
.thumb
branch_22442aa: @ 22442aa :thumb
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
	blt     branch_2244256
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x22442c4

.word 0x64f @ 0x22442c4
.word 0x34a @ 0x22442c8
.word 0x1098 @ 0x22442cc
.word 0x10a0 @ 0x22442d0
.word 0xed8 @ 0x22442d4
.thumb
Function_22442d8: @ 22442d8 :thumb
	lsl     r0, r0, #2
	add     r0, #0xe
	bx      lr
@ 0x22442de


.align 2, 0


.thumb
Function_22442e0: @ 22442e0 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x40] @ 0x2244324, (=0xed8)
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_22442e8: @ 22442e8 :thumb
	ldr     r0, [r5, r7]
	bl      0x2021d34
	cmp     r0, #0x0
	beq     branch_224431a
	ldr     r0, [pc, #0x30] @ 0x2244324, (=0xed8)
	ldr     r0, [r5, r0]
	bl      0x2021e24
	mov     r6, r0
	mov     r0, r4
	bl      Function_22442d8
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r6, r0
	beq     branch_224431a
	mov     r0, r4
	bl      Function_22442d8
	mov     r1, r0
	ldr     r0, [pc, #0x10] @ 0x2244324, (=0xed8)
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r0, [r5, r0]
	bl      0x2021d6c
.thumb
branch_224431a: @ 224431a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x7
	blt     branch_22442e8
	pop     {r3-r7,pc}
@ 0x2244324

.word 0xed8 @ 0x2244324
.thumb
Function_2244328: @ 2244328 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r2, [pc, #0x38] @ 0x2244368, (=0x10a0)
	mov     r4, r0
	mov     r0, #0x56
	mov     r1, #0x7
	add     r2, r4, r2
	mov     r3, #0x3e
	bl      0x2006f88
	ldr     r3, [pc, #0x2c] @ 0x224436c, (=0x109c)
	mov     r1, #0x9
	str     r0, [r4, r3]
	mov     r0, #0x3e
	.hword  0x1f1b @ sub r3, r3, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x56
	mov     r2, #0x1
	add     r3, r4, r3
	bl      0x2006f50
	ldr     r1, [pc, #0x1c] @ 0x2244370, (=0x1094)
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	lsl     r1, r1, #14
	blx 0x20c2c54
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244366


.align 2


.word 0x10a0 @ 0x2244368
.word 0x109c @ 0x224436c
.word 0x1094 @ 0x2244370
.thumb
Function_2244374: @ 2244374 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	ldr     r0, [sp, #0x18]
	mov     r1, r3
	mov     r5, r2
	bl      0x205ca0c
	mov     r4, r0
	mov     r0, #0x6
	lsl     r0, r0, #8
	ldr     r1, [r7, #0x14]
	mul     r0, r4
	add     r0, r1, r0
	ldr     r1, [pc, #0x1c] @ 0x22443b0, (=0x2246310)
	lsl     r2, r5, #1
	ldrh    r1, [r1, r2]
	mov     r2, #0x2
	ldr     r6, [r6, #0xc]
	lsl     r2, r2, #8
	blx 0x20c0314
	lsl     r0, r4, #5
	add     r1, r5, #0x2
	add     r0, r6, r0
	lsl     r1, r1, #5
	mov     r2, #0x20
	blx 0x20c01b8
	pop     {r3-r7,pc}
@ 0x22443b0

.word 0x2246310 @ 0x22443b0
.thumb
Function_22443b4: @ 22443b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x22443d4, (=0x1090)
	ldrh    r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_22443d0
	add     r0, #0xc
	ldr     r0, [r4, r0]
	bl      0x20181c4
	ldr     r0, [pc, #0xc] @ 0x22443d8, (=0x1094)
	ldr     r0, [r4, r0]
	bl      0x20181c4
.thumb
branch_22443d0: @ 22443d0 :thumb
	pop     {r4,pc}
@ 0x22443d2


.align 2


.word 0x1090 @ 0x22443d4
.word 0x1094 @ 0x22443d8
.thumb
Function_22443dc: @ 22443dc :thumb
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
	bl      Function_22411d8
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
	bl      0x208c324
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
	bl      0x202d79c
	mov     r1, r4
	add     r1, #0xdc
	str     r0, [r1, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x30] @ 0x2244484, (=0x224635c)
	add     r0, #0xbc
	bl      0x208d720
	ldr     r1, [r4, #0x0]
	mov     r0, r4
	ldr     r1, [r1, #0x1c]
	add     r0, #0xbc
	bl      0x208e9c0
	mov     r1, r4
	ldr     r0, [pc, #0x20] @ 0x2244488, (=0x20f410c)
	add     r1, #0xbc
	mov     r2, #0x3e
	bl      0x20067e8
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x42
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x2244482


.align 2


.word 0x224635c @ 0x2244484
.word 0x20f410c @ 0x2244488
.thumb
Function_224448c: @ 224448c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x3
	bl      0x2006844
	cmp     r0, #0x0
	beq     branch_22444b4
	mov     r0, r5
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x2006814
	ldr     r2, [r5, #0x24]
	mov     r0, r5
	mov     r1, #0x5
	bl      Function_223c4c0
	mov     r4, #0x4
.thumb
branch_22444b4: @ 22444b4 :thumb
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22444b8

.thumb
Function_22444b8: @ 22444b8 :thumb
	push    {r3,lr}
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x22444c2


.align 2, 0


.thumb
Function_22444c4: @ 22444c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x3e
	bl      0x2073c74
	ldr     r1, [pc, #0x19c] @ 0x224466c, (=0x10a4)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x24]
	cmp     r0, #0xa
	bls     branch_22444da
	b       branch_2244644
@ 0x22444da

.thumb
branch_22444da: @ 22444da :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x22444e6

Jumppoints_22444e6:
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_2244644 - Jumppoints_22444e6 - 2
.hword branch_22444fc - Jumppoints_22444e6 - 2
.hword branch_2244542 - Jumppoints_22444e6 - 2
.hword branch_22445dc - Jumppoints_22444e6 - 2
.hword branch_2244588 - Jumppoints_22444e6 - 2
.thumb
branch_22444fc: @ 22444fc :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2076b10
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
	bl      Function_224486c
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
	b       branch_2244644
@ 0x2244542

.thumb
branch_2244542: @ 2244542 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2076b10
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
	bl      Function_224486c
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
	b       branch_2244644
@ 0x2244588

.thumb
branch_2244588: @ 2244588 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      0x2076b10
	mov     r1, r4
	add     r1, #0xf0
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0xd0] @ 0x224466c, (=0x10a4)
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, r1]
	bl      0x202da70
	ldr     r0, [pc, #0xc4] @ 0x224466c, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      0x2076b10
	mov     r1, r4
	add     r1, #0xec
	str     r0, [r1, #0x0]
	mov     r0, #0x13
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_224486c
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
	b       branch_2244644
@ 0x22445dc

.thumb
branch_22445dc: @ 22445dc :thumb
	ldr     r0, [r4, #0x0]
	ldr     r1, [r4, r1]
	ldr     r0, [r0, #0x0]
	bl      0x202da70
	ldr     r0, [pc, #0x84] @ 0x224466c, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      0x2076b10
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
	bl      0x2076b10
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
	bl      Function_224486c
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
branch_2244644: @ 2244644 :thumb
	ldr     r0, [r4, #0x0]
	mov     r2, #0x3e
	ldr     r1, [r0, #0x24]
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r1, [r4, r0]
	mov     r1, r4
	ldr     r0, [pc, #0x1c] @ 0x2244670, (=0x2246368)
	add     r1, #0xec
	bl      0x20067e8
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x42
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r0, #0x2
	pop     {r4,pc}
@ 0x224466c

.word 0x10a4 @ 0x224466c
.word 0x2246368 @ 0x2244670
.thumb
Function_2244674: @ 2244674 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r4, r0
	ldr     r0, [r4, #0x2c]
	mov     r6, #0x3
	cmp     r0, #0x0
	beq     branch_224468a
	cmp     r0, #0x1
	bne     branch_2244688
	b       branch_2244808
@ 0x2244688

.thumb
branch_2244688: @ 2244688 :thumb
	b       branch_224483e
@ 0x224468a

.thumb
branch_224468a: @ 224468a :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x2006844
	cmp     r0, #0x0
	bne     branch_224469a
	b       branch_224483e
@ 0x224469a

.thumb
branch_224469a: @ 224469a :thumb
	mov     r0, r4
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x2006814
	ldr     r1, [r4, #0x24]
	cmp     r1, #0x9
	bne     branch_2244720
	mov     r0, r4
	bl      Function_22448a8
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r7, r0
	bl      0x2074470
	mov     r3, r0
	add     r0, sp, #0x30
	lsl     r3, r3, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      0x2076b94
	str     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2244712
	ldr     r5, [r4, #0x0]
	ldr     r0, [r5, #0x20]
	bl      0x2056b24
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
	bl      0x207ae68
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_224483e
@ 0x2244712

.thumb
branch_2244712: @ 2244712 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_224483e
@ 0x2244720

.thumb
branch_2244720: @ 2244720 :thumb
	cmp     r1, #0x8
	beq     branch_2244728
	cmp     r1, #0xa
	bne     branch_22447fa
.thumb
branch_2244728: @ 2244728 :thumb
	mov     r0, r4
	bl      Function_22448a8
	mov     r7, r0
	mov     r0, #0x3e
	bl      0x2073c74
	str     r0, [sp, #0x20]
	ldr     r0, [r4, #0x0]
	ldr     r1, [sp, #0x20]
	ldr     r0, [r0, #0x0]
	bl      0x202da70
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	mov     r5, r0
	ldr     r0, [sp, #0x20]
	mov     r1, #0x5
	mov     r2, #0x0
	bl      0x2074470
	cmp     r5, r0
	bne     branch_2244776
	mov     r1, #0x0
	mov     r0, r7
	mov     r2, r1
	bl      0x2074470
	mov     r5, r0
	mov     r1, #0x0
	ldr     r0, [sp, #0x20]
	mov     r2, r1
	bl      0x2074470
	cmp     r5, r0
	beq     branch_22447e6
.thumb
branch_2244776: @ 2244776 :thumb
	mov     r0, r7
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2074470
	mov     r3, r0
	add     r0, sp, #0x2c
	lsl     r3, r3, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	mov     r1, r7
	mov     r2, #0x1
	lsr     r3, r3, #16
	bl      0x2076b94
	str     r0, [sp, #0x28]
	cmp     r0, #0x0
	beq     branch_22447d8
	ldr     r5, [r4, #0x0]
	ldr     r0, [r5, #0x20]
	bl      0x2056b24
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
	bl      0x207ae68
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x1
	str     r0, [r4, #0x2c]
	b       branch_22447f2
@ 0x22447d8

.thumb
branch_22447d8: @ 22447d8 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_22447f2
@ 0x22447e6

.thumb
branch_22447e6: @ 22447e6 :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
.thumb
branch_22447f2: @ 22447f2 :thumb
	ldr     r0, [sp, #0x20]
	bl      0x20181c4
	b       branch_224483e
@ 0x22447fa

.thumb
branch_22447fa: @ 22447fa :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r6, #0x4
	b       branch_224483e
@ 0x2244808

.thumb
branch_2244808: @ 2244808 :thumb
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x207b0d0
	cmp     r0, #0x0
	beq     branch_224483e
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x207b0e0
	mov     r0, r4
	bl      Function_22448e4
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x14] @ 0x2244844, (=0xffff1fff)
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xc
	bl      Function_223c4c0
	mov     r6, #0x4
.thumb
branch_224483e: @ 224483e :thumb
	mov     r0, r6
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x2244844

.word 0xffff1fff @ 0x2244844
.thumb
Function_2244848: @ 2244848 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2244868, (=0x10a4)
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, #0x49
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20181c4
	mov     r0, r4
	bl      Function_223c4c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244868

.word 0x10a4 @ 0x2244868
.thumb
Function_224486c: @ 224486c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x3e
	bl      0x2025e6c
	mov     r4, r0
	bl      0x2025e8c
	mov     r1, #0x43
	lsl     r1, r1, #2
	mov     r0, r4
	add     r1, r5, r1
	bl      0x2025ec0
	ldr     r1, [pc, #0x14] @ 0x22448a0, (=0x122)
	mov     r0, r4
	ldrb    r1, [r5, r1]
	bl      0x2025fd0
	ldr     r1, [pc, #0x10] @ 0x22448a4, (=0x123)
	mov     r0, r4
	ldrb    r1, [r5, r1]
	bl      0x2025fdc
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x22448a0

.word 0x122 @ 0x22448a0
.word 0x123 @ 0x22448a4
.thumb
Function_22448a8: @ 22448a8 :thumb
	push    {r3,lr}
	cmp     r1, #0x9
	bne     branch_22448c2
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
@ 0x22448c2

.thumb
branch_22448c2: @ 22448c2 :thumb
	cmp     r1, #0xa
	bne     branch_22448ce
	mov     r1, #0x13
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x22448ce

.thumb
branch_22448ce: @ 22448ce :thumb
	cmp     r1, #0x8
	bne     branch_22448da
	mov     r1, #0x13
	lsl     r1, r1, #4
	add     r0, r0, r1
	pop     {r3,pc}
@ 0x22448da

.thumb
branch_22448da: @ 22448da :thumb
	bl      0x2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x22448e2


.align 2, 0


.thumb
Function_22448e4: @ 22448e4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldr     r1, [r5, #0x24]
	bl      Function_22448a8
	mov     r2, #0x4a
	lsl     r2, r2, #2
	mov     r4, r0
	ldr     r0, [r5, r2]
	cmp     r0, #0x12
	bne     branch_2244914
	ldr     r0, [r5, #0x0]
	add     r1, r2, #0x4
	ldr     r0, [r0, #0x8]
	ldr     r1, [r5, r1]
	bl      0x207a0fc
	mov     r1, r0
	mov     r0, r4
	bl      0x20775ec
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2244914

.thumb
branch_2244914: @ 2244914 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [r5, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r0, [r0, #0xc]
	ldr     r2, [r5, r2]
	bl      0x2079968
	ldr     r0, [r5, #0x0]
	add     r1, sp, #0x4
	ldr     r0, [r0, #0xc]
	add     r2, sp, #0x0
	bl      0x20799f0
	mov     r0, r4
	bl      0x2076b10
	mov     r2, r0
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r0, #0xc]
	bl      0x20798a0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x224494a


.align 2, 0


.thumb
Function_224494c: @ 224494c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      Function_2244f28
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x3e
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldr     r0, [r4, #0x4]
	bl      Function_2244a78
	mov     r0, r4
	bl      Function_2244b88
	mov     r0, r4
	bl      Function_2244e44
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x20]
	bl      0x2038438
	mov     r0, r4
	bl      Function_2245930
	blx 0x21d7a8c
	cmp     r0, #0x0
	bne     branch_22449e6
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x40]
	cmp     r0, #0x0
	beq     branch_22449e0
	ldr     r0, [pc, #0x30] @ 0x22449f0, (=0xf0f)
	ldr     r1, [pc, #0x34] @ 0x22449f4, (=0xb9c)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_223c5d8
	b       branch_22449ea
@ 0x22449e0

.thumb
branch_22449e0: @ 22449e0 :thumb
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_22449ea
@ 0x22449e6

.thumb
branch_22449e6: @ 22449e6 :thumb
	mov     r0, #0x11
	str     r0, [r4, #0x2c]
.thumb
branch_22449ea: @ 22449ea :thumb
	mov     r0, #0x2
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22449f0

.word 0xf0f @ 0x22449f0
.word 0xb9c @ 0x22449f4
.thumb
Function_22449f8: @ 22449f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_223c4b4
	bl      0x20397b0
	ldr     r4, [r5, #0x2c]
	ldr     r1, [pc, #0x1c] @ 0x2244a24, (=0x2246a40)
	lsl     r2, r4, #2
	ldr     r1, [r1, r2]
	mov     r0, r5
	blx     r1
	ldr     r1, [r5, #0x2c]
	cmp     r4, r1
	beq     branch_2244a22
	mov     r1, #0x52
	mov     r2, #0x0
	lsl     r1, r1, #6
	strh    r2, [r5, r1]
	.hword  0x1c89 @ add r1, r1, #0x2
	strh    r2, [r5, r1]
.thumb
branch_2244a22: @ 2244a22 :thumb
	pop     {r3-r5,pc}
@ 0x2244a24

.word 0x2246a40 @ 0x2244a24
.thumb
Function_2244a28: @ 2244a28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x40] @ 0x2244a70, (=0x1154)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_2244a42
	bl      0x200da58
	ldr     r0, [pc, #0x34] @ 0x2244a70, (=0x1154)
	mov     r1, #0x0
	str     r1, [r4, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
.thumb
branch_2244a42: @ 2244a42 :thumb
	mov     r0, r4
	bl      Function_2244f60
	mov     r0, r4
	bl      Function_2244efc
	ldr     r0, [r4, #0x4]
	bl      Function_2244b64
	ldr     r0, [pc, #0x1c] @ 0x2244a74, (=0x1158)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223c4c8
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_2244a6a
	mov     r0, #0x5
	pop     {r4,pc}
@ 0x2244a6a

.thumb
branch_2244a6a: @ 2244a6a :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2244a6e


.align 2


.word 0x1154 @ 0x2244a70
.word 0x1158 @ 0x2244a74
.thumb
Function_2244a78: @ 2244a78 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x70
	ldr     r5, [pc, #0xd4] @ 0x2244b54, (=0x22463b0)
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
	bl      0x201ff0c
	mov     r0, r4
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r5, [pc, #0xa8] @ 0x2244b58, (=0x2246394)
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
	bl      0x201ff0c
	ldr     r5, [pc, #0x84] @ 0x2244b5c, (=0x22463cc)
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
	ldr     r5, [pc, #0x58] @ 0x2244b60, (=0x2246378)
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
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x3e
	bl      0x2019690
	mov     r0, #0x10
	mov     r1, #0x0
	bl      0x201ff74
	add     sp, #0x70
	pop     {r3-r5,pc}
@ 0x2244b52


.align 2


.word 0x22463b0 @ 0x2244b54
.word 0x2246394 @ 0x2244b58
.word 0x22463cc @ 0x2244b5c
.word 0x2246378 @ 0x2244b60
.thumb
Function_2244b64: @ 2244b64 :thumb
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
@ 0x2244b88

.thumb
Function_2244b88: @ 2244b88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x3c
	str     r0, [sp, #0x10]
	ldr     r4, [r0, #0x4]
	mov     r0, #0x5c
	mov     r1, #0x3e
	bl      0x2006c24
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r1, #0x3e
	str     r1, [sp, #0x4]
	mov     r1, #0x3
	mov     r3, r2
	str     r0, [sp, #0x2c]
	bl      0x2007130
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x3
	mov     r2, #0x4
	bl      0x2007130
	mov     r1, #0x1a
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x3e
	bl      0x2002e98
	ldr     r0, [sp, #0x10]
	ldr     r0, [r0, #0x0]
	ldr     r0, [r0, #0x24]
	bl      0x2027b50
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x3e
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200daa4
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
	bl      0x20070e8
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
	bl      0x200710c
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
	bl      0x20070e8
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
	bl      0x200710c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x201975c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201975c
	mov     r2, #0xcb
	ldr     r1, [pc, #0x118] @ 0x2244d9c, (=0x1154)
	ldr     r0, [sp, #0x10]
	lsl     r2, r2, #2
	add     r0, r0, r1
	mov     r1, #0x0
	blx 0x20c4cf4
	ldr     r0, [sp, #0x2c]
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, #0x3e
	bl      0x20071ec
	mov     r4, r0
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0x100] @ 0x2244da0, (=0x115c)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx 0x20c4b18
	ldr     r0, [sp, #0x38]
	ldr     r2, [pc, #0xf4] @ 0x2244da4, (=0x11dc)
	ldr     r1, [sp, #0x10]
	ldr     r0, [r0, #0xc]
	add     r1, r1, r2
	mov     r2, #0x80
	blx 0x20c4b18
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldr     r1, [pc, #0xd8] @ 0x2244da4, (=0x11dc)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x10]
	sub     r1, #0x80
	add     r0, r0, r1
	str     r0, [sp, #0x14]
.thumb
branch_2244cd8: @ 2244cd8 :thumb
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
branch_2244cea: @ 2244cea :thumb
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x15
	blt     branch_2244cf4
	bl      0x2022974
.thumb
branch_2244cf4: @ 2244cf4 :thumb
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
branch_2244d0c: @ 2244d0c :thumb
	ldr     r0, [pc, #0x90] @ 0x2244da0, (=0x115c)
	ldr     r3, [sp, #0x34]
	ldrh    r0, [r4, r0]
	mov     r1, r6
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r5
	bl      0x200393c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1cb6 @ add r6, r6, #0x2
	.hword  0x1cad @ add r5, r5, #0x2
	cmp     r7, #0x10
	blt     branch_2244d0c
	ldr     r0, [sp, #0x18]
	add     r0, #0x20
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0x24]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x24]
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x1
	beq     branch_2244d56
	mov     r0, #0x3
	ldr     r1, [sp, #0x20]
	lsl     r0, r0, #8
	add     r1, r1, r0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x20]
	cmp     r1, r0
	blt     branch_2244cea
	str     r0, [sp, #0x20]
	mov     r0, #0x1
	str     r0, [sp, #0x1c]
	b       branch_2244cea
@ 0x2244d56

.thumb
branch_2244d56: @ 2244d56 :thumb
	ldr     r0, [sp, #0x14]
	add     r0, #0x20
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x28]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x28]
	cmp     r0, #0x3
	blt     branch_2244cd8
	ldr     r1, [pc, #0x3c] @ 0x2244da4, (=0x11dc)
	ldr     r0, [sp, #0x10]
	add     r0, r0, r1
	mov     r1, #0x2a
	lsl     r1, r1, #4
	blx 0x20c2c54
	ldr     r1, [pc, #0x30] @ 0x2244da8, (=0x1158)
	ldr     r0, [sp, #0x10]
	mov     r2, #0x1
	str     r2, [r0, r1]
	.hword  0x1f0a @ sub r2, r1, #0x4
	ldr     r1, [sp, #0x10]
	ldr     r0, [pc, #0x28] @ 0x2244dac, (=0x2244db1)
	add     r1, r1, r2
	mov     r2, #0x14
	bl      0x200da04
	ldr     r2, [pc, #0x10] @ 0x2244d9c, (=0x1154)
	ldr     r1, [sp, #0x10]
	str     r0, [r1, r2]
	ldr     r0, [sp, #0x2c]
	bl      0x2006ca8
	add     sp, #0x3c
	pop     {r4-r7,pc}
@ 0x2244d9a


.align 2


.word 0x1154 @ 0x2244d9c
.word 0x115c @ 0x2244da0
.word 0x11dc @ 0x2244da4
.word 0x1158 @ 0x2244da8
.word 0x2244db1 @ 0x2244dac
.thumb
Function_2244db0: @ 2244db0 :thumb
	push    {r4,lr}
	mov     r4, r1
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_2244e38
	ldr     r0, [pc, #0x80] @ 0x2244e3c, (=0x32b)
	mov     r1, #0x1
	ldrb    r2, [r4, r0]
	eor     r2, r1
	strb    r2, [r4, r0]
	ldrb    r2, [r4, r0]
	tst     r1, r2
	bne     branch_2244e38
	.hword  0x1ec0 @ sub r0, r0, #0x3
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx 0x20c00b4
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldsh    r0, [r4, r0]
	mov     r1, r4
	add     r1, #0x88
	lsl     r0, r0, #5
	add     r0, r1, r0
	mov     r1, #0x0
	mov     r2, #0x20
	blx 0x20c0108
	ldr     r0, [pc, #0x48] @ 0x2244e40, (=0x32a)
	ldsb    r1, [r4, r0]
	cmp     r1, #0x0
	bne     branch_2244e1c
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	add     r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x15
	blt     branch_2244e38
	mov     r2, #0x13
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r2, [r4, r0]
	mov     r1, #0x1
	eor     r1, r2
	strb    r1, [r4, r0]
	pop     {r4,pc}
@ 0x2244e1c

.thumb
branch_2244e1c: @ 2244e1c :thumb
	.hword  0x1e81 @ sub r1, r0, #0x2
	ldsh    r1, [r4, r1]
	.hword  0x1e4a @ sub r2, r1, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsh    r1, [r4, r1]
	cmp     r1, #0x0
	bge     branch_2244e38
	mov     r2, #0x1
	.hword  0x1e81 @ sub r1, r0, #0x2
	strh    r2, [r4, r1]
	ldsb    r1, [r4, r0]
	eor     r1, r2
	strb    r1, [r4, r0]
.thumb
branch_2244e38: @ 2244e38 :thumb
	pop     {r4,pc}
@ 0x2244e3a


.align 2


.word 0x32b @ 0x2244e3c
.word 0x32a @ 0x2244e40
.thumb
Function_2244e44: @ 2244e44 :thumb
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
	ldr     r1, [pc, #0x88] @ 0x2244ee8, (=0xf2c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	bl      0x201a7e8
	ldr     r0, [pc, #0x7c] @ 0x2244ee8, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
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
	ldr     r1, [pc, #0x60] @ 0x2244eec, (=0xf1c)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x4
	bl      0x201a7e8
	ldr     r0, [pc, #0x50] @ 0x2244eec, (=0xf1c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	mov     r3, #0x1
	ldr     r0, [pc, #0x48] @ 0x2244ef0, (=0xf0e00)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r1, [pc, #0x48] @ 0x2244ef4, (=0xbb4)
	ldr     r0, [pc, #0x3c] @ 0x2244eec, (=0xf1c)
	ldr     r1, [r4, r1]
	add     r0, r4, r0
	mov     r2, #0x0
	bl      Function_22458c8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0xd
	str     r0, [sp, #0xc]
	mov     r0, #0x28
	ldr     r1, [pc, #0x2c] @ 0x2244ef8, (=0xefc)
	str     r0, [sp, #0x10]
	ldr     r0, [r4, #0x4]
	add     r1, r4, r1
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	ldr     r0, [pc, #0x1c] @ 0x2244ef8, (=0xefc)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x201ada4
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x2244ee8

.word 0xf2c @ 0x2244ee8
.word 0xf1c @ 0x2244eec
.word 0xf0e00 @ 0x2244ef0
.word 0xbb4 @ 0x2244ef4
.word 0xefc @ 0x2244ef8
.thumb
Function_2244efc: @ 2244efc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x18] @ 0x2244f1c, (=0xefc)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x14] @ 0x2244f20, (=0xf1c)
	add     r0, r4, r0
	bl      0x201a8fc
	ldr     r0, [pc, #0x10] @ 0x2244f24, (=0xf2c)
	add     r0, r4, r0
	bl      0x201a8fc
	pop     {r4,pc}
@ 0x2244f1a


.align 2


.word 0xefc @ 0x2244f1c
.word 0xf1c @ 0x2244f20
.word 0xf2c @ 0x2244f24
.thumb
Function_2244f28: @ 2244f28 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xb4
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbb
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x1
	lsl     r0, r0, #8
	mov     r1, #0x3e
	bl      0x2023790
	mov     r1, #0xbe
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	sub     r1, #0x4c
	ldr     r0, [r4, r1]
	mov     r1, #0x1f
	bl      0x200b1ec
	ldr     r1, [pc, #0x4] @ 0x2244f5c, (=0xbb4)
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x2244f5a


.align 2


.word 0xbb4 @ 0x2244f5c
.thumb
Function_2244f60: @ 2244f60 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x1c] @ 0x2244f84, (=0xbb4)
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0xbe
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	mov     r0, #0xbb
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x20237bc
	pop     {r4,pc}
@ 0x2244f82


.align 2


.word 0xbb4 @ 0x2244f84
.thumb
Function_2244f88: @ 2244f88 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x28] @ 0x2244fb8, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x11
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x1
	bl      Function_223c3f4
	ldr     r0, [pc, #0x10] @ 0x2244fbc, (=0x10ae)
	mov     r1, #0x1
	strh    r1, [r4, r0]
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2244fb6


.align 2


.word 0xf0f @ 0x2244fb8
.word 0x10ae @ 0x2244fbc
.thumb
Function_2244fc0: @ 2244fc0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [pc, #0x54] @ 0x224501c, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_2245014
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2244ff2
	bl      0x203848c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_2245014
@ 0x2244ff2

.thumb
branch_2244ff2: @ 2244ff2 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2245020, (=0xf0f)
	ldr     r1, [pc, #0x2c] @ 0x2245024, (=0xb9c)
	str     r0, [sp, #0x0]
	mov     r2, #0x1
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, r2
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x2
	bl      Function_223c3f4
	mov     r0, r4
	bl      Function_223c5d8
.thumb
branch_2245014: @ 2245014 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224501a


.align 2


.word 0x1070 @ 0x224501c
.word 0xf0f @ 0x2245020
.word 0xb9c @ 0x2245024
.thumb
Function_2245028: @ 2245028 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x2245050, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x20] @ 0x2245054, (=0xb94)
	mov     r2, #0x7
	ldr     r1, [r4, r1]
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xd
	mov     r2, #0x10
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x224504e


.align 2


.word 0xf0f @ 0x2245050
.word 0xb94 @ 0x2245054
.thumb
Function_2245058: @ 2245058 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x58] @ 0x22450b8, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22450b4
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_2245096
	blx 0x21d7a8c
	cmp     r0, #0x0
	bne     branch_2245082
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_22450b4
@ 0x2245082

.thumb
branch_2245082: @ 2245082 :thumb
	mov     r0, r4
	mov     r1, #0x7
	mov     r2, #0xb
	bl      Function_223c4c0
	mov     r0, #0x1
	str     r0, [r4, #0x1c]
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_22450b4
@ 0x2245096

.thumb
branch_2245096: @ 2245096 :thumb
	blx 0x21d7a8c
	cmp     r0, #0x0
	beq     branch_22450a2
	blx 0x21d7db0
.thumb
branch_22450a2: @ 22450a2 :thumb
	bl      0x203848c
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_22450b4: @ 22450b4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22450b8

.word 0x1070 @ 0x22450b8
.thumb
Function_22450bc: @ 22450bc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x22450e4, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x1a
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x12
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22450e4

.word 0xf0f @ 0x22450e4
.thumb
Function_22450e8: @ 22450e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x203848c
	blx 0x21d7db0
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0x13
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245106


.align 2, 0


.thumb
Function_2245108: @ 2245108 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	ldr     r1, [pc, #0x20] @ 0x2245130, (=0xf0f)
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r1, #0xba
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r2, #0x1b
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0x14
	mov     r2, #0xb
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245130

.word 0xf0f @ 0x2245130
.thumb
Function_2245134: @ 2245134 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x54
	mov     r1, #0x2
	mov     r2, #0x1
	mov     r3, #0x14
	blx 0x21d78c8
	mov     r0, #0x2
	blx 0x21d792c
	blx 0x21d797c
	mov     r0, #0x3
	str     r0, [r4, #0x2c]
	pop     {r4,pc}
@ 0x2245154

.thumb
Function_2245154: @ 2245154 :thumb
	push    {r4,lr}
	add     sp, #-0x48
	mov     r4, r0
	blx 0x21d7ae4
	blx 0x21d7a8c
	cmp     r0, #0x0
	beq     branch_22451d2
	blx 0x21d7bfc
	cmp     r0, #0x8
	bhi     branch_22451b2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224517a

Jumppoints_224517a:
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_22451c8 - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.hword branch_224518c - Jumppoints_224517a - 2
.hword branch_22451b2 - Jumppoints_224517a - 2
.thumb
branch_224518c: @ 224518c :thumb
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	blx 0x21d75f4
	str     r0, [r4, #0x40]
	ldr     r0, [sp, #0x8]
	str     r0, [r4, #0x44]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x48]
	blx 0x21d76e8
	blx 0x21d7db0
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_22451d2
@ 0x22451b2

.thumb
branch_22451b2: @ 22451b2 :thumb
	add     r0, sp, #0x0
	blx 0x21d75d4
	mov     r0, r4
	bl      Function_223c5f4
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	sub     r0, #0x17
	str     r0, [r4, #0x3c]
	b       branch_22451d2
@ 0x22451c8

.thumb
branch_22451c8: @ 22451c8 :thumb
	add     r0, sp, #0xc
	blx 0x21d7eb8
	mov     r0, #0x4
	str     r0, [r4, #0x2c]
.thumb
branch_22451d2: @ 22451d2 :thumb
	mov     r0, #0x3
	add     sp, #0x48
	pop     {r4,pc}
@ 0x22451d8

.thumb
Function_22451d8: @ 22451d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	blx 0x21d81dc
	mov     r0, #0x5
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22451e8

.thumb
Function_22451e8: @ 22451e8 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	blx 0x21d82a0
	cmp     r0, #0x5
	bhi     branch_2245288
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245202

Jumppoints_2245202:
.hword branch_2245214 - Jumppoints_2245202 - 2
.hword branch_2245288 - Jumppoints_2245202 - 2
.hword branch_2245288 - Jumppoints_2245202 - 2
.hword branch_224520e - Jumppoints_2245202 - 2
.hword branch_2245214 - Jumppoints_2245202 - 2
.hword branch_2245214 - Jumppoints_2245202 - 2
.thumb
branch_224520e: @ 224520e :thumb
	mov     r0, #0x6
	str     r0, [r4, #0x2c]
	b       branch_2245288
@ 0x2245214

.thumb
branch_2245214: @ 2245214 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	blx 0x21d75f4
	str     r0, [r4, #0x40]
	ldr     r0, [sp, #0x4]
	str     r0, [r4, #0x44]
	blx 0x21d76e8
	blx 0x21d7db0
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	ldr     r1, [sp, #0x0]
	cmp     r1, #0x7
	bhi     branch_2245276
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x2245246

Jumppoints_2245246:
.hword branch_2245276 - Jumppoints_2245246 - 2
.hword branch_2245256 - Jumppoints_2245246 - 2
.hword branch_2245256 - Jumppoints_2245246 - 2
.hword branch_2245268 - Jumppoints_2245246 - 2
.hword branch_224525a - Jumppoints_2245246 - 2
.hword branch_2245272 - Jumppoints_2245246 - 2
.hword branch_2245264 - Jumppoints_2245246 - 2
.hword branch_2245272 - Jumppoints_2245246 - 2
.thumb
branch_2245256: @ 2245256 :thumb
	str     r0, [r4, #0x2c]
	b       branch_2245276
@ 0x224525a

.thumb
branch_224525a: @ 224525a :thumb
	blx 0x21e55b0
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_2245276
@ 0x2245264

.thumb
branch_2245264: @ 2245264 :thumb
	str     r0, [r4, #0x2c]
	b       branch_2245276
@ 0x2245268

.thumb
branch_2245268: @ 2245268 :thumb
	blx 0x21d8e8c
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
	b       branch_2245276
@ 0x2245272

.thumb
branch_2245272: @ 2245272 :thumb
	bl      0x2038a0c
.thumb
branch_2245276: @ 2245276 :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [pc, #0x14] @ 0x2245290, (=0xffffb1e0)
	cmp     r1, r0
	bge     branch_2245288
	ldr     r0, [pc, #0x14] @ 0x2245294, (=0xffff8ad1)
	cmp     r1, r0
	blt     branch_2245288
	mov     r0, #0x17
	str     r0, [r4, #0x2c]
.thumb
branch_2245288: @ 2245288 :thumb
	mov     r0, #0x3
	add     sp, #0x8
	pop     {r4,pc}
@ 0x224528e


.align 2


.word 0xffffb1e0 @ 0x2245290
.word 0xffff8ad1 @ 0x2245294
.thumb
Function_2245298: @ 2245298 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x14]
	bl      0x202ad28
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2025d74
	cmp     r0, #0x0
	bne     branch_22452bc
	ldr     r1, [r5, #0x0]
	ldr     r0, [r1, #0x4]
	ldr     r1, [r1, #0x38]
	bl      0x2025d78
.thumb
branch_22452bc: @ 22452bc :thumb
	ldr     r0, [r5, #0x0]
	ldr     r0, [r0, #0x4]
	bl      0x2025d74
	mov     r6, r0
	mov     r0, r4
	blx 0x20a471c
	mov     r3, r0
	mov     r2, r1
	mov     r0, r6
	mov     r1, r3
	bl      Function_223b140
	mov     r0, #0x7
	str     r0, [r5, #0x2c]
	mov     r0, #0x3
	pop     {r4-r6,pc}
@ 0x22452e0

.thumb
Function_22452e0: @ 22452e0 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223bb40
	mov     r0, #0x8
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22452f8, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22452f6


.align 2


.word 0x1484 @ 0x22452f8
.thumb
Function_22452fc: @ 22452fc :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	beq     branch_2245396
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0xa0] @ 0x22453b0, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_224538a
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245328

Jumppoints_2245328:
.hword branch_224536e - Jumppoints_2245328 - 2
.hword branch_224537c - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224536e - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224538a - Jumppoints_2245328 - 2
.hword branch_224537c - Jumppoints_2245328 - 2
.hword branch_2245360 - Jumppoints_2245328 - 2
.hword branch_224534c - Jumppoints_2245328 - 2
.hword branch_2245352 - Jumppoints_2245328 - 2
.hword branch_2245360 - Jumppoints_2245328 - 2
.thumb
branch_224534c: @ 224534c :thumb
	mov     r0, #0x9
	str     r0, [r4, #0x2c]
	b       branch_22453ac
@ 0x2245352

.thumb
branch_2245352: @ 2245352 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453ac
@ 0x2245360

.thumb
branch_2245360: @ 2245360 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453ac
@ 0x224536e

.thumb
branch_224536e: @ 224536e :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453ac
@ 0x224537c

.thumb
branch_224537c: @ 224537c :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_22453ac
@ 0x224538a

.thumb
branch_224538a: @ 224538a :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      0x2038a0c
	b       branch_22453ac
@ 0x2245396

.thumb
branch_2245396: @ 2245396 :thumb
	ldr     r0, [pc, #0x18] @ 0x22453b0, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_22453ac
	bl      0x2038a0c
.thumb
branch_22453ac: @ 22453ac :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x22453b0

.word 0x1484 @ 0x22453b0
.thumb
Function_22453b4: @ 22453b4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x24] @ 0x22453e0, (=0x10e4)
	ldr     r0, [r0, #0x20]
	add     r1, r4, r1
	bl      0x2030e78
	ldr     r1, [pc, #0x18] @ 0x22453e0, (=0x10e4)
	add     r0, r4, r1
	add     r1, #0x64
	add     r1, r4, r1
	bl      Function_223bb84
	mov     r0, #0xa
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0xc] @ 0x22453e4, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22453de


.align 2


.word 0x10e4 @ 0x22453e0
.word 0x1484 @ 0x22453e4
.thumb
Function_22453e8: @ 22453e8 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_223b7b8
	cmp     r0, #0x0
	bne     branch_22453f6
	b       branch_2245506
@ 0x22453f6

.thumb
branch_22453f6: @ 22453f6 :thumb
	bl      Function_223b7d8
	mov     r5, r0
	ldr     r0, [pc, #0x120] @ 0x2245520, (=0x1484)
	mov     r1, #0x0
	str     r1, [r4, r0]
	mov     r0, r5
	add     r0, #0xf
	cmp     r0, #0x11
	bhi     branch_22454fa
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245416

Jumppoints_2245416:
.hword branch_22454de - Jumppoints_2245416 - 2
.hword branch_22454ec - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454de - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454fa - Jumppoints_2245416 - 2
.hword branch_22454ec - Jumppoints_2245416 - 2
.hword branch_22454d0 - Jumppoints_2245416 - 2
.hword branch_224543a - Jumppoints_2245416 - 2
.hword branch_22454c2 - Jumppoints_2245416 - 2
.hword branch_22454d0 - Jumppoints_2245416 - 2
.thumb
branch_224543a: @ 224543a :thumb
	mov     r0, r4
	bl      Function_223c5f4
	ldr     r0, [pc, #0xe0] @ 0x2245524, (=0x1148)
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_2245452
	cmp     r1, #0x1
	beq     branch_22454a2
	cmp     r1, #0x2
	beq     branch_22454ac
	b       branch_22454b6
@ 0x2245452

.thumb
branch_2245452: @ 2245452 :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r4, r0]
	cmp     r0, #0x3
	bhi     branch_224549c
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x2245466

Jumppoints_2245466:
.hword branch_224546e - Jumppoints_2245466 - 2
.hword branch_2245488 - Jumppoints_2245466 - 2
.hword branch_2245492 - Jumppoints_2245466 - 2
.hword branch_224547e - Jumppoints_2245466 - 2
.thumb
branch_224546e: @ 224546e :thumb
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x224547e

.thumb
branch_224547e: @ 224547e :thumb
	ldr     r0, [pc, #0xa8] @ 0x2245528, (=0xffffec75)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x2245488

.thumb
branch_2245488: @ 2245488 :thumb
	ldr     r0, [pc, #0xa0] @ 0x224552c, (=0xffffec78)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x2245492

.thumb
branch_2245492: @ 2245492 :thumb
	ldr     r0, [pc, #0x9c] @ 0x2245530, (=0xffffec77)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x224549c

.thumb
branch_224549c: @ 224549c :thumb
	bl      0x2038a0c
	b       branch_224551c
@ 0x22454a2

.thumb
branch_22454a2: @ 22454a2 :thumb
	ldr     r0, [pc, #0x90] @ 0x2245534, (=0xffffec74)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454ac

.thumb
branch_22454ac: @ 22454ac :thumb
	ldr     r0, [pc, #0x88] @ 0x2245538, (=0xffffec73)
	str     r0, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454b6

.thumb
branch_22454b6: @ 22454b6 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      0x2038a0c
	b       branch_224551c
@ 0x22454c2

.thumb
branch_22454c2: @ 22454c2 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454d0

.thumb
branch_22454d0: @ 22454d0 :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454de

.thumb
branch_22454de: @ 22454de :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454ec

.thumb
branch_22454ec: @ 22454ec :thumb
	mov     r0, r4
	bl      Function_223c5f4
	str     r5, [r4, #0x3c]
	mov     r0, #0x15
	str     r0, [r4, #0x2c]
	b       branch_224551c
@ 0x22454fa

.thumb
branch_22454fa: @ 22454fa :thumb
	mov     r0, r4
	bl      Function_223c5f4
	bl      0x2038a0c
	b       branch_224551c
@ 0x2245506

.thumb
branch_2245506: @ 2245506 :thumb
	ldr     r0, [pc, #0x18] @ 0x2245520, (=0x1484)
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	ldr     r1, [r4, r0]
	mov     r0, #0xe1
	lsl     r0, r0, #4
	cmp     r1, r0
	bne     branch_224551c
	bl      0x2038a0c
.thumb
branch_224551c: @ 224551c :thumb
	mov     r0, #0x3
	pop     {r3-r5,pc}
@ 0x2245520

.word 0x1484 @ 0x2245520
.word 0x1148 @ 0x2245524
.word 0xffffec75 @ 0x2245528
.word 0xffffec78 @ 0x224552c
.word 0xffffec77 @ 0x2245530
.word 0xffffec74 @ 0x2245534
.word 0xffffec73 @ 0x2245538
.thumb
Function_224553c: @ 224553c :thumb
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
	bl      Function_22459b0
	mov     r0, #0x18
	str     r0, [r4, #0x2c]
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x224555e


.align 2, 0


.thumb
Function_2245560: @ 2245560 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x20] @ 0x2245588, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	bne     branch_2245574
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_2245582
.thumb
branch_2245574: @ 2245574 :thumb
	ldr     r0, [pc, #0x14] @ 0x224558c, (=0xf2c)
	mov     r1, #0x0
	add     r0, r4, r0
	bl      0x200dc9c
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
.thumb
branch_2245582: @ 2245582 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245586


.align 2


.word 0x21bf67c @ 0x2245588
.word 0xf2c @ 0x224558c
.thumb
Function_2245590: @ 2245590 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	bl      0x2039794
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
	bl      0x200f174
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	ldr     r0, [pc, #0x8] @ 0x22455c8, (=0x10b0)
	mov     r1, #0x1
	str     r1, [r4, r0]
	mov     r0, #0x4
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x22455c8

.word 0x10b0 @ 0x22455c8
.thumb
Function_22455cc: @ 22455cc :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x2c] @ 0x2245600, (=0x1070)
	mov     r1, #0x3e
	ldr     r0, [r4, r0]
	bl      0x2002114
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_22455fc
	.hword  0x1e49 @ sub r1, r1, #0x1
	cmp     r0, r1
	bne     branch_22455ee
	mov     r0, #0x0
	str     r0, [r4, #0x2c]
	b       branch_22455fc
@ 0x22455ee

.thumb
branch_22455ee: @ 22455ee :thumb
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_22455fc: @ 22455fc :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245600

.word 0x1070 @ 0x2245600
.thumb
Function_2245604: @ 2245604 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	mov     r2, #0xd
	ldr     r0, [r4, #0x3c]
	mvn     r2, r2
	cmp     r0, r2
	bgt     branch_2245642
	bge     branch_224567e
	ldr     r1, [pc, #0xa0] @ 0x22456b8, (=0xffffec78)
	cmp     r0, r1
	bgt     branch_224563a
	ldr     r1, [pc, #0x9c] @ 0x22456bc, (=0x138d)
	add     r1, r0, r1
	bmi     branch_2245682
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x224562e

Jumppoints_224562e:
.hword branch_2245696 - Jumppoints_224562e - 2
.hword branch_2245692 - Jumppoints_224562e - 2
.hword branch_2245686 - Jumppoints_224562e - 2
.hword branch_2245682 - Jumppoints_224562e - 2
.hword branch_224568e - Jumppoints_224562e - 2
.hword branch_224568a - Jumppoints_224562e - 2
.thumb
branch_224563a: @ 224563a :thumb
	mov     r1, #0xe
	mvn     r1, r1
	cmp     r0, r1
	b       branch_2245682
@ 0x2245642

.thumb
branch_2245642: @ 2245642 :thumb
	mov     r1, r2
	add     r1, #0x9
	cmp     r0, r1
	bgt     branch_2245658
	mov     r1, r2
	add     r1, #0x9
	cmp     r0, r1
	bge     branch_2245682
	add     r1, r2, #0x2
	cmp     r0, r1
	b       branch_2245682
@ 0x2245658

.thumb
branch_2245658: @ 2245658 :thumb
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r0, #0x5
	bhi     branch_2245682
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x224566a

Jumppoints_224566a:
.hword branch_2245682 - Jumppoints_224566a - 2
.hword branch_224567e - Jumppoints_224566a - 2
.hword branch_224567a - Jumppoints_224566a - 2
.hword branch_2245682 - Jumppoints_224566a - 2
.hword branch_2245676 - Jumppoints_224566a - 2
.hword branch_224567a - Jumppoints_224566a - 2
.thumb
branch_2245676: @ 2245676 :thumb
	mov     r2, #0x90
	b       branch_2245698
@ 0x224567a

.thumb
branch_224567a: @ 224567a :thumb
	mov     r2, #0x91
	b       branch_2245698
@ 0x224567e

.thumb
branch_224567e: @ 224567e :thumb
	mov     r2, #0x96
	b       branch_2245698
@ 0x2245682

.thumb
branch_2245682: @ 2245682 :thumb
	mov     r2, #0x95
	b       branch_2245698
@ 0x2245686

.thumb
branch_2245686: @ 2245686 :thumb
	mov     r2, #0xb1
	b       branch_2245698
@ 0x224568a

.thumb
branch_224568a: @ 224568a :thumb
	mov     r2, #0xae
	b       branch_2245698
@ 0x224568e

.thumb
branch_224568e: @ 224568e :thumb
	mov     r2, #0xae
	b       branch_2245698
@ 0x2245692

.thumb
branch_2245692: @ 2245692 :thumb
	mov     r2, #0xaf
	b       branch_2245698
@ 0x2245696

.thumb
branch_2245696: @ 2245696 :thumb
	mov     r2, #0xb0
.thumb
branch_2245698: @ 2245698 :thumb
	ldr     r0, [pc, #0x24] @ 0x22456c0, (=0xf0f)
	ldr     r1, [pc, #0x28] @ 0x22456c4, (=0xb94)
	str     r0, [sp, #0x0]
	ldr     r1, [r4, r1]
	mov     r0, r4
	mov     r3, #0x1
	bl      Function_2245820
	mov     r0, r4
	mov     r1, #0xc
	mov     r2, #0x16
	bl      Function_223c3f4
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x22456b8

.word 0xffffec78 @ 0x22456b8
.word 0x138d @ 0x22456bc
.word 0xf0f @ 0x22456c0
.word 0xb94 @ 0x22456c4
.thumb
Function_22456c8: @ 22456c8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r1, #0x52
	mov     r4, r0
	lsl     r1, r1, #6
	ldsh    r1, [r4, r1]
	cmp     r1, #0x3
	bhi     branch_2245764
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x22456e4

Jumppoints_22456e4:
.hword branch_22456ec - Jumppoints_22456e4 - 2
.hword branch_2245708 - Jumppoints_22456e4 - 2
.hword branch_224572c - Jumppoints_22456e4 - 2
.hword branch_2245748 - Jumppoints_22456e4 - 2
.thumb
branch_22456ec: @ 22456ec :thumb
	ldr     r1, [pc, #0x98] @ 0x2245788, (=0xf0f)
	mov     r2, #0xb2
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x98] @ 0x224578c, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245780
@ 0x2245708

.thumb
branch_2245708: @ 2245708 :thumb
	ldr     r0, [pc, #0x84] @ 0x2245790, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2245780
	bl      0x203848c
	blx 0x21d7db0
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245780
@ 0x224572c

.thumb
branch_224572c: @ 224572c :thumb
	ldr     r1, [pc, #0x58] @ 0x2245788, (=0xf0f)
	mov     r2, #0xb3
	str     r1, [sp, #0x0]
	ldr     r1, [pc, #0x58] @ 0x224578c, (=0xb94)
	mov     r3, #0x1
	ldr     r1, [r4, r1]
	bl      Function_2245820
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245780
@ 0x2245748

.thumb
branch_2245748: @ 2245748 :thumb
	ldr     r0, [pc, #0x44] @ 0x2245790, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2245780
	mov     r0, #0x52
	lsl     r0, r0, #6
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	b       branch_2245780
@ 0x2245764

.thumb
branch_2245764: @ 2245764 :thumb
	ldr     r0, [pc, #0x2c] @ 0x2245794, (=0x1482)
	ldsh    r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r1, [r4, r0]
	ldsh    r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_2245780
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, r1
	bl      Function_223c4c0
	mov     r0, #0xb
	str     r0, [r4, #0x2c]
.thumb
branch_2245780: @ 2245780 :thumb
	mov     r0, #0x3
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x2245786


.align 2


.word 0xf0f @ 0x2245788
.word 0xb94 @ 0x224578c
.word 0xbe4 @ 0x2245790
.word 0x1482 @ 0x2245794
.thumb
Function_2245798: @ 2245798 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x14] @ 0x22457b4, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_22457b0
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_22457b0: @ 22457b0 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22457b4

.word 0xbe4 @ 0x22457b4
.thumb
Function_22457b8: @ 22457b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x28] @ 0x22457e8, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_22457e4
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	cmp     r0, #0x1e
	ble     branch_22457da
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_22457da: @ 22457da :thumb
	mov     r0, #0x42
	lsl     r0, r0, #6
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_22457e4: @ 22457e4 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x22457e8

.word 0xbe4 @ 0x22457e8
.thumb
Function_22457ec: @ 22457ec :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x24] @ 0x2245818, (=0xbe4)
	ldr     r0, [r4, r0]
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_2245814
	mov     r2, #0x8d
	ldr     r0, [r4, #0x4]
	mov     r1, #0xd
	lsl     r2, r2, #2
	bl      Function_223c3c0
	ldr     r1, [pc, #0xc] @ 0x224581c, (=0x1070)
	str     r0, [r4, r1]
	ldr     r0, [r4, #0x30]
	str     r0, [r4, #0x2c]
.thumb
branch_2245814: @ 2245814 :thumb
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x2245818

.word 0xbe4 @ 0x2245818
.word 0x1070 @ 0x224581c
.thumb
Function_2245820: @ 2245820 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, r1
	mov     r1, r2
	mov     r4, r3
	bl      0x200b1ec
	mov     r1, #0xb9
	mov     r6, r0
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x20
	ldr     r1, [r5, r1]
	mov     r2, r6
	bl      0x200c388
	mov     r0, r6
	bl      0x20237bc
	ldr     r0, [pc, #0x3c] @ 0x2245888, (=0xefc)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x34] @ 0x2245888, (=0xefc)
	mov     r1, #0x0
	add     r0, r5, r0
	mov     r2, #0x1
	mov     r3, #0xa
	bl      0x200e060
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r4, [sp, #0x4]
	mov     r2, #0xbb
	ldr     r0, [pc, #0x1c] @ 0x2245888, (=0xefc)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x10] @ 0x224588c, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, #0x42
	mov     r1, #0x0
	lsl     r0, r0, #6
	str     r1, [r5, r0]
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x2245888

.word 0xefc @ 0x2245888
.word 0xbe4 @ 0x224588c
.thumb
Function_2245890: @ 2245890 :thumb
	push    {r4,lr}
	mov     r4, r0
	cmp     r3, #0x1
	beq     branch_224589e
	cmp     r3, #0x2
	beq     branch_22458b4
	b       branch_22458c2
@ 0x224589e

.thumb
branch_224589e: @ 224589e :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r1, r1, r0
	lsr     r0, r1, #31
	add     r0, r1, r0
	asr     r2, r0, #1
	b       branch_22458c2
@ 0x22458b4

.thumb
branch_22458b4: @ 22458b4 :thumb
	ldr     r0, [sp, #0xc]
	mov     r2, #0x0
	bl      0x2002d7c
	ldrb    r1, [r4, #0x7]
	lsl     r1, r1, #3
	sub     r2, r1, r0
.thumb
branch_22458c2: @ 22458c2 :thumb
	mov     r0, r2
	pop     {r4,pc}
@ 0x22458c6


.align 2, 0


.thumb
Function_22458c8: @ 22458c8 :thumb
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
	bl      Function_2245890
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
@ 0x22458fc

.thumb
Function_22458fc: @ 22458fc :thumb
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
	bl      Function_2245890
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
@ 0x224592e


.align 2, 0


.thumb
Function_2245930: @ 2245930 :thumb
	ldr     r3, [pc, #0x0] @ 0x2245934, (=0x2039735)
	bx      r3
@ 0x2245934

.word 0x2039735 @ 0x2245934
.thumb
Function_2245938: @ 2245938 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	mov     r6, r1
	lsl     r0, r0, #8
	mov     r1, #0x3e
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0xba
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r2, r4
	bl      0x200b1b8
	mov     r1, #0xb9
	lsl     r1, r1, #4
	ldr     r0, [r5, r1]
	add     r1, #0x50
	ldr     r1, [r5, r1]
	mov     r2, r4
	bl      0x200c388
	ldr     r0, [pc, #0x3c] @ 0x22459a8, (=0xf2c)
	mov     r1, #0xf
	add     r0, r5, r0
	bl      0x201ada4
	ldr     r0, [pc, #0x30] @ 0x22459a8, (=0xf2c)
	mov     r1, #0x1
	add     r0, r5, r0
	mov     r2, #0x1f
	mov     r3, #0xb
	bl      0x200dc48
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r2, #0xbe
	ldr     r0, [pc, #0x1c] @ 0x22459a8, (=0xf2c)
	str     r3, [sp, #0x8]
	lsl     r2, r2, #4
	ldr     r2, [r5, r2]
	add     r0, r5, r0
	mov     r1, #0x1
	bl      0x201d738
	ldr     r1, [pc, #0x10] @ 0x22459ac, (=0xbe4)
	str     r0, [r5, r1]
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x22459a8

.word 0xf2c @ 0x22459a8
.word 0xbe4 @ 0x22459ac
.thumb
Function_22459b0: @ 22459b0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	mov     r4, r1
	mvn     r0, r0
	cmp     r4, r0
	bne     branch_22459c2
	mov     r4, #0xb
.thumb
branch_22459c2: @ 22459c2 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0xb9
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	mov     r3, #0x5
	bl      0x200b60c
	ldr     r0, [pc, #0x14] @ 0x22459f0, (=0xefc)
	mov     r1, #0x1
	add     r0, r5, r0
	bl      0x200e084
	mov     r0, r5
	mov     r1, r4
	bl      Function_2245938
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x22459ee


.align 2


.word 0xefc @ 0x22459f0

.incbin "./baserom/overlay/overlay_0094.bin", 0xa8b4, 0x224674c - 0x22459f4


.word Function_224494c+1 @ =0x224494d, 0x224674c
.word Function_22449f8+1 @ =0x22449f9, 0x2246750
.word Function_2244a28+1 @ =0x2244a29, 0x2246754
.word Function_223c610+1 @ =0x223c611, 0x2246758
.word Function_223c6d4+1 @ =0x223c6d5, 0x224675c
.word Function_223c6f4+1 @ =0x223c6f5, 0x2246760
.word Function_223d0c4+1 @ =0x223d0c5, 0x2246764
.word Function_223d19c+1 @ =0x223d19d, 0x2246768
.word Function_223d1b0+1 @ =0x223d1b1, 0x224676c
.word Function_223dc04+1 @ =0x223dc05, 0x2246770
.word Function_223dce4+1 @ =0x223dce5, 0x2246774
.word Function_223dcf8+1 @ =0x223dcf9, 0x2246778
.word Function_223e468+1 @ =0x223e469, 0x224677c
.word Function_223e55c+1 @ =0x223e55d, 0x2246780
.word Function_223e570+1 @ =0x223e571, 0x2246784
.word Function_223fb44+1 @ =0x223fb45, 0x2246788
.word Function_223fbb8+1 @ =0x223fbb9, 0x224678c
.word Function_223fbd8+1 @ =0x223fbd9, 0x2246790
.word Function_22414b4+1 @ =0x22414b5, 0x2246794
.word Function_2241544+1 @ =0x2241545, 0x2246798
.word Function_2241564+1 @ =0x2241565, 0x224679c
.word Function_2242acc+1 @ =0x2242acd, 0x22467a0
.word Function_2242b10+1 @ =0x2242b11, 0x22467a4
.word Function_2242b30+1 @ =0x2242b31, 0x22467a8
.word Function_22443dc+1 @ =0x22443dd, 0x22467ac
.word Function_224448c+1 @ =0x224448d, 0x22467b0
.word Function_22444b8+1 @ =0x22444b9, 0x22467b4
.word Function_22444c4+1 @ =0x22444c5, 0x22467b8
.word Function_2244674+1 @ =0x2244675, 0x22467bc
.word Function_2244848+1 @ =0x2244849, 0x22467c0
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


.word Function_223ea58+1 @ =0x223ea59, 0x2246860
.word Function_223ea80+1 @ =0x223ea81, 0x2246864
.word Function_223f0a4+1 @ =0x223f0a5, 0x2246868
.word Function_223f0cc+1 @ =0x223f0cd, 0x224686c
.word Function_223f150+1 @ =0x223f151, 0x2246870
.word Function_223f18c+1 @ =0x223f18d, 0x2246874
.word Function_223f258+1 @ =0x223f259, 0x2246878
.word Function_223f2ac+1 @ =0x223f2ad, 0x224687c
.word Function_223f418+1 @ =0x223f419, 0x2246880
.word Function_223f470+1 @ =0x223f471, 0x2246884
.word Function_223f4ac+1 @ =0x223f4ad, 0x2246888
.word Function_223f59c+1 @ =0x223f59d, 0x224688c
.word Function_223f5f4+1 @ =0x223f5f5, 0x2246890
.word Function_223f634+1 @ =0x223f635, 0x2246894
.word Function_223f724+1 @ =0x223f725, 0x2246898
.word Function_223f77c+1 @ =0x223f77d, 0x224689c
.word Function_223f7bc+1 @ =0x223f7bd, 0x22468a0
.word Function_223ebc8+1 @ =0x223ebc9, 0x22468a4
.word Function_223ecd0+1 @ =0x223ecd1, 0x22468a8
.word Function_223ed90+1 @ =0x223ed91, 0x22468ac
.word Function_223ee3c+1 @ =0x223ee3d, 0x22468b0
.word Function_223ee98+1 @ =0x223ee99, 0x22468b4
.word Function_223eedc+1 @ =0x223eedd, 0x22468b8
.word Function_223f94c+1 @ =0x223f94d, 0x22468bc
.word Function_223f96c+1 @ =0x223f96d, 0x22468c0
.word Function_223f8b0+1 @ =0x223f8b1, 0x22468c4
.word Function_223f8d4+1 @ =0x223f8d5, 0x22468c8
.word Function_223f91c+1 @ =0x223f91d, 0x22468cc
.word Function_223f924+1 @ =0x223f925, 0x22468d0
.word Function_223ef18+1 @ =0x223ef19, 0x22468d4
.word Function_223ef54+1 @ =0x223ef55, 0x22468d8
.word Function_22402a4+1 @ =0x22402a5, 0x22468dc
.word Function_22402b8+1 @ =0x22402b9, 0x22468e0
.word Function_2240a68+1 @ =0x2240a69, 0x22468e4
.word Function_2240d04+1 @ =0x2240d05, 0x22468e8
.word Function_2240d24+1 @ =0x2240d25, 0x22468ec
.word Function_2240ac0+1 @ =0x2240ac1, 0x22468f0
.word Function_2240ae4+1 @ =0x2240ae5, 0x22468f4
.word Function_22405d8+1 @ =0x22405d9, 0x22468f8
.word Function_2240684+1 @ =0x2240685, 0x22468fc
.word Function_224082c+1 @ =0x224082d, 0x2246900
.word Function_22408e4+1 @ =0x22408e5, 0x2246904
.word Function_2240b1c+1 @ =0x2240b1d, 0x2246908
.word Function_2240b48+1 @ =0x2240b49, 0x224690c
.word Function_2240b6c+1 @ =0x2240b6d, 0x2246910
.word Function_2240c54+1 @ =0x2240c55, 0x2246914
.word Function_2240c80+1 @ =0x2240c81, 0x2246918
.word Function_2240ca4+1 @ =0x2240ca5, 0x224691c

.incbin "./baserom/overlay/overlay_0094.bin", 0xb7e0, 0x224695c - 0x2246920


.word Function_2241958+1 @ =0x2241959, 0x224695c
.word Function_224198c+1 @ =0x224198d, 0x2246960
.word Function_22420e0+1 @ =0x22420e1, 0x2246964
.word Function_2241a18+1 @ =0x2241a19, 0x2246968
.word Function_2241a54+1 @ =0x2241a55, 0x224696c
.word Function_2241b28+1 @ =0x2241b29, 0x2246970
.word Function_2241ba8+1 @ =0x2241ba9, 0x2246974
.word Function_2241d04+1 @ =0x2241d05, 0x2246978
.word Function_2241d60+1 @ =0x2241d61, 0x224697c
.word Function_2241d9c+1 @ =0x2241d9d, 0x2246980
.word Function_2241e88+1 @ =0x2241e89, 0x2246984
.word Function_2241ee4+1 @ =0x2241ee5, 0x2246988
.word Function_2241f24+1 @ =0x2241f25, 0x224698c
.word Function_224203c+1 @ =0x224203d, 0x2246990
.word Function_2242064+1 @ =0x2242065, 0x2246994
.word Function_2242088+1 @ =0x2242089, 0x2246998
.word Function_2242134+1 @ =0x2242135, 0x224699c
.word Function_2242da4+1 @ =0x2242da5, 0x22469a0
.word Function_2243774+1 @ =0x2243775, 0x22469a4
.word Function_2242e98+1 @ =0x2242e99, 0x22469a8
.word Function_2242ecc+1 @ =0x2242ecd, 0x22469ac
.word Function_2242f74+1 @ =0x2242f75, 0x22469b0
.word Function_2242f94+1 @ =0x2242f95, 0x22469b4
.word Function_2243778+1 @ =0x2243779, 0x22469b8
.word Function_2243018+1 @ =0x2243019, 0x22469bc
.word Function_2243044+1 @ =0x2243045, 0x22469c0
.word Function_2243100+1 @ =0x2243101, 0x22469c4
.word Function_224311c+1 @ =0x224311d, 0x22469c8
.word Function_2243790+1 @ =0x2243791, 0x22469cc
.word Function_22431a0+1 @ =0x22431a1, 0x22469d0
.word Function_22431ec+1 @ =0x22431ed, 0x22469d4
.word Function_22432d4+1 @ =0x22432d5, 0x22469d8
.word Function_22432f0+1 @ =0x22432f1, 0x22469dc
.word Function_22437a8+1 @ =0x22437a9, 0x22469e0
.word Function_2243880+1 @ =0x2243881, 0x22469e4
.word Function_2243654+1 @ =0x2243655, 0x22469e8
.word Function_22436d0+1 @ =0x22436d1, 0x22469ec
.word Function_22436ec+1 @ =0x22436ed, 0x22469f0
.word Function_22437bc+1 @ =0x22437bd, 0x22469f4
.word Function_22437d4+1 @ =0x22437d5, 0x22469f8
.word Function_22437f0+1 @ =0x22437f1, 0x22469fc
.word Function_2243374+1 @ =0x2243375, 0x2246a00
.word Function_2243394+1 @ =0x2243395, 0x2246a04
.word Function_2243564+1 @ =0x2243565, 0x2246a08
.word Function_2243584+1 @ =0x2243585, 0x2246a0c
.word Function_2243550+1 @ =0x2243551, 0x2246a10
.word Function_2243970+1 @ =0x2243971, 0x2246a14
.word Function_224398c+1 @ =0x224398d, 0x2246a18
.word Function_22439c8+1 @ =0x22439c9, 0x2246a1c
.word Function_22439e0+1 @ =0x22439e1, 0x2246a20
.word Function_2243a00+1 @ =0x2243a01, 0x2246a24
.word Function_2243a24+1 @ =0x2243a25, 0x2246a28
.word Function_2243a40+1 @ =0x2243a41, 0x2246a2c
.word Function_2243a8c+1 @ =0x2243a8d, 0x2246a30
.word Function_2243ae4+1 @ =0x2243ae5, 0x2246a34
.word Function_224391c+1 @ =0x224391d, 0x2246a38
.word Function_2243944+1 @ =0x2243945, 0x2246a3c
.word Function_2244f88+1 @ =0x2244f89, 0x2246a40
.word Function_2244fc0+1 @ =0x2244fc1, 0x2246a44
.word Function_2245134+1 @ =0x2245135, 0x2246a48
.word Function_2245154+1 @ =0x2245155, 0x2246a4c
.word Function_22451d8+1 @ =0x22451d9, 0x2246a50
.word Function_22451e8+1 @ =0x22451e9, 0x2246a54
.word Function_2245298+1 @ =0x2245299, 0x2246a58
.word Function_22452e0+1 @ =0x22452e1, 0x2246a5c
.word Function_22452fc+1 @ =0x22452fd, 0x2246a60
.word Function_22453b4+1 @ =0x22453b5, 0x2246a64
.word Function_22453e8+1 @ =0x22453e9, 0x2246a68
.word Function_2245590+1 @ =0x2245591, 0x2246a6c
.word Function_2245798+1 @ =0x2245799, 0x2246a70
.word Function_22457ec+1 @ =0x22457ed, 0x2246a74
.word Function_22455cc+1 @ =0x22455cd, 0x2246a78
.word Function_2245028+1 @ =0x2245029, 0x2246a7c
.word Function_2245058+1 @ =0x2245059, 0x2246a80
.word Function_22450bc+1 @ =0x22450bd, 0x2246a84
.word Function_22450e8+1 @ =0x22450e9, 0x2246a88
.word Function_2245108+1 @ =0x2245109, 0x2246a8c
.word Function_22457b8+1 @ =0x22457b9, 0x2246a90
.word Function_2245604+1 @ =0x2245605, 0x2246a94
.word Function_22456c8+1 @ =0x22456c9, 0x2246a98
.word Function_224553c+1 @ =0x224553d, 0x2246a9c
.word Function_2245560+1 @ =0x2245561, 0x2246aa0
@ 0x2246aa4


.incbin "./baserom/overlay/overlay_0094.bin", 0xb964, 0x2246abf - 0x2246aa4


@end 0x2246abf




