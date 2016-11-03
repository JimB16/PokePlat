

.section .iwram111, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r7, r1
	bl      Function_21d1d30
	mov     r2, #0x12
	mov     r0, #0x3
	mov     r1, #0x73
	lsl     r2, r2, #14
	bl      0x2017fc8
	ldr     r1, [pc, #0x94] @ 0x21d0e2c, (=0x9a04)
	mov     r0, r5
	mov     r2, #0x73
	bl      0x200681c
	ldr     r2, [pc, #0x88] @ 0x21d0e2c, (=0x9a04)
	mov     r1, #0x0
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x73
	bl      0x2018340
	str     r0, [r4, #0x58]
	mov     r0, r5
	str     r5, [r4, #0x0]
	bl      0x2006840
	mov     r5, r0
	mov     r1, #0x5a
	mov     r2, r5
	ldr     r0, [r5, #0x0]
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldrb    r0, [r5, #0x4]
	add     r2, #0x14
	strb    r0, [r4, #0x9]
	mov     r0, #0xdd
	lsl     r0, r0, #2
	str     r2, [r4, r0]
	ldr     r0, [r4, r1]
	bl      0x2025e44
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r1, r5
	mov     r0, #0xde
	add     r1, #0x8
	lsl     r0, r0, #2
	str     r1, [r4, r0]
	add     r5, #0xe
	.hword  0x1d00 @ add r0, r0, #0x4
	str     r5, [r4, r0]
	mov     r0, r4
	bl      Function_21d27bc
	mov     r1, #0x0
	mov     r3, #0xde
	lsl     r3, r3, #2
	mov     r2, r1
	mov     r0, r1
	add     r5, r3, #0x4
.thumb
branch_21d0e00: @ 21d0e00 :thumb
	ldr     r6, [r4, r3]
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r6, r2]
	ldr     r6, [r4, r5]
	strh    r0, [r6, r2]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x3
	blt     branch_21d0e00
	ldr     r1, [pc, #0x1c] @ 0x21d0e30, (=0x3a5)
	strb    r0, [r4, r1]
	mov     r0, r4
	bl      Function_21d1d68
	mov     r1, #0x0
	mov     r0, #0x44
	mov     r2, r1
	str     r1, [r7, #0x0]
	bl      0x2004550
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d0e2a


.align 2


.word 0x9a04 @ 0x21d0e2c
.word 0x3a5 @ 0x21d0e30
.thumb
Function_21d0e34: @ 21d0e34 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	cmp     r1, #0x7
	bhi     branch_21d0f32
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e50

Jumppoints_21d0e50:
.hword branch_21d0e60 - Jumppoints_21d0e50 - 2
.hword branch_21d0e74 - Jumppoints_21d0e50 - 2
.hword branch_21d0e88 - Jumppoints_21d0e50 - 2
.hword branch_21d0e9c - Jumppoints_21d0e50 - 2
.hword branch_21d0ed8 - Jumppoints_21d0e50 - 2
.hword branch_21d0eec - Jumppoints_21d0e50 - 2
.hword branch_21d0f12 - Jumppoints_21d0e50 - 2
.hword branch_21d0f26 - Jumppoints_21d0e50 - 2
.thumb
branch_21d0e60: @ 21d0e60 :thumb
	bl      Function_21d0f7c
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0e74

.thumb
branch_21d0e74: @ 21d0e74 :thumb
	bl      Function_21d0fc8
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x2
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0e88

.thumb
branch_21d0e88: @ 21d0e88 :thumb
	bl      Function_21d10b8
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x3
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0e9c

.thumb
branch_21d0e9c: @ 21d0e9c :thumb
	bl      Function_21d116c
	cmp     r0, #0x1
	bne     branch_21d0f32
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x3
	bcc     branch_21d0ecc
	mov     r0, #0x0
	strb    r0, [r4, #0xe]
	mov     r0, r4
	bl      Function_21d1bec
	mov     r0, r4
	bl      Function_21d1af4
	mov     r0, r4
	bl      Function_21d1b44
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0ecc

.thumb
branch_21d0ecc: @ 21d0ecc :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x1
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0ed8

.thumb
branch_21d0ed8: @ 21d0ed8 :thumb
	bl      Function_21d1284
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x5
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0eec

.thumb
branch_21d0eec: @ 21d0eec :thumb
	bl      Function_21d1508
	cmp     r0, #0x1
	bne     branch_21d0f32
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x3
	bcc     branch_21d0f06
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x7
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0f06

.thumb
branch_21d0f06: @ 21d0f06 :thumb
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x6
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0f12

.thumb
branch_21d0f12: @ 21d0f12 :thumb
	bl      Function_21d1980
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x4
	bl      Function_21d26e4
	b       branch_21d0f32
@ 0x21d0f26

.thumb
branch_21d0f26: @ 21d0f26 :thumb
	bl      Function_21d1a88
	cmp     r0, #0x1
	bne     branch_21d0f32
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f32

.thumb
branch_21d0f32: @ 21d0f32 :thumb
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20219f8
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f40

.thumb
Function_21d0f40: @ 21d0f40 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	bl      0x201e530
	mov     r0, #0xdd
	lsl     r0, r0, #2
	ldrb    r1, [r4, #0xc]
	ldr     r0, [r4, r0]
	strh    r1, [r0, #0x0]
	bl      0x201dc3c
	mov     r0, r4
	bl      Function_21d1c0c
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x73
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0f7a


.align 2, 0


.thumb
Function_21d0f7c: @ 21d0f7c :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d0f8e
	cmp     r0, #0x1
	beq     branch_21d0fae
	b       branch_21d0fc0
@ 0x21d0f8e

.thumb
branch_21d0f8e: @ 21d0f8e :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d0fc0
@ 0x21d0fae

.thumb
branch_21d0fae: @ 21d0fae :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d0fc0
	mov     r0, #0x0
	strb    r0, [r4, #0xe]
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d0fc0

.thumb
branch_21d0fc0: @ 21d0fc0 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d0fc6


.align 2, 0


.thumb
Function_21d0fc8: @ 21d0fc8 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0x8]
	cmp     r0, #0x0
	beq     branch_21d0fdc
	cmp     r0, #0x1
	beq     branch_21d104c
	cmp     r0, #0x2
	beq     branch_21d109e
	b       branch_21d10a6
@ 0x21d0fdc

.thumb
branch_21d0fdc: @ 21d0fdc :thumb
	mov     r0, #0xff
	mvn     r0, r0
	ldr     r4, [pc, #0xc8] @ 0x21d10ac, (=0x21d362c)
	strh    r0, [r6, #0x10]
	mov     r7, #0x0
	mov     r5, r6
.thumb
branch_21d0fe8: @ 21d0fe8 :thumb
	mov     r1, #0x10
	mov     r2, #0x0
	ldsh    r1, [r6, r1]
	ldsh    r2, [r4, r2]
	mov     r0, #0xcb
	lsl     r0, r0, #2
	add     r1, r1, r2
	mov     r2, #0x2
	ldsh    r2, [r4, r2]
	ldr     r0, [r5, r0]
	bl      Function_21d3474
	mov     r0, #0xcb
	lsl     r0, r0, #2
	mov     r1, r7
	ldr     r0, [r5, r0]
	add     r1, #0x14
	bl      Function_21d3468
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_21d0fe8
	mov     r0, #0x59
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x2027b50
	mov     r1, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_21d35c0
	mov     r0, r6
	bl      Function_21d24d4
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x3
	strh    r0, [r6, #0x12]
	ldr     r0, [pc, #0x6c] @ 0x21d10b0, (=0x54f)
	bl      0x2005748
	mov     r0, #0x1
	strb    r0, [r6, #0x8]
	b       branch_21d10a6
@ 0x21d104c

.thumb
branch_21d104c: @ 21d104c :thumb
	mov     r1, #0x10
	ldsh    r0, [r6, r1]
	add     r0, #0x20
	strh    r0, [r6, #0x10]
	mov     r0, #0x12
	ldsh    r0, [r6, r0]
	lsl     r2, r0, #2
	mov     r0, #0xcb
	add     r3, r6, r2
	lsl     r0, r0, #2
	ldr     r0, [r3, r0]
	ldsh    r3, [r6, r1]
	ldr     r1, [pc, #0x44] @ 0x21d10ac, (=0x21d362c)
	ldsh    r1, [r1, r2]
	add     r1, r3, r1
	ldr     r3, [pc, #0x48] @ 0x21d10b4, (=0x21d362e)
	ldsh    r2, [r3, r2]
	bl      Function_21d3474
	mov     r0, #0x10
	ldsh    r0, [r6, r0]
	cmp     r0, #0x0
	blt     branch_21d10a6
	mov     r0, #0x12
	ldsh    r0, [r6, r0]
	cmp     r0, #0x0
	bne     branch_21d1088
	mov     r0, #0x2
	strb    r0, [r6, #0x8]
	b       branch_21d10a6
@ 0x21d1088

.thumb
branch_21d1088: @ 21d1088 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d10b0, (=0x54f)
	bl      0x2005748
	mov     r0, #0x12
	ldsh    r0, [r6, r0]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strh    r0, [r6, #0x12]
	mov     r0, #0xff
	mvn     r0, r0
	strh    r0, [r6, #0x10]
	b       branch_21d10a6
@ 0x21d109e

.thumb
branch_21d109e: @ 21d109e :thumb
	mov     r0, #0x0
	strh    r0, [r6, #0x10]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d10a6

.thumb
branch_21d10a6: @ 21d10a6 :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d10aa


.align 2


.word 0x21d362c @ 0x21d10ac
.word 0x54f @ 0x21d10b0
.word 0x21d362e @ 0x21d10b4
.thumb
Function_21d10b8: @ 21d10b8 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d10ce
	cmp     r0, #0x1
	beq     branch_21d10e0
	cmp     r0, #0x2
	beq     branch_21d1158
	b       branch_21d115e
@ 0x21d10ce

.thumb
branch_21d10ce: @ 21d10ce :thumb
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x1e
	strb    r0, [r5, #0xf]
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_21d115e
@ 0x21d10e0

.thumb
branch_21d10e0: @ 21d10e0 :thumb
	ldrb    r0, [r5, #0xf]
	cmp     r0, #0x0
	bne     branch_21d10fc
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	b       branch_21d1100
@ 0x21d10fc

.thumb
branch_21d10fc: @ 21d10fc :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0xf]
.thumb
branch_21d1100: @ 21d1100 :thumb
	ldr     r0, [pc, #0x60] @ 0x21d1164, (=0x21d364c)
	bl      0x2022644
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d115e
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	ldr     r0, [pc, #0x40] @ 0x21d1168, (=0x5e4)
	bl      0x2005748
	ldrb    r0, [r5, #0xe]
	add     r1, sp, #0x0
	add     r0, r5, r0
	strb    r4, [r0, #0x15]
	ldrb    r0, [r5, #0xe]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0xe]
	add     r0, sp, #0x4
	bl      0x20227a4
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x2
	strb    r0, [r5, #0x8]
	b       branch_21d115e
@ 0x21d1158

.thumb
branch_21d1158: @ 21d1158 :thumb
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d115e

.thumb
branch_21d115e: @ 21d115e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1164

.word 0x21d364c @ 0x21d1164
.word 0x5e4 @ 0x21d1168
.thumb
Function_21d116c: @ 21d116c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldrb    r1, [r4, #0xe]
	.hword  0x1e49 @ sub r1, r1, #0x1
	add     r1, r4, r1
	ldrb    r7, [r1, #0x15]
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_21d1278
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d118c

Jumppoints_21d118c:
.hword branch_21d1194 - Jumppoints_21d118c - 2
.hword branch_21d11c0 - Jumppoints_21d118c - 2
.hword branch_21d121c - Jumppoints_21d118c - 2
.hword branch_21d126e - Jumppoints_21d118c - 2
.thumb
branch_21d1194: @ 21d1194 :thumb
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	mov     r1, #0x0
	mov     r2, #0xea
	strh    r1, [r4, #0x10]
	lsl     r2, r2, #2
	ldrb    r3, [r4, r2]
	mov     r0, #0xfe
	bic     r3, r0
	lsl     r0, r7, #2
	strb    r3, [r4, r2]
	add     r0, r4, r0
	sub     r2, #0x7c
	ldr     r0, [r0, r2]
	bl      Function_21d3468
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d1278
@ 0x21d11c0

.thumb
branch_21d11c0: @ 21d11c0 :thumb
	lsl     r1, r7, #24
	lsr     r1, r1, #24
	bl      Function_21d2868
	mov     r0, #0x1
	ldr     r2, [r4, #0x1c]
	lsl     r0, r0, #8
	add     r2, r2, r0
	str     r2, [r4, #0x1c]
	ldr     r2, [r4, #0x20]
	mov     r1, r4
	add     r2, r2, r0
	str     r2, [r4, #0x20]
	ldr     r2, [r4, #0x24]
	add     r1, #0x1c
	add     r0, r2, r0
	str     r0, [r4, #0x24]
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x10]
	lsl     r0, r7, #2
	add     r2, r4, r0
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r2, r0]
	bl      Function_21d34f4
	mov     r0, #0x6
	ldr     r1, [r4, #0x1c]
	lsl     r0, r0, #10
	cmp     r1, r0
	bne     branch_21d1278
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	ldr     r0, [pc, #0x6c] @ 0x21d1280, (=0x54f)
	bl      0x2005748
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_21d1278
@ 0x21d121c

.thumb
branch_21d121c: @ 21d121c :thumb
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	mov     r6, #0x0
	mov     r5, r4
	add     r0, #0x10
	strh    r0, [r4, #0x10]
.thumb
branch_21d1228: @ 21d1228 :thumb
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, sp, #0x4
	add     r2, sp, #0x0
	bl      Function_21d349c
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r1, [sp, #0x4]
	ldr     r0, [r5, r0]
	ldr     r2, [sp, #0x0]
	add     r1, #0x10
	bl      Function_21d3474
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x4
	blt     branch_21d1228
	mov     r0, #0x10
	ldsh    r1, [r4, r0]
	add     r0, #0xf0
	cmp     r1, r0
	blt     branch_21d1278
	lsl     r0, r7, #2
	add     r1, r4, r0
	mov     r0, #0xcb
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x0
	bl      Function_21d34e0
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_21d1278
@ 0x21d126e

.thumb
branch_21d126e: @ 21d126e :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1278

.thumb
branch_21d1278: @ 21d1278 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d127e


.align 2


.word 0x54f @ 0x21d1280
.thumb
Function_21d1284: @ 21d1284 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0x3
	bls     branch_21d1290
	b       branch_21d14ee
@ 0x21d1290

.thumb
branch_21d1290: @ 21d1290 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d129c

Jumppoints_21d129c:
.hword branch_21d12a4 - Jumppoints_21d129c - 2
.hword branch_21d1362 - Jumppoints_21d129c - 2
.hword branch_21d1450 - Jumppoints_21d129c - 2
.hword branch_21d14e4 - Jumppoints_21d129c - 2
.thumb
branch_21d12a4: @ 21d12a4 :thumb
	bl      Function_21d2eb4
	mov     r1, #0x0
	mov     r3, #0xe5
	str     r1, [sp, #0x0]
	lsl     r3, r3, #2
	ldr     r2, [r4, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	ldr     r3, [r3, #0x10]
	bl      0x201958c
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      0x2019448
	mov     r0, #0x1
	lsl     r0, r0, #8
	strh    r0, [r4, #0x12]
	mov     r3, #0x12
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2019184
	mov     r3, #0x12
	mov     r1, #0x0
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r2, r1
	bl      0x2019184
	mov     r3, #0x12
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x2019184
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0xff
	mvn     r0, r0
	strh    r0, [r4, #0x10]
	ldrb    r1, [r4, #0xe]
	mov     r0, #0x0
	mov     r2, #0x96
	add     r1, r4, r1
	strb    r0, [r1, #0x19]
	ldr     r1, [pc, #0x1d4] @ 0x21d14f4, (=0x402)
	mov     r5, r0
	lsl     r2, r2, #8
.thumb
branch_21d1324: @ 21d1324 :thumb
	add     r3, r4, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r5, [r3, r1]
	cmp     r0, r2
	blt     branch_21d1324
	ldr     r0, [pc, #0x1c8] @ 0x21d14f8, (=0x3a9)
	strb    r5, [r4, r0]
	mov     r0, r4
	bl      Function_21d27bc
	ldrb    r1, [r4, #0xe]
	mov     r0, r4
	add     r1, r4, r1
	ldrb    r1, [r1, #0x19]
	bl      Function_21d27ac
	ldrb    r1, [r4, #0xe]
	mov     r0, r4
	add     r1, r4, r1
	ldrb    r1, [r1, #0x19]
	bl      Function_21d27d4
	mov     r0, r4
	bl      Function_21d2940
	mov     r0, r4
	bl      Function_21d295c
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d14ee
@ 0x21d1362

.thumb
branch_21d1362: @ 21d1362 :thumb
	mov     r7, #0x0
	mov     r6, #0x1a
	mov     r5, r4
.thumb
branch_21d1368: @ 21d1368 :thumb
	mov     r1, #0x10
	mov     r0, #0xbe
	ldsh    r1, [r4, r1]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x3c
	mov     r2, r6
	bl      Function_21d3474
	mov     r0, #0xbe
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x2a
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_21d1368
	mov     r7, #0xd1
	mov     r6, #0x0
	mov     r5, r4
	lsl     r7, r7, #2
.thumb
branch_21d1398: @ 21d1398 :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0x1
	bl      Function_21d3500
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_21d1398
	ldr     r0, [pc, #0x150] @ 0x21d14fc, (=0x3a5)
	mov     r7, #0x0
	strb    r7, [r4, r0]
	add     r1, r0, #0x3
	ldrb    r2, [r4, r1]
	mov     r1, #0x1
	ldr     r6, [pc, #0x148] @ 0x21d1500, (=0x21d3770)
	bic     r2, r1
	add     r1, r0, #0x3
	strb    r2, [r4, r1]
	mov     r2, #0xb1
	add     r1, r0, #0x5
	strb    r2, [r4, r1]
	add     r1, r0, #0x6
	mov     r2, #0xb2
	strb    r2, [r4, r1]
	mov     r1, #0xb3
	.hword  0x1dc0 @ add r0, r0, #0x7
	strb    r1, [r4, r0]
	mov     r5, r4
.thumb
branch_21d13d0: @ 21d13d0 :thumb
	mov     r1, #0x10
	mov     r2, #0x0
	ldsh    r1, [r4, r1]
	ldsh    r2, [r6, r2]
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r1, r1, r2
	mov     r2, #0x2
	ldsh    r2, [r6, r2]
	ldr     r0, [r5, r0]
	bl      Function_21d3474
	mov     r0, #0xc2
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	mov     r1, #0x36
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r2, r4, r7
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	ldr     r0, [r5, r0]
	bl      Function_21d34c4
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x9
	blt     branch_21d13d0
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldrb    r2, [r4, #0xe]
	mov     r0, r4
	mov     r1, #0x1
	add     r2, r4, r2
	ldrb    r2, [r2, #0x15]
	mov     r3, #0x20
	.hword  0x1d12 @ add r2, r2, #0x4
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_21d28e8
	mov     r0, #0x18
	str     r0, [sp, #0x0]
	ldrb    r2, [r4, #0xe]
	mov     r0, r4
	mov     r1, #0x6
	add     r2, r4, r2
	ldrb    r2, [r2, #0x15]
	mov     r3, #0x20
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #24
	lsr     r2, r2, #24
	bl      Function_21d28e8
	ldr     r0, [pc, #0xbc] @ 0x21d1504, (=0x54f)
	bl      0x2005748
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_21d14ee
@ 0x21d1450

.thumb
branch_21d1450: @ 21d1450 :thumb
	mov     r3, #0x12
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2019184
	mov     r3, #0x12
	mov     r1, #0x0
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r2, r1
	bl      0x2019184
	mov     r3, #0x12
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x58]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x2019184
	mov     r0, #0x12
	ldsh    r0, [r4, r0]
	sub     r0, #0x10
	strh    r0, [r4, #0x12]
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	cmp     r0, #0x0
	blt     branch_21d1490
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_21d14da
@ 0x21d1490

.thumb
branch_21d1490: @ 21d1490 :thumb
	mov     r7, #0x0
	mov     r6, #0x1a
	mov     r5, r4
.thumb
branch_21d1496: @ 21d1496 :thumb
	mov     r1, #0x10
	mov     r0, #0xbe
	ldsh    r1, [r4, r1]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	add     r1, #0x3c
	mov     r2, r6
	bl      Function_21d3474
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x2a
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r7, #0x4
	blt     branch_21d1496
	ldr     r5, [pc, #0x4c] @ 0x21d1500, (=0x21d3770)
	mov     r7, #0x0
	mov     r6, r4
.thumb
branch_21d14b8: @ 21d14b8 :thumb
	mov     r1, #0x10
	mov     r2, #0x0
	ldsh    r1, [r4, r1]
	ldsh    r2, [r5, r2]
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r1, r1, r2
	mov     r2, #0x2
	ldsh    r2, [r5, r2]
	ldr     r0, [r6, r0]
	bl      Function_21d3474
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x9
	blt     branch_21d14b8
.thumb
branch_21d14da: @ 21d14da :thumb
	mov     r0, #0x10
	ldsh    r0, [r4, r0]
	add     r0, #0x10
	strh    r0, [r4, #0x10]
	b       branch_21d14ee
@ 0x21d14e4

.thumb
branch_21d14e4: @ 21d14e4 :thumb
	mov     r0, #0x0
	strh    r0, [r4, #0x10]
	strh    r0, [r4, #0x12]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d14ee

.thumb
branch_21d14ee: @ 21d14ee :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d14f2


.align 2


.word 0x402 @ 0x21d14f4
.word 0x3a9 @ 0x21d14f8
.word 0x3a5 @ 0x21d14fc
.word 0x21d3770 @ 0x21d1500
.word 0x54f @ 0x21d1504
.thumb
Function_21d1508: @ 21d1508 :thumb
	push    {r3-r7,lr}
	mov     r4, r0
	ldrb    r1, [r4, #0x8]
	cmp     r1, #0xb
	bls     branch_21d1514
	b       branch_21d197c
@ 0x21d1514

.thumb
branch_21d1514: @ 21d1514 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d1520

Jumppoints_21d1520:
.hword branch_21d1538 - Jumppoints_21d1520 - 2
.hword branch_21d15c6 - Jumppoints_21d1520 - 2
.hword branch_21d15dc - Jumppoints_21d1520 - 2
.hword branch_21d160c - Jumppoints_21d1520 - 2
.hword branch_21d17c2 - Jumppoints_21d1520 - 2
.hword branch_21d17de - Jumppoints_21d1520 - 2
.hword branch_21d17f2 - Jumppoints_21d1520 - 2
.hword branch_21d1842 - Jumppoints_21d1520 - 2
.hword branch_21d186c - Jumppoints_21d1520 - 2
.hword branch_21d189c - Jumppoints_21d1520 - 2
.hword branch_21d1906 - Jumppoints_21d1520 - 2
.hword branch_21d1970 - Jumppoints_21d1520 - 2
.thumb
branch_21d1538: @ 21d1538 :thumb
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x2
	bne     branch_21d156a
	mov     r0, #0x4b
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d263c
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x58
	mov     r2, #0xa0
	bl      Function_21d3474
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d34c4
	b       branch_21d157a
@ 0x21d156a

.thumb
branch_21d156a: @ 21d156a :thumb
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r0, r4, r0
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d2604
.thumb
branch_21d157a: @ 21d157a :thumb
	mov     r0, #0x1e
	strb    r0, [r4, #0xf]
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	mov     r0, r4
	bl      Function_21d2518
	mov     r5, #0x0
.thumb
branch_21d1592: @ 21d1592 :thumb
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_21d2674
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_21d1592
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d350c
	ldr     r0, [pc, #0x2c0] @ 0x21d187c, (=0x551)
	bl      0x2005748
	mov     r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d15c6

.thumb
branch_21d15c6: @ 21d15c6 :thumb
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, r0
	bl      0x201ff74
	mov     r0, #0x2
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d15dc

.thumb
branch_21d15dc: @ 21d15dc :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d1606
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	mov     r0, r4
	add     r0, #0xfc
	mov     r1, #0x0
	bl      0x201ada4
	mov     r0, r4
	add     r0, #0xfc
	bl      0x201a9a4
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d1606

.thumb
branch_21d1606: @ 21d1606 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_21d197c
@ 0x21d160c

.thumb
branch_21d160c: @ 21d160c :thumb
	mov     r0, #0xf
	lsl     r0, r0, #6
	add     r0, r4, r0
	mov     r1, #0x4
	mov     r2, #0x2
	bl      0x201e564
	ldr     r0, [pc, #0x264] @ 0x21d1880, (=0x21d3794)
	bl      0x2022644
	mov     r5, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r5, r0
	beq     branch_21d1718
	mov     r0, r4
	bl      Function_21d2918
	cmp     r0, #0x3
	bcs     branch_21d163e
	mov     r0, #0xe7
	mov     r2, #0x1
	add     r1, r4, r5
	lsl     r0, r0, #2
	strb    r2, [r1, r0]
.thumb
branch_21d163e: @ 21d163e :thumb
	mov     r0, #0xe7
	add     r1, r4, r5
	lsl     r0, r0, #2
	ldrb    r0, [r1, r0]
	cmp     r0, #0x1
	bne     branch_21d1672
	mov     r0, r4
	bl      Function_21d29d8
	lsl     r1, r5, #24
	mov     r0, r4
	lsr     r1, r1, #24
	bl      Function_21d2a68
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d297c
	ldr     r0, [pc, #0x220] @ 0x21d1884, (=0x54e)
	bl      0x20057d4
	cmp     r0, #0x0
	bne     branch_21d1672
	ldr     r0, [pc, #0x214] @ 0x21d1884, (=0x54e)
	bl      0x2005748
.thumb
branch_21d1672: @ 21d1672 :thumb
	mov     r0, r4
	bl      Function_21d2bbc
	cmp     r0, #0x1
	bne     branch_21d16ea
	ldr     r0, [pc, #0x204] @ 0x21d1884, (=0x54e)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	ldr     r1, [pc, #0x1f4] @ 0x21d1888, (=0x3a7)
	ldrb    r0, [r4, r1]
	lsl     r0, r0, #1
	add     r2, r4, r0
	mov     r0, r1
	sub     r0, #0x3d
	ldrh    r3, [r2, r0]
	mov     r0, r1
	sub     r0, #0x2f
	ldr     r2, [r4, r0]
	ldrb    r0, [r4, #0xe]
	lsl     r0, r0, #1
	strh    r3, [r2, r0]
	ldrb    r0, [r4, r1]
	lsl     r0, r0, #1
	add     r2, r4, r0
	mov     r0, r1
	sub     r0, #0x3d
	ldrh    r0, [r2, r0]
	cmp     r0, #0x5c
	bne     branch_21d16be
	mov     r2, #0x1
	b       branch_21d16c0
@ 0x21d16be

.thumb
branch_21d16be: @ 21d16be :thumb
	mov     r2, #0x3
.thumb
branch_21d16c0: @ 21d16c0 :thumb
	ldrb    r0, [r4, #0xe]
	sub     r1, #0x2b
	ldr     r1, [r4, r1]
	lsl     r0, r0, #1
	strh    r2, [r1, r0]
	mov     r0, r4
	bl      Function_21d2d14
	cmp     r0, #0x1
	bne     branch_21d16d8
	mov     r0, #0x1e
	b       branch_21d16da
@ 0x21d16d8

.thumb
branch_21d16d8: @ 21d16d8 :thumb
	mov     r0, #0x0
.thumb
branch_21d16da: @ 21d16da :thumb
	strb    r0, [r4, #0xf]
	mov     r0, r4
	bl      Function_21d255c
	mov     r0, #0x4
	strb    r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d16ea

.thumb
branch_21d16ea: @ 21d16ea :thumb
	ldr     r0, [pc, #0x1a0] @ 0x21d188c, (=0x3a9)
	ldrb    r0, [r4, r0]
	cmp     r0, #0x3
	bcc     branch_21d1720
	ldr     r0, [pc, #0x190] @ 0x21d1884, (=0x54e)
	mov     r1, #0x0
	bl      0x20057a4
	mov     r0, #0x3c
	strb    r0, [r4, #0xf]
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	mov     r0, r4
	bl      Function_21d25bc
	mov     r0, #0x7
	strb    r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1718

.thumb
branch_21d1718: @ 21d1718 :thumb
	ldr     r0, [pc, #0x168] @ 0x21d1884, (=0x54e)
	mov     r1, #0x0
	bl      0x20057a4
.thumb
branch_21d1720: @ 21d1720 :thumb
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldrb    r0, [r4, r0]
	lsl     r0, r0, #31
	lsr     r0, r0, #31
	cmp     r0, #0x1
	bne     branch_21d1734
	mov     r0, r4
	bl      Function_21d2b20
.thumb
branch_21d1734: @ 21d1734 :thumb
	ldrb    r0, [r4, #0xe]
	cmp     r0, #0x2
	bne     branch_21d177e
	ldr     r0, [pc, #0x154] @ 0x21d1890, (=0x21d3610)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1800
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d350c
	mov     r0, r4
	bl      Function_21d2494
	ldr     r0, [pc, #0x138] @ 0x21d1894, (=0x5e4)
	bl      0x2005748
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d34c4
	mov     r0, r4
	bl      Function_21d1f70
	mov     r0, r4
	bl      Function_21d1f84
	mov     r0, #0xa
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d177e

.thumb
branch_21d177e: @ 21d177e :thumb
	ldr     r0, [pc, #0x118] @ 0x21d1898, (=0x21d3618)
	bl      0x2022664
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1800
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d350c
	mov     r0, r4
	bl      Function_21d2494
	ldr     r0, [pc, #0xf4] @ 0x21d1894, (=0x5e4)
	bl      0x2005748
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      Function_21d34c4
	mov     r0, r4
	bl      Function_21d1f70
	mov     r0, r4
	bl      Function_21d1f84
	mov     r0, #0x9
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d17c2

.thumb
branch_21d17c2: @ 21d17c2 :thumb
	ldrb    r1, [r4, #0xf]
	cmp     r1, #0x0
	bne     branch_21d17d8
	mov     r1, #0x0
	bl      Function_21d2d60
	cmp     r0, #0x0
	bne     branch_21d1800
	mov     r0, #0x5
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d17d8

.thumb
branch_21d17d8: @ 21d17d8 :thumb
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r0, [r4, #0xf]
	b       branch_21d197c
@ 0x21d17de

.thumb
branch_21d17de: @ 21d17de :thumb
	mov     r1, #0x1
	bl      Function_21d2d60
	cmp     r0, #0x0
	bne     branch_21d1800
	mov     r0, #0x0
	strb    r0, [r4, #0xf]
	mov     r0, #0x6
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d17f2

.thumb
branch_21d17f2: @ 21d17f2 :thumb
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      Function_21d353c
	cmp     r0, #0x1
	bne     branch_21d1802
.thumb
branch_21d1800: @ 21d1800 :thumb
	b       branch_21d197c
@ 0x21d1802

.thumb
branch_21d1802: @ 21d1802 :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d183c
	mov     r7, #0x35
	mov     r6, #0x0
	mov     r5, r4
	lsl     r7, r7, #4
.thumb
branch_21d1810: @ 21d1810 :thumb
	ldr     r0, [r5, r7]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_21d1810
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	mov     r0, r4
	bl      Function_21d2e20
	mov     r0, r4
	bl      Function_21d2e28
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d183c

.thumb
branch_21d183c: @ 21d183c :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_21d197c
@ 0x21d1842

.thumb
branch_21d1842: @ 21d1842 :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d1866
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, r4
	bl      Function_21d2e20
	mov     r0, r4
	bl      Function_21d2e28
	mov     r0, #0x1e
	strb    r0, [r4, #0xf]
	mov     r0, #0x8
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d1866

.thumb
branch_21d1866: @ 21d1866 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_21d197c
@ 0x21d186c

.thumb
branch_21d186c: @ 21d186c :thumb
	ldrb    r0, [r4, #0xf]
	cmp     r0, #0x0
	bne     branch_21d1876
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1876

.thumb
branch_21d1876: @ 21d1876 :thumb
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xf]
	b       branch_21d197c
@ 0x21d187c

.word 0x551 @ 0x21d187c
.word 0x21d3794 @ 0x21d1880
.word 0x54e @ 0x21d1884
.word 0x3a7 @ 0x21d1888
.word 0x3a9 @ 0x21d188c
.word 0x21d3610 @ 0x21d1890
.word 0x5e4 @ 0x21d1894
.word 0x21d3618 @ 0x21d1898
.thumb
branch_21d189c: @ 21d189c :thumb
	mov     r0, #0xe6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20159c0
	cmp     r0, #0x1
	bne     branch_21d18d8
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d350c
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d2e20
	mov     r0, r4
	bl      Function_21d1fb4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d18d8

.thumb
branch_21d18d8: @ 21d18d8 :thumb
	cmp     r0, #0x2
	bne     branch_21d197c
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d350c
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d1fb4
	mov     r0, #0xb
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d1906

.thumb
branch_21d1906: @ 21d1906 :thumb
	mov     r0, #0xe6
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20159c0
	cmp     r0, #0x1
	bne     branch_21d1942
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d350c
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d2e18
	mov     r0, r4
	bl      Function_21d1fb4
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1942

.thumb
branch_21d1942: @ 21d1942 :thumb
	cmp     r0, #0x2
	bne     branch_21d197c
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d350c
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200dc9c
	mov     r0, r4
	add     r0, #0x5c
	bl      0x201acf4
	mov     r0, r4
	bl      Function_21d1fb4
	mov     r0, #0xb
	strb    r0, [r4, #0x8]
	b       branch_21d197c
@ 0x21d1970

.thumb
branch_21d1970: @ 21d1970 :thumb
	bl      0x202278c
	cmp     r0, #0x0
	bne     branch_21d197c
	mov     r0, #0x3
	strb    r0, [r4, #0x8]
.thumb
branch_21d197c: @ 21d197c :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1980

.thumb
Function_21d1980: @ 21d1980 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d1994
	cmp     r0, #0x1
	beq     branch_21d19c2
	cmp     r0, #0x2
	beq     branch_21d1a70
	b       branch_21d1a7a
@ 0x21d1994

.thumb
branch_21d1994: @ 21d1994 :thumb
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	mov     r0, #0x0
	strh    r0, [r5, #0x10]
	strh    r0, [r5, #0x12]
	ldr     r0, [pc, #0xc8] @ 0x21d1a80, (=0x54f)
	bl      0x2005748
	mov     r0, #0x1
	strb    r0, [r5, #0x8]
	b       branch_21d1a7a
@ 0x21d19c2

.thumb
branch_21d19c2: @ 21d19c2 :thumb
	mov     r3, #0x12
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x58]
	mov     r1, #0x6
	mov     r2, #0x0
	bl      0x2019184
	mov     r3, #0x12
	mov     r1, #0x0
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x58]
	mov     r2, r1
	bl      0x2019184
	mov     r3, #0x12
	ldsh    r3, [r5, r3]
	ldr     r0, [r5, #0x58]
	mov     r1, #0x1
	mov     r2, #0x0
	bl      0x2019184
	mov     r0, #0x12
	ldsh    r0, [r5, r0]
	sub     r0, #0x10
	strh    r0, [r5, #0x12]
	mov     r0, #0x10
	ldsh    r1, [r5, r0]
	add     r0, #0xf0
	cmp     r1, r0
	blt     branch_21d1a04
	mov     r0, #0x2
	strb    r0, [r5, #0x8]
	b       branch_21d1a66
@ 0x21d1a04

.thumb
branch_21d1a04: @ 21d1a04 :thumb
	mov     r7, #0x0
	mov     r6, #0x1a
	mov     r4, r5
.thumb
branch_21d1a0a: @ 21d1a0a :thumb
	mov     r1, #0x10
	mov     r0, #0xbe
	ldsh    r1, [r5, r1]
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	add     r1, #0x3c
	mov     r2, r6
	bl      Function_21d3474
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x2a
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x4
	blt     branch_21d1a0a
	mov     r7, #0xd1
	mov     r6, #0x0
	mov     r4, r5
	lsl     r7, r7, #2
.thumb
branch_21d1a2e: @ 21d1a2e :thumb
	ldr     r0, [r4, r7]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r6, #0x3
	blt     branch_21d1a2e
	ldr     r4, [pc, #0x44] @ 0x21d1a84, (=0x21d3770)
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_21d1a44: @ 21d1a44 :thumb
	mov     r1, #0x10
	mov     r2, #0x0
	ldsh    r1, [r5, r1]
	ldsh    r2, [r4, r2]
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r1, r1, r2
	mov     r2, #0x2
	ldsh    r2, [r4, r2]
	ldr     r0, [r6, r0]
	bl      Function_21d3474
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x9
	blt     branch_21d1a44
.thumb
branch_21d1a66: @ 21d1a66 :thumb
	mov     r0, #0x10
	ldsh    r0, [r5, r0]
	add     r0, #0x10
	strh    r0, [r5, #0x10]
	b       branch_21d1a7a
@ 0x21d1a70

.thumb
branch_21d1a70: @ 21d1a70 :thumb
	mov     r0, #0x0
	strh    r0, [r5, #0x10]
	strh    r0, [r5, #0x12]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d1a7a

.thumb
branch_21d1a7a: @ 21d1a7a :thumb
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1a7e


.align 2


.word 0x54f @ 0x21d1a80
.word 0x21d3770 @ 0x21d1a84
.thumb
Function_21d1a88: @ 21d1a88 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d1a9e
	cmp     r0, #0x1
	beq     branch_21d1aaa
	cmp     r0, #0x2
	beq     branch_21d1ae0
	b       branch_21d1aee
@ 0x21d1a9e

.thumb
branch_21d1a9e: @ 21d1a9e :thumb
	mov     r0, #0xa
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d1aee
@ 0x21d1aaa

.thumb
branch_21d1aaa: @ 21d1aaa :thumb
	ldrb    r0, [r4, #0xd]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0xd]
	ldrb    r0, [r4, #0xd]
	cmp     r0, #0x0
	bne     branch_21d1aee
	mov     r0, r4
	add     r0, #0x5c
	mov     r1, #0x0
	bl      0x200e084
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	ldrb    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x8]
	b       branch_21d1aee
@ 0x21d1ae0

.thumb
branch_21d1ae0: @ 21d1ae0 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d1aee
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d1aee

.thumb
branch_21d1aee: @ 21d1aee :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d1af4

.thumb
Function_21d1af4: @ 21d1af4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r4, [pc, #0x40] @ 0x21d1b40, (=0x21d3770)
	mov     r6, #0x0
	add     r7, r5, r0
.thumb
branch_21d1b04: @ 21d1b04 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, #0x3
	mov     r2, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xb
	str     r0, [sp, #0xc]
	ldrh    r3, [r4, #0x0]
	mov     r0, r7
	bl      Function_21d33f4
	mov     r1, #0xd1
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_21d1b04
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1b3e


.align 2


.word 0x21d3770 @ 0x21d1b40
.thumb
Function_21d1b44: @ 21d1b44 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldr     r4, [pc, #0x3c] @ 0x21d1b8c, (=0x21d3620)
	mov     r6, #0x0
	add     r7, r5, r0
.thumb
branch_21d1b54: @ 21d1b54 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, #0x1
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldrh    r3, [r4, #0x0]
	mov     r0, r7
	bl      Function_21d33f4
	mov     r1, #0x35
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, r1
	ldr     r0, [r5, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c76 @ add r6, r6, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r6, #0x3
	blt     branch_21d1b54
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1b8a


.align 2


.word 0x21d3620 @ 0x21d1b8c
.thumb
Function_21d1b90: @ 21d1b90 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r1, #0xa0
	mov     r4, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r2, #0x1
	str     r2, [sp, #0x8]
	add     r1, #0xcc
	str     r0, [sp, #0xc]
	add     r0, r4, r1
	mov     r1, #0x3
	mov     r3, #0x44
	bl      Function_21d33f4
	mov     r1, #0xcf
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      Function_21d345c
	mov     r3, #0x44
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x5b
	str     r1, [sp, #0xc]
	lsl     r0, r0, #2
	mov     r1, #0x3
	add     r0, r4, r0
	mov     r2, r1
	bl      Function_21d33f4
	mov     r1, #0xd
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      Function_21d345c
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d1bec

.thumb
Function_21d1bec: @ 21d1bec :thumb
	push    {r4-r6,lr}
	mov     r6, #0xcb
	mov     r5, r0
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d1bf6: @ 21d1bf6 :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x0
	beq     branch_21d1c00
	bl      Function_21d3448
.thumb
branch_21d1c00: @ 21d1c00 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d1bf6
	pop     {r4-r6,pc}
@ 0x21d1c0a


.align 2, 0


.thumb
Function_21d1c0c: @ 21d1c0c :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r7, #0xbe
	mov     r4, #0x0
	mov     r5, r6
	lsl     r7, r7, #2
.thumb
branch_21d1c18: @ 21d1c18 :thumb
	ldr     r0, [r5, r7]
	cmp     r0, #0x0
	beq     branch_21d1c22
	bl      Function_21d3448
.thumb
branch_21d1c22: @ 21d1c22 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x4
	blt     branch_21d1c18
	mov     r7, #0xc2
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_21d1c32: @ 21d1c32 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_21d1c3c
	bl      Function_21d3448
.thumb
branch_21d1c3c: @ 21d1c3c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x9
	blt     branch_21d1c32
	mov     r0, #0xcf
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d1c52
	bl      Function_21d3448
.thumb
branch_21d1c52: @ 21d1c52 :thumb
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d1c60
	bl      Function_21d3448
.thumb
branch_21d1c60: @ 21d1c60 :thumb
	mov     r7, #0xd1
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #2
.thumb
branch_21d1c68: @ 21d1c68 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_21d1c72
	bl      Function_21d3448
.thumb
branch_21d1c72: @ 21d1c72 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_21d1c68
	mov     r7, #0x35
	mov     r5, #0x0
	mov     r4, r6
	lsl     r7, r7, #4
.thumb
branch_21d1c82: @ 21d1c82 :thumb
	ldr     r0, [r4, r7]
	cmp     r0, #0x0
	beq     branch_21d1c8c
	bl      Function_21d3448
.thumb
branch_21d1c8c: @ 21d1c8c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r5, #0x3
	blt     branch_21d1c82
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	cmp     r0, #0x0
	beq     branch_21d1ca2
	bl      Function_21d3448
.thumb
branch_21d1ca2: @ 21d1ca2 :thumb
	mov     r0, #0x2
	bl      0x2002c60
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x2
	bl      0x2002fa0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      0x2002fa0
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x2002f54
	mov     r0, #0x57
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r6, r0]
	add     r0, #0x10
	add     r0, r6, r0
	bl      Function_21d3320
	ldr     r0, [r6, #0x34]
	bl      0x2015760
	ldr     r0, [r6, #0x38]
	bl      0x200b190
	ldr     r0, [r6, #0x3c]
	bl      0x200b3f0
	ldr     r0, [r6, #0x40]
	bl      0x20237bc
	ldr     r0, [r6, #0x44]
	bl      0x20237bc
	mov     r0, #0x16
	lsl     r0, r0, #4
	ldr     r0, [r6, r0]
	bl      0x200c560
	mov     r0, #0xe3
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x20181c4
	mov     r0, #0xe5
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x20181c4
	mov     r0, r6
	add     r0, #0x5c
	bl      Function_21d3578
	ldr     r0, [r6, #0x58]
	bl      Function_21d2044
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r6, r0]
	bl      0x2006ca8
	pop     {r3-r7,pc}
@ 0x21d1d30

.thumb
Function_21d1d30: @ 21d1d30 :thumb
	push    {r3,lr}
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20177bc
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xc] @ 0x21d1d60, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xc] @ 0x21d1d64, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	pop     {r3,pc}
@ 0x21d1d60

.word 0xffffe0ff @ 0x21d1d60
.word 0x4001000 @ 0x21d1d64
.thumb
Function_21d1d68: @ 21d1d68 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0xb8
	mov     r1, #0x73
	bl      0x2006c24
	mov     r1, #0xe
	lsl     r1, r1, #6
	str     r0, [r5, r1]
	mov     r0, r5
	bl      Function_21d1fc4
	mov     r0, r5
	bl      Function_21d2034
	mov     r2, #0x87
	mov     r0, #0x1
	mov     r1, #0x1a
	lsl     r2, r2, #2
	mov     r3, #0x73
	bl      0x200b144
	str     r0, [r5, #0x38]
	mov     r0, #0x73
	bl      0x200b358
	str     r0, [r5, #0x3c]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x73
	bl      0x2023790
	str     r0, [r5, #0x40]
	mov     r0, #0x96
	lsl     r0, r0, #2
	mov     r1, #0x73
	bl      0x2023790
	mov     r1, #0x1a
	str     r0, [r5, #0x44]
	mov     r0, #0x0
	lsl     r1, r1, #4
	mov     r2, #0x73
	bl      0x2002e7c
	mov     r1, #0x1a
	mov     r0, #0x4
	lsl     r1, r1, #4
	mov     r2, #0x73
	bl      0x2002e7c
	mov     r1, #0x6
	mov     r0, #0x0
	lsl     r1, r1, #6
	mov     r2, #0x73
	bl      0x2002e98
	mov     r1, #0x6
	mov     r0, #0x4
	lsl     r1, r1, #6
	mov     r2, #0x73
	bl      0x2002e98
	mov     r0, #0x2
	mov     r1, #0x73
	bl      0x2002bb8
	mov     r0, #0xf
	mov     r1, #0xe
	mov     r2, #0x0
	mov     r3, #0x73
	bl      0x200c440
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r1, r5
	ldr     r0, [r5, #0x58]
	add     r1, #0x5c
	bl      Function_21d3548
	mov     r0, #0x0
	mov     r1, #0x1
	mov     r2, #0xc
	mov     r3, #0x73
	bl      0x201567c
	str     r0, [r5, #0x34]
	mov     r0, r5
	bl      Function_21d2e4c
	mov     r0, r5
	bl      Function_21d2e8c
	mov     r0, r5
	bl      Function_21d2eb4
	bl      0x201ffd0
	mov     r7, #0x0
	mov     r6, #0x1a
	mov     r4, r5
.thumb
branch_21d1e36: @ 21d1e36 :thumb
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x0
	mov     r2, r7
	mov     r3, #0x3c
	bl      Function_21d33f4
	mov     r1, #0xbe
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, r1
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r6, #0x2a
	.hword  0x1d24 @ add r4, r4, #0x4
	cmp     r7, #0x4
	blt     branch_21d1e36
	ldr     r4, [pc, #0xe8] @ 0x21d1f5c, (=0x21d3770)
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_21d1e76: @ 21d1e76 :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, #0x1
	mov     r2, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldrh    r3, [r4, #0x0]
	add     r0, r5, r0
	bl      Function_21d33f4
	mov     r1, #0xc2
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, r1
	ldr     r0, [r6, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x9
	blt     branch_21d1e76
	mov     r0, r5
	bl      Function_21d1b90
	ldr     r4, [pc, #0xa8] @ 0x21d1f60, (=0x21d362c)
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_21d1ebc: @ 21d1ebc :thumb
	ldrh    r0, [r4, #0x2]
	mov     r1, #0x2
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	ldrh    r3, [r4, #0x0]
	add     r0, r5, r0
	bl      Function_21d33f4
	mov     r1, #0xcb
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	mov     r0, r1
	mov     r1, #0x0
	ldsh    r2, [r4, r1]
	mov     r1, #0x1
	lsl     r1, r1, #8
	sub     r1, r2, r1
	mov     r2, #0x2
	ldsh    r2, [r4, r2]
	ldr     r0, [r6, r0]
	bl      Function_21d3474
	mov     r0, #0xcb
	lsl     r0, r0, #2
	mov     r1, r7
	ldr     r0, [r6, r0]
	add     r1, #0x14
	bl      Function_21d3468
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1d24 @ add r4, r4, #0x4
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_21d1ebc
	mov     r0, #0x38
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0xa
	str     r0, [sp, #0xc]
	mov     r0, #0x5b
	lsl     r0, r0, #2
	add     r0, r5, r0
	mov     r1, #0x4
	mov     r3, #0x26
	bl      Function_21d33f4
	mov     r1, #0xd7
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	ldr     r0, [r5, r1]
	mov     r1, #0x0
	bl      Function_21d345c
	ldr     r2, [pc, #0x28] @ 0x21d1f64, (=0x4000304)
	ldr     r0, [pc, #0x28] @ 0x21d1f68, (=0xffff7fff)
	ldrh    r1, [r2, #0x0]
	and     r0, r1
	strh    r0, [r2, #0x0]
	bl      0x201e3d8
	mov     r0, #0x1
	bl      0x201e450
	ldr     r0, [pc, #0x1c] @ 0x21d1f6c, (=0x21d2091)
	mov     r1, r5
	bl      0x2017798
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1f5a


.align 2


.word 0x21d3770 @ 0x21d1f5c
.word 0x21d362c @ 0x21d1f60
.word 0x4000304 @ 0x21d1f64
.word 0xffff7fff @ 0x21d1f68
.word 0x21d2091 @ 0x21d1f6c
.thumb
Function_21d1f70: @ 21d1f70 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x73
	bl      0x2015920
	mov     r1, #0xe6
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d1f82


.align 2, 0


.thumb
Function_21d1f84: @ 21d1f84 :thumb
	push    {lr}
	add     sp, #-0x14
	ldr     r1, [r0, #0x58]
	mov     r3, #0xe
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	lsl     r3, r3, #6
	mov     r1, #0xa
	str     r3, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r2, #0x18
	add     r1, sp, #0x0
	strb    r2, [r1, #0x10]
	mov     r2, #0x8
	strb    r2, [r1, #0x11]
	add     r3, #0x18
	ldr     r0, [r0, r3]
	add     r1, sp, #0x0
	bl      0x2015958
	add     sp, #0x14
	pop     {pc}
@ 0x21d1fb2


.align 2, 0


.thumb
Function_21d1fb4: @ 21d1fb4 :thumb
	mov     r1, #0xe6
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21d1fc0, (=0x2015939)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d1fbe


.align 2


.word 0x2015939 @ 0x21d1fc0
.thumb
Function_21d1fc4: @ 21d1fc4 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d20cc
	ldr     r0, [r4, #0x58]
	bl      Function_21d20ec
	mov     r0, #0x73
	bl      0x2002f38
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x2
	lsl     r2, r1, #8
	mov     r3, #0x73
	bl      0x2002f70
	mov     r2, #0x57
	lsl     r2, r2, #2
	ldr     r0, [r4, r2]
	mov     r1, #0x0
	add     r2, #0xa4
	mov     r3, #0x73
	bl      0x2002f70
	mov     r0, r4
	mov     r1, #0x7
	bl      Function_21d2248
	bl      Function_21d22d0
	mov     r0, r4
	mov     r1, #0x6
	bl      Function_21d228c
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d233c
	bl      Function_21d2304
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d2380
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff74
	pop     {r4,pc}
@ 0x21d2034

.thumb
Function_21d2034: @ 21d2034 :thumb
	mov     r1, #0x5b
	lsl     r1, r1, #2
	ldr     r3, [pc, #0x4] @ 0x21d2040, (=0x21d2f81)
	add     r0, r0, r1
	bx      r3
@ 0x21d203e


.align 2


.word 0x21d2f81 @ 0x21d2040
.thumb
Function_21d2044: @ 21d2044 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x6
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
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	bl      0x20181c4
	pop     {r4,pc}
@ 0x21d2090

.thumb
Function_21d2090: @ 21d2090 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_21d20c2
	mov     r0, #0x57
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d20a8
	bl      0x2003694
.thumb
branch_21d20a8: @ 21d20a8 :thumb
	ldr     r0, [r4, #0x58]
	bl      0x201c2b8
	bl      0x201dcac
	bl      0x200a858
	ldr     r3, [pc, #0xc] @ 0x21d20c4, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d20c8, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
.thumb
branch_21d20c2: @ 21d20c2 :thumb
	pop     {r4,pc}
@ 0x21d20c4

.word 0x27e0000 @ 0x21d20c4
.word 0x3ff8 @ 0x21d20c8
.thumb
Function_21d20cc: @ 21d20cc :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d20e8, (=0x21d37bc)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d20d6: @ 21d20d6 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d20d6
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d20e8

.word 0x21d37bc @ 0x21d20e8
.thumb
Function_21d20ec: @ 21d20ec :thumb
	push    {r3-r5,lr}
	add     sp, #-0xb8
	ldr     r5, [pc, #0x138] @ 0x21d222c, (=0x21d363c)
	add     r3, sp, #0xa8
	mov     r4, r0
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x128] @ 0x21d2230, (=0x21d36b4)
	add     r3, sp, #0x8c
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
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x73
	bl      0x2019690
	mov     r0, r4
	mov     r1, #0x4
	bl      0x2019ebc
	ldr     r5, [pc, #0xf8] @ 0x21d2234, (=0x21d36ec)
	add     r3, sp, #0x70
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x7
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x7
	bl      0x2019ebc
	ldr     r5, [pc, #0xd4] @ 0x21d2238, (=0x21d3660)
	add     r3, sp, #0x54
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	mov     r1, #0x6
	str     r0, [r3, #0x0]
	mov     r0, r4
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r4
	mov     r1, #0x6
	bl      0x2019ebc
	ldr     r5, [pc, #0xb0] @ 0x21d223c, (=0x21d367c)
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
	ldr     r5, [pc, #0x8c] @ 0x21d2240, (=0x21d3698)
	add     r3, sp, #0x1c
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
	ldr     r5, [pc, #0x68] @ 0x21d2244, (=0x21d36d0)
	add     r3, sp, #0x0
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
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, #0x73
	bl      0x2019690
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019ebc
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x201ff0c
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x201ff74
	add     sp, #0xb8
	pop     {r3-r5,pc}
@ 0x21d222a


.align 2


.word 0x21d363c @ 0x21d222c
.word 0x21d36b4 @ 0x21d2230
.word 0x21d36ec @ 0x21d2234
.word 0x21d3660 @ 0x21d2238
.word 0x21d367c @ 0x21d223c
.word 0x21d3698 @ 0x21d2240
.word 0x21d36d0 @ 0x21d2244
.thumb
Function_21d2248: @ 21d2248 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r4, r1
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x23
	mov     r3, r4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x25
	mov     r3, r4
	bl      0x200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d228c

.thumb
Function_21d228c: @ 21d228c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r4, r1
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x26
	mov     r3, r4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x28
	mov     r3, r4
	bl      0x200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d22d0

.thumb
Function_21d22d0: @ 21d22d0 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0xb8
	mov     r1, #0x22
	add     r2, sp, #0x0
	mov     r3, #0x73
	bl      0x2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0xa0
	ldr     r0, [r0, #0xc]
	blx     0x20c2c54
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [r0, #0xc]
	mov     r2, #0xa0
	blx     0x20c0108
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d2302


.align 2, 0


.thumb
Function_21d2304: @ 21d2304 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r0, #0xb8
	mov     r1, #0x0
	add     r2, sp, #0x0
	mov     r3, #0x73
	bl      0x2006f88
	mov     r4, r0
	ldr     r0, [sp, #0x0]
	mov     r1, #0x12
	ldr     r0, [r0, #0xc]
	lsl     r1, r1, #4
	blx     0x20c2c54
	ldr     r0, [sp, #0x0]
	mov     r2, #0x5
	ldr     r0, [r0, #0xc]
	mov     r1, #0x0
	lsl     r2, r2, #6
	blx     0x20c00b4
	mov     r0, r4
	bl      0x20181c4
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d233a


.align 2, 0


.thumb
Function_21d233c: @ 21d233c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r4, r1
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x4
	mov     r3, r4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x6
	mov     r3, r4
	bl      0x200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d2380

.thumb
Function_21d2380: @ 21d2380 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r4, r1
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x7
	mov     r3, r4
	bl      0x20070e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	mov     r0, #0xe
	lsl     r0, r0, #6
	ldr     r0, [r5, r0]
	ldr     r2, [r5, #0x58]
	mov     r1, #0x9
	mov     r3, r4
	bl      0x200710c
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d23c4

.thumb
Function_21d23c4: @ 21d23c4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r4
	mov     r6, r2
	mov     r7, r3
	bl      0x201ada4
	ldr     r0, [r5, #0x38]
	ldr     r2, [r5, #0x44]
	mov     r1, r6
	bl      0x200b1b8
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r5, #0x40]
	ldr     r2, [r5, #0x44]
	bl      0x200c388
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	mov     r3, r7
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x3c
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x40]
	mov     r0, r4
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2424

.thumb
Function_21d2424: @ 21d2424 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	add     r1, sp, #0x38
	ldrb    r1, [r1, #0x0]
	mov     r5, r0
	mov     r0, r4
	mov     r7, r2
	mov     r6, r3
	bl      0x201ada4
	ldr     r0, [r5, #0x38]
	ldr     r2, [r5, #0x44]
	mov     r1, r7
	bl      0x200b1b8
	ldr     r0, [r5, #0x3c]
	ldr     r1, [r5, #0x40]
	ldr     r2, [r5, #0x44]
	bl      0x200c388
	add     r0, sp, #0x3c
	ldrb    r0, [r0, #0x0]
	ldr     r1, [r5, #0x40]
	mov     r2, #0x0
	bl      0x2002d7c
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r0, r0, #1
	sub     r3, r6, r0
	ldr     r0, [sp, #0x28]
	add     r2, sp, #0x18
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x2c]
	str     r0, [sp, #0x4]
	add     r0, sp, #0x38
	ldrb    r1, [r0, #0x0]
	ldrb    r0, [r2, #0x18]
	ldrb    r2, [r2, #0x1c]
	lsl     r0, r0, #24
	lsl     r2, r2, #24
	lsr     r0, r0, #8
	lsr     r2, r2, #16
	orr     r0, r2
	orr     r0, r1
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r1, sp, #0x3c
	ldrb    r1, [r1, #0x0]
	ldr     r2, [r5, #0x40]
	mov     r0, r4
	bl      0x201d78c
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2494

.thumb
Function_21d2494: @ 21d2494 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	mov     r1, r4
	ldr     r0, [r4, #0x58]
	add     r1, #0x5c
	bl      Function_21d3594
	mov     r3, #0x1
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0x5c
	mov     r2, #0x6
	bl      Function_21d23c4
	add     r4, #0x5c
	mov     r5, r0
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, r5
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d24d4

.thumb
Function_21d24d4: @ 21d24d4 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldrb    r2, [r5, #0xe]
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_21d26cc
	mov     r3, #0x1
	mov     r1, #0x53
	lsl     r1, r1, #2
	str     r3, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0xf
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0xc
	str     r3, [sp, #0x14]
	bl      Function_21d23c4
	mov     r4, r0
	mov     r0, #0x53
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d2518

.thumb
Function_21d2518: @ 21d2518 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r4, r0
	ldrb    r2, [r4, #0xe]
	mov     r1, #0x0
	.hword  0x1c52 @ add r2, r2, #0x1
	bl      Function_21d26cc
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, r4
	mov     r0, r4
	add     r1, #0xfc
	mov     r2, #0x9
	mov     r3, #0x30
	bl      Function_21d2424
	add     r4, #0xfc
	mov     r5, r0
	mov     r0, r4
	bl      0x201a9a4
	mov     r0, r5
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d255a


.align 2, 0


.thumb
Function_21d255c: @ 21d255c :thumb
	push    {r3-r7,lr}
	mov     r7, #0x35
	mov     r5, r0
	mov     r4, #0x0
	lsl     r7, r7, #4
.thumb
branch_21d2566: @ 21d2566 :thumb
	ldr     r1, [pc, #0x50] @ 0x21d25b8, (=0x3aa)
	add     r2, r5, r4
	ldrb    r1, [r2, r1]
	lsl     r0, r4, #2
	add     r6, r5, r0
	add     r2, r5, r1
	mov     r1, #0x36
	mov     r0, #0x35
	lsl     r1, r1, #4
	lsl     r0, r0, #4
	ldrb    r1, [r2, r1]
	ldr     r0, [r6, r0]
	bl      Function_21d34c4
	ldr     r0, [r6, r7]
	mov     r1, #0x1
	bl      Function_21d345c
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x3
	bcc     branch_21d2566
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	mov     r0, #0xd7
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d350c
	mov     r0, #0x55
	lsl     r0, r0, #4
	bl      0x2005748
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d25b8

.word 0x3aa @ 0x21d25b8
.thumb
Function_21d25bc: @ 21d25bc :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r5, r0
	ldr     r0, [pc, #0x3c] @ 0x21d2600, (=0x5f3)
	bl      0x2005748
	mov     r0, #0x5
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	str     r1, [sp, #0x14]
	mov     r1, #0x47
	lsl     r1, r1, #2
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0xb
	mov     r3, #0x30
	bl      Function_21d2424
	mov     r4, r0
	mov     r0, #0x47
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d25fe


.align 2


.word 0x5f3 @ 0x21d2600
.thumb
Function_21d2604: @ 21d2604 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r1, #0x2
	str     r1, [sp, #0x14]
	mov     r1, #0x4b
	mov     r5, r0
	lsl     r1, r1, #2
	add     r1, r5, r1
	mov     r2, #0x4
	mov     r3, #0x30
	bl      Function_21d2424
	mov     r4, r0
	mov     r0, #0x4b
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d263c

.thumb
Function_21d263c: @ 21d263c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x18
	mov     r2, #0x1
	str     r2, [sp, #0x0]
	mov     r1, #0x0
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r1, [sp, #0x10]
	mov     r1, #0x2
	str     r1, [sp, #0x14]
	mov     r1, #0x4f
	mov     r5, r0
	lsl     r1, r1, #2
	add     r1, r5, r1
	mov     r2, #0x5
	mov     r3, #0x18
	bl      Function_21d2424
	mov     r4, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	add     r0, r5, r0
	bl      0x201a9a4
	mov     r0, r4
	add     sp, #0x18
	pop     {r3-r5,pc}
@ 0x21d2674

.thumb
Function_21d2674: @ 21d2674 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	mov     r7, r1
	mov     r6, r0
	lsl     r2, r7, #1
	add     r3, r6, r2
	ldr     r2, [pc, #0x40] @ 0x21d26c4, (=0x36a)
	ldr     r0, [r6, #0x3c]
	ldrh    r2, [r3, r2]
	mov     r1, #0x0
	bl      0x200b70c
	add     r0, r7, #0x2
	lsl     r4, r0, #4
	ldr     r0, [pc, #0x34] @ 0x21d26c8, (=0x21d3814)
	mov     r5, r6
	ldrb    r0, [r0, r7]
	mov     r1, #0x0
	mov     r2, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	str     r1, [sp, #0x10]
	add     r5, #0x5c
	str     r1, [sp, #0x14]
	mov     r0, r6
	add     r1, r5, r4
	mov     r3, #0x2c
	bl      Function_21d2424
	mov     r6, r0
	add     r0, r5, r4
	bl      0x201a9a4
	mov     r0, r6
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d26c2


.align 2


.word 0x36a @ 0x21d26c4
.word 0x21d3814 @ 0x21d26c8
.thumb
Function_21d26cc: @ 21d26cc :thumb
	push    {r3,lr}
	add     sp, #-0x8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r3, #0x1
	str     r3, [sp, #0x4]
	ldr     r0, [r0, #0x3c]
	bl      0x200b60c
	add     sp, #0x8
	pop     {r3,pc}
@ 0x21d26e2


.align 2, 0


.thumb
Function_21d26e4: @ 21d26e4 :thumb
	mov     r3, #0x0
	strb    r3, [r0, #0x8]
	str     r2, [r1, #0x0]
	bx      lr
@ 0x21d26ec

.thumb
Function_21d26ec: @ 21d26ec :thumb
	push    {r3-r7,lr}
	mov     r7, #0x36
	mov     r5, r0
	mov     r4, #0x0
	mov     r6, #0x4
	lsl     r7, r7, #4
.thumb
branch_21d26f8: @ 21d26f8 :thumb
	bl      PRNG
	mov     r1, #0x9
	blx     _s32_div_f
	lsl     r0, r1, #24
	lsr     r0, r0, #24
	add     r1, r5, r0
	ldrb    r0, [r1, r7]
	cmp     r0, #0xb0
	bne     branch_21d26f8
	mov     r0, #0x36
	lsl     r0, r0, #4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r6, [r1, r0]
	cmp     r4, #0x2
	blt     branch_21d26f8
	pop     {r3-r7,pc}
@ 0x21d271c

.thumb
Function_21d271c: @ 21d271c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	bl      PRNG
	mov     r7, #0x0
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	mov     r4, r7
.thumb
branch_21d2738: @ 21d2738 :thumb
	bl      PRNG
	mov     r1, #0x9
	blx     _s32_div_f
	mov     r0, #0x36
	add     r2, r5, r1
	lsl     r0, r0, #4
	ldrb    r1, [r2, r0]
	cmp     r1, #0xb0
	bne     branch_21d276c
	mov     r7, #0x0
	strb    r6, [r2, r0]
	cmp     r4, #0x2
	beq     branch_21d275e
	cmp     r4, #0x4
	beq     branch_21d275e
	cmp     r4, #0x6
	bne     branch_21d27a4
.thumb
branch_21d275e: @ 21d275e :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x4
	bne     branch_21d27a4
	mov     r6, #0x0
	b       branch_21d27a4
@ 0x21d276c

.thumb
branch_21d276c: @ 21d276c :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x1e
	blt     branch_21d2738
	mov     r7, #0x0
	mov     r3, r7
.thumb
branch_21d2776: @ 21d2776 :thumb
	add     r2, r5, r3
	ldrb    r1, [r2, r0]
	cmp     r1, #0xb0
	bne     branch_21d279e
	mov     r0, #0x36
	lsl     r0, r0, #4
	strb    r6, [r2, r0]
	cmp     r4, #0x2
	beq     branch_21d2790
	cmp     r4, #0x4
	beq     branch_21d2790
	cmp     r4, #0x6
	bne     branch_21d27a4
.thumb
branch_21d2790: @ 21d2790 :thumb
	add     r0, r6, #0x1
	lsl     r0, r0, #24
	lsr     r6, r0, #24
	cmp     r6, #0x4
	bne     branch_21d27a4
	mov     r6, #0x0
	b       branch_21d27a4
@ 0x21d279e

.thumb
branch_21d279e: @ 21d279e :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	cmp     r3, #0x9
	blt     branch_21d2776
.thumb
branch_21d27a4: @ 21d27a4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x9
	blt     branch_21d2738
	pop     {r3-r7,pc}
@ 0x21d27ac

.thumb
Function_21d27ac: @ 21d27ac :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d26ec
	mov     r0, r4
	bl      Function_21d271c
	pop     {r4,pc}
@ 0x21d27bc

.thumb
Function_21d27bc: @ 21d27bc :thumb
	push    {r3,r4}
	mov     r1, #0x36
	mov     r4, #0x0
	mov     r3, #0xb0
	lsl     r1, r1, #4
.thumb
branch_21d27c6: @ 21d27c6 :thumb
	add     r2, r0, r4
	.hword  0x1c64 @ add r4, r4, #0x1
	strb    r3, [r2, r1]
	cmp     r4, #0x9
	blt     branch_21d27c6
	pop     {r3,r4}
	bx      lr
@ 0x21d27d4

.thumb
Function_21d27d4: @ 21d27d4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r2, sp, #0x8
	mov     r0, #0xff
.thumb
branch_21d27e0: @ 21d27e0 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	strh    r0, [r2, #0x0]
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, #0x4
	blt     branch_21d27e0
	bl      PRNG
	lsr     r2, r0, #31
	lsl     r1, r0, #30
	add     r4, sp, #0x8
	sub     r1, r1, r2
	mov     r0, #0x1e
	ror     r1, r0
	add     r0, r2, r1
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x4]
	mov     r5, #0x0
	mov     r6, r4
	mov     r7, #0x17
.thumb
branch_21d2808: @ 21d2808 :thumb
	ldr     r0, [sp, #0x4]
	cmp     r5, r0
	bne     branch_21d2818
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d2860, (=0x36a)
	mov     r2, #0x5c
	strh    r2, [r1, r0]
	b       branch_21d284e
@ 0x21d2818

.thumb
branch_21d2818: @ 21d2818 :thumb
	bl      PRNG
	mov     r1, r7
	blx     _u32_div_f
	strh    r1, [r4, #0x0]
	mov     r1, #0x0
	cmp     r5, #0x0
	ble     branch_21d283c
	ldrh    r3, [r4, #0x0]
	mov     r2, r6
.thumb
branch_21d282e: @ 21d282e :thumb
	ldrh    r0, [r2, #0x0]
	cmp     r0, r3
	beq     branch_21d283c
	.hword  0x1c49 @ add r1, r1, #0x1
	.hword  0x1c92 @ add r2, r2, #0x2
	cmp     r1, r5
	blt     branch_21d282e
.thumb
branch_21d283c: @ 21d283c :thumb
	cmp     r1, r5
	bne     branch_21d2818
	ldrh    r0, [r4, #0x0]
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x1c] @ 0x21d2864, (=0x21d37e4)
	ldrh    r2, [r0, r1]
	ldr     r1, [sp, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d2860, (=0x36a)
	strh    r2, [r1, r0]
.thumb
branch_21d284e: @ 21d284e :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	.hword  0x1c80 @ add r0, r0, #0x2
	.hword  0x1ca4 @ add r4, r4, #0x2
	str     r0, [sp, #0x0]
	cmp     r5, #0x4
	blt     branch_21d2808
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2860

.word 0x36a @ 0x21d2860
.word 0x21d37e4 @ 0x21d2864
.thumb
Function_21d2868: @ 21d2868 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0xea
	lsl     r0, r0, #2
	mov     r4, r1
	ldrb    r1, [r5, r0]
	lsl     r1, r1, #24
	lsr     r1, r1, #25
	cmp     r1, #0x8
	bcc     branch_21d2884
	add     sp, #0x10
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2884

.thumb
branch_21d2884: @ 21d2884 :thumb
	sub     r0, #0x7c
	add     r0, r5, r0
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x0]
	lsl     r0, r4, #2
	str     r0, [sp, #0x4]
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	add     r2, sp, #0x8
	bl      Function_21d349c
	mov     r0, #0xea
	lsl     r0, r0, #2
	ldrb    r0, [r5, r0]
	lsl     r2, r4, #3
	ldr     r4, [pc, #0x3c] @ 0x21d28e0, (=0x21d3818)
	lsl     r1, r0, #24
	lsr     r6, r1, #25
	ldsb    r7, [r4, r6]
	mov     r4, #0xfe
	bic     r0, r4
	add     r4, r6, #0x1
	lsl     r4, r4, #24
	lsr     r4, r4, #24
	ldr     r1, [pc, #0x2c] @ 0x21d28e4, (=0x21d3708)
	lsl     r4, r4, #25
	add     r1, r1, r2
	lsr     r4, r4, #24
	ldr     r2, [sp, #0x8]
	orr     r4, r0
	mov     r0, #0xea
	ldr     r3, [sp, #0xc]
	lsl     r0, r0, #2
	strb    r4, [r5, r0]
	ldsb    r1, [r6, r1]
	ldr     r4, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	add     r1, r3, r1
	ldr     r0, [r4, r0]
	add     r2, r2, r7
	bl      Function_21d3474
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d28de


.align 2


.word 0x21d3818 @ 0x21d28e0
.word 0x21d3708 @ 0x21d28e4
.thumb
Function_21d28e8: @ 21d28e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	str     r3, [sp, #0x0]
	add     r0, sp, #0x8
	ldrb    r0, [r0, #0x10]
	mov     r4, r1
	lsl     r1, r4, #24
	str     r0, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x58]
	lsr     r1, r1, #24
	mov     r3, r2
	bl      0x2019e2c
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x58]
	lsr     r1, r1, #24
	bl      0x201c3c0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d2916


.align 2, 0


.thumb
Function_21d2918: @ 21d2918 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	mov     r2, #0xe7
	mov     r3, r4
	lsl     r2, r2, #2
.thumb
branch_21d2922: @ 21d2922 :thumb
	add     r1, r0, r3
	ldrb    r1, [r1, r2]
	cmp     r1, #0x1
	bne     branch_21d2930
	add     r1, r4, #0x1
	lsl     r1, r1, #24
	lsr     r4, r1, #24
.thumb
branch_21d2930: @ 21d2930 :thumb
	add     r1, r3, #0x1
	lsl     r1, r1, #24
	lsr     r3, r1, #24
	cmp     r3, #0x9
	bcc     branch_21d2922
	mov     r0, r4
	pop     {r3,r4}
	bx      lr
@ 0x21d2940

.thumb
Function_21d2940: @ 21d2940 :thumb
	push    {r3,r4}
	mov     r4, #0x0
	mov     r1, #0xe7
	mov     r3, r4
	lsl     r1, r1, #2
.thumb
branch_21d294a: @ 21d294a :thumb
	add     r2, r0, r4
	strb    r3, [r2, r1]
	add     r2, r4, #0x1
	lsl     r2, r2, #24
	lsr     r4, r2, #24
	cmp     r4, #0x9
	bcc     branch_21d294a
	pop     {r3,r4}
	bx      lr
@ 0x21d295c

.thumb
Function_21d295c: @ 21d295c :thumb
	push    {r3,r4}
	mov     r4, #0x0
	ldr     r1, [pc, #0x14] @ 0x21d2978, (=0x3ad)
	mov     r3, r4
.thumb
branch_21d2964: @ 21d2964 :thumb
	add     r2, r0, r4
	strb    r3, [r2, r1]
	add     r2, r4, #0x1
	lsl     r2, r2, #24
	lsr     r4, r2, #24
	cmp     r4, #0x9
	bcc     branch_21d2964
	pop     {r3,r4}
	bx      lr
@ 0x21d2976


.align 2


.word 0x3ad @ 0x21d2978
.thumb
Function_21d297c: @ 21d297c :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0xf
	lsl     r0, r0, #6
	ldrh    r0, [r7, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d29cc
	ldr     r2, [pc, #0x40] @ 0x21d29d0, (=0x21d3728)
	lsl     r0, r1, #2
	add     r5, r2, r0
	ldrb    r0, [r5, #0x2]
	mov     r4, r7
	str     r0, [sp, #0x0]
.thumb
branch_21d2998: @ 21d2998 :thumb
	ldr     r0, [pc, #0x38] @ 0x21d29d4, (=0x3c2)
	ldrh    r1, [r4, r0]
	.hword  0x1c80 @ add r0, r0, #0x2
	ldrh    r2, [r4, r0]
	ldr     r0, [sp, #0x0]
	cmp     r0, r1
	bgt     branch_21d29be
	ldrb    r0, [r5, #0x3]
	cmp     r1, r0
	bgt     branch_21d29be
	ldrb    r0, [r5, #0x0]
	cmp     r0, r2
	bgt     branch_21d29be
	ldrb    r0, [r5, #0x1]
	cmp     r2, r0
	bgt     branch_21d29be
	mov     r0, r7
	bl      Function_21d2ecc
.thumb
branch_21d29be: @ 21d29be :thumb
	mov     r0, #0xf
	lsl     r0, r0, #6
	ldrh    r0, [r7, r0]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_21d2998
.thumb
branch_21d29cc: @ 21d29cc :thumb
	pop     {r3-r7,pc}
@ 0x21d29ce


.align 2


.word 0x21d3728 @ 0x21d29d0
.word 0x3c2 @ 0x21d29d4
.thumb
Function_21d29d8: @ 21d29d8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0xf
	lsl     r0, r0, #6
	ldrh    r0, [r5, r0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d2a10
	mov     r7, #0xf
	mov     r4, r5
	lsl     r7, r7, #6
.thumb
branch_21d29ee: @ 21d29ee :thumb
	ldr     r1, [pc, #0x24] @ 0x21d2a14, (=0x3c2)
	mov     r2, #0xf1
	lsl     r2, r2, #2
	ldrh    r1, [r4, r1]
	ldrh    r2, [r4, r2]
	mov     r0, r5
	lsl     r1, r1, #24
	lsl     r2, r2, #24
	lsr     r1, r1, #24
	lsr     r2, r2, #24
	bl      Function_21d2a18
	ldrh    r0, [r5, r7]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r4, #0x8
	cmp     r6, r0
	blt     branch_21d29ee
.thumb
branch_21d2a10: @ 21d2a10 :thumb
	pop     {r3-r7,pc}
@ 0x21d2a12


.align 2


.word 0x3c2 @ 0x21d2a14
.thumb
Function_21d2a18: @ 21d2a18 :thumb
	push    {r3-r7,lr}
	mov     r3, r1
	mov     r7, #0x2
	mvn     r7, r7
	add     r0, r0, r3
	ldr     r6, [pc, #0x40] @ 0x21d2a64, (=0x402)
	str     r2, [sp, #0x0]
	mov     lr, r0
	mov     r5, #0x1
	mov     r12, r7
.thumb
branch_21d2a2c: @ 21d2a2c :thumb
	ldr     r1, [sp, #0x0]
	mov     r2, #0xf0
	add     r1, r1, r7
	mov     r4, r1
	mul     r4, r2
	mov     r2, lr
	add     r2, r2, r4
	mov     r0, r12
	.hword  0x1ed4 @ sub r4, r2, #0x3
.thumb
branch_21d2a3e: @ 21d2a3e :thumb
	add     r2, r3, r0
	cmp     r2, #0x0
	ble     branch_21d2a52
	cmp     r2, #0xf0
	bge     branch_21d2a52
	cmp     r1, #0x0
	ble     branch_21d2a52
	cmp     r1, #0xa0
	bge     branch_21d2a52
	strb    r5, [r4, r6]
.thumb
branch_21d2a52: @ 21d2a52 :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r0, #0x3
	blt     branch_21d2a3e
	.hword  0x1c7f @ add r7, r7, #0x1
	cmp     r7, #0x3
	blt     branch_21d2a2c
	pop     {r3-r7,pc}
@ 0x21d2a62


.align 2


.word 0x402 @ 0x21d2a64
.thumb
Function_21d2a68: @ 21d2a68 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	mov     r4, #0x0
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x90] @ 0x21d2b08, (=0x21d374c)
	ldsh    r7, [r0, r1]
	ldr     r0, [pc, #0x90] @ 0x21d2b0c, (=0x21d374e)
	ldsh    r0, [r0, r1]
	str     r0, [sp, #0x8]
	add     r0, #0x14
	ldr     r1, [sp, #0x8]
	mov     r12, r0
	cmp     r1, r0
	bge     branch_21d2ac2
	ldr     r0, [sp, #0x8]
	mov     r2, r7
	mov     r6, r0
	mov     r1, #0xf0
	ldr     r0, [pc, #0x7c] @ 0x21d2b10, (=0x402)
	mul     r6, r1
	add     r2, #0x19
.thumb
branch_21d2a98: @ 21d2a98 :thumb
	mov     r3, r7
	cmp     r7, r2
	bge     branch_21d2ab4
	ldr     r1, [sp, #0x0]
	add     r1, r1, r6
	add     r5, r1, r7
.thumb
branch_21d2aa4: @ 21d2aa4 :thumb
	ldrb    r1, [r5, r0]
	cmp     r1, #0x1
	bne     branch_21d2aac
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_21d2aac: @ 21d2aac :thumb
	.hword  0x1c5b @ add r3, r3, #0x1
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r3, r2
	blt     branch_21d2aa4
.thumb
branch_21d2ab4: @ 21d2ab4 :thumb
	ldr     r1, [sp, #0x8]
	add     r6, #0xf0
	add     r3, r1, #0x1
	mov     r1, r12
	str     r3, [sp, #0x8]
	cmp     r3, r1
	blt     branch_21d2a98
.thumb
branch_21d2ac2: @ 21d2ac2 :thumb
	mov     r0, #0x5f
	lsl     r0, r0, #2
	cmp     r4, r0
	blt     branch_21d2b00
	ldr     r1, [pc, #0x48] @ 0x21d2b14, (=0x3ad)
	ldr     r0, [sp, #0x0]
	add     r4, r0, r1
	ldr     r0, [sp, #0x4]
	ldrb    r0, [r4, r0]
	cmp     r0, #0x0
	bne     branch_21d2af6
	ldr     r0, [pc, #0x3c] @ 0x21d2b18, (=0x5e2)
	bl      0x2005748
	ldr     r0, [pc, #0x3c] @ 0x21d2b1c, (=0x3a9)
	ldr     r1, [sp, #0x0]
	ldrb    r2, [r1, r0]
	add     r3, r1, r2
	ldr     r1, [sp, #0x4]
	add     r2, r0, #0x1
	strb    r1, [r3, r2]
	ldr     r1, [sp, #0x0]
	ldrb    r1, [r1, r0]
	add     r2, r1, #0x1
	ldr     r1, [sp, #0x0]
	strb    r2, [r1, r0]
.thumb
branch_21d2af6: @ 21d2af6 :thumb
	ldr     r1, [sp, #0x4]
	mov     r0, #0x1
	add     sp, #0xc
	strb    r0, [r4, r1]
	pop     {r4-r7,pc}
@ 0x21d2b00

.thumb
branch_21d2b00: @ 21d2b00 :thumb
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d2b06


.align 2


.word 0x21d374c @ 0x21d2b08
.word 0x21d374e @ 0x21d2b0c
.word 0x402 @ 0x21d2b10
.word 0x3ad @ 0x21d2b14
.word 0x5e2 @ 0x21d2b18
.word 0x3a9 @ 0x21d2b1c
.thumb
Function_21d2b20: @ 21d2b20 :thumb
	push    {r3-r7,lr}
	ldr     r2, [pc, #0x84] @ 0x21d2ba8, (=0x3a6)
	mov     r6, r0
	ldrb    r0, [r6, r2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r6, r2]
	ldrb    r0, [r6, r2]
	cmp     r0, #0x1
	bcc     branch_21d2ba4
	mov     r0, #0x0
	strb    r0, [r6, r2]
	.hword  0x1e51 @ sub r1, r2, #0x1
	ldrb    r1, [r6, r1]
	add     r3, r1, #0x1
	.hword  0x1e51 @ sub r1, r2, #0x1
	strb    r3, [r6, r1]
	ldrb    r1, [r6, r1]
	cmp     r1, #0x8
	bcc     branch_21d2b4a
	.hword  0x1e51 @ sub r1, r2, #0x1
	strb    r0, [r6, r1]
.thumb
branch_21d2b4a: @ 21d2b4a :thumb
	ldr     r0, [pc, #0x60] @ 0x21d2bac, (=0x3a9)
	ldrb    r0, [r6, r0]
	cmp     r0, #0x2
	bne     branch_21d2b96
	ldr     r7, [pc, #0x5c] @ 0x21d2bb0, (=0x21d3770)
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d2b58: @ 21d2b58 :thumb
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      Function_21d3500
	mov     r0, #0xd1
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d345c
	ldr     r0, [pc, #0x40] @ 0x21d2bb4, (=0x3aa)
	add     r1, r6, r4
	ldrb    r0, [r1, r0]
	mov     r2, #0x2
	lsl     r1, r0, #2
	add     r3, r7, r1
	mov     r0, #0xd1
	ldsh    r1, [r7, r1]
	ldsh    r2, [r3, r2]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	sub     r1, #0x24
	sub     r2, #0xa
	bl      Function_21d3474
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x2
	blt     branch_21d2b58
.thumb
branch_21d2b96: @ 21d2b96 :thumb
	ldr     r1, [pc, #0x20] @ 0x21d2bb8, (=0x3a5)
	mov     r0, #0x5b
	ldrb    r1, [r6, r1]
	lsl     r0, r0, #2
	add     r0, r6, r0
	bl      Function_21d33b0
.thumb
branch_21d2ba4: @ 21d2ba4 :thumb
	pop     {r3-r7,pc}
@ 0x21d2ba6


.align 2


.word 0x3a6 @ 0x21d2ba8
.word 0x3a9 @ 0x21d2bac
.word 0x21d3770 @ 0x21d2bb0
.word 0x3aa @ 0x21d2bb4
.word 0x3a5 @ 0x21d2bb8
.thumb
Function_21d2bbc: @ 21d2bbc :thumb
	push    {r4,r5}
	ldr     r1, [pc, #0x148] @ 0x21d2d08, (=0x3a9)
	mov     r3, #0x0
	ldrb    r2, [r0, r1]
	cmp     r2, #0x1
	bhi     branch_21d2bce
	mov     r0, r3
	pop     {r4,r5}
	bx      lr
@ 0x21d2bce

.thumb
branch_21d2bce: @ 21d2bce :thumb
	add     r2, r1, #0x2
	ldrb    r2, [r0, r2]
	add     r4, r0, r2
	mov     r2, r1
	sub     r2, #0x49
	ldrb    r2, [r4, r2]
	add     r4, r1, #0x1
	ldrb    r4, [r0, r4]
	add     r5, r0, r4
	mov     r4, r1
	sub     r4, #0x49
	ldrb    r4, [r5, r4]
	cmp     r4, r2
	bne     branch_21d2bfc
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldrb    r4, [r0, r2]
	mov     r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bic     r4, r2
	mov     r2, #0x1
	orr     r2, r4
	strb    r2, [r0, r1]
	b       branch_21d2c26
@ 0x21d2bfc

.thumb
branch_21d2bfc: @ 21d2bfc :thumb
	cmp     r4, #0x4
	bne     branch_21d2c12
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldrb    r4, [r0, r2]
	mov     r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bic     r4, r2
	mov     r2, #0x1
	orr     r2, r4
	strb    r2, [r0, r1]
	b       branch_21d2c26
@ 0x21d2c12

.thumb
branch_21d2c12: @ 21d2c12 :thumb
	cmp     r2, #0x4
	bne     branch_21d2c26
	.hword  0x1e4a @ sub r2, r1, #0x1
	ldrb    r4, [r0, r2]
	mov     r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bic     r4, r2
	mov     r2, #0x1
	orr     r2, r4
	strb    r2, [r0, r1]
.thumb
branch_21d2c26: @ 21d2c26 :thumb
	ldr     r1, [pc, #0xe0] @ 0x21d2d08, (=0x3a9)
	ldrb    r2, [r0, r1]
	cmp     r2, #0x2
	bhi     branch_21d2c34
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x21d2c34

.thumb
branch_21d2c34: @ 21d2c34 :thumb
	add     r2, r1, #0x2
	ldrb    r2, [r0, r2]
	add     r4, r0, r2
	mov     r2, r1
	sub     r2, #0x49
	ldrb    r4, [r4, r2]
	add     r2, r1, #0x1
	ldrb    r2, [r0, r2]
	add     r5, r0, r2
	mov     r2, r1
	sub     r2, #0x49
	ldrb    r2, [r5, r2]
	cmp     r2, r4
	bne     branch_21d2c60
	add     r5, r1, #0x3
	ldrb    r5, [r0, r5]
	sub     r1, #0x49
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r2, r1
	bne     branch_21d2c60
	mov     r3, #0x1
.thumb
branch_21d2c60: @ 21d2c60 :thumb
	cmp     r2, #0x4
	bne     branch_21d2c6a
	cmp     r4, #0x4
	bne     branch_21d2c6a
	mov     r3, #0x1
.thumb
branch_21d2c6a: @ 21d2c6a :thumb
	cmp     r2, #0x4
	bne     branch_21d2c80
	mov     r1, #0xeb
	lsl     r1, r1, #2
	ldrb    r5, [r0, r1]
	sub     r1, #0x4c
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r1, #0x4
	bne     branch_21d2c80
	mov     r3, #0x1
.thumb
branch_21d2c80: @ 21d2c80 :thumb
	cmp     r4, #0x4
	bne     branch_21d2c96
	mov     r1, #0xeb
	lsl     r1, r1, #2
	ldrb    r5, [r0, r1]
	sub     r1, #0x4c
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r1, #0x4
	bne     branch_21d2c96
	mov     r3, #0x1
.thumb
branch_21d2c96: @ 21d2c96 :thumb
	cmp     r2, #0x4
	bne     branch_21d2cac
	mov     r1, #0xeb
	lsl     r1, r1, #2
	ldrb    r5, [r0, r1]
	sub     r1, #0x4c
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r4, r1
	bne     branch_21d2cac
	mov     r3, #0x1
.thumb
branch_21d2cac: @ 21d2cac :thumb
	cmp     r4, #0x4
	bne     branch_21d2cc2
	mov     r1, #0xeb
	lsl     r1, r1, #2
	ldrb    r5, [r0, r1]
	sub     r1, #0x4c
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r2, r1
	bne     branch_21d2cc2
	mov     r3, #0x1
.thumb
branch_21d2cc2: @ 21d2cc2 :thumb
	mov     r1, #0xeb
	lsl     r1, r1, #2
	ldrb    r5, [r0, r1]
	sub     r1, #0x4c
	add     r5, r0, r5
	ldrb    r1, [r5, r1]
	cmp     r1, #0x4
	bne     branch_21d2cd8
	cmp     r2, r4
	bne     branch_21d2cd8
	mov     r3, #0x1
.thumb
branch_21d2cd8: @ 21d2cd8 :thumb
	cmp     r3, #0x1
	bne     branch_21d2d02
	ldr     r1, [pc, #0x2c] @ 0x21d2d0c, (=0x3aa)
	mov     r4, #0x0
	mov     r2, r1
	sub     r2, #0x4a
.thumb
branch_21d2ce4: @ 21d2ce4 :thumb
	add     r3, r0, r4
	ldrb    r3, [r3, r1]
	add     r3, r0, r3
	ldrb    r3, [r3, r2]
	cmp     r3, #0x4
	beq     branch_21d2cf6
	ldr     r1, [pc, #0x1c] @ 0x21d2d10, (=0x3a7)
	strb    r3, [r0, r1]
	b       branch_21d2cfc
@ 0x21d2cf6

.thumb
branch_21d2cf6: @ 21d2cf6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_21d2ce4
.thumb
branch_21d2cfc: @ 21d2cfc :thumb
	mov     r0, #0x1
	pop     {r4,r5}
	bx      lr
@ 0x21d2d02

.thumb
branch_21d2d02: @ 21d2d02 :thumb
	mov     r0, #0x0
	pop     {r4,r5}
	bx      lr
@ 0x21d2d08

.word 0x3a9 @ 0x21d2d08
.word 0x3aa @ 0x21d2d0c
.word 0x3a7 @ 0x21d2d10
.thumb
Function_21d2d14: @ 21d2d14 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x0
	mov     r7, #0x36
	mov     r4, r0
	mov     r5, r6
	lsl     r7, r7, #4
.thumb
branch_21d2d22: @ 21d2d22 :thumb
	ldr     r1, [pc, #0x34] @ 0x21d2d58, (=0x3aa)
	add     r2, r6, r4
	ldrb    r1, [r2, r1]
	add     r1, r6, r1
	ldrb    r1, [r1, r7]
	cmp     r1, #0x4
	bne     branch_21d2d3e
	mov     r0, #0x35
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x1
	bl      Function_21d3530
	mov     r0, #0x1
.thumb
branch_21d2d3e: @ 21d2d3e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d2d22
	mov     r1, #0x0
	strb    r1, [r6, #0x14]
	ldrb    r2, [r6, #0x14]
	lsl     r1, r2, #4
	orr     r2, r1
	ldr     r1, [pc, #0x8] @ 0x21d2d5c, (=0x400004d)
	strb    r2, [r1, #0x0]
	pop     {r3-r7,pc}
@ 0x21d2d56


.align 2


.word 0x3aa @ 0x21d2d58
.word 0x400004d @ 0x21d2d5c
.thumb
Function_21d2d60: @ 21d2d60 :thumb
	push    {r3-r7,lr}
	ldr     r2, [pc, #0xa4] @ 0x21d2e08, (=0x3aa)
	mov     r5, r0
	mov     r3, r2
	mov     r0, #0x0
	sub     r3, #0x4a
.thumb
branch_21d2d6c: @ 21d2d6c :thumb
	add     r4, r5, r0
	ldrb    r4, [r4, r2]
	add     r4, r5, r4
	ldrb    r4, [r4, r3]
	cmp     r4, #0x4
	beq     branch_21d2d7e
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	blt     branch_21d2d6c
.thumb
branch_21d2d7e: @ 21d2d7e :thumb
	cmp     r0, #0x3
	bne     branch_21d2d86
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2d86

.thumb
branch_21d2d86: @ 21d2d86 :thumb
	cmp     r1, #0x0
	ldrb    r0, [r5, #0x14]
	bne     branch_21d2dd2
	cmp     r0, #0x0
	bne     branch_21d2d96
	ldr     r0, [pc, #0x78] @ 0x21d2e0c, (=0x552)
	bl      0x2005748
.thumb
branch_21d2d96: @ 21d2d96 :thumb
	ldrb    r0, [r5, #0x14]
	cmp     r0, #0x4
	bcs     branch_21d2da2
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r5, #0x14]
	b       branch_21d2df8
@ 0x21d2da2

.thumb
branch_21d2da2: @ 21d2da2 :thumb
	mov     r7, #0x36
	mov     r4, #0x0
	mov     r6, r5
	lsl     r7, r7, #4
.thumb
branch_21d2daa: @ 21d2daa :thumb
	ldr     r0, [pc, #0x5c] @ 0x21d2e08, (=0x3aa)
	add     r1, r5, r4
	ldrb    r0, [r1, r0]
	add     r0, r5, r0
	ldrb    r0, [r0, r7]
	cmp     r0, #0x4
	bne     branch_21d2dc6
	ldr     r1, [pc, #0x54] @ 0x21d2e10, (=0x3a7)
	mov     r0, #0x35
	lsl     r0, r0, #4
	ldrb    r1, [r5, r1]
	ldr     r0, [r6, r0]
	bl      Function_21d34c4
.thumb
branch_21d2dc6: @ 21d2dc6 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r4, #0x3
	blt     branch_21d2daa
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2dd2

.thumb
branch_21d2dd2: @ 21d2dd2 :thumb
	cmp     r0, #0x0
	beq     branch_21d2ddc
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r5, #0x14]
	b       branch_21d2df8
@ 0x21d2ddc

.thumb
branch_21d2ddc: @ 21d2ddc :thumb
	mov     r4, #0x0
	mov     r6, #0x35
	mov     r7, r4
	lsl     r6, r6, #4
.thumb
branch_21d2de4: @ 21d2de4 :thumb
	ldr     r0, [r5, r6]
	mov     r1, r7
	bl      Function_21d3530
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d2de4
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d2df8

.thumb
branch_21d2df8: @ 21d2df8 :thumb
	ldrb    r1, [r5, #0x14]
	lsl     r0, r1, #4
	orr     r1, r0
	ldr     r0, [pc, #0x14] @ 0x21d2e14, (=0x400004d)
	strb    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x21d2e06


.align 2


.word 0x3aa @ 0x21d2e08
.word 0x552 @ 0x21d2e0c
.word 0x3a7 @ 0x21d2e10
.word 0x400004d @ 0x21d2e14
.thumb
Function_21d2e18: @ 21d2e18 :thumb
	ldrb    r1, [r0, #0xe]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0xe]
	bx      lr
@ 0x21d2e20

.thumb
Function_21d2e20: @ 21d2e20 :thumb
	ldrb    r1, [r0, #0xe]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0xe]
	bx      lr
@ 0x21d2e28

.thumb
Function_21d2e28: @ 21d2e28 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0xd
	lsl     r0, r0, #6
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      Function_21d345c
	mov     r0, r4
	add     r0, #0xfc
	mov     r1, #0x0
	bl      0x201ada4
	add     r4, #0xfc
	mov     r0, r4
	bl      0x201a9a4
	pop     {r4,pc}
@ 0x21d2e4c

.thumb
Function_21d2e4c: @ 21d2e4c :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, #0x39
	mov     r4, r0
	mov     r0, #0x73
	lsl     r3, r3, #4
	str     r0, [sp, #0x0]
	mov     r0, #0xb8
	mov     r1, #0x7
	mov     r2, #0x0
	add     r3, r4, r3
	bl      0x2006f50
	mov     r1, #0xe3
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     r0, r1, #0x4
	ldr     r3, [r4, r0]
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r4, #0x58]
	ldr     r3, [r3, #0x10]
	bl      0x201958c
	ldr     r0, [r4, #0x58]
	mov     r1, #0x0
	bl      0x2019448
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d2e8a


.align 2, 0


.thumb
Function_21d2e8c: @ 21d2e8c :thumb
	push    {r4,lr}
	mov     r1, #0x39
	mov     r4, r0
	lsl     r1, r1, #4
	ldr     r1, [r4, r1]
	mov     r0, #0x73
	ldr     r1, [r1, #0x10]
	bl      0x2018144
	mov     r1, #0xe5
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	cmp     r0, #0x0
	bne     branch_21d2eb0
	bne     branch_21d2eb0
	bl      ErrorHandling
.thumb
branch_21d2eb0: @ 21d2eb0 :thumb
	pop     {r4,pc}
@ 0x21d2eb2


.align 2, 0


.thumb
Function_21d2eb4: @ 21d2eb4 :thumb
	mov     r1, #0x39
	lsl     r1, r1, #4
	ldr     r2, [r0, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r0, [r0, r1]
	ldr     r1, [r2, #0x14]
	ldr     r3, [pc, #0x4] @ 0x21d2ec8, (=0x20d50b8)
	ldr     r2, [r2, #0x10]
	bx      r3
@ 0x21d2ec6


.align 2


.word 0x20d50b8 @ 0x21d2ec8
.thumb
Function_21d2ecc: @ 21d2ecc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	mov     r0, #0x2
	mvn     r0, r0
	mov     r7, r1
	str     r2, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
.thumb
branch_21d2ede: @ 21d2ede :thumb
	ldr     r1, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	ldr     r4, [sp, #0xc]
	add     r5, r1, r0
.thumb
branch_21d2ee6: @ 21d2ee6 :thumb
	add     r1, r7, r4
	cmp     r1, #0x0
	ble     branch_21d2f04
	mov     r0, #0x1
	lsl     r0, r0, #8
	cmp     r1, r0
	bge     branch_21d2f04
	cmp     r5, #0x0
	ble     branch_21d2f04
	cmp     r5, #0xc0
	bge     branch_21d2f04
	mov     r0, r6
	mov     r2, r5
	bl      Function_21d2f38
.thumb
branch_21d2f04: @ 21d2f04 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x3
	blt     branch_21d2ee6
	ldr     r0, [sp, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x3
	blt     branch_21d2ede
	mov     r1, #0x0
	mov     r3, #0xe5
	str     r1, [sp, #0x0]
	lsl     r3, r3, #2
	ldr     r2, [r6, r3]
	.hword  0x1f1b @ sub r3, r3, #0x4
	ldr     r3, [r6, r3]
	ldr     r0, [r6, #0x58]
	ldr     r3, [r3, #0x10]
	bl      0x201958c
	ldr     r0, [r6, #0x58]
	mov     r1, #0x0
	bl      0x2019448
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2f36


.align 2, 0


.thumb
Function_21d2f38: @ 21d2f38 :thumb
	push    {r3-r6}
	mov     r3, #0x1
	mov     r4, #0xff
	tst     r3, r1
	bne     branch_21d2f46
	mov     r3, #0xf
	b       branch_21d2f48
@ 0x21d2f46

.thumb
branch_21d2f46: @ 21d2f46 :thumb
	mov     r3, #0xf0
.thumb
branch_21d2f48: @ 21d2f48 :thumb
	eor     r3, r4
	lsl     r3, r3, #24
	lsr     r4, r1, #3
	mov     r6, #0x7
	lsr     r5, r2, #3
	and     r1, r6
	lsr     r3, r3, #24
	lsl     r4, r4, #5
	lsl     r5, r5, #10
	lsr     r1, r1, #1
	cmp     r2, #0x8
	bcs     branch_21d2f64
	lsl     r2, r2, #2
	b       branch_21d2f68
@ 0x21d2f64

.thumb
branch_21d2f64: @ 21d2f64 :thumb
	lsl     r2, r2, #29
	lsr     r2, r2, #27
.thumb
branch_21d2f68: @ 21d2f68 :thumb
	mov     r6, #0xe5
	lsl     r6, r6, #2
	add     r4, r5, r4
	add     r1, r1, r4
	ldr     r0, [r0, r6]
	add     r2, r2, r1
	ldrb    r1, [r0, r2]
	and     r1, r3
	strb    r1, [r0, r2]
	pop     {r3-r6}
	bx      lr
@ 0x21d2f7e


.align 2, 0


.thumb
Function_21d2f80: @ 21d2f80 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	mov     r0, #0x20
	mov     r1, #0x73
	bl      0x201dbec
	bl      Function_21d3378
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, #0x73
	str     r2, [sp, #0x10]
	mov     r2, r0
	bl      0x200a784
	mov     r0, #0x28
	add     r1, r5, #0x4
	mov     r2, #0x73
	bl      0x20095c4
	mov     r2, #0x2
	str     r0, [r5, #0x0]
	add     r0, r5, #0x4
	mov     r1, #0x0
	lsl     r2, r2, #20
	bl      0x200964c
	ldr     r4, [pc, #0x80] @ 0x21d3048, (=0x21d3820)
	mov     r7, #0x0
	mov     r6, r5
.thumb
branch_21d2fcc: @ 21d2fcc :thumb
	ldrb    r0, [r4, #0x0]
	mov     r1, r7
	mov     r2, #0x73
	bl      0x2009714
	mov     r1, #0x4b
	lsl     r1, r1, #2
	str     r0, [r6, r1]
	.hword  0x1c7f @ add r7, r7, #0x1
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d36 @ add r6, r6, #0x4
	cmp     r7, #0x4
	blt     branch_21d2fcc
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d304c
	mov     r1, #0x1
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d30d8
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d3168
	mov     r0, r5
	mov     r1, #0x1
	bl      Function_21d31f4
	mov     r1, #0x0
	mov     r0, r5
	mov     r2, r1
	mov     r3, #0x2
	bl      Function_21d30d8
	mov     r7, #0x4f
	lsl     r7, r7, #2
	mov     r4, #0x0
	add     r6, r7, #0x4
.thumb
branch_21d301e: @ 21d301e :thumb
	ldr     r0, [r5, r7]
	bl      0x200a328
	ldr     r0, [r5, r6]
	bl      0x200a5c8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x5
	blt     branch_21d301e
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff0c
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d3046


.align 2


.word 0x21d3820 @ 0x21d3048
.thumb
Function_21d304c: @ 21d304c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xb9
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xc
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x57
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	add     r0, #0xbd
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xd
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x16
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc1
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xb
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x59
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xa
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5a
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d30d8

.thumb
Function_21d30d8: @ 21d30d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r7, r3
	str     r6, [sp, #0x0]
	mov     r5, r0
	str     r7, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xb9
	lsl     r4, r1, #4
	ldr     r0, [r5, r0]
	mov     r1, #0xb8
	mov     r2, #0x20
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x4f
	add     r2, r5, r4
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	str     r6, [sp, #0x0]
	str     r7, [sp, #0x4]
	mov     r0, #0x5
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	add     r0, #0xbd
	ldr     r0, [r5, r0]
	mov     r1, #0xb8
	mov     r2, #0x21
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x5
	add     r2, r5, r4
	lsl     r1, r1, #6
	str     r0, [r2, r1]
	str     r6, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc1
	ldr     r0, [r5, r0]
	mov     r1, #0xb8
	mov     r2, #0x1f
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x51
	add     r2, r5, r4
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	str     r6, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r5, r0]
	mov     r1, #0xb8
	mov     r2, #0x1e
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x52
	add     r2, r5, r4
	lsl     r1, r1, #2
	str     r0, [r2, r1]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d3168

.thumb
Function_21d3168: @ 21d3168 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xb9
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x10
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x5b
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	add     r0, #0xbd
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x11
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x17
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc1
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xf
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5d
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0xe
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x5e
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d31f4

.thumb
Function_21d31f4: @ 21d31f4 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xb9
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x14
	mov     r3, #0x0
	bl      0x200985c
	mov     r1, #0x5f
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x73
	str     r0, [sp, #0xc]
	add     r0, #0xbd
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x15
	mov     r3, #0x0
	bl      0x20098b8
	mov     r1, #0x6
	lsl     r1, r1, #6
	str     r0, [r4, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc1
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x13
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x61
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	mov     r0, #0x4
	str     r0, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x73
	str     r0, [sp, #0x8]
	add     r0, #0xc5
	ldr     r0, [r4, r0]
	mov     r1, #0xb8
	mov     r2, #0x12
	mov     r3, #0x0
	bl      0x2009918
	mov     r1, #0x62
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d3280

.thumb
Function_21d3280: @ 21d3280 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x80
	mov     r4, r0
	mov     r0, #0x0
	str     r1, [sp, #0x0]
	mvn     r0, r0
	str     r0, [sp, #0x4]
	mov     r5, r2
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	mov     r0, #0x4b
	str     r2, [sp, #0xc]
	lsl     r0, r0, #2
	str     r3, [sp, #0x10]
	ldr     r3, [r4, r0]
	str     r3, [sp, #0x14]
	add     r3, r0, #0x4
	ldr     r3, [r4, r3]
	str     r3, [sp, #0x18]
	mov     r3, r0
	add     r3, #0x8
	ldr     r3, [r4, r3]
	add     r0, #0xc
	str     r3, [sp, #0x1c]
	ldr     r0, [r4, r0]
	mov     r3, r1
	str     r0, [sp, #0x20]
	str     r2, [sp, #0x24]
	str     r2, [sp, #0x28]
	add     r0, sp, #0x5c
	mov     r2, r1
	bl      0x20093b4
	ldr     r0, [r4, #0x0]
	mov     r1, #0x0
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x5c
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r1, [sp, #0x34]
	str     r1, [sp, #0x38]
	str     r1, [sp, #0x3c]
	str     r0, [sp, #0x40]
	str     r0, [sp, #0x44]
	str     r0, [sp, #0x48]
	add     r0, sp, #0x2c
	strh    r1, [r0, #0x20]
	ldr     r0, [sp, #0x90]
	str     r0, [sp, #0x50]
	mov     r0, #0x73
	str     r0, [sp, #0x58]
	add     r0, sp, #0x80
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21d32f6
	mov     r0, #0x1
	str     r0, [sp, #0x54]
	b       branch_21d32fa
@ 0x21d32f6

.thumb
branch_21d32f6: @ 21d32f6 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x54]
.thumb
branch_21d32fa: @ 21d32fa :thumb
	add     r0, sp, #0x2c
	bl      0x2021aa0
	mov     r1, #0x0
	mov     r4, r0
	bl      0x2021cc8
	mov     r1, #0x1
	mov     r0, r4
	lsl     r1, r1, #12
	bl      0x2021ce4
	mov     r0, r4
	mov     r1, r5
	bl      0x2021d6c
	mov     r0, r4
	add     sp, #0x80
	pop     {r3-r5,pc}
@ 0x21d3320

.thumb
Function_21d3320: @ 21d3320 :thumb
	push    {r3-r7,lr}
	mov     r7, #0x5
	mov     r5, r0
	mov     r4, #0x0
	lsl     r7, r7, #6
.thumb
branch_21d332a: @ 21d332a :thumb
	lsl     r0, r4, #4
	add     r6, r5, r0
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldr     r0, [r6, r0]
	bl      0x200a4e4
	ldr     r0, [r6, r7]
	bl      0x200a6dc
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x5
	bcc     branch_21d332a
	mov     r6, #0x4b
	mov     r4, #0x0
	lsl     r6, r6, #2
.thumb
branch_21d334e: @ 21d334e :thumb
	lsl     r0, r4, #2
	add     r0, r5, r0
	ldr     r0, [r0, r6]
	bl      0x2009754
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x4
	bcc     branch_21d334e
	ldr     r0, [r5, #0x0]
	bl      0x2021964
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	pop     {r3-r7,pc}
@ 0x21d3376


.align 2, 0


.thumb
Function_21d3378: @ 21d3378 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r4, [pc, #0x28] @ 0x21d33a8, (=0x21d3824)
	add     r3, sp, #0x0
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r1, [pc, #0x20] @ 0x21d33ac, (=0x200010)
	mov     r0, r2
	mov     r2, r1
	bl      0x201e88c
	mov     r0, #0xe
	mov     r1, #0x73
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d33a8

.word 0x21d3824 @ 0x21d33a8
.word 0x200010 @ 0x21d33ac
.thumb
Function_21d33b0: @ 21d33b0 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x8
	blt     branch_21d33c0
	bl      ErrorHandling
.thumb
branch_21d33c0: @ 21d33c0 :thumb
	mov     r0, #0x13
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x3
	bl      0x2009dc8
	mov     r6, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x73
	str     r0, [sp, #0x4]
	ldr     r3, [pc, #0x18] @ 0x21d33f0, (=0x21d3940)
	add     r0, #0xbd
	ldrb    r3, [r3, r4]
	ldr     r0, [r5, r0]
	mov     r1, r6
	mov     r2, #0xb8
	bl      0x20099d4
	mov     r0, r6
	bl      0x200a6b8
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d33f0

.word 0x21d3940 @ 0x21d33f0
.thumb
Function_21d33f4: @ 21d33f4 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x73
	mov     r1, #0x10
	mov     r7, r2
	str     r3, [sp, #0x8]
	bl      0x2018144
	mov     r4, r0
	mov     r2, r4
	mov     r1, #0x10
	mov     r0, #0x0
.thumb
branch_21d3410: @ 21d3410 :thumb
	strb    r0, [r2, #0x0]
	.hword  0x1c52 @ add r2, r2, #0x1
	.hword  0x1e49 @ sub r1, r1, #0x1
	bne     branch_21d3410
	ldr     r0, [sp, #0x2c]
	ldr     r3, [sp, #0x28]
	str     r0, [sp, #0x0]
	add     r0, sp, #0x10
	ldrb    r0, [r0, #0x14]
	mov     r1, r6
	mov     r2, r7
	str     r0, [sp, #0x4]
	mov     r0, r5
	bl      Function_21d3280
	add     r2, sp, #0x10
	str     r0, [r4, #0xc]
	ldrb    r0, [r2, #0x14]
	strb    r0, [r4, #0x2]
	ldrh    r2, [r2, #0x10]
	ldr     r1, [sp, #0x8]
	mov     r0, r4
	bl      Function_21d3474
	mov     r0, r4
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d3446


.align 2, 0


.thumb
Function_21d3448: @ 21d3448 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x2021bd4
	mov     r0, r4
	bl      0x20181c4
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d345c

.thumb
Function_21d345c: @ 21d345c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3464, (=0x2021cad)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d3462


.align 2


.word 0x2021cad @ 0x21d3464
.thumb
Function_21d3468: @ 21d3468 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3470, (=0x2021f59)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d346e


.align 2


.word 0x2021f59 @ 0x21d3470
.thumb
Function_21d3474: @ 21d3474 :thumb
	push    {lr}
	add     sp, #-0xc
	lsl     r2, r2, #12
	lsl     r1, r1, #12
	str     r2, [sp, #0x4]
	str     r1, [sp, #0x0]
	ldrb    r1, [r0, #0x2]
	cmp     r1, #0x1
	bne     branch_21d348e
	mov     r1, #0x2
	lsl     r1, r1, #20
	add     r1, r2, r1
	str     r1, [sp, #0x4]
.thumb
branch_21d348e: @ 21d348e :thumb
	ldr     r0, [r0, #0xc]
	add     r1, sp, #0x0
	bl      0x2021c50
	add     sp, #0xc
	pop     {pc}
@ 0x21d349a


.align 2, 0


.thumb
Function_21d349c: @ 21d349c :thumb
	push    {r3-r5,lr}
	ldr     r0, [r0, #0xc]
	mov     r5, r1
	mov     r4, r2
	bl      0x2021d28
	ldr     r2, [r0, #0x0]
	asr     r1, r2, #11
	lsr     r1, r1, #20
	add     r1, r2, r1
	asr     r1, r1, #12
	str     r1, [r5, #0x0]
	ldr     r1, [r0, #0x4]
	asr     r0, r1, #11
	lsr     r0, r0, #20
	add     r0, r1, r0
	asr     r0, r0, #12
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d34c2


.align 2, 0


.thumb
Function_21d34c4: @ 21d34c4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, #0x1
	ldr     r0, [r5, #0xc]
	lsl     r1, r1, #12
	bl      0x2021ce4
	ldr     r0, [r5, #0xc]
	mov     r1, r4
	bl      0x2021dcc
	pop     {r3-r5,pc}
@ 0x21d34de


.align 2, 0


.thumb
Function_21d34e0: @ 21d34e0 :thumb
	ldr     r3, [pc, #0x8] @ 0x21d34ec, (=0x2021c81)
	ldr     r0, [r0, #0xc]
	ldr     r1, [pc, #0x8] @ 0x21d34f0, (=0x21d3834)
	mov     r2, #0x1
	bx      r3
@ 0x21d34ea


.align 2


.word 0x2021c81 @ 0x21d34ec
.word 0x21d3834 @ 0x21d34f0
.thumb
Function_21d34f4: @ 21d34f4 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d34fc, (=0x2021c81)
	ldr     r0, [r0, #0xc]
	mov     r2, #0x2
	bx      r3
@ 0x21d34fc

.word 0x2021c81 @ 0x21d34fc
.thumb
Function_21d3500: @ 21d3500 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3508, (=0x2021ec5)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d3506


.align 2


.word 0x2021ec5 @ 0x21d3508
.thumb
Function_21d350c: @ 21d350c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	bl      0x2021cc8
	mov     r1, #0x1
	ldr     r0, [r4, #0xc]
	lsl     r1, r1, #12
	bl      0x2021ce4
	ldr     r0, [r4, #0xc]
	bl      0x2021e24
	mov     r1, r0
	ldr     r0, [r4, #0xc]
	bl      0x2021d6c
	pop     {r4,pc}
@ 0x21d3530

.thumb
Function_21d3530: @ 21d3530 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3538, (=0x2021fa1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d3536


.align 2


.word 0x2021fa1 @ 0x21d3538
.thumb
Function_21d353c: @ 21d353c :thumb
	ldr     r3, [pc, #0x4] @ 0x21d3544, (=0x2021fd1)
	ldr     r0, [r0, #0xc]
	bx      r3
@ 0x21d3542


.align 2


.word 0x2021fd1 @ 0x21d3544
.thumb
Function_21d3548: @ 21d3548 :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r5, r1
	mov     r4, #0x0
.thumb
branch_21d3550: @ 21d3550 :thumb
	ldr     r2, [pc, #0x20] @ 0x21d3574, (=0x21d38b8)
	lsl     r6, r4, #4
	lsl     r3, r4, #3
	mov     r0, r7
	add     r1, r5, r6
	add     r2, r2, r3
	bl      0x201a8d4
	add     r0, r5, r6
	mov     r1, #0x0
	bl      0x201ada4
	add     r0, r4, #0x1
	lsl     r0, r0, #24
	lsr     r4, r0, #24
	cmp     r4, #0x10
	bcc     branch_21d3550
	pop     {r3-r7,pc}
@ 0x21d3574

.word 0x21d38b8 @ 0x21d3574
.thumb
Function_21d3578: @ 21d3578 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d357e: @ 21d357e :thumb
	lsl     r0, r4, #4
	add     r0, r5, r0
	bl      0x201a8fc
	add     r0, r4, #0x1
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	cmp     r4, #0x10
	bcc     branch_21d357e
	pop     {r3-r5,pc}
@ 0x21d3592


.align 2, 0


.thumb
Function_21d3594: @ 21d3594 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r1, #0x73
	str     r1, [sp, #0x4]
	ldr     r2, [pc, #0x18] @ 0x21d35bc, (=0x3f7)
	mov     r1, #0x2
	mov     r3, #0xb
	bl      0x200daa4
	ldr     r2, [pc, #0xc] @ 0x21d35bc, (=0x3f7)
	mov     r0, r4
	mov     r1, #0x1
	mov     r3, #0xb
	bl      0x200dc48
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d35bc

.word 0x3f7 @ 0x21d35bc
.thumb
Function_21d35c0: @ 21d35c0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r1
	mov     r4, r0
	bl      0x201c290
	mov     r1, r0
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0x73
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x20] @ 0x21d35fc, (=0x3d9)
	mov     r3, #0xa
	bl      0x200dd0c
	mov     r0, r4
	mov     r1, #0xf
	bl      0x201ada4
	ldr     r2, [pc, #0x10] @ 0x21d35fc, (=0x3d9)
	mov     r0, r4
	mov     r1, #0x0
	mov     r3, #0xa
	bl      0x200e060
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d35fa

.align 2
.word 0x3d9 @ 0x21d35fc
@ 0x21d3600


.incbin "./baserom/overlay/overlay_0111.bin", 0x2880, 0x21d3960 - 0x21d3600


@end 0x21d3960



