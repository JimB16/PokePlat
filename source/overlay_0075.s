

.section .iwram75, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r2, #0x2
	mov     r0, #0x3
	mov     r1, #0x29
	lsl     r2, r2, #16
	bl      0x2017fc8
	mov     r0, r5
	mov     r1, #0xbc
	mov     r2, #0x29
	bl      0x200681c
	mov     r1, #0x0
	mov     r2, #0xbc
	mov     r4, r0
	blx     0x20d5124
	mov     r0, #0x29
	str     r0, [r4, #0x0]
	mov     r0, r5
	bl      0x2006840
	str     r0, [r4, #0x1c]
	ldrh    r0, [r0, #0x0]
	ldr     r1, [pc, #0x3c] @ 0x21d0df4, (=0xffff)
	strb    r0, [r4, #0xc]
	ldrb    r0, [r4, #0xc]
	strb    r0, [r4, #0xd]
	ldr     r0, [r4, #0x1c]
	ldrb    r0, [r0, #0x2]
	strb    r0, [r4, #0x11]
	ldr     r0, [r4, #0x1c]
	ldrb    r0, [r0, #0x3]
	strb    r0, [r4, #0x12]
	ldrb    r0, [r4, #0x11]
	strb    r0, [r4, #0x16]
	strb    r0, [r4, #0x17]
	ldr     r0, [r4, #0x1c]
	strh    r1, [r0, #0x0]
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x4]
	bl      0x2027ac0
	strb    r0, [r4, #0x10]
	ldr     r0, [r4, #0x1c]
	ldr     r0, [r0, #0x4]
	bl      0x2027b50
	strh    r0, [r4, #0xa]
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0df2


.align 2


.word 0xffff @ 0x21d0df4
.thumb
Function_21d0df8: @ 21d0df8 :thumb
	push    {r3,lr}
	bl      0x200682c
	bl      Function_21d1184
	cmp     r0, #0x0
	beq     branch_21d0e0a
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0e0a

.thumb
branch_21d0e0a: @ 21d0e0a :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d0e0e


.align 2, 0


.thumb
Function_21d0e10: @ 21d0e10 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      0x200682c
	mov     r5, r0
	mov     r0, #0x0
	bl      Function_2002ac8
	ldr     r5, [r5, #0x0]
	mov     r0, r4
	bl      0x2006830
	mov     r0, r5
	bl      0x201807c
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0e32


.align 2, 0


.thumb
Function_21d0e34: @ 21d0e34 :thumb
	push    {r4-r6,lr}
	mov     r4, #0x0
	mov     r6, r0
	mov     r5, r4
.thumb
branch_21d0e3c: @ 21d0e3c :thumb
	ldr     r0, [r6, #0x1c]
	add     r0, #0x1a
	add     r0, r0, r5
	bl      0x2014bbc
	cmp     r0, #0x0
	beq     branch_21d0e4e
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x21d0e4e

.thumb
branch_21d0e4e: @ 21d0e4e :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x8
	cmp     r4, #0x3
	blt     branch_21d0e3c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d0e5a


.align 2, 0


.thumb
Function_21d0e5c: @ 21d0e5c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x18] @ 0x21d0e78, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	beq     branch_21d0e72
	ldr     r0, [pc, #0x10] @ 0x21d0e7c, (=0x5e3)
	bl      Function_2005748
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d0e72

.thumb
branch_21d0e72: @ 21d0e72 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d0e76


.align 2


.word 0x21bf67c @ 0x21d0e78
.word 0x5e3 @ 0x21d0e7c
.thumb
Function_21d0e80: @ 21d0e80 :thumb
	push    {r3-r5,lr}
	ldr     r1, [pc, #0x10c] @ 0x21d0f90, (=0x21bf67c)
	mov     r4, r0
	ldr     r2, [r1, #0x48]
	mov     r1, #0x1
	mov     r5, r2
	mov     r3, #0x0
	tst     r5, r1
	beq     branch_21d0ef8
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x3
	bne     branch_21d0ede
	ldrb    r1, [r4, #0x12]
	cmp     r1, #0x0
	bne     branch_21d0ec2
	bl      Function_21d0e34
	cmp     r0, #0x0
	beq     branch_21d0eb4
	ldr     r0, [pc, #0xec] @ 0x21d0f94, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x2
	strb    r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0eb4

.thumb
branch_21d0eb4: @ 21d0eb4 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x3
	strh    r1, [r0, #0x0]
	ldr     r0, [pc, #0xdc] @ 0x21d0f98, (=0x5e3)
	bl      Function_2005748
	b       branch_21d0ed0
@ 0x21d0ec2

.thumb
branch_21d0ec2: @ 21d0ec2 :thumb
	ldr     r0, [pc, #0xd0] @ 0x21d0f94, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x3
	strb    r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0ed0

.thumb
branch_21d0ed0: @ 21d0ed0 :thumb
	ldr     r0, [r4, #0x1c]
	mov     r1, #0x0
	strb    r1, [r0, #0x3]
	ldr     r1, [r4, #0x1c]
	ldrb    r0, [r1, #0x3]
	strb    r0, [r1, #0x2]
	b       branch_21d0ef4
@ 0x21d0ede

.thumb
branch_21d0ede: @ 21d0ede :thumb
	ldr     r0, [r4, #0x1c]
	strb    r1, [r0, #0x2]
	ldr     r1, [r4, #0x1c]
	ldrb    r0, [r1, #0x2]
	strh    r0, [r1, #0x0]
	ldrb    r1, [r4, #0x12]
	ldr     r0, [r4, #0x1c]
	strb    r1, [r0, #0x3]
	ldr     r0, [pc, #0xa4] @ 0x21d0f94, (=0x5dd)
	bl      Function_2005748
.thumb
branch_21d0ef4: @ 21d0ef4 :thumb
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d0ef8

.thumb
branch_21d0ef8: @ 21d0ef8 :thumb
	mov     r0, #0x2
	tst     r0, r2
	beq     branch_21d0f0c
	ldr     r0, [pc, #0x94] @ 0x21d0f94, (=0x5dd)
	bl      Function_2005748
	mov     r0, #0x3
	strb    r0, [r4, #0xc]
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f0c

.thumb
branch_21d0f0c: @ 21d0f0c :thumb
	mov     r0, #0x8
	tst     r0, r2
	beq     branch_21d0f1c
	mov     r0, #0x3
	strb    r0, [r4, #0x11]
	strb    r3, [r4, #0x12]
	mov     r3, r1
	b       branch_21d0f6e
@ 0x21d0f1c

.thumb
branch_21d0f1c: @ 21d0f1c :thumb
	mov     r0, #0x80
	tst     r0, r2
	beq     branch_21d0f38
	ldrb    r0, [r4, #0x11]
	.hword  0x1c40 @ add r0, r0, #0x1
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	mov     r0, #0x1e
	ror     r2, r0
	add     r0, r3, r2
	strb    r0, [r4, #0x11]
	mov     r3, r1
	b       branch_21d0f6e
@ 0x21d0f38

.thumb
branch_21d0f38: @ 21d0f38 :thumb
	mov     r0, #0x40
	tst     r0, r2
	beq     branch_21d0f54
	ldrb    r0, [r4, #0x11]
	.hword  0x1cc0 @ add r0, r0, #0x3
	lsr     r3, r0, #31
	lsl     r2, r0, #30
	sub     r2, r2, r3
	mov     r0, #0x1e
	ror     r2, r0
	add     r0, r3, r2
	strb    r0, [r4, #0x11]
	mov     r3, r1
	b       branch_21d0f6e
@ 0x21d0f54

.thumb
branch_21d0f54: @ 21d0f54 :thumb
	mov     r0, #0x30
	tst     r0, r2
	beq     branch_21d0f6a
	ldrb    r0, [r4, #0x11]
	cmp     r0, #0x3
	bne     branch_21d0f6e
	ldrb    r0, [r4, #0x12]
	mov     r3, r1
	eor     r0, r1
	strb    r0, [r4, #0x12]
	b       branch_21d0f6e
@ 0x21d0f6a

.thumb
branch_21d0f6a: @ 21d0f6a :thumb
	mov     r0, r3
	pop     {r3-r5,pc}
@ 0x21d0f6e

.thumb
branch_21d0f6e: @ 21d0f6e :thumb
	cmp     r3, #0x0
	bne     branch_21d0f76
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f76

.thumb
branch_21d0f76: @ 21d0f76 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d0f9c, (=0x5dc)
	bl      Function_2005748
	ldrb    r1, [r4, #0x11]
	cmp     r1, #0x3
	bne     branch_21d0f8a
	ldrb    r0, [r4, #0x12]
	add     r0, r1, r0
	strb    r0, [r4, #0x16]
	b       branch_21d0f8c
@ 0x21d0f8a

.thumb
branch_21d0f8a: @ 21d0f8a :thumb
	strb    r1, [r4, #0x16]
.thumb
branch_21d0f8c: @ 21d0f8c :thumb
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d0f90

.word 0x21bf67c @ 0x21d0f90
.word 0x5dd @ 0x21d0f94
.word 0x5e3 @ 0x21d0f98
.word 0x5dc @ 0x21d0f9c
.thumb
Function_21d0fa0: @ 21d0fa0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrh    r0, [r5, #0x8]
	cmp     r0, #0x0
	beq     branch_21d0fb2
	cmp     r0, #0x1
	beq     branch_21d0ffe
	b       branch_21d102c
@ 0x21d0fb2

.thumb
branch_21d0fb2: @ 21d0fb2 :thumb
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0x1
	mov     r2, #0xa
	mov     r3, #0x6
	bl      0x200e060
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0xff
	bl      Function_201ada4
	ldr     r1, [r5, #0x0]
	mov     r0, #0x4c
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x20]
	mov     r1, #0x2
	mov     r2, r4
	bl      Function_200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldr     r0, [pc, #0x54] @ 0x21d1038, (=0x1020f)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0x1
	mov     r2, r4
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r4
	bl      Function_20237bc
	b       branch_21d102c
@ 0x21d0ffe

.thumb
branch_21d0ffe: @ 21d0ffe :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d103c, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x3
	tst     r0, r1
	bne     branch_21d100e
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d100e

.thumb
branch_21d100e: @ 21d100e :thumb
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x94
	bl      0x201acf4
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	ldrb    r1, [r5, #0xd]
	add     sp, #0x10
	strb    r1, [r5, #0xc]
	pop     {r3-r5,pc}
@ 0x21d102c

.thumb
branch_21d102c: @ 21d102c :thumb
	ldrh    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1038

.word 0x1020f @ 0x21d1038
.word 0x21bf67c @ 0x21d103c
.thumb
Function_21d1040: @ 21d1040 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x0]
	ldr     r1, [pc, #0x14] @ 0x21d1060, (=0x21d1cfc)
	str     r0, [sp, #0x0]
	ldr     r0, [r4, #0x18]
	mov     r2, #0x1
	mov     r3, #0x5
	bl      0x2002100
	add     r4, #0xa4
	str     r0, [r4, #0x0]
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d105e


.align 2


.word 0x21d1cfc @ 0x21d1060
.thumb
Function_21d1064: @ 21d1064 :thumb
	push    {r3,lr}
	mov     r1, r0
	add     r0, #0xa4
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d1080
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1084
	b       branch_21d1088
@ 0x21d1080

.thumb
branch_21d1080: @ 21d1080 :thumb
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d1084

.thumb
branch_21d1084: @ 21d1084 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d1088

.thumb
branch_21d1088: @ 21d1088 :thumb
	add     r0, r1, #0x1
	pop     {r3,pc}
@ 0x21d108c

.thumb
Function_21d108c: @ 21d108c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldrh    r1, [r5, #0x8]
	cmp     r1, #0x0
	beq     branch_21d10a2
	cmp     r1, #0x1
	beq     branch_21d1114
	cmp     r1, #0x2
	beq     branch_21d112c
	b       branch_21d116a
@ 0x21d10a2

.thumb
branch_21d10a2: @ 21d10a2 :thumb
	mov     r1, #0x1
	add     r0, #0x94
	mov     r2, #0xa
	mov     r3, #0x6
	strb    r1, [r5, #0x13]
	bl      0x200e060
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0xff
	bl      Function_201ada4
	ldr     r1, [r5, #0x0]
	mov     r0, #0x4c
	bl      Function_2023790
	mov     r4, r0
	ldr     r0, [r5, #0x20]
	mov     r1, #0x3
	mov     r2, r4
	bl      Function_200b1b8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	ldrb    r0, [r5, #0x10]
	mov     r1, #0x1
	mov     r2, r4
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x9c] @ 0x21d1178, (=0x1020f)
	str     r0, [sp, #0x8]
	mov     r0, r5
	str     r3, [sp, #0xc]
	add     r0, #0x94
	bl      0x201d78c
	strb    r0, [r5, #0xf]
	mov     r0, r4
	bl      Function_20237bc
	mov     r1, #0x0
	ldr     r0, [pc, #0x88] @ 0x21d117c, (=0x7fff)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldrb    r2, [r5, #0x17]
	ldr     r0, [r5, #0x30]
	mov     r3, #0x1
	add     r2, #0x22
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      0x20039b0
	ldrb    r0, [r5, #0x16]
	strb    r0, [r5, #0x17]
	mov     r0, #0x0
	strb    r0, [r5, #0x15]
	strb    r0, [r5, #0x14]
	b       branch_21d116a
@ 0x21d1114

.thumb
branch_21d1114: @ 21d1114 :thumb
	ldrb    r0, [r5, #0xf]
	bl      0x201d724
	cmp     r0, #0x0
	beq     branch_21d1124
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d1124

.thumb
branch_21d1124: @ 21d1124 :thumb
	mov     r0, r5
	bl      Function_21d1040
	b       branch_21d116a
@ 0x21d112c

.thumb
branch_21d112c: @ 21d112c :thumb
	bl      Function_21d1064
	mov     r4, r0
	bpl     branch_21d113a
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r5,pc}
@ 0x21d113a

.thumb
branch_21d113a: @ 21d113a :thumb
	mov     r0, r5
	add     r0, #0x94
	mov     r1, #0x1
	bl      0x200e084
	mov     r0, r5
	add     r0, #0x94
	bl      0x201acf4
	mov     r0, #0x0
	strh    r0, [r5, #0x8]
	cmp     r4, #0x0
	beq     branch_21d1160
	ldr     r1, [pc, #0x28] @ 0x21d1180, (=0xffff)
	ldr     r0, [r5, #0x1c]
	add     sp, #0x10
	strh    r1, [r0, #0x0]
	mov     r0, #0x1
	pop     {r3-r5,pc}
@ 0x21d1160

.thumb
branch_21d1160: @ 21d1160 :thumb
	ldrb    r1, [r5, #0xd]
	add     sp, #0x10
	strb    r1, [r5, #0xc]
	strb    r0, [r5, #0x13]
	pop     {r3-r5,pc}
@ 0x21d116a

.thumb
branch_21d116a: @ 21d116a :thumb
	ldrh    r0, [r5, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r5, #0x8]
	mov     r0, #0x0
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d1176


.align 2


.word 0x1020f @ 0x21d1178
.word 0x7fff @ 0x21d117c
.word 0xffff @ 0x21d1180
.thumb
Function_21d1184: @ 21d1184 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x5
	bls     branch_21d1192
	b       branch_21d12f6
@ 0x21d1192

.thumb
branch_21d1192: @ 21d1192 :thumb
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d119e

Jumppoints_21d119e:
.hword branch_21d11aa - Jumppoints_21d119e - 2
.hword branch_21d11f0 - Jumppoints_21d119e - 2
.hword branch_21d123a - Jumppoints_21d119e - 2
.hword branch_21d1256 - Jumppoints_21d119e - 2
.hword branch_21d1290 - Jumppoints_21d119e - 2
.hword branch_21d12e2 - Jumppoints_21d119e - 2
.thumb
branch_21d11aa: @ 21d11aa :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x13c] @ 0x21d1304, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x13c] @ 0x21d1308, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
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
	b       branch_21d12f6
@ 0x21d11f0

.thumb
branch_21d11f0: @ 21d11f0 :thumb
	bl      Function_21d13e8
	cmp     r0, #0x0
	bne     branch_21d11fe
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d11fe

.thumb
branch_21d11fe: @ 21d11fe :thumb
	ldr     r0, [pc, #0x10c] @ 0x21d130c, (=0x21d131d)
	mov     r1, r4
	bl      SetMainLoopFunctionCall
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x0
	bl      0x200f338
	mov     r1, #0x4
	ldr     r0, [pc, #0xf8] @ 0x21d1310, (=0x4000050)
	mov     r2, #0x8
	mov     r3, #0x1c
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, #0x5
	ldr     r0, [r4, #0x30]
	ldr     r2, [pc, #0xe0] @ 0x21d1314, (=0xffff)
	.hword  0x1f8b @ sub r3, r1, #0x6
	bl      0x2003178
	b       branch_21d12f6
@ 0x21d123a

.thumb
branch_21d123a: @ 21d123a :thumb
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1246
	bl      0x200c7ec
.thumb
branch_21d1246: @ 21d1246 :thumb
	ldr     r0, [r4, #0x30]
	bl      0x200384c
	cmp     r0, #0x0
	beq     branch_21d12f6
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1256

.thumb
branch_21d1256: @ 21d1256 :thumb
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1262
	bl      0x200c7ec
.thumb
branch_21d1262: @ 21d1262 :thumb
	ldrb    r1, [r4, #0xc]
	mov     r0, r4
	lsl     r2, r1, #2
	ldr     r1, [pc, #0xac] @ 0x21d1318, (=0x21d1d14)
	ldr     r1, [r1, r2]
	blx     r1
	cmp     r0, #0x0
	bne     branch_21d1278
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d1278

.thumb
branch_21d1278: @ 21d1278 :thumb
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0x10
	str     r0, [sp, #0x4]
	str     r1, [sp, #0x8]
	mov     r1, #0x5
	ldr     r0, [r4, #0x30]
	ldr     r2, [pc, #0x8c] @ 0x21d1314, (=0xffff)
	.hword  0x1f8b @ sub r3, r1, #0x6
	bl      0x2003178
	b       branch_21d12f6
@ 0x21d1290

.thumb
branch_21d1290: @ 21d1290 :thumb
	ldr     r0, [r4, #0x30]
	bl      0x200384c
	cmp     r0, #0x0
	beq     branch_21d12ac
	add     r4, #0xac
	ldr     r0, [r4, #0x0]
	cmp     r0, #0x0
	beq     branch_21d12a6
	bl      0x200c7ec
.thumb
branch_21d12a6: @ 21d12a6 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d12ac

.thumb
branch_21d12ac: @ 21d12ac :thumb
	mov     r0, #0x0
	mov     r1, r0
	bl      0x200f344
	mov     r0, #0x1
	mov     r1, #0x0
	bl      0x200f344
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	bl      0x201ff00
	bl      0x201ff68
	mov     r2, #0x1
	lsl     r2, r2, #26
	ldr     r1, [r2, #0x0]
	ldr     r0, [pc, #0x30] @ 0x21d1304, (=0xffffe0ff)
	and     r1, r0
	str     r1, [r2, #0x0]
	ldr     r2, [pc, #0x2c] @ 0x21d1308, (=0x4001000)
	ldr     r1, [r2, #0x0]
	and     r0, r1
	str     r0, [r2, #0x0]
	b       branch_21d12f6
@ 0x21d12e2

.thumb
branch_21d12e2: @ 21d12e2 :thumb
	bl      Function_21d1434
	cmp     r0, #0x0
	beq     branch_21d12f0
	add     sp, #0xc
	mov     r0, #0x1
	pop     {r3,r4,pc}
@ 0x21d12f0

.thumb
branch_21d12f0: @ 21d12f0 :thumb
	add     sp, #0xc
	mov     r0, #0x0
	pop     {r3,r4,pc}
@ 0x21d12f6

.thumb
branch_21d12f6: @ 21d12f6 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d1302


.align 2


.word 0xffffe0ff @ 0x21d1304
.word 0x4001000 @ 0x21d1308
.word 0x21d131d @ 0x21d130c
.word 0x4000050 @ 0x21d1310
.word 0xffff @ 0x21d1314
.word 0x21d1d14 @ 0x21d1318
.thumb
Function_21d131c: @ 21d131c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	beq     branch_21d132a
	bl      0x2003694
.thumb
branch_21d132a: @ 21d132a :thumb
	mov     r0, r4
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1338
	bl      0x200c800
.thumb
branch_21d1338: @ 21d1338 :thumb
	blx     0x20a635c
	ldr     r0, [r4, #0x18]
	bl      0x201c2b8
	ldr     r3, [pc, #0xc] @ 0x21d1350, (=0x27e0000)
	ldr     r1, [pc, #0xc] @ 0x21d1354, (=0x3ff8)
	mov     r0, #0x1
	ldr     r2, [r3, r1]
	orr     r0, r2
	str     r0, [r3, r1]
	pop     {r4,pc}
@ 0x21d1350

.word 0x27e0000 @ 0x21d1350
.word 0x3ff8 @ 0x21d1354
.thumb
Function_21d1358: @ 21d1358 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r1
	ldr     r2, [r4, #0x30]
	cmp     r2, #0x0
	bne     branch_21d136c
	bl      Function_200da58
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d136c

.thumb
branch_21d136c: @ 21d136c :thumb
	ldrb    r0, [r4, #0x13]
	cmp     r0, #0x0
	bne     branch_21d13e0
	ldrb    r3, [r4, #0x17]
	ldrb    r0, [r4, #0x16]
	cmp     r3, r0
	beq     branch_21d139a
	mov     r1, #0x0
	ldr     r0, [pc, #0x64] @ 0x21d13e4, (=0x7fff)
	str     r1, [sp, #0x0]
	str     r0, [sp, #0x4]
	add     r3, #0x22
	mov     r0, r2
	lsl     r2, r3, #16
	lsr     r2, r2, #16
	mov     r3, #0x1
	bl      0x20039b0
	ldrb    r0, [r4, #0x16]
	strb    r0, [r4, #0x17]
	mov     r0, #0x0
	strb    r0, [r4, #0x15]
	strb    r0, [r4, #0x14]
.thumb
branch_21d139a: @ 21d139a :thumb
	ldrb    r0, [r4, #0x14]
	mov     r1, #0x0
	mov     r3, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d13e4, (=0x7fff)
	str     r0, [sp, #0x4]
	ldrb    r2, [r4, #0x16]
	ldr     r0, [r4, #0x30]
	add     r2, #0x22
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      0x20039b0
	ldrb    r0, [r4, #0x15]
	ldrb    r1, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21d13d0
	.hword  0x1e48 @ sub r0, r1, #0x1
	strb    r0, [r4, #0x14]
	cmp     r1, #0x1
	bne     branch_21d13e0
	ldrb    r1, [r4, #0x15]
	mov     r0, #0x1
	add     sp, #0x8
	eor     r0, r1
	strb    r0, [r4, #0x15]
	pop     {r4,pc}
@ 0x21d13d0

.thumb
branch_21d13d0: @ 21d13d0 :thumb
	add     r0, r1, #0x1
	strb    r0, [r4, #0x14]
	cmp     r1, #0xc
	bne     branch_21d13e0
	ldrb    r1, [r4, #0x15]
	mov     r0, #0x1
	eor     r0, r1
	strb    r0, [r4, #0x15]
.thumb
branch_21d13e0: @ 21d13e0 :thumb
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d13e4

.word 0x7fff @ 0x21d13e4
.thumb
Function_21d13e8: @ 21d13e8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldrh    r1, [r4, #0x8]
	cmp     r1, #0x3
	bhi     branch_21d142a
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d13fe

Jumppoints_21d13fe:
.hword branch_21d1406 - Jumppoints_21d13fe - 2
.hword branch_21d140c - Jumppoints_21d13fe - 2
.hword branch_21d1412 - Jumppoints_21d13fe - 2
.hword branch_21d141e - Jumppoints_21d13fe - 2
.thumb
branch_21d1406: @ 21d1406 :thumb
	bl      Function_21d1480
	b       branch_21d142a
@ 0x21d140c

.thumb
branch_21d140c: @ 21d140c :thumb
	bl      Function_21d1598
	b       branch_21d142a
@ 0x21d1412

.thumb
branch_21d1412: @ 21d1412 :thumb
	bl      Function_21d18a8
	mov     r0, r4
	bl      Function_21d19c8
	b       branch_21d142a
@ 0x21d141e

.thumb
branch_21d141e: @ 21d141e :thumb
	bl      Function_21d1adc
	mov     r0, #0x0
	strh    r0, [r4, #0x8]
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d142a

.thumb
branch_21d142a: @ 21d142a :thumb
	ldrh    r0, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1434

.thumb
Function_21d1434: @ 21d1434 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_21d1cb8
	mov     r0, r4
	add     r0, #0x24
	beq     branch_21d1448
	ldr     r0, [r4, #0x20]
	bl      Function_200b190
.thumb
branch_21d1448: @ 21d1448 :thumb
	mov     r0, r4
	bl      Function_21d19a8
	mov     r0, r4
	bl      Function_21d1868
	mov     r0, r4
	bl      Function_21d1564
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d145e


.align 2, 0


.thumb
Function_21d1460: @ 21d1460 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d147c, (=0x21d1d70)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d146a: @ 21d146a :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d146a
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d147c

.word 0x21d1d70 @ 0x21d147c
.thumb
Function_21d1480: @ 21d1480 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x9c
	mov     r4, r0
	bl      Function_21d1460
	ldr     r0, [r4, #0x0]
	bl      0x2018340
	add     r3, sp, #0x0
	ldr     r5, [pc, #0xc8] @ 0x21d155c, (=0x21d1d04)
	str     r0, [r4, #0x18]
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	bl      0x2018368
	ldr     r5, [pc, #0xb8] @ 0x21d1560, (=0x21d1d98)
	add     r3, sp, #0x10
	mov     r2, #0x11
.thumb
branch_21d14ac: @ 21d14ac :thumb
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d14ac
	ldr     r0, [r5, #0x0]
	mov     r1, #0x0
	str     r0, [r3, #0x0]
	ldr     r0, [r4, #0x18]
	add     r2, sp, #0x10
	mov     r3, r1
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	add     r2, sp, #0x2c
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	add     r2, sp, #0x48
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	add     r2, sp, #0x64
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	add     r2, sp, #0x80
	mov     r3, #0x0
	bl      0x20183c4
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2019ebc
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2019ebc
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	bl      0x2019ebc
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	bl      0x2019ebc
	mov     r0, #0x0
	ldr     r3, [r4, #0x0]
	mov     r1, #0x20
	mov     r2, r0
	bl      0x2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	ldr     r3, [r4, #0x0]
	mov     r0, #0x4
	mov     r1, #0x20
	mov     r2, #0x0
	bl      0x2019690
	add     sp, #0x9c
	pop     {r4,r5,pc}
@ 0x21d155c

.word 0x21d1d04 @ 0x21d155c
.word 0x21d1d98 @ 0x21d1560
.thumb
Function_21d1564: @ 21d1564 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x18]
	mov     r1, #0x4
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x3
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x2
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x1
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	mov     r1, #0x0
	bl      0x2019044
	ldr     r0, [r4, #0x18]
	bl      free
	pop     {r4,pc}
@ 0x21d1598

.thumb
Function_21d1598: @ 21d1598 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x2c
	mov     r5, r0
	ldr     r0, [r5, #0x1c]
	ldr     r1, [r5, #0x0]
	ldrb    r7, [r0, #0xf]
	mov     r0, r7
	str     r0, [sp, #0x20]
	add     r0, #0x18
	str     r0, [sp, #0x20]
	mov     r0, #0x4f
	bl      0x2006c24
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r4, r0
	ldr     r0, [r5, #0x0]
	mov     r2, #0x1
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	mov     r3, #0x5
	bl      0x200daa4
	ldrh    r0, [r5, #0xa]
	mov     r1, #0x0
	mov     r2, #0xa
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	ldr     r0, [r5, #0x0]
	mov     r3, #0x6
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	bl      0x200dd0c
	mov     r0, r7
	str     r0, [sp, #0x1c]
	add     r0, #0xc
	str     r0, [sp, #0x1c]
	ldr     r1, [sp, #0x1c]
	mov     r0, r4
	bl      0x2006d84
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc2_maybe
	mov     r6, r0
	ldr     r1, [sp, #0x1c]
	mov     r0, r4
	mov     r2, r6
	bl      0x2006d28
	mov     r0, r6
	add     r1, sp, #0x28
	blx     0x20a7118
	ldr     r3, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0x18]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x1
	bl      0x201958c
	ldr     r3, [sp, #0x28]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	ldr     r2, [r3, #0x14]
	ldr     r0, [r5, #0x18]
	ldr     r3, [r3, #0x10]
	mov     r1, #0x4
	bl      0x201958c
	mov     r0, r6
	bl      free
	mov     r0, r4
	mov     r1, r7
	bl      0x2006d84
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc2_maybe
	mov     r6, r0
	mov     r0, r4
	mov     r1, r7
	mov     r2, r6
	bl      0x2006d28
	mov     r0, r6
	add     r1, sp, #0x24
	blx     0x20a71b0
	ldr     r2, [sp, #0x24]
	mov     r0, #0x4
	ldr     r1, [r2, #0xc]
	ldr     r2, [r2, #0x8]
	mov     r3, #0x0
	lsl     r2, r2, #16
	lsr     r2, r2, #16
	bl      0x201972c
	ldr     r0, [r5, #0x0]
	bl      0x2002f38
	str     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x0
	mov     r2, #0xe0
	bl      Function_2002f70
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x2
	mov     r2, #0x60
	bl      Function_2002f70
	mov     r0, #0x60
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x24]
	mov     r2, #0x0
	ldr     r0, [r5, #0x30]
	ldr     r1, [r1, #0xc]
	mov     r3, r2
	bl      0x2002fbc
	ldrb    r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_21d16b4
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	ldr     r1, [sp, #0x24]
	ldr     r0, [r5, #0x30]
	ldr     r1, [r1, #0xc]
	mov     r2, #0x0
	add     r1, #0x60
	mov     r3, #0x10
	bl      0x2002fbc
.thumb
branch_21d16b4: @ 21d16b4 :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x60
	str     r0, [sp, #0x4]
	mov     r2, #0x0
	str     r2, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x13
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x30
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0xe
	mov     r2, #0x6
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x40
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0xe
	mov     r2, #0x7
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x50
	str     r0, [sp, #0x8]
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x26
	mov     r2, #0x18
	bl      0x2003050
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	mov     r0, #0x60
	str     r0, [sp, #0x8]
	ldrh    r2, [r5, #0xa]
	ldr     r0, [r5, #0x30]
	ldr     r3, [r5, #0x0]
	mov     r1, #0x26
	add     r2, #0x19
	bl      0x2003050
	mov     r0, #0x10
	mov     r1, #0x0
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	ldr     r0, [r5, #0x30]
	mov     r2, r1
	mov     r3, #0x70
	bl      0x20039b0
	mov     r0, #0x10
	str     r0, [sp, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x4]
	ldr     r0, [r5, #0x30]
	mov     r1, #0x2
	mov     r3, #0x30
	bl      0x20039b0
	ldr     r0, [r5, #0x30]
	mov     r1, #0x1
	bl      0x2003858
	ldr     r0, [r5, #0x30]
	bl      0x2003694
	mov     r0, r6
	bl      free
	ldr     r1, [sp, #0x20]
	mov     r0, r4
	bl      0x2006d84
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc_maybe
	str     r0, [r5, #0x34]
	ldr     r1, [sp, #0x20]
	ldr     r2, [r5, #0x34]
	mov     r0, r4
	bl      0x2006d28
	mov     r1, r5
	ldr     r0, [r5, #0x34]
	add     r1, #0x3c
	blx     0x20a7248
	mov     r0, r4
	mov     r1, #0x24
	bl      0x2006d84
	mov     r1, r0
	ldr     r0, [r5, #0x0]
	bl      malloc_maybe
	str     r0, [r5, #0x38]
	ldr     r2, [r5, #0x38]
	mov     r0, r4
	mov     r1, #0x24
	bl      0x2006d28
	mov     r1, r5
	ldr     r0, [r5, #0x38]
	add     r1, #0x40
	blx     0x20a7248
	mov     r0, r4
	bl      0x2006ca8
	mov     r3, #0x0
	str     r3, [sp, #0x0]
	mov     r0, #0x20
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x11
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x18]
	ldr     r2, [pc, #0x98] @ 0x21d1860, (=0x2001)
	mov     r1, #0x4
	bl      0x2019cb8
	mov     r2, #0x0
	ldr     r0, [r5, #0x3c]
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
	ldr     r0, [r5, #0x18]
	bl      0x20198e8
	ldr     r0, [r5, #0x18]
	mov     r1, #0x3
	bl      0x201c3c0
	ldr     r0, [r5, #0x18]
	mov     r1, #0x4
	bl      0x201c3c0
	ldrb    r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_21d185a
	ldr     r0, [r5, #0x40]
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
	ldr     r0, [r5, #0x18]
	bl      0x20198e8
	ldr     r0, [r5, #0x18]
	mov     r1, #0x2
	bl      0x201c3c0
	mov     r2, #0x0
	strb    r2, [r5, #0x14]
	ldr     r0, [pc, #0x10] @ 0x21d1864, (=0x21d1359)
	mov     r1, r5
	strb    r2, [r5, #0x15]
	bl      0x200d9e8
.thumb
branch_21d185a: @ 21d185a :thumb
	add     sp, #0x2c
	pop     {r4-r7,pc}
@ 0x21d185e


.align 2


.word 0x2001 @ 0x21d1860
.word 0x21d1359 @ 0x21d1864
.thumb
Function_21d1868: @ 21d1868 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	ldr     r0, [r4, #0x38]
	bl      free
	ldr     r0, [r4, #0x34]
	bl      free
	ldr     r0, [r4, #0x30]
	mov     r1, #0x2
	bl      0x2002fa0
	ldr     r0, [r4, #0x30]
	mov     r1, #0x0
	bl      0x2002fa0
	ldr     r0, [r4, #0x30]
	bl      0x2002f54
	mov     r1, #0x0
	str     r1, [r4, #0x30]
	ldr     r0, [pc, #0xc] @ 0x21d18a4, (=0x4000050)
	mov     r2, r1
	mov     r3, #0x1f
	str     r1, [sp, #0x0]
	blx     G2x_SetBlendAlpha_
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d18a4

.word 0x4000050 @ 0x21d18a4
.thumb
Function_21d18a8: @ 21d18a8 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r3, #0x3
	mov     r5, r0
	str     r3, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	ldr     r0, [pc, #0xd0] @ 0x21d1990, (=0x397)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x44
	bl      0x201a7e8
	mov     r0, #0x8
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	ldr     r0, [pc, #0xb4] @ 0x21d1994, (=0x32f)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x54
	mov     r3, #0x3
	bl      0x201a7e8
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	mov     r0, #0x1a
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	ldr     r0, [pc, #0x98] @ 0x21d1998, (=0x2c7)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x64
	mov     r3, #0x3
	bl      0x201a7e8
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	ldr     r0, [pc, #0x7c] @ 0x21d199c, (=0x2b7)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x74
	mov     r3, #0x15
	bl      0x201a7e8
	mov     r0, #0x14
	str     r0, [sp, #0x0]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	mov     r0, #0x2
	str     r0, [sp, #0x8]
	mov     r2, #0x1
	mov     r1, r5
	ldr     r0, [pc, #0x60] @ 0x21d19a0, (=0x2a7)
	str     r2, [sp, #0xc]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x84
	mov     r3, #0x3
	bl      0x201a7e8
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x1b
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	ldr     r0, [pc, #0x48] @ 0x21d19a4, (=0x297)
	mov     r1, r5
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x18]
	add     r1, #0x94
	mov     r2, #0x0
	mov     r3, #0x2
	bl      0x201a7e8
	mov     r4, #0x0
	add     r5, #0x44
	mov     r6, r4
.thumb
branch_21d1972: @ 21d1972 :thumb
	mov     r0, r5
	mov     r1, r6
	bl      Function_201ada4
	cmp     r4, #0x5
	bge     branch_21d1984
	mov     r0, r5
	bl      0x201a954
.thumb
branch_21d1984: @ 21d1984 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_21d1972
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d1990

.word 0x397 @ 0x21d1990
.word 0x32f @ 0x21d1994
.word 0x2c7 @ 0x21d1998
.word 0x2b7 @ 0x21d199c
.word 0x2a7 @ 0x21d19a0
.word 0x297 @ 0x21d19a4
.thumb
Function_21d19a8: @ 21d19a8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	add     r5, #0x44
.thumb
branch_21d19b0: @ 21d19b0 :thumb
	mov     r0, r5
	bl      0x201acf4
	mov     r0, r5
	bl      Function_201a8fc
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x10
	cmp     r4, #0x6
	blt     branch_21d19b0
	pop     {r3-r5,pc}
@ 0x21d19c6


.align 2, 0


.thumb
Function_21d19c8: @ 21d19c8 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x1c
	mov     r4, r0
	mov     r7, #0x0
	mov     r6, r4
	mov     r5, r7
	add     r6, #0x44
.thumb
branch_21d19d6: @ 21d19d6 :thumb
	ldr     r0, [r4, #0x1c]
	add     r0, #0x1a
	add     r0, r0, r5
	bl      0x2014bbc
	cmp     r0, #0x0
	beq     branch_21d1a18
	ldr     r0, [r4, #0x1c]
	ldr     r1, [r4, #0x0]
	add     r0, #0x1a
	add     r0, r0, r5
	bl      0x2014b34
	str     r0, [sp, #0x10]
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0xd8] @ 0x21d1ad4, (=0x10200)
	ldr     r2, [sp, #0x10]
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	mov     r0, r6
	mov     r1, #0x1
	mov     r3, #0x0
	bl      0x201d78c
	ldr     r0, [sp, #0x10]
	bl      Function_20237bc
	mov     r0, r6
	bl      0x201a954
.thumb
branch_21d1a18: @ 21d1a18 :thumb
	.hword  0x1c7f @ add r7, r7, #0x1
	add     r5, #0x8
	add     r6, #0x10
	cmp     r7, #0x3
	blt     branch_21d19d6
	ldrb    r0, [r4, #0xc]
	cmp     r0, #0x1
	bne     branch_21d1aac
	ldr     r2, [pc, #0xac] @ 0x21d1ad8, (=0x199)
	ldr     r3, [r4, #0x0]
	mov     r0, #0x1
	mov     r1, #0x1a
	bl      Function_200b144
	str     r0, [r4, #0x20]
	ldr     r1, [r4, #0x0]
	mov     r0, #0x10
	bl      Function_2023790
	mov     r5, r0
	mov     r0, r4
	str     r0, [sp, #0x18]
	add     r0, #0x44
	mov     r6, #0x0
	str     r0, [sp, #0x18]
.thumb
branch_21d1a4a: @ 21d1a4a :thumb
	mov     r0, r5
	bl      0x20237e8
	ldr     r0, [r4, #0x20]
	mov     r1, r6
	mov     r2, r5
	bl      Function_200b1b8
	mov     r0, #0x1
	mov     r1, r5
	mov     r2, #0x0
	bl      0x2002d7c
	mov     r1, #0x40
	sub     r7, r1, r0
	add     r0, r6, #0x3
	lsl     r0, r0, #4
	str     r0, [sp, #0x14]
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x5c] @ 0x21d1ad4, (=0x10200)
	lsr     r3, r7, #31
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	str     r0, [sp, #0xc]
	add     r3, r7, r3
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	mov     r2, r5
	add     r0, r0, r1
	mov     r1, #0x1
	asr     r3, r3, #1
	bl      0x201d78c
	ldr     r1, [sp, #0x14]
	ldr     r0, [sp, #0x18]
	add     r0, r0, r1
	bl      0x201a954
	.hword  0x1c76 @ add r6, r6, #0x1
	cmp     r6, #0x2
	blt     branch_21d1a4a
	mov     r0, r5
	bl      Function_20237bc
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d1aac

.thumb
branch_21d1aac: @ 21d1aac :thumb
	mov     r0, #0x2
	str     r0, [sp, #0x0]
	mov     r3, #0x0
	ldr     r0, [pc, #0x20] @ 0x21d1ad4, (=0x10200)
	str     r3, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r4, #0x1c]
	mov     r0, r4
	ldr     r2, [r2, #0x10]
	add     r0, #0x74
	mov     r1, #0x1
	bl      0x201d78c
	add     r4, #0x74
	mov     r0, r4
	bl      0x201a954
	add     sp, #0x1c
	pop     {r4-r7,pc}
@ 0x21d1ad4

.word 0x10200 @ 0x21d1ad4
.word 0x199 @ 0x21d1ad8
.thumb
Function_21d1adc: @ 21d1adc :thumb
	push    {r4-r7,lr}
	add     sp, #-0x94
	mov     r5, r0
	bl      0x20397e4
	ldrb    r0, [r5, #0xc]
	cmp     r0, #0x1
	bne     branch_21d1aee
	b       branch_21d1ca4
@ 0x21d1aee

.thumb
branch_21d1aee: @ 21d1aee :thumb
	ldr     r1, [r5, #0x0]
	mov     r0, #0x20
	bl      0x201dbec
	ldr     r0, [r5, #0x0]
	bl      0x200c6e4
	mov     r1, r5
	add     r1, #0xa8
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0xa8
	ldr     r0, [r0, #0x0]
	bl      0x200c704
	mov     r1, r5
	add     r1, #0xac
	add     r2, sp, #0x40
	ldr     r4, [pc, #0x194] @ 0x21d1ca8, (=0x21d1d50)
	str     r0, [r1, #0x0]
	ldmia   r4!, {r0,r1}
	mov     r3, r2
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	stmia   r2!, {r0,r1}
	ldmia   r4!, {r0,r1}
	ldr     r6, [pc, #0x184] @ 0x21d1cac, (=0x21d1d24)
	stmia   r2!, {r0,r1}
	add     r4, sp, #0x2c
	ldmia   r6!, {r0,r1}
	mov     r2, r4
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldr     r0, [r6, #0x0]
	ldr     r6, [pc, #0x174] @ 0x21d1cb0, (=0x21d1d38)
	str     r0, [r4, #0x0]
	add     r4, sp, #0x14
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r4!, {r0,r1}
	mov     r0, r5
	add     r0, #0xa8
	mov     r1, r3
	ldr     r0, [r0, #0x0]
	mov     r3, #0x20
	bl      0x200c73c
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3
	bl      0x200c7c0
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	add     r2, sp, #0x14
	bl      0x200cb30
	ldr     r0, [r5, #0x0]
	bl      0x200a93c
	bl      0x2079fd0
	mov     r1, #0x0
	mov     r3, r0
	str     r1, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x1
	str     r0, [sp, #0x8]
	str     r1, [sp, #0xc]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x13
	bl      0x200cc9c
	bl      0x2079fd4
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x13
	bl      0x200ce0c
	bl      0x2079fe0
	mov     r3, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x13
	bl      0x200ce3c
	mov     r6, #0x0
	mov     r4, r6
	str     r6, [sp, #0x10]
	mov     r7, r5
.thumb
branch_21d1bec: @ 21d1bec :thumb
	ldr     r0, [r5, #0x1c]
	add     r3, r0, r4
	ldrh    r1, [r3, #0x14]
	ldr     r0, [pc, #0xc0] @ 0x21d1cb4, (=0xffff)
	cmp     r1, r0
	beq     branch_21d1ca4
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldrh    r3, [r3, #0x14]
	mov     r0, r5
	mov     r1, r5
	add     r0, #0xa8
	add     r1, #0xac
	lsl     r3, r3, #20
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x13
	lsr     r3, r3, #20
	bl      0x200d828
	add     r0, sp, #0x60
	mov     r1, #0x0
	mov     r2, #0x34
	blx     MI_CpuFill8
	ldr     r0, [sp, #0x10]
	mov     r1, #0x80
	sub     r1, r1, r0
	add     r0, sp, #0x60
	strh    r1, [r0, #0x0]
	mov     r1, #0xa0
	strh    r1, [r0, #0x2]
	mov     r1, #0x0
	strh    r1, [r0, #0x4]
	strh    r1, [r0, #0x6]
	mov     r0, #0x2
	str     r0, [sp, #0x8c]
	ldr     r0, [r5, #0x1c]
	add     r2, sp, #0x60
	add     r0, r0, r4
	ldrh    r0, [r0, #0x14]
	lsl     r0, r0, #16
	lsr     r0, r0, #28
	str     r0, [sp, #0x6c]
	mov     r0, r1
	str     r0, [sp, #0x90]
	mov     r0, #0x1
	str     r0, [sp, #0x70]
	mov     r0, r1
	str     r0, [sp, #0x78]
	str     r0, [sp, #0x7c]
	str     r0, [sp, #0x80]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x84]
	.hword  0x1e48 @ sub r0, r1, #0x1
	str     r0, [sp, #0x88]
	mov     r0, r5
	mov     r1, r5
	str     r6, [sp, #0x74]
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      0x200ce6c
	mov     r1, r7
	add     r1, #0xb0
	str     r0, [r1, #0x0]
	ldr     r0, [r5, #0x1c]
	add     r0, r0, r4
	ldrh    r0, [r0, #0x14]
	lsl     r0, r0, #20
	lsr     r0, r0, #20
	cmp     r0, #0x7
	bne     branch_21d1c94
	mov     r0, r7
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	mov     r1, #0x0
	bl      0x200d3f4
.thumb
branch_21d1c94: @ 21d1c94 :thumb
	ldr     r0, [sp, #0x10]
	.hword  0x1c76 @ add r6, r6, #0x1
	add     r0, #0x28
	.hword  0x1ca4 @ add r4, r4, #0x2
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r0, [sp, #0x10]
	cmp     r6, #0x3
	blt     branch_21d1bec
.thumb
branch_21d1ca4: @ 21d1ca4 :thumb
	add     sp, #0x94
	pop     {r4-r7,pc}
@ 0x21d1ca8

.word 0x21d1d50 @ 0x21d1ca8
.word 0x21d1d24 @ 0x21d1cac
.word 0x21d1d38 @ 0x21d1cb0
.word 0xffff @ 0x21d1cb4
.thumb
Function_21d1cb8: @ 21d1cb8 :thumb
	push    {r4-r6,lr}
	mov     r6, r0
	ldrb    r0, [r6, #0xc]
	cmp     r0, #0x0
	bne     branch_21d1cf8
	mov     r4, #0x0
	mov     r5, r6
.thumb
branch_21d1cc6: @ 21d1cc6 :thumb
	mov     r0, r5
	add     r0, #0xb0
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d1cd4
	bl      0x200d0f4
.thumb
branch_21d1cd4: @ 21d1cd4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d1cc6
	mov     r0, r6
	mov     r1, r6
	add     r0, #0xa8
	add     r1, #0xac
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	bl      Function_200d0b0
	add     r6, #0xa8
	ldr     r0, [r6, #0x0]
	bl      0x200c8d4
	bl      0x201dc3c
branch_21d1cf8: @ 21d1cf8 :thumb
	pop     {r4-r6,pc}



.align 2, 0
Unknown_21d1cfc: @ 0x21d1cfc
.incbin "./baserom/overlay/overlay_0075.bin", 0xf7c, 0x21d1e40 - 0x21d1cfc


@end 0x21d1e40




