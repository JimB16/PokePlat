

.section .iwram102, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x54
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r0, r5
	mov     r1, #0x44
	mov     r2, #0x54
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0x44
	mov     r4, r0
	blx 0x20d5124
	mov     r0, #0x54
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      0x2006840
	ldr     r1, [r0, #0x0]
	str     r1, [r4, #0x8]
	ldr     r0, [r0, #0x4]
	str     r0, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	bl      0x2025e38
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
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
	ldr     r0, [pc, #0x30] @ 0x21d0e20, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x30] @ 0x21d0e24, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	mov     r0, #0x4
	mov     r1, #0x8
	bl      0x2017dd4
	mov     r0, r4
	bl      Function_21d0f8c
	mov     r0, r4
	bl      Function_21d1174
	ldr     r0, [pc, #0x18] @ 0x21d0e28, (=0x21d0f81)
	mov     r1, r4
	bl      0x2017798
	bl      0x201ffd0
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e1e


.align 2


.word 0xffffe0ff @ 0x21d0e20
.word 0x4001000 @ 0x21d0e24
.word 0x21d0f81 @ 0x21d0e28
.thumb
Function_21d0e2c: @ 21d0e2c :thumb
	push    {r3-r6,lr}
	add     sp, #-0xc
	mov     r5, r1
	bl      0x200682c
	ldr     r1, [r5, #0x0]
	mov     r4, r0
	mov     r6, #0x0
	cmp     r1, #0x5
	bhi     branch_21d0f40
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0e4c

Jumppoints_21d0e4c:
.hword branch_21d0e58 - Jumppoints_21d0e4c - 2
.hword branch_21d0eb4 - Jumppoints_21d0e4c - 2
.hword branch_21d0ec6 - Jumppoints_21d0e4c - 2
.hword branch_21d0ed8 - Jumppoints_21d0e4c - 2
.hword branch_21d0efc - Jumppoints_21d0e4c - 2
.hword branch_21d0f36 - Jumppoints_21d0e4c - 2
.thumb
branch_21d0e58: @ 21d0e58 :thumb
	bl      Function_21d1224
	mov     r0, r4
	bl      Function_21d1274
	mov     r0, r4
	bl      Function_21d1420
	mov     r0, r6
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x1
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x1
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r2, r1
	str     r0, [sp, #0x8]
	mov     r0, r6
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x1
	str     r0, [r5, #0x0]
	b       branch_21d0f40
@ 0x21d0eb4

.thumb
branch_21d0eb4: @ 21d0eb4 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f40
	mov     r0, r6
	str     r0, [r4, #0x40]
	mov     r0, #0x2
	str     r0, [r5, #0x0]
	b       branch_21d0f40
@ 0x21d0ec6

.thumb
branch_21d0ec6: @ 21d0ec6 :thumb
	ldr     r0, [r4, #0x40]
	cmp     r0, #0x3c
	bge     branch_21d0ed2
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x40]
	b       branch_21d0f40
@ 0x21d0ed2

.thumb
branch_21d0ed2: @ 21d0ed2 :thumb
	mov     r0, #0x3
	str     r0, [r5, #0x0]
	b       branch_21d0f40
@ 0x21d0ed8

.thumb
branch_21d0ed8: @ 21d0ed8 :thumb
	mov     r2, #0x3c
	ldsh    r3, [r4, r2]
	mov     r1, r2
	sub     r1, #0xfc
	cmp     r3, r1
	ble     branch_21d0eee
	.hword  0x1f19 @ sub r1, r3, #0x4
	strh    r1, [r4, #0x3c]
	bl      Function_21d1230
	b       branch_21d0f40
@ 0x21d0eee

.thumb
branch_21d0eee: @ 21d0eee :thumb
	sub     r2, #0xfc
	strh    r2, [r4, #0x3c]
	bl      Function_21d1230
	mov     r0, #0x4
	str     r0, [r5, #0x0]
	b       branch_21d0f40
@ 0x21d0efc

.thumb
branch_21d0efc: @ 21d0efc :thumb
	ldr     r0, [pc, #0x48] @ 0x21d0f48, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x1
	and     r0, r1
	cmp     r0, #0x1
	beq     branch_21d0f18
	mov     r0, #0x2
	and     r0, r1
	cmp     r0, #0x2
	beq     branch_21d0f18
	ldr     r0, [pc, #0x38] @ 0x21d0f4c, (=0x21bf6bc)
	ldrh    r0, [r0, #0x20]
	cmp     r0, #0x0
	beq     branch_21d0f40
.thumb
branch_21d0f18: @ 21d0f18 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	mov     r0, #0x5
	str     r0, [r5, #0x0]
	b       branch_21d0f40
@ 0x21d0f36

.thumb
branch_21d0f36: @ 21d0f36 :thumb
	bl      0x200f2ac
	cmp     r0, #0x1
	bne     branch_21d0f40
	mov     r6, #0x1
.thumb
branch_21d0f40: @ 21d0f40 :thumb
	mov     r0, r6
	add     sp, #0xc
	pop     {r3-r6,pc}
@ 0x21d0f46


.align 2


.word 0x21bf67c @ 0x21d0f48
.word 0x21bf6bc @ 0x21d0f4c
.thumb
Function_21d0f50: @ 21d0f50 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r6, r0
	ldr     r4, [r6, #0x0]
	bl      Function_21d1204
	mov     r0, r6
	bl      Function_21d10f8
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2017798
	mov     r0, r5
	bl      0x2006830
	mov     r0, r4
	bl      0x201807c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d0f7e


.align 2, 0


.thumb
Function_21d0f80: @ 21d0f80 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d0f88, (=0x201c2b9)
	ldr     r0, [r0, #0x10]
	bx      r3
@ 0x21d0f86


.align 2


.word 0x201c2b9 @ 0x21d0f88
.thumb
Function_21d0f8c: @ 21d0f8c :thumb
	push    {r4,r5,lr}
	add     sp, #-0x54
	ldr     r5, [pc, #0x158] @ 0x21d10ec, (=0x21d155c)
	mov     r4, r0
	add     r3, sp, #0x2c
	mov     r2, #0x5
.thumb
branch_21d0f98: @ 21d0f98 :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0f98
	add     r0, sp, #0x2c
	bl      0x201fe94
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x1c
	ldr     r5, [pc, #0x140] @ 0x21d10f0, (=0x21d1530)
	str     r0, [r4, #0x10]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0x130] @ 0x21d10f4, (=0x21d1540)
	add     r3, sp, #0x0
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
	add     r0, sp, #0x0
	strb    r1, [r0, #0x12]
	mov     r3, #0x4
	strb    r3, [r0, #0x13]
	lsl     r3, r3, #10
	str     r3, [sp, #0x8]
	mov     r3, #0x2
	strb    r3, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	mov     r3, r1
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      0x2019ebc
	mov     r2, #0x2
	add     r0, sp, #0x0
	strb    r2, [r0, #0x12]
	strb    r2, [r0, #0x13]
	lsl     r1, r2, #11
	str     r1, [sp, #0x8]
	strb    r2, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x2019ebc
	mov     r1, #0x4
	add     r0, sp, #0x0
	strb    r1, [r0, #0x12]
	mov     r2, #0x1
	strb    r2, [r0, #0x13]
	lsl     r1, r2, #11
	str     r1, [sp, #0x8]
	strb    r2, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      0x2019ebc
	mov     r1, #0x4
	mov     r3, #0x0
	add     r0, sp, #0x0
	strb    r3, [r0, #0x12]
	strb    r1, [r0, #0x13]
	lsl     r2, r1, #10
	str     r2, [sp, #0x8]
	mov     r2, #0x2
	strb    r2, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	add     r2, sp, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r2, #0x2
	add     r0, sp, #0x0
	strb    r2, [r0, #0x12]
	strb    r2, [r0, #0x13]
	lsl     r1, r2, #11
	str     r1, [sp, #0x8]
	strb    r2, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	bl      0x2019ebc
	mov     r1, #0x4
	add     r0, sp, #0x0
	strb    r1, [r0, #0x12]
	mov     r2, #0x1
	strb    r2, [r0, #0x13]
	lsl     r1, r2, #11
	str     r1, [sp, #0x8]
	strb    r2, [r0, #0x10]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	add     r2, sp, #0x0
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	bl      0x2019ebc
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	add     sp, #0x54
	pop     {r4,r5,pc}
@ 0x21d10ec

.word 0x21d155c @ 0x21d10ec
.word 0x21d1530 @ 0x21d10f0
.word 0x21d1540 @ 0x21d10f4
.thumb
Function_21d10f8: @ 21d10f8 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      0x2019120
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x2
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x3
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x4
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x5
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x6
	mov     r1, #0x0
	bl      0x2019120
	mov     r0, #0x7
	mov     r1, #0x0
	bl      0x2019120
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	mov     r1, #0x7
	bl      0x2019044
	ldr     r0, [r4, #0x10]
	bl      0x20181c4
	pop     {r4,pc}
@ 0x21d1174


.thumb
Function_21d1174: @ 21d1174 :thumb
	push    {r4,lr}
	add     sp, #-0x10
	ldr     r1, [pc, #0x84] @ 0x21d1200, (=Unknown_21d1528)
	mov     r4, r0
	ldrh    r2, [r1, #0x0]
	add     r0, sp, #0x8
	strh    r2, [r0, #0x0]
	ldrh    r2, [r1, #0x2]
	strh    r2, [r0, #0x2]
	ldrh    r2, [r1, #0x4]
	ldrh    r1, [r1, #0x6]
	strh    r2, [r0, #0x4]
	strh    r1, [r0, #0x6]
	bl      0x201d710
	mov     r0, #0x1
	ldr     r3, [r4, #0x0]
	mov     r1, #0x1a
	mov     r2, r0
	bl      0x200b144
	str     r0, [r4, #0x34]
	ldr     r0, [r4, #0x0]
	bl      0x200b358
	str     r0, [r4, #0x38]
	mov     r1, #0x0
	add     r0, sp, #0x8
	strb    r1, [r0, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x10]
	add     r1, #0x14
	add     r2, sp, #0x8
	bl      0x201a8d4
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0xc0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x14
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	mov     r1, #0x4
	add     r0, sp, #0x8
	strb    r1, [r0, #0x0]
	mov     r1, r4
	ldr     r0, [r4, #0x10]
	add     r1, #0x24
	add     r2, sp, #0x8
	bl      0x201a8d4
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #8
	str     r0, [sp, #0x0]
	mov     r0, #0xc0
	add     r4, #0x24
	str     r0, [sp, #0x4]
	mov     r0, r4
	mov     r2, r1
	mov     r3, r1
	bl      0x201ae78
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d1200

.word Unknown_21d1528 @ 0x21d1200



.thumb
Function_21d1204: @ 21d1204 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x24
	bl      0x201a8fc
	mov     r0, r4
	add     r0, #0x14
	bl      0x201a8fc
	ldr     r0, [r4, #0x38]
	bl      0x200b3f0
	ldr     r0, [r4, #0x34]
	bl      0x200b190
	pop     {r4,pc}
@ 0x21d1224

.thumb
Function_21d1224: @ 21d1224 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d122c, (=0x21d1231)
	mov     r1, #0x0
	strh    r1, [r0, #0x3c]
	bx      r3
@ 0x21d122c

.word 0x21d1231 @ 0x21d122c
.thumb
Function_21d1230: @ 21d1230 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r3, #0x3c
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x1
	mov     r2, #0x3
	bl      0x2019184
	mov     r3, #0x3c
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x5
	mov     r2, #0x3
	add     r3, #0xc0
	bl      0x2019184
	mov     r3, #0x3c
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x0
	mov     r2, #0x3
	bl      0x2019184
	mov     r3, #0x3c
	ldsh    r3, [r4, r3]
	ldr     r0, [r4, #0x10]
	mov     r1, #0x4
	mov     r2, #0x3
	add     r3, #0xc0
	bl      0x2019184
	pop     {r4,pc}
@ 0x21d1272


.align 2, 0


.thumb
Function_21d1274: @ 21d1274 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r5, r0
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_21d1294
	mov     r0, #0x2
	str     r0, [sp, #0x18]
	mov     r0, #0x6
	str     r0, [sp, #0x14]
	mov     r0, #0x8
	mov     r7, #0xa
	str     r0, [sp, #0x10]
	mov     r6, #0x0
	mov     r4, #0x4
	b       branch_21d12a6
@ 0x21d1294

.thumb
branch_21d1294: @ 21d1294 :thumb
	mov     r0, #0x3
	str     r0, [sp, #0x18]
	mov     r0, #0x7
	str     r0, [sp, #0x14]
	mov     r0, #0x9
	mov     r7, #0xb
	str     r0, [sp, #0x10]
	mov     r6, #0x1
	mov     r4, #0x5
.thumb
branch_21d12a6: @ 21d12a6 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x3
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x3
	bl      0x2006e3c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r2, #0x0
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x14]
	mov     r0, #0x84
	mov     r3, r2
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, r7
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x7
	bl      0x2006e60
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x18]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x7
	bl      0x2006e3c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x14]
	str     r0, [sp, #0x4]
	mov     r0, #0x84
	mov     r2, #0x4
	mov     r3, #0x0
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x1
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r1, #0x1
	str     r1, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r3, r2
	bl      0x2019e2c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x1
	bl      0x2019448
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x1
	bl      0x2006e3c
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, #0x84
	mov     r2, #0x0
	bl      0x2006e84
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	ldr     r1, [sp, #0x10]
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x5
	bl      0x2006e60
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x18
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	mov     r2, #0x0
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019e2c
	ldr     r0, [r5, #0x10]
	mov     r1, #0x5
	bl      0x2019448
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x0]
	mov     r1, r6
	str     r0, [sp, #0xc]
	ldr     r2, [r5, #0x10]
	mov     r0, #0x84
	mov     r3, #0x5
	bl      0x2006e3c
	mov     r3, #0x20
	str     r3, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r1, r4
	str     r0, [sp, #0x4]
	mov     r0, #0x84
	mov     r2, #0x4
	bl      0x2006e84
	mov     r0, #0x0
	ldr     r3, [r5, #0x0]
	mov     r1, #0x20
	mov     r2, r0
	bl      0x2019690
	ldr     r3, [r5, #0x0]
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r2, [r5, #0x0]
	mov     r0, #0x0
	mov     r1, #0x40
	bl      0x2002e7c
	ldr     r2, [r5, #0x0]
	mov     r0, #0x4
	mov     r1, #0x40
	bl      0x2002e7c
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d1420

.thumb
Function_21d1420: @ 21d1420 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r0, #0x2
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #8
	bl      0x2023790
	mov     r4, r0
	mov     r0, #0x2
	ldr     r1, [r5, #0x0]
	lsl     r0, r0, #8
	bl      0x2023790
	mov     r6, r0
	ldr     r0, [r5, #0x34]
	mov     r1, #0x0
	mov     r2, r6
	bl      0x200b1b8
	ldr     r0, [r5, #0x38]
	ldr     r2, [r5, #0xc]
	mov     r1, #0x0
	bl      0x200b498
	ldr     r0, [r5, #0x38]
	mov     r1, r4
	mov     r2, r6
	bl      0x200c388
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0xc0] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x14
	mov     r2, r4
	mov     r3, #0x30
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0xa4] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x24
	mov     r2, r4
	mov     r3, #0x30
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      0x20237bc
	ldr     r0, [r5, #0x4]
	cmp     r0, #0x0
	bne     branch_21d14a0
	mov     r1, #0x1
	b       branch_21d14a2
@ 0x21d14a0

.thumb
branch_21d14a0: @ 21d14a0 :thumb
	mov     r1, #0x2
.thumb
branch_21d14a2: @ 21d14a2 :thumb
	ldr     r0, [r5, #0x34]
	mov     r2, r4
	bl      0x200b1b8
	mov     r3, #0x40
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x70] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x14
	mov     r2, r4
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r3, #0x40
	str     r3, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x58] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r1, [sp, #0xc]
	add     r0, #0x24
	mov     r2, r4
	bl      0x201d78c
	ldr     r0, [r5, #0x34]
	mov     r1, #0x3
	mov     r2, r4
	bl      0x200b1b8
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x38] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x14
	mov     r2, r4
	mov     r3, #0x8a
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, #0x90
	str     r0, [sp, #0x0]
	mov     r1, #0x0
	ldr     r0, [pc, #0x1c] @ 0x21d1524, (=0x10200)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	add     r5, #0x24
	mov     r0, r5
	mov     r2, r4
	mov     r3, #0x8a
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      0x20237bc
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d1522

.align 2
.word 0x10200 @ 0x21d1524



Unknown_21d1528: @ 0x21d1528
.incbin "./baserom/overlay/overlay_0102.bin", 0x7a8, 0x21d15a0 - 0x21d1528


@end 0x21d15a0




