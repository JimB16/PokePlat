
.include "source/macros_asm.s"
.include "source/arm9_ram_2.s"


.section .iwram76, "ax"


.thumb
Function_223b140: @ 223b140 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x10] @ 0x223b154, (=0xb)
	mov     r1, #0x2
	bl      LoadOverlay
	ldr     r0, [pc, #0xc] @ 0x223b158, (=0xc)
	mov     r1, #0x2
	bl      LoadOverlay
	pop     {r3,pc}
@ 0x223b154

.word 0xb @ 0x223b154
.word 0xc @ 0x223b158



.thumb
Function_223b15c: @ 223b15c :thumb
	mov     r3, r2
	sub     r3, #0xa
	strb    r3, [r0, #0x0]
	mov     r3, r1
	sub     r3, #0xa
	strb    r3, [r0, #0x2]
	add     r2, #0xa
	strb    r2, [r0, #0x1]
	add     r1, #0xa
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x223b172


.align 2, 0


.thumb
Function_223b174: @ 223b174 :thumb
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x2]
	mov     r1, #0xc0
	strb    r1, [r0, #0x1]
	mov     r1, #0xff
	strb    r1, [r0, #0x3]
	bx      lr
@ 0x223b184

.thumb
Function_223b184: @ 223b184 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	beq     branch_223b1d8
	cmp     r2, #0x1
	bne     branch_223b1b4
	ldr     r3, [pc, #0x48] @ 0x223b1dc, (=RAM_21bf6bc)
	mov     r1, #0x1c
	mov     r2, #0x1e
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r0, r4
	bl      Function_200d4c4
	add     r1, sp, #0x0
	mov     r0, r4
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	mov     r0, r5
	bl      Function_223b174
	pop     {r3-r5,pc}
@ 0x223b1b4

.thumb
branch_223b1b4: @ 223b1b4 :thumb
	add     r1, sp, #0x0
	mov     r0, r4
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r3, sp, #0x0
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	mov     r0, r5
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_223b15c
.thumb
branch_223b1d8: @ 223b1d8 :thumb
	pop     {r3-r5,pc}
@ 0x223b1da


.align 2


.word RAM_21bf6bc @ 0x223b1dc
.thumb
Function_223b1e0: @ 223b1e0 :thumb
	push    {r3-r7,lr}
	mov     r4, #0x0
	mov     r7, r4
	mov     r6, #0xcb
	mov     r5, r0
	sub     r7, #0x38
	lsl     r6, r6, #2
.thumb
branch_223b1ee: @ 223b1ee :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x0
	beq     branch_223b1fc
	mov     r1, r7
	mov     r2, #0x10
	bl      Function_200d5dc
.thumb
branch_223b1fc: @ 223b1fc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223b1ee
	pop     {r3-r7,pc}
@ 0x223b206


.align 2, 0


.thumb
Function_223b208: @ 223b208 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xf1
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r6, #0x0
	lsl     r0, r0, #3
	add     r0, r7, r0
	ldr     r4, [r0, #0x8]
	mov     r5, r7
.thumb
branch_223b21c: @ 223b21c :thumb
	ldrb    r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_223b25a
	mov     r0, #0xca
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	ldrb    r1, [r4, #0x1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	ldrb    r1, [r4, #0x2]
	ldr     r0, [pc, #0x40] @ 0x223b274, (=0x32a)
	strb    r1, [r5, r0]
	lsl     r1, r6, #24
	mov     r0, r7
	lsr     r1, r1, #24
	bl      Function_223b52c
	mov     r0, #0x33
	mov     r1, #0xcb
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r5, r1]
	mov     r2, #0x0
	bl      Function_223b184
	mov     r0, #0xc9
	mov     r1, #0x1
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	b       branch_223b266
@ 0x223b25a

.thumb
branch_223b25a: @ 223b25a :thumb
	mov     r0, #0xc9
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	strb    r1, [r5, r0]
.thumb
branch_223b266: @ 223b266 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1ce4 @ add r4, r4, #0x3
	add     r5, #0x10
	cmp     r6, #0x8
	blt     branch_223b21c
	pop     {r3-r7,pc}
@ 0x223b272


.align 2


.word 0x32a @ 0x223b274
.thumb
Function_223b278: @ 223b278 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r0, #0xc9
	mov     r4, #0x0
	mov     r3, r6
	lsl     r0, r0, #2
.thumb
branch_223b286: @ 223b286 :thumb
	ldr     r2, [r3, r0]
	cmp     r2, #0x1
	beq     branch_223b2e8
	add     r0, r6, r1
	mov     r1, #0x42
	lsl     r1, r1, #4
	ldrb    r3, [r0, r1]
	lsl     r5, r4, #4
	mov     r0, r1
	add     r2, r6, r5
	sub     r0, #0xf8
	strb    r3, [r2, r0]
	mov     r0, r1
	sub     r0, #0xf7
	add     r7, r6, r0
	mov     r0, #0xbe
	sub     r1, #0xf6
	strb    r0, [r7, r5]
	add     r0, r6, r1
	mov     r1, #0x46
	strb    r1, [r0, r5]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	bl      Function_20227a4
	ldr     r0, [sp, #0x8]
	strb    r0, [r7, r5]
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x0]
	strb    r1, [r0, r5]
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_223b52c
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	bl      Function_223b314
	mov     r0, #0xc9
	mov     r2, #0x1
	add     r1, r6, r5
	lsl     r0, r0, #2
	str     r2, [r1, r0]
	add     sp, #0xc
	mov     r0, r4
	pop     {r4-r7,pc}
@ 0x223b2e8

.thumb
branch_223b2e8: @ 223b2e8 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r3, #0x10
	cmp     r4, #0x8
	blt     branch_223b286
	mov     r0, #0xff
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223b2f6


.align 2, 0


.thumb
Function_223b2f8: @ 223b2f8 :thumb
	mov     r1, #0xc9
	mov     r3, #0x0
	lsl     r1, r1, #2
.thumb
branch_223b2fe: @ 223b2fe :thumb
	ldr     r2, [r0, r1]
	cmp     r2, #0x1
	beq     branch_223b308
	mov     r0, #0x1
	bx      lr
@ 0x223b308

.thumb
branch_223b308: @ 223b308 :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	add     r0, #0x10
	cmp     r3, #0x8
	blt     branch_223b2fe
	mov     r0, #0x0
	bx      lr
@ 0x223b314

.thumb
Function_223b314: @ 223b314 :thumb
	push    {r3-r7,lr}
	mov     r7, #0xc9
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_223b320: @ 223b320 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x1
	bne     branch_223b360
	cmp     r4, r6
	bne     branch_223b338
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200d474
	b       branch_223b360
@ 0x223b338

.thumb
branch_223b338: @ 223b338 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200d488
	mov     r1, r0
	bne     branch_223b354
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	bl      Function_200d474
	b       branch_223b360
@ 0x223b354

.thumb
branch_223b354: @ 223b354 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	.hword  0x1c89 @ add r1, r1, #0x2
	bl      Function_200d474
.thumb
branch_223b360: @ 223b360 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223b320
	pop     {r3-r7,pc}
@ 0x223b36a


.align 2, 0


.thumb
Function_223b36c: @ 223b36c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	mov     r1, r0
	add     r1, #0xdc
	ldr     r4, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	ldr     r5, [r1, #0x0]
	mov     r1, #0x5b
	str     r1, [sp, #0x0]
	add     r1, #0xca
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [sp, #0xc]
	mov     r1, #0x2
	str     r1, [sp, #0x10]
	ldr     r1, [pc, #0x5c] @ 0x223b3f0, (=0x532d)
	mov     r6, r2
	str     r1, [sp, #0x14]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x3
	mov     r2, r4
	mov     r3, r5
	bl      Function_200cd7c
	mov     r0, r7
	bl      Function_2098140
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x223b3f4, (=0x4e20)
	mov     r1, r5
	add     r0, r6, r0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, #0x5b
	bl      Function_200cbdc
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x223b3f8, (=0x564d)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x5b
	mov     r3, #0x5d
	bl      Function_200ce0c
	mov     r3, #0x1
	ldr     r0, [pc, #0x1c] @ 0x223b3fc, (=0x59d9)
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5b
	bl      Function_200ce3c
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223b3f0

.word 0x532d @ 0x223b3f0
.word 0x4e20 @ 0x223b3f4
.word 0x564d @ 0x223b3f8
.word 0x59d9 @ 0x223b3fc
.thumb
Function_223b400: @ 223b400 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x74
	mov     r1, #0x26
	lsl     r1, r1, #4
	str     r0, [sp, #0x0]
	ldr     r0, [r0, r1]
	cmp     r0, #0x0
	bne     branch_223b412
	b       branch_223b520
@ 0x223b412

.thumb
branch_223b412: @ 223b412 :thumb
	ldr     r0, [sp, #0x0]
	mov     r7, #0x0
	str     r7, [r0, r1]
	add     r4, sp, #0x54
	add     r5, sp, #0x34
	mov     r6, r0
.thumb
branch_223b41e: @ 223b41e :thumb
	mov     r0, #0xff
	str     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_223b436
	bl      Function_200d488
	str     r0, [r4, #0x0]
	str     r7, [r5, #0x0]
.thumb
branch_223b436: @ 223b436 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x10
	cmp     r7, #0x8
	blt     branch_223b41e
	mov     r0, #0x0
	mov     r12, r0
.thumb
branch_223b446: @ 223b446 :thumb
	mov     r0, r12
	mov     r3, #0x7
	cmp     r0, #0x7
	bge     branch_223b476
	add     r4, sp, #0x70
	add     r5, sp, #0x50
.thumb
branch_223b452: @ 223b452 :thumb
	.hword  0x1f27 @ sub r7, r4, #0x4
	ldr     r2, [r4, #0x0]
	ldr     r0, [r7, #0x0]
	cmp     r0, r2
	blt     branch_223b46a
	ldr     r1, [r5, #0x0]
	.hword  0x1f2e @ sub r6, r5, #0x4
	str     r0, [r4, #0x0]
	ldr     r0, [r6, #0x0]
	str     r0, [r5, #0x0]
	str     r2, [r7, #0x0]
	str     r1, [r6, #0x0]
.thumb
branch_223b46a: @ 223b46a :thumb
	.hword  0x1e5b @ sub r3, r3, #0x1
	mov     r0, r12
	.hword  0x1f24 @ sub r4, r4, #0x4
	.hword  0x1f2d @ sub r5, r5, #0x4
	cmp     r3, r0
	bgt     branch_223b452
.thumb
branch_223b476: @ 223b476 :thumb
	mov     r0, r12
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r12, r0
	cmp     r0, #0x7
	blt     branch_223b446
	mov     r3, #0xca
	lsl     r3, r3, #2
	ldr     r0, [sp, #0x0]
	mov     r2, #0x0
	add     r1, sp, #0x1c
	add     r4, r3, #0x1
	add     r5, r3, #0x2
.thumb
branch_223b48e: @ 223b48e :thumb
	ldrb    r6, [r0, r3]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r6, [r1, #0x0]
	ldrb    r6, [r0, r4]
	strb    r6, [r1, #0x1]
	ldrb    r6, [r0, r5]
	add     r0, #0x10
	strb    r6, [r1, #0x2]
	.hword  0x1cc9 @ add r1, r1, #0x3
	cmp     r2, #0x8
	blt     branch_223b48e
	add     r3, sp, #0x1c
	add     r2, sp, #0x4
	mov     r1, #0x18
.thumb
branch_223b4aa: @ 223b4aa :thumb
	ldrb    r0, [r3, #0x0]
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223b4aa
	ldr     r5, [sp, #0x0]
	mov     r6, #0x0
	add     r4, sp, #0x34
	add     r7, sp, #0x4
.thumb
branch_223b4be: @ 223b4be :thumb
	ldr     r1, [r4, #0x0]
	cmp     r1, #0xff
	bne     branch_223b4d6
	mov     r0, #0xca
	mov     r1, #0x0
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r5, r0]
	ldr     r0, [pc, #0x50] @ 0x223b524, (=0x32a)
	strb    r1, [r5, r0]
	b       branch_223b516
@ 0x223b4d6

.thumb
branch_223b4d6: @ 223b4d6 :thumb
	lsl     r0, r1, #1
	add     r0, r1, r0
	ldrb    r1, [r7, r0]
	mov     r0, #0xca
	lsl     r0, r0, #2
	strb    r1, [r5, r0]
	ldr     r1, [r4, #0x0]
	lsl     r0, r1, #1
	add     r0, r1, r0
	add     r0, r7, r0
	ldrb    r1, [r0, #0x1]
	ldr     r0, [pc, #0x38] @ 0x223b528, (=0x329)
	strb    r1, [r5, r0]
	ldr     r1, [r4, #0x0]
	lsl     r0, r1, #1
	add     r0, r1, r0
	add     r0, r7, r0
	ldrb    r1, [r0, #0x2]
	ldr     r0, [pc, #0x28] @ 0x223b524, (=0x32a)
	strb    r1, [r5, r0]
	ldr     r0, [r4, #0x0]
	lsl     r1, r0, #4
	ldr     r0, [sp, #0x0]
	add     r1, r0, r1
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_223b516
	mov     r1, r6
	bl      Function_200d474
.thumb
branch_223b516: @ 223b516 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x10
	cmp     r6, #0x8
	blt     branch_223b4be
.thumb
branch_223b520: @ 223b520 :thumb
	add     sp, #0x74
	pop     {r4-r7,pc}
@ 0x223b524

.word 0x32a @ 0x223b524
.word 0x329 @ 0x223b528
.thumb
Function_223b52c: @ 223b52c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x34
	mov     r5, r1
	mov     r1, r0
	add     r1, #0xdc
	ldr     r7, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	ldr     r6, [r1, #0x0]
	mov     r1, #0xc9
	lsl     r1, r1, #2
	add     r2, r0, r1
	lsl     r1, r5, #4
	add     r4, r2, r1
	ldr     r1, [r2, r1]
	cmp     r1, #0x1
	bne     branch_223b558
	bl      ErrorHandling
	add     sp, #0x34
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x223b558

.thumb
branch_223b558: @ 223b558 :thumb
	ldrb    r1, [r4, #0x4]
	mov     r2, r5
	bl      Function_223b36c
	ldrb    r1, [r4, #0x5]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	ldrb    r1, [r4, #0x6]
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	mov     r0, #0x1
	str     r0, [sp, #0x2c]
	.hword  0x1e80 @ sub r0, r0, #0x2
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x30]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	ldrb    r0, [r4, #0x4]
	bl      Function_2098140
	ldr     r0, [pc, #0x28] @ 0x223b5b4, (=0x4e20)
	mov     r1, r6
	add     r0, r5, r0
	str     r0, [sp, #0x14]
	ldr     r0, [pc, #0x24] @ 0x223b5b8, (=0x532d)
	add     r2, sp, #0x0
	str     r0, [sp, #0x18]
	ldr     r0, [pc, #0x20] @ 0x223b5bc, (=0x564d)
	str     r0, [sp, #0x1c]
	ldr     r0, [pc, #0x20] @ 0x223b5c0, (=0x59d9)
	str     r0, [sp, #0x20]
	mov     r0, r7
	bl      Function_200ce6c
	str     r0, [r4, #0x8]
	bl      Function_200d330
	mov     r0, #0x1
	add     sp, #0x34
	pop     {r4-r7,pc}
@ 0x223b5b2


.align 2


.word 0x4e20 @ 0x223b5b4
.word 0x532d @ 0x223b5b8
.word 0x564d @ 0x223b5bc
.word 0x59d9 @ 0x223b5c0
.thumb
Function_223b5c4: @ 223b5c4 :thumb
	push    {r3-r7,lr}
	mov     r5, r2
	mov     r6, r1
	mov     r1, #0xc9
	mov     r4, r0
	lsl     r7, r5, #4
	add     r3, r4, r7
	lsl     r1, r1, #2
	ldr     r2, [r3, r1]
	cmp     r2, #0x0
	bne     branch_223b5de
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b5de

.thumb
branch_223b5de: @ 223b5de :thumb
	cmp     r6, #0x3
	bhi     branch_223b66e
	add     r2, r6, r6
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223b5ee

Jumppoints_223b5ee:
.hword branch_223b5f6 - Jumppoints_223b5ee - 2
.hword branch_223b636 - Jumppoints_223b5ee - 2
.hword branch_223b60c - Jumppoints_223b5ee - 2
.hword branch_223b636 - Jumppoints_223b5ee - 2
.thumb
branch_223b5f6: @ 223b5f6 :thumb
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	cmp     r1, #0xff
	bne     branch_223b672
	add     r4, #0xd4
	mov     r1, r5
	str     r5, [r4, #0x0]
	bl      Function_223b314
	b       branch_223b672
@ 0x223b60c

.thumb
branch_223b60c: @ 223b60c :thumb
	add     r0, #0xd4
	ldr     r0, [r0, #0x0]
	cmp     r0, r5
	bne     branch_223b672
	mov     r0, r1
	add     r0, #0xc
	add     r1, #0x8
	ldr     r0, [r3, r0]
	ldr     r1, [r3, r1]
	mov     r2, #0x1
	bl      Function_223b184
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b758
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b7d4
	b       branch_223b672
@ 0x223b636

.thumb
branch_223b636: @ 223b636 :thumb
	mov     r1, r4
	add     r1, #0xd4
	ldr     r1, [r1, #0x0]
	cmp     r1, #0xff
	bne     branch_223b672
	mov     r1, r5
	bl      Function_223b6c4
	mov     r1, #0x33
	add     r2, r4, r7
	lsl     r1, r1, #4
	mov     r6, r0
	ldr     r0, [r2, r1]
	.hword  0x1f09 @ sub r1, r1, #0x4
	ldr     r1, [r2, r1]
	mov     r2, #0x0
	bl      Function_223b184
	cmp     r6, #0x0
	bne     branch_223b666
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b704
.thumb
branch_223b666: @ 223b666 :thumb
	mov     r0, #0xff
	add     r4, #0xd4
	str     r0, [r4, #0x0]
	b       branch_223b672
@ 0x223b66e

.thumb
branch_223b66e: @ 223b66e :thumb
	bl      ErrorHandling
.thumb
branch_223b672: @ 223b672 :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x223b676


.align 2, 0


.thumb
Function_223b678: @ 223b678 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0xc9
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223b684: @ 223b684 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x1
	bne     branch_223b692
	mov     r0, r6
	mov     r1, r4
	bl      Function_223b704
.thumb
branch_223b692: @ 223b692 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223b684
	pop     {r3-r7,pc}
@ 0x223b69c

.thumb
Function_223b69c: @ 223b69c :thumb
	push    {r3-r7,lr}
	mov     r7, #0xc9
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_223b6a8: @ 223b6a8 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x1
	bne     branch_223b6ba
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r6
	bl      Function_200d3f4
.thumb
branch_223b6ba: @ 223b6ba :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x8
	blt     branch_223b6a8
	pop     {r3-r7,pc}
@ 0x223b6c4

.thumb
Function_223b6c4: @ 223b6c4 :thumb
	push    {r3,lr}
	lsl     r1, r1, #4
	add     r2, r0, r1
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_223b6d8
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223b6d8

.thumb
branch_223b6d8: @ 223b6d8 :thumb
	add     r0, #0x8
	ldr     r0, [r2, r0]
	add     r1, sp, #0x0
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r2, sp, #0x0
	mov     r0, #0x2
	mov     r1, #0x0
	ldsh    r0, [r2, r0]
	ldsh    r1, [r2, r1]
	mov     r2, #0xbe
	mov     r3, #0x46
	bl      0x2237e54
	cmp     r0, #0x3c
	bgt     branch_223b700
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x223b700

.thumb
branch_223b700: @ 223b700 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223b704

.thumb
Function_223b704: @ 223b704 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xca
	mov     r7, r1
	lsl     r0, r0, #2
	lsl     r4, r7, #4
	add     r6, r5, r0
	ldrb    r0, [r6, r4]
	bl      Function_2098140
	mov     r0, r5
	add     r0, #0xe0
	ldr     r1, [pc, #0x34] @ 0x223b754, (=0x4e20)
	ldr     r0, [r0, #0x0]
	add     r1, r7, r1
	bl      Function_200d070
	mov     r0, #0xcb
	lsl     r0, r0, #2
	add     r7, r5, r0
	ldr     r0, [r7, r4]
	bl      Function_200d0f4
	mov     r1, #0x0
	mov     r2, #0xc9
	lsl     r2, r2, #2
	str     r1, [r7, r4]
	add     r3, r5, r4
	str     r1, [r3, r2]
	strb    r1, [r6, r4]
	add     r0, r2, #0x5
	strb    r1, [r3, r0]
	add     r0, r2, #0x6
	add     r2, #0xc
	strb    r1, [r3, r0]
	ldr     r0, [r3, r2]
	mov     r2, r1
	bl      Function_223b15c
	pop     {r3-r7,pc}
@ 0x223b754

.word 0x4e20 @ 0x223b754
.thumb
Function_223b758: @ 223b758 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_223b6c4
	cmp     r0, #0x0
	bne     branch_223b778
	lsl     r0, r5, #4
	add     r1, r4, r0
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x1
	bl      Function_200d810
	pop     {r3-r5,pc}
@ 0x223b778

.thumb
branch_223b778: @ 223b778 :thumb
	lsl     r0, r5, #4
	add     r1, r4, r0
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_200d810
	pop     {r3-r5,pc}
@ 0x223b78a


.align 2, 0


.thumb
Function_223b78c: @ 223b78c :thumb
	push    {r4-r7}
	mov     r2, #0xf1
	lsl     r2, r2, #2
	ldr     r2, [r0, r2]
	ldr     r4, [pc, #0x38] @ 0x223b7d0, (=0x329)
	lsl     r2, r2, #3
	add     r2, r0, r2
	ldr     r2, [r2, #0x8]
	mov     r1, #0x0
	add     r3, r4, #0x1
	.hword  0x1e65 @ sub r5, r4, #0x1
.thumb
branch_223b7a2: @ 223b7a2 :thumb
	ldrb    r7, [r0, r5]
	ldrb    r6, [r2, #0x0]
	cmp     r7, r6
	bne     branch_223b7ba
	ldrb    r7, [r0, r4]
	ldrb    r6, [r2, #0x1]
	cmp     r7, r6
	bne     branch_223b7ba
	ldrb    r7, [r0, r3]
	ldrb    r6, [r2, #0x2]
	cmp     r7, r6
	beq     branch_223b7c0
.thumb
branch_223b7ba: @ 223b7ba :thumb
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x223b7c0

.thumb
branch_223b7c0: @ 223b7c0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1cd2 @ add r2, r2, #0x3
	add     r0, #0x10
	cmp     r1, #0x8
	blt     branch_223b7a2
	mov     r0, #0x0
	pop     {r4-r7}
	bx      lr
@ 0x223b7d0

.word 0x329 @ 0x223b7d0
.thumb
Function_223b7d4: @ 223b7d4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	lsl     r4, r1, #4
	mov     r0, #0xcb
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r1, sp, #0x0
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_200d550
	add     r2, sp, #0x0
	mov     r0, #0x2
	ldsh    r1, [r2, r0]
	ldr     r0, [pc, #0x10] @ 0x223b804, (=0x329)
	add     r3, r5, r4
	strb    r1, [r3, r0]
	mov     r1, #0x0
	ldsh    r1, [r2, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r1, [r3, r0]
	pop     {r3-r5,pc}
@ 0x223b802


.align 2


.word 0x329 @ 0x223b804
.thumb
Function_223b808: @ 223b808 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r3, #0xca
	mov     r7, r0
	lsl     r3, r3, #2
	mov     r0, #0x0
	mov     r1, r7
	add     r2, sp, #0x0
	add     r4, r3, #0x1
	add     r5, r3, #0x2
.thumb
branch_223b81c: @ 223b81c :thumb
	ldrb    r6, [r1, r3]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r6, [r2, #0x0]
	ldrb    r6, [r1, r4]
	strb    r6, [r2, #0x1]
	ldrb    r6, [r1, r5]
	add     r1, #0x10
	strb    r6, [r2, #0x2]
	.hword  0x1cd2 @ add r2, r2, #0x3
	cmp     r0, #0x8
	blt     branch_223b81c
	ldr     r0, [r7, #0x0]
	mov     r2, #0xf1
	lsl     r2, r2, #2
	ldr     r0, [r0, #0x20]
	ldr     r2, [r7, r2]
	add     r1, sp, #0x0
	bl      Function_202ca40
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223b846


.align 2, 0


.thumb
Function_223b848: @ 223b848 :thumb
	push    {r3-r6}
	mov     r3, #0xca
	lsl     r3, r3, #2
	mov     r2, #0x0
	add     r4, r3, #0x1
	add     r5, r3, #0x2
.thumb
branch_223b854: @ 223b854 :thumb
	ldrb    r6, [r1, r3]
	.hword  0x1c52 @ add r2, r2, #0x1
	strb    r6, [r0, #0x0]
	ldrb    r6, [r1, r4]
	strb    r6, [r0, #0x1]
	ldrb    r6, [r1, r5]
	add     r1, #0x10
	strb    r6, [r0, #0x2]
	.hword  0x1cc0 @ add r0, r0, #0x3
	cmp     r2, #0x8
	blt     branch_223b854
	pop     {r3-r6}
	bx      lr
@ 0x223b86e


.align 2, 0


.thumb
Function_223b870: @ 223b870 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, r1
	add     r1, sp, #0x0
	mov     r4, r2
	add     r1, #0x2
	add     r2, sp, #0x0
	mov     r6, r3
	bl      Function_200d550
	add     r1, sp, #0x0
	mov     r0, #0x0
	ldsh    r2, [r1, r0]
	sub     r2, r2, r6
	strb    r2, [r5, #0x0]
	ldsh    r0, [r1, r0]
	add     r0, r0, r6
	strb    r0, [r5, #0x1]
	mov     r0, #0x2
	ldsh    r2, [r1, r0]
	sub     r2, r2, r4
	strb    r2, [r5, #0x2]
	ldsh    r0, [r1, r0]
	add     r0, r0, r4
	strb    r0, [r5, #0x3]
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223b8a8

.thumb
Function_223b8a8: @ 223b8a8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x2
	mov     r1, #0x35
	bl      Function_2012744
	mov     r1, #0x8d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	mov     r1, #0x35
	bl      Function_2002bb8
	pop     {r4,pc}
@ 0x223b8c4

.thumb
Function_223b8c4: @ 223b8c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x2
	bl      Function_2002c60
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2012870
	mov     r0, #0x9
	lsl     r0, r0, #6
	add     r0, r4, r0
	bl      Function_201ee28
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2012870
	mov     r0, #0x93
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201ee28
	mov     r0, #0x8d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20127bc
	pop     {r4,pc}
@ 0x223b902


.align 2, 0


.thumb
Function_223b904: @ 223b904 :thumb
	push    {r3,lr}
	add     sp, #-0x18
	mov     r3, r0
	mov     r0, #0xe
	str     r0, [sp, #0x0]
	mov     r0, #0x7
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x1c] @ 0x223b93c, (=0x7530)
	mov     r2, r3
	str     r0, [sp, #0x14]
	mov     r0, r3
	add     r0, #0xe8
	add     r2, #0xdc
	add     r3, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r2, [r2, #0x0]
	ldr     r3, [r3, #0x0]
	mov     r1, #0x3
	bl      Function_200cd7c
	add     sp, #0x18
	pop     {r3,pc}
@ 0x223b93c

.word 0x7530 @ 0x223b93c
.thumb
Function_223b940: @ 223b940 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      Function_223b904
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0x68
	mov     r3, #0xa5
	str     r1, [sp, #0x0]
	bl      Function_223b98c
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0xc0
	mov     r3, #0xa5
	bl      Function_223b98c
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x223b96c

.thumb
Function_223b96c: @ 223b96c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x8e
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r4, r1
	bl      Function_20129d0
	mov     r0, #0x8f
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, r4
	bl      Function_20129d0
	pop     {r3-r5,pc}
@ 0x223b98a


.align 2, 0


.thumb
Function_223b98c: @ 223b98c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x5c
	mov     r5, r0
	mov     r4, r1
	str     r2, [sp, #0x10]
	mov     r7, r3
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x8
	mov     r3, #0x35
	bl      LoadFromNARC_9
	add     r1, r4, #0x5
	str     r0, [sp, #0x14]
	bl      Function_200b1ec_CallMsgDecrypt
	str     r0, [sp, #0x18]
	add     r0, sp, #0x1c
	bl      Function_201a7a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, sp, #0x1c
	mov     r2, #0xa
	mov     r3, #0x2
	bl      Function_201a870
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xb4] @ 0x223ba88, (=0xf0d02)
	ldr     r2, [sp, #0x18]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x1c
	mov     r1, #0x2
	str     r3, [sp, #0xc]
	bl      Function_201d78c
	add     r0, sp, #0x1c
	mov     r1, #0x2
	mov     r2, #0x35
	bl      Function_2012898
	mov     r3, #0x9
	lsl     r3, r3, #6
	mov     r1, #0xc
	mov     r6, r4
	mul     r6, r1
	add     r3, r5, r3
	mov     r1, #0x1
	mov     r2, #0x2
	add     r3, r3, r6
	bl      Function_201ed94
	mov     r0, #0x8d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x1c
	str     r0, [sp, #0x30]
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	bl      Function_200d9b0
	str     r0, [sp, #0x34]
	mov     r0, r5
	add     r0, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [pc, #0x68] @ 0x223ba8c, (=0x7530)
	bl      Function_200d04c
	str     r0, [sp, #0x38]
	mov     r2, #0x0
	mov     r0, #0x91
	str     r2, [sp, #0x3c]
	add     r1, r5, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	str     r0, [sp, #0x40]
	ldr     r1, [sp, #0x18]
	mov     r0, #0x2
	bl      Function_2002d7c
	lsr     r1, r0, #1
	ldr     r0, [sp, #0x10]
	add     r7, #0xc0
	sub     r0, r0, r1
	str     r0, [sp, #0x44]
	mov     r0, #0x1
	str     r0, [sp, #0x4c]
	mov     r0, #0x28
	str     r0, [sp, #0x50]
	mov     r0, #0x2
	str     r0, [sp, #0x54]
	mov     r0, #0x35
	str     r0, [sp, #0x58]
	mov     r0, #0x8e
	lsl     r0, r0, #2
	add     r5, r5, r0
	str     r7, [sp, #0x48]
	lsl     r4, r4, #2
	add     r0, sp, #0x2c
	bl      Function_20127e8
	str     r0, [r5, r4]
	ldr     r0, [r5, r4]
	ldr     r1, [sp, #0x70]
	bl      Function_2012ac0
	ldr     r0, [sp, #0x18]
	bl      Function_20237bc_FreeMsg
	ldr     r0, [sp, #0x14]
	bl      Function_200b190
	add     r0, sp, #0x1c
	bl      Function_201a8fc
	add     sp, #0x5c
	pop     {r4-r7,pc}
@ 0x223ba88

.word 0xf0d02 @ 0x223ba88
.word 0x7530 @ 0x223ba8c
.thumb
Function_223ba90: @ 223ba90 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r7, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	mov     r3, r0
	mov     r5, r0
	mov     r0, #0x42
	lsl     r0, r0, #4
.thumb
branch_223baa4: @ 223baa4 :thumb
	add     r2, r7, r3
	.hword  0x1c5b @ add r3, r3, #0x1
	strb    r5, [r2, r0]
	cmp     r3, #0x8
	blt     branch_223baa4
	lsl     r0, r1, #3
	str     r0, [sp, #0x8]
.thumb
branch_223bab2: @ 223bab2 :thumb
	mov     r6, #0x0
	mov     r4, r7
.thumb
branch_223bab6: @ 223bab6 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, r5
	bl      Function_202ca94
	cmp     r0, #0x0
	bne     branch_223baca
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, #0xc
	blt     branch_223bab6
.thumb
branch_223baca: @ 223baca :thumb
	add     r1, r7, r5
	add     r1, #0x80
	ldrb    r1, [r1, #0x0]
	cmp     r1, #0x0
	bne     branch_223bad8
	cmp     r0, #0x1
	bne     branch_223bafa
.thumb
branch_223bad8: @ 223bad8 :thumb
	ldr     r0, [sp, #0x0]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x0]
	cmp     r1, r0
	ble     branch_223bafa
	ldr     r0, [sp, #0x4]
	add     r2, r5, #0x1
	add     r1, r7, r0
	mov     r0, #0x42
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x8
	bge     branch_223bb00
.thumb
branch_223bafa: @ 223bafa :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x51
	blt     branch_223bab2
.thumb
branch_223bb00: @ 223bb00 :thumb
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x223bb04

.thumb
Function_223bb04: @ 223bb04 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r7, r0
	add     r0, #0xdc
	ldr     r6, [r0, #0x0]
	mov     r0, r7
	add     r0, #0xe0
	ldr     r5, [r0, #0x0]
	mov     r0, r7
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_223bb1e: @ 223bb1e :thumb
	mov     r0, #0x42
	add     r1, r7, r4
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	bl      Function_2098140
	mov     r3, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x64] @ 0x223bb9c, (=0x61a8)
	mov     r1, r5
	add     r0, r4, r0
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r2, #0x5b
	bl      Function_200cbdc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_223bb1e
	mov     r0, #0x5b
	str     r0, [sp, #0x0]
	add     r0, #0xca
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0x40] @ 0x223bba0, (=0x66b4)
	mov     r1, #0x3
	str     r0, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r2, r6
	mov     r3, r5
	bl      Function_200cd7c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x30] @ 0x223bba4, (=0x6a2c)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x5b
	mov     r3, #0xb4
	bl      Function_200ce0c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x20] @ 0x223bba8, (=0x6db8)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, #0x5b
	mov     r3, #0x58
	bl      Function_200ce3c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x223bb9a


.align 2


.word 0x61a8 @ 0x223bb9c
.word 0x66b4 @ 0x223bba0
.word 0x6a2c @ 0x223bba4
.word 0x6db8 @ 0x223bba8
.thumb
Function_223bbac: @ 223bbac :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r5, r0
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xe0
	ldr     r7, [r0, #0x0]
	add     r0, sp, #0x4
	strh    r4, [r0, #0x20]
	strh    r4, [r0, #0x22]
	strh    r4, [r0, #0x24]
	strh    r4, [r0, #0x26]
	mov     r0, #0x3c
	str     r0, [sp, #0x2c]
	mov     r0, #0x2
	str     r0, [sp, #0x34]
	mov     r0, #0x1
	str     r0, [sp, #0x50]
	.hword  0x1e80 @ sub r0, r0, #0x2
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	ldr     r0, [pc, #0x7c] @ 0x223bc5c, (=0x66b4)
	str     r4, [sp, #0x54]
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x7c] @ 0x223bc60, (=0x6a2c)
	str     r4, [sp, #0x30]
	str     r0, [sp, #0x40]
	ldr     r0, [pc, #0x78] @ 0x223bc64, (=0x6db8)
	str     r0, [sp, #0x44]
	mov     r0, #0xf9
	lsl     r0, r0, #2
	add     r6, r5, r0
.thumb
branch_223bbf2: @ 223bbf2 :thumb
	ldr     r0, [pc, #0x74] @ 0x223bc68, (=0x61a8)
	mov     r1, r7
	add     r0, r4, r0
	str     r0, [sp, #0x38]
	ldr     r0, [sp, #0x0]
	add     r2, sp, #0x24
	bl      Function_200ce6c
	.hword  0x1c64 @ add r4, r4, #0x1
	stmia   r6!, {r0}
	cmp     r4, #0x8
	blt     branch_223bbf2
	ldr     r3, [pc, #0x60] @ 0x223bc6c, (=0x223ed3c)
	add     r2, sp, #0x4
	mov     r1, #0x10
.thumb
branch_223bc10: @ 223bc10 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223bc10
	mov     r7, #0xf9
	mov     r6, #0x0
	add     r4, sp, #0x4
	lsl     r7, r7, #2
.thumb
branch_223bc24: @ 223bc24 :thumb
	mov     r2, #0x2
	ldsh    r2, [r4, r2]
	mov     r0, #0xf9
	mov     r1, #0x0
	lsl     r0, r0, #2
	.hword  0x1e52 @ sub r2, r2, #0x1
	lsl     r2, r2, #16
	ldsh    r1, [r4, r1]
	ldr     r0, [r5, r0]
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	bl      Function_200d330
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      Function_200d3cc
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x8
	blt     branch_223bc24
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x223bc5c

.word 0x66b4 @ 0x223bc5c
.word 0x6a2c @ 0x223bc60
.word 0x6db8 @ 0x223bc64
.word 0x61a8 @ 0x223bc68
.word 0x223ed3c @ 0x223bc6c
.thumb
Function_223bc70: @ 223bc70 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0xf9
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223bc7c: @ 223bc7c :thumb
	mov     r0, r6
	add     r0, #0xe0
	ldr     r1, [pc, #0x18] @ 0x223bc9c, (=0x61a8)
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	bl      Function_200d070
	ldr     r0, [r5, r7]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x8
	blt     branch_223bc7c
	pop     {r3-r7,pc}
@ 0x223bc9a


.align 2


.word 0x61a8 @ 0x223bc9c
.thumb
Function_223bca0: @ 223bca0 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r7, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r6, r7
	mov     r4, r1
	mov     r5, r1
.thumb
branch_223bcb0: @ 223bcb0 :thumb
	mov     r0, #0x51
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223bcc6
	mov     r0, r5
	bl      0x2225c50
	cmp     r0, #0x1
	bne     branch_223bcc6
	mov     r7, #0x1
.thumb
branch_223bcc6: @ 223bcc6 :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x24
	cmp     r6, #0x8
	blt     branch_223bcb0
	mov     r1, #0x12
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	add     r0, r0, r1
	bl      0x2225c14
	cmp     r0, #0x1
	bne     branch_223bd0e
	mov     r4, #0x59
	ldr     r0, [sp, #0x4]
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	ldr     r3, [sp, #0x4]
	sub     r4, #0x44
	ldsh    r3, [r3, r4]
	mov     r1, #0x5
	mov     r2, #0x0
	mov     r7, #0x1
	bl      Function_2019184
	mov     r4, #0x59
	ldr     r0, [sp, #0x4]
	lsl     r4, r4, #2
	ldr     r0, [r0, r4]
	ldr     r3, [sp, #0x4]
	sub     r4, #0x42
	ldsh    r3, [r3, r4]
	mov     r1, #0x5
	mov     r2, #0x3
	bl      Function_2019184
.thumb
branch_223bd0e: @ 223bd0e :thumb
	cmp     r7, #0x0
	bne     branch_223bd2a
	mov     r1, #0x5b
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r2, #0x0
	str     r2, [r0, #0x0]
	ldr     r0, [sp, #0x4]
	bl      free
	ldr     r0, [sp, #0x0]
	bl      Call_RemoveTaskFromTaskList
.thumb
branch_223bd2a: @ 223bd2a :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223bd2e


.align 2, 0


.thumb
Function_223bd30: @ 223bd30 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	str     r1, [sp, #0xc]
	mov     r1, #0x17
	str     r0, [sp, #0x8]
	mov     r0, #0x35
	lsl     r1, r1, #4
	str     r2, [sp, #0x10]
	bl      malloc
	str     r0, [sp, #0x1c]
	ldr     r0, [sp, #0x8]
	mov     r1, #0x59
	add     r0, #0xe4
	ldr     r2, [r0, #0x0]
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	str     r2, [r0, r1]
	mov     r4, r0
	mov     r5, r0
	ldr     r0, [sp, #0xc]
	mov     r1, #0x38
	lsl     r0, r0, #4
	neg     r0, r0
	str     r0, [sp, #0x18]
	ldr     r0, [sp, #0xc]
	ldr     r6, [sp, #0x8]
	mul     r1, r0
	ldr     r0, [sp, #0x10]
	mov     r7, #0x0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r1, [sp, #0x14]
	str     r0, [sp, #0x20]
.thumb
branch_223bd74: @ 223bd74 :thumb
	mov     r0, #0xc9
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_223bd88
	mov     r0, #0x51
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223bdde
@ 0x223bd88

.thumb
branch_223bd88: @ 223bd88 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r1, [r6, r0]
	mov     r0, #0x51
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r1, sp, #0x24
	ldr     r0, [r4, r0]
	add     r1, #0x2
	add     r2, sp, #0x24
	bl      Function_200d550
	add     r1, sp, #0x24
	mov     r0, #0x0
	ldsh    r3, [r1, r0]
	mov     r0, #0x2
	ldsh    r1, [r1, r0]
	ldr     r0, [sp, #0x18]
	ldr     r2, [sp, #0x14]
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x20]
	add     r2, r1, r2
	lsl     r2, r2, #16
	str     r0, [sp, #0x4]
	mov     r0, r5
	asr     r2, r2, #16
	bl      0x2225bc8
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      0x2225c50
	mov     r1, #0x51
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	mov     r0, r5
	bl      0x2225c50
.thumb
branch_223bdde: @ 223bdde :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x10
	.hword  0x1d24 @ add r4, r4, #0x4
	add     r5, #0x24
	cmp     r7, #0x8
	blt     branch_223bd74
	mov     r1, #0x59
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x5
	bl      Function_20192ec
	mov     r4, r0
	mov     r1, #0x59
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x5
	bl      Function_20192f8
	mov     r3, r0
	ldr     r0, [sp, #0xc]
	mov     r5, #0x37
	lsl     r0, r0, #4
	add     r0, r3, r0
	lsl     r0, r0, #16
	asr     r0, r0, #16
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x10]
	mov     r1, #0x12
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	lsl     r3, r3, #16
	ldr     r2, [sp, #0xc]
	mvn     r5, r5
	mul     r5, r2
	add     r2, r4, r5
	lsl     r2, r2, #16
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #4
	add     r0, r0, r1
	lsl     r1, r4, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	asr     r3, r3, #16
	bl      0x2225bc8
	mov     r2, #0x96
	lsl     r2, r2, #2
	ldr     r0, [sp, #0x8]
	mov     r1, r2
	add     r3, r0, r2
	ldr     r0, [sp, #0x1c]
	sub     r1, #0xec
	str     r3, [r0, r1]
	sub     r2, #0xec
	ldr     r0, [r0, r2]
	mov     r3, #0x1
	str     r3, [r0, #0x0]
	ldr     r0, [pc, #0xc] @ 0x223be68, (=0x223bca1)
	ldr     r1, [sp, #0x1c]
	lsl     r2, r3, #12
	bl      AddTaskToTaskList1
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x223be66


.align 2


.word 0x223bca1 @ 0x223be68
.thumb
Function_223be6c: @ 223be6c :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r2, #0x2
	mov     r1, #0x0
	ldr     r0, [pc, #0x10] @ 0x223be88, (=0x223be8d)
	str     r2, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x35
	mov     r3, r1
	bl      Function_2024220
	add     sp, #0x8
	pop     {r3,pc}
@ 0x223be86


.align 2


.word 0x223be8d @ 0x223be88
.thumb
Function_223be8c: @ 223be8c :thumb
	push    {r3,lr}
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r0, [pc, #0x60] @ 0x223bef8, (=0x4000008)
	mov     r1, #0x3
	ldrh    r2, [r0, #0x0]
	bic     r2, r1
	mov     r1, #0x1
	orr     r1, r2
	strh    r1, [r0, #0x0]
	add     r0, #0x58
	ldrh    r2, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x223befc, (=0xffffcffd)
	and     r2, r1
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x40] @ 0x223bf00, (=0xcffb)
	and     r3, r2
	strh    r3, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	sub     r2, #0x1c
	and     r3, r1
	mov     r1, #0x8
	orr     r1, r3
	strh    r1, [r0, #0x0]
	ldrh    r1, [r0, #0x0]
	and     r1, r2
	strh    r1, [r0, #0x0]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	blx     G3X_SetFog
	mov     r0, #0x0
	ldr     r2, [pc, #0x1c] @ 0x223bf04, (=0x7fff)
	mov     r1, r0
	mov     r3, #0x3f
	str     r0, [sp, #0x0]
	blx     G3X_SetClearColor
	ldr     r1, [pc, #0x14] @ 0x223bf08, (=0xbfff0000)
	ldr     r0, [pc, #0x18] @ 0x223bf0c, (=0x4000580)
	str     r1, [r0, #0x0]
	pop     {r3,pc}
@ 0x223bef8

.word 0x4000008 @ 0x223bef8
.word 0xffffcffd @ 0x223befc
.word 0xcffb @ 0x223bf00
.word 0x7fff @ 0x223bf04
.word 0xbfff0000 @ 0x223bf08
.word 0x4000580 @ 0x223bf0c
.thumb
Function_223bf10: @ 223bf10 :thumb
	push    {r3-r5,lr}
	ldr     r3, [pc, #0x34] @ 0x223bf48, (=0x2100dec)
	mov     r0, #0x2
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	lsl     r0, r0, #14
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x28] @ 0x223bf4c, (=0x2100df4)
	mov     r1, #0x0
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r2, r1
	blx     r3
	mov     r5, r0
	cmp     r4, #0x0
	bne     branch_223bf38
	bl      ErrorHandling
.thumb
branch_223bf38: @ 223bf38 :thumb
	cmp     r5, #0x0
	bne     branch_223bf40
	bl      ErrorHandling
.thumb
branch_223bf40: @ 223bf40 :thumb
	bl      Function_2014000
	pop     {r3-r5,pc}
@ 0x223bf46

.align 2
.word 0x2100dec @ 0x223bf48
.word 0x2100df4 @ 0x223bf4c



.thumb
.globl Function_76_223bf50
Function_76_223bf50: @ 223bf50 :thumb
	push    {r3,lr}
	bl      Call_G3X_Reset
	bl      Function_201469c
	cmp     r0, #0x0
	ble     branch_223bf66
	bl      Call_G3X_Reset
	blx     Function_20a73c0
branch_223bf66: @ 223bf66 :thumb

	bl      Function_20146c0
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_20241bc
	pop     {r3,pc}
@ 0x223bf74

.thumb
Function_223bf74: @ 223bf74 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x40
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x58]
	mov     r0, r3
	mov     r6, r2
	str     r3, [sp, #0x1c]
	bl      Function_223d45c
	cmp     r0, #0x3
	bhi     branch_223bff2
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223bf98

Jumppoints_223bf98:
.hword branch_223bfa0 - Jumppoints_223bf98 - 2
.hword branch_223bfb2 - Jumppoints_223bf98 - 2
.hword branch_223bfc8 - Jumppoints_223bf98 - 2
.hword branch_223bfde - Jumppoints_223bf98 - 2
.thumb
branch_223bfa0: @ 223bfa0 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x24]
	mov     r0, #0x4
	str     r0, [sp, #0x28]
	mov     r0, #0x1
	mov     r5, #0xd
	mov     r4, #0x6
	str     r0, [sp, #0x2c]
	b       branch_223bff2
@ 0x223bfb2

.thumb
branch_223bfb2: @ 223bfb2 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r0, #0x4
	str     r0, [sp, #0x2c]
	mov     r0, #0x1
	mov     r5, #0xb
	mov     r4, #0x8
	str     r0, [sp, #0x30]
	b       branch_223bff2
@ 0x223bfc8

.thumb
branch_223bfc8: @ 223bfc8 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r0, #0x4
	str     r0, [sp, #0x2c]
	mov     r0, #0x1
	mov     r5, #0xb
	mov     r4, #0x8
	str     r0, [sp, #0x30]
	b       branch_223bff2
@ 0x223bfde

.thumb
branch_223bfde: @ 223bfde :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x24]
	mov     r0, #0x0
	str     r0, [sp, #0x28]
	mov     r0, #0x4
	str     r0, [sp, #0x2c]
	mov     r0, #0x1
	mov     r5, #0xb
	mov     r4, #0x8
	str     r0, [sp, #0x30]
.thumb
branch_223bff2: @ 223bff2 :thumb
	lsr     r0, r4, #31
	add     r0, r4, r0
	asr     r7, r0, #1
	ldr     r0, [sp, #0x18]
	bl      Function_201a7a0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x9
	str     r0, [sp, #0x4]
	lsl     r0, r4, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	mov     r0, #0xa6
	str     r0, [sp, #0x10]
	lsl     r2, r6, #24
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x18]
	lsr     r2, r2, #24
	mov     r3, #0x15
	bl      Function_201a7e8
	mov     r0, r7
	mov     r1, #0x35
	bl      Function_2013a04
	mov     r2, #0x67
	ldr     r1, [sp, #0x1c]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x8
	mov     r3, #0x35
	bl      LoadFromNARC_9
	mov     r6, #0x0
	str     r0, [sp, #0x20]
	cmp     r7, #0x0
	ble     branch_223c080
	add     r5, sp, #0x24
.thumb
branch_223c04a: @ 223c04a :thumb
	ldr     r1, [r5, #0x0]
	ldr     r0, [sp, #0x20]
	lsl     r2, r1, #3
	ldr     r1, [pc, #0x94] @ 0x223c0e8, (=0x223ef3c)
	ldr     r1, [r1, r2]
	bl      Function_200b1ec_CallMsgDecrypt
	ldr     r2, [r5, #0x0]
	mov     r4, r0
	lsl     r3, r2, #3
	ldr     r2, [pc, #0x88] @ 0x223c0e8, (=0x223ef3c)
	mov     r0, #0x67
	add     r2, r2, r3
	ldr     r1, [sp, #0x1c]
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r2, [r2, #0x4]
	mov     r1, r4
	bl      Function_2013a6c
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, r7
	blt     branch_223c04a
.thumb
branch_223c080: @ 223c080 :thumb
	ldr     r0, [sp, #0x20]
	bl      Function_200b190
	mov     r1, #0x67
	ldr     r0, [sp, #0x1c]
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	mov     r1, #0x0
	str     r0, [sp, #0x34]
	add     r0, sp, #0x24
	strb    r1, [r0, #0x18]
	ldr     r1, [sp, #0x18]
	mov     r2, #0xf
	str     r1, [sp, #0x38]
	mov     r1, #0x1
	strb    r1, [r0, #0x19]
	strb    r7, [r0, #0x1a]
	ldrb    r3, [r0, #0x1b]
	bic     r3, r2
	strb    r3, [r0, #0x1b]
	ldrb    r3, [r0, #0x1b]
	mov     r2, #0x30
	bic     r3, r2
	strb    r3, [r0, #0x1b]
	ldrb    r3, [r0, #0x1b]
	mov     r2, #0xc0
	bic     r3, r2
	mov     r2, #0x40
	orr     r2, r3
	strb    r2, [r0, #0x1b]
	ldr     r0, [sp, #0x18]
	mov     r2, #0x1f
	mov     r3, #0xd
	bl      Function_200dc48
	mov     r0, #0x35
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x34
	mov     r1, #0x8
	mov     r3, r2
	bl      Function_2001b7c
	mov     r2, #0x1a
	ldr     r1, [sp, #0x1c]
	lsl     r2, r2, #4
	str     r0, [r1, r2]
	add     sp, #0x40
	pop     {r3-r7,pc}
@ 0x223c0e6


.align 2


.word 0x223ef3c @ 0x223c0e8
.thumb
Function_223c0ec: @ 223c0ec :thumb
	push    {r4,r5}
	lsr     r5, r0, #31
	lsl     r4, r0, #30
	sub     r4, r4, r5
	mov     r3, #0x1e
	ror     r4, r3
	add     r4, r5, r4
	mov     r3, #0x38
	mul     r3, r4
	add     r3, #0x28
	strh    r3, [r1, #0x0]
	asr     r1, r0, #2
	mov     r0, #0x35
	mul     r0, r1
	add     r0, #0x1b
	strh    r0, [r2, #0x0]
	pop     {r4,r5}
	bx      lr
@ 0x223c110

.thumb
Function_223c110: @ 223c110 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r1, r0
	add     r1, #0xdc
	ldr     r4, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	add     r0, #0xe8
	ldr     r5, [r1, #0x0]
	ldr     r6, [r0, #0x0]
	bl      Function_2079fd0
	mov     r1, #0x13
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	str     r0, [sp, #0xc]
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	mov     r0, #0xfa
	lsl     r0, r0, #6
	str     r0, [sp, #0x14]
	mov     r0, r6
	mov     r1, #0x2
	mov     r2, r4
	mov     r3, r5
	bl      Function_200cd7c
	bl      Function_2079fdc
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x28] @ 0x223c180, (=0x4268)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x13
	bl      Function_200ce0c
	bl      Function_2079fe8
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x223c184, (=0x4650)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, #0x13
	bl      Function_200ce3c
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x223c180

.word 0x4268 @ 0x223c180
.word 0x4650 @ 0x223c184
.thumb
Function_223c188: @ 223c188 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	ldr     r1, [r5, #0x0]
	mov     r6, #0x0
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	ble     branch_223c276
	str     r6, [sp, #0xc]
	mov     r4, r5
.thumb
branch_223c19c: @ 223c19c :thumb
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	ldr     r7, [r0, #0x4]
	mov     r0, r7
	bl      Function_2079d80_CallGetPokeIconGraphicNr
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xc8] @ 0x223c27c, (=0x3a98)
	mov     r1, r5
	add     r0, r6, r0
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x13
	bl      Function_200d888
	mov     r1, #0x0
	add     r0, sp, #0x18
	strh    r1, [r0, #0x0]
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, #0xa
	str     r0, [sp, #0x20]
	mov     r0, r1
	str     r0, [sp, #0x24]
	mov     r0, #0x1
	str     r0, [sp, #0x28]
	mov     r0, #0x2
	str     r0, [sp, #0x44]
	mov     r0, r1
	str     r0, [sp, #0x48]
	ldr     r0, [pc, #0x90] @ 0x223c27c, (=0x3a98)
	add     r2, sp, #0x18
	add     r0, r6, r0
	str     r0, [sp, #0x2c]
	mov     r0, #0xfa
	lsl     r0, r0, #6
	str     r0, [sp, #0x30]
	ldr     r0, [pc, #0x84] @ 0x223c280, (=0x4268)
	str     r0, [sp, #0x34]
	ldr     r0, [pc, #0x84] @ 0x223c284, (=0x4650)
	str     r0, [sp, #0x38]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x3c]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x40]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_200ce6c
	mov     r1, #0xbf
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r7
	mov     r1, #0x5
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x10]
	mov     r0, r7
	mov     r1, #0x4c
	mov     r2, #0x0
	bl      GetPkmnData
	str     r0, [sp, #0x14]
	mov     r0, r7
	mov     r1, #0x70
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r1, r0
	ldr     r0, [sp, #0x10]
	ldr     r2, [sp, #0x14]
	bl      GetPokeIconPaletteNr
	mov     r1, r0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	ldr     r0, [r0, #0x0]
	bl      Function_2021f24
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_200d364
	ldr     r0, [sp, #0xc]
	ldr     r1, [r5, #0x0]
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r0, [sp, #0xc]
	ldr     r0, [r1, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_223c19c
.thumb
branch_223c276: @ 223c276 :thumb
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x223c27a


.align 2


.word 0x3a98 @ 0x223c27c
.word 0x4268 @ 0x223c280
.word 0x4650 @ 0x223c284
.thumb
Function_223c288: @ 223c288 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_223c2b0
	mov     r7, #0xbf
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223c29c: @ 223c29c :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      Function_200d3f4
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223c29c
.thumb
branch_223c2b0: @ 223c2b0 :thumb
	mov     r5, #0x0
	mov     r4, r6
.thumb
branch_223c2b4: @ 223c2b4 :thumb
	ldr     r7, [r4, #0x4]
	cmp     r7, #0xff
	beq     branch_223c2f8
	add     r1, sp, #0x0
	mov     r0, r5
	add     r1, #0x2
	add     r2, sp, #0x0
	bl      Function_223c0ec
	add     r2, sp, #0x0
	mov     r1, #0x2
	ldsh    r1, [r2, r1]
	mov     r3, r2
	mov     r2, #0x0
	ldsh    r2, [r3, r2]
	lsl     r0, r7, #2
	add     r7, r6, r0
	mov     r0, #0xbf
	lsl     r0, r0, #2
	sub     r1, #0x10
	add     r2, #0xc
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r7, r0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r0, #0xbf
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	mov     r1, #0x1
	bl      Function_200d3f4
.thumb
branch_223c2f8: @ 223c2f8 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r4, #0x8
	cmp     r5, #0xc
	blt     branch_223c2b4
	pop     {r3-r7,pc}
@ 0x223c302


.align 2, 0


.thumb
Function_223c304: @ 223c304 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_223c32a
	mov     r7, #0xbf
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223c318: @ 223c318 :thumb
	ldr     r0, [r5, r7]
	bl      Function_200d330
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223c318
.thumb
branch_223c32a: @ 223c32a :thumb
	pop     {r3-r7,pc}
@ 0x223c32c

.thumb
Function_223c32c: @ 223c32c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x0]
	mov     r4, #0x0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	ble     branch_223c352
	mov     r7, #0xbf
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_223c340: @ 223c340 :thumb
	ldr     r0, [r5, r7]
	bl      Function_200d0f4
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	ldr     r0, [r0, #0x0]
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r0
	blt     branch_223c340
.thumb
branch_223c352: @ 223c352 :thumb
	pop     {r3-r7,pc}
@ 0x223c354

.thumb
Function_223c354: @ 223c354 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x0
	mov     r4, r7
	mov     r5, r7
.thumb
branch_223c35e: @ 223c35e :thumb
	ldr     r0, [r4, #0x8]
	bl      Function_223d430
	mov     r1, #0x9a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x99
	ldr     r1, [r4, #0x4]
	lsl     r0, r0, #2
	str     r1, [r5, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r5, r0]
	cmp     r0, #0x0
	bne     branch_223c38c
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	cmp     r0, #0xff
	beq     branch_223c38c
	mov     r0, r7
	mov     r1, r6
	bl      Function_223e91c
.thumb
branch_223c38c: @ 223c38c :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	add     r5, #0xc
	cmp     r6, #0xc
	blt     branch_223c35e
	pop     {r3-r7,pc}
@ 0x223c398

.thumb
Function_223c398: @ 223c398 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4c
	mov     r4, r0
	mov     r0, #0x35
	bl      Function_200c6e4
	add     r2, sp, #0x2c
	ldr     r5, [pc, #0x70] @ 0x223c418, (=0x223ed1c)
	str     r0, [r4, #0x8]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x60] @ 0x223c41c, (=Unknown_223ecf0)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x18
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x8]
	mov     r3, #0x20
	bl      Function_200c73c
	ldr     r3, [pc, #0x44] @ 0x223c420, (=0x223ed04)
	add     r2, sp, #0x0
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r3!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldr     r0, [r4, #0x8]
	bl      Function_200c704
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	mov     r2, #0x80
	bl      Function_200c7c0
	cmp     r0, #0x0
	bne     branch_223c402
	bl      ErrorHandling
.thumb
branch_223c402: @ 223c402 :thumb
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	add     r2, sp, #0x0
	bl      Function_200cb30
	cmp     r0, #0x0
	bne     branch_223c414
	bl      ErrorHandling
branch_223c414: @ 223c414 :thumb
	add     sp, #0x4c
	pop     {r3-r6,pc}
@ 0x223c418

.word 0x223ed1c @ 0x223c418
.word Unknown_223ecf0 @ 0x223c41c
.word 0x223ed04 @ 0x223c420



.thumb
Function_223c424: @ 223c424 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4, #0xc]
	bl      Function_200d0b0
	ldr     r0, [r4, #0x8]
	bl      Function_200c8d4
	pop     {r4,pc}
@ 0x223c438

.thumb
Function_223c438: @ 223c438 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	mov     r4, r1
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x50] @ 0x223c49c, (=0xafc8)
	mov     r1, r5
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r3, [pc, #0x44] @ 0x223c4a0, (=0x109)
	mov     r2, r4
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x223c4a4, (=0xb798)
	mov     r1, r5
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, r4
	mov     r3, #0xad
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x24] @ 0x223c4a8, (=0xbb80)
	mov     r2, r4
	str     r0, [sp, #0x4]
	mov     r0, r5
	add     r0, #0xdc
	add     r5, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r5, #0x0]
	mov     r3, #0x51
	bl      Function_200ce54
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223c49a


.align 2


.word 0xafc8 @ 0x223c49c
.word 0x109 @ 0x223c4a0
.word 0xb798 @ 0x223c4a4
.word 0xbb80 @ 0x223c4a8
.thumb
Function_223c4ac: @ 223c4ac :thumb
	push    {r4-r7,lr}
	add     sp, #-0x64
	ldr     r4, [pc, #0x7c] @ 0x223c530, (=0x223ed5c)
	mov     r6, r0
	add     r3, sp, #0x0
	mov     r2, #0x6
.thumb
branch_223c4b8: @ 223c4b8 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223c4b8
	mov     r7, #0x0
	add     r4, sp, #0x0
	mov     r5, r6
.thumb
branch_223c4c6: @ 223c4c6 :thumb
	ldr     r1, [r4, #0x0]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x30]
	ldr     r1, [r4, #0x4]
	add     r2, sp, #0x30
	strh    r1, [r0, #0x32]
	mov     r1, #0x0
	strh    r1, [r0, #0x34]
	strh    r1, [r0, #0x36]
	mov     r0, #0x28
	str     r0, [sp, #0x38]
	mov     r0, #0x2
	str     r0, [sp, #0x3c]
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x5c]
	mov     r0, r1
	str     r0, [sp, #0x60]
	ldr     r0, [pc, #0x48] @ 0x223c534, (=0xafc8)
	str     r0, [sp, #0x44]
	ldr     r0, [pc, #0x48] @ 0x223c538, (=0x66b2)
	str     r0, [sp, #0x48]
	ldr     r0, [pc, #0x48] @ 0x223c53c, (=0xb798)
	str     r0, [sp, #0x4c]
	ldr     r0, [pc, #0x48] @ 0x223c540, (=0xbb80)
	str     r0, [sp, #0x50]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x54]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x58]
	mov     r0, r6
	mov     r1, r6
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_200ce6c
	mov     r1, #0xc5
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x8]
	bl      Function_200d7d4
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r4, #0xc
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_223c4c6
	add     sp, #0x64
	pop     {r4-r7,pc}
@ 0x223c530

.word 0x223ed5c @ 0x223c530
.word 0xafc8 @ 0x223c534
.word 0x66b2 @ 0x223c538
.word 0xb798 @ 0x223c53c
.word 0xbb80 @ 0x223c540
.thumb
Function_223c544: @ 223c544 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_223c564
	mov     r6, #0xc5
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_223c556: @ 223c556 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d330
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223c556
.thumb
branch_223c564: @ 223c564 :thumb
	pop     {r4-r6,pc}
@ 0x223c566


.align 2, 0


.thumb
Function_223c568: @ 223c568 :thumb
	push    {r3-r7,lr}
	mov     r7, #0xc5
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_223c574: @ 223c574 :thumb
	ldr     r0, [r5, r7]
	mov     r1, r6
	bl      Function_200d3f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223c574
	pop     {r3-r7,pc}
@ 0x223c586


.align 2, 0


.thumb
Function_223c588: @ 223c588 :thumb
	push    {r4-r6,lr}
	mov     r6, #0xc5
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_223c592: @ 223c592 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_223c592
	pop     {r4-r6,pc}
@ 0x223c5a2


.align 2, 0


.thumb
Function_223c5a4: @ 223c5a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r2
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	ldr     r2, [sp, #0x3c]
	ldr     r4, [sp, #0x48]
	str     r2, [sp, #0x4]
	ldr     r2, [pc, #0x60] @ 0x223c618, (=0x2af8)
	mov     r5, r0
	add     r2, r3, r2
	str     r2, [sp, #0x8]
	mov     r2, r4
	mov     r6, r1
	bl      Function_200cc3c
	ldr     r0, [sp, #0x30]
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x44]
	mov     r2, r5
	str     r1, [sp, #0xc]
	ldr     r1, [sp, #0x3c]
	mov     r3, r6
	str     r1, [sp, #0x10]
	ldr     r1, [pc, #0x3c] @ 0x223c618, (=0x2af8)
	add     r0, r0, r1
	str     r0, [sp, #0x14]
	ldr     r1, [sp, #0x40]
	mov     r0, r7
	bl      Function_200cdc4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x34]
	ldr     r0, [pc, #0x28] @ 0x223c618, (=0x2af8)
	mov     r1, r6
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r4
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r3, [sp, #0x38]
	ldr     r0, [pc, #0x10] @ 0x223c618, (=0x2af8)
	mov     r1, r6
	add     r0, r3, r0
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r2, r4
	bl      Function_200ce54
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x223c618

.word 0x2af8 @ 0x223c618
.thumb
Function_223c61c: @ 223c61c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x58
	mov     r5, r0
	ldr     r0, [pc, #0x1a8] @ 0x223c7cc, (=0x11e)
	mov     r4, r1
	str     r0, [sp, #0x0]
	mov     r0, #0xae
	str     r0, [sp, #0x4]
	mov     r3, #0x52
	str     r3, [sp, #0x8]
	mov     r1, #0x1
	mov     r2, r5
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r5
	mov     r1, r5
	str     r4, [sp, #0x18]
	add     r0, #0xdc
	add     r1, #0xe0
	add     r2, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	add     r3, #0xb8
	bl      Function_223c5a4
	ldr     r0, [pc, #0x178] @ 0x223c7d0, (=0x123)
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0xb3
	str     r0, [sp, #0x4]
	mov     r3, #0x57
	str     r3, [sp, #0x8]
	mov     r1, #0x1
	str     r1, [sp, #0xc]
	mov     r0, #0x2
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r0, r5
	mov     r1, r5
	str     r4, [sp, #0x18]
	add     r0, #0xdc
	add     r1, #0xe0
	add     r2, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	add     r3, #0xbc
	bl      Function_223c5a4
	mov     r6, #0x0
	mov     r4, r5
	add     r7, sp, #0x1c
.thumb
branch_223c68a: @ 223c68a :thumb
	mov     r0, #0x0
	strh    r0, [r7, #0x8]
	strh    r0, [r7, #0xa]
	strh    r0, [r7, #0xc]
	mov     r0, #0x9a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r5
	strh    r0, [r7, #0xe]
	mov     r0, #0x28
	sub     r0, r0, r6
	str     r0, [sp, #0x2c]
	mov     r0, #0x0
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	mov     r0, #0x2
	str     r0, [sp, #0x50]
	mov     r0, #0x0
	str     r0, [sp, #0x54]
	ldr     r0, [pc, #0x120] @ 0x223c7d4, (=0x2c02)
	add     r1, #0xe0
	str     r0, [sp, #0x38]
	add     r0, #0x14
	str     r0, [sp, #0x3c]
	ldr     r0, [pc, #0x118] @ 0x223c7d8, (=0x2ba6)
	add     r2, sp, #0x24
	str     r0, [sp, #0x40]
	sub     r0, #0x5c
	str     r0, [sp, #0x44]
	mov     r0, #0x0
	mvn     r0, r0
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	mov     r0, r5
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_200ce6c
	mov     r1, #0x9b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r1, sp, #0x20
	mov     r0, r6
	add     r1, #0x2
	add     r2, sp, #0x20
	bl      Function_223c0ec
	mov     r0, #0x9b
	mov     r1, #0x6
	mov     r2, #0x4
	lsl     r0, r0, #2
	ldsh    r1, [r7, r1]
	ldsh    r2, [r7, r2]
	ldr     r0, [r4, r0]
	bl      Function_200d4c4
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0xc
	cmp     r6, #0xc
	blt     branch_223c68a
	mov     r1, #0x0
	add     r0, sp, #0x1c
	strh    r1, [r0, #0x8]
	strh    r1, [r0, #0xa]
	strh    r1, [r0, #0xc]
	strh    r1, [r0, #0xe]
	mov     r0, #0x14
	str     r0, [sp, #0x2c]
	mov     r0, #0x1
	str     r1, [sp, #0x30]
	str     r1, [sp, #0x54]
	ldr     r1, [pc, #0xbc] @ 0x223c7dc, (=0x2c0b)
	str     r0, [sp, #0x34]
	mov     r0, r1
	add     r0, #0x10
	str     r0, [sp, #0x3c]
	mov     r0, r1
	mov     r2, #0x2
	sub     r0, #0x60
	str     r1, [sp, #0x38]
	str     r0, [sp, #0x40]
	.hword  0x1ed0 @ sub r0, r2, #0x3
	sub     r1, #0xbc
	str     r1, [sp, #0x44]
	mov     r1, r5
	str     r2, [sp, #0x50]
	str     r0, [sp, #0x48]
	str     r0, [sp, #0x4c]
	mov     r0, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, sp, #0x24
	bl      Function_200ce6c
	mov     r1, #0xbd
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xdc
	add     r1, #0xe0
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, sp, #0x24
	bl      Function_200ce6c
	mov     r1, #0xbe
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     r1, #0xcc
	ldr     r0, [r5, r1]
	add     r1, sp, #0x1c
	add     r1, #0x2
	add     r2, sp, #0x1c
	bl      Function_223c0ec
	mov     r0, #0xbd
	lsl     r0, r0, #2
	add     r3, sp, #0x1c
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r5, r0]
	bl      Function_200d4c4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r3, sp, #0x1c
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	ldr     r0, [r5, r0]
	bl      Function_200d4c4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x19
	bl      Function_200d474
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200d364
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_200d364
	add     sp, #0x58
	pop     {r3-r7,pc}
@ 0x223c7ca


.align 2


.word 0x11e @ 0x223c7cc
.word 0x123 @ 0x223c7d0
.word 0x2c02 @ 0x223c7d4
.word 0x2ba6 @ 0x223c7d8
.word 0x2c0b @ 0x223c7dc
.thumb
Function_223c7e0: @ 223c7e0 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      Function_223c354
	mov     r0, r5
	bl      Function_223c288
	mov     r7, #0x9a
	lsl     r7, r7, #2
	mov     r4, #0x0
	add     r6, r7, #0x4
.thumb
branch_223c7f6: @ 223c7f6 :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x0
	beq     branch_223c802
	ldr     r1, [r5, r7]
	bl      Function_200d364
.thumb
branch_223c802: @ 223c802 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0xc
	blt     branch_223c7f6
	pop     {r3-r7,pc}
@ 0x223c80c

.thumb
Function_223c80c: @ 223c80c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x28
	mov     r5, r0
	lsl     r6, r1, #3
	add     r0, r5, r6
	ldr     r0, [r0, #0x4]
	lsl     r4, r2, #3
	str     r1, [sp, #0x0]
	add     r1, r5, r4
	ldr     r7, [r1, #0x4]
	cmp     r0, #0xff
	beq     branch_223c838
	add     r1, r2, #0x1
	str     r1, [sp, #0xc]
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	mov     r1, #0xa2
	add     r2, sp, #0xc
	bl      SetPkmnData
.thumb
branch_223c838: @ 223c838 :thumb
	cmp     r7, #0xff
	beq     branch_223c852
	ldr     r0, [sp, #0x0]
	add     r2, sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	ldr     r1, [r5, #0x0]
	lsl     r0, r7, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	mov     r1, #0xa2
	bl      SetPkmnData
.thumb
branch_223c852: @ 223c852 :thumb
	add     r2, r5, #0x4
	ldr     r1, [r2, r6]
	ldr     r0, [r2, r4]
	mov     r7, r5
	str     r0, [r2, r6]
	str     r1, [r2, r4]
	add     r7, #0x8
	ldr     r0, [r7, r6]
	add     r1, sp, #0x10
	bl      Function_202ca10
	mov     r0, r5
	str     r0, [sp, #0x4]
	add     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r0, r4]
	ldr     r1, [r7, r6]
	bl      Function_202ca10
	ldr     r1, [sp, #0x4]
	add     r0, sp, #0x10
	ldr     r1, [r1, r4]
	bl      Function_202ca10
	mov     r0, r5
	bl      Function_223c7e0
	add     sp, #0x28
	pop     {r3-r7,pc}
@ 0x223c88c

.thumb
Function_223c88c: @ 223c88c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x9b
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_223c898: @ 223c898 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d330
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0xc
	blt     branch_223c898
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      Function_200d330
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      Function_200d330
	pop     {r3-r7,pc}
@ 0x223c8bc

.thumb
Function_223c8bc: @ 223c8bc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x9b
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_223c8c8: @ 223c8c8 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0xc
	blt     branch_223c8c8
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      Function_200d0f4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r7, r0]
	bl      Function_200d0f4
	pop     {r3-r7,pc}
@ 0x223c8ec

.thumb
Function_223c8ec: @ 223c8ec :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r2
	mov     r4, r1
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x35
	str     r1, [sp, #0x4]
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, #0xf
	mov     r5, r0
	bl      Function_200dd0c
	mov     r0, r6
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xc0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x35
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x1
	mov     r2, #0x1f
	mov     r3, #0xd
	bl      Function_200daa4
	bl      Function_200daa0
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x35
	bl      Function_2003050
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223c974

.thumb
Function_223c974: @ 223c974 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r6, r2
	mov     r4, r1
	lsl     r1, r6, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0x0]
	mov     r1, #0x35
	str     r1, [sp, #0x4]
	mov     r1, #0x4
	mov     r2, #0x1
	mov     r3, #0xf
	mov     r5, r0
	bl      Function_200dd0c
	mov     r0, r6
	bl      Function_200dd08
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xc0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x35
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0x4
	mov     r2, #0x1f
	mov     r3, #0xd
	bl      Function_200daa4
	bl      Function_200daa0
	mov     r2, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xd0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0x26
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0xe0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x30
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r1, #0xe
	mov     r2, #0x7
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	mov     r1, #0x5b
	str     r0, [sp, #0x4]
	mov     r0, #0xb0
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r2, #0xcb
	mov     r3, #0x35
	bl      Function_2003050
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ca2e


.align 2, 0


.thumb
Function_223ca30: @ 223ca30 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [pc, #0x5c] @ 0x223ca94, (=0xffff)
	mov     r4, r0
	cmp     r5, r1
	bne     branch_223ca4e
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201a954
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ca4e

.thumb
branch_223ca4e: @ 223ca4e :thumb
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0x8
	mov     r3, #0x35
	bl      LoadFromNARC_9
	mov     r1, r5
	mov     r6, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r5
	str     r3, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, r4
	bl      Function_201a954
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_200b190
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ca94

.word 0xffff @ 0x223ca94
.thumb
Function_223ca98: @ 223ca98 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r4, r2
	mov     r6, r3
	bl      Function_201a7a0
	ldr     r0, [sp, #0x28]
	lsl     r2, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	lsl     r3, r6, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, r5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	lsr     r2, r2, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r7
	lsr     r3, r3, #24
	bl      Function_201a7e8
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0xc
	bl      Function_200e060
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223cafc

.thumb
Function_223cafc: @ 223cafc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r1
	mov     r7, r0
	mov     r0, r5
	mov     r4, r2
	mov     r6, r3
	bl      Function_201a7a0
	ldr     r0, [sp, #0x28]
	lsl     r2, r4, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	lsl     r3, r6, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x30]
	mov     r1, r5
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x8]
	ldr     r0, [sp, #0x38]
	lsr     r2, r2, #24
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0xc]
	ldr     r0, [sp, #0x34]
	lsr     r3, r3, #24
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	mov     r0, r7
	bl      Function_201a7e8
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223cb58

.thumb
Function_223cb58: @ 223cb58 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x14
	mov     r1, #0x2
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x94
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0x88
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0x3
	bl      Function_223cafc
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x9c
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0xa
	bl      Function_223cafc
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xa4
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0x98
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0x3
	bl      Function_223cafc
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xac
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0xa0
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0xa
	bl      Function_223cafc
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xb4
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0xa8
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0x3
	bl      Function_223cafc
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xbc
	str     r1, [sp, #0xc]
	mov     r0, #0xb
	str     r0, [sp, #0x10]
	mov     r0, r4
	add     r0, #0xe4
	add     r1, #0xb0
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0xa
	bl      Function_223cafc
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xc4
	str     r1, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	add     r0, #0xe4
	add     r1, #0xb8
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0x3
	bl      Function_223cafc
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r1, #0xcc
	str     r1, [sp, #0xc]
	mov     r0, r4
	str     r2, [sp, #0x10]
	add     r0, #0xe4
	add     r1, #0xc0
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r2, #0x6
	mov     r3, #0xa
	bl      Function_223cafc
	add     sp, #0x14
	pop     {r3,r4,pc}
@ 0x223cc8a


.align 2, 0


.thumb
Function_223cc8c: @ 223cc8c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r7, r0
	mov     r5, r7
	add     r5, #0xec
	mov     r6, #0x3
	add     r5, #0x30
.thumb
branch_223cc9a: @ 223cc9a :thumb
	ldr     r0, [pc, #0x7c] @ 0x223cd18, (=0x41d)
	add     r1, r7, r6
	ldrb    r0, [r1, r0]
	str     r0, [sp, #0x10]
	cmp     r0, #0x0
	bne     branch_223ccb6
	mov     r0, r5
	mov     r1, #0xee
	bl      Function_201ada4_ClearTextBox
	mov     r0, r5
	bl      Function_201a954
	b       branch_223cd0a
@ 0x223ccb6

.thumb
branch_223ccb6: @ 223ccb6 :thumb
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x64
	mov     r1, #0x35
	bl      Function_2023790
	ldr     r1, [sp, #0x10]
	mov     r4, r0
	ldr     r0, [r7, #0x64]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_202ca90
	mov     r1, r0
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r2, #0x3
	mov     r3, #0x1
	bl      Function_20238a0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x223cd1c, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x7
	bl      Function_201d78c
	mov     r0, r5
	bl      Function_201a954
	mov     r0, r4
	bl      Function_20237bc_FreeMsg
.thumb
branch_223cd0a: @ 223cd0a :thumb
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r5, #0x10
	cmp     r6, #0xb
	blt     branch_223cc9a
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223cd16


.align 2


.word 0x41d @ 0x223cd18
.word 0x10200 @ 0x223cd1c
.thumb
Function_223cd20: @ 223cd20 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r6, r0
	add     r0, r1, #0x3
	lsl     r4, r0, #4
	mov     r0, #0x42
	add     r1, r6, r1
	lsl     r0, r0, #4
	mov     r5, r6
	ldrb    r7, [r1, r0]
	add     r5, #0xec
	cmp     r7, #0x0
	bne     branch_223cd4c
	add     r0, r5, r4
	mov     r1, #0xee
	bl      Function_201ada4_ClearTextBox
	add     r0, r5, r4
	bl      Function_201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223cd4c

.thumb
branch_223cd4c: @ 223cd4c :thumb
	add     r0, r5, r4
	mov     r1, #0x0
	bl      Function_201ada4_ClearTextBox
	mov     r0, #0x64
	mov     r1, #0x35
	bl      Function_2023790
	str     r0, [sp, #0x10]
	ldr     r0, [r6, #0x64]
	.hword  0x1e79 @ sub r1, r7, #0x1
	bl      Function_202ca90
	mov     r1, r0
	mov     r3, #0x1
	ldr     r0, [sp, #0x10]
	mov     r2, #0x3
	str     r3, [sp, #0x0]
	bl      Function_20238a0
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x223cda0, (=0x10200)
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	add     r0, r5, r4
	mov     r1, #0x1
	mov     r3, #0x7
	bl      Function_201d78c
	add     r0, r5, r4
	bl      Function_201a954
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc_FreeMsg
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223cd9e


.align 2


.word 0x10200 @ 0x223cda0
.thumb
Function_223cda4: @ 223cda4 :thumb
	push    {r3-r5,lr}
	add     r0, #0xec
	mov     r5, r0
	mov     r4, #0x3
	add     r5, #0x30
.thumb
branch_223cdae: @ 223cdae :thumb
	mov     r0, r5
	bl      Function_201acf4
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0xb
	blt     branch_223cdae
	pop     {r3-r5,pc}
@ 0x223cdc4

.thumb
Function_223cdc4: @ 223cdc4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	ldr     r1, [pc, #0x5c] @ 0x223ce28, (=0xffff)
	mov     r4, r0
	cmp     r5, r1
	bne     branch_223cde2
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r0, r4
	bl      Function_201a954
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223cde2

.thumb
branch_223cde2: @ 223cde2 :thumb
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, #0xc
	mov     r3, #0x35
	bl      LoadFromNARC_9
	mov     r1, r5
	mov     r6, r0
	bl      Function_200b1ec_CallMsgDecrypt
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_201ada4_ClearTextBox
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	str     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, r5
	str     r3, [sp, #0x8]
	bl      Function_201d738_CallInitTextInterpreter
	mov     r0, r4
	bl      Function_201a954
	mov     r0, r5
	bl      Function_20237bc_FreeMsg
	mov     r0, r6
	bl      Function_200b190
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x223ce28

.word 0xffff @ 0x223ce28
.thumb
Function_223ce2c: @ 223ce2c :thumb
	push    {r3,lr}
	bl      Function_201ffd0_SetDISPCNT_SUB_MODE1
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff74
	pop     {r3,pc}
@ 0x223ce44

.thumb
Function_223ce44: @ 223ce44 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x35
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x223ce62


.align 2, 0


.thumb
Function_223ce64: @ 223ce64 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x35
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      Function_200f174
	add     sp, #0xc
	pop     {pc}
@ 0x223ce84

.thumb
Function_223ce84: @ 223ce84 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xd7
	mov     r3, #0x2
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xe7
	mov     r3, #0x2
	bl      Function_200710c
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, r5
	str     r1, [sp, #0x8]
	add     r0, #0xe8
	mov     r1, #0x5b
	mov     r2, r1
	ldr     r0, [r0, #0x0]
	add     r2, #0xc5
	mov     r3, #0x35
	bl      Function_2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xd8
	mov     r3, #0x3
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	str     r1, [sp, #0xc]
	add     r5, #0xe4
	ldr     r2, [r5, #0x0]
	mov     r0, r4
	add     r1, #0xe8
	mov     r3, #0x3
	bl      Function_200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223cf22


.align 2, 0


.thumb
Function_223cf24: @ 223cf24 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xd6
	mov     r3, #0x5
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xe6
	mov     r3, #0x5
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x5b
	mov     r2, r1
	add     r5, #0xe8
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	add     r2, #0xc4
	mov     r3, #0x35
	bl      Function_2003050
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223cf88

.thumb
Function_223cf88: @ 223cf88 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	mov     r4, r1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xd6
	mov     r3, #0x7
	bl      Function_20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r1, #0x35
	mov     r2, r5
	str     r1, [sp, #0xc]
	add     r2, #0xe4
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	add     r1, #0xe5
	mov     r3, #0x7
	bl      Function_200710c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x40
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	mov     r1, #0x5b
	mov     r2, r1
	add     r5, #0xe8
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	add     r2, #0xc4
	mov     r3, #0x35
	bl      Function_2003050
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x223cfec

.thumb
Function_223cfec: @ 223cfec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x18
	mov     r5, r1
	mov     r1, r0
	add     r1, #0xdc
	ldr     r6, [r1, #0x0]
	mov     r1, r0
	add     r1, #0xe0
	ldr     r4, [r1, #0x0]
	ldr     r1, [pc, #0x128] @ 0x223d128, (=0x122)
	str     r5, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, #0x0
	str     r1, [sp, #0x8]
	mov     r1, #0x3
	str     r1, [sp, #0xc]
	mov     r2, #0x2
	str     r2, [sp, #0x10]
	ldr     r2, [pc, #0x118] @ 0x223d12c, (=0x66b2)
	add     r0, #0xe8
	str     r2, [sp, #0x14]
	ldr     r0, [r0, #0x0]
	mov     r2, r6
	mov     r3, r4
	bl      Function_200cdc4
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x104] @ 0x223d130, (=0x62b9)
	ldr     r3, [pc, #0x108] @ 0x223d134, (=0x111)
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xf8] @ 0x223d138, (=0x6a29)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xb1
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xe8] @ 0x223d13c, (=0x6db5)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x55
	bl      Function_200ce54
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd4] @ 0x223d140, (=0x62ba)
	ldr     r3, [pc, #0xd8] @ 0x223d144, (=0x112)
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc8] @ 0x223d148, (=0x6a2a)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xb2
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xb8] @ 0x223d14c, (=0x6db6)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x56
	bl      Function_200ce54
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xa4] @ 0x223d150, (=0x62b6)
	ldr     r3, [pc, #0xa8] @ 0x223d154, (=0x10e)
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x98] @ 0x223d158, (=0x6a27)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xaf
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x88] @ 0x223d15c, (=0x6db3)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x53
	bl      Function_200ce54
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x74] @ 0x223d160, (=0x89c8)
	mov     r3, #0x11
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r1, r4
	mov     r2, r5
	lsl     r3, r3, #4
	bl      Function_200cc3c
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x64] @ 0x223d164, (=0x6a28)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0xb0
	bl      Function_200ce24
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x223d168, (=0x6db4)
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, r6
	mov     r2, r5
	mov     r3, #0x54
	bl      Function_200ce54
	add     sp, #0x18
	pop     {r4-r6,pc}
@ 0x223d126


.align 2


.word 0x122 @ 0x223d128
.word 0x66b2 @ 0x223d12c
.word 0x62b9 @ 0x223d130
.word 0x111 @ 0x223d134
.word 0x6a29 @ 0x223d138
.word 0x6db5 @ 0x223d13c
.word 0x62ba @ 0x223d140
.word 0x112 @ 0x223d144
.word 0x6a2a @ 0x223d148
.word 0x6db6 @ 0x223d14c
.word 0x62b6 @ 0x223d150
.word 0x10e @ 0x223d154
.word 0x6a27 @ 0x223d158
.word 0x6db3 @ 0x223d15c
.word 0x89c8 @ 0x223d160
.word 0x6a28 @ 0x223d164
.word 0x6db4 @ 0x223d168
.thumb
Function_223d16c: @ 223d16c :thumb
	push    {r3-r7,lr}
	add     sp, #-0xa0
	mov     r7, r0
	add     r0, #0xdc
	ldr     r6, [r0, #0x0]
	mov     r0, r7
	add     r0, #0xe0
	ldr     r5, [r0, #0x0]
	mov     r0, #0xf9
	lsl     r0, r0, #2
	add     r4, r7, r0
	mov     r1, #0x0
	add     r2, sp, #0x6c
	strh    r1, [r2, #0x0]
	strh    r1, [r2, #0x2]
	strh    r1, [r2, #0x4]
	strh    r1, [r2, #0x6]
	mov     r0, #0x3c
	str     r0, [sp, #0x74]
	mov     r0, #0x2
	str     r0, [sp, #0x7c]
	mov     r0, #0x1
	str     r1, [sp, #0x9c]
	.hword  0x1e81 @ sub r1, r0, #0x2
	str     r0, [sp, #0x98]
	str     r0, [sp, #0x78]
	ldr     r0, [pc, #0x114] @ 0x223d2b8, (=0x62b9)
	str     r1, [sp, #0x90]
	str     r0, [sp, #0x80]
	ldr     r0, [pc, #0x114] @ 0x223d2bc, (=0x66b2)
	str     r1, [sp, #0x94]
	str     r0, [sp, #0x84]
	ldr     r0, [pc, #0x110] @ 0x223d2c0, (=0x6a29)
	mov     r1, r5
	str     r0, [sp, #0x88]
	ldr     r0, [pc, #0x110] @ 0x223d2c4, (=0x6db5)
	str     r0, [sp, #0x8c]
	mov     r0, r6
	bl      Function_200ce6c
	str     r0, [r4, #0x20]
	ldr     r0, [pc, #0x108] @ 0x223d2c8, (=0x62ba)
	mov     r1, r5
	str     r0, [sp, #0x80]
	ldr     r0, [pc, #0xf4] @ 0x223d2bc, (=0x66b2)
	add     r2, sp, #0x6c
	str     r0, [sp, #0x84]
	ldr     r0, [pc, #0x100] @ 0x223d2cc, (=0x6a2a)
	str     r0, [sp, #0x88]
	ldr     r0, [pc, #0x100] @ 0x223d2d0, (=0x6db6)
	str     r0, [sp, #0x8c]
	mov     r0, r6
	bl      Function_200ce6c
	str     r0, [r4, #0x24]
	mov     r0, #0x1
	str     r0, [sp, #0x98]
	str     r0, [sp, #0x78]
	ldr     r0, [pc, #0xf0] @ 0x223d2d4, (=0x89c8)
	mov     r1, r5
	str     r0, [sp, #0x80]
	ldr     r0, [pc, #0xd4] @ 0x223d2bc, (=0x66b2)
	add     r2, sp, #0x6c
	str     r0, [sp, #0x84]
	ldr     r0, [pc, #0xe8] @ 0x223d2d8, (=0x6a28)
	str     r0, [sp, #0x88]
	ldr     r0, [pc, #0xe8] @ 0x223d2dc, (=0x6db4)
	str     r0, [sp, #0x8c]
	mov     r0, r6
	bl      Function_200ce6c
	str     r0, [r4, #0x28]
	mov     r0, #0x1
	str     r0, [sp, #0x98]
	mov     r0, #0x0
	str     r0, [sp, #0x78]
	ldr     r0, [pc, #0xd8] @ 0x223d2e0, (=0x62b6)
	mov     r1, r5
	str     r0, [sp, #0x80]
	ldr     r0, [pc, #0xb0] @ 0x223d2bc, (=0x66b2)
	add     r2, sp, #0x6c
	str     r0, [sp, #0x84]
	ldr     r0, [pc, #0xd0] @ 0x223d2e4, (=0x6a27)
	str     r0, [sp, #0x88]
	ldr     r0, [pc, #0xd0] @ 0x223d2e8, (=0x6db3)
	str     r0, [sp, #0x8c]
	mov     r0, r6
	bl      Function_200ce6c
	str     r0, [r4, #0x2c]
	mov     r0, r6
	mov     r1, r5
	add     r2, sp, #0x6c
	bl      Function_200ce6c
	ldr     r3, [pc, #0xc0] @ 0x223d2ec, (=0x223ed8c)
	str     r0, [r4, #0x30]
	add     r2, sp, #0x38
	mov     r1, #0x1a
.thumb
branch_223d232: @ 223d232 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223d232
	ldr     r3, [pc, #0xb0] @ 0x223d2f0, (=0x223edc0)
	add     r2, sp, #0x4
	mov     r1, #0x1a
.thumb
branch_223d244: @ 223d244 :thumb
	ldrh    r0, [r3, #0x0]
	.hword  0x1c9b @ add r3, r3, #0x2
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_223d244
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1d
	mov     r4, r7
	lsl     r0, r0, #4
	add     r7, r7, r0
	add     r6, sp, #0x58
	add     r4, #0x20
	add     r5, sp, #0x24
	add     r7, #0x20
.thumb
branch_223d264: @ 223d264 :thumb
	mov     r0, #0xf9
	mov     r1, #0x0
	mov     r2, #0x2
	lsl     r0, r0, #2
	ldsh    r1, [r6, r1]
	ldsh    r2, [r6, r2]
	ldr     r0, [r4, r0]
	bl      Function_200d4c4
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_200d330
	mov     r0, #0xf9
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200d3cc
	mov     r1, #0xf9
	mov     r2, #0x0
	mov     r3, #0x2
	lsl     r1, r1, #2
	ldsh    r2, [r5, r2]
	ldsh    r3, [r5, r3]
	ldr     r1, [r4, r1]
	mov     r0, r7
	bl      Function_223b870
	ldr     r0, [sp, #0x0]
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x0]
	cmp     r0, #0xd
	blt     branch_223d264
	add     sp, #0xa0
	pop     {r3-r7,pc}
@ 0x223d2b6


.align 2


.word 0x62b9 @ 0x223d2b8
.word 0x66b2 @ 0x223d2bc
.word 0x6a29 @ 0x223d2c0
.word 0x6db5 @ 0x223d2c4
.word 0x62ba @ 0x223d2c8
.word 0x6a2a @ 0x223d2cc
.word 0x6db6 @ 0x223d2d0
.word 0x89c8 @ 0x223d2d4
.word 0x6a28 @ 0x223d2d8
.word 0x6db4 @ 0x223d2dc
.word 0x62b6 @ 0x223d2e0
.word 0x6a27 @ 0x223d2e4
.word 0x6db3 @ 0x223d2e8
.word 0x223ed8c @ 0x223d2ec
.word 0x223edc0 @ 0x223d2f0
.thumb
Function_223d2f4: @ 223d2f4 :thumb
	push    {r3-r7,lr}
	mov     r7, #0xf9
	mov     r5, r0
	mov     r6, r1
	mov     r4, #0x0
	lsl     r7, r7, #2
.thumb
branch_223d300: @ 223d300 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_223d30c
	mov     r1, r6
	bl      Function_200d3f4
.thumb
branch_223d30c: @ 223d30c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xd
	blt     branch_223d300
	pop     {r3-r7,pc}
@ 0x223d316


.align 2, 0


.thumb
Function_223d318: @ 223d318 :thumb
	bx      lr
@ 0x223d31a


.align 2, 0


.thumb
Function_223d31c: @ 223d31c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	mov     r6, #0xf9
	mov     r4, #0x8
	add     r5, #0x20
	lsl     r6, r6, #2
.thumb
branch_223d328: @ 223d328 :thumb
	ldr     r0, [r5, r6]
	bl      Function_200d0f4
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0xd
	blt     branch_223d328
	pop     {r4-r6,pc}
@ 0x223d338

.thumb
Function_223d338: @ 223d338 :thumb
	mov     r1, r0
	mov     r0, #0xf1
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x8] @ 0x223d34c, (=Function_202ca10+1)
	lsl     r0, r0, #3
	add     r0, r1, r0
	ldr     r0, [r0, #0x8]
	add     r1, #0x68
	bx      r3
@ 0x223d34c

.word Function_202ca10+1 @ 0x223d34c



.thumb
Function_223d350: @ 223d350 :thumb
	mov     r1, #0xf1
	mov     r2, r0
	lsl     r1, r1, #2
	ldr     r1, [r2, r1]
	ldr     r3, [pc, #0x8] @ 0x223d364, (=Function_202ca10+1)
	lsl     r1, r1, #3
	add     r1, r2, r1
	add     r0, #0x68
	ldr     r1, [r1, #0x8]
	bx      r3
@ 0x223d364

.word Function_202ca10+1 @ 0x223d364
.thumb
Function_223d368: @ 223d368 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223d36e: @ 223d36e :thumb
	ldr     r0, [r5, #0x64]
	mov     r1, r4
	bl      Function_202ca90
	add     r1, r5, r4
	add     r1, #0x80
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r0, [r1, #0x0]
	cmp     r4, #0x51
	blt     branch_223d36e
	pop     {r3-r5,pc}
@ 0x223d384

.thumb
Function_223d384: @ 223d384 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_223d38a: @ 223d38a :thumb
	add     r2, r5, r4
	add     r2, #0x80
	ldrb    r2, [r2, #0x0]
	ldr     r0, [r5, #0x64]
	mov     r1, r4
	bl      Function_202cadc
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x51
	blt     branch_223d38a
	pop     {r3-r5,pc}
@ 0x223d3a0

.thumb
Function_223d3a0: @ 223d3a0 :thumb
	push    {r3,lr}
	mov     r0, #0x7
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x1c] @ 0x223d3c4, (=0x4000050)
	mov     r1, #0x0
	mov     r2, #0x6
	mov     r3, #0xb
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x10] @ 0x223d3c8, (=0x4001050)
	mov     r1, #0x0
	mov     r2, #0xe
	mov     r3, #0x7
	blx     G2x_SetBlendAlpha_
	pop     {r3,pc}
@ 0x223d3c4

.word 0x4000050 @ 0x223d3c4
.word 0x4001050 @ 0x223d3c8
.thumb
Function_223d3cc: @ 223d3cc :thumb
	push    {r3-r7,lr}
	mov     r1, #0xf1
	mov     r5, r0
	lsl     r1, r1, #2
	ldr     r0, [r5, r1]
	lsl     r0, r0, #3
	add     r0, r5, r0
	ldr     r0, [r0, #0x4]
	cmp     r0, #0xff
	beq     branch_223d3f2
	ldr     r2, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r2, r0
	add     r1, #0x64
	ldr     r0, [r0, #0x4]
	ldr     r1, [r5, r1]
	bl      Function_20775ec
	pop     {r3-r7,pc}
@ 0x223d3f2

.thumb
branch_223d3f2: @ 223d3f2 :thumb
	ldr     r1, [r5, #0x0]
	mov     r6, #0x0
	ldr     r0, [r1, #0x0]
	cmp     r0, #0x0
	ble     branch_223d428
	mov     r4, r6
.thumb
branch_223d3fe: @ 223d3fe :thumb
	add     r0, r1, r4
	ldr     r7, [r0, #0x4]
	mov     r1, #0x4c
	mov     r0, r7
	mov     r2, #0x0
	bl      GetPkmnData
	cmp     r0, #0x0
	bne     branch_223d41c
	ldr     r1, [pc, #0x18] @ 0x223d42c, (=0x428)
	mov     r0, r7
	ldr     r1, [r5, r1]
	bl      Function_20775ec
	pop     {r3-r7,pc}
@ 0x223d41c

.thumb
branch_223d41c: @ 223d41c :thumb
	ldr     r1, [r5, #0x0]
	.hword  0x1c76 @ add r6, r6, #0x1
	ldr     r0, [r1, #0x0]
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, r0
	blt     branch_223d3fe
.thumb
branch_223d428: @ 223d428 :thumb
	pop     {r3-r7,pc}
@ 0x223d42a


.align 2


.word 0x428 @ 0x223d42c
.thumb
Function_223d430: @ 223d430 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x0
	mov     r6, r0
	mov     r5, r7
	mov     r4, r7
.thumb
branch_223d43a: @ 223d43a :thumb
	mov     r0, r6
	mov     r1, r4
	bl      Function_202ca64
	bl      Function_202ca7c
	cmp     r0, #0x0
	beq     branch_223d44c
	.hword  0x1c6d @ add r5, r5, #0x1
.thumb
branch_223d44c: @ 223d44c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_223d43a
	cmp     r5, #0x0
	beq     branch_223d458
	mov     r7, #0x1
.thumb
branch_223d458: @ 223d458 :thumb
	mov     r0, r7
	pop     {r3-r7,pc}
@ 0x223d45c

.thumb
Function_223d45c: @ 223d45c :thumb
	mov     r2, #0xc
	mul     r2, r1
	add     r1, r0, r2
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r2, [r1, r0]
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r1, r0]
	cmp     r2, #0xff
	bne     branch_223d478
	cmp     r0, #0x0
	bne     branch_223d478
	mov     r0, #0x0
	bx      lr
@ 0x223d478

.thumb
branch_223d478: @ 223d478 :thumb
	cmp     r2, #0xff
	bne     branch_223d484
	cmp     r0, #0x1
	bne     branch_223d484
	mov     r0, #0x1
	bx      lr
@ 0x223d484

.thumb
branch_223d484: @ 223d484 :thumb
	cmp     r2, #0xff
	beq     branch_223d490
	cmp     r0, #0x1
	bne     branch_223d490
	mov     r0, #0x2
	bx      lr
@ 0x223d490

.thumb
branch_223d490: @ 223d490 :thumb
	mov     r0, #0x3
	bx      lr
@ 0x223d494

.thumb
Function_223d494: @ 223d494 :thumb
	push    {r3,r4}
	cmp     r2, #0xff
	bne     branch_223d4a6
	mov     r2, #0xf6
	lsl     r2, r2, #2
	ldr     r4, [r0, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	str     r4, [r0, r2]
	b       branch_223d4ac
@ 0x223d4a6

.thumb
branch_223d4a6: @ 223d4a6 :thumb
	mov     r4, #0xf5
	lsl     r4, r4, #2
	str     r2, [r0, r4]
.thumb
branch_223d4ac: @ 223d4ac :thumb
	mov     r2, #0xf3
	lsl     r2, r2, #2
	str     r1, [r0, r2]
	mov     r1, r2
	add     r1, #0xc
	str     r3, [r0, r1]
	mov     r1, #0x0
	add     r2, #0x10
	str     r1, [r0, r2]
	pop     {r3,r4}
	bx      lr
@ 0x223d4c2


.align 2, 0


.thumb
Function_223d4c4: @ 223d4c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xfc
	mov     r1, #0x1
	bl      Function_200dc9c
	mov     r0, r4
	add     r0, #0xfc
	bl      Function_201acf4
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_2001bc4
	mov     r0, #0x67
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2013a3c
	add     r4, #0xfc
	mov     r0, r4
	bl      Function_201a8fc
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d4fa


.align 2, 0


.thumb
Function_223d4fc: @ 223d4fc :thumb
	push    {r3,lr}
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_223d494
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223d50c

.thumb
Function_223d50c: @ 223d50c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_223b400
	mov     r0, r4
	bl      Function_223b808
	mov     r0, r4
	bl      Function_223c7e0
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x2
	mov     r3, r2
	bl      Function_223d494
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d530

.thumb
Function_223d530: @ 223d530 :thumb
	push    {r3,lr}
	mov     r1, #0x3
	mov     r2, #0x0
	mov     r3, r1
	bl      Function_223d494
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223d540

.thumb
Function_223d540: @ 223d540 :thumb
	push    {r3,lr}
	mov     r1, #0x4
	mov     r2, #0x0
	mov     r3, #0x3
	bl      Function_223d494
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x223d550

.thumb
Function_223d550: @ 223d550 :thumb
	push    {r3-r5,lr}
	mov     r1, #0xf3
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r1, [r4, r1]
	lsl     r2, r1, #2
	ldr     r1, [pc, #0x10] @ 0x223d570, (=0x223ee04)
	ldr     r1, [r1, r2]
	blx     r1
	add     r4, #0xe0
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	bl      Function_200c7ec
	mov     r0, r5
	pop     {r3-r5,pc}
@ 0x223d570

.word 0x223ee04 @ 0x223d570
.thumb
Function_223d574: @ 223d574 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x80] @ 0x223d5fc, (=RAM_21bf67c)
	mov     r1, #0x10
	ldr     r0, [r0, #0x4c]
	tst     r1, r0
	beq     branch_223d592
	ldr     r0, [r4, #0x0]
	mov     r1, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	b       branch_223d5f8
@ 0x223d592

.thumb
branch_223d592: @ 223d592 :thumb
	mov     r1, #0x20
	tst     r1, r0
	beq     branch_223d5aa
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	ble     branch_223d5a4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_223d5f8
@ 0x223d5a4

.thumb
branch_223d5a4: @ 223d5a4 :thumb
	mov     r0, #0xb
	str     r0, [r4, #0x0]
	b       branch_223d5f8
@ 0x223d5aa

.thumb
branch_223d5aa: @ 223d5aa :thumb
	mov     r1, #0x40
	tst     r1, r0
	beq     branch_223d5ce
	ldr     r1, [r4, #0x0]
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	beq     branch_223d5ca
	.hword  0x1f08 @ sub r0, r1, #0x4
	mov     r1, #0xc
	str     r0, [r4, #0x0]
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	b       branch_223d5f8
@ 0x223d5ca

.thumb
branch_223d5ca: @ 223d5ca :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d5ce

.thumb
branch_223d5ce: @ 223d5ce :thumb
	mov     r1, #0x80
	tst     r0, r1
	beq     branch_223d5f4
	ldr     r1, [r4, #0x0]
	asr     r0, r1, #1
	lsr     r0, r0, #30
	add     r0, r1, r0
	asr     r0, r0, #2
	cmp     r0, #0x2
	beq     branch_223d5f0
	add     r0, r1, #0x4
	mov     r1, #0xc
	str     r0, [r4, #0x0]
	blx     _s32_div_f
	str     r1, [r4, #0x0]
	b       branch_223d5f8
@ 0x223d5f0

.thumb
branch_223d5f0: @ 223d5f0 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d5f4

.thumb
branch_223d5f4: @ 223d5f4 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223d5f8

.thumb
branch_223d5f8: @ 223d5f8 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223d5fc

.word RAM_21bf67c @ 0x223d5fc
.thumb
Function_223d600: @ 223d600 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, #0x0
	str     r2, [sp, #0x0]
	cmp     r1, #0x0
	bne     branch_223d610
	mov     r4, #0x1
.thumb
branch_223d610: @ 223d610 :thumb
	mov     r0, #0xf1
	lsl     r0, r0, #2
	lsl     r6, r1, #2
	add     r7, r5, r0
	add     r1, sp, #0x4
	ldr     r0, [r7, r6]
	add     r1, #0x2
	add     r2, sp, #0x4
	bl      Function_223c0ec
	mov     r0, #0xbd
	add     r1, r5, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r3, sp, #0x4
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	bl      Function_200d4c4
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_223d66e
	mov     r0, #0xf1
	lsl     r0, r0, #2
	add     r1, r5, r0
	ldr     r0, [r7, r6]
	lsl     r4, r4, #2
	str     r0, [r1, r4]
	ldr     r0, [r1, r4]
	add     r1, sp, #0x4
	add     r1, #0x2
	add     r2, sp, #0x4
	bl      Function_223c0ec
	mov     r0, #0xbd
	add     r1, r5, r4
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	add     r3, sp, #0x4
	mov     r1, #0x2
	mov     r2, #0x0
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	bl      Function_200d4c4
.thumb
branch_223d66e: @ 223d66e :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x223d672


.align 2, 0


.thumb
Function_223d674: @ 223d674 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x6
	bls     branch_223d686
	b       branch_223d92a
@ 0x223d686

.thumb
branch_223d686: @ 223d686 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223d692

Jumppoints_223d692:
.hword branch_223d6a0 - Jumppoints_223d692 - 2
.hword branch_223d79a - Jumppoints_223d692 - 2
.hword branch_223d7aa - Jumppoints_223d692 - 2
.hword branch_223d7be - Jumppoints_223d692 - 2
.hword branch_223d880 - Jumppoints_223d692 - 2
.hword branch_223d8de - Jumppoints_223d692 - 2
.hword branch_223d8ee - Jumppoints_223d692 - 2
.thumb
branch_223d6a0: @ 223d6a0 :thumb
	mov     r0, #CbData_Narc
	mov     r1, #0x35
	bl      LoadFromNARC_8
	mov     r5, r0
	mov     r0, r4
	bl      Function_223c110
	mov     r0, r4
	bl      Function_223c188
	mov     r0, r4
	bl      Function_223c288
	mov     r0, r4
	mov     r1, r5
	bl      Function_223ce84
	mov     r0, r4
	mov     r1, r5
	bl      Function_223cf24
	mov     r0, r4
	mov     r1, r5
	bl      Function_223cf88
	mov     r0, r4
	bl      Function_223c354
	mov     r0, r4
	mov     r1, r5
	bl      Function_223c61c
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r3, #0x2
	mov     r1, r4
	str     r3, [sp, #0x8]
	mov     r0, #0x28
	str     r0, [sp, #0xc]
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, #0xec
	mov     r2, #0x1
	bl      Function_223ca98
	mov     r0, r4
	bl      Function_223b208
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b69c
	mov     r0, r4
	bl      Function_223b1e0
	mov     r0, r4
	mov     r1, r5
	bl      Function_223cfec
	mov     r0, r4
	bl      Function_223d16c
	mov     r0, r4
	mov     r1, r5
	bl      Function_223c438
	mov     r0, r4
	bl      Function_223c4ac
	mov     r0, r4
	bl      Function_223d338
	mov     r0, r4
	bl      Function_223d368
	ldr     r1, [pc, #0x1fc] @ 0x223d93c, (=0x418)
	mov     r0, r4
	ldr     r1, [r4, r1]
	bl      Function_223ba90
	mov     r0, r4
	bl      Function_223bb04
	mov     r0, r4
	bl      Function_223bbac
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223d2f4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223c568
	mov     r0, r4
	bl      Function_223b940
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223b96c
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
	bl      Function_223ce2c
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	mov     r0, r5
	bl      Call_FS_CloseFile
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223d92a
@ 0x223d79a

.thumb
branch_223d79a: @ 223d79a :thumb
	bl      Function_223ce44
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223d92a
@ 0x223d7aa

.thumb
branch_223d7aa: @ 223d7aa :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	beq     branch_223d7b4
	b       branch_223d92a
@ 0x223d7b4

.thumb
branch_223d7b4: @ 223d7b4 :thumb
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_223d7be: @ 223d7be :thumb
	bl      Function_2022798
	cmp     r0, #0x1
	bne     branch_223d7ce
	mov     r0, r4
	bl      Function_223d4fc
	b       branch_223d92a
@ 0x223d7ce

.thumb
branch_223d7ce: @ 223d7ce :thumb
	mov     r0, #0xf1
	lsl     r0, r0, #2
	ldr     r6, [r4, r0]
	add     r0, r4, r0
	bl      Function_223d574
	mov     r1, #0xf1
	lsl     r1, r1, #2
	ldr     r5, [r4, r1]
	cmp     r0, #0x1
	str     r6, [r4, r1]
	bne     branch_223d82a
	mov     r0, r4
	bl      Function_223b400
	mov     r0, r4
	bl      Function_223b808
	mov     r0, r4
	bl      Function_223c7e0
	mov     r0, #0xf1
	lsl     r0, r0, #2
	str     r5, [r4, r0]
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_223d600
	mov     r0, r4
	bl      Function_223b678
	mov     r0, r4
	bl      Function_223b208
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b69c
	mov     r0, r4
	bl      Function_223b1e0
	ldr     r0, [pc, #0x11c] @ 0x223d940, (=0x5dc)
	bl      Function_2005748
	b       branch_223d92a
@ 0x223d82a

.thumb
branch_223d82a: @ 223d82a :thumb
	ldr     r0, [pc, #0x118] @ 0x223d944, (=RAM_21bf67c)
	ldr     r2, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_223d86c
	mov     r0, r1
	add     r0, #0x10
	ldr     r0, [r4, r0]
	add     r1, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x8
	bl      Function_223ca30
	mov     r0, #0xf1
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, r4
	str     r0, [sp, #0x0]
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, #0xfc
	mov     r2, #0x1
	mov     r3, r4
	bl      Function_223bf74
	ldr     r0, [pc, #0xd8] @ 0x223d940, (=0x5dc)
	bl      Function_2005748
	b       branch_223d92a
@ 0x223d86c

.thumb
branch_223d86c: @ 223d86c :thumb
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_223d92a
	mov     r0, #0x5
	add     r1, #0x10
	str     r0, [r4, r1]
	ldr     r0, [pc, #0xcc] @ 0x223d948, (=0x5dd)
	bl      Function_2005748
	b       branch_223d92a
@ 0x223d880

.thumb
branch_223d880: @ 223d880 :thumb
	mov     r0, #0x1a
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      Function_2001be0
	mov     r1, r0
	mov     r0, #0x1
	mvn     r0, r0
	cmp     r1, r0
	beq     branch_223d89c
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r1, r0
	beq     branch_223d92a
	b       branch_223d8b6
@ 0x223d89c

.thumb
branch_223d89c: @ 223d89c :thumb
	mov     r0, r4
	bl      Function_223d4c4
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
	mov     r0, #0xf5
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223d92a
@ 0x223d8b6

.thumb
branch_223d8b6: @ 223d8b6 :thumb
	cmp     r1, #0x0
	beq     branch_223d92a
	mov     r0, r4
	blx     r1
	cmp     r0, #0x1
	beq     branch_223d8ca
	mov     r0, r4
	bl      Function_223d4c4
	b       branch_223d92a
@ 0x223d8ca

.thumb
branch_223d8ca: @ 223d8ca :thumb
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
	mov     r0, #0xf5
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223d92a
@ 0x223d8de

.thumb
branch_223d8de: @ 223d8de :thumb
	bl      Function_223ce64
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223d92a
@ 0x223d8ee

.thumb
branch_223d8ee: @ 223d8ee :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_223d92a
	mov     r0, r4
	add     r0, #0xec
	bl      Function_201a8fc
	mov     r0, r4
	bl      Function_223c8bc
	mov     r0, r4
	bl      Function_223c32c
	mov     r0, r4
	bl      Function_223d31c
	mov     r0, r4
	bl      Function_223c588
	mov     r0, r4
	bl      Function_223bc70
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	bl      Function_2097f30
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x223d92a

.thumb
branch_223d92a: @ 223d92a :thumb
	mov     r0, r4
	bl      Function_223c304
	mov     r0, r4
	bl      Function_223c88c
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x223d93c

.word 0x418 @ 0x223d93c
.word 0x5dc @ 0x223d940
.word RAM_21bf67c @ 0x223d944
.word 0x5dd @ 0x223d948
.thumb
Function_223d94c: @ 223d94c :thumb
	push    {r3,lr}
	cmp     r1, #0x3
	bhi     branch_223d97e
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223d95e

Jumppoints_223d95e:
.hword branch_223d966 - Jumppoints_223d95e - 2
.hword branch_223d976 - Jumppoints_223d95e - 2
.hword branch_223d96e - Jumppoints_223d95e - 2
.hword branch_223d976 - Jumppoints_223d95e - 2
.thumb
branch_223d966: @ 223d966 :thumb
	mov     r1, #0x1
	bl      Function_200d3cc
	pop     {r3,pc}
@ 0x223d96e

.thumb
branch_223d96e: @ 223d96e :thumb
	mov     r1, #0x2
	bl      Function_200d3cc
	pop     {r3,pc}
@ 0x223d976

.thumb
branch_223d976: @ 223d976 :thumb
	mov     r1, #0x0
	bl      Function_200d3cc
	pop     {r3,pc}
@ 0x223d97e

.thumb
branch_223d97e: @ 223d97e :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x223d984

.thumb
Function_223d984: @ 223d984 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	cmp     r5, #0x0
	beq     branch_223d9a8
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_20129a4
	ldr     r1, [sp, #0x4]
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	add     r1, r1, r4
	add     r2, r2, r6
	bl      Function_20128c4
.thumb
branch_223d9a8: @ 223d9a8 :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x223d9ac

.thumb
Function_223d9ac: @ 223d9ac :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x3
	beq     branch_223d9be
	cmp     r0, #0x6
	beq     branch_223d9d8
	b       branch_223d9f8
@ 0x223d9be

.thumb
branch_223d9be: @ 223d9be :thumb
	mov     r1, #0x0
	ldr     r0, [r4, #0x8]
	.hword  0x1e4a @ sub r2, r1, #0x1
	bl      Function_223d984
	ldr     r0, [r4, #0x4]
	mov     r1, #0x2
	bl      Function_200d3cc
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x223d9d8

.thumb
branch_223d9d8: @ 223d9d8 :thumb
	ldr     r0, [r4, #0x8]
	mov     r1, #0x0
	mov     r2, #0x2
	bl      Function_223d984
	ldr     r0, [r4, #0x4]
	mov     r1, #0x0
	bl      Function_200d3cc
	mov     r0, r5
	bl      Call_RemoveTaskFromTaskList
	mov     r0, r4
	bl      free
	pop     {r3-r5,pc}
@ 0x223d9f8

.thumb
branch_223d9f8: @ 223d9f8 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x223d9fe


.align 2, 0


.thumb
Function_223da00: @ 223da00 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r0, #0x35
	mov     r1, #0xc
	bl      malloc
	mov     r4, r0
	mov     r0, #0x1
	str     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r6, [r4, #0x4]
	mov     r0, r5
	.hword  0x1e4a @ sub r2, r1, #0x1
	str     r5, [r4, #0x8]
	bl      Function_223d984
	mov     r2, #0xfa
	ldr     r0, [pc, #0x8] @ 0x223da30, (=0x223d9ad)
	mov     r1, r4
	lsl     r2, r2, #2
	bl      AddTaskToTaskList1
	pop     {r4-r6,pc}
@ 0x223da30

.word 0x223d9ad @ 0x223da30
.thumb
Function_223da34: @ 223da34 :thumb
	push    {r4-r6,lr}
	mov     r4, r2
	mov     r5, r0
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r6, r1
	cmp     r0, #0x0
	bne     branch_223da48
	b       branch_223dc84
@ 0x223da48

.thumb
branch_223da48: @ 223da48 :thumb
	cmp     r5, #0x14
	bls     branch_223da4e
	b       branch_223dc80
@ 0x223da4e

.thumb
branch_223da4e: @ 223da4e :thumb
	add     r0, r5, r5
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x223da5a

Jumppoints_223da5a:
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223dbc2 - Jumppoints_223da5a - 2
.hword branch_223da84 - Jumppoints_223da5a - 2
.hword branch_223dace - Jumppoints_223da5a - 2
.hword branch_223db1c - Jumppoints_223da5a - 2
.hword branch_223db4a - Jumppoints_223da5a - 2
.hword branch_223db88 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.hword branch_223dc50 - Jumppoints_223da5a - 2
.thumb
branch_223da84: @ 223da84 :thumb
	cmp     r6, #0x0
	bne     branch_223dac2
	ldr     r1, [pc, #0x1fc] @ 0x223dc88, (=0x418)
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	ble     branch_223da92
	b       branch_223da96
@ 0x223da92

.thumb
branch_223da92: @ 223da92 :thumb
	add     r0, r1, #0x4
	ldr     r0, [r4, r0]
.thumb
branch_223da96: @ 223da96 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, r1]
	mov     r0, r4
	bl      Function_223bc70
	ldr     r1, [pc, #0x1e4] @ 0x223dc88, (=0x418)
	mov     r0, r4
	ldr     r1, [r4, r1]
	bl      Function_223ba90
	mov     r0, r4
	bl      Function_223bb04
	mov     r0, r4
	bl      Function_223bbac
	mov     r0, r4
	bl      Function_223cc8c
	ldr     r0, [pc, #0x1cc] @ 0x223dc8c, (=0x6c5)
	bl      Function_2005748
.thumb
branch_223dac2: @ 223dac2 :thumb
	ldr     r0, [pc, #0x1cc] @ 0x223dc90, (=0x404)
	mov     r1, r6
	ldr     r0, [r4, r0]
	bl      Function_223d94c
	pop     {r4-r6,pc}
@ 0x223dace

.thumb
branch_223dace: @ 223dace :thumb
	cmp     r6, #0x0
	bne     branch_223db10
	ldr     r1, [pc, #0x1b4] @ 0x223dc88, (=0x418)
	ldr     r0, [r4, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	blx     _s32_div_f
	ldr     r0, [pc, #0x1a0] @ 0x223dc88, (=0x418)
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223bc70
	ldr     r1, [pc, #0x198] @ 0x223dc88, (=0x418)
	mov     r0, r4
	ldr     r1, [r4, r1]
	bl      Function_223ba90
	mov     r0, r4
	bl      Function_223bb04
	mov     r0, r4
	bl      Function_223bbac
	mov     r0, r4
	bl      Function_223cc8c
	ldr     r0, [pc, #0x180] @ 0x223dc8c, (=0x6c5)
	bl      Function_2005748
.thumb
branch_223db10: @ 223db10 :thumb
	ldr     r0, [pc, #0x180] @ 0x223dc94, (=0x408)
	mov     r1, r6
	ldr     r0, [r4, r0]
	bl      Function_223d94c
	pop     {r4-r6,pc}
@ 0x223db1c

.thumb
branch_223db1c: @ 223db1c :thumb
	cmp     r6, #0x0
	bne     branch_223db3e
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x5
	beq     branch_223db34
	mov     r1, #0x5
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x168] @ 0x223dc98, (=0x5dd)
	bl      Function_2005748
.thumb
branch_223db34: @ 223db34 :thumb
	ldr     r0, [pc, #0x164] @ 0x223dc9c, (=0x40c)
	mov     r1, #0x0
	ldr     r0, [r4, r0]
	bl      Function_223da00
.thumb
branch_223db3e: @ 223db3e :thumb
	ldr     r0, [pc, #0x15c] @ 0x223dc9c, (=0x40c)
	mov     r1, r6
	ldr     r0, [r4, r0]
	bl      Function_223d94c
	pop     {r4-r6,pc}
@ 0x223db4a

.thumb
branch_223db4a: @ 223db4a :thumb
	cmp     r6, #0x0
	bne     branch_223db7a
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x6
	beq     branch_223db6a
	mov     r1, #0x6
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	ldr     r0, [pc, #0x138] @ 0x223dca0, (=0x5e2)
	bl      Function_2005748
.thumb
branch_223db6a: @ 223db6a :thumb
	mov     r0, #0x41
	mov     r1, #0x8e
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	bl      Function_223da00
.thumb
branch_223db7a: @ 223db7a :thumb
	mov     r0, #0x41
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	mov     r1, r6
	bl      Function_223d94c
	pop     {r4-r6,pc}
@ 0x223db88

.thumb
branch_223db88: @ 223db88 :thumb
	cmp     r6, #0x0
	bne     branch_223dbb6
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x7
	beq     branch_223dba8
	mov     r1, #0x7
	str     r1, [r4, r0]
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	ldr     r0, [pc, #0xf4] @ 0x223dc98, (=0x5dd)
	bl      Function_2005748
.thumb
branch_223dba8: @ 223dba8 :thumb
	ldr     r0, [pc, #0xf8] @ 0x223dca4, (=0x414)
	mov     r1, #0x8f
	lsl     r1, r1, #2
	ldr     r0, [r4, r0]
	ldr     r1, [r4, r1]
	bl      Function_223da00
.thumb
branch_223dbb6: @ 223dbb6 :thumb
	ldr     r0, [pc, #0xec] @ 0x223dca4, (=0x414)
	mov     r1, r6
	ldr     r0, [r4, r0]
	bl      Function_223d94c
	pop     {r4-r6,pc}
@ 0x223dbc2

.thumb
branch_223dbc2: @ 223dbc2 :thumb
	cmp     r6, #0x0
	bne     branch_223dc84
	mov     r0, r4
	bl      Function_223b2f8
	cmp     r0, #0x0
	bne     branch_223dbe2
	ldr     r0, [pc, #0xd4] @ 0x223dca8, (=0x5f2)
	bl      Function_2005748
	add     r4, #0xec
	mov     r0, r4
	mov     r1, #0xf
	bl      Function_223ca30
	pop     {r4-r6,pc}
@ 0x223dbe2

.thumb
branch_223dbe2: @ 223dbe2 :thumb
	mov     r0, #0x42
	lsl     r0, r0, #4
	add     r6, r4, r0
	ldrb    r1, [r6, r5]
	cmp     r1, #0x0
	beq     branch_223dc38
	ldr     r0, [r4, #0x64]
	.hword  0x1e49 @ sub r1, r1, #0x1
	bl      Function_202ca90
	cmp     r0, #0x0
	beq     branch_223dc38
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_223b278
	mov     r1, r4
	add     r1, #0xd4
	str     r0, [r1, #0x0]
	ldrb    r0, [r6, r5]
	bl      Function_2098164
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xec
	bl      Function_223cdc4
	ldr     r0, [r4, #0x0]
	mov     r2, #0x0
	ldrb    r1, [r6, r5]
	ldr     r0, [r0, #0x20]
	mvn     r2, r2
	bl      Function_202cae0
	mov     r0, r4
	mov     r1, r5
	bl      Function_223cd20
	ldr     r0, [pc, #0x78] @ 0x223dcac, (=0x5eb)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x223dc38

.thumb
branch_223dc38: @ 223dc38 :thumb
	ldrb    r0, [r6, r5]
	cmp     r0, #0x0
	beq     branch_223dc84
	ldr     r0, [pc, #0x68] @ 0x223dca8, (=0x5f2)
	bl      Function_2005748
	add     r4, #0xec
	mov     r0, r4
	mov     r1, #0x10
	bl      Function_223ca30
	pop     {r4-r6,pc}
@ 0x223dc50

.thumb
branch_223dc50: @ 223dc50 :thumb
	cmp     r6, #0x0
	bne     branch_223dc84
	sub     r5, #0xd
	lsl     r2, r5, #24
	mov     r0, r4
	lsr     r2, r2, #24
	bl      Function_223b5c4
	lsl     r0, r5, #4
	add     r1, r4, r0
	mov     r0, #0xca
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	bl      Function_2098164
	add     r4, #0xec
	mov     r1, r0
	mov     r0, r4
	bl      Function_223cdc4
	ldr     r0, [pc, #0x30] @ 0x223dcac, (=0x5eb)
	bl      Function_2005748
	pop     {r4-r6,pc}
@ 0x223dc80

.thumb
branch_223dc80: @ 223dc80 :thumb
	bl      ErrorHandling
.thumb
branch_223dc84: @ 223dc84 :thumb
	pop     {r4-r6,pc}
@ 0x223dc86


.align 2


.word 0x418 @ 0x223dc88
.word 0x6c5 @ 0x223dc8c
.word 0x404 @ 0x223dc90
.word 0x408 @ 0x223dc94
.word 0x5dd @ 0x223dc98
.word 0x40c @ 0x223dc9c
.word 0x5e2 @ 0x223dca0
.word 0x414 @ 0x223dca4
.word 0x5f2 @ 0x223dca8
.word 0x5eb @ 0x223dcac
.thumb
Function_223dcb0: @ 223dcb0 :thumb
	mov     r1, #0x96
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	bx      lr
@ 0x223dcb8

.thumb
Function_223dcb8: @ 223dcb8 :thumb
	add     r0, #0xd8
	str     r1, [r0, #0x0]
	bx      lr
@ 0x223dcbe


.align 2, 0


.thumb
Function_223dcc0: @ 223dcc0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	str     r0, [sp, #0x4]
	add     r1, sp, #0x10
	mov     r0, #0x0
	strb    r0, [r1, #0x0]
	strb    r0, [r1, #0x1]
	strb    r0, [r1, #0x2]
	mov     r7, #0x1d
	lsl     r7, r7, #4
	strb    r0, [r1, #0x3]
	ldr     r1, [pc, #0xa4] @ 0x223dd7c, (=0x223ee44)
	ldr     r2, [sp, #0x4]
	add     r3, r7, #0x1
	add     r4, r7, #0x2
	add     r5, r7, #0x3
.thumb
branch_223dce0: @ 223dce0 :thumb
	ldrb    r6, [r1, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r6, [r2, r7]
	ldrb    r6, [r1, #0x1]
	strb    r6, [r2, r3]
	ldrb    r6, [r1, #0x2]
	strb    r6, [r2, r4]
	ldrb    r6, [r1, #0x3]
	.hword  0x1d09 @ add r1, r1, #0x4
	strb    r6, [r2, r5]
	.hword  0x1d12 @ add r2, r2, #0x4
	cmp     r0, #0xd
	blt     branch_223dce0
	cmp     r0, #0x15
	bge     branch_223dd5a
	mov     r3, #0x1d
	ldr     r2, [sp, #0x4]
	lsl     r3, r3, #4
	add     r2, r2, r3
	lsl     r4, r0, #2
	ldr     r1, [sp, #0x4]
	ldr     r3, [sp, #0x4]
	add     r1, r1, r4
	add     r2, r2, r4
	lsl     r4, r0, #4
	add     r5, sp, #0xc
	add     r3, r3, r4
	ldrb    r4, [r5, #0x4]
	strb    r4, [r5, #0x0]
	ldrb    r4, [r5, #0x5]
	strb    r4, [r5, #0x1]
	ldrb    r4, [r5, #0x6]
	strb    r4, [r5, #0x2]
	ldrb    r4, [r5, #0x7]
	strb    r4, [r5, #0x3]
	ldrb    r4, [r5, #0x2]
	ldrb    r6, [r5, #0x0]
	ldrb    r7, [r5, #0x1]
	str     r4, [sp, #0x8]
	ldrb    r4, [r5, #0x3]
	mov     r12, r4
.thumb
branch_223dd32: @ 223dd32 :thumb
	mov     r4, #0x1d
	lsl     r4, r4, #4
	strb    r6, [r1, r4]
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r7, [r1, r4]
	ldr     r5, [pc, #0x40] @ 0x223dd80, (=0x1d2)
	ldr     r4, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r4, [r1, r5]
	.hword  0x1c6d @ add r5, r5, #0x1
	mov     r4, r12
	strb    r4, [r1, r5]
	mov     r4, #0x26
	lsl     r4, r4, #4
	str     r2, [r3, r4]
	.hword  0x1d09 @ add r1, r1, #0x4
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r3, #0x10
	cmp     r0, #0x15
	blt     branch_223dd32
.thumb
branch_223dd5a: @ 223dd5a :thumb
	mov     r0, #0x35
	str     r0, [sp, #0x0]
	mov     r1, #0x1d
	ldr     r0, [sp, #0x4]
	lsl     r1, r1, #4
	add     r0, r0, r1
	ldr     r2, [pc, #0x1c] @ 0x223dd84, (=0x223da35)
	ldr     r3, [sp, #0x4]
	mov     r1, #0x15
	bl      Function_2023fcc
	mov     r2, #0x73
	ldr     r1, [sp, #0x4]
	lsl     r2, r2, #2
	str     r0, [r1, r2]
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x223dd7c

.word 0x223ee44 @ 0x223dd7c
.word 0x1d2 @ 0x223dd80
.word Function_223da34+1 @ =0x223da35, 0x223dd84
.thumb
Function_223dd88: @ 223dd88 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x48
	ldr     r1, [pc, #0x64] @ 0x223ddf4, (=0x428)
	mov     r5, r0
	ldr     r1, [r5, r1]
	add     r0, sp, #0x38
	mov     r2, #0x2
	bl      LoadPkmnDataForPlatGraphic
	ldr     r0, [pc, #0x58] @ 0x223ddf4, (=0x428)
	mov     r1, #0x5
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0
	ldr     r0, [pc, #0x48] @ 0x223ddf4, (=0x428)
	mov     r1, #0x2
	ldr     r0, [r5, r0]
	bl      Function_20765ac
	mov     r6, r0
	mov     r0, #0x6b
	lsl     r0, r0, #2
	str     r6, [r5, r0]
	ldr     r0, [pc, #0x3c] @ 0x223ddf8, (=0x42c)
	lsl     r2, r4, #16
	ldr     r0, [r5, r0]
	add     r1, sp, #0x10
	lsr     r2, r2, #16
	mov     r3, #0x1
	bl      Function_20789bc
	ldr     r0, [pc, #0x30] @ 0x223ddfc, (=0xfffffd80)
	add     r6, #0x30
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	add     r0, sp, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0x69
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x38
	mov     r2, #0xc0
	mov     r3, r6
	bl      Function_2007c34
	mov     r1, #0x6a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	add     sp, #0x48
	pop     {r4-r6,pc}
@ 0x223ddf4

.word 0x428 @ 0x223ddf4
.word 0x42c @ 0x223ddf8
.word 0xfffffd80 @ 0x223ddfc
.thumb
Function_223de00: @ 223de00 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x44] @ 0x223de4c, (=0x428)
	mov     r1, #0x5
	ldr     r0, [r5, r0]
	mov     r2, #0x0
	bl      GetPkmnData
	mov     r4, r0
	ldr     r0, [pc, #0x34] @ 0x223de4c, (=0x428)
	ldr     r0, [r5, r0]
	bl      Function_2075bcc
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_2007b98
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r2, #0x97
	str     r0, [sp, #0x8]
	ldr     r0, [pc, #0x18] @ 0x223de50, (=0x42c)
	lsl     r2, r2, #2
	ldr     r1, [r5, r2]
	sub     r2, #0xb4
	lsl     r3, r4, #16
	ldr     r0, [r5, r0]
	ldr     r2, [r5, r2]
	lsr     r3, r3, #16
	bl      Function_20789f4
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x223de4c

.word 0x428 @ 0x223de4c
.word 0x42c @ 0x223de50
.thumb
Function_223de54: @ 223de54 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_2007dec
	pop     {r4,pc}
@ 0x223de76


.align 2, 0


.thumb
Function_223de78: @ 223de78 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	bl      Function_20080c0
	mov     r1, #0x1
	lsl     r1, r1, #8
	cmp     r0, r1
	bne     branch_223de94
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223de94

.thumb
branch_223de94: @ 223de94 :thumb
	add     r1, #0xa8
	ldr     r0, [r4, r1]
	mov     r1, #0xc
	bl      Function_20080c0
	mov     r2, #0x1
	lsl     r2, r2, #8
	cmp     r0, r2
	blt     branch_223dec6
	mov     r0, r2
	add     r0, #0xa8
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	bl      Function_2007dec
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r4, r0]
	add     r2, #0xf3
	bl      Function_2007dec
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223dec6

.thumb
branch_223dec6: @ 223dec6 :thumb
	add     r2, #0xa8
	ldr     r0, [r4, r2]
	mov     r1, #0xc
	mov     r2, #0x20
	bl      Function_2008274
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd
	mov     r2, #0x20
	bl      Function_2008274
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_20087c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223def2


.align 2, 0


.thumb
Function_223def4: @ 223def4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	bl      Function_20080c0
	cmp     r0, #0x0
	bne     branch_223df0c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223df0c

.thumb
branch_223df0c: @ 223df0c :thumb
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	bl      Function_20080c0
	cmp     r0, #0x0
	bgt     branch_223df3c
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xc
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0xd
	mov     r2, #0x0
	bl      Function_2007dec
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223df3c

.thumb
branch_223df3c: @ 223df3c :thumb
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r1, #0xc
	mov     r2, r1
	ldr     r0, [r4, r0]
	sub     r2, #0x2c
	bl      Function_2008274
	mov     r0, #0x6a
	lsl     r0, r0, #2
	mov     r1, #0xd
	mov     r2, r1
	ldr     r0, [r4, r0]
	sub     r2, #0x2d
	bl      Function_2008274
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r4, r1]
	bl      Function_20087c8
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223df6e


.align 2, 0


.thumb
Function_223df70: @ 223df70 :thumb
	mov     r2, r1
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r0, [r0, r1]
	ldr     r3, [pc, #0x4] @ 0x223df80, (=Function_2007dec+1)
	mov     r1, #0x6
	bx      r3
@ 0x223df7e

.align 2
.word Function_2007dec+1 @ 0x223df80



.thumb
Function_223df84: @ 223df84 :thumb
	mov     r1, #0x6a
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x223df90, (=Function_2007dc8+1)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x223df8e

.align 2
.word Function_2007dc8+1 @ 0x223df90



.thumb
Function_223df94: @ 223df94 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xa4
	mov     r1, #0xf5
	mov     r4, r0
	lsl     r1, r1, #2
	ldr     r2, [r4, r1]
	cmp     r2, #0xa
	bhi     branch_223e014
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223dfb0

Jumppoints_223dfb0:
.hword branch_223dfc6 - Jumppoints_223dfb0 - 2
.hword branch_223e00c - Jumppoints_223dfb0 - 2
.hword branch_223e082 - Jumppoints_223dfb0 - 2
.hword branch_223e0ba - Jumppoints_223dfb0 - 2
.hword branch_223e7c0 - Jumppoints_223dfb0 - 2
.hword branch_223e0da - Jumppoints_223dfb0 - 2
.hword branch_223e42e - Jumppoints_223dfb0 - 2
.hword branch_223e49a - Jumppoints_223dfb0 - 2
.hword branch_223e6bc - Jumppoints_223dfb0 - 2
.hword branch_223e6f0 - Jumppoints_223dfb0 - 2
.hword branch_223e77c - Jumppoints_223dfb0 - 2
.thumb
branch_223dfc6: @ 223dfc6 :thumb
	mov     r1, #0x0
	bl      Function_223dcb8
	mov     r0, r4
	ldr     r1, [pc, #0x334] @ 0x223e304, (=0xffff)
	add     r0, #0xec
	bl      Function_223ca30
	mov     r0, r4
	bl      Function_223cb58
	mov     r0, r4
	bl      Function_223cc8c
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_223bd30
	mov     r0, r4
	bl      Function_223d338
	mov     r0, r4
	bl      Function_223d368
	mov     r0, #0x26
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e00c

.thumb
branch_223e00c: @ 223e00c :thumb
	bl      Function_223dcb0
	cmp     r0, #0x1
	bne     branch_223e016
.thumb
branch_223e014: @ 223e014 :thumb
	b       branch_223e7c0
@ 0x223e016

.thumb
branch_223e016: @ 223e016 :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x3
	bl      Function_2003178
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x2c4] @ 0x223e304, (=0xffff)
	mov     r1, #0x4
	bl      Function_2003178
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      Function_201ff74
	mov     r0, #0x7
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223d2f4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223c568
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b96c
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e082

.thumb
branch_223e082: @ 223e082 :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_223e180
	mov     r0, #0x3
	mov     r1, #0x1
	bl      Function_2019060
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_2003178
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e0ba

.thumb
branch_223e0ba: @ 223e0ba :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_223e180
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223dcb8
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e0da

.thumb
branch_223e0da: @ 223e0da :thumb
	mov     r2, r1
	add     r2, #0x8
	ldr     r2, [r4, r2]
	cmp     r2, #0x7
	bls     branch_223e0e6
	b       branch_223e3f4
@ 0x223e0e6

.thumb
branch_223e0e6: @ 223e0e6 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x223e0f2

Jumppoints_223e0f2:
.hword branch_223e102 - Jumppoints_223e0f2 - 2
.hword branch_223e174 - Jumppoints_223e0f2 - 2
.hword branch_223e1ca - Jumppoints_223e0f2 - 2
.hword branch_223e22e - Jumppoints_223e0f2 - 2
.hword branch_223e27a - Jumppoints_223e0f2 - 2
.hword branch_223e2be - Jumppoints_223e0f2 - 2
.hword branch_223e314 - Jumppoints_223e0f2 - 2
.hword branch_223e388 - Jumppoints_223e0f2 - 2
.thumb
branch_223e102: @ 223e102 :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1ec] @ 0x223e308, (=0x80b)
	mov     r1, #0x2
	bl      Function_2003178
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1d0] @ 0x223e304, (=0xffff)
	mov     r1, #0x8
	bl      Function_2003178
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	mov     r0, #0x3e
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	mov     r0, r4
	bl      Function_223d3cc
	mov     r0, r4
	bl      Function_223dd88
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223df70
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0xd
	bl      Function_223ca30
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e174

.thumb
branch_223e174: @ 223e174 :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_223e182
.thumb
branch_223e180: @ 223e180 :thumb
	b       branch_223e7c0
@ 0x223e182

.thumb
branch_223e182: @ 223e182 :thumb
	mov     r0, #0x35
	str     r0, [sp, #0x80]
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r0, #0xff
	str     r0, [sp, #0x88]
	mov     r0, r4
	str     r1, [sp, #0x7c]
	str     r1, [sp, #0x94]
	str     r2, [sp, #0x84]
	str     r2, [sp, #0x90]
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x9b
	str     r0, [sp, #0x98]
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x9c]
	ldr     r0, [pc, #0x160] @ 0x223e30c, (=0x428)
	ldr     r0, [r4, r0]
	bl      GetPkmnData
	str     r0, [sp, #0x8c]
	add     r0, sp, #0x7c
	bl      Function_12_2237728
	mov     r1, #0x8b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e1ca

.thumb
branch_223e1ca: @ 223e1ca :thumb
	add     r2, sp, #0x58
	mov     r0, #0x0
	str     r0, [r2, #0x0]
	str     r0, [r2, #0x4]
	str     r0, [r2, #0x8]
	mov     r0, #0x1
	str     r0, [sp, #0x58]
	mov     r0, r1
	add     r0, #0x54
	ldr     r0, [r4, r0]
	sub     r1, #0x10
	str     r0, [sp, #0x60]
	ldr     r0, [r4, r1]
	mov     r1, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x18]
	add     r0, sp, #0x64
	bl      Function_223b848
	ldr     r0, [pc, #0x118] @ 0x223e30c, (=0x428)
	mov     r1, #0xa2
	ldr     r0, [r4, r0]
	add     r2, sp, #0x18
	bl      SetPkmnData
	ldr     r0, [pc, #0x10c] @ 0x223e30c, (=0x428)
	mov     r1, #0xab
	ldr     r0, [r4, r0]
	add     r2, sp, #0x64
	bl      SetPkmnData
	mov     r0, #0x35
	add     r1, sp, #0x58
	bl      Function_12_2236004
	mov     r1, #0x8a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	bl      Function_12_2236320
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	mov     r1, #0x0
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r1, [r4, r0]
	b       branch_223e7c0

branch_223e22e: @ 223e22e :thumb
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_2236374
	cmp     r0, #0x1
	bne     branch_223e2ea
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_2237810
	cmp     r0, #0x1
	bne     branch_223e2ea
	mov     r0, r4
	bl      Function_223de78
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_22363b4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223df70
	mov     r0, r4
	bl      Function_223de54
	ldr     r0, [pc, #0xa4] @ 0x223e310, (=0x6c6)
	bl      Function_2005748
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e27a

.thumb
branch_223e27a: @ 223e27a :thumb
	bl      Function_223de78
	mov     r5, r0
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_22377f8
	cmp     r0, #0x0
	bne     branch_223e2ea
	cmp     r5, #0x0
	bne     branch_223e2ea
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_223783c
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	bl      Function_223de00
	mov     r0, #0x3e
	mov     r1, #0x0
	lsl     r0, r0, #4
	str     r1, [r4, r0]
	sub     r1, r0, #0x4
	ldr     r1, [r4, r1]
	.hword  0x1f00 @ sub r0, r0, #0x4
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0

branch_223e2be: @ 223e2be :thumb
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_22363c4
	cmp     r0, #0x0
	bne     branch_223e2ea
	mov     r0, #0x97
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_20160f4
	cmp     r0, #0x1
	bne     branch_223e2ea
	mov     r0, #0x6a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2007c24
	cmp     r0, #0x0
	beq     branch_223e2ec
.thumb
branch_223e2ea: @ 223e2ea :thumb
	b       branch_223e7c0
@ 0x223e2ec

.thumb
branch_223e2ec: @ 223e2ec :thumb
	mov     r0, #0x8a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_2236428
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e302


.align 2


.word 0xffff @ 0x223e304
.word 0x80b @ 0x223e308
.word 0x428 @ 0x223e30c
.word 0x6c6 @ 0x223e310
.thumb
branch_223e314: @ 223e314 :thumb
	mov     r0, r1
	add     r0, #0xc
	ldr     r0, [r4, r0]
	add     r2, r0, #0x1
	mov     r0, r1
	add     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, r1
	add     r0, #0xc
	ldr     r0, [r4, r0]
	cmp     r0, #0x1e
	blt     branch_223e402
	mov     r0, r1
	mov     r2, #0x0
	add     r0, #0xc
	str     r2, [r4, r0]
	mov     r0, #0x35
	mov     r3, #0x1
	str     r0, [sp, #0x34]
	mov     r0, #0x5
	str     r0, [sp, #0x38]
	mov     r0, #0xff
	str     r0, [sp, #0x3c]
	mov     r0, r4
	str     r3, [sp, #0x30]
	str     r2, [sp, #0x44]
	str     r3, [sp, #0x48]
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	add     r1, #0x54
	str     r0, [sp, #0x4c]
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	str     r0, [sp, #0x50]
	ldr     r0, [r4, r1]
	mov     r1, #0x9b
	bl      GetPkmnData
	str     r0, [sp, #0x40]
	add     r0, sp, #0x30
	bl      Function_12_2237728
	mov     r1, #0x8b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	bl      Function_223d3a0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e388

.thumb
branch_223e388: @ 223e388 :thumb
	bl      Function_223def4
	mov     r5, r0
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_22377f8
	cmp     r0, #0x0
	bne     branch_223e402
	cmp     r5, #0x0
	bne     branch_223e402
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x334] @ 0x223e6e8, (=0x80b)
	mov     r1, #0x2
	bl      Function_2003178
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x320] @ 0x223e6ec, (=0xffff)
	mov     r1, #0x8
	bl      Function_2003178
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223df70
	mov     r0, r4
	bl      Function_223df84
	mov     r0, #0x8b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_12_223783c
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0

branch_223e3f4: @ 223e3f4 :thumb
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_223e404
.thumb
branch_223e402: @ 223e402 :thumb
	b       branch_223e7c0
@ 0x223e404

.thumb
branch_223e404: @ 223e404 :thumb
	mov     r0, #0x10
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223dcb8
	mov     r0, #0xf7
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	mov     r1, #0x4
	sub     r0, #0x8
	str     r1, [r4, r0]
	mov     r0, r4
	ldr     r1, [pc, #0x2c4] @ 0x223e6ec, (=0xffff)
	add     r0, #0xec
	bl      Function_223ca30
	b       branch_223e7c0
@ 0x223e42e

.thumb
branch_223e42e: @ 223e42e :thumb
	add     r0, #0xec
	mov     r1, #0xc
	bl      Function_223ca30
	mov     r0, r4
	bl      Function_223b78c
	cmp     r0, #0x1
	bne     branch_223e448
	mov     r0, #0x26
	mov     r1, #0x1
	lsl     r0, r0, #4
	str     r1, [r4, r0]
.thumb
branch_223e448: @ 223e448 :thumb
	mov     r0, r4
	bl      Function_223b808
	mov     r0, r4
	bl      Function_223c7e0
	ldr     r0, [r4, #0x0]
	ldr     r0, [r0, #0x28]
	bl      LoadVariableAreaAdress_14
	mov     r1, #0x6
	bl      Function_202cfec
	mov     r0, #0xf1
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	mov     r0, #0xc
	mul     r0, r1
	add     r2, r4, r0
	mov     r0, #0x99
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	cmp     r0, #0xff
	beq     branch_223e490
	ldr     r2, [r4, #0x0]
	lsl     r0, r0, #2
	add     r0, r2, r0
	ldr     r5, [r0, #0x4]
	ldr     r0, [r2, #0x20]
	bl      Function_202ca28
	mov     r2, r0
	mov     r0, r5
	mov     r1, #0xab
	bl      SetPkmnData
.thumb
branch_223e490: @ 223e490 :thumb
	mov     r0, #0xf5
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e49a

.thumb
branch_223e49a: @ 223e49a :thumb
	add     r1, #0x8
	ldr     r1, [r4, r1]
	cmp     r1, #0x5
	bhi     branch_223e524
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223e4ae

Jumppoints_223e4ae:
.hword branch_223e4ba - Jumppoints_223e4ae - 2
.hword branch_223e518 - Jumppoints_223e4ae - 2
.hword branch_223e59c - Jumppoints_223e4ae - 2
.hword branch_223e5ae - Jumppoints_223e4ae - 2
.hword branch_223e616 - Jumppoints_223e4ae - 2
.hword branch_223e652 - Jumppoints_223e4ae - 2
.thumb
branch_223e4ba: @ 223e4ba :thumb
	bl      Function_223b78c
	cmp     r0, #0x0
	bne     branch_223e4cc
	mov     r0, #0xf5
	mov     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e4cc

.thumb
branch_223e4cc: @ 223e4cc :thumb
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x208] @ 0x223e6e8, (=0x80b)
	mov     r1, #0x2
	bl      Function_2003178
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x1f4] @ 0x223e6ec, (=0xffff)
	mov     r1, #0x8
	bl      Function_2003178
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	mov     r0, #0x1
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e518

.thumb
branch_223e518: @ 223e518 :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_223e526
.thumb
branch_223e524: @ 223e524 :thumb
	b       branch_223e7c0
@ 0x223e526

.thumb
branch_223e526: @ 223e526 :thumb
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      Function_2003858
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	mov     r0, r4
	str     r2, [sp, #0x8]
	mov     r1, #0x28
	str     r1, [sp, #0xc]
	add     r0, #0xe4
	add     r1, #0xe4
	ldr     r0, [r0, #0x0]
	add     r1, r4, r1
	mov     r3, #0x2
	bl      Function_223ca98
	mov     r0, r4
	add     r0, #0xe4
	ldr     r0, [r0, #0x0]
	mov     r1, #0x19
	str     r0, [sp, #0x1c]
	mov     r0, #0x4
	str     r0, [sp, #0x20]
	mov     r0, #0xd4
	str     r0, [sp, #0x24]
	mov     r0, #0x5
	str     r0, [sp, #0x28]
	add     r0, sp, #0x10
	strb    r1, [r0, #0x1c]
	mov     r1, #0x6
	strb    r1, [r0, #0x1d]
	mov     r0, #0x35
	bl      Function_2015920
	mov     r1, #0x89
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	add     r1, sp, #0x1c
	bl      Function_2015958
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0xe
	bl      Function_223ca30
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e59c

.thumb
branch_223e59c: @ 223e59c :thumb
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff74
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_223e5ae: @ 223e5ae :thumb
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_20159fc
	cmp     r0, #0x0
	beq     branch_223e65e
	cmp     r0, #0x1
	beq     branch_223e5c4
	cmp     r0, #0x2
	bne     branch_223e65e
.thumb
branch_223e5c4: @ 223e5c4 :thumb
	mov     r1, #0x3e
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	bl      Function_2003858
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2015a54
	mov     r0, #0x89
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2015938
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_200e084
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201acf4
	mov     r0, #0x43
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_201a8fc
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e616

.thumb
branch_223e616: @ 223e616 :thumb
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0xc0] @ 0x223e6e8, (=0x80b)
	mov     r1, #0x2
	bl      Function_2003178
	mov     r0, #0xa
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0xac] @ 0x223e6ec, (=0xffff)
	mov     r1, #0x8
	bl      Function_2003178
	mov     r0, #0xf7
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e652

.thumb
branch_223e652: @ 223e652 :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	beq     branch_223e660
.thumb
branch_223e65e: @ 223e65e :thumb
	b       branch_223e7c0
@ 0x223e660

.thumb
branch_223e660: @ 223e660 :thumb
	mov     r0, #0x3e
	lsl     r0, r0, #4
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223e6aa
	cmp     r1, #0x1
	beq     branch_223e674
	cmp     r1, #0x2
	beq     branch_223e6a4
	b       branch_223e6aa
@ 0x223e674

.thumb
branch_223e674: @ 223e674 :thumb
	mov     r0, r4
	bl      Function_223d350
	mov     r0, r4
	bl      Function_223d384
	mov     r0, r4
	bl      Function_223cc8c
	mov     r0, r4
	bl      Function_223b678
	mov     r0, r4
	bl      Function_223b208
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223b69c
	mov     r0, #0xf5
	mov     r1, #0x6
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223e6aa
@ 0x223e6a4

.thumb
branch_223e6a4: @ 223e6a4 :thumb
	mov     r1, #0x4
	sub     r0, #0xc
	str     r1, [r4, r0]
.thumb
branch_223e6aa: @ 223e6aa :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_223dcb8
	mov     r0, #0xf7
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e6bc

.thumb
branch_223e6bc: @ 223e6bc :thumb
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x1
	mov     r2, #0x2
	bl      Function_2003178
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e6e8

.word 0x80b @ 0x223e6e8
.word 0xffff @ 0x223e6ec
.thumb
branch_223e6f0: @ 223e6f0 :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_223e7c0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	mov     r1, #0x1
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	mov     r2, r1
	bl      Function_2003178
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	mov     r0, r4
	str     r3, [sp, #0x8]
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x174] @ 0x223e89c, (=0xffff)
	mov     r1, #0x4
	bl      Function_2003178
	mov     r0, #0x3
	mov     r1, r0
	bl      Function_2019060
	mov     r0, #0x7
	mov     r1, #0x3
	bl      Function_2019060
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223d2f4
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223c568
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223b96c
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	mov     r2, #0x4
	bl      Function_223bd30
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_223dcb8
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e7c0
@ 0x223e77c

.thumb
branch_223e77c: @ 223e77c :thumb
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_200384c
	cmp     r0, #0x0
	bne     branch_223e7c0
	mov     r0, r4
	bl      Function_223dcb0
	cmp     r0, #0x1
	beq     branch_223e7c0
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0xff
	mov     r3, r1
	bl      Function_223d494
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
	mov     r0, r4
	bl      Function_223cda4
	add     sp, #0xa4
	mov     r0, #0x1
	pop     {r4-r7,pc}
@ 0x223e7c0

.thumb
branch_223e7c0: @ 223e7c0 :thumb
	mov     r0, r4
	add     r0, #0xd4
	ldr     r5, [r0, #0x0]
	cmp     r5, #0xff
	bne     branch_223e7d6
	mov     r0, #0x73
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_202404c
	b       branch_223e87e
@ 0x223e7d6

.thumb
branch_223e7d6: @ 223e7d6 :thumb
	add     r0, sp, #0x14
	add     r1, sp, #0x10
	bl      Function_20227a4
	cmp     r0, #0x0
	beq     branch_223e824
	lsl     r6, r5, #4
	mov     r0, #0xca
	add     r1, r4, r6
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	bl      Function_2098164
	mov     r1, r0
	mov     r0, r4
	add     r0, #0xec
	bl      Function_223cdc4
	mov     r0, #0xcb
	ldr     r2, [sp, #0x10]
	add     r1, r4, r6
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	ldr     r1, [sp, #0x14]
	lsl     r2, r2, #16
	lsl     r1, r1, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      Function_200d4c4
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b758
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b7d4
	b       branch_223e87e
@ 0x223e824

.thumb
branch_223e824: @ 223e824 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b6c4
	lsl     r6, r5, #4
	mov     r2, #0x33
	add     r1, r4, r6
	lsl     r2, r2, #4
	mov     r7, r0
	ldr     r0, [r1, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r1, [r1, r2]
	mov     r2, #0x0
	bl      Function_223b184
	cmp     r7, #0x0
	bne     branch_223e866
	mov     r1, #0xca
	ldr     r0, [r4, #0x0]
	add     r2, r4, r6
	lsl     r1, r1, #2
	ldrb    r1, [r2, r1]
	ldr     r0, [r0, #0x20]
	mov     r2, #0x1
	bl      Function_202cb20
	mov     r0, r4
	bl      Function_223cc8c
	mov     r0, r4
	mov     r1, r5
	bl      Function_223b704
.thumb
branch_223e866: @ 223e866 :thumb
	ldr     r0, [pc, #0x38] @ 0x223e8a0, (=0x5ea)
	bl      Function_2005748
	mov     r0, r4
	mov     r1, #0xff
	add     r0, #0xd4
	str     r1, [r0, #0x0]
	mov     r0, r4
	ldr     r1, [pc, #0x24] @ 0x223e89c, (=0xffff)
	add     r0, #0xec
	bl      Function_223cdc4
.thumb
branch_223e87e: @ 223e87e :thumb
	mov     r0, r4
	bl      Function_223d318
	mov     r0, r4
	bl      Function_223c544
	mov     r0, r4
	bl      Function_223c304
	mov     r0, r4
	bl      Function_223c88c
	mov     r0, #0x1
	add     sp, #0xa4
	pop     {r4-r7,pc}
@ 0x223e89c

.word 0xffff @ 0x223e89c
.word 0x5ea @ 0x223e8a0
.thumb
Function_223e8a4: @ 223e8a4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x0
	beq     branch_223e8bc
	cmp     r1, #0x1
	beq     branch_223e8c0
	cmp     r1, #0x2
	beq     branch_223e8d0
	b       branch_223e90a
@ 0x223e8bc

.thumb
branch_223e8bc: @ 223e8bc :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_223e8c0: @ 223e8c0 :thumb
	bl      Function_223ce64
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e90a
@ 0x223e8d0

.thumb
branch_223e8d0: @ 223e8d0 :thumb
	bl      Function_200f2ac
	cmp     r0, #0x1
	bne     branch_223e90a
	mov     r0, r4
	add     r0, #0xec
	bl      Function_201a8fc
	mov     r0, r4
	bl      Function_223c8bc
	mov     r0, r4
	bl      Function_223c32c
	mov     r0, r4
	bl      Function_223d31c
	mov     r0, r4
	bl      Function_223c588
	mov     r0, r4
	bl      Function_223bc70
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_2097f30
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x223e90a

.thumb
branch_223e90a: @ 223e90a :thumb
	mov     r0, r4
	bl      Function_223c304
	mov     r0, r4
	bl      Function_223c88c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e91a


.align 2, 0


.thumb
Function_223e91c: @ 223e91c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r5, r0
	mov     r0, #0x0
	add     r4, r5, #0x4
	lsl     r6, r1, #3
	str     r0, [sp, #0x0]
	ldr     r0, [r4, r6]
	cmp     r0, #0xff
	beq     branch_223e940
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #2
	add     r0, r1, r0
	ldr     r0, [r0, #0x4]
	mov     r1, #0xa2
	add     r2, sp, #0x0
	bl      SetPkmnData
.thumb
branch_223e940: @ 223e940 :thumb
	mov     r0, #0xff
	str     r0, [r4, r6]
	mov     r0, r5
	bl      Function_223c7e0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x223e94e


.align 2, 0


.thumb
Function_223e950: @ 223e950 :thumb
	push    {r4,lr}
	mov     r2, #0xf5
	mov     r4, r0
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	cmp     r1, #0x0
	beq     branch_223e968
	cmp     r1, #0x1
	beq     branch_223e986
	cmp     r1, #0x2
	beq     branch_223e996
	b       branch_223e9aa
@ 0x223e968

.thumb
branch_223e968: @ 223e968 :thumb
	sub     r2, #0x10
	ldr     r1, [r4, r2]
	bl      Function_223e91c
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x9
	bl      Function_223ca30
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
	b       branch_223e9aa
@ 0x223e986

.thumb
branch_223e986: @ 223e986 :thumb
	ldr     r0, [pc, #0x34] @ 0x223e9bc, (=RAM_21bf67c)
	ldr     r3, [r0, #0x48]
	ldr     r0, [pc, #0x34] @ 0x223e9c0, (=0xcf3)
	tst     r0, r3
	beq     branch_223e9aa
	add     r0, r1, #0x1
	str     r0, [r4, r2]
	b       branch_223e9aa
@ 0x223e996

.thumb
branch_223e996: @ 223e996 :thumb
	mov     r1, #0x0
	mov     r2, #0xff
	mov     r3, r1
	bl      Function_223d494
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
.thumb
branch_223e9aa: @ 223e9aa :thumb
	mov     r0, r4
	bl      Function_223c304
	mov     r0, r4
	bl      Function_223c88c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223e9ba


.align 2


.word RAM_21bf67c @ 0x223e9bc
.word 0xcf3 @ 0x223e9c0
.thumb
Function_223e9c4: @ 223e9c4 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	cmp     r1, #0x3
	bls     branch_223e9d4
	b       branch_223eafc
@ 0x223e9d4

.thumb
branch_223e9d4: @ 223e9d4 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x223e9e0

Jumppoints_223e9e0:
.hword branch_223e9e8 - Jumppoints_223e9e0 - 2
.hword branch_223ea2a - Jumppoints_223e9e0 - 2
.hword branch_223eab4 - Jumppoints_223e9e0 - 2
.hword branch_223eac4 - Jumppoints_223e9e0 - 2
.thumb
branch_223e9e8: @ 223e9e8 :thumb
	sub     r0, #0xe0
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_200d474
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x14
	bl      Function_200d474
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_200d364
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0xa
	bl      Function_223ca30
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_200d3f4
	mov     r0, #0xf5
	lsl     r0, r0, #2
	ldr     r1, [r4, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r4, r0]
.thumb
branch_223ea2a: @ 223ea2a :thumb
	mov     r0, #0xf2
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      Function_223d574
	cmp     r0, #0x1
	bne     branch_223ea4a
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_223d600
	ldr     r0, [pc, #0xc8] @ 0x223eb0c, (=0x5dc)
	bl      Function_2005748
	b       branch_223eafc
@ 0x223ea4a

.thumb
branch_223ea4a: @ 223ea4a :thumb
	ldr     r0, [pc, #0xc4] @ 0x223eb10, (=RAM_21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_223ea88
	mov     r2, #0xf1
	lsl     r2, r2, #2
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	ldr     r2, [r4, r2]
	mov     r0, r4
	bl      Function_223c80c
	mov     r1, #0x1
	mov     r0, r4
	mov     r2, r1
	bl      Function_223d600
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0xb
	bl      Function_223ca30
	mov     r0, #0xf5
	mov     r1, #0x2
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x88] @ 0x223eb0c, (=0x5dc)
	bl      Function_2005748
	b       branch_223eafc
@ 0x223ea88

.thumb
branch_223ea88: @ 223ea88 :thumb
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_223eafc
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200d3f4
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_223d600
	mov     r0, #0xf5
	mov     r1, #0x3
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	ldr     r0, [pc, #0x64] @ 0x223eb14, (=0x5dd)
	bl      Function_2005748
	b       branch_223eafc
@ 0x223eab4

.thumb
branch_223eab4: @ 223eab4 :thumb
	ldr     r1, [pc, #0x58] @ 0x223eb10, (=RAM_21bf67c)
	ldr     r2, [r1, #0x48]
	ldr     r1, [pc, #0x5c] @ 0x223eb18, (=0xcf3)
	tst     r1, r2
	beq     branch_223eafc
	mov     r1, #0x3
	str     r1, [r4, r0]
	b       branch_223eafc
@ 0x223eac4

.thumb
branch_223eac4: @ 223eac4 :thumb
	sub     r0, #0xe0
	ldr     r0, [r4, r0]
	mov     r1, #0x14
	bl      Function_200d474
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x19
	bl      Function_200d474
	mov     r1, #0x0
	mov     r0, r4
	mov     r2, #0xff
	mov     r3, r1
	bl      Function_223d494
	mov     r0, #0xbd
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_200d364
	mov     r0, r4
	add     r0, #0xec
	mov     r1, #0x7
	bl      Function_223ca30
.thumb
branch_223eafc: @ 223eafc :thumb
	mov     r0, r4
	bl      Function_223c304
	mov     r0, r4
	bl      Function_223c88c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x223eb0c

.word 0x5dc @ 0x223eb0c
.word RAM_21bf67c @ 0x223eb10
.word 0x5dd @ 0x223eb14
.word 0xcf3 @ 0x223eb18
.thumb
Function_223eb1c: @ 223eb1c :thumb
	mov     r0, #0x0
	bx      lr
@ 0x223eb20

.thumb
Function_223eb20: @ 223eb20 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	bl      Function_201ff00
	bl      Function_201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x223eb4c, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x223eb50, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x223eb4c

.word 0xffffe0ff @ 0x223eb4c
.word 0x4001000 @ 0x223eb50
.thumb
Function_223eb54: @ 223eb54 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      Function_20177a4
	pop     {r3,pc}
@ 0x223eb64

.thumb
Function_223eb64: @ 223eb64 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xfc
	mov     r4, r0
	bl      Function_201ff00
	ldr     r5, [pc, #0x12c] @ 0x223ec9c, (=0x223ee1c)
	add     r3, sp, #0x10
	mov     r2, #0x5
.thumb
branch_223eb74: @ 223eb74 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223eb74
	add     r0, sp, #0x10
	bl      GX_SetBanks
	mov     r1, #0x6
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #24
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x62
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	mov     r1, #0x19
	mov     r2, #0x1
	mov     r0, #0x0
	lsl     r1, r1, #22
	lsl     r2, r2, #18
	blx     MIi_CpuClear32
	mov     r1, #0x66
	mov     r2, #0x2
	mov     r0, #0x0
	lsl     r1, r1, #20
	lsl     r2, r2, #16
	blx     MIi_CpuClear32
	ldr     r5, [pc, #0xe4] @ 0x223eca0, (=0x223edf4)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      SetGraphicsModes
	ldr     r5, [pc, #0xd4] @ 0x223eca4, (=0x223ee78)
	add     r3, sp, #0xa8
	mov     r2, #0xa
.thumb
branch_223ebd4: @ 223ebd4 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ebd4
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	str     r0, [r3, #0x0]
	mov     r0, r4
	add     r2, sp, #0xa8
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x2
	add     r2, sp, #0xc4
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x3
	add     r2, sp, #0xe0
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_2019ebc
	ldr     r1, [pc, #0x88] @ 0x223eca8, (=0x4000008)
	mov     r0, #0x3
	ldrh    r2, [r1, #0x0]
	bic     r2, r0
	mov     r0, #0x1
	orr     r2, r0
	strh    r2, [r1, #0x0]
	mov     r1, r0
	bl      Function_201ff0c
	ldr     r5, [pc, #0x78] @ 0x223ecac, (=0x223eecc)
	add     r3, sp, #0x38
	mov     r2, #0xe
.thumb
branch_223ec36: @ 223ec36 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_223ec36
	mov     r0, r4
	mov     r1, #0x4
	add     r2, sp, #0x38
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x5
	add     r2, sp, #0x54
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x6
	add     r2, sp, #0x70
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x7
	add     r2, sp, #0x8c
	mov     r3, #0x0
	bl      Function_20183c4
	mov     r0, r4
	mov     r1, #0x4
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x5
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_2019ebc
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_2019ebc
	mov     r0, #0x4
	mov     r1, #0x0
	bl      Function_201ff74
	add     sp, #0xfc
	pop     {r4,r5,pc}
@ 0x223ec9a


.align 2


.word 0x223ee1c @ 0x223ec9c
.word 0x223edf4 @ 0x223eca0
.word 0x223ee78 @ 0x223eca4
.word 0x4000008 @ 0x223eca8
.word 0x223eecc @ 0x223ecac
.thumb
Function_223ecb0: @ 223ecb0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x69
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_2008a94
	bl      Function_201dcac
	bl      Function_200c800
	mov     r0, r4
	add     r0, #0xe8
	ldr     r0, [r0, #0x0]
	bl      Function_2003694_LoadSomePalettes
	add     r4, #0xe4
	ldr     r0, [r4, #0x0]
	bl      Function_201c2b8
	ldr     r3, [pc, #0xc] @ 0x223ece8, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x223ecec, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x223ece6

.align 2
.word 0x27e0000 @ 0x223ece8
.word 0x3ff8 @ 0x223ecec



Unknown_223ecf0: @ 0x223ecf0
.incbin "./baserom/overlay/overlay_0076.bin", 0x3bb0, 0x223ee04 - 0x223ecf0


.word Function_223d674+1 @ =0x223d675, 0x223ee04
.word Function_223df94+1 @ =0x223df95, 0x223ee08
.word Function_223e8a4+1 @ =0x223e8a5, 0x223ee0c
.word Function_223e950+1 @ =0x223e951, 0x223ee10
.word Function_223e9c4+1 @ =0x223e9c5, 0x223ee14
.word Function_223eb1c+1 @ =0x223eb1d, 0x223ee18
@ 0x223ee1c


.incbin "./baserom/overlay/overlay_0076.bin", 0x3cdc, 0x223ef80 - 0x223ee1c


@end 0x223ef80




