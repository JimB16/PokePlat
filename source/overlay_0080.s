

.section .iwram80, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x2006840
	mov     r2, #0x2
	mov     r5, r0
	mov     r0, #0x3
	mov     r1, #0x11
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r0, r4
	mov     r1, #0xe4
	mov     r2, #0x11
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0xe4
	mov     r4, r0
	blx     0x20d5124
	ldr     r0, [pc, #0x28] @ 0x21d0dd4, (=0x139)
	str     r5, [r4, #0x2c]
	ldrb    r0, [r5, r0]
	cmp     r0, #0x3
	bcs     branch_21d0db6
	b       branch_21d0db8

branch_21d0db6: @ 21d0db6 :thumb
	mov     r0, #0x0
branch_21d0db8: @ 21d0db8 :thumb
	strb    r0, [r4, #0x0]
	mov     r0, #0x4f
	lsl     r0, r0, #2
	ldrh    r0, [r5, r0]
	mov     r1, #0x0
	mov     r2, r1
	strh    r0, [r4, #0x2]
	mov     r0, #0x11
	str     r0, [r4, #0x4]
	mov     r0, #0x37
	bl      0x2004550
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0dd4

.word 0x139 @ 0x21d0dd4
.thumb
Function_21d0dd8: @ 21d0dd8 :thumb
	push    {r4,lr}
	bl      0x200682c
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x8
	bhi     branch_21d0e4a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0df2

Jumppoints_21d0df2:
.hword branch_21d0e04 - Jumppoints_21d0df2 - 2
.hword branch_21d0e0c - Jumppoints_21d0df2 - 2
.hword branch_21d0e4a - Jumppoints_21d0df2 - 2
.hword branch_21d0e14 - Jumppoints_21d0df2 - 2
.hword branch_21d0e22 - Jumppoints_21d0df2 - 2
.hword branch_21d0e4a - Jumppoints_21d0df2 - 2
.hword branch_21d0e30 - Jumppoints_21d0df2 - 2
.hword branch_21d0e46 - Jumppoints_21d0df2 - 2
.hword branch_21d0e3e - Jumppoints_21d0df2 - 2
.thumb
branch_21d0e04: @ 21d0e04 :thumb
	bl      Function_21d132c
	str     r0, [r4, #0x8]
	b       branch_21d0e4a
@ 0x21d0e0c

.thumb
branch_21d0e0c: @ 21d0e0c :thumb
	bl      Function_21d1354
	str     r0, [r4, #0x8]
	b       branch_21d0e4a
@ 0x21d0e14

.thumb
branch_21d0e14: @ 21d0e14 :thumb
	bl      Function_21d138c
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_21d1068
	b       branch_21d0e4a
@ 0x21d0e22

.thumb
branch_21d0e22: @ 21d0e22 :thumb
	bl      Function_21d13a0
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_21d1068
	b       branch_21d0e4a
@ 0x21d0e30

.thumb
branch_21d0e30: @ 21d0e30 :thumb
	bl      Function_21d13dc
	str     r0, [r4, #0x8]
	mov     r0, r4
	bl      Function_21d1068
	b       branch_21d0e4a
@ 0x21d0e3e

.thumb
branch_21d0e3e: @ 21d0e3e :thumb
	bl      Function_21d1438
	str     r0, [r4, #0x8]
	b       branch_21d0e4a
@ 0x21d0e46

.thumb
branch_21d0e46: @ 21d0e46 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e4a

.thumb
branch_21d0e4a: @ 21d0e4a :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0e4e


.align 2, 0


.thumb
Function_21d0e50: @ 21d0e50 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200682c
	mov     r0, r4
	bl      0x2006830
	mov     r0, #0x11
	bl      0x201807c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0e68

.thumb
Function_21d0e68: @ 21d0e68 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x24] @ 0x21d0e9c, (=0x21d2eb4)
	ldr     r1, [r1, r3]
	cmp     r1, #0x0
	beq     branch_21d0e7e
	blx     r1
.thumb
branch_21d0e7e: @ 21d0e7e :thumb
	blx     0x20a635c
	mov     r0, r4
	bl      Function_21d2aec
	ldr     r0, [r4, #0x28]
	bl      0x201c2b8
	ldr     r3, [pc, #0x10] @ 0x21d0ea0, (=0x27e0000)
	ldr     r1, [pc, #0x10] @ 0x21d0ea4, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d0e9c

.word 0x21d2eb4 @ 0x21d0e9c
.word 0x27e0000 @ 0x21d0ea0
.word 0x3ff8 @ 0x21d0ea4
.thumb
Function_21d0ea8: @ 21d0ea8 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d0ec4, (=0x21d2e6c)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d0eb2: @ 21d0eb2 :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d0eb2
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d0ec4

.word 0x21d2e6c @ 0x21d0ec4
.thumb
Function_21d0ec8: @ 21d0ec8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	beq     branch_21d0edc
	cmp     r0, #0x1
	beq     branch_21d0f82
	cmp     r0, #0x2
	beq     branch_21d0fae
	b       branch_21d0fcc
@ 0x21d0edc

.thumb
branch_21d0edc: @ 21d0edc :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0xe0] @ 0x21d0fd8, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0xdc] @ 0x21d0fdc, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r0, #0x0]
	cmp     r1, #0x0
	bne     branch_21d0f1c
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	bne     branch_21d0f1c
	mov     r0, #0x3
	str     r0, [r4, #0x20]
	mov     r0, #0x1b
	str     r0, [r4, #0x24]
	b       branch_21d0f34
@ 0x21d0f1c

.thumb
branch_21d0f1c: @ 21d0f1c :thumb
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r0, r0, #5
	str     r0, [r4, #0x20]
	ldr     r0, [r4, #0x2c]
	ldr     r1, [r0, #0x4]
	asr     r0, r1, #4
	lsr     r0, r0, #27
	add     r0, r1, r0
	asr     r0, r0, #5
	str     r0, [r4, #0x24]
.thumb
branch_21d0f34: @ 21d0f34 :thumb
	ldr     r0, [r4, #0x20]
	ldr     r2, [pc, #0xa8] @ 0x21d0fe0, (=0x1b1)
	str     r0, [r4, #0x18]
	ldr     r0, [r4, #0x24]
	mov     r1, #0x1a
	str     r0, [r4, #0x1c]
	ldr     r3, [r4, #0x4]
	mov     r0, #0x1
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0x80
	str     r0, [r1, #0x0]
	ldr     r2, [pc, #0x94] @ 0x21d0fe4, (=0x267)
	ldr     r3, [r4, #0x4]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	mov     r1, r4
	add     r1, #0x84
	str     r0, [r1, #0x0]
	ldr     r1, [r4, #0x4]
	mov     r0, #0x16
	bl      Function_2023790
	mov     r1, r4
	add     r1, #0x88
	str     r0, [r1, #0x0]
	ldr     r0, [r4, #0x4]
	bl      0x2039ebc
	str     r0, [r4, #0x30]
	ldr     r0, [pc, #0x70] @ 0x21d0fe8, (=0x21d3380)
	ldr     r1, [r4, #0x4]
	bl      Function_21d2d70
	str     r0, [r4, #0x40]
	b       branch_21d0fcc
@ 0x21d0f82

.thumb
branch_21d0f82: @ 21d0f82 :thumb
	bl      Function_21d0ea8
	ldr     r0, [r4, #0x4]
	bl      0x2018340
	str     r0, [r4, #0x28]
	ldr     r1, [r4, #0x28]
	mov     r0, r4
	bl      Function_21d1088
	mov     r0, r4
	bl      Function_21d1158
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	mov     r0, r4
	bl      Function_21d2a08
	b       branch_21d0fcc
@ 0x21d0fae

.thumb
branch_21d0fae: @ 21d0fae :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d0fec, (=0x21d0e69)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x24
	mov     r2, r1
	mul     r2, r0
	ldr     r0, [pc, #0x30] @ 0x21d0ff0, (=0x21d2ea4)
	ldr     r0, [r0, r2]
	str     r0, [r4, #0x38]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d0fcc

.thumb
branch_21d0fcc: @ 21d0fcc :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d0fd6


.align 2


.word 0xffffe0ff @ 0x21d0fd8
.word 0x4001000 @ 0x21d0fdc
.word 0x1b1 @ 0x21d0fe0
.word 0x267 @ 0x21d0fe4
.word 0x21d3380 @ 0x21d0fe8
.word 0x21d0e69 @ 0x21d0fec
.word 0x21d2ea4 @ 0x21d0ff0
.thumb
Function_21d0ff4: @ 21d0ff4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x201e530
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, #0x1f
	mov     r1, #0x0
	bl      0x201ff74
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	mov     r0, r5
	bl      Function_21d2ac0
	mov     r0, r5
	bl      Function_21d12d8
	mov     r4, #0x0
.thumb
branch_21d1026: @ 21d1026 :thumb
	lsl     r1, r4, #24
	ldr     r0, [r5, #0x28]
	lsr     r1, r1, #24
	bl      0x2019044
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x8
	blt     branch_21d1026
	ldr     r0, [r5, #0x28]
	bl      free
	ldr     r0, [r5, #0x40]
	bl      Function_21d2e10
	ldr     r0, [r5, #0x30]
	bl      0x2039ef0
	mov     r0, r5
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      Function_200b190
	add     r5, #0x80
	ldr     r0, [r5, #0x0]
	bl      Function_200b190
	pop     {r3-r5,pc}
@ 0x21d1066


.align 2, 0


.thumb
Function_21d1068: @ 21d1068 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc] @ 0x21d1084, (=0x21d2eac)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, r4
	bl      Function_21d2ae0
	pop     {r4,pc}
@ 0x21d1082

.align 2
.word 0x21d2eac @ 0x21d1084



.thumb
Function_21d1088: @ 21d1088 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xf4
	ldr     r4, [pc, #0xc0] @ 0x21d1150, (=Unknown_21d2e5c)
	add     r3, sp, #0x4
	str     r0, [sp, #0x0]
	mov     r6, r1
	mov     r2, r3
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r4, [pc, #0xac] @ 0x21d1154, (=0x21d2f00)
	add     r3, sp, #0x14
	mov     r2, #0x1c
.thumb
branch_21d10aa: @ 21d10aa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d10aa
	mov     r4, #0x0
	mov     r7, r4
	add     r5, sp, #0x14
.thumb
branch_21d10b8: @ 21d10b8 :thumb
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	mov     r2, r5
	mov     r3, #0x0
	bl      0x20183c4
	lsl     r1, r4, #24
	mov     r0, r6
	lsr     r1, r1, #24
	.hword  0x1c64 @ add r4, r4, #0x1
	bl      0x2019ebc
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x1c
	cmp     r7, #0x8
	blt     branch_21d10b8
	ldr     r3, [sp, #0x0]
	mov     r0, #0x0
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, r0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x1
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x2
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x3
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x4
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x5
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x6
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [sp, #0x0]
	mov     r0, #0x7
	ldr     r3, [r3, #0x4]
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	add     sp, #0xf4
	pop     {r4-r7,pc}
@ 0x21d114e

.align 2
.word Unknown_21d2e5c @ 0x21d1150
.word 0x21d2f00 @ 0x21d1154



.thumb
Function_21d1158: @ 21d1158 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r1, [r5, #0x4]
	mov     r0, #0x11
	bl      0x2006c24
	mov     r4, r0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x11
	bl      0x208c210
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x6
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x11
	bl      0x208c210
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x5
	str     r0, [sp, #0x4]
	mov     r0, #0x0
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x11
	bl      0x208c210
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	str     r1, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x11
	bl      0x208c210
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x4
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	ldr     r1, [r5, #0x4]
	mov     r2, r4
	mov     r3, #0x11
	bl      0x208c210
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x18
	add     r3, #0xb8
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0x98
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x16
	add     r3, #0xbc
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x17
	add     r3, #0xc0
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xa0
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x19
	add     r3, #0xc4
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xa4
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x1a
	add     r3, #0xc8
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x1b
	add     r3, #0xcc
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xac
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x1c
	add     r3, #0xd0
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x4]
	mov     r3, r5
	str     r0, [sp, #0x0]
	mov     r0, r4
	mov     r1, #0x11
	mov     r2, #0x1d
	add     r3, #0xd4
	bl      0x208c2f4
	mov     r1, r5
	add     r1, #0xb4
	str     r0, [r1, #0x0]
	mov     r0, r4
	bl      0x2006ca8
	mov     r1, #0x1e
	ldr     r2, [r5, #0x4]
	mov     r0, #0x0
	lsl     r1, r1, #4
	bl      0x2002e7c
	mov     r1, #0x1e
	ldr     r2, [r5, #0x4]
	mov     r0, #0x4
	lsl     r1, r1, #4
	bl      0x2002e7c
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d12d6


.align 2, 0


.thumb
Function_21d12d8: @ 21d12d8 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xb4
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	bl      free
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      free
	add     r4, #0x98
	ldr     r0, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x21d132a


.align 2, 0


.thumb
Function_21d132c: @ 21d132c :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d0ec8
	cmp     r0, #0x1
	beq     branch_21d133c
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d133c

.thumb
branch_21d133c: @ 21d133c :thumb
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r0, r4
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x8] @ 0x21d1350, (=0x21d2e94)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1350

.word 0x21d2e94 @ 0x21d1350
.thumb
Function_21d1354: @ 21d1354 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x20] @ 0x21d1384, (=0x21d2e98)
	ldr     r1, [r1, r3]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d136e
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d136e

.thumb
branch_21d136e: @ 21d136e :thumb
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r0, r4
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc] @ 0x21d1388, (=0x21d2e9c)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, #0x3
	pop     {r4,pc}
@ 0x21d1382


.align 2


.word 0x21d2e98 @ 0x21d1384
.word 0x21d2e9c @ 0x21d1388
.thumb
Function_21d138c: @ 21d138c :thumb
	push    {r3,lr}
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d139a
	mov     r0, #0x4
	pop     {r3,pc}
@ 0x21d139a

.thumb
branch_21d139a: @ 21d139a :thumb
	mov     r0, #0x3
	pop     {r3,pc}
@ 0x21d139e


.align 2, 0


.thumb
Function_21d13a0: @ 21d13a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x38]
	blx     r1
	cmp     r0, #0x1
	beq     branch_21d13c0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r0, r4
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0x1c] @ 0x21d13d4, (=0x21d2ea8)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, #0x4
	pop     {r4,pc}
@ 0x21d13c0

.thumb
branch_21d13c0: @ 21d13c0 :thumb
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r0, r4
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc] @ 0x21d13d8, (=0x21d2ea0)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, #0x6
	pop     {r4,pc}
@ 0x21d13d4

.word 0x21d2ea8 @ 0x21d13d4
.word 0x21d2ea0 @ 0x21d13d8
.thumb
Function_21d13dc: @ 21d13dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d141a
	mov     r1, #0x0
	ldr     r0, [pc, #0x40] @ 0x21d1430, (=0x4000050)
	mov     r2, r1
	mov     r3, #0x1f
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	bl      0x200f32c
	mov     r0, #0x1
	bl      0x200f32c
	add     sp, #0x4
	mov     r0, #0x8
	pop     {r3,r4,pc}
@ 0x21d141a

.thumb
branch_21d141a: @ 21d141a :thumb
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r0, r4
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc] @ 0x21d1434, (=0x21d2ea8)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, #0x6
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1430

.word 0x4000050 @ 0x21d1430
.word 0x21d2ea8 @ 0x21d1434
.thumb
Function_21d1438: @ 21d1438 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x24
	mov     r3, r2
	mul     r3, r1
	ldr     r1, [pc, #0xc] @ 0x21d1454, (=0x21d2eb0)
	ldr     r1, [r1, r3]
	blx     r1
	mov     r0, r4
	bl      Function_21d0ff4
	mov     r0, #0x7
	pop     {r4,pc}
@ 0x21d1454

.word 0x21d2eb0 @ 0x21d1454
.thumb
Function_21d1458: @ 21d1458 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x11
	ldr     r0, [r4, #0x4]
	lsl     r1, r1, #4
	bl      malloc_maybe
	mov     r2, #0x11
	mov     r1, #0x0
	lsl     r2, r2, #4
	str     r0, [r4, #0x34]
	blx     0x20d5124
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d1476


.align 2, 0


.thumb
Function_21d1478: @ 21d1478 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	bl      Function_21d225c
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x2
	beq     branch_21d148e
	mov     r0, r5
	bl      Function_21d2700
.thumb
branch_21d148e: @ 21d148e :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_21d2c1c
	mov     r0, r5
	bl      Function_21d1f14
	mov     r0, r4
	bl      free
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d14a8

.thumb
Function_21d14a8: @ 21d14a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	ldr     r1, [r4, #0x0]
	cmp     r1, #0x0
	beq     branch_21d14ba
	cmp     r1, #0x1
	beq     branch_21d1504
	b       branch_21d1546
@ 0x21d14ba

.thumb
branch_21d14ba: @ 21d14ba :thumb
	ldr     r1, [r5, #0x18]
	str     r1, [r4, #0x18]
	ldr     r1, [r5, #0x1c]
	str     r1, [r4, #0x1c]
	mov     r1, #0x0
	mvn     r1, r1
	str     r1, [r4, #0x20]
	ldr     r1, [r4, #0x18]
	lsl     r2, r1, #4
	mov     r1, r4
	sub     r2, #0x68
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	ldr     r1, [r4, #0x1c]
	lsl     r2, r1, #4
	mov     r1, r4
	sub     r2, #0x60
	add     r1, #0x90
	str     r2, [r1, #0x0]
	mov     r1, r4
	mov     r2, r4
	add     r1, #0x8c
	add     r2, #0x90
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	bl      Function_21d24bc
	mov     r0, r5
	bl      Function_21d1df8
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x2
	beq     branch_21d1546
	mov     r0, r5
	bl      Function_21d259c
	b       branch_21d1546
@ 0x21d1504

.thumb
branch_21d1504: @ 21d1504 :thumb
	bl      Function_21d20dc
	mov     r0, r5
	bl      Function_21d2398
	ldr     r0, [r5, #0x4]
	mov     r1, r5
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0xd8
	add     r1, #0xdc
	mov     r2, #0x49
	ldr     r3, [r5, #0x2c]
	lsl     r2, r2, #2
	add     r2, r3, r2
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r3, #0x14
	bl      Function_21d2af4
	mov     r1, r4
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	bl      Function_21d1a30
	mov     r0, r5
	bl      Function_21d19e4
	mov     r0, #0x0
	str     r0, [r4, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1546

.thumb
branch_21d1546: @ 21d1546 :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1550

.thumb
Function_21d1550: @ 21d1550 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [r0, #0x14]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	mov     r2, #0x25
	str     r0, [sp, #0x8]
	mov     r0, r1
	mov     r1, #0x11
	bl      0x200f174
	ldr     r0, [pc, #0x24] @ 0x21d1594, (=0x68f)
	bl      Function_2005748
	mov     r0, #0x0
	bl      0x200f338
	mov     r0, #0x1
	bl      0x200f338
	mov     r1, #0x4
	ldr     r0, [pc, #0x14] @ 0x21d1598, (=0x4000050)
	mov     r2, #0x8
	mov     r3, #0x1c
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x0
	add     sp, #0xc
	pop     {pc}
@ 0x21d1594

.word 0x68f @ 0x21d1594
.word 0x4000050 @ 0x21d1598
.thumb
Function_21d159c: @ 21d159c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [r0, #0x14]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0x2
	mov     r2, #0x24
	bl      0x200f174
	mov     r0, #0x69
	lsl     r0, r0, #4
	bl      Function_2005748
	mov     r0, #0x0
	add     sp, #0xc
	pop     {pc}
@ 0x21d15c8

.thumb
Function_21d15c8: @ 21d15c8 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [r0, #0x14]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x11
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	bl      0x200f174
	ldr     r0, [pc, #0x20] @ 0x21d1608, (=0x68f)
	bl      Function_2005748
	mov     r0, #0x0
	bl      0x200f338
	mov     r1, #0x4
	ldr     r0, [pc, #0x14] @ 0x21d160c, (=0x4000050)
	mov     r2, #0x8
	mov     r3, #0x1c
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x0
	add     sp, #0xc
	pop     {pc}
@ 0x21d1606


.align 2


.word 0x68f @ 0x21d1608
.word 0x4000050 @ 0x21d160c
.thumb
Function_21d1610: @ 21d1610 :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r3, #0x0
	str     r3, [r0, #0x14]
	mov     r1, #0x6
	str     r1, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	ldr     r0, [r0, #0x4]
	mov     r1, #0x10
	str     r0, [sp, #0x8]
	mov     r0, #0x3
	mov     r2, r1
	bl      0x200f174
	mov     r0, #0x69
	lsl     r0, r0, #4
	bl      Function_2005748
	mov     r0, #0x0
	add     sp, #0xc
	pop     {pc}
@ 0x21d163c

.thumb
Function_21d163c: @ 21d163c :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x34]
	ldrb    r3, [r1, #0x14]
	cmp     r3, #0x1
	bhi     branch_21d165a
	ldr     r1, [pc, #0x28] @ 0x21d1670, (=0x21bf67c)
	ldr     r2, [r1, #0x48]
	mov     r1, #0x2
	tst     r1, r2
	beq     branch_21d165a
	ldr     r0, [pc, #0x20] @ 0x21d1674, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d165a

.thumb
branch_21d165a: @ 21d165a :thumb
	cmp     r3, #0x1
	bls     branch_21d1662
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1662

.thumb
branch_21d1662: @ 21d1662 :thumb
	ldr     r1, [pc, #0xc] @ 0x21d1670, (=0x21bf67c)
	ldr     r1, [r1, #0x44]
	bl      Function_21d18f8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d166e


.align 2


.word 0x21bf67c @ 0x21d1670
.word 0x5dd @ 0x21d1674
.thumb
Function_21d1678: @ 21d1678 :thumb
	push    {r3,lr}
	ldr     r1, [r0, #0x34]
	ldrb    r1, [r1, #0x14]
	cmp     r1, #0x1
	bhi     branch_21d16b2
	ldr     r2, [pc, #0x44] @ 0x21d16c8, (=0x21bf67c)
	ldr     r3, [r2, #0x48]
	mov     r2, #0x1
	tst     r2, r3
	beq     branch_21d16a2
	bl      Function_21d29bc
	cmp     r0, #0x0
	beq     branch_21d169e
	ldr     r0, [pc, #0x34] @ 0x21d16cc, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d169e

.thumb
branch_21d169e: @ 21d169e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d16a2

.thumb
branch_21d16a2: @ 21d16a2 :thumb
	mov     r2, #0x2
	tst     r2, r3
	beq     branch_21d16b2
	ldr     r0, [pc, #0x20] @ 0x21d16cc, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d16b2

.thumb
branch_21d16b2: @ 21d16b2 :thumb
	cmp     r1, #0x1
	bls     branch_21d16ba
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d16ba

.thumb
branch_21d16ba: @ 21d16ba :thumb
	ldr     r1, [pc, #0xc] @ 0x21d16c8, (=0x21bf67c)
	ldr     r1, [r1, #0x44]
	bl      Function_21d18f8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d16c6


.align 2


.word 0x21bf67c @ 0x21d16c8
.word 0x5dd @ 0x21d16cc
.thumb
Function_21d16d0: @ 21d16d0 :thumb
	push    {r3,lr}
	ldr     r2, [pc, #0x1c] @ 0x21d16f0, (=0x21bf67c)
	mov     r1, #0x2
	ldr     r3, [r2, #0x48]
	tst     r1, r3
	beq     branch_21d16e6
	ldr     r0, [pc, #0x14] @ 0x21d16f4, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d16e6

.thumb
branch_21d16e6: @ 21d16e6 :thumb
	ldr     r1, [r2, #0x44]
	bl      Function_21d18f8
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d16f0

.word 0x21bf67c @ 0x21d16f0
.word 0x5dd @ 0x21d16f4
.thumb
Function_21d16f8: @ 21d16f8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	mov     r1, #0x1
	ldrb    r2, [r4, #0x12]
	tst     r1, r2
	beq     branch_21d1724
	ldrb    r1, [r4, #0x15]
	lsl     r1, r1, #28
	lsr     r1, r1, #28
	cmp     r1, #0x2
	bcc     branch_21d1738
	bl      Function_21d19e4
	mov     r0, #0x0
	strb    r0, [r4, #0x12]
	strh    r0, [r4, #0x16]
	ldrb    r1, [r4, #0x15]
	mov     r0, #0xf
	bic     r1, r0
	strb    r1, [r4, #0x15]
	b       branch_21d1738
@ 0x21d1724

.thumb
branch_21d1724: @ 21d1724 :thumb
	ldrb    r1, [r4, #0x10]
	cmp     r1, #0x1
	bne     branch_21d1738
	ldrh    r1, [r4, #0x16]
	cmp     r1, #0x1
	bne     branch_21d1738
	ldr     r2, [r4, #0x20]
	mov     r1, #0x0
	bl      Function_21d1d24
.thumb
branch_21d1738: @ 21d1738 :thumb
	mov     r0, r5
	bl      Function_21d1c24
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1742


.align 2, 0


.thumb
Function_21d1744: @ 21d1744 :thumb
	push    {r3,lr}
	mov     r1, r0
	ldr     r0, [r1, #0x34]
	ldrb    r1, [r1, #0x0]
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_21d2d28
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1758

.thumb
Function_21d1758: @ 21d1758 :thumb
	push    {r4-r7,lr}
	add     sp, #-0xc
	mov     r6, r0
	mov     r1, r6
	add     r1, #0x94
	ldr     r5, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x90
	ldr     r7, [r1, #0x0]
	mov     r1, r6
	add     r1, #0x8c
	ldr     r1, [r1, #0x0]
	ldr     r4, [r6, #0x34]
	cmp     r1, #0x0
	bne     branch_21d177c
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21d177c

.thumb
branch_21d177c: @ 21d177c :thumb
	mov     r1, r6
	mov     r2, #0x0
	add     r1, #0x8c
	str     r2, [r1, #0x0]
	cmp     r5, #0x0
	bne     branch_21d179c
	add     r4, #0x58
	mov     r1, r4
	bl      Function_21d1b5c
	mov     r0, r6
	bl      Function_21d1d38
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21d179c

.thumb
branch_21d179c: @ 21d179c :thumb
	mov     r1, r4
	add     r1, #0x58
	mov     r2, r5
	bl      Function_21d1b5c
	mov     r0, r6
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	bl      0x20237e8
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	mov     r0, r6
	mov     r1, r7
	bl      Function_21d1a58
	ldrh    r0, [r5, #0x4]
	ldr     r2, [pc, #0x84] @ 0x21d1844, (=0x13b)
	mov     r1, #0x4
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldrh    r0, [r5, #0x6]
	mov     r3, #0xe
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x4]
	str     r0, [sp, #0x8]
	ldr     r0, [r6, #0x28]
	bl      0x200e2a4
	ldrh    r0, [r5, #0x4]
	cmp     r0, #0x1
	bhi     branch_21d17e4
	mov     r7, r4
	add     r7, #0x38
	b       branch_21d17e8
@ 0x21d17e4

.thumb
branch_21d17e4: @ 21d17e4 :thumb
	mov     r7, r4
	add     r7, #0x48
.thumb
branch_21d17e8: @ 21d17e8 :thumb
	str     r7, [r4, #0x78]
	ldrb    r0, [r4, #0x15]
	mov     r1, #0xf0
	ldr     r2, [pc, #0x54] @ 0x21d1844, (=0x13b)
	bic     r0, r1
	ldrh    r1, [r5, #0x4]
	mov     r3, #0xe
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	lsl     r1, r1, #28
	lsr     r1, r1, #24
	orr     r0, r1
	strb    r0, [r4, #0x15]
	ldrh    r0, [r5, #0x4]
	mov     r1, #0x1
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r7
	bl      0x200e69c
	mov     r0, r7
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	str     r3, [sp, #0x8]
	add     r6, #0x88
	ldr     r2, [r6, #0x0]
	mov     r0, r7
	mov     r1, #0x1
	bl      0x201d738
	mov     r0, r7
	bl      0x201a954
	add     r4, #0x58
	mov     r0, r4
	bl      0x201a954
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r4-r7,pc}
@ 0x21d1844

.word 0x13b @ 0x21d1844
.thumb
Function_21d1848: @ 21d1848 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r6, r1
	mov     r0, #0x1
	sub     r0, r0, r6
	ldr     r1, [pc, #0x40] @ 0x21d1898, (=0x21d2fec)
	lsl     r0, r0, #2
	add     r0, r1, r0
	bl      0x2022664
	mov     r4, r0
	mov     r0, #0x0
	mvn     r0, r0
	cmp     r4, r0
	beq     branch_21d186c
	cmp     r6, #0x1
	bne     branch_21d1872
.thumb
branch_21d186c: @ 21d186c :thumb
	add     sp, #0x8
	mov     r0, r4
	pop     {r4-r6,pc}
@ 0x21d1872

.thumb
branch_21d1872: @ 21d1872 :thumb
	mov     r1, #0x12
	add     r0, sp, #0x4
	strh    r1, [r0, #0x0]
	add     r0, sp, #0x4
	str     r0, [sp, #0x0]
	ldr     r3, [pc, #0x1c] @ 0x21d189c, (=0x21bf6bc)
	ldr     r0, [r5, #0x28]
	ldrh    r2, [r3, #0x1c]
	ldrh    r3, [r3, #0x1e]
	mov     r1, #0x5
	bl      0x201c784
	cmp     r0, #0x0
	beq     branch_21d1892
	mov     r4, #0x0
	mvn     r4, r4
.thumb
branch_21d1892: @ 21d1892 :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d1898

.word 0x21d2fec @ 0x21d1898
.word 0x21bf6bc @ 0x21d189c
.thumb
Function_21d18a0: @ 21d18a0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r1, [r5, #0x2c]
	ldr     r0, [pc, #0x4c] @ 0x21d18f4, (=0x139)
	ldr     r4, [r5, #0x34]
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_21d18b4
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d18b4

.thumb
branch_21d18b4: @ 21d18b4 :thumb
	bl      0x202278c
	cmp     r0, #0x0
	ldrb    r0, [r4, #0x14]
	beq     branch_21d18e2
	cmp     r0, #0x0
	bne     branch_21d18f0
	ldrb    r1, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d1848
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d18f0
	ldrb    r1, [r4, #0x10]
	mov     r0, r5
	bl      Function_21d273c
	mov     r0, #0x3
	strb    r0, [r4, #0x14]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d18e2

.thumb
branch_21d18e2: @ 21d18e2 :thumb
	cmp     r0, #0x3
	beq     branch_21d18ea
	cmp     r0, #0x1
	bne     branch_21d18f0
.thumb
branch_21d18ea: @ 21d18ea :thumb
	ldrb    r0, [r4, #0x14]
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r0, [r4, #0x14]
.thumb
branch_21d18f0: @ 21d18f0 :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d18f4

.word 0x139 @ 0x21d18f4
.thumb
Function_21d18f8: @ 21d18f8 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x34]
	mov     r5, r1
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x0
	beq     branch_21d1928
	mov     r0, #0xf0
	tst     r0, r5
	bne     branch_21d19e0
	ldrb    r2, [r4, #0x15]
	lsl     r0, r2, #28
	lsr     r1, r0, #28
	cmp     r1, #0x1
	bne     branch_21d19e0
	mov     r0, #0xf
	bic     r2, r0
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0xf
	and     r0, r1
	orr     r0, r2
	strb    r0, [r4, #0x15]
	pop     {r3-r5,pc}
@ 0x21d1928

.thumb
branch_21d1928: @ 21d1928 :thumb
	bl      Function_21d18a0
	cmp     r0, #0x0
	bne     branch_21d19e0
	mov     r0, #0xf0
	tst     r0, r5
	bne     branch_21d1954
	ldrb    r2, [r4, #0x15]
	lsl     r0, r2, #28
	lsr     r1, r0, #28
	cmp     r1, #0x1
	bne     branch_21d19e0
	mov     r0, #0xf
	bic     r2, r0
	add     r0, r1, #0x1
	lsl     r0, r0, #24
	lsr     r1, r0, #24
	mov     r0, #0xf
	and     r0, r1
	orr     r0, r2
	strb    r0, [r4, #0x15]
	pop     {r3-r5,pc}
@ 0x21d1954

.thumb
branch_21d1954: @ 21d1954 :thumb
	mov     r0, #0x40
	tst     r0, r5
	beq     branch_21d196c
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x7
	blt     branch_21d196c
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x8
	orr     r0, r1
	strb    r0, [r4, #0x11]
.thumb
branch_21d196c: @ 21d196c :thumb
	mov     r0, #0x80
	tst     r0, r5
	beq     branch_21d1984
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x1b
	bgt     branch_21d1984
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x4
	orr     r0, r1
	strb    r0, [r4, #0x11]
.thumb
branch_21d1984: @ 21d1984 :thumb
	mov     r0, #0x10
	tst     r0, r5
	beq     branch_21d199c
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x1b
	bgt     branch_21d199c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x18]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0x11]
.thumb
branch_21d199c: @ 21d199c :thumb
	mov     r0, #0x20
	tst     r0, r5
	beq     branch_21d19b4
	ldr     r0, [r4, #0x18]
	cmp     r0, #0x2
	blt     branch_21d19b4
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0x18]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0x11]
.thumb
branch_21d19b4: @ 21d19b4 :thumb
	mov     r0, #0x3
	strb    r0, [r4, #0x13]
	ldrb    r1, [r4, #0x11]
	mov     r0, #0x80
	orr     r0, r1
	strb    r0, [r4, #0x11]
	ldrb    r0, [r4, #0x12]
	cmp     r0, #0x0
	beq     branch_21d19cc
	ldrh    r0, [r4, #0x16]
	.hword  0x1c40 @ add r0, r0, #0x1
	b       branch_21d19ce
@ 0x21d19cc

.thumb
branch_21d19cc: @ 21d19cc :thumb
	mov     r0, #0x0
.thumb
branch_21d19ce: @ 21d19ce :thumb
	strh    r0, [r4, #0x16]
	mov     r0, #0x0
	strb    r0, [r4, #0x12]
	ldrb    r1, [r4, #0x15]
	mov     r0, #0xf
	bic     r1, r0
	mov     r0, #0x1
	orr     r0, r1
	strb    r0, [r4, #0x15]
.thumb
branch_21d19e0: @ 21d19e0 :thumb
	pop     {r3-r5,pc}
@ 0x21d19e2


.align 2, 0


.thumb
Function_21d19e4: @ 21d19e4 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	ldr     r1, [r4, #0x1c]
	str     r1, [sp, #0x0]
	mov     r1, r4
	ldr     r2, [r4, #0x20]
	ldr     r3, [r4, #0x18]
	add     r1, #0x28
	bl      Function_21d1ab0
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      Function_21d2cc0
	ldrb    r0, [r4, #0x10]
	cmp     r0, #0x1
	bne     branch_21d1a2e
	mov     r1, r4
	add     r1, #0xa0
	ldr     r1, [r1, #0x0]
	ldr     r2, [r4, #0x20]
	mov     r0, r5
	bl      Function_21d1d24
	ldr     r0, [r5, #0x28]
	mov     r1, #0x4
	bl      0x201c3c0
	ldr     r0, [r5, #0x28]
	mov     r1, #0x5
	bl      0x201c3c0
.thumb
branch_21d1a2e: @ 21d1a2e :thumb
	pop     {r3-r5,pc}
@ 0x21d1a30

.thumb
Function_21d1a30: @ 21d1a30 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	ldr     r0, [r4, #0x20]
	str     r0, [r4, #0x24]
	ldr     r0, [r5, #0x30]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x1c]
	bl      0x2039f04
	str     r0, [r4, #0x20]
	ldrh    r3, [r5, #0x2]
	ldr     r0, [r5, #0x40]
	ldr     r1, [r4, #0x18]
	ldr     r2, [r4, #0x1c]
	bl      Function_21d2e24
	add     r4, #0xa0
	str     r0, [r4, #0x0]
	pop     {r3-r5,pc}
@ 0x21d1a58

.thumb
Function_21d1a58: @ 21d1a58 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21d1a6e
	mov     r0, r1
	ldr     r1, [r4, #0x4]
	add     r4, #0x88
	ldr     r2, [r4, #0x0]
	bl      0x2071d10
	pop     {r3-r5,pc}
@ 0x21d1a6e

.thumb
branch_21d1a6e: @ 21d1a6e :thumb
	ldr     r5, [pc, #0x38] @ 0x21d1aa8, (=0x21d3080)
	mov     r1, #0x0
.thumb
branch_21d1a72: @ 21d1a72 :thumb
	ldrh    r0, [r5, #0x0]
	cmp     r2, r0
	bne     branch_21d1a90
	ldrh    r0, [r5, #0x2]
	cmp     r3, r0
	bne     branch_21d1a90
	ldr     r0, [pc, #0x2c] @ 0x21d1aac, (=0x21d3084)
	lsl     r1, r1, #3
	ldr     r0, [r0, r1]
	ldr     r1, [r4, #0x4]
	add     r4, #0x88
	ldr     r2, [r4, #0x0]
	bl      0x2071d10
	pop     {r3-r5,pc}
@ 0x21d1a90

.thumb
branch_21d1a90: @ 21d1a90 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	add     r5, #0x8
	cmp     r1, #0xd
	bcc     branch_21d1a72
	ldr     r1, [r4, #0x4]
	add     r4, #0x88
	ldr     r2, [r4, #0x0]
	mov     r0, #0x0
	bl      0x2071d10
	pop     {r3-r5,pc}
@ 0x21d1aa6


.align 2


.word 0x21d3080 @ 0x21d1aa8
.word 0x21d3084 @ 0x21d1aac
.thumb
Function_21d1ab0: @ 21d1ab0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	add     r0, #0x88
	ldr     r0, [r0, #0x0]
	mov     r4, r1
	ldr     r6, [r5, #0x34]
	mov     r7, r2
	str     r3, [sp, #0x10]
	bl      0x20237e8
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_201ada4
	add     r6, #0xa0
	ldr     r0, [r6, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1b1c
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x28]
	mov     r0, r5
	mov     r1, r7
	bl      Function_21d1a58
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1aec
	mov     r3, #0x7a
	b       branch_21d1b00
@ 0x21d1aec

.thumb
branch_21d1aec: @ 21d1aec :thumb
	mov     r1, r5
	add     r1, #0x88
	mov     r0, #0x0
	ldr     r1, [r1, #0x0]
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0xd0
	sub     r0, r1, r0
	lsr     r3, r0, #1
.thumb
branch_21d1b00: @ 21d1b00 :thumb
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x4c] @ 0x21d1b58, (=0x10200)
	mov     r2, r5
	str     r0, [sp, #0x8]
	mov     r1, #0x0
	str     r1, [sp, #0xc]
	add     r2, #0x88
	ldr     r2, [r2, #0x0]
	mov     r0, r4
	bl      0x201d78c
.thumb
branch_21d1b1c: @ 21d1b1c :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1b4e
	add     r5, #0x84
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	bl      Function_200b1ec
	mov     r5, r0
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x21d1b58, (=0x10200)
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	mov     r0, r4
	mov     r2, r5
	mov     r3, r1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_21d1b4e: @ 21d1b4e :thumb
	mov     r0, r4
	bl      0x201a954
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d1b58

.word 0x10200 @ 0x21d1b58
.thumb
Function_21d1b5c: @ 21d1b5c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	mov     r6, r1
	mov     r4, r2
	bne     branch_21d1b80
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r6
	bl      0x201a954
	mov     r0, r6
	bl      0x201acf4
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1b80

.thumb
branch_21d1b80: @ 21d1b80 :thumb
	mov     r0, r6
	mov     r1, #0x0
	bl      Function_201ada4
	ldrh    r1, [r4, #0x8]
	ldr     r0, [pc, #0x90] @ 0x21d1c1c, (=0xffff)
	cmp     r1, r0
	beq     branch_21d1bd0
	ldr     r2, [r5, #0x2c]
	ldrh    r0, [r4, #0x16]
	add     r2, #0x5c
	ldrb    r0, [r2, r0]
	lsl     r2, r0, #30
	lsr     r2, r2, #30
	beq     branch_21d1ba4
	lsl     r0, r0, #28
	lsr     r0, r0, #30
	beq     branch_21d1bd0
.thumb
branch_21d1ba4: @ 21d1ba4 :thumb
	mov     r0, r5
	add     r0, #0x84
	ldr     r0, [r0, #0x0]
	bl      Function_200b1ec
	mov     r7, r0
	ldrh    r0, [r4, #0xe]
	mov     r1, #0x0
	mov     r2, r7
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x60] @ 0x21d1c20, (=0x10200)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldrh    r3, [r4, #0xc]
	mov     r0, r6
	bl      0x201d78c
	mov     r0, r7
	bl      Function_20237bc
.thumb
branch_21d1bd0: @ 21d1bd0 :thumb
	ldrh    r1, [r4, #0xa]
	ldr     r0, [pc, #0x48] @ 0x21d1c1c, (=0xffff)
	cmp     r1, r0
	beq     branch_21d1c16
	ldr     r2, [r5, #0x2c]
	ldrh    r0, [r4, #0x16]
	add     r2, #0x5c
	ldrb    r0, [r2, r0]
	lsl     r2, r0, #26
	lsr     r2, r2, #30
	beq     branch_21d1bec
	lsl     r0, r0, #24
	lsr     r0, r0, #30
	beq     branch_21d1c16
.thumb
branch_21d1bec: @ 21d1bec :thumb
	add     r5, #0x84
	ldr     r0, [r5, #0x0]
	bl      Function_200b1ec
	mov     r5, r0
	ldrh    r0, [r4, #0x12]
	mov     r1, #0x0
	mov     r2, r5
	str     r0, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1c] @ 0x21d1c20, (=0x10200)
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	ldrh    r3, [r4, #0x10]
	mov     r0, r6
	bl      0x201d78c
	mov     r0, r5
	bl      Function_20237bc
.thumb
branch_21d1c16: @ 21d1c16 :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d1c1a


.align 2


.word 0xffff @ 0x21d1c1c
.word 0x10200 @ 0x21d1c20
.thumb
Function_21d1c24: @ 21d1c24 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	ldr     r5, [r6, #0x34]
	mov     r4, #0x5
	ldrb    r1, [r5, #0x13]
	cmp     r1, #0x0
	beq     branch_21d1d20
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r0, [r5, #0x13]
	cmp     r1, #0x3
	bne     branch_21d1c94
	ldr     r1, [r5, #0x18]
	mov     r0, r4
	mov     r2, #0x7
	mov     r3, r1
	mul     r3, r2
	add     r3, #0x19
	lsl     r1, r3, #16
	ldr     r3, [r5, #0x1c]
	add     r0, #0xff
	mul     r2, r3
	sub     r2, #0x22
	lsl     r2, r2, #16
	ldr     r0, [r5, r0]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x200d494
	mov     r0, r4
	add     r0, #0xff
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	lsl     r1, r1, #12
	bl      Function_2021e2c
	mov     r0, r6
	bl      Function_21d1a30
	ldr     r0, [r5, #0x18]
	ldr     r7, [r5, #0x1c]
	str     r0, [sp, #0x4]
	ldr     r0, [r6, #0x30]
	ldr     r1, [sp, #0x4]
	mov     r2, r7
	bl      0x2039f04
	mov     r1, r5
	mov     r2, r0
	ldr     r3, [sp, #0x4]
	mov     r0, r6
	add     r1, #0x28
	str     r7, [sp, #0x0]
	bl      Function_21d1ab0
	.hword  0x1c64 @ add r4, r4, #0x1
.thumb
branch_21d1c94: @ 21d1c94 :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d1caa
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	sub     r1, r0, r4
	mov     r0, r5
	add     r0, #0x90
	str     r1, [r0, #0x0]
.thumb
branch_21d1caa: @ 21d1caa :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_21d1cc0
	mov     r0, r5
	add     r0, #0x90
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	mov     r0, r5
	add     r0, #0x90
	str     r1, [r0, #0x0]
.thumb
branch_21d1cc0: @ 21d1cc0 :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d1cd6
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	mov     r0, r5
	add     r0, #0x8c
	str     r1, [r0, #0x0]
.thumb
branch_21d1cd6: @ 21d1cd6 :thumb
	ldrb    r1, [r5, #0x11]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d1cec
	mov     r0, r5
	add     r0, #0x8c
	ldr     r0, [r0, #0x0]
	sub     r1, r0, r4
	mov     r0, r5
	add     r0, #0x8c
	str     r1, [r0, #0x0]
.thumb
branch_21d1cec: @ 21d1cec :thumb
	mov     r1, r5
	mov     r2, r5
	add     r1, #0x8c
	add     r2, #0x90
	ldr     r1, [r1, #0x0]
	ldr     r2, [r2, #0x0]
	mov     r0, r6
	bl      Function_21d24bc
	ldrb    r0, [r5, #0x13]
	cmp     r0, #0x0
	bne     branch_21d1d20
	mov     r0, #0x1
	strb    r0, [r5, #0x12]
	mov     r2, #0x0
	strb    r2, [r5, #0x11]
	ldr     r1, [r5, #0x24]
	ldr     r0, [r5, #0x20]
	cmp     r1, r0
	beq     branch_21d1d20
	add     r5, #0x9c
	ldr     r0, [r5, #0x0]
	.hword  0x1e51 @ sub r1, r2, #0x1
	mov     r3, r2
	bl      Function_21d2cc0
.thumb
branch_21d1d20: @ 21d1d20 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1d24

.thumb
Function_21d1d24: @ 21d1d24 :thumb
	mov     r3, r0
	add     r3, #0x90
	str     r2, [r3, #0x0]
	mov     r2, r0
	add     r2, #0x94
	str     r1, [r2, #0x0]
	mov     r1, #0x1
	add     r0, #0x8c
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21d1d38

.thumb
Function_21d1d38: @ 21d1d38 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldr     r4, [r6, #0x34]
	mov     r1, #0x0
	ldr     r5, [r4, #0x78]
	str     r1, [r4, #0x78]
	cmp     r5, #0x0
	beq     branch_21d1d6a
	mov     r0, r5
	bl      Function_201ada4
	mov     r0, r5
	bl      0x201acf4
	ldrb    r1, [r4, #0x15]
	mov     r0, r5
	mov     r2, #0x0
	lsl     r1, r1, #24
	lsr     r1, r1, #28
	bl      0x200e744
	ldr     r0, [r6, #0x28]
	mov     r1, #0x4
	bl      0x201c3c0
.thumb
branch_21d1d6a: @ 21d1d6a :thumb
	pop     {r4-r6,pc}
@ 0x21d1d6c

.thumb
Function_21d1d6c: @ 21d1d6c :thumb
	push    {r3-r6,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0xcc
	mov     r5, r1
	ldr     r0, [r0, #0x0]
	mov     r1, #0xc
	str     r1, [sp, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r3, #0x0
	str     r3, [sp, #0xc]
	mov     r1, #0x7
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0xa
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x5
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x2019964
	add     r4, #0x84
	ldr     r0, [r4, #0x0]
	mov     r1, #0x1
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, r0
	bl      0x2002d7c
	mov     r1, #0x50
	sub     r4, r1, r0
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x20] @ 0x21d1df4, (=0x10200)
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	lsr     r3, r4, #1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r5
	bl      0x201a954
	mov     r0, r6
	bl      Function_20237bc
	add     sp, #0x1c
	pop     {r3-r6,pc}
@ 0x21d1df2


.align 2


.word 0x10200 @ 0x21d1df4
.thumb
Function_21d1df8: @ 21d1df8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	mov     r0, #0x15
	str     r0, [sp, #0x0]
	mov     r0, #0x1d
	str     r0, [sp, #0x4]
	mov     r3, #0x3
	str     r3, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	mov     r0, #0xea
	lsl     r0, r0, #2
	str     r0, [sp, #0x10]
	mov     r1, r4
	ldr     r0, [r5, #0x28]
	add     r1, #0x28
	mov     r2, #0x1
	bl      0x201a7e8
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x15
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	mov     r1, r4
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xcc] @ 0x21d1f04, (=0x3ab)
	add     r1, #0x38
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	mov     r3, #0x9
	bl      0x201a7e8
	mov     r0, #0x3
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r2, #0x4
	mov     r1, r4
	str     r2, [sp, #0x8]
	mov     r0, #0xe
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0xb0] @ 0x21d1f08, (=0x33b)
	add     r1, #0x48
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1c
	str     r0, [sp, #0x4]
	mov     r0, #0xe
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x98] @ 0x21d1f0c, (=0x1b3)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	add     r1, #0x58
	mov     r2, #0x4
	mov     r3, #0x1
	bl      0x201a7e8
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0xa
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r0, #0xf
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x7c] @ 0x21d1f10, (=0x19f)
	mov     r1, r4
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x28]
	add     r1, #0x68
	mov     r2, #0x4
	mov     r3, #0xb
	bl      0x201a7e8
	mov     r0, r4
	add     r0, #0x28
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x38
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x48
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x58
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x68
	mov     r1, #0x0
	bl      Function_201ada4
	mov     r0, r4
	add     r0, #0x28
	bl      0x201a954
	mov     r0, r4
	add     r0, #0x38
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x48
	bl      0x201acf4
	mov     r0, r4
	add     r0, #0x58
	bl      0x201acf4
	add     r4, #0x68
	mov     r0, r4
	bl      0x201acf4
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d1f02


.align 2


.word 0x3ab @ 0x21d1f04
.word 0x33b @ 0x21d1f08
.word 0x1b3 @ 0x21d1f0c
.word 0x19f @ 0x21d1f10
.thumb
Function_21d1f14: @ 21d1f14 :thumb
	push    {r3-r5,lr}
	ldr     r4, [r0, #0x34]
	mov     r5, #0x0
	add     r4, #0x28
.thumb
branch_21d1f1c: @ 21d1f1c :thumb
	lsl     r0, r5, #4
	add     r0, r4, r0
	bl      Function_201a8fc
	add     r0, r5, #0x1
	lsl     r0, r0, #16
	lsr     r5, r0, #16
	cmp     r5, #0x5
	bcc     branch_21d1f1c
	pop     {r3-r5,pc}
@ 0x21d1f30

.thumb
Function_21d1f30: @ 21d1f30 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x1c
	mov     r5, r0
	mov     r4, r1
	cmp     r2, #0x0
	beq     branch_21d1f6e
	add     r0, #0xd0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0x18
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	mov     r2, #0x0
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r3, r2
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x5
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	bl      0x20198e8
.thumb
branch_21d1f6e: @ 21d1f6e :thumb
	mov     r0, r5
	add     r0, #0xcc
	ldr     r0, [r0, #0x0]
	mov     r2, #0x6
	str     r2, [sp, #0x0]
	mov     r1, #0x7
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	mov     r1, r4
	mul     r1, r2
	lsl     r1, r1, #24
	lsr     r1, r1, #24
	str     r1, [sp, #0xc]
	mov     r1, #0x0
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r2, #0xd
	mov     r3, #0xa
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x5
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r5, #0x28]
	bl      0x2019964
	add     sp, #0x1c
	pop     {r4,r5,pc}
@ 0x21d1fb0

.thumb
Function_21d1fb0: @ 21d1fb0 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x24
	str     r1, [sp, #0x1c]
	lsl     r1, r1, #2
	mov     r4, r0
	mov     r7, #0x6
	mov     r2, r1
	ldr     r0, [pc, #0x118] @ 0x21d20d8, (=0x21d3020)
	mul     r2, r7
	add     r6, r0, r2
	add     r2, r1, #0x1
	mov     r0, r2
	mul     r0, r7
	ldr     r2, [pc, #0x10c] @ 0x21d20d8, (=0x21d3020)
	mov     r12, r0
	add     r3, r2, r0
	add     r2, r1, #0x2
	mov     r0, r2
	ldr     r2, [pc, #0x100] @ 0x21d20d8, (=0x21d3020)
	mul     r0, r7
	add     r5, r2, r0
	add     r0, r1, #0x3
	mov     r1, r0
	mul     r1, r7
	mov     r0, r2
	add     r7, r0, r1
	mov     r0, r4
	add     r0, #0xc0
	str     r1, [sp, #0x20]
	ldr     r1, [r0, #0x0]
	ldrb    r0, [r3, #0x4]
	str     r0, [sp, #0x0]
	ldrb    r0, [r3, #0x5]
	str     r0, [sp, #0x4]
	mov     r0, r1
	add     r0, #0xc
	str     r0, [sp, #0x8]
	mov     r0, r2
	mov     r2, r12
	ldrb    r0, [r0, r2]
	str     r0, [sp, #0xc]
	ldrb    r0, [r3, #0x1]
	str     r0, [sp, #0x10]
	ldrh    r0, [r1, #0x0]
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x14]
	ldrh    r0, [r1, #0x2]
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldrb    r2, [r3, #0x2]
	ldrb    r3, [r3, #0x3]
	ldr     r0, [r4, #0x28]
	bl      0x20198e8
	mov     r0, r4
	add     r0, #0xd4
	ldrb    r1, [r7, #0x4]
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0xac] @ 0x21d20d8, (=0x21d3020)
	str     r1, [sp, #0x0]
	ldrb    r1, [r7, #0x5]
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	ldr     r1, [sp, #0x20]
	ldrb    r1, [r2, r1]
	str     r1, [sp, #0xc]
	ldrb    r1, [r7, #0x1]
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldrb    r2, [r7, #0x2]
	ldrb    r3, [r7, #0x3]
	ldr     r0, [r4, #0x28]
	bl      0x2019964
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x2
	beq     branch_21d20d4
	mov     r0, r4
	add     r0, #0xc0
	ldrb    r1, [r6, #0x4]
	ldr     r0, [r0, #0x0]
	str     r1, [sp, #0x0]
	ldrb    r1, [r6, #0x5]
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	ldrb    r1, [r6, #0x0]
	str     r1, [sp, #0xc]
	ldrb    r1, [r6, #0x1]
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x3
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldrb    r2, [r6, #0x2]
	ldrb    r3, [r6, #0x3]
	ldr     r0, [r4, #0x28]
	bl      0x20198e8
	mov     r0, r4
	add     r0, #0xd4
	ldrb    r1, [r5, #0x4]
	ldr     r0, [r0, #0x0]
	str     r1, [sp, #0x0]
	ldrb    r1, [r5, #0x5]
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	ldrb    r1, [r5, #0x0]
	str     r1, [sp, #0xc]
	ldrb    r1, [r5, #0x1]
	str     r1, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x7
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldrb    r2, [r5, #0x2]
	ldrb    r3, [r5, #0x3]
	ldr     r0, [r4, #0x28]
	bl      0x2019964
.thumb
branch_21d20d4: @ 21d20d4 :thumb
	add     sp, #0x24
	pop     {r4-r7,pc}
@ 0x21d20d8

.word 0x21d3020 @ 0x21d20d8
.thumb
Function_21d20dc: @ 21d20dc :thumb
	push    {r3,r4,lr}
	add     sp, #-0x1c
	mov     r4, r0
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0x18
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	mov     r2, #0x0
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r3, r2
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x2
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x20198e8
	mov     r0, r4
	add     r0, #0xbc
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x20
	str     r1, [sp, #0x0]
	mov     r1, #0x18
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r3, r2
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x3
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x20198e8
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x1
	beq     branch_21d2182
	mov     r0, r4
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2
	str     r1, [sp, #0x0]
	mov     r1, #0x3
	mov     r2, r0
	str     r1, [sp, #0x4]
	add     r2, #0xc
	str     r2, [sp, #0x8]
	mov     r2, #0x0
	str     r2, [sp, #0xc]
	mov     r3, #0x15
	str     r3, [sp, #0x10]
	ldrh    r2, [r0, #0x0]
	lsl     r2, r2, #21
	lsr     r2, r2, #24
	str     r2, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r2, #0x10
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x20198e8
.thumb
branch_21d2182: @ 21d2182 :thumb
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d1f30
	mov     r0, r4
	add     r0, #0xc8
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x40
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r3, r2
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x6
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x2019964
	mov     r0, r4
	add     r0, #0xc4
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x40
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r1, r0
	add     r1, #0xc
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldrh    r1, [r0, #0x0]
	mov     r3, r2
	lsl     r1, r1, #21
	lsr     r1, r1, #24
	str     r1, [sp, #0x14]
	ldrh    r0, [r0, #0x2]
	mov     r1, #0x7
	lsl     r0, r0, #21
	lsr     r0, r0, #24
	str     r0, [sp, #0x18]
	ldr     r0, [r4, #0x28]
	bl      0x2019964
	ldrh    r1, [r4, #0x2]
	mov     r0, #0x1
	tst     r0, r1
	beq     branch_21d2200
	mov     r0, r4
	mov     r1, #0x0
	bl      Function_21d1fb0
.thumb
branch_21d2200: @ 21d2200 :thumb
	ldrh    r1, [r4, #0x2]
	mov     r0, #0x2
	tst     r0, r1
	beq     branch_21d2210
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1fb0
.thumb
branch_21d2210: @ 21d2210 :thumb
	ldrh    r1, [r4, #0x2]
	mov     r0, #0x4
	tst     r0, r1
	beq     branch_21d2220
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21d1fb0
.thumb
branch_21d2220: @ 21d2220 :thumb
	ldrh    r1, [r4, #0x2]
	mov     r0, #0x8
	tst     r0, r1
	beq     branch_21d2230
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21d1fb0
.thumb
branch_21d2230: @ 21d2230 :thumb
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x1c
	pop     {r3,r4,pc}
@ 0x21d225c

.thumb
Function_21d225c: @ 21d225c :thumb
	push    {r4,lr}
	add     sp, #-0x10
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	ldr     r0, [r4, #0x28]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x0
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	mov     r3, r2
	bl      Function_2019184
	mov     r2, #0x0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x7
	mov     r3, r2
	bl      Function_2019184
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r2, r1
	mov     r3, r1
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r4, #0x28]
	mov     r1, #0x7
	mov     r3, r2
	bl      0x2019cb8
	ldr     r0, [r4, #0x28]
	mov     r1, #0x0
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x1
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x2
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x3
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x4
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x5
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x6
	bl      0x201c3c0
	ldr     r0, [r4, #0x28]
	mov     r1, #0x7
	bl      0x201c3c0
	add     sp, #0x10
	pop     {r4,pc}
@ 0x21d2396


.align 2, 0


.thumb
Function_21d2398: @ 21d2398 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x28
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	ldr     r6, [pc, #0x10c] @ 0x21d24b0, (=0x21d3138)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d23a6: @ 21d23a6 :thumb
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d23a6
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0xf8] @ 0x21d24b4, (=0x21d30e8)
	bl      0x200ca08
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r1, #0x1
	lsl     r1, r1, #8
	ldr     r0, [r4, r1]
	lsl     r1, r1, #4
	bl      0x2021ce4
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x80
	mov     r2, #0x6c
	bl      0x200d494
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0xc0] @ 0x21d24b8, (=0x21d3110)
	bl      0x200ca08
	mov     r1, #0x41
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x41
	lsl     r0, r0, #2
	mov     r1, #0x2
	ldr     r0, [r4, r0]
	lsl     r1, r1, #12
	bl      0x2021ce4
	mov     r0, #0x41
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	ldr     r1, [r4, #0x18]
	mov     r0, #0x41
	lsl     r0, r0, #2
	mov     r2, #0x7
	mov     r3, r1
	mul     r3, r2
	add     r3, #0x19
	lsl     r1, r3, #16
	ldr     r3, [r4, #0x1c]
	ldr     r0, [r4, r0]
	mul     r2, r3
	sub     r2, #0x22
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x200d494
	ldr     r0, [r5, #0x2c]
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	bne     branch_21d2452
	mov     r0, #0x1
	str     r0, [sp, #0x10]
	b       branch_21d2456
@ 0x21d2452

.thumb
branch_21d2452: @ 21d2452 :thumb
	mov     r0, #0x0
	str     r0, [sp, #0x10]
.thumb
branch_21d2456: @ 21d2456 :thumb
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, sp, #0x0
	bl      0x200ca08
	mov     r1, #0x42
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x42
	ldr     r1, [r1, #0xc]
	lsl     r0, r0, #2
	lsl     r1, r1, #16
	ldr     r0, [r4, r0]
	lsr     r1, r1, #16
	bl      0x2021e50
	ldr     r1, [r4, #0x18]
	mov     r0, #0x42
	lsl     r0, r0, #2
	mov     r2, #0x7
	mov     r3, r1
	mul     r3, r2
	add     r3, #0x19
	lsl     r1, r3, #16
	ldr     r3, [r4, #0x1c]
	ldr     r0, [r4, r0]
	mul     r2, r3
	sub     r2, #0x22
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x200d494
	add     sp, #0x28
	pop     {r4-r6,pc}
@ 0x21d24ae


.align 2


.word 0x21d3138 @ 0x21d24b0
.word 0x21d30e8 @ 0x21d24b4
.word 0x21d3110 @ 0x21d24b8
.thumb
Function_21d24bc: @ 21d24bc :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r6, r2
	cmp     r4, #0x8
	bge     branch_21d24e2
	ldr     r0, [r5, #0x28]
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, #0x8
	bl      Function_201c63c
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, #0x8
	bl      Function_201c63c
	b       branch_21d2516
@ 0x21d24e2

.thumb
branch_21d24e2: @ 21d24e2 :thumb
	cmp     r4, #0xf8
	ldr     r0, [r5, #0x28]
	ble     branch_21d2500
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, #0xf8
	bl      Function_201c63c
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, #0xf8
	bl      Function_201c63c
	b       branch_21d2516
@ 0x21d2500

.thumb
branch_21d2500: @ 21d2500 :thumb
	mov     r1, #0x6
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_201c63c
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x0
	mov     r3, r4
	bl      Function_201c63c
.thumb
branch_21d2516: @ 21d2516 :thumb
	cmp     r6, #0x50
	bge     branch_21d2534
	ldr     r0, [r5, #0x28]
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, #0x50
	bl      Function_201c63c
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, #0x50
	bl      Function_201c63c
	pop     {r4-r6,pc}
@ 0x21d2534

.thumb
branch_21d2534: @ 21d2534 :thumb
	mov     r3, #0x13
	lsl     r3, r3, #4
	cmp     r6, r3
	ldr     r0, [r5, #0x28]
	ble     branch_21d2556
	mov     r1, #0x6
	mov     r2, #0x3
	bl      Function_201c63c
	mov     r3, #0x13
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x3
	lsl     r3, r3, #4
	bl      Function_201c63c
	pop     {r4-r6,pc}
@ 0x21d2556

.thumb
branch_21d2556: @ 21d2556 :thumb
	mov     r1, #0x6
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_201c63c
	ldr     r0, [r5, #0x28]
	mov     r1, #0x7
	mov     r2, #0x3
	mov     r3, r6
	bl      Function_201c63c
	pop     {r4-r6,pc}
@ 0x21d256e


.align 2, 0


.thumb
Function_21d2570: @ 21d2570 :thumb
	push    {r4,r5}
	ldr     r5, [r0, #0x0]
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_21d2594
.thumb
branch_21d257a: @ 21d257a :thumb
	ldr     r3, [r0, #0xc]
	cmp     r1, r3
	bne     branch_21d258c
	ldr     r3, [r0, #0x10]
	cmp     r2, r3
	bne     branch_21d258c
	mov     r0, r4
	pop     {r4,r5}
	bx      lr
@ 0x21d258c

.thumb
branch_21d258c: @ 21d258c :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r0, #0x10
	cmp     r4, r5
	blt     branch_21d257a
.thumb
branch_21d2594: @ 21d2594 :thumb
	mov     r0, #0x0
	mvn     r0, r0
	pop     {r4,r5}
	bx      lr
@ 0x21d259c

.thumb
Function_21d259c: @ 21d259c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r6, r0
	ldr     r0, [r6, #0x34]
	mov     r1, #0x0
	str     r0, [sp, #0x8]
	add     r0, #0xa4
	mov     r2, #0x5c
	blx     MI_CpuFill8
	mov     r0, #0x0
	ldr     r7, [sp, #0x8]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x8]
	add     r7, #0xa4
	str     r0, [sp, #0xc]
	add     r0, #0xb0
	str     r0, [sp, #0xc]
.thumb
branch_21d25c2: @ 21d25c2 :thumb
	ldr     r1, [r6, #0x2c]
	ldr     r0, [sp, #0x0]
	add     r1, #0x20
	add     r4, r1, r0
	ldrh    r0, [r4, #0xa]
	cmp     r0, #0x0
	beq     branch_21d2676
	ldr     r1, [r4, #0x0]
	ldr     r0, [r6, #0x20]
	cmp     r1, r0
	bne     branch_21d25e0
	ldr     r2, [r4, #0x4]
	ldr     r0, [r6, #0x24]
	cmp     r2, r0
	beq     branch_21d2666
.thumb
branch_21d25e0: @ 21d25e0 :thumb
	ldr     r2, [r4, #0x4]
	mov     r0, r7
	bl      Function_21d2570
	cmp     r0, #0x0
	bge     branch_21d25fe
	ldr     r0, [sp, #0x8]
	add     r0, #0xa4
	ldr     r1, [r0, #0x0]
	ldr     r0, [r7, #0x0]
	lsl     r1, r1, #4
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r7, #0x0]
	ldr     r0, [sp, #0xc]
	b       branch_21d2602
@ 0x21d25fe

.thumb
branch_21d25fe: @ 21d25fe :thumb
	lsl     r1, r0, #4
	ldr     r0, [sp, #0xc]
.thumb
branch_21d2602: @ 21d2602 :thumb
	add     r5, r0, r1
	ldr     r0, [r4, #0x0]
	str     r0, [r5, #0x0]
	ldr     r0, [r4, #0x4]
	str     r0, [r5, #0x4]
	ldrh    r0, [r4, #0x8]
	cmp     r0, #0x3
	bls     branch_21d2616
	mov     r0, #0x0
	b       branch_21d261c
@ 0x21d2616

.thumb
branch_21d2616: @ 21d2616 :thumb
	lsl     r1, r0, #1
	ldr     r0, [pc, #0x84] @ 0x21d26a0, (=0x21d2fe4)
	ldrh    r0, [r0, r1]
.thumb
branch_21d261c: @ 21d261c :thumb
	strh    r0, [r5, #0x8]
	ldr     r0, [sp, #0x4]
	mov     r1, r6
	strb    r0, [r5, #0xa]
	mov     r0, #0x1
	strb    r0, [r5, #0xb]
	mov     r0, r6
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	ldr     r2, [pc, #0x70] @ 0x21d26a4, (=0x21d2ff8)
	bl      0x200ca08
	str     r0, [r5, #0xc]
	ldr     r2, [r5, #0x0]
	mov     r1, #0x7
	mul     r1, r2
	add     r1, #0x19
	lsl     r1, r1, #16
	ldr     r3, [r5, #0x4]
	mov     r2, #0x7
	mul     r2, r3
	sub     r2, #0x22
	lsl     r2, r2, #16
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x200d494
	ldr     r0, [r5, #0xc]
	mov     r1, #0x2
	bl      0x2021f58
	ldr     r0, [r5, #0xc]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d2666: @ 21d2666 :thumb
	ldr     r0, [sp, #0x0]
	add     r0, #0xc
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x5
	blt     branch_21d25c2
.thumb
branch_21d2676: @ 21d2676 :thumb
	ldr     r0, [sp, #0x8]
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d269c
	.hword  0x1e41 @ sub r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	mov     r2, #0x1
	add     r0, #0xae
	strb    r1, [r0, #0x0]
	ldr     r1, [sp, #0x8]
	ldr     r0, [pc, #0x18] @ 0x21d26a8, (=0x21d26ad)
	add     r1, #0xa4
	bl      0x200d9e8
	ldr     r1, [sp, #0x8]
	add     r1, #0xa8
	str     r1, [sp, #0x8]
	str     r0, [r1, #0x0]
.thumb
branch_21d269c: @ 21d269c :thumb
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d26a0

.word 0x21d2fe4 @ 0x21d26a0
.word 0x21d2ff8 @ 0x21d26a4
.word 0x21d26ad @ 0x21d26a8
.thumb
Function_21d26ac: @ 21d26ac :thumb
	push    {r4,lr}
	mov     r4, r1
	ldrh    r0, [r4, #0x8]
	add     r1, r0, #0x1
	strh    r1, [r4, #0x8]
	mov     r1, #0x1a
	blx     _s32_div_f
	cmp     r1, #0x0
	bgt     branch_21d26fc
	ldrb    r0, [r4, #0xb]
	mov     r1, #0x0
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldr     r0, [r0, #0x18]
	bl      0x2021cac
	ldrb    r0, [r4, #0xa]
	mov     r1, #0x1
	lsl     r0, r0, #4
	add     r0, r4, r0
	ldr     r0, [r0, #0x18]
	bl      0x2021cac
	ldrb    r0, [r4, #0xa]
	strb    r0, [r4, #0xb]
	ldr     r1, [r4, #0x0]
	ldrb    r2, [r4, #0xa]
	.hword  0x1e48 @ sub r0, r1, #0x1
	add     r0, r2, r0
	blx     _s32_div_f
	strb    r1, [r4, #0xa]
	mov     r0, #0x41
	ldrh    r1, [r4, #0x8]
	lsl     r0, r0, #2
	cmp     r1, r0
	bls     branch_21d26fc
	mov     r0, #0x1
	strh    r0, [r4, #0x8]
.thumb
branch_21d26fc: @ 21d26fc :thumb
	pop     {r4,pc}
@ 0x21d26fe


.align 2, 0


.thumb
Function_21d2700: @ 21d2700 :thumb
	push    {r4-r6,lr}
	ldr     r6, [r0, #0x34]
	mov     r0, r6
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2712
	bl      Function_200da58
.thumb
branch_21d2712: @ 21d2712 :thumb
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21d2738
	mov     r5, r6
.thumb
branch_21d2720: @ 21d2720 :thumb
	mov     r0, r5
	add     r0, #0xbc
	ldr     r0, [r0, #0x0]
	bl      0x200c7e4
	mov     r0, r6
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, r0
	blt     branch_21d2720
.thumb
branch_21d2738: @ 21d2738 :thumb
	pop     {r4-r6,pc}
@ 0x21d273a


.align 2, 0


.thumb
Function_21d273c: @ 21d273c :thumb
	push    {r4,lr}
	mov     r3, r0
	ldr     r4, [r3, #0x34]
	mov     r2, #0x0
	str     r2, [r4, #0x4]
	str     r2, [r4, #0x8]
	cmp     r1, #0x0
	bne     branch_21d275c
	ldr     r0, [pc, #0x1c] @ 0x21d276c, (=0x21d2775)
	mov     r1, r3
	bl      0x200d9e8
	mov     r1, #0x43
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d275c

.thumb
branch_21d275c: @ 21d275c :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2770, (=0x21d28ed)
	mov     r1, r3
	bl      0x200d9e8
	mov     r1, #0x43
	lsl     r1, r1, #2
	str     r0, [r4, r1]
	pop     {r4,pc}
@ 0x21d276c

.word 0x21d2775 @ 0x21d276c
.word 0x21d28ed @ 0x21d2770
.thumb
Function_21d2774: @ 21d2774 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r4, [r5, #0x34]
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x4
	bls     branch_21d2786
	b       branch_21d28e0
@ 0x21d2786

.thumb
branch_21d2786: @ 21d2786 :thumb
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d2792

Jumppoints_21d2792:
.hword branch_21d279c - Jumppoints_21d2792 - 2
.hword branch_21d27d0 - Jumppoints_21d2792 - 2
.hword branch_21d280c - Jumppoints_21d2792 - 2
.hword branch_21d2848 - Jumppoints_21d2792 - 2
.hword branch_21d28be - Jumppoints_21d2792 - 2
.thumb
branch_21d279c: @ 21d279c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cac
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021cc8
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x1
	bl      0x2021e50
	ldr     r0, [pc, #0x120] @ 0x21d28e4, (=0x5e4)
	bl      Function_2005748
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d27d0

.thumb
branch_21d27d0: @ 21d27d0 :thumb
	ldr     r1, [r4, #0x8]
	mov     r0, #0x1f
	lsr     r3, r1, #31
	lsl     r2, r1, #31
	sub     r2, r2, r3
	ror     r2, r0
	add     r0, r3, r2
	beq     branch_21d27f8
	add     r3, r1, r3
	ldr     r1, [pc, #0x104] @ 0x21d28e8, (=0x21d2fe0)
	asr     r2, r3, #1
	ldrb    r1, [r1, r2]
	mov     r0, r5
	mov     r2, #0x0
	bl      Function_21d1f30
	ldr     r0, [r5, #0x28]
	mov     r1, #0x5
	bl      0x201c3c0
.thumb
branch_21d27f8: @ 21d27f8 :thumb
	ldr     r1, [r4, #0x8]
	add     r0, r1, #0x1
	str     r0, [r4, #0x8]
	cmp     r1, #0x7
	ble     branch_21d28e0
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d280c

.thumb
branch_21d280c: @ 21d280c :thumb
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cac
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r1, #0x0
	bl      0x2021cc8
	mov     r3, #0x0
	str     r3, [r5, #0x14]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, #0x2
	bl      0x200f174
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d2848

.thumb
branch_21d2848: @ 21d2848 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d28e0
	mov     r0, #0x1
	strb    r0, [r4, #0x10]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x2019cb8
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x5
	mov     r3, r2
	bl      0x2019cb8
	mov     r1, r4
	mov     r0, r5
	add     r1, #0x68
	bl      Function_21d1d6c
	mov     r0, r5
	bl      Function_21d1a30
	mov     r0, r5
	bl      Function_21d19e4
	mov     r3, #0x0
	str     r3, [r5, #0x14]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, #0x5
	bl      0x200f174
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d28be

.thumb
branch_21d28be: @ 21d28be :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d28e0
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	str     r0, [r4, #0x4]
	ldrb    r0, [r4, #0x14]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r0, [r4, #0x14]
	mov     r0, r6
	bl      Function_200da58
	mov     r0, #0x43
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_21d28e0: @ 21d28e0 :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d28e4

.word 0x5e4 @ 0x21d28e4
.word 0x21d2fe0 @ 0x21d28e8
.thumb
Function_21d28ec: @ 21d28ec :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r5, r1
	ldr     r4, [r5, #0x34]
	mov     r6, r0
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21d2908
	cmp     r0, #0x1
	beq     branch_21d2932
	cmp     r0, #0x2
	beq     branch_21d2990
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2908

.thumb
branch_21d2908: @ 21d2908 :thumb
	mov     r3, #0x0
	str     r3, [r5, #0x14]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, #0x2
	bl      0x200f174
	ldr     r0, [pc, #0x94] @ 0x21d29b8, (=0x691)
	bl      Function_2005748
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d2932

.thumb
branch_21d2932: @ 21d2932 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d29b4
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x28]
	mov     r1, #0x4
	mov     r3, r2
	bl      0x2019cb8
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x1
	bl      Function_21d1f30
	ldr     r0, [r5, #0x28]
	mov     r1, #0x4
	bl      0x201c3c0
	ldr     r0, [r5, #0x28]
	mov     r1, #0x5
	bl      0x201c3c0
	mov     r3, #0x0
	str     r3, [r5, #0x14]
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x4]
	mov     r1, #0xd
	str     r0, [sp, #0x8]
	mov     r0, #0x4
	mov     r2, #0x5
	bl      0x200f174
	ldr     r0, [r4, #0x4]
	add     sp, #0x10
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r4-r6,pc}
@ 0x21d2990

.thumb
branch_21d2990: @ 21d2990 :thumb
	bl      0x200f2ac
	cmp     r0, #0x0
	beq     branch_21d29b4
	mov     r0, #0x0
	strb    r0, [r4, #0x10]
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x8]
	ldrb    r0, [r4, #0x14]
	.hword  0x1e80 @ sub r0, r0, #0x2
	strb    r0, [r4, #0x14]
	mov     r0, r6
	bl      Function_200da58
	mov     r0, #0x43
	mov     r1, #0x0
	lsl     r0, r0, #2
	str     r1, [r4, r0]
.thumb
branch_21d29b4: @ 21d29b4 :thumb
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d29b8

.word 0x691 @ 0x21d29b8
.thumb
Function_21d29bc: @ 21d29bc :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0x34]
	mov     r0, r4
	add     r0, #0xa0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_21d29d0
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d29d0

.thumb
branch_21d29d0: @ 21d29d0 :thumb
	mov     r0, r4
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x20]
	ldr     r2, [r4, #0x18]
	ldr     r3, [r4, #0x1c]
	bl      Function_21d2c5c
	cmp     r0, #0x0
	beq     branch_21d29ea
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	bne     branch_21d29ee
.thumb
branch_21d29ea: @ 21d29ea :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d29ee

.thumb
branch_21d29ee: @ 21d29ee :thumb
	ldr     r1, [r5, #0x2c]
	mov     r0, #0x1
	str     r0, [r1, #0x10]
	ldr     r2, [r4, #0x18]
	ldr     r1, [r5, #0x2c]
	str     r2, [r1, #0x14]
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r5, #0x2c]
	str     r2, [r1, #0x18]
	ldr     r2, [r4, #0x20]
	ldr     r1, [r5, #0x2c]
	str     r2, [r1, #0x1c]
	pop     {r3-r5,pc}
@ 0x21d2a08

.thumb
Function_21d2a08: @ 21d2a08 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x50
	mov     r4, r0
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	ldr     r1, [r4, #0x4]
	mov     r0, #0x20
	bl      0x201dbec
	ldr     r0, [r4, #0x4]
	bl      0x200c6e4
	mov     r1, r4
	add     r1, #0xd8
	str     r0, [r1, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	bl      0x200c704
	mov     r1, r4
	add     r1, #0xdc
	add     r2, sp, #0x30
	ldr     r5, [pc, #0x70] @ 0x21d2ab4, (=0x21d3190)
	str     r0, [r1, #0x0]
	ldmia   r5!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r5!, {r0,r1}
	ldr     r6, [pc, #0x60] @ 0x21d2ab8, (=0x21d3160)
	stmia   r2!, {r0,r1}
	add     r5, sp, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r5
	stmia   r5!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r5!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r3
	str     r0, [r5, #0x0]
	mov     r0, r4
	add     r0, #0xd8
	ldr     r0, [r0, #0x0]
	mov     r3, #0x20
	bl      0x200c73c
	mov     r0, r4
	mov     r1, r4
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1c
	bl      0x200c7c0
	ldr     r5, [pc, #0x30] @ 0x21d2abc, (=0x21d3174)
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
	add     r0, #0xd8
	add     r4, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r4, #0x0]
	bl      0x200c8f0
	add     sp, #0x50
	pop     {r4-r6,pc}
@ 0x21d2ab2


.align 2


.word 0x21d3190 @ 0x21d2ab4
.word 0x21d3160 @ 0x21d2ab8
.word 0x21d3174 @ 0x21d2abc
.thumb
Function_21d2ac0: @ 21d2ac0 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, r4
	add     r0, #0xd8
	add     r1, #0xdc
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x200c8b0
	add     r4, #0xd8
	ldr     r0, [r4, #0x0]
	bl      0x200c8d4
	bl      0x201dc3c
	pop     {r4,pc}
@ 0x21d2ae0

.thumb
Function_21d2ae0: @ 21d2ae0 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2ae8, (=0x200c7ed)
	add     r0, #0xdc
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d2ae8

.word 0x200c7ed @ 0x21d2ae8
.thumb
Function_21d2aec: @ 21d2aec :thumb
	ldr     r3, [pc, #0x0] @ 0x21d2af0, (=0x200c801)
	bx      r3
@ 0x21d2af0

.word 0x200c801 @ 0x21d2af0
.thumb
Function_21d2af4: @ 21d2af4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	ldr     r5, [sp, #0x28]
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	mov     r0, r5
	mov     r1, #0xc
	str     r2, [sp, #0x8]
	mov     r4, r3
	bl      malloc_maybe
	mov     r7, r0
	mov     r0, #0x0
	strb    r0, [r7, #0x0]
	strb    r0, [r7, #0x1]
	strb    r0, [r7, #0x2]
	strb    r0, [r7, #0x3]
	strb    r0, [r7, #0x4]
	strb    r0, [r7, #0x5]
	strb    r0, [r7, #0x6]
	strb    r0, [r7, #0x7]
	strb    r0, [r7, #0x8]
	strb    r0, [r7, #0x9]
	strb    r0, [r7, #0xa]
	strb    r0, [r7, #0xb]
	strh    r4, [r7, #0x0]
	ldrh    r2, [r7, #0x0]
	mov     r1, #0x1c
	mov     r0, r5
	mul     r1, r2
	bl      malloc_maybe
	str     r0, [r7, #0x8]
	ldrh    r3, [r7, #0x0]
	mov     r2, #0x1c
	mov     r1, #0x0
	mul     r2, r3
	blx     0x20d5124
	ldrh    r0, [r7, #0x0]
	mov     r6, #0x0
	ldr     r5, [pc, #0xc8] @ 0x21d2c10, (=0x21d31d8)
	cmp     r0, #0x0
	ble     branch_21d2c0a
	str     r6, [sp, #0xc]
.thumb
branch_21d2b4e: @ 21d2b4e :thumb
	ldr     r0, [r7, #0x8]
	ldr     r1, [sp, #0xc]
	ldr     r2, [r5, #0x0]
	add     r4, r0, r1
	str     r2, [r0, r1]
	ldrb    r0, [r5, #0x8]
	ldr     r1, [sp, #0x4]
	ldr     r2, [pc, #0xb4] @ 0x21d2c14, (=0x21d31b0)
	strb    r0, [r4, #0x8]
	ldrb    r0, [r5, #0x9]
	strb    r0, [r4, #0x9]
	ldrh    r0, [r5, #0xa]
	strh    r0, [r4, #0xa]
	ldr     r0, [r5, #0xc]
	str     r0, [r4, #0xc]
	ldr     r0, [r5, #0x10]
	str     r0, [r4, #0x10]
	ldr     r0, [sp, #0x8]
	ldrb    r0, [r0, r6]
	str     r0, [r4, #0x14]
	ldr     r0, [sp, #0x0]
	bl      0x200ca08
	str     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2021cac
	ldr     r1, [r4, #0x14]
	cmp     r1, #0x0
	beq     branch_21d2b98
	ldrb    r2, [r4, #0x9]
	ldr     r0, [r4, #0x18]
	.hword  0x1d52 @ add r2, r2, #0x5
	add     r1, r2, r1
	bl      0x2021e90
	b       branch_21d2bae
@ 0x21d2b98

.thumb
branch_21d2b98: @ 21d2b98 :thumb
	ldrh    r1, [r4, #0xa]
	ldr     r0, [pc, #0x7c] @ 0x21d2c18, (=0xffff)
	add     r0, r1, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_21d2bae
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2021cac
.thumb
branch_21d2bae: @ 21d2bae :thumb
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x0
	beq     branch_21d2bc6
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, r0
	mov     r0, #0x3f
	lsl     r0, r0, #24
	blx     _fadd
	b       branch_21d2bd4
@ 0x21d2bc6

.thumb
branch_21d2bc6: @ 21d2bc6 :thumb
	lsl     r0, r0, #12
	blx     0x20e17b4
	mov     r1, #0x3f
	lsl     r1, r1, #24
	blx     0x20e1a9c
.thumb
branch_21d2bd4: @ 21d2bd4 :thumb
	blx     0x20e1740
	mov     r1, r0
	ldr     r0, [r4, #0x18]
	bl      Function_2021e2c
	ldr     r1, [r4, #0xc]
	ldr     r2, [r4, #0x10]
	add     r1, #0x19
	sub     r2, #0x22
	lsl     r1, r1, #16
	lsl     r2, r2, #16
	ldr     r0, [r4, #0x18]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x200d494
	ldr     r0, [sp, #0xc]
	add     r5, #0x14
	add     r0, #0x1c
	str     r0, [sp, #0xc]
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldrh    r0, [r7, #0x0]
	cmp     r6, r0
	blt     branch_21d2b4e
.thumb
branch_21d2c0a: @ 21d2c0a :thumb
	mov     r0, r7
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d2c10

.word 0x21d31d8 @ 0x21d2c10
.word 0x21d31b0 @ 0x21d2c14
.word 0xffff @ 0x21d2c18
.thumb
Function_21d2c1c: @ 21d2c1c :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x0]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21d2c4c
	mov     r4, r6
.thumb
branch_21d2c2a: @ 21d2c2a :thumb
	ldr     r0, [r5, #0x8]
	mov     r1, #0x0
	add     r7, r0, r4
	ldr     r0, [r7, #0x18]
	mov     r2, r1
	bl      0x2021c98
	ldr     r0, [r7, #0x18]
	bl      0x2021bd4
	add     r0, r6, #0x1
	lsl     r0, r0, #16
	asr     r6, r0, #16
	ldrh    r0, [r5, #0x0]
	add     r4, #0x1c
	cmp     r6, r0
	blt     branch_21d2c2a
.thumb
branch_21d2c4c: @ 21d2c4c :thumb
	ldr     r0, [r5, #0x8]
	bl      free
	mov     r0, r5
	bl      free
	pop     {r3-r7,pc}
@ 0x21d2c5a


.align 2, 0


.thumb
Function_21d2c5c: @ 21d2c5c :thumb
	push    {r3-r6}
	ldrh    r5, [r0, #0x0]
	mov     r4, #0x0
	cmp     r5, #0x0
	ble     branch_21d2cb8
	ldr     r0, [r0, #0x8]
.thumb
branch_21d2c68: @ 21d2c68 :thumb
	ldr     r6, [r0, #0x0]
	cmp     r6, r1
	bne     branch_21d2cac
	ldrh    r6, [r0, #0xa]
	cmp     r6, #0x3
	bhi     branch_21d2cac
	add     r6, r6, r6
	add     r6, pc
	ldrh    r6, [r6, #0x6]
	lsl     r6, r6, #16
	asr     r6, r6, #16
	add     pc, r6
@ 0x21d2c80

Jumppoints_21d2c80:
.hword branch_21d2c88 - Jumppoints_21d2c80 - 2
.hword branch_21d2c8c - Jumppoints_21d2c80 - 2
.hword branch_21d2c98 - Jumppoints_21d2c80 - 2
.hword branch_21d2ca4 - Jumppoints_21d2c80 - 2
.thumb
branch_21d2c88: @ 21d2c88 :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d2c8c

.thumb
branch_21d2c8c: @ 21d2c8c :thumb
	cmp     r2, #0x9
	bne     branch_21d2cac
	cmp     r3, #0x1c
	bne     branch_21d2cac
	pop     {r3-r6}
	bx      lr
@ 0x21d2c98

.thumb
branch_21d2c98: @ 21d2c98 :thumb
	cmp     r2, #0x1a
	bne     branch_21d2cac
	cmp     r3, #0x12
	bne     branch_21d2cac
	pop     {r3-r6}
	bx      lr
@ 0x21d2ca4

.thumb
branch_21d2ca4: @ 21d2ca4 :thumb
	cmp     r2, #0x1a
	bne     branch_21d2cac
	cmp     r3, #0x11
	beq     branch_21d2cba
.thumb
branch_21d2cac: @ 21d2cac :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	lsl     r4, r4, #16
	asr     r4, r4, #16
	add     r0, #0x1c
	cmp     r4, r5
	blt     branch_21d2c68
.thumb
branch_21d2cb8: @ 21d2cb8 :thumb
	mov     r0, #0x0
.thumb
branch_21d2cba: @ 21d2cba :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d2cbe


.align 2, 0


.thumb
Function_21d2cc0: @ 21d2cc0 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bne     branch_21d2cca
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d2cca

.thumb
branch_21d2cca: @ 21d2cca :thumb
	bl      Function_21d2c5c
	mov     r4, r0
	beq     branch_21d2cd8
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_21d2cf2
.thumb
branch_21d2cd8: @ 21d2cd8 :thumb
	ldr     r3, [r5, #0x4]
	cmp     r3, #0x0
	beq     branch_21d2cec
	ldrb    r1, [r3, #0x9]
	ldr     r0, [r3, #0x18]
	add     r2, r1, #0x5
	ldr     r1, [r3, #0x14]
	add     r1, r2, r1
	bl      0x2021e90
.thumb
branch_21d2cec: @ 21d2cec :thumb
	mov     r0, #0x0
	str     r0, [r5, #0x4]
	pop     {r3-r5,pc}
@ 0x21d2cf2

.thumb
branch_21d2cf2: @ 21d2cf2 :thumb
	ldr     r1, [r5, #0x4]
	cmp     r1, #0x0
	bne     branch_21d2d00
	mov     r0, #0x0
	strb    r0, [r5, #0x2]
	strb    r0, [r5, #0x3]
	b       branch_21d2d1c
@ 0x21d2d00

.thumb
branch_21d2d00: @ 21d2d00 :thumb
	ldrh    r2, [r4, #0xa]
	ldr     r0, [pc, #0x20] @ 0x21d2d24, (=0xfffe)
	add     r0, r2, r0
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	cmp     r0, #0x1
	bhi     branch_21d2d1c
	ldrb    r2, [r1, #0x9]
	ldr     r0, [r1, #0x18]
	ldr     r1, [r1, #0x14]
	.hword  0x1d52 @ add r2, r2, #0x5
	add     r1, r2, r1
	bl      0x2021e90
.thumb
branch_21d2d1c: @ 21d2d1c :thumb
	str     r4, [r5, #0x4]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d2d22


.align 2


.word 0xfffe @ 0x21d2d24
.thumb
Function_21d2d28: @ 21d2d28 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r3, [r4, #0x4]
	cmp     r3, #0x0
	beq     branch_21d2d6c
	cmp     r1, #0x1
	bne     branch_21d2d6c
	ldrb    r0, [r4, #0x3]
	cmp     r0, #0x0
	ldr     r0, [r3, #0x18]
	bne     branch_21d2d48
	ldrb    r1, [r3, #0x9]
	add     r1, #0x8
	bl      0x2021e90
	b       branch_21d2d54
@ 0x21d2d48

.thumb
branch_21d2d48: @ 21d2d48 :thumb
	ldrb    r1, [r3, #0x9]
	add     r2, r1, #0x5
	ldr     r1, [r3, #0x14]
	add     r1, r2, r1
	bl      0x2021e90
.thumb
branch_21d2d54: @ 21d2d54 :thumb
	ldrb    r0, [r4, #0x2]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r4, #0x2]
	ldrb    r0, [r4, #0x2]
	cmp     r0, #0x10
	bne     branch_21d2d6c
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	ldrb    r1, [r4, #0x3]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x3]
.thumb
branch_21d2d6c: @ 21d2d6c :thumb
	pop     {r4,pc}
@ 0x21d2d6e


.align 2, 0


.thumb
Function_21d2d70: @ 21d2d70 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x4c
	mov     r5, r0
	add     r0, sp, #0x4
	mov     r4, r1
	blx     FS_InitFile
	add     r0, sp, #0x4
	mov     r1, r5
	blx     0x20c8080
	cmp     r0, #0x0
	bne     branch_21d2d94
	bl      ErrorHandling
	add     sp, #0x4c
	mov     r0, #0x0
	pop     {r4-r7,pc}
@ 0x21d2d94

.thumb
branch_21d2d94: @ 21d2d94 :thumb
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	mov     r2, #0x4
	blx     FS_ReadFile
	cmp     r0, #0x0
	bge     branch_21d2da6
	bl      ErrorHandling
.thumb
branch_21d2da6: @ 21d2da6 :thumb
	mov     r0, r4
	mov     r1, #0x8
	bl      malloc_maybe
	mov     r6, r0
	mov     r0, #0x0
	strb    r0, [r6, #0x0]
	strb    r0, [r6, #0x1]
	strb    r0, [r6, #0x2]
	strb    r0, [r6, #0x3]
	strb    r0, [r6, #0x4]
	strb    r0, [r6, #0x5]
	strb    r0, [r6, #0x6]
	strb    r0, [r6, #0x7]
	ldr     r2, [sp, #0x0]
	mov     r1, #0x18
	mov     r0, r4
	mul     r1, r2
	bl      malloc_maybe
	str     r0, [r6, #0x4]
	ldr     r3, [sp, #0x0]
	mov     r2, #0x18
	mov     r1, #0x0
	mul     r2, r3
	blx     0x20d5124
	ldr     r0, [sp, #0x0]
	mov     r4, #0x0
	str     r0, [r6, #0x0]
	cmp     r0, #0x0
	ble     branch_21d2e02
	mov     r5, r4
.thumb
branch_21d2de8: @ 21d2de8 :thumb
	ldr     r0, [r6, #0x4]
	mov     r2, #0x18
	add     r7, r0, r5
	add     r0, sp, #0x4
	mov     r1, r7
	blx     FS_ReadFile
	strh    r4, [r7, #0x16]
	ldr     r0, [r6, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x18
	cmp     r4, r0
	blt     branch_21d2de8
.thumb
branch_21d2e02: @ 21d2e02 :thumb
	add     r0, sp, #0x4
	blx     FS_CloseFile
	mov     r0, r6
	add     sp, #0x4c
	pop     {r4-r7,pc}
@ 0x21d2e0e


.align 2, 0


.thumb
Function_21d2e10: @ 21d2e10 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      free
	mov     r0, r4
	bl      free
	pop     {r4,pc}
@ 0x21d2e22


.align 2, 0


.thumb
Function_21d2e24: @ 21d2e24 :thumb
	push    {r3-r6}
	ldr     r6, [r0, #0x0]
	mov     r5, #0x0
	cmp     r6, #0x0
	ble     branch_21d2e54
	ldr     r0, [r0, #0x4]
.thumb
branch_21d2e30: @ 21d2e30 :thumb
	ldrh    r4, [r0, #0x0]
	cmp     r4, r1
	bne     branch_21d2e4c
	ldrh    r4, [r0, #0x2]
	cmp     r4, r2
	bne     branch_21d2e4c
	ldrh    r1, [r0, #0x14]
	cmp     r1, #0x0
	beq     branch_21d2e56
	tst     r1, r3
	bne     branch_21d2e56
	mov     r0, #0x0
	pop     {r3-r6}
	bx      lr
@ 0x21d2e4c

.thumb
branch_21d2e4c: @ 21d2e4c :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x18
	cmp     r5, r6
	blt     branch_21d2e30
.thumb
branch_21d2e54: @ 21d2e54 :thumb
	mov     r0, #0x0
.thumb
branch_21d2e56: @ 21d2e56 :thumb
	pop     {r3-r6}
	bx      lr
@ 0x21d2e5a


.align 2, 0
Unknown_21d2e5c: @ 0x21d2e5c
.incbin "./baserom/overlay/overlay_0080.bin", 0x20dc, 0x21d2e94 - 0x21d2e5c


.word Function_21d1458+1 @ =0x21d1459, 0x21d2e94
.word Function_21d14a8+1 @ =0x21d14a9, 0x21d2e98
.word Function_21d1550+1 @ =0x21d1551, 0x21d2e9c
.word Function_21d159c+1 @ =0x21d159d, 0x21d2ea0
.word Function_21d163c+1 @ =0x21d163d, 0x21d2ea4
.word Function_21d16f8+1 @ =0x21d16f9, 0x21d2ea8
.word Function_21d1744+1 @ =0x21d1745, 0x21d2eac
.word Function_21d1478+1 @ =0x21d1479, 0x21d2eb0
.word Function_21d1758+1 @ =0x21d1759, 0x21d2eb4
.word Function_21d1458+1 @ =0x21d1459, 0x21d2eb8
.word Function_21d14a8+1 @ =0x21d14a9, 0x21d2ebc
.word Function_21d1550+1 @ =0x21d1551, 0x21d2ec0
.word Function_21d159c+1 @ =0x21d159d, 0x21d2ec4
.word Function_21d1678+1 @ =0x21d1679, 0x21d2ec8
.word Function_21d16f8+1 @ =0x21d16f9, 0x21d2ecc
.word Function_21d1744+1 @ =0x21d1745, 0x21d2ed0
.word Function_21d1478+1 @ =0x21d1479, 0x21d2ed4
.word Function_21d1758+1 @ =0x21d1759, 0x21d2ed8
.word Function_21d1458+1 @ =0x21d1459, 0x21d2edc
.word Function_21d14a8+1 @ =0x21d14a9, 0x21d2ee0
.word Function_21d15c8+1 @ =0x21d15c9, 0x21d2ee4
.word Function_21d1610+1 @ =0x21d1611, 0x21d2ee8
.word Function_21d16d0+1 @ =0x21d16d1, 0x21d2eec
.word Function_21d16f8+1 @ =0x21d16f9, 0x21d2ef0
.word Function_21d1744+1 @ =0x21d1745, 0x21d2ef4
.word Function_21d1478+1 @ =0x21d1479, 0x21d2ef8
.word Function_21d1758+1 @ =0x21d1759, 0x21d2efc
@ 0x21d2f00


.incbin "./baserom/overlay/overlay_0080.bin", 0x2180, 0x21d3420 - 0x21d2f00


@end 0x21d3420




