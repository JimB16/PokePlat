

.thumb
Function_2034198: @ 2034198 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r4, #0x0
	ldr     r1, [pc, #0x1b0] @ 0x2034350, (=RAM_21c07c4)
	cmp     r0, #0x0
	strb    r4, [r1, #RAM_21c07c4_1]
	bne     branch_20341a8
	b       branch_20342f0

branch_20341a8: @ 20341a8 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	ldr     r0, [pc, #0x198] @ 0x2034350, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_20341c2

	mov     r0, #0x1
	pop     {r4-r6,pc}

branch_20341c2: @ 20341c2 :thumb
	mov     r0, #0xf
	bl      Function_20363e8

	mov     r1, #0x6e
	mov     r0, #0xf
	lsl     r1, r1, #4
	bl      malloc
	ldr     r2, [pc, #0x17c] @ 0x2034350, (=RAM_21c07c4)
	mov     r1, #0x1f
	mov     r3, r0
	and     r3, r1
	mov     r1, #0x20
	sub     r1, r1, r3
	str     r0, [r2, #RAM_21c07c4_4]
	add     r0, r1, r0
	str     r0, [r2, #RAM_21c07c4_8]
	mov     r2, #0x1b
	mov     r1, r4
	lsl     r2, r2, #6
	blx     MI_CpuFill8
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_203420a

	ldr     r0, [pc, #0x154] @ 0x2034350, (=RAM_21c07c4)
	lsl     r2, r5, #1
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x69
	add     r2, #0x40
	lsl     r0, r0, #4
	str     r2, [r1, r0]
	b       branch_2034216

branch_203420a: @ 203420a :thumb
	ldr     r0, [pc, #0x144] @ 0x2034350, (=RAM_21c07c4)
	add     r5, #0x40
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x69
	lsl     r0, r0, #4
	str     r5, [r1, r0]
branch_2034216: @ 2034216 :thumb
	ldr     r2, [pc, #0x138] @ 0x2034350, (=RAM_21c07c4)
	mov     r1, #0x69
	ldr     r0, [r2, #RAM_21c07c4_8]
	lsl     r1, r1, #4
	ldr     r3, [r0, r1]
	mov     r5, r3
	mul     r5, r6
	sub     r3, r1, #0x4
	str     r5, [r0, r3]
	mov     r0, r1
	ldr     r3, [r2, #RAM_21c07c4_8]
	mov     r5, #0x0
	add     r0, #0x1d
	strb    r5, [r3, r0]
	mov     r0, r1
	ldr     r3, [r2, #RAM_21c07c4_8]
	mov     r5, #0x26
	add     r0, #0x1e
	strb    r5, [r3, r0]
	ldr     r2, [r2, #RAM_21c07c4_8]
	mov     r0, #0xf
	ldr     r1, [r2, r1]
	lsl     r1, r1, #1
	bl      malloc
	ldr     r2, [pc, #0x104] @ 0x2034350, (=RAM_21c07c4)
	mov     r1, #0x49
	ldr     r3, [r2, #RAM_21c07c4_8]
	lsl     r1, r1, #4
	str     r0, [r3, r1]

	mov     r1, #0x69
	ldr     r2, [r2, #RAM_21c07c4_8]
	lsl     r1, r1, #4
	ldr     r1, [r2, r1]
	mov     r0, #0xf
	bl      malloc
	ldr     r2, [pc, #0xec] @ 0x2034350, (=RAM_21c07c4)
	ldr     r1, [pc, #0xf0] @ 0x2034354, (=0x494)
	ldr     r3, [r2, #RAM_21c07c4_8]
	str     r0, [r3, r1]

	ldr     r2, [r2, #RAM_21c07c4_8]
	ldr     r1, [pc, #0xec] @ 0x2034358, (=0x68c)
	mov     r0, #0xf
	ldr     r1, [r2, r1]
	bl      malloc
	ldr     r2, [pc, #0xd8] @ 0x2034350, (=RAM_21c07c4)
	ldr     r1, [pc, #0xe4] @ 0x203435c, (=0x48c)
	ldr     r3, [r2, #RAM_21c07c4_8]
	str     r0, [r3, r1]

	ldr     r2, [r2, #RAM_21c07c4_8]
	ldr     r1, [pc, #0xd8] @ 0x2034358, (=0x68c)
	mov     r0, #0xf
	ldr     r1, [r2, r1]
	bl      malloc
	ldr     r1, [pc, #0xc4] @ 0x2034350, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0xd0] @ 0x2034360, (=0x488)
	str     r0, [r2, r1]

	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_20342c4

	ldr     r0, [pc, #0xb4] @ 0x2034350, (=RAM_21c07c4)
	mov     r2, #0x16
	ldr     r3, [r0, #RAM_21c07c4_8]
	lsl     r2, r2, #6
	add     r0, r3, r2
	sub     r2, #0xe8
	mov     r1, #0x64
	add     r2, r3, r2
	bl      Function_20325ec

	ldr     r0, [pc, #0xa0] @ 0x2034350, (=RAM_21c07c4)
	mov     r2, #0x5a
	mov     r1, #0x32
	ldr     r3, [r0, #RAM_21c07c4_8]
	lsl     r2, r2, #4
	add     r0, r3, r2
	sub     r2, #0x90
	lsl     r1, r1, #4
	add     r2, r3, r2
	bl      Function_20325ec
	b       branch_20342fc

branch_20342c4: @ 20342c4 :thumb
	ldr     r0, [pc, #0x88] @ 0x2034350, (=RAM_21c07c4)
	mov     r2, #0x16
	ldr     r3, [r0, #RAM_21c07c4_8]
	lsl     r2, r2, #6
	add     r0, r3, r2
	sub     r2, #0xe8
	mov     r1, #0x14
	add     r2, r3, r2
	bl      Function_20325ec

	ldr     r0, [pc, #0x74] @ 0x2034350, (=RAM_21c07c4)
	mov     r2, #0x5a
	mov     r1, r5
	ldr     r3, [r0, #RAM_21c07c4_8]
	lsl     r2, r2, #4
	add     r0, r3, r2
	sub     r2, #0x90
	add     r1, #0xf2
	add     r2, r3, r2
	bl      Function_20325ec
	b       branch_20342fc

branch_20342f0: @ 20342f0 :thumb
	ldr     r0, [r1, #0x8]
	mov     r4, #0x1
	cmp     r0, #0x0
	bne     branch_20342fc
	bl      ErrorHandling
branch_20342fc: @ 20342fc :thumb

	ldr     r2, [pc, #0x50] @ 0x2034350, (=RAM_21c07c4)
	ldr     r1, [pc, #0x64] @ 0x2034364, (=0x694)
	ldr     r3, [r2, #RAM_21c07c4_8]
	mov     r0, #0x0
	strh    r0, [r3, r1]
	mov     r5, #0xff
	add     r1, #0x13
branch_203430a: @ 203430a :thumb
	ldr     r3, [r2, #RAM_21c07c4_8]
	add     r3, r3, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r5, [r3, r1]
	cmp     r0, #0x4
	blt     branch_203430a
	cmp     r4, #0x0
	bne     branch_203431e
	bl      Function_203463c
branch_203431e: @ 203431e :thumb
	ldr     r0, [pc, #0x30] @ 0x2034350, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x44] @ 0x2034368, (=0x62c)
	add     r0, r1, r0
	bl      Function_20361bc
	cmp     r4, #0x0
	bne     branch_2034340
	mov     r1, #0x0
	ldr     r0, [pc, #0x38] @ 0x203436c, (=Function_203498c+1)
	mov     r2, r1
	bl      AddTaskToTaskList2
	ldr     r1, [pc, #0x14] @ 0x2034350, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x30] @ 0x2034370, (=0x57c)
	str     r0, [r2, r1]
branch_2034340: @ 2034340 :thumb

	ldr     r0, [pc, #0xc] @ 0x2034350, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x2c] @ 0x2034374, (=0x6b7)
	strb    r2, [r1, r0]

	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x203434e

.align 2
.word RAM_21c07c4 @ 0x2034350
.word 0x494 @ 0x2034354
.word 0x68c @ 0x2034358
.word 0x48c @ 0x203435c
.word 0x488 @ 0x2034360
.word 0x694 @ 0x2034364
.word 0x62c @ 0x2034368
.word Function_203498c+1 @ 0x203436c
.word 0x57c @ 0x2034370
.word 0x6b7 @ 0x2034374



.thumb
Function_2034378: @ 2034378 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	mov     r2, #0x66
	ldr     r3, [pc, #0x268] @ 0x20345f4, (=RAM_21c07c4)
	add     r7, r0, #0x1
	ldr     r0, [r3, #RAM_21c07c4_8]
	mov     r1, #0x0
	lsl     r2, r2, #4
	strb    r1, [r0, r2]
	add     r0, r2, #0x1
	ldr     r4, [r3, #RAM_21c07c4_8]
	add     r2, #0x2c
	strb    r1, [r4, r0]
	ldr     r3, [r3, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x254] @ 0x20345f8, (=0x48c)
	ldr     r2, [r3, r2]
	ldr     r0, [r3, r0]
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x248] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x60
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x248] @ 0x20345fc, (=0x51c)
	add     r0, r1, r0
	mov     r1, #0x0
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x238] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x240] @ 0x2034600, (=0x68c)
	ldr     r0, [r1, r0]
	mov     r1, r7
	blx     _s32_div_f
	mov     r4, r0
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	cmp     r7, #0x0
	ble     branch_20343fa

	mov     r6, r0
	mov     r5, r0
branch_20343d6: @ 20343d6 :thumb
	ldr     r0, [pc, #0x21c] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r2, [pc, #0x21c] @ 0x20345f8, (=0x48c)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x21c] @ 0x20345fc, (=0x51c)
	add     r0, r1, r0
	ldr     r1, [r1, r2]
	add     r0, r0, r5
	add     r1, r1, r6
	mov     r2, r4
	bl      Function_2032188
	ldr     r0, [sp, #0x4]
	add     r6, r6, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0xc
	str     r0, [sp, #0x4]
	cmp     r0, r7
	blt     branch_20343d6

branch_20343fa: @ 20343fa :thumb
	ldr     r0, [pc, #0x1f8] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r2, [pc, #0x200] @ 0x2034600, (=0x68c)
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x200] @ 0x2034604, (=0x488)
	ldr     r2, [r3, r2]
	ldr     r0, [r3, r0]
	mov     r1, #0x0
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x1e4] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x60
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, #0x0
	blx     MI_CpuFill8

	mov     r0, #0x0
	str     r0, [sp, #0x0]
	cmp     r7, #0x0
	ble     branch_2034450

	mov     r6, r0
	mov     r5, r0
branch_203442a: @ 203442a :thumb
	ldr     r0, [pc, #0x1c8] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r2, [pc, #0x1d4] @ 0x2034604, (=0x488)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	ldr     r1, [r1, r2]
	add     r0, r0, r5
	add     r1, r1, r6
	mov     r2, r4
	bl      Function_2032188
	ldr     r0, [sp, #0x0]
	add     r6, r6, r4
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r5, #0xc
	str     r0, [sp, #0x0]
	cmp     r0, r7
	blt     branch_203442a

branch_2034450: @ 2034450 :thumb
	ldr     r0, [pc, #0x1a0] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x6
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0xc2
	lsl     r0, r0, #2
	add     r0, r1, r0
	mov     r1, #0x0
	lsl     r2, r2, #6
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x18c] @ 0x20345f4, (=RAM_21c07c4)
	mov     r1, #0xc2
	ldr     r2, [r0, #RAM_21c07c4_8]
	mov     r0, #0x51
	lsl     r0, r0, #4
	lsl     r1, r1, #2
	add     r0, r2, r0
	add     r1, r2, r1
	mov     r2, #0x6
	lsl     r2, r2, #6
	bl      Function_2032188

	ldr     r0, [pc, #0x174] @ 0x20345f4, (=RAM_21c07c4)
	mov     r1, #0xee
	ldr     r0, [r0, #RAM_21c07c4_8]
	mov     r2, r1
	add     r0, #0x80
	add     r2, #0x92
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x164] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, #0xee
	mov     r2, r1
	add     r2, #0x92
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x150] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x2
	ldr     r0, [r0, #RAM_21c07c4_8]
	lsl     r2, r2, #8
	add     r0, r0, r2
	mov     r1, #0x0
	sub     r2, #0xf8
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x140] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x2
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x14c] @ 0x2034608, (=0x498)
	lsl     r2, r2, #8
	add     r0, r1, r0
	add     r1, r1, r2
	sub     r2, #0xf8
	bl      Function_2032188

	ldr     r0, [pc, #0x12c] @ 0x20345f4, (=RAM_21c07c4)
	mov     r1, #0xee
	ldr     r0, [r0, #RAM_21c07c4_8]
	mov     r2, #0x26
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x120] @ 0x20345f4, (=RAM_21c07c4)
	mov     r1, #0xee
	ldr     r0, [r0, #RAM_21c07c4_8]
	mov     r2, #0x26
	add     r0, #0x40
	blx     MI_CpuFill8

	ldr     r0, [pc, #0x110] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0xff
	ldr     r1, [r0, #RAM_21c07c4_8]
	strb    r2, [r1, #0x0]
	ldr     r1, [r0, #RAM_21c07c4_8]
	add     r1, #0x40
	strb    r2, [r1, #0x0]
	ldr     r3, [r0, #RAM_21c07c4_8]
	mov     r2, #0x69
	mov     r0, #0x49
	lsl     r2, r2, #4
	lsl     r0, r0, #4
	ldr     r2, [r3, r2]
	ldr     r0, [r3, r0]
	mov     r1, #0x0
	lsl     r2, r2, #1
	blx     MI_CpuFill8
	ldr     r0, [pc, #0xec] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x69
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x100] @ 0x203460c, (=0x4a4)
	lsl     r2, r2, #4
	add     r0, r3, r1
	sub     r1, #0x14
	ldr     r2, [r3, r2]
	ldr     r1, [r3, r1]
	lsl     r2, r2, #1
	bl      Function_2032188
	ldr     r0, [pc, #0xd4] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r1, [pc, #0xec] @ 0x2034610, (=0x6b4)
	mov     r12, r2
	strb    r2, [r3, r1]
	ldr     r3, [r0, #RAM_21c07c4_8]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r2, [r3, r1]
	mov     r1, r2
	mov     r7, r2
	mov     r6, r2
branch_2034534: @ 2034534 :thumb
	ldr     r3, [r0, #RAM_21c07c4_8]
	add     r4, r3, r2
	ldr     r3, [pc, #0xd8] @ 0x2034614, (=0x697)
	strb    r6, [r4, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r4, [pc, #0xd8] @ 0x2034618, (=0x69f)
	add     r5, r3, r2
	mov     r3, #0x1
	strb    r3, [r5, r4]
	ldr     r4, [r0, #RAM_21c07c4_8]
	mov     r3, r12
	add     r4, r4, r3
	ldr     r3, [pc, #0xcc] @ 0x203461c, (=0x644)
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r6, [r4, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	mov     r4, #0xee
	add     r5, r3, r1
	ldr     r3, [pc, #0xc4] @ 0x2034620, (=0x5ca)
	strb    r4, [r5, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r4, [pc, #0xc4] @ 0x2034624, (=0xffff)
	add     r5, r3, r1
	ldr     r3, [pc, #0xc4] @ 0x2034628, (=0x5c8)
	strh    r4, [r5, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	add     r4, r3, r1
	ldr     r3, [pc, #0xc0] @ 0x203462c, (=0x5c4)
	str     r6, [r4, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	add     r4, r3, r1
	mov     r3, #0x17
	lsl     r3, r3, #6
	str     r6, [r4, r3]
	ldr     r3, [r0, #RAM_21c07c4_8]
	add     r1, #0xc
	add     r4, r3, r7
	ldr     r3, [pc, #0xb0] @ 0x2034630, (=0x66c)
	.hword  0x1d3f @ add r7, r7, #0x4
	str     r6, [r4, r3]
	mov     r3, r12
	.hword  0x1c9b @ add r3, r3, #0x2
	mov     r12, r3
	cmp     r2, #0x8
	blt     branch_2034534
	ldr     r1, [pc, #0x64] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r0, [pc, #0xa0] @ 0x2034634, (=0x668)
	ldr     r2, [r1, #RAM_21c07c4_8]
	mov     r3, r0
	str     r6, [r2, r0]
	ldr     r4, [r1, #RAM_21c07c4_8]
	sub     r3, #0x3e
	mov     r2, #0xee
	strb    r2, [r4, r3]
	mov     r3, r0
	ldr     r4, [r1, #RAM_21c07c4_8]
	ldr     r2, [pc, #0x7c] @ 0x2034624, (=0xffff)
	sub     r3, #0x40
	strh    r2, [r4, r3]
	mov     r2, r0
	ldr     r3, [r1, #RAM_21c07c4_8]
	sub     r2, #0x44
	str     r6, [r3, r2]
	mov     r2, r0
	ldr     r3, [r1, #RAM_21c07c4_8]
	sub     r2, #0x48
	str     r6, [r3, r2]
	mov     r3, r0
	ldr     r4, [r1, #RAM_21c07c4_8]
	add     r3, #0x4a
	mov     r2, #0x1
	strb    r2, [r4, r3]
	mov     r3, r0
	ldr     r4, [r1, #RAM_21c07c4_8]
	add     r3, #0x4b
	strb    r2, [r4, r3]
	strb    r6, [r1, #RAM_21c07c4_0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	sub     r0, #0xe8
	add     r0, r1, r0
	bl      Function_2032618
	ldr     r0, [pc, #0x18] @ 0x20345f4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_2032618

	ldr     r0, [pc, #0xc] @ 0x20345f4, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x48] @ 0x2034638, (=0x6b8)
	strb    r2, [r1, r0]

	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20345f4

.word RAM_21c07c4 @ 0x20345f4
.word 0x48c @ 0x20345f8
.word 0x51c @ 0x20345fc
.word 0x68c @ 0x2034600
.word 0x488 @ 0x2034604
.word 0x498 @ 0x2034608
.word 0x4a4 @ 0x203460c
.word 0x6b4 @ 0x2034610
.word 0x697 @ 0x2034614
.word 0x69f @ 0x2034618
.word 0x644 @ 0x203461c
.word 0x5ca @ 0x2034620
.word 0xffff @ 0x2034624
.word 0x5c8 @ 0x2034628
.word 0x5c4 @ 0x203462c
.word 0x66c @ 0x2034630
.word 0x668 @ 0x2034634
.word 0x6b8 @ 0x2034638



.thumb
Function_203463c: @ 203463c :thumb
	push    {r4,lr}
	ldr     r2, [pc, #0x24] @ 0x2034664, (=RAM_21c07c4)
	ldr     r1, [pc, #0x24] @ 0x2034668, (=0x6af)
	ldr     r0, [r2, #RAM_21c07c4_8]
	mov     r4, #0x0
	strb    r4, [r0, r1]
	ldr     r3, [r2, #RAM_21c07c4_8]
	add     r0, r1, #0x1
	strb    r4, [r3, r0]
	ldr     r0, [r2, #RAM_21c07c4_8]
	mov     r3, #0x1
	sub     r1, #0x4b
	str     r3, [r0, r1]
	bl      Function_2034378
	ldr     r0, [pc, #0x10] @ 0x203466c, (=Unknown_2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x0]
	strb    r1, [r0, #0x1]
	pop     {r4,pc}
@ 0x2034664

.word RAM_21c07c4 @ 0x2034664
.word 0x6af @ 0x2034668
.word Unknown_2100a1c @ 0x203466c



.thumb
Function_2034670: @ 2034670 :thumb
	ldr     r3, [pc, #0x0] @ 0x2034674, (=Function_2034378+1)
	bx      r3
@ 0x2034674

.word Function_2034378+1 @ 0x2034674



.thumb
Function_2034678: @ 2034678 :thumb
	push    {r3-r7,lr}
	ldr     r4, [pc, #0xa0] @ 0x203471c, (=RAM_21c07c4)
	mov     r5, r0
	ldr     r0, [r4, #RAM_21c07c4_8]
	ldr     r3, [pc, #0x9c] @ 0x2034720, (=0x697)
	mov     r1, #0x0
	add     r0, r0, r5
	strb    r1, [r0, r3]
	ldr     r2, [r4, #RAM_21c07c4_8]
	mov     r0, #0x1
	add     r6, r2, r5
	mov     r2, r3
	add     r2, #0x8
	strb    r0, [r6, r2]
	ldr     r2, [r4, #RAM_21c07c4_8]
	lsl     r0, r5, #2
	add     r0, r2, r0
	sub     r3, #0x2b
	str     r1, [r0, r3]
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	mov     r1, r0
	mov     r0, r4
	ldr     r6, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x70] @ 0x2034724, (=0x68c)
	.hword  0x1c49 @ add r1, r1, #0x1
	ldr     r0, [r6, r0]
	blx     _s32_div_f
	mov     r7, r5
	mov     r1, #0x4b
	str     r0, [sp, #0x0]
	mul     r7, r0
	mov     r0, #0xc
	mov     r4, r5
	lsl     r1, r1, #4
	mul     r4, r0
	add     r0, r6, r1
	sub     r1, #0x28
	ldr     r1, [r6, r1]
	ldr     r2, [sp, #0x0]
	add     r0, r0, r4
	add     r1, r1, r7
	bl      Function_2032188
	ldr     r0, [pc, #0x40] @ 0x203471c, (=RAM_21c07c4)
	ldr     r1, [pc, #0x48] @ 0x2034728, (=0x51c)
	ldr     r2, [r0, #RAM_21c07c4_8]
	add     r0, r2, r1
	sub     r1, #0x90
	ldr     r1, [r2, r1]
	ldr     r2, [sp, #0x0]
	add     r0, r0, r4
	add     r1, r1, r7
	bl      Function_2032188
	ldr     r3, [pc, #0x28] @ 0x203471c, (=RAM_21c07c4)
	ldr     r2, [pc, #0x38] @ 0x203472c, (=0x5ca)
	ldr     r0, [r3, #RAM_21c07c4_8]
	mov     r1, #0xee
	add     r0, r0, r4
	strb    r1, [r0, r2]
	ldr     r0, [r3, #RAM_21c07c4_8]
	ldr     r5, [pc, #0x30] @ 0x2034730, (=0xffff)
	add     r1, r0, r4
	sub     r0, r2, #0x2
	strh    r5, [r1, r0]
	ldr     r1, [r3, #RAM_21c07c4_8]
	mov     r0, #0x0
	add     r5, r1, r4
	sub     r1, r2, #0x6
	str     r0, [r5, r1]
	ldr     r1, [r3, #RAM_21c07c4_8]
	sub     r2, #0xa
	add     r1, r1, r4
	str     r0, [r1, r2]
	pop     {r3-r7,pc}
@ 0x203471a

.align 2
.word RAM_21c07c4 @ 0x203471c
.word 0x697 @ 0x2034720
.word 0x68c @ 0x2034724
.word 0x51c @ 0x2034728
.word 0x5ca @ 0x203472c
.word 0xffff @ 0x2034730



.thumb
Function_2034734: @ 2034734 :thumb
	push    {r4-r6,lr}
	ldr     r4, [pc, #0x30] @ 0x2034768, (=RAM_21c07c4)
	ldr     r6, [pc, #0x30] @ 0x203476c, (=0x69f)
	mov     r5, #0x1
branch_203473c: @ 203473c :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034760

	ldr     r0, [r4, #RAM_21c07c4_8]
	add     r0, r0, r5
	ldrb    r0, [r0, r6]
	cmp     r0, #0x0
	bne     branch_2034760

	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2034760

	mov     r0, r5
	bl      Function_2034678

branch_2034760: @ 2034760 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_203473c
	pop     {r4-r6,pc}
@ 0x2034768

.word RAM_21c07c4 @ 0x2034768
.word 0x69f @ 0x203476c



.thumb
Function_2034770: @ 2034770 :thumb
	ldr     r3, [pc, #0x0] @ 0x2034774, (=0x2034679)
	bx      r3
@ 0x2034774

.word Function_2034678+1 @ =0x2034679, 0x2034774



.thumb
Function_2034778: @ 2034778 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	mov     r4, #0x1
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	bne     branch_20347a2
	ldr     r2, [sp, #0x0]
	mov     r0, r5
	mov     r1, r6
	bl      Function_20335dc
	mov     r4, r0
	ldr     r0, [pc, #0x10] @ 0x20347b0, (=Function_2034770+1)
	bl      Function_2032124
branch_20347a2: @ 20347a2 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2034198
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x20347ae

.align 2
.word Function_2034770+1 @ 0x20347b0



.thumb
Function_20347b4: @ 20347b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r6, r1
	mov     r7, r2
	mov     r4, #0x1
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	bne     branch_20347d4
	mov     r0, r5
	mov     r1, r6
	bl      Function_2033650
	mov     r4, r0
branch_20347d4: @ 20347d4 :thumb
	mov     r0, r5
	mov     r1, r7
	bl      Function_2034198
	ldr     r0, [pc, #0x8] @ 0x20347e8, (=Unknown_2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x1]
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x20347e6

.align 2
.word Unknown_2100a1c @ 0x20347e8



.thumb
Function_20347ec: @ 20347ec :thumb
	push    {r4,lr}
	mov     r4, #0x0
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034802

	ldr     r0, [pc, #0x40] @ 0x203483c, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	beq     branch_203480a

	pop     {r4,pc}

branch_2034802: @ 2034802 :thumb
	ldr     r0, [pc, #0x38] @ 0x203483c, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034838

branch_203480a: @ 203480a :thumb
	ldr     r0, [pc, #0x34] @ 0x2034840, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x34] @ 0x2034844, (=0x6ad)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x2
	bne     branch_203481c
	mov     r1, #0x0
	strb    r1, [r2, r0]
	mov     r4, #0x1
branch_203481c: @ 203481c :thumb

	ldr     r0, [pc, #0x20] @ 0x2034840, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x20] @ 0x2034844, (=0x6ad)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x3
	bne     branch_203482c
	mov     r4, #0x1
	strb    r4, [r2, r0]
branch_203482c: @ 203482c :thumb

	cmp     r4, #0x0
	beq     branch_2034834
	bl      Function_2034670
branch_2034834: @ 2034834 :thumb
	bl      Function_2035f84
branch_2034838: @ 2034838 :thumb
	pop     {r4,pc}
@ 0x203483a

.align 2
.word Unknown_2100a1c @ 0x203483c
.word RAM_21c07c4 @ 0x2034840
.word 0x6ad @ 0x2034844



.thumb
Function_2034848: @ 2034848 :thumb
	ldr     r1, [pc, #0x24] @ 0x2034870, (=RAM_21c07c4)
	ldr     r3, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x24] @ 0x2034874, (=0x6ad)
	ldrb    r2, [r3, r1]
	cmp     r2, #0x0
	bne     branch_203485e
	cmp     r0, #0x1
	bne     branch_203485e
	mov     r0, #0x3
	strb    r0, [r3, r1]
	bx      lr
@ 0x203485e

.thumb
branch_203485e: @ 203485e :thumb
	cmp     r2, #0x1
	bne     branch_203486c
	cmp     r0, #0x0
	bne     branch_203486c
	ldr     r0, [pc, #0xc] @ 0x2034874, (=0x6ad)
	mov     r1, #0x2
	strb    r1, [r3, r0]
.thumb
branch_203486c: @ 203486c :thumb
	bx      lr
@ 0x203486e

.align 2
.word RAM_21c07c4 @ 0x2034870
.word 0x6ad @ 0x2034874



.thumb
Function_2034878: @ 2034878 :thumb
	ldr     r3, [pc, #0x4] @ 0x2034880, (=Function_2034848+1)
	mov     r0, #0x1
	bx      r3
@ 0x203487e

.align 2
.word Function_2034848+1 @ =0x2034849, 0x2034880



.thumb
Function_2034884: @ 2034884 :thumb
	ldr     r3, [pc, #0x4] @ 0x203488c, (=Function_2034848+1)
	mov     r0, #0x0
	bx      r3
@ 0x203488a

.align 2
.word Function_2034848+1 @ =0x2034849, 0x203488c



.thumb
Function_2034890: @ 2034890 :thumb
	ldr     r0, [pc, #0x14] @ 0x20348a8, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x14] @ 0x20348ac, (=0x6ad)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_20348a0

	mov     r0, #0x1
	bx      lr

branch_20348a0: @ 20348a0 :thumb
	cmp     r0, #0x3
	bne     branch_20348a6
	mov     r0, #0x0
branch_20348a6: @ 20348a6 :thumb
	bx      lr
@ 0x20348a8

.word RAM_21c07c4 @ 0x20348a8
.word 0x6ad @ 0x20348ac



.thumb
Function_20348b0: @ 20348b0 :thumb
	push    {r3,lr}
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20348be
	mov     r0, #0x1
	pop     {r3,pc}

branch_20348be: @ 20348be :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20348c2


.align 2, 0
.thumb
Function_20348c4: @ 20348c4 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0xa8] @ 0x2034970, (=RAM_21c07c4)
	mov     r4, #0x0
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_20348ee
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20348e4
	bl      Function_4_21d2184
	mov     r4, #0x1
	b       branch_20348ee

branch_20348e4: @ 20348e4 :thumb
	bl      Function_2033768
	cmp     r0, #0x0
	beq     branch_20348ee
	mov     r4, #0x1
branch_20348ee: @ 20348ee :thumb
	cmp     r4, #0x0
	beq     branch_203496e
	bl      Function_2036438
	bl      Function_2032a70

	ldr     r0, [pc, #0x74] @ 0x2034970, (=RAM_21c07c4)
	mov     r1, #0x0
	strb    r1, [r0, #RAM_21c07c4_1]
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x70] @ 0x2034974, (=0x57c)
	ldr     r0, [r1, r0]
	bl      Call_RemoveTaskFromTaskList

	ldr     r1, [pc, #0x64] @ 0x2034970, (=RAM_21c07c4)
	ldr     r0, [pc, #0x64] @ 0x2034974, (=0x57c)
	ldr     r2, [r1, #RAM_21c07c4_8]
	mov     r3, #0x0
	str     r3, [r2, r0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	sub     r0, #0xec
	ldr     r0, [r1, r0]
	bl      free

	ldr     r0, [pc, #0x50] @ 0x2034970, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x54] @ 0x2034978, (=0x494)
	ldr     r0, [r1, r0]
	bl      free

	ldr     r0, [pc, #0x44] @ 0x2034970, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x4c] @ 0x203497c, (=0x48c)
	ldr     r0, [r1, r0]
	bl      free

	ldr     r0, [pc, #0x38] @ 0x2034970, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x44] @ 0x2034980, (=0x488)
	ldr     r0, [r1, r0]
	bl      free

	ldr     r0, [pc, #0x2c] @ 0x2034970, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	bl      Function_2032638
	ldr     r0, [pc, #0x1c] @ 0x2034970, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	bl      Function_2032638
	ldr     r0, [pc, #0x10] @ 0x2034970, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_4]
	bl      free
	ldr     r0, [pc, #0x8] @ 0x2034970, (=RAM_21c07c4)
	mov     r1, #0x0
	str     r1, [r0, #RAM_21c07c4_8]
	str     r1, [r0, #RAM_21c07c4_4]
branch_203496e: @ 203496e :thumb
	pop     {r4,pc}
@ 0x2034970

.word RAM_21c07c4 @ 0x2034970
.word 0x57c @ 0x2034974
.word 0x494 @ 0x2034978
.word 0x48c @ 0x203497c
.word 0x488 @ 0x2034980



.thumb
Function_2034984: @ 2034984 :thumb
	ldr     r3, [pc, #0x0] @ 0x2034988, (=Function_20339e8+1)
	bx      r3
@ 0x2034988

.word Function_20339e8+1 @ 0x2034988



.thumb
Function_203498c: @ 203498c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x30] @ 0x20349c0, (=RAM_21c07c4)
	ldrb    r0, [r0, #RAM_21c07c4_1]
	cmp     r0, #0x0
	beq     branch_20349be
	bl      Function_20353cc
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_20349ac
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_20349b4
branch_20349ac: @ 20349ac :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_20349b8
branch_20349b4: @ 20349b4 :thumb
	bl      Function_2034dc8
branch_20349b8: @ 20349b8 :thumb
	ldr     r0, [pc, #0x4] @ 0x20349c0, (=RAM_21c07c4)
	mov     r1, #0x0
	strb    r1, [r0, #RAM_21c07c4_1]
branch_20349be: @ 20349be :thumb
	pop     {r3,pc}
@ 0x20349c0

.word RAM_21c07c4 @ 0x20349c0



.thumb
Function_20349c4: @ 20349c4 :thumb
	push    {r3,lr}
	bl      Function_203406c
	cmp     r0, #0x0
	beq     branch_20349e8
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_20349e4
	bl      Function_2033e48
	cmp     r0, #0x0
	bne     branch_20349e8
	bl      Function_20348c4
	pop     {r3,pc}

branch_20349e4: @ 20349e4 :thumb
	bl      Function_20348c4
branch_20349e8: @ 20349e8 :thumb
	pop     {r3,pc}
@ 0x20349ea


.align 2, 0
.thumb
Function_20349ec: @ 20349ec :thumb
	push    {r4,lr}
	bl      Function_2036c50
	ldr     r3, [pc, #0xd8] @ 0x2034acc, (=RAM_21c07c4)
	ldr     r0, [r3, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_2034ab6
	ldr     r2, [pc, #0xd4] @ 0x2034ad0, (=0x6ba)
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	bne     branch_2034a98
	add     r1, r2, #0x3
	ldrb    r1, [r0, r1]
	add     r4, r1, #0x1
	add     r1, r2, #0x3
	strb    r4, [r0, r1]
	mov     r0, #0x0
	strb    r0, [r3, #RAM_21c07c4_1]
	bl      Function_20347ec

	ldr     r0, [pc, #0xb4] @ 0x2034acc, (=RAM_21c07c4)
	ldr     r1, [pc, #0xbc] @ 0x2034ad4, (=RAM_21bf67c)
	ldr     r0, [r0, #RAM_21c07c4_8]
	ldr     r2, [pc, #0xbc] @ 0x2034ad8, (=0x65c)
	ldr     r3, [r1, #RAM_21bf67c_44_Key]
	ldr     r1, [pc, #0xbc] @ 0x2034adc, (=0x7fff)
	ldrh    r4, [r0, r2]
	and     r1, r3
	orr     r1, r4
	strh    r1, [r0, r2]
	bl      Function_2035534
	bl      Function_2034b50

	ldr     r0, [pc, #0x98] @ 0x2034acc, (=RAM_21c07c4)
	ldr     r1, [pc, #0xa4] @ 0x2034ad8, (=0x65c)
	ldr     r3, [r0, #RAM_21c07c4_8]
	mov     r0, #0x2
	ldrh    r2, [r3, r1]
	lsl     r0, r0, #14
	and     r0, r2
	strh    r0, [r3, r1]
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2034a4c
	bl      Function_2035ca8
branch_2034a4c: @ 2034a4c :thumb

	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034a5e

	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034a66

branch_2034a5e: @ 2034a5e :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034a76

branch_2034a66: @ 2034a66 :thumb
	bl      Function_203895c
	bl      Function_203272c
	cmp     r0, #0x0
	bne     branch_2034a76
	bl      Function_2034f68
branch_2034a76: @ 2034a76 :thumb

	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2034a8e

	bl      Function_2034890
	cmp     r0, #0x1
	beq     branch_2034a8e

	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034a92

branch_2034a8e: @ 2034a8e :thumb
	bl      Function_2035cf8
branch_2034a92: @ 2034a92 :thumb
	ldr     r0, [pc, #0x38] @ 0x2034acc, (=RAM_21c07c4)
	mov     r1, #0x1
	strb    r1, [r0, #RAM_21c07c4_1]
branch_2034a98: @ 2034a98 :thumb
	ldr     r0, [pc, #0x30] @ 0x2034acc, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x40] @ 0x2034ae0, (=0x694)
	ldrh    r0, [r1, r0]
	bl      Function_2033d94
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2034ab0
	bl      Function_2034734
branch_2034ab0: @ 2034ab0 :thumb

	bl      Function_20349c4
	b       branch_2034abc

branch_2034ab6: @ 2034ab6 :thumb
	mov     r0, #0x0
	bl      Function_2033d94
branch_2034abc: @ 2034abc :thumb
	mov     r0, #0x0
	bl      Function_2038a20
	bl      Function_203650c
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x2034aca

.align 2
.word RAM_21c07c4 @ 0x2034acc
.word 0x6ba @ 0x2034ad0
.word RAM_21bf67c @ 0x2034ad4
.word 0x65c @ 0x2034ad8
.word 0x7fff @ 0x2034adc
.word 0x694 @ 0x2034ae0



.thumb
Function_2034ae4: @ 2034ae4 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x18] @ 0x2034b00, (=RAM_21c07c4)
	mov     r1, #0x0
	ldrb    r4, [r0, #RAM_21c07c4_1]
	strb    r1, [r0, #RAM_21c07c4_1]
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_2034af8
	bl      Function_203463c
branch_2034af8: @ 2034af8 :thumb

	ldr     r0, [pc, #0x4] @ 0x2034b00, (=RAM_21c07c4)
	strb    r4, [r0, #RAM_21c07c4_1]
	pop     {r4,pc}
@ 0x2034afe

.align 2
.word RAM_21c07c4 @ 0x2034b00



.thumb
Function_2034b04: @ 2034b04 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x1c] @ 0x2034b24, (=RAM_21c07c4)
	mov     r1, #0x0
	ldrb    r4, [r0, #RAM_21c07c4_1]
	strb    r1, [r0, #RAM_21c07c4_1]
	ldr     r2, [r0, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_2034b1e
	ldr     r0, [pc, #0x10] @ 0x2034b28, (=0x6ad)
	mov     r1, #0x1
	strb    r1, [r2, r0]
	bl      Function_203463c
branch_2034b1e: @ 2034b1e :thumb

	ldr     r0, [pc, #0x4] @ 0x2034b24, (=RAM_21c07c4)
	strb    r4, [r0, #RAM_21c07c4_1]
	pop     {r4,pc}
@ 0x2034b24

.word RAM_21c07c4 @ 0x2034b24
.word 0x6ad @ 0x2034b28



.thumb
Function_2034b2c: @ 2034b2c :thumb
	push    {r4,lr}
	ldr     r0, =RAM_21c07c4
	mov     r1, #0x0
	ldrb    r4, [r0, #RAM_21c07c4_1]
	strb    r1, [r0, #RAM_21c07c4_1]
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_2034b44
	bl      Function_203463c
	bl      Function_2033518
branch_2034b44: @ 2034b44 :thumb

	ldr     r0, =RAM_21c07c4
	strb    r4, [r0, #RAM_21c07c4_1]
	pop     {r4,pc}
@ 0x2034b4a

.align 2
.pool



.thumb
Function_2034b50: @ 2034b50 :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	bl      Function_203272c
	cmp     r0, #0x0
	beq     branch_2034c04
	ldr     r0, [pc, #0x180] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r1, [pc, #0x180] @ 0x2034ce4, (=0x6b7)
	ldr     r0, [r0, #RAM_21c07c4_8]
	ldrb    r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_2034bc0
	sub     r1, #0x53
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2034b92
	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_2034bb0
	ldr     r0, [pc, #0x16c] @ 0x2034ce8, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034ba8
	ldr     r0, [pc, #0x15c] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	bl      Function_20357f0
	ldr     r0, [pc, #0x15c] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
	b       branch_2034ba8
@ 0x2034b92

.thumb
branch_2034b92: @ 2034b92 :thumb
	ldr     r1, [pc, #0x154] @ 0x2034ce8, (=Unknown_2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034ba8
	bl      Function_20357f0
	cmp     r0, #0x0
	beq     branch_2034bb0
	ldr     r0, [pc, #0x144] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
branch_2034ba8: @ 2034ba8 :thumb
	bl      Function_203594c
	cmp     r0, #0x0
	beq     branch_2034bb2

branch_2034bb0: @ 2034bb0 :thumb
	b       branch_2034cdc

branch_2034bb2: @ 2034bb2 :thumb
	ldr     r0, [pc, #0x12c] @ 0x2034ce0, (=RAM_21c07c4)
	mov     r1, #0x26
	ldr     r0, [r0, #RAM_21c07c4_8]
	bl      0x21d1590
	cmp     r0, #0x0
	bne     branch_2034bc2

branch_2034bc0: @ 2034bc0 :thumb
	b       branch_2034cdc

branch_2034bc2: @ 2034bc2 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	mov     r4, #0x0
	cmp     r6, #0x0
	ble     branch_2034bfc
	ldr     r7, [pc, #0x108] @ 0x2034ce0, (=RAM_21c07c4)
	mov     r5, r4
branch_2034bda: @ 2034bda :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034bf4
	ldr     r0, [r7, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x100] @ 0x2034cec, (=0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0xf8] @ 0x2034cec, (=0x66c)
	str     r2, [r0, r1]
.thumb
branch_2034bf4: @ 2034bf4 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034bda
.thumb
branch_2034bfc: @ 2034bfc :thumb
	ldr     r0, [pc, #0xe8] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x1]
	pop     {r3-r7,pc}

branch_2034c04: @ 2034c04 :thumb
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2034c82
	ldr     r0, [pc, #0xcc] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r2, [pc, #0xd0] @ 0x2034ce4, (=0x6b7)
	ldr     r0, [r0, #RAM_21c07c4_8]
	ldrb    r1, [r0, r2]
	cmp     r1, #0x0
	beq     branch_2034cdc
	mov     r1, r2
	sub     r1, #0x53
	ldr     r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_2034c42
	sub     r2, #0x4f
	ldr     r1, [r0, r2]
	cmp     r1, #0x3
	bgt     branch_2034cdc
	ldr     r1, [pc, #0xb8] @ 0x2034ce8, (=Unknown_2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034c58
	bl      Function_20357f0
	ldr     r0, [pc, #0xac] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
	b       branch_2034c58
@ 0x2034c42

.thumb
branch_2034c42: @ 2034c42 :thumb
	ldr     r1, [pc, #0xa4] @ 0x2034ce8, (=Unknown_2100a1c)
	ldrb    r1, [r1, #0x1]
	cmp     r1, #0x4
	bne     branch_2034c58
	bl      Function_20357f0
	cmp     r0, #0x0
	beq     branch_2034cdc
	ldr     r0, [pc, #0x94] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x1]
.thumb
branch_2034c58: @ 2034c58 :thumb
	bl      Function_203594c
	cmp     r0, #0x0
	bne     branch_2034cdc
	ldr     r0, [pc, #0x7c] @ 0x2034ce0, (=RAM_21c07c4)
	mov     r1, #0x26
	ldr     r0, [r0, #RAM_21c07c4_8]
	bl      0x21d142c
	cmp     r0, #0x0
	beq     branch_2034cdc
	ldr     r0, [pc, #0x78] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x4
	strb    r1, [r0, #0x1]
	ldr     r0, [pc, #0x68] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x74] @ 0x2034cf0, (=0x668)
	ldr     r1, [r2, r0]
	.hword  0x1c49 @ add r1, r1, #0x1
	str     r1, [r2, r0]
	pop     {r3-r7,pc}
@ 0x2034c82

.thumb
branch_2034c82: @ 2034c82 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034c96
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2034c9e
.thumb
branch_2034c96: @ 2034c96 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034cdc

branch_2034c9e: @ 2034c9e :thumb
	ldr     r0, [pc, #0x48] @ 0x2034ce8, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x4
	bne     branch_2034cd8
	ldr     r0, [pc, #0x38] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x44] @ 0x2034cf0, (=0x668)
	ldr     r1, [r2, r0]
	cmp     r1, #0x3
	bgt     branch_2034cd8
	add     r0, #0x47
	ldrb    r0, [r2, r0]
	lsl     r0, r0, #6
	add     r0, r2, r0
	bl      Function_20357f0
	ldr     r0, [pc, #0x20] @ 0x2034ce0, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x30] @ 0x2034cf4, (=0x6af)
	ldrb    r1, [r2, r0]
	mov     r0, #0x1
	sub     r0, r0, r1
	lsl     r0, r0, #6
	add     r0, r2, r0
	bl      Function_20357f0
	ldr     r0, [pc, #0x14] @ 0x2034ce8, (=Unknown_2100a1c)
	mov     r1, #0x0
	strb    r1, [r0, #0x1]
branch_2034cd8: @ 2034cd8 :thumb
	bl      Function_20353cc
branch_2034cdc: @ 2034cdc :thumb
	pop     {r3-r7,pc}
@ 0x2034cde

.align 2
.word RAM_21c07c4 @ 0x2034ce0
.word 0x6b7 @ 0x2034ce4
.word Unknown_2100a1c @ 0x2034ce8
.word 0x66c @ 0x2034cec
.word 0x668 @ 0x2034cf0
.word 0x6af @ 0x2034cf4



.thumb
Function_2034cf8: @ 2034cf8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	str     r0, [sp, #0x0]
	mov     r7, #0x0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	str     r0, [sp, #0xc]
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r7
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x8]
	cmp     r0, #0x0
	ble     branch_2034db0
	ldr     r0, [sp, #0x0]
	ldr     r6, [sp, #0x4]
	mov     r1, #0xc0
	mov     r5, r0
	mov     r4, r6
	mul     r5, r1
branch_2034d34: @ 2034d34 :thumb
	ldr     r0, [pc, #0x8c] @ 0x2034dc4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r0, r0, r6
	bl      Function_20322d0
	ldr     r0, [sp, #0x4]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034d62

	ldr     r0, [pc, #0x70] @ 0x2034dc4, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r0, r5, r0
	add     r1, r4, r0
	add     r1, #0x80
	mov     r0, #0xe
	strb    r0, [r1, #0x0]
	b       branch_2034d74

branch_2034d62: @ 2034d62 :thumb
	ldr     r0, [pc, #0x60] @ 0x2034dc4, (=RAM_21c07c4)
	.hword  0x1c7f @ add r7, r7, #0x1
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r0, r5, r0
	add     r1, r4, r0
	add     r1, #0x80
	mov     r0, #0xff
	strb    r0, [r1, #0x0]
	b       branch_2034d9e

branch_2034d74: @ 2034d74 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2034dc4, (=RAM_21c07c4)
	ldr     r2, [sp, #0xc]
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x4b
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r1, #0x80
	add     r1, r1, r5
	add     r0, r0, r6
	add     r1, r1, r4
	bl      Function_20321f4
	ldr     r0, [pc, #0x34] @ 0x2034dc4, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r0, r5, r0
	add     r0, r4, r0
	add     r0, #0x80
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0xe
	bne     branch_2034d9e
	.hword  0x1c7f @ add r7, r7, #0x1
branch_2034d9e: @ 2034d9e :thumb

	ldr     r0, [sp, #0xc]
	add     r6, #0xc
	add     r4, r4, r0
	ldr     r0, [sp, #0x4]
	add     r1, r0, #0x1
	ldr     r0, [sp, #0x8]
	str     r1, [sp, #0x4]
	cmp     r1, r0
	blt     branch_2034d34
.thumb
branch_2034db0: @ 2034db0 :thumb
	ldr     r0, [sp, #0x8]
	cmp     r7, r0
	bne     branch_2034dbc
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2034dbc: @ 2034dbc :thumb
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x2034dc2

.align 2
.word RAM_21c07c4 @ 0x2034dc4



.thumb
Function_2034dc8: @ 2034dc8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x140] @ 0x2034f0c, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_2034dde
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2034de0

branch_2034dde: @ 2034dde :thumb
	b       branch_2034f08

branch_2034de0: @ 2034de0 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	ldr     r0, [pc, #0x114] @ 0x2034f10, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x2
	beq     branch_2034e08
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x0
	bne     branch_2034f08
.thumb
branch_2034e08: @ 2034e08 :thumb
	ldr     r0, [pc, #0x104] @ 0x2034f10, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034e32
	ldr     r0, [pc, #0xf0] @ 0x2034f0c, (=RAM_21c07c4)
	ldrb    r1, [r0, #RAM_21c07c4_0]
	cmp     r1, #0x0
	bne     branch_2034e32
	ldr     r1, [r0, #0x8]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	bl      Function_2034cf8
	ldr     r0, [pc, #0xdc] @ 0x2034f0c, (=RAM_21c07c4)
	mov     r1, #0x1
	strb    r1, [r0, #RAM_21c07c4_0]
branch_2034e32: @ 2034e32 :thumb

	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034e6c
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2034e6c
	ldr     r0, [pc, #0xc8] @ 0x2034f0c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r1, r0]
	mov     r3, r1
	mov     r1, #0xc0
	mov     r2, r0
	add     r3, #0x80
	mul     r2, r1
	add     r0, r3, r2
	ldr     r3, [pc, #0xb8] @ 0x2034f14, (=Function_20353b0+1)
	mov     r2, #0xe
	bl      Function_2031e9c
	cmp     r0, #0x0
	bne     branch_2034e6c
	ldr     r0, [pc, #0xa8] @ 0x2034f10, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x0]
.thumb
branch_2034e6c: @ 2034e6c :thumb
	ldr     r0, [pc, #0xa0] @ 0x2034f10, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	cmp     r1, #0x1
	beq     branch_2034e7a
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x3
	bne     branch_2034ef0

branch_2034e7a: @ 2034e7a :thumb
	ldr     r7, [pc, #0x90] @ 0x2034f0c, (=RAM_21c07c4)
	mov     r4, #0x0
	strb    r4, [r7, #RAM_21c07c4_0]
	cmp     r6, #0x0
	ble     branch_2034ec4

	mov     r5, r4
branch_2034e86: @ 2034e86 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034ea2
	ldr     r0, [r7, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x80] @ 0x2034f18, (=0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x78] @ 0x2034f18, (=0x66c)
	str     r2, [r0, r1]
	b       branch_2034ebc

branch_2034ea2: @ 2034ea2 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034ebc
	cmp     r4, #0x0
	bne     branch_2034ebc
	ldr     r0, [r7, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x64] @ 0x2034f18, (=0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x5c] @ 0x2034f18, (=0x66c)
	str     r2, [r0, r1]
branch_2034ebc: @ 2034ebc :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034e86

branch_2034ec4: @ 2034ec4 :thumb
	ldr     r0, [pc, #0x44] @ 0x2034f0c, (=RAM_21c07c4)
	mov     r1, #0x6b
	ldr     r2, [r0, #RAM_21c07c4_8]
	lsl     r1, r1, #4
	ldrb    r1, [r2, r1]
	mov     r4, r2
	mov     r2, #0xc0
	mov     r3, r1
	add     r4, #0x80
	mul     r3, r2
	mov     r0, #0x0
	add     r1, r4, r3
	bl      Function_20350a4
	ldr     r0, [pc, #0x28] @ 0x2034f0c, (=RAM_21c07c4)
	mov     r1, #0x6b
	ldr     r3, [r0, #RAM_21c07c4_8]
	lsl     r1, r1, #4
	ldrb    r2, [r3, r1]
	mov     r0, #0x1
	sub     r0, r0, r2
	strb    r0, [r3, r1]
branch_2034ef0: @ 2034ef0 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_2034f00
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2034f08

branch_2034f00: @ 2034f00 :thumb
	ldr     r0, [pc, #0xc] @ 0x2034f10, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
branch_2034f08: @ 2034f08 :thumb
	pop     {r3-r7,pc}
@ 0x2034f0a

.align 2
.word RAM_21c07c4 @ 0x2034f0c
.word Unknown_2100a1c @ 0x2034f10
.word Function_20353b0+1 @ 0x2034f14
.word 0x66c @ 0x2034f18



.thumb
Function_2034f1c: @ 2034f1c :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	mov     r4, #0x1
	cmp     r6, #0x1
	ble     branch_2034f5a

	ldr     r7, [pc, #0x2c] @ 0x2034f60, (=RAM_21c07c4)
	mov     r5, #0x4
branch_2034f36: @ 2034f36 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2034f52

	ldr     r0, [r7, #RAM_21c07c4_8]
	add     r1, r0, r5
	ldr     r0, [pc, #0x1c] @ 0x2034f64, (=0x66c)
	ldr     r0, [r1, r0]
	cmp     r0, #0x3
	ble     branch_2034f52
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_2034f52: @ 2034f52 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2034f36
branch_2034f5a: @ 2034f5a :thumb
	mov     r0, #0x1
	pop     {r3-r7,pc}
@ 0x2034f5e

.align 2
.word RAM_21c07c4 @ 0x2034f60
.word 0x66c @ 0x2034f64



.thumb
Function_2034f68: @ 2034f68 :thumb
	push    {r3-r7,lr}
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	add     r6, r0, #0x1
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035024
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_203508a

	ldr     r0, [pc, #0xfc] @ 0x203508c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xfc] @ 0x2035090, (=0x664)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2034fc0

	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_203508a

	ldr     r0, [pc, #0xf0] @ 0x2035094, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2034fe0
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034fb8
	mov     r0, #0x0
	bl      Function_2034cf8
.thumb
branch_2034fb8: @ 2034fb8 :thumb
	ldr     r0, [pc, #0xd8] @ 0x2035094, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x0]
	b       branch_2034fe0
@ 0x2034fc0

.thumb
branch_2034fc0: @ 2034fc0 :thumb
	ldr     r0, [pc, #0xd0] @ 0x2035094, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_2034fda
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2034fda
	mov     r0, #0x0
	bl      Function_2034cf8
	cmp     r0, #0x0
	beq     branch_203508a

branch_2034fda: @ 2034fda :thumb
	ldr     r0, [pc, #0xb8] @ 0x2035094, (=Unknown_2100a1c)
	mov     r1, #0x2
	strb    r1, [r0, #0x0]
branch_2034fe0: @ 2034fe0 :thumb
	ldr     r0, [pc, #0xa8] @ 0x203508c, (=RAM_21c07c4)
	mov     r1, #0xc0
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r0, #0x80
	bl      0x21d14d4
	cmp     r0, #0x0
	beq     branch_203508a

	ldr     r0, [pc, #0xa0] @ 0x2035094, (=Unknown_2100a1c)
	mov     r1, #0x4
	mov     r4, #0x0
	strb    r1, [r0, #0x0]
	cmp     r6, #0x0
	ble     branch_203508a

	ldr     r7, [pc, #0x8c] @ 0x203508c, (=RAM_21c07c4)
	mov     r5, r4
branch_2035000: @ 2035000 :thumb
	lsl     r0, r4, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_203501a
	ldr     r0, [r7, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x88] @ 0x2035098, (=0x66c)
	add     r0, r0, r5
	ldr     r1, [r0, r1]
	add     r2, r1, #0x1
	ldr     r1, [pc, #0x80] @ 0x2035098, (=0x66c)
	str     r2, [r0, r1]
branch_203501a: @ 203501a :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, r6
	blt     branch_2035000
	pop     {r3-r7,pc}

branch_2035024: @ 2035024 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	beq     branch_2035034
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_203508a
.thumb
branch_2035034: @ 2035034 :thumb
	ldr     r0, [pc, #0x5c] @ 0x2035094, (=Unknown_2100a1c)
	ldrb    r0, [r0, #0x0]
	cmp     r0, #0x4
	bne     branch_203508a
	bl      Function_2034f1c
	cmp     r0, #0x0
	beq     branch_203508a
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2035080
	ldr     r0, [pc, #0x3c] @ 0x203508c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x6b
	mov     r2, r1
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, #0xc0
	add     r2, #0x80
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_20358c0
	ldr     r0, [pc, #0x24] @ 0x203508c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x6b
	mov     r2, r1
	lsl     r0, r0, #4
	ldrb    r1, [r1, r0]
	mov     r0, #0x1
	add     r2, #0x80
	sub     r1, r0, r1
	mov     r0, #0xc0
	mul     r0, r1
	add     r0, r2, r0
	bl      Function_20358c0
.thumb
branch_2035080: @ 2035080 :thumb
	ldr     r0, [pc, #0x10] @ 0x2035094, (=Unknown_2100a1c)
	mov     r1, #0x0
	strb    r1, [r0, #0x0]
	bl      Function_2034dc8
.thumb
branch_203508a: @ 203508a :thumb
	pop     {r3-r7,pc}
@ 0x203508c

.word RAM_21c07c4 @ 0x203508c
.word 0x664 @ 0x2035090
.word Unknown_2100a1c @ 0x2035094
.word 0x66c @ 0x2035098



.thumb
Function_203509c: @ 203509c :thumb
	ldr     r3, [pc, #0x0] @ 0x20350a0, (=0x20350a5)
	bx      r3
@ 0x20350a0

.word Function_20350a4+1 @ =0x20350a5, 0x20350a0



.thumb
Function_20350a4: @ 20350a4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	ldr     r0, [pc, #0x130] @ 0x20351dc, (=RAM_21c07c4)
	mov     r5, r1
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x130] @ 0x20351e0, (=0x668)
	ldr     r1, [r2, r0]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r2, r0]
	cmp     r5, #0x0
	beq     branch_20350c8
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0xb
	bne     branch_20350ce
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20350ca
.thumb
branch_20350c8: @ 20350c8 :thumb
	b       branch_20351d6
@ 0x20350ca

.thumb
branch_20350ca: @ 20350ca :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	b       branch_20350d6

branch_20350ce: @ 20350ce :thumb
	bl      Function_2034890
	cmp     r0, #0x0
	beq     branch_20351d6

branch_20350d6: @ 20350d6 :thumb
	ldr     r0, [pc, #0x104] @ 0x20351dc, (=RAM_21c07c4)
	ldr     r1, [pc, #0x108] @ 0x20351e4, (=0x6b2)
	ldr     r0, [r0, #RAM_21c07c4_8]
	ldrb    r1, [r0, r1]
	cmp     r1, #0x0
	beq     branch_20350ea

	ldrb    r2, [r5, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_20351d6

branch_20350ea: @ 20350ea :thumb
	ldr     r1, [pc, #0xf8] @ 0x20351e4, (=0x6b2)
	mov     r2, #0x0
	strb    r2, [r0, r1]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20351aa
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r6, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r4, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, #0x0
	ble     branch_20351d6

	sub     r0, r6, #0x1
	mov     r7, r4
	str     r0, [sp, #0x0]
branch_2035122: @ 2035122 :thumb
	ldrb    r0, [r5, #0x0]
	cmp     r0, #0xff
	bne     branch_203513a
	ldr     r0, [pc, #0xb0] @ 0x20351dc, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xb8] @ 0x20351e8, (=0x694)
	lsl     r2, r4
	ldrh    r0, [r1, r0]
	mvn     r2, r2
	and     r2, r0
	b       branch_2035148

branch_203513a: @ 203513a :thumb
	ldr     r0, [pc, #0xa0] @ 0x20351dc, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xa4] @ 0x20351e8, (=0x694)
	lsl     r2, r4
	ldrh    r0, [r1, r0]
	orr     r2, r0
branch_2035148: @ 2035148 :thumb
	ldr     r0, [pc, #0x9c] @ 0x20351e8, (=0x694)
	strh    r2, [r1, r0]
	ldrb    r2, [r5, #0x0]
	cmp     r2, #0xff
	bne     branch_2035156
	add     r5, r5, r6
	b       branch_203519c

branch_2035156: @ 2035156 :thumb
	cmp     r2, #0xe
	bne     branch_203515e
	add     r5, r5, r6
	b       branch_203519c

branch_203515e: @ 203515e :thumb
	ldr     r0, [pc, #0x7c] @ 0x20351dc, (=RAM_21c07c4)
	ldr     r3, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x88] @ 0x20351ec, (=0x69f)
	add     r1, r3, r4
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035176
	mov     r0, #0x1
	tst     r0, r2
	beq     branch_2035176
	add     r5, r5, r6
	b       branch_203519c

branch_2035176: @ 2035176 :thumb
	ldr     r0, [pc, #0x78] @ 0x20351f0, (=0x51c)
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, r3, r0
	mov     r3, #0x55
	lsl     r3, r3, #4
	ldr     r2, [sp, #0x0]
	add     r0, r0, r7
	mov     r1, r5
	add     r3, r4, r3
	bl      Function_2032198
	ldr     r0, [sp, #0x0]
	mov     r1, #0x0
	add     r5, r5, r0
	ldr     r0, [pc, #0x48] @ 0x20351dc, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r2, r0, r4
	ldr     r0, [pc, #0x50] @ 0x20351ec, (=0x69f)
	strb    r1, [r2, r0]
branch_203519c: @ 203519c :thumb
	ldr     r0, [sp, #0x4]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r7, #0xc
	cmp     r4, r0
	blt     branch_2035122
	add     sp, #0x8
	pop     {r3-r7,pc}

branch_20351aa: @ 20351aa :thumb
	ldr     r1, [pc, #0x30] @ 0x20351dc, (=RAM_21c07c4)
	ldrb    r3, [r5, #0x1]
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x34] @ 0x20351e8, (=0x694)
	strh    r3, [r2, r0]
	ldr     r3, [r1, #RAM_21c07c4_8]
	ldrh    r2, [r3, r0]
	lsl     r2, r2, #8
	strh    r2, [r3, r0]
	ldr     r4, [r1, #RAM_21c07c4_8]
	ldrb    r2, [r5, #0x2]
	ldrh    r3, [r4, r0]
	add     r2, r3, r2
	strh    r2, [r4, r0]
	ldr     r0, [r1, #RAM_21c07c4_8]
	ldr     r3, [pc, #0x28] @ 0x20351f4, (=0x4a4)
	ldrb    r2, [r5, #0x3]
	add     r0, r0, r3
	add     r1, r5, #0x4
	add     r3, #0xc0
	bl      Function_2032198
branch_20351d6: @ 20351d6 :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x20351da

.align 2
.word RAM_21c07c4 @ 0x20351dc
.word 0x668 @ 0x20351e0
.word 0x6b2 @ 0x20351e4
.word 0x694 @ 0x20351e8
.word 0x69f @ 0x20351ec
.word 0x51c @ 0x20351f0
.word 0x4a4 @ 0x20351f4



.thumb
Function_20351f8: @ 20351f8 :thumb
	ldr     r3, [pc, #0x0] @ 0x20351fc, (=0x2035201)
	bx      r3
@ 0x20351fc

.word Function_2035200+1 @ =0x2035201, 0x20351fc



.thumb
Function_2035200: @ 2035200 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0xac] @ 0x20352b0, (=RAM_21c07c4)
	mov     r5, r0
	ldr     r0, [r3, #RAM_21c07c4_8]
	ldr     r2, [pc, #0xa8] @ 0x20352b4, (=0x66c)
	mov     r4, r1
	add     r1, r0, r2
	lsl     r0, r5, #2
	ldr     r6, [r1, r0]
	.hword  0x1e76 @ sub r6, r6, #0x1
	str     r6, [r1, r0]
	cmp     r4, #0x0
	beq     branch_20352ae
	ldr     r0, [r3, #RAM_21c07c4_8]
	add     r2, #0x33
	add     r0, r0, r2
	ldrb    r1, [r0, r5]
	cmp     r1, #0x0
	beq     branch_203522e
	ldrb    r2, [r4, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_20352ae

branch_203522e: @ 203522e :thumb
	mov     r1, #0x0
	strb    r1, [r0, r5]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035286
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r6, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_2035276
	ldr     r0, [pc, #0x50] @ 0x20352b0, (=RAM_21c07c4)
	mov     r3, #0x4b
	ldr     r0, [r0, #RAM_21c07c4_8]
	lsl     r3, r3, #4
	add     r1, r0, r3
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	mov     r1, r4
	mov     r2, r6
	add     r3, #0xf9
	bl      Function_2032198
branch_2035276: @ 2035276 :thumb
	ldr     r0, [pc, #0x38] @ 0x20352b0, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x3c] @ 0x20352b8, (=0x697)
	add     r1, r1, r0
	ldrb    r0, [r1, r5]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r1, r5]
	pop     {r4-r6,pc}

branch_2035286: @ 2035286 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_20356a0
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	tst     r0, r1
	bne     branch_20352ae
	ldr     r0, [pc, #0x18] @ 0x20352b0, (=RAM_21c07c4)
	ldr     r3, [pc, #0x20] @ 0x20352bc, (=0x51c)
	ldr     r0, [r0, #RAM_21c07c4_8]
	mov     r2, #0xb
	add     r1, r0, r3
	mov     r0, #0xc
	mul     r0, r5
	add     r0, r1, r0
	add     r1, r4, #0x1
	add     r3, #0x96
	bl      Function_2032198
.thumb
branch_20352ae: @ 20352ae :thumb
	pop     {r4-r6,pc}
@ 0x20352b0

.word RAM_21c07c4 @ 0x20352b0
.word 0x66c @ 0x20352b4
.word 0x697 @ 0x20352b8
.word 0x51c @ 0x20352bc



.thumb
Function_20352c0: @ 20352c0 :thumb
	push    {r4-r6,lr}
	ldr     r3, [pc, #0xbc] @ 0x2035380, (=RAM_21c07c4)
	mov     r5, r0
	ldr     r0, [r3, #RAM_21c07c4_8]
	ldr     r2, [pc, #0xb8] @ 0x2035384, (=0x66c)
	mov     r4, r1
	add     r1, r0, r2
	lsl     r0, r5, #2
	ldr     r6, [r1, r0]
	.hword  0x1e76 @ sub r6, r6, #0x1
	str     r6, [r1, r0]
	cmp     r4, #0x0
	beq     branch_203537c

	ldr     r0, [r3, #RAM_21c07c4_8]
	add     r2, #0x33
	add     r0, r0, r2
	ldrb    r1, [r0, r5]
	cmp     r1, #0x0
	beq     branch_20352ee

	ldrb    r2, [r4, #0x0]
	mov     r1, #0x1
	tst     r1, r2
	bne     branch_203537c

branch_20352ee: @ 20352ee :thumb
	mov     r1, #0x0
	strb    r1, [r0, r5]
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_203537c
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r6, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	ldrb    r0, [r4, #0x0]
	ldr     r2, [pc, #0x70] @ 0x2035388, (=0x694)
	cmp     r0, #0xff
	bne     branch_203532c

	ldr     r0, [pc, #0x60] @ 0x2035380, (=RAM_21c07c4)
	mov     r3, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	lsl     r3, r5
	ldrh    r0, [r1, r2]
	mvn     r3, r3
	and     r0, r3
	b       branch_2035338

branch_203532c: @ 203532c :thumb
	ldr     r0, [pc, #0x50] @ 0x2035380, (=RAM_21c07c4)
	mov     r3, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	lsl     r3, r5
	ldrh    r0, [r1, r2]
	orr     r0, r3
branch_2035338: @ 2035338 :thumb
	strh    r0, [r1, r2]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0xff
	beq     branch_203537c
	cmp     r0, #0x2
	beq     branch_203537c
	cmp     r0, #0xe
	beq     branch_203537c
	ldr     r1, [pc, #0x34] @ 0x2035380, (=RAM_21c07c4)
	ldr     r2, [pc, #0x40] @ 0x203538c, (=0x69f)
	ldr     r1, [r1, #RAM_21c07c4_8]
	add     r3, r1, r5
	ldrb    r2, [r3, r2]
	cmp     r2, #0x0
	beq     branch_203535c
	mov     r2, #0x1
	tst     r0, r2
	bne     branch_203537c

branch_203535c: @ 203535c :thumb
	ldr     r3, [pc, #0x30] @ 0x2035390, (=0x51c)
	mov     r0, #0xc
	add     r1, r1, r3
	mul     r0, r5
	add     r0, r1, r0
	add     r1, r4, #0x1
	.hword  0x1e72 @ sub r2, r6, #0x1
	add     r3, #0xcf
	bl      Function_2032198
	ldr     r0, [pc, #0xc] @ 0x2035380, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r1, r0, r5
	ldr     r0, [pc, #0x10] @ 0x203538c, (=0x69f)
	strb    r2, [r1, r0]
branch_203537c: @ 203537c :thumb
	pop     {r4-r6,pc}
@ 0x203537e

.align 2
.word RAM_21c07c4 @ 0x2035380
.word 0x66c @ 0x2035384
.word 0x694 @ 0x2035388
.word 0x69f @ 0x203538c
.word 0x51c @ 0x2035390



.thumb
Function_2035394: @ 2035394 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_20353a4
	ldr     r0, [pc, #0x10] @ 0x20353ac, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	pop     {r3,pc}

branch_20353a4: @ 20353a4 :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x20353aa

.align 2
.word Unknown_2100a1c @ 0x20353ac



.thumb
Function_20353b0: @ 20353b0 :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_20353c0
	ldr     r0, [pc, #0x10] @ 0x20353c8, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x0]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x0]
	pop     {r3,pc}

branch_20353c0: @ 20353c0 :thumb
	bl      ErrorHandling
	pop     {r3,pc}
@ 0x20353c6

.align 2
.word Unknown_2100a1c @ 0x20353c8



.thumb
Function_20353cc: @ 20353cc :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x150] @ 0x2035520, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_20353e2
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20353e4

branch_20353e2: @ 20353e2 :thumb
	b       branch_203551c

branch_20353e4: @ 20353e4 :thumb
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r4, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_2035456
	ldr     r0, [pc, #0x11c] @ 0x2035524, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x2
	beq     branch_2035414
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_2035456
.thumb
branch_2035414: @ 2035414 :thumb
	ldr     r0, [pc, #0x10c] @ 0x2035524, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, #0x1
	bl      Function_2035394
	ldr     r0, [pc, #0xfc] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [pc, #0x100] @ 0x2035528, (=0x6af)
	ldr     r2, [r0, #RAM_21c07c4_8]
	mov     r0, #0x0
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #6
	add     r1, r2, r1
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	bl      Function_2035200
	ldr     r2, [pc, #0xe4] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [pc, #0xec] @ 0x2035528, (=0x6af)
	ldr     r4, [r2, #RAM_21c07c4_8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #RAM_21c07c4_8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	pop     {r4,pc}
@ 0x2035456

.thumb
branch_2035456: @ 2035456 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	bne     branch_203551c
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035470
	bl      Function_203608c
	pop     {r4,pc}
@ 0x2035470

.thumb
branch_2035470: @ 2035470 :thumb
	ldr     r0, [pc, #0xb0] @ 0x2035524, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	cmp     r1, #0x2
	beq     branch_203547e
	ldrb    r0, [r0, #0x1]
	cmp     r0, #0x0
	bne     branch_203551c
.thumb
branch_203547e: @ 203547e :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_20354d2
	ldr     r0, [pc, #0x9c] @ 0x2035524, (=Unknown_2100a1c)
	ldr     r3, [pc, #0xa0] @ 0x203552c, (=0x2035395)
	ldrb    r1, [r0, #0x1]
	mov     r2, #0xe
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	ldr     r0, [pc, #0x8c] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x90] @ 0x2035528, (=0x6af)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #6
	add     r0, r1, r0
	lsl     r1, r4, #16
	lsr     r1, r1, #16
	bl      Function_2031e9c
	cmp     r0, #0x0
	bne     branch_20354b4
	ldr     r0, [pc, #0x78] @ 0x2035524, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r0, #0x1]
	pop     {r4,pc}

branch_20354b4: @ 20354b4 :thumb
	ldr     r2, [pc, #0x68] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [pc, #0x70] @ 0x2035528, (=0x6af)
	ldr     r4, [r2, #RAM_21c07c4_8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #RAM_21c07c4_8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
	pop     {r4,pc}

branch_20354d2: @ 20354d2 :thumb
	bl      Function_20318ec
	ldr     r1, [pc, #0x58] @ 0x2035530, (=0xfffe)
	tst     r0, r1
	beq     branch_203551c
	ldr     r0, [pc, #0x44] @ 0x2035524, (=Unknown_2100a1c)
	ldrb    r1, [r0, #0x1]
	.hword  0x1c49 @ add r1, r1, #0x1
	strb    r1, [r0, #0x1]
	mov     r0, #0x1
	bl      Function_2035394
	ldr     r0, [pc, #0x34] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [pc, #0x38] @ 0x2035528, (=0x6af)
	ldr     r2, [r0, #RAM_21c07c4_8]
	mov     r0, #0x0
	ldrb    r1, [r2, r1]
	lsl     r1, r1, #6
	add     r1, r2, r1
	lsl     r2, r4, #16
	lsr     r2, r2, #16
	bl      Function_2035200
	ldr     r2, [pc, #0x1c] @ 0x2035520, (=RAM_21c07c4)
	ldr     r1, [pc, #0x24] @ 0x2035528, (=0x6af)
	ldr     r4, [r2, #RAM_21c07c4_8]
	mov     r0, #0x1
	ldrb    r3, [r4, r1]
	sub     r0, r0, r3
	strb    r0, [r4, r1]
	mov     r0, r1
	ldr     r2, [r2, #RAM_21c07c4_8]
	sub     r0, #0x47
	ldr     r0, [r2, r0]
	sub     r1, #0x47
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r2, r1]
branch_203551c: @ 203551c :thumb
	pop     {r4,pc}
@ 0x203551e

.align 2
.word RAM_21c07c4 @ 0x2035520
.word Unknown_2100a1c @ 0x2035524
.word 0x6af @ 0x2035528
.word Function_2035394+1 @ =0x2035395, 0x203552c
.word 0xfffe @ 0x2035530



.thumb
Function_2035534: @ 2035534 :thumb
	push    {r3-r7,lr}
	ldr     r7, [pc, #0x120] @ 0x2035658, (=RAM_21c07c4)
	mov     r2, #0x66
	ldr     r5, [r7, #RAM_21c07c4_8]
	lsl     r2, r2, #4
	ldrb    r0, [r5, r2]
	mov     r6, #0x0
	mov     r4, r6
	cmp     r0, #0x0
	beq     branch_2035552

	sub     r1, r2, #0x4
	ldrh    r1, [r5, r1]
	mov     r3, #0xf0
	tst     r3, r1
	bne     branch_2035554

branch_2035552: @ 2035552 :thumb
	b       branch_2035656

branch_2035554: @ 2035554 :thumb
	cmp     r0, #0x2
	bne     branch_2035592
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_2035566
	mov     r0, #0x10
	orr     r0, r6
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_2035566: @ 2035566 :thumb

	mov     r0, #0x10
	tst     r0, r1
	beq     branch_2035574
	mov     r0, #0x20
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_2035574: @ 2035574 :thumb

	mov     r0, #0x40
	tst     r0, r1
	beq     branch_2035582
	mov     r0, #0x80
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
branch_2035582: @ 2035582 :thumb

	mov     r0, #0x80
	tst     r0, r1
	beq     branch_2035640

	mov     r0, #0x40
	orr     r0, r4
	lsl     r0, r0, #16
	lsr     r4, r0, #16
	b       branch_2035640

branch_2035592: @ 2035592 :thumb
	add     r0, r2, #0x2
	ldrh    r0, [r5, r0]
	cmp     r0, #0x0
	beq     branch_20355b4

	mov     r4, r0
	add     r0, r2, #0x1
	ldsb    r0, [r5, r0]
	sub     r1, r0, #0x1
	add     r0, r2, #0x1
	strb    r1, [r5, r0]
	ldr     r1, [r7, #RAM_21c07c4_8]
	ldsb    r0, [r1, r0]
	cmp     r0, #0x0
	bge     branch_2035640

	add     r0, r2, #0x2
	strh    r6, [r1, r0]
	b       branch_2035640

branch_20355b4: @ 20355b4 :thumb
	mov     r0, r2
	sub     r0, #0x34
	add     r6, r5, r0
	sub     r2, #0x34
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0xc]
	ldr     r2, [r5, r2]
	ldr     r3, [r6, #0x4]
	blx     _ll_mul
	mov     r3, r0
	mov     r2, r1
	ldr     r0, [r6, #0x10]
	ldr     r1, [r6, #0x14]
	add     r0, r0, r3
	adc     r1, r2
	ldr     r2, [pc, #0x84] @ 0x203565c, (=0x62c)
	str     r0, [r5, r2]
	mov     r2, #0x0
	str     r1, [r6, #0x4]
	lsr     r0, r1, #30
	lsl     r1, r2, #2
	orr     r1, r0
	cmp     r1, #0x3
	bhi     branch_2035608
	add     r0, r1, r1
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x20355f2

Jumppoints_20355f2:
.hword branch_20355fa - Jumppoints_20355f2 - 2
.hword branch_20355fe - Jumppoints_20355f2 - 2
.hword branch_2035602 - Jumppoints_20355f2 - 2
.hword branch_2035606 - Jumppoints_20355f2 - 2

branch_20355fa: @ 20355fa :thumb
	mov     r4, #0x20
	b       branch_2035608

branch_20355fe: @ 20355fe :thumb
	mov     r4, #0x10
	b       branch_2035608

branch_2035602: @ 2035602 :thumb
	mov     r4, #0x40
	b       branch_2035608

branch_2035606: @ 2035606 :thumb
	mov     r4, #0x80
branch_2035608: @ 2035608 :thumb
	ldr     r0, [pc, #0x4c] @ 0x2035658, (=RAM_21c07c4)
	ldr     r5, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x4c] @ 0x203565c, (=0x62c)
	add     r6, r5, r0
	ldr     r0, [r6, #0x8]
	ldr     r1, [r6, #0xc]
	ldr     r2, [r6, #0x0]
	ldr     r3, [r6, #0x4]
	blx     _ll_mul
	ldr     r3, [r6, #0x10]
	ldr     r2, [r6, #0x14]
	add     r0, r3, r0
	adc     r2, r1
	ldr     r1, [pc, #0x34] @ 0x203565c, (=0x62c)
	mov     r3, #0x0
	str     r0, [r5, r1]
	str     r2, [r6, #0x4]
	lsr     r0, r2, #28
	lsl     r2, r3, #4
	orr     r2, r0
	mov     r0, r1
	add     r0, #0x35
	strb    r2, [r5, r0]
	ldr     r0, [pc, #0x1c] @ 0x2035658, (=RAM_21c07c4)
	add     r1, #0x36
	ldr     r0, [r0, #RAM_21c07c4_8]
	strh    r4, [r0, r1]
branch_2035640: @ 2035640 :thumb
	ldr     r2, [pc, #0x14] @ 0x2035658, (=RAM_21c07c4)
	ldr     r1, [pc, #0x1c] @ 0x2035660, (=0x65c)
	ldr     r5, [r2, #RAM_21c07c4_8]
	mov     r0, #0xf0
	ldrh    r3, [r5, r1]
	bic     r3, r0
	strh    r3, [r5, r1]
	ldr     r2, [r2, #RAM_21c07c4_8]
	ldrh    r0, [r2, r1]
	add     r0, r0, r4
	strh    r0, [r2, r1]
branch_2035656: @ 2035656 :thumb
	pop     {r3-r7,pc}
@ 0x2035658

.word RAM_21c07c4 @ 0x2035658
.word 0x62c @ 0x203565c
.word 0x65c @ 0x2035660



.thumb
.globl Function_2035664
Function_2035664: @ 2035664 :thumb
	ldr     r0, =RAM_21c07c4
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x66
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	bx      lr
@ 0x2035672

.align 2
.pool



.thumb
.globl Function_2035678
Function_2035678: @ 2035678 :thumb
	ldr     r0, =RAM_21c07c4
	mov     r2, #0x2
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x66
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	bx      lr
@ 0x2035686

.align 2
.pool



.thumb
.globl Function_203568c
Function_203568c: @ 203568c :thumb
	ldr     r0, =RAM_21c07c4
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x66
	lsl     r0, r0, #4
	strb    r2, [r1, r0]
	bx      lr
@ 0x203569a

.align 2
.pool



.thumb
Function_20356a0: @ 20356a0 :thumb
	push    {r4-r7}
	ldr     r4, [pc, #0x7c] @ 0x2035720, (=RAM_21c07c4)
	lsl     r6, r1, #1
	ldr     r2, [r4, #RAM_21c07c4_8]
	mov     r5, #0x0
	add     r3, r2, r6
	ldr     r2, [pc, #0x74] @ 0x2035724, (=0x644)
	strh    r5, [r3, r2]
	ldrb    r5, [r0, #0x0]
	mov     r3, #0x10
	mov     r7, r5
	and     r7, r3
	cmp     r7, #0x10
	bne     branch_2035718
	mov     r7, #0xc
	and     r5, r7
	lsl     r5, r5, #24
	lsr     r5, r5, #24
	bne     branch_20356d4
	ldr     r3, [r4, #RAM_21c07c4_8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x40
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706

branch_20356d4: @ 20356d4 :thumb
	cmp     r5, #0x4
	bne     branch_20356e6
	ldr     r3, [r4, #RAM_21c07c4_8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x80
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706

branch_20356e6: @ 20356e6 :thumb
	cmp     r5, #0x8
	bne     branch_20356f8
	ldr     r3, [r4, #RAM_21c07c4_8]
	add     r4, r3, r2
	ldrh    r3, [r4, r6]
	mov     r2, #0x20
	orr     r2, r3
	strh    r2, [r4, r6]
	b       branch_2035706

branch_20356f8: @ 20356f8 :thumb
	cmp     r5, #0xc
	bne     branch_2035706
	ldr     r4, [r4, #RAM_21c07c4_8]
	add     r4, r4, r2
	ldrh    r2, [r4, r6]
	orr     r2, r3
	strh    r2, [r4, r6]
branch_2035706: @ 2035706 :thumb
	ldrb    r0, [r0, #0x0]
	asr     r2, r0, #5
	mov     r0, #0x7
	and     r2, r0
	ldr     r0, [pc, #0x10] @ 0x2035720, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	add     r1, r0, r1
	ldr     r0, [pc, #0x10] @ 0x2035728, (=0x654)
	strb    r2, [r1, r0]
branch_2035718: @ 2035718 :thumb
	mov     r0, #0x1
	pop     {r4-r7}
	bx      lr
@ 0x203571e

.align 2
.word RAM_21c07c4 @ 0x2035720
.word 0x644 @ 0x2035724
.word 0x654 @ 0x2035728



.thumb
.globl Function_203572c
Function_203572c: @ 203572c :thumb
	bx      lr
@ 0x203572e


.align 2, 0
.thumb
Function_2035730: @ 2035730 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0xa4] @ 0x20357dc, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xa4] @ 0x20357e0, (=0x65e)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035744

	mov     r0, #0x0
	pop     {r4,pc}

branch_2035744: @ 2035744 :thumb
	bl      Function_2035ee0
	cmp     r0, #0x0
	bne     branch_2035750

	mov     r0, #0x0
	pop     {r4,pc}

branch_2035750: @ 2035750 :thumb
	ldr     r0, [pc, #0x88] @ 0x20357dc, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x8c] @ 0x20357e4, (=0x6b1)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_2035760
	.hword  0x1e49 @ sub r1, r1, #0x1
	strb    r1, [r2, r0]
branch_2035760: @ 2035760 :thumb
	ldr     r1, [pc, #0x78] @ 0x20357dc, (=RAM_21c07c4)
	ldr     r0, [pc, #0x84] @ 0x20357e8, (=0x65c)
	ldr     r2, [r1, #RAM_21c07c4_8]
	mov     r3, #0x40
	ldrh    r2, [r2, r0]
	tst     r3, r2
	beq     branch_2035780
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x10
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6

branch_2035780: @ 2035780 :thumb
	mov     r3, #0x80
	tst     r3, r2
	beq     branch_2035798
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x14
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6

branch_2035798: @ 2035798 :thumb
	mov     r3, #0x20
	tst     r3, r2
	beq     branch_20357b0
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x18
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
	b       branch_20357c6

branch_20357b0: @ 20357b0 :thumb
	mov     r3, #0x10
	tst     r2, r3
	beq     branch_20357c6
	ldrb    r3, [r4, #0x0]
	mov     r2, #0x1c
	add     r0, #0x55
	orr     r2, r3
	strb    r2, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	mov     r2, #0x8
	strb    r2, [r1, r0]
branch_20357c6: @ 20357c6 :thumb
	ldr     r0, [pc, #0x14] @ 0x20357dc, (=RAM_21c07c4)
	ldrb    r2, [r4, #0x0]
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x1c] @ 0x20357ec, (=0x65f)
	ldrb    r0, [r1, r0]
	lsl     r0, r0, #5
	orr     r0, r2
	strb    r0, [r4, #0x0]
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x20357da

.align 2
.word RAM_21c07c4 @ 0x20357dc
.word 0x65e @ 0x20357e0
.word 0x6b1 @ 0x20357e4
.word 0x65c @ 0x20357e8
.word 0x65f @ 0x20357ec



.thumb
Function_20357f0: @ 20357f0 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2036128
	mov     r5, r0
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	ldr     r0, [pc, #0xa0] @ 0x20358b4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xa0] @ 0x20358b8, (=0x6b4)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035820
	mov     r0, #0x0
	b       branch_2035822

branch_2035820: @ 2035820 :thumb
	mov     r0, #0x1
branch_2035822: @ 2035822 :thumb
	strb    r0, [r4, #0x0]
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2035832
	mov     r0, r4
	bl      Function_2035730
branch_2035832: @ 2035832 :thumb

	ldr     r1, [pc, #0x80] @ 0x20358b4, (=RAM_21c07c4)
	ldr     r0, [pc, #0x80] @ 0x20358b8, (=0x6b4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	mov     r3, #0x0
	strb    r3, [r2, r0]
	mov     r0, #0x16
	ldr     r1, [r1, #RAM_21c07c4_8]
	lsl     r0, r0, #6
	add     r0, r1, r0
	bl      Function_20322f8
	cmp     r0, #0x0
	beq     branch_2035860
	ldrb    r1, [r4, #0x0]
	mov     r0, #0x2
	orr     r0, r1
	strb    r0, [r4, #0x0]
	ldrb    r0, [r4, #0x0]
	cmp     r0, #0x2
	bne     branch_20358ac
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r5,pc}

branch_2035860: @ 2035860 :thumb
	sub     r0, r5, #0x1
	str     r0, [sp, #0x4]
	add     r0, r4, #0x1
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x48] @ 0x20358b4, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	add     r1, sp, #0x0
	bl      Function_2032574
	cmp     r0, #0x0
	bne     branch_2035888
	ldr     r0, [pc, #0x34] @ 0x20358b4, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x30] @ 0x20358b8, (=0x6b4)
	strb    r2, [r1, r0]
branch_2035888: @ 2035888 :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_20358ac

	ldr     r2, [pc, #0x20] @ 0x20358b4, (=RAM_21c07c4)
	ldr     r1, [pc, #0x28] @ 0x20358bc, (=0x696)
	ldr     r3, [r2, #RAM_21c07c4_8]
	ldrb    r0, [r3, r1]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r0, [r3, r1]
	ldr     r2, [r2, #0x8]
	ldrb    r0, [r4, #0x0]
	ldrb    r1, [r2, r1]
	lsl     r2, r1, #4
	mov     r1, #0xf0
	and     r1, r2
	orr     r0, r1
	strb    r0, [r4, #0x0]
branch_20358ac: @ 20358ac :thumb
	mov     r0, #0x1
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x20358b2

.align 2
.word RAM_21c07c4 @ 0x20358b4
.word 0x6b4 @ 0x20358b8
.word 0x696 @ 0x20358bc



.thumb
Function_20358c0: @ 20358c0 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	mov     r0, #0xb
	strb    r0, [r4, #0x0]
	ldr     r0, [pc, #0x64] @ 0x2035930, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x64] @ 0x2035934, (=0x6b5)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_20358da

	mov     r0, #0x0
	b       branch_20358dc

branch_20358da: @ 20358da :thumb
	mov     r0, #0x1
branch_20358dc: @ 20358dc :thumb
	strb    r0, [r4, #0x1]
	bl      Function_20318ec
	asr     r1, r0, #8
	strb    r1, [r4, #0x2]
	strb    r0, [r4, #0x3]
	mov     r0, #0xbb
	str     r0, [sp, #0x4]
	add     r0, r4, #0x5
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x2035930, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	add     r1, sp, #0x0
	bl      Function_2032574
	cmp     r0, #0x0
	beq     branch_203591c

	ldr     r0, [pc, #0x28] @ 0x2035930, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x24] @ 0x2035934, (=0x6b5)
	strb    r2, [r1, r0]
	ldr     r1, [sp, #0x4]
	mov     r0, #0xbb
	sub     r0, r0, r1
	add     sp, #0x8
	strb    r0, [r4, #0x4]
	pop     {r4,pc}

branch_203591c: @ 203591c :thumb
	ldr     r0, [pc, #0x10] @ 0x2035930, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x10] @ 0x2035934, (=0x6b5)
	strb    r2, [r1, r0]
	mov     r0, #0xbb
	strb    r0, [r4, #0x4]
	add     sp, #0x8
	pop     {r4,pc}
@ 0x203592e

.align 2
.word RAM_21c07c4 @ 0x2035930
.word 0x6b5 @ 0x2035934



.thumb
.globl Function_2035938
Function_2035938: @ 2035938 :thumb
	ldr     r1, [pc, #0x8] @ 0x2035944, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x8] @ 0x2035948, (=0x6bc)
	strb    r0, [r2, r1]
	bx      lr
@ 0x2035942

.align 2
.word RAM_21c07c4 @ 0x2035944
.word 0x6bc @ 0x2035948



.thumb
Function_203594c: @ 203594c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x24] @ 0x2035974, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x24] @ 0x2035978, (=0x6bc)
	ldrb    r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_203595e

	mov     r0, #0x0
	pop     {r3,pc}

branch_203595e: @ 203595e :thumb
	.hword  0x1c40 @ add r0, r0, #0x1
	ldrb    r0, [r2, r0]
	blx     _s32_div_f
	cmp     r1, #0x0
	bne     branch_203596e
	mov     r0, #0x1
	pop     {r3,pc}

branch_203596e: @ 203596e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x2035972

.align 2
.word RAM_21c07c4 @ 0x2035974
.word 0x6bc @ 0x2035978



.thumb
.globl Function_203597c
Function_203597c: @ 203597c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_20359a0
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_20359a0
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_20359a0: @ 20359a0 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x20359d8, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_20359c6
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x20359c6

.thumb
branch_20359c6: @ 20359c6 :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_20359d2
	bl      Function_20363bc
branch_20359d2: @ 20359d2 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x20359d8

.word RAM_21c07c4 @ 0x20359d8



.thumb
.globl Function_20359dc
Function_20359dc: @ 20359dc :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035a00
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2035a00
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}

branch_2035a00: @ 2035a00 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2035a38, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_2035a24
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2035a24

.thumb
branch_2035a24: @ 2035a24 :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_2035a30
	bl      Function_20363bc
.thumb
branch_2035a30: @ 2035a30 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035a36

.align 2
.word RAM_21c07c4 @ 0x2035a38



.thumb
.globl Function_2035a3c
Function_2035a3c: @ 2035a3c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2035a58
	bl      ErrorHandling
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035a58

.thumb
branch_2035a58: @ 2035a58 :thumb
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035a70
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2035a70
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035a70

.thumb
branch_2035a70: @ 2035a70 :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035a86
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_203597c
	add     sp, #0x8
	pop     {r4-r6,pc}

branch_2035a86: @ 2035a86 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x30] @ 0x2035ac0, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_2035aac
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2035aac

.thumb
branch_2035aac: @ 2035aac :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_2035ab8
	bl      Function_20363bc
.thumb
branch_2035ab8: @ 2035ab8 :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035abe

.align 2
.word RAM_21c07c4 @ 0x2035ac0



.thumb
.globl Function_2035ac4
Function_2035ac4: @ 2035ac4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_2035ae0
	bl      Function_20363bc
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035ae0

.thumb
branch_2035ae0: @ 2035ae0 :thumb
	mov     r0, #0x0
	bl      Function_2035d78
	cmp     r0, #0x0
	bne     branch_2035af8
	bl      Function_2036180
	cmp     r0, #0x0
	bne     branch_2035af8
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r4-r6,pc}
@ 0x2035af8

.thumb
branch_2035af8: @ 2035af8 :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035b0e
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_20359dc
	add     sp, #0x8
	pop     {r4-r6,pc}

branch_2035b0e: @ 2035b0e :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x2c] @ 0x2035b44, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	cmp     r0, #0x0
	beq     branch_2035b32
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x2035b32

.thumb
branch_2035b32: @ 2035b32 :thumb
	bl      Function_203895c
	cmp     r0, #0xa
	bne     branch_2035b3e
	bl      Function_20363bc
.thumb
branch_2035b3e: @ 2035b3e :thumb
	mov     r0, #0x0
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035b44

.word RAM_21c07c4 @ 0x2035b44



.thumb
.globl Function_2035b48
Function_2035b48: @ 2035b48 :thumb
	ldr     r3, [pc, #0x4] @ 0x2035b50, (=Function_2035ac4+1)
	mov     r2, #0x0
	bx      r3
@ 0x2035b4e

.align 2
.word Function_2035ac4+1 @ =0x2035ac5, 0x2035b50



.thumb
.globl Function_2035b54
Function_2035b54: @ 2035b54 :thumb
	ldr     r0, [pc, #0x8] @ 0x2035b60, (=RAM_21c07c4)
	ldr     r3, [pc, #0xc] @ 0x2035b64, (=0x203228d)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xc] @ 0x2035b68, (=0x498)
	add     r0, r1, r0
	bx      r3
@ 0x2035b60

.word RAM_21c07c4 @ 0x2035b60
.word Function_203228c+1 @ =0x203228d, 0x2035b64
.word 0x498 @ 0x2035b68



.thumb
Function_2035b6c: @ 2035b6c :thumb
	push    {r4,lr}
	ldr     r4, [sp, #0x8]
	bl      Function_20327fc
	mov     r0, #0xee
	strb    r0, [r4, #0xa]
	ldr     r0, [pc, #0x8] @ 0x2035b84, (=0xffff)
	strh    r0, [r4, #0x8]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x2035b84

.word 0xffff @ 0x2035b84
.thumb
Function_2035b88: @ 2035b88 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	mov     r5, r0
	str     r1, [sp, #0x4]
	str     r2, [sp, #0x8]
	mov     r4, r3
	bl      Function_203226c
	cmp     r0, #0x0
	beq     branch_2035c98
.thumb
branch_2035b9c: @ 2035b9c :thumb
	ldrb    r7, [r4, #0xa]
	cmp     r7, #0xee
	bne     branch_2035bae
	mov     r0, r5
	bl      Function_2032210
	mov     r7, r0
	cmp     r7, #0xee
	beq     branch_2035c8e
.thumb
branch_2035bae: @ 2035bae :thumb
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	strb    r7, [r4, #0xa]
	ldrh    r6, [r4, #0x8]
	str     r0, [sp, #0x10]
	ldr     r0, [pc, #0xe0] @ 0x2035c9c, (=0xffff)
	cmp     r6, r0
	bne     branch_2035c02

	mov     r0, r7
	bl      Function_2032868
	mov     r6, r0
	ldr     r0, [pc, #0xd8] @ 0x2035ca0, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0xd8] @ 0x2035ca4, (=0x6b9)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035c98
	ldr     r0, [pc, #0xc8] @ 0x2035c9c, (=0xffff)
	cmp     r6, r0
	bne     branch_2035c00
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, #0x1
	bge     branch_2035bea
	ldr     r0, [sp, #0x10]
	add     sp, #0x14
	strh    r0, [r5, #0x4]
	pop     {r4-r7,pc}
@ 0x2035bea

.thumb
branch_2035bea: @ 2035bea :thumb
	mov     r0, r5
	bl      Function_2032210
	lsl     r6, r0, #8
	mov     r0, r5
	bl      Function_2032210
	add     r6, r6, r0
	mov     r0, #0x4
	ldsh    r0, [r5, r0]
	str     r0, [sp, #0x10]
.thumb
branch_2035c00: @ 2035c00 :thumb
	strh    r6, [r4, #0x8]
.thumb
branch_2035c02: @ 2035c02 :thumb
	mov     r0, r7
	bl      Function_20328d0
	cmp     r0, #0x0
	beq     branch_2035c5e
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	bne     branch_2035c1e
	ldrh    r2, [r4, #0x8]
	ldr     r1, [sp, #0x4]
	mov     r0, r7
	bl      Function_203290c
	str     r0, [r4, #0x4]
.thumb
branch_2035c1e: @ 2035c1e :thumb
	ldr     r2, [r4, #0x0]
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	sub     r2, r6, r2
	bl      Function_20321f4
	ldr     r2, [r4, #0x4]
	str     r0, [sp, #0xc]
	cmp     r2, #0x0
	beq     branch_2035c3e
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0x8]
	add     r1, r2, r1
	ldr     r2, [sp, #0xc]
	blx     MI_CpuCopy8
.thumb
branch_2035c3e: @ 2035c3e :thumb
	ldr     r1, [r4, #0x0]
	ldr     r0, [sp, #0xc]
	add     r0, r1, r0
	str     r0, [r4, #0x0]
	cmp     r0, r6
	blt     branch_2035c8e
	str     r4, [sp, #0x0]
	ldr     r0, [sp, #0x4]
	ldr     r3, [r4, #0x4]
	mov     r1, r7
	mov     r2, r6
	bl      Function_2035b6c
	cmp     r7, #0x11
	beq     branch_2035c98
	b       branch_2035c8e
@ 0x2035c5e

.thumb
branch_2035c5e: @ 2035c5e :thumb
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, r6
	blt     branch_2035c86
	ldr     r1, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	bl      Function_20321f4
	ldr     r0, [sp, #0x4]
	ldr     r3, [sp, #0x8]
	mov     r1, r7
	mov     r2, r6
	str     r4, [sp, #0x0]
	bl      Function_2035b6c
	cmp     r7, #0x11
	beq     branch_2035c98
	b       branch_2035c8e
@ 0x2035c86

.thumb
branch_2035c86: @ 2035c86 :thumb
	ldr     r0, [sp, #0x10]
	add     sp, #0x14
	strh    r0, [r5, #0x4]
	pop     {r4-r7,pc}
@ 0x2035c8e

.thumb
branch_2035c8e: @ 2035c8e :thumb
	mov     r0, r5
	bl      Function_203226c
	cmp     r0, #0x0
	bne     branch_2035b9c
.thumb
branch_2035c98: @ 2035c98 :thumb
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x2035c9c

.word 0xffff @ 0x2035c9c
.word RAM_21c07c4 @ 0x2035ca0
.word 0x6b9 @ 0x2035ca4



.thumb
Function_2035ca8: @ 2035ca8 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x40] @ 0x2035cec, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_2035cea
	ldr     r0, [pc, #0x3c] @ 0x2035cf0, (=0x6bb)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035cea
	ldr     r0, [pc, #0x38] @ 0x2035cf4, (=0x4a4)
	add     r0, r1, r0
	bl      Function_20322d0
	ldr     r0, [pc, #0x28] @ 0x2035cec, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x2c] @ 0x2035cf4, (=0x4a4)
	add     r0, r1, r0
	bl      Function_203226c
	cmp     r0, #0x0
	ble     branch_2035cea
	ldr     r0, [pc, #0x18] @ 0x2035cec, (=RAM_21c07c4)
	mov     r3, #0x62
	ldr     r4, [r0, #RAM_21c07c4_8]
	ldr     r2, [pc, #0x18] @ 0x2035cf4, (=0x4a4)
	lsl     r3, r3, #4
	add     r0, r4, r2
	sub     r2, #0x10
	ldr     r2, [r4, r2]
	mov     r1, #0x0
	add     r3, r4, r3
	bl      Function_2035b88
.thumb
branch_2035cea: @ 2035cea :thumb
	pop     {r4,pc}
@ 0x2035cec

.word RAM_21c07c4 @ 0x2035cec
.word 0x6bb @ 0x2035cf0
.word 0x4a4 @ 0x2035cf4



.thumb
Function_2035cf8: @ 2035cf8 :thumb
	push    {r3-r7,lr}
	ldr     r0, [pc, #0x6c] @ 0x2035d68, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_2035d64
	ldr     r0, [pc, #0x68] @ 0x2035d6c, (=0x6bb)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_2035d64
	bl      Function_203895c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	mov     r4, #0x0
	str     r0, [sp, #0x0]
	cmp     r0, #0x0
	ble     branch_2035d64

	ldr     r7, [pc, #0x44] @ 0x2035d68, (=RAM_21c07c4)
	mov     r5, r4
branch_2035d24: @ 2035d24 :thumb
	ldr     r1, [r7, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x48] @ 0x2035d70, (=0x51c)
	add     r0, r1, r0
	add     r0, r0, r5
	bl      Function_20322d0
	ldr     r1, [r7, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x3c] @ 0x2035d70, (=0x51c)
	add     r0, r1, r0
	add     r0, r0, r5
	bl      Function_203226c
	cmp     r0, #0x0
	ble     branch_2035d5a
	mov     r3, #0x17
	ldr     r6, [r7, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x28] @ 0x2035d70, (=0x51c)
	ldr     r2, [pc, #0x2c] @ 0x2035d74, (=0x494)
	lsl     r3, r3, #6
	add     r0, r6, r0
	add     r3, r6, r3
	ldr     r2, [r6, r2]
	add     r0, r0, r5
	mov     r1, r4
	add     r3, r3, r5
	bl      Function_2035b88
branch_2035d5a: @ 2035d5a :thumb
	ldr     r0, [sp, #0x0]
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, r0
	blt     branch_2035d24

branch_2035d64: @ 2035d64 :thumb
	pop     {r3-r7,pc}
@ 0x2035d66

.align 2
.word RAM_21c07c4 @ 0x2035d68
.word 0x6bb @ 0x2035d6c
.word 0x51c @ 0x2035d70
.word 0x494 @ 0x2035d74



.thumb
.globl Function_2035d78
Function_2035d78: @ 2035d78 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x8c] @ 0x2035e0c, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	bne     branch_2035d88

	mov     r0, #0x0
	pop     {r4,pc}

branch_2035d88: @ 2035d88 :thumb
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035db6

	ldr     r0, [pc, #0x74] @ 0x2035e0c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x74] @ 0x2035e10, (=0x6b7)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_2035db2

	blx     Function_4_21d99d4
	lsl     r0, r0, #16
	lsr     r2, r0, #16
	mov     r0, #0x1
	mov     r1, r0
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2035e08

branch_2035db2: @ 2035db2 :thumb
	mov     r0, #0x0
	pop     {r4,pc}

branch_2035db6: @ 2035db6 :thumb
	bl      Function_2035e38
	cmp     r0, #0x0
	bne     branch_2035dc2
	mov     r0, #0x0
	pop     {r4,pc}

branch_2035dc2: @ 2035dc2 :thumb
	bl      Function_2031934
	cmp     r0, #0x4
	beq     branch_2035dce

	mov     r0, #0x0
	pop     {r4,pc}

branch_2035dce: @ 2035dce :thumb
	bl      Function_203608c
	cmp     r4, r0
	bne     branch_2035dda

	mov     r0, #0x1
	pop     {r4,pc}

branch_2035dda: @ 2035dda :thumb
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2035df4

	bl      Function_20318ec
	mov     r1, #0x1
	mov     r2, r1
	lsl     r2, r4
	tst     r0, r2
	beq     branch_2035e06

	mov     r0, r1
	pop     {r4,pc}

branch_2035df4: @ 2035df4 :thumb
	ldr     r0, [pc, #0x14] @ 0x2035e0c, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x18] @ 0x2035e14, (=0x694)
	ldrh    r2, [r1, r0]
	mov     r0, #0x1
	mov     r1, r0
	lsl     r1, r4
	tst     r1, r2
	bne     branch_2035e08

branch_2035e06: @ 2035e06 :thumb
	mov     r0, #0x0
branch_2035e08: @ 2035e08 :thumb
	pop     {r4,pc}
@ 0x2035e0a

.align 2
.word RAM_21c07c4 @ 0x2035e0c
.word 0x6b7 @ 0x2035e10
.word 0x694 @ 0x2035e14



.thumb
.globl Function_2035e18
Function_2035e18: @ 2035e18 :thumb
	push    {r3-r5,lr}
	mov     r4, #0x0
	mov     r5, r4
branch_2035e1e: @ 2035e1e :thumb
	lsl     r0, r5, #16
	lsr     r0, r0, #16
	bl      Function_2035d78
	cmp     r0, #0x0
	beq     branch_2035e2c
	.hword  0x1c64 @ add r4, r4, #0x1
branch_2035e2c: @ 2035e2c :thumb

	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x8
	blt     branch_2035e1e

	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x2035e36


.align 2, 0
.thumb
.globl Function_2035e38
Function_2035e38: @ 2035e38 :thumb
	push    {r3,lr}
	ldr     r0, =RAM_21c07c4
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_2035e52

	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2035e52

	mov     r0, #0x1
	pop     {r3,pc}

branch_2035e52: @ 2035e52 :thumb
	bl      Function_2033e1c
	pop     {r3,pc}
@ 0x2035e58

.align 2
.pool



.thumb
Function_2035e5c: @ 2035e5c :thumb
	ldr     r1, [pc, #0x8] @ 0x2035e68, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x8] @ 0x2035e6c, (=0x65f)
	strb    r0, [r2, r1]
	bx      lr
@ 0x2035e66

.align 2
.word RAM_21c07c4 @ 0x2035e68
.word 0x65f @ 0x2035e6c



.thumb
Function_2035e70: @ 2035e70 :thumb
	ldr     r1, [pc, #0x8] @ 0x2035e7c, (=RAM_21c07c4)
	ldr     r1, [r1, #RAM_21c07c4_8]
	add     r1, r1, r0
	ldr     r0, [pc, #0x8] @ 0x2035e80, (=0x654)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x2035e7c

.word RAM_21c07c4 @ 0x2035e7c
.word 0x654 @ 0x2035e80



.thumb
Function_2035e84: @ 2035e84 :thumb
	ldr     r1, [pc, #0x18] @ 0x2035ea0, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	cmp     r2, #0x0
	bne     branch_2035e90
	mov     r0, #0x0
	bx      lr

branch_2035e90: @ 2035e90 :thumb
	ldr     r1, [pc, #0x10] @ 0x2035ea4, (=0x644)
	add     r3, r2, r1
	lsl     r2, r0, #1
	ldrh    r0, [r3, r2]
	mov     r1, #0x0
	strh    r1, [r3, r2]
	bx      lr
@ 0x2035e9e

.align 2
.word RAM_21c07c4 @ 0x2035ea0
.word 0x644 @ 0x2035ea4



.thumb
.globl Function_2035ea8
Function_2035ea8: @ 2035ea8 :thumb
	ldr     r0, [pc, #0x14] @ 0x2035ec0, (=RAM_21c07c4)
	ldr     r3, [r0, #RAM_21c07c4_8]
	cmp     r3, #0x0
	beq     branch_2035ebc
	ldr     r1, [pc, #0x10] @ 0x2035ec4, (=0x65c)
	mov     r0, #0x2
	ldrh    r2, [r3, r1]
	lsl     r0, r0, #14
	orr     r0, r2
	strh    r0, [r3, r1]
branch_2035ebc: @ 2035ebc :thumb
	bx      lr
@ 0x2035ebe

.align 2
.word RAM_21c07c4 @ 0x2035ec0
.word 0x65c @ 0x2035ec4



.thumb
.globl Function_2035ec8
Function_2035ec8: @ 2035ec8 :thumb
	ldr     r0, [pc, #0xc] @ 0x2035ed8, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_2035ed6
	ldr     r0, [pc, #0x8] @ 0x2035edc, (=0x65c)
	mov     r1, #0x0
	strh    r1, [r2, r0]
branch_2035ed6: @ 2035ed6 :thumb
	bx      lr
@ 0x2035ed8

.word RAM_21c07c4 @ 0x2035ed8
.word 0x65c @ 0x2035edc



.thumb
.globl Function_2035ee0
Function_2035ee0: @ 2035ee0 :thumb
	ldr     r0, [pc, #0x14] @ 0x2035ef8, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_2035ef4

	ldr     r0, [pc, #0x10] @ 0x2035efc, (=0x65c)
	ldrh    r1, [r1, r0]
	mov     r0, #0x2
	lsl     r0, r0, #14
	and     r0, r1
	bx      lr

branch_2035ef4: @ 2035ef4 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x2035ef8

.word RAM_21c07c4 @ 0x2035ef8
.word 0x65c @ 0x2035efc



.thumb
.globl Function_2035f00
Function_2035f00: @ 2035f00 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r4, r1
	mov     r6, r2
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035f32
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x38] @ 0x2035f54, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	add     sp, #0x8
	pop     {r4-r6,pc}

branch_2035f32: @ 2035f32 :thumb
	mov     r0, #0x1
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2035f54, (=RAM_21c07c4)
	mov     r2, r4
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	mov     r1, r5
	mov     r3, r6
	bl      Function_2032498
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x2035f52

.align 2
.word RAM_21c07c4 @ 0x2035f54



.thumb
.globl Function_2035f58
Function_2035f58: @ 2035f58 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r5, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x18] @ 0x2035f80, (=RAM_21c07c4)
	mov     r4, r1
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	mov     r3, r2
	add     r0, r1, r0
	mov     r1, r5
	mov     r2, r4
	bl      Function_2032498
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x2035f7e

.align 2
.word RAM_21c07c4 @ 0x2035f80



.thumb
Function_2035f84: @ 2035f84 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x74] @ 0x2035ffc, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_2035ff8

	ldr     r1, [pc, #0x70] @ 0x2036000, (=0x6ab)
	ldrb    r0, [r2, r1]
	cmp     r0, #0x1
	beq     branch_2035f9c

	cmp     r0, #0x3
	beq     branch_2035fd4

	pop     {r3,pc}

branch_2035f9c: @ 2035f9c :thumb
	bl      Function_2034890
	cmp     r0, #0x1
	bne     branch_2035fb4

	ldr     r1, [pc, #0x54] @ 0x2035ffc, (=RAM_21c07c4)
	mov     r0, #0xb
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x58] @ 0x2036004, (=0x6ac)
	add     r1, r2, r1
	bl      Function_20360d0
	b       branch_2035fc4

branch_2035fb4: @ 2035fb4 :thumb
	ldr     r1, [pc, #0x44] @ 0x2035ffc, (=RAM_21c07c4)
	mov     r0, #0xb
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x48] @ 0x2036004, (=0x6ac)
	add     r1, r2, r1
	mov     r2, #0x1
	bl      Function_2035ac4
branch_2035fc4: @ 2035fc4 :thumb
	cmp     r0, #0x0
	beq     branch_2035ff8

	ldr     r0, [pc, #0x30] @ 0x2035ffc, (=RAM_21c07c4)
	mov     r2, #0x2
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x30] @ 0x2036000, (=0x6ab)
	strb    r2, [r1, r0]
	pop     {r3,pc}

branch_2035fd4: @ 2035fd4 :thumb
	.hword  0x1c49 @ add r1, r1, #0x1
	mov     r0, #0xc
	add     r1, r2, r1
	bl      Function_20360d0
	cmp     r0, #0x0
	beq     branch_2035ff8

	ldr     r0, [pc, #0x18] @ 0x2035ffc, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x1c] @ 0x2036004, (=0x6ac)
	ldrb    r0, [r1, r0]
	bl      Function_2034848
	ldr     r0, [pc, #0xc] @ 0x2035ffc, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x8] @ 0x2036000, (=0x6ab)
	strb    r2, [r1, r0]

branch_2035ff8: @ 2035ff8 :thumb
	pop     {r3,pc}
@ 0x2035ffa

.align 2
.word RAM_21c07c4 @ 0x2035ffc
.word 0x6ab @ 0x2036000
.word 0x6ac @ 0x2036004



.thumb
Function_2036008: @ 2036008 :thumb
	push    {r4,lr}
	mov     r4, r2
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2036026

	ldr     r1, [pc, #0x10] @ 0x2036028, (=RAM_21c07c4)
	ldr     r0, [pc, #0x14] @ 0x203602c, (=0x6ab)
	ldr     r2, [r1, #RAM_21c07c4_8]
	mov     r3, #0x1
	strb    r3, [r2, r0]
	ldrb    r2, [r4, #0x0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r2, [r1, r0]

branch_2036026: @ 2036026 :thumb
	pop     {r4,pc}
@ 0x2036028

.word RAM_21c07c4 @ 0x2036028
.word 0x6ab @ 0x203602c



.thumb
Function_2036030: @ 2036030 :thumb
	push    {r4,lr}
	mov     r4, r2
	bl      Function_203608c
	cmp     r0, #0x0
	beq     branch_203604e

	ldr     r1, [pc, #0x10] @ 0x2036050, (=RAM_21c07c4)
	ldrb    r3, [r4, #0x0]
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x10] @ 0x2036054, (=0x6ac)
	strb    r3, [r2, r0]
	ldr     r1, [r1, #RAM_21c07c4_8]
	mov     r2, #0x3
	.hword  0x1e40 @ sub r0, r0, #0x1
	strb    r2, [r1, r0]

branch_203604e: @ 203604e :thumb
	pop     {r4,pc}
@ 0x2036050

.word RAM_21c07c4 @ 0x2036050
.word 0x6ac @ 0x2036054



.thumb
Function_2036058: @ 2036058 :thumb
	push    {r4,lr}
	mov     r4, r2
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_2036080

	ldr     r0, [pc, #0x1c] @ 0x2036084, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x1c] @ 0x2036088, (=0x6ab)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x2
	bne     branch_2036080

	ldrb    r0, [r4, #0x0]
	bl      Function_2034848
	ldr     r0, [pc, #0xc] @ 0x2036084, (=RAM_21c07c4)
	mov     r2, #0x0
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x8] @ 0x2036088, (=0x6ab)
	strb    r2, [r1, r0]

branch_2036080: @ 2036080 :thumb
	pop     {r4,pc}
@ 0x2036082

.align 2
.word RAM_21c07c4 @ 0x2036084
.word 0x6ab @ 0x2036088



.thumb
.globl Function_203608c
Function_203608c: @ 203608c :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x3c] @ 0x20360cc, (=RAM_21c07c4)
	ldr     r0, [r0, #RAM_21c07c4_8]
	cmp     r0, #0x0
	beq     branch_20360c6

	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_20360b4

	bl      Function_4_21d1e30
	mov     r1, #0x0
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_20360c6
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	pop     {r3,pc}

branch_20360b4: @ 20360b4 :thumb
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_20360c0
	mov     r0, #0x0
	pop     {r3,pc}

branch_20360c0: @ 20360c0 :thumb
	bl      Function_2031f90
	pop     {r3,pc}

branch_20360c6: @ 20360c6 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x20360ca

.align 2
.word RAM_21c07c4 @ 0x20360cc



.thumb
.globl Function_20360d0
Function_20360d0: @ 20360d0 :thumb
	ldr     r3, [pc, #0x4] @ 0x20360d8, (=Function_20359dc+1)
	mov     r2, #0x0
	bx      r3
@ 0x20360d6

.align 2
.word Function_20359dc+1 @ 0x20360d8



.thumb
.globl Function_20360dc
Function_20360dc: @ 20360dc :thumb
	ldr     r3, [pc, #0x4] @ 0x20360e4, (=0x20359dd)
	mov     r1, #0x0
	mov     r2, r1
	bx      r3
@ 0x20360e4

.word Function_20359dc+1 @ =0x20359dd, 0x20360e4



.thumb
.globl Function_20360e8
Function_20360e8: @ 20360e8 :thumb
	ldr     r3, [pc, #0x0] @ 0x20360ec, (=Function_2033e48+1)
	bx      r3
@ 0x20360ec

.word Function_2033e48+1 @ =0x2033e49, 0x20360ec



.thumb
.globl Function_20360f0
Function_20360f0: @ 20360f0 :thumb
	push    {r3,lr}
	bl      Function_2036180
	cmp     r0, #0x0
	beq     branch_20360fe
	mov     r0, #0x0
	pop     {r3,pc}

branch_20360fe: @ 20360fe :thumb
	ldr     r0, [pc, #0x20] @ 0x2036120, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_203611a

	ldr     r0, [pc, #0x1c] @ 0x2036124, (=0x6b9)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_203611a

	mov     r0, #0x1
	mov     r1, r0
	bl      Function_20388f4
	mov     r0, #0x1
	pop     {r3,pc}

branch_203611a: @ 203611a :thumb
	bl      Function_2033e84
	pop     {r3,pc}
@ 0x2036120

.word RAM_21c07c4 @ 0x2036120
.word 0x6b9 @ 0x2036124



.thumb
Function_2036128: @ 2036128 :thumb
	push    {r3,lr}
	bl      Function_203266c
	cmp     r0, #0x5
	blo     branch_2036136
	mov     r0, #0xc
	pop     {r3,pc}

branch_2036136: @ 2036136 :thumb
	bl      Function_2034890
	cmp     r0, #0x0
	bne     branch_2036142
	mov     r0, #0xc
	pop     {r3,pc}

branch_2036142: @ 2036142 :thumb
	mov     r0, #0x26
	pop     {r3,pc}
@ 0x2036146


.align 2, 0
.thumb
.globl Function_2036148
Function_2036148: @ 2036148 :thumb
	push    {r3,lr}
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_203266c
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3,pc}
@ 0x2036156


.align 2, 0
.thumb
.globl Function_2036158
Function_2036158: @ 2036158 :thumb
	push    {r3,lr}
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_2032698
	.hword  0x1c40 @ add r0, r0, #0x1
	pop     {r3,pc}
@ 0x2036166


.align 2, 0
.thumb
Function_2036168: @ 2036168 :thumb
	ldr     r1, [pc, #0xc] @ 0x2036178, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_2036174
	ldr     r1, [pc, #0x8] @ 0x203617c, (=0x6b6)
	strb    r0, [r2, r1]
branch_2036174: @ 2036174 :thumb
	bx      lr
@ 0x2036176

.align 2
.word RAM_21c07c4 @ 0x2036178
.word 0x6b6 @ 0x203617c



.thumb
.globl Function_2036180
Function_2036180: @ 2036180 :thumb
	ldr     r0, [pc, #0x10] @ 0x2036194, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_203618e

	ldr     r0, [pc, #0xc] @ 0x2036198, (=0x6b6)
	ldrb    r0, [r1, r0]
	bx      lr

branch_203618e: @ 203618e :thumb
	mov     r0, #0x0
	bx      lr
@ 0x2036192

.align 2
.word RAM_21c07c4 @ 0x2036194
.word 0x6b6 @ 0x2036198



.thumb
Function_203619c: @ 203619c :thumb
	push    {r3,lr}
	bl      Function_203406c
	cmp     r0, #0x0
	bne     branch_20361b6
	bl      Function_203608c
	cmp     r0, #0x0
	bne     branch_20361b6
	mov     r0, #0x2
	add     r1, sp, #0x0
	bl      Function_2035b48
branch_20361b6: @ 20361b6 :thumb
	bl      Function_203408c
	pop     {r3,pc}
@ 0x20361bc


.thumb
.globl Function_20361bc
Function_20361bc: @ 20361bc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	mov     r4, r0
	add     r0, sp, #0x10
	add     r1, sp, #0x4
	bl      Function_201384c
	ldr     r0, [pc, #0x74] @ 0x2036240, (=RAM_21bf67c)
	ldr     r6, [sp, #0x10]
	mov     r5, #0x0
	lsr     r7, r6, #28
	lsl     r5, r5, #4
	ldr     r1, [sp, #0xc]
	ldr     r0, [r0, #RAM_21bf67c_2c]
	lsl     r6, r6, #4
	add     r3, r1, r0
	ldr     r0, [sp, #0x18]
	orr     r5, r7
	str     r0, [sp, #0x0]
	ldr     r0, [sp, #0x14]
	ldr     r1, [sp, #0x4]
	add     r6, r0, r6
	ldr     r0, [pc, #0x58] @ 0x2036244, (=0x0)
	ldr     r2, [sp, #0x8]
	adc     r0, r5
	lsr     r5, r6, #27
	lsl     r0, r0, #5
	orr     r0, r5
	ldr     r5, [sp, #0x0]
	lsl     r6, r6, #5
	add     r6, r5, r6
	ldr     r5, [pc, #0x48] @ 0x2036244, (=0x0)
	adc     r5, r0
	lsr     r0, r6, #27
	lsl     r5, r5, #5
	orr     r5, r0
	lsl     r0, r6, #5
	add     r6, r1, r0
	ldr     r1, [pc, #0x38] @ 0x2036244, (=0x0)
	adc     r1, r5
	lsr     r0, r6, #26
	lsl     r1, r1, #6
	orr     r1, r0
	lsl     r0, r6, #6
	add     r5, r2, r0
	ldr     r2, [pc, #0x2c] @ 0x2036244, (=0x0)
	adc     r2, r1
	lsr     r0, r5, #26
	lsl     r1, r2, #6
	orr     r1, r0
	lsl     r0, r5, #6
	add     r2, r3, r0
	ldr     r0, [pc, #0x1c] @ 0x2036244, (=0x0)
	str     r2, [r4, #0x0]
	adc     r0, r1
	str     r0, [r4, #0x4]
	ldr     r1, [pc, #0x18] @ 0x2036248, (=0x6c078965)
	ldr     r0, [pc, #0x1c] @ 0x203624c, (=0x5d588b65)
	str     r1, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldr     r0, [pc, #0x18] @ 0x2036250, (=0x269ec3)
	str     r0, [r4, #0x10]
	mov     r0, #0x0
	str     r0, [r4, #0x14]
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x2036240

.word RAM_21bf67c @ 0x2036240
.word 0x0 @ 0x2036244
.word 0x6c078965 @ 0x2036248
.word 0x5d588b65 @ 0x203624c
.word 0x269ec3 @ 0x2036250



.thumb
.globl Function_2036254
Function_2036254: @ 2036254 :thumb
	mov     r1, r0
	ldr     r0, [pc, #0xc] @ 0x2036264, (=RAM_21c07c4)
	ldr     r3, [pc, #0xc] @ 0x2036268, (=Function_2032644+1)
	ldr     r2, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r2, r0
	bx      r3
@ 0x2036264

.word RAM_21c07c4 @ 0x2036264
.word Function_2032644+1 @ 0x2036268



.thumb
.globl Function_203626c
Function_203626c: @ 203626c :thumb
	mov     r1, r0
	ldr     r0, [pc, #0xc] @ 0x203627c, (=RAM_21c07c4)
	ldr     r3, [pc, #0xc] @ 0x2036280, (=0x2032645)
	ldr     r2, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r2, r0
	bx      r3
@ 0x203627c

.word RAM_21c07c4 @ 0x203627c
.word Function_2032644+1 @ 0x2036280



.thumb
.globl Function_2036284
Function_2036284: @ 2036284 :thumb
	ldr     r0, [pc, #0xc] @ 0x2036294, (=RAM_21c07c4)
	ldr     r3, [pc, #0x10] @ 0x2036298, (=0x20322f9)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x5a
	lsl     r0, r0, #4
	add     r0, r1, r0
	bx      r3
@ 0x2036292

.align 2
.word RAM_21c07c4 @ 0x2036294
.word Function_20322f8+1 @ =0x20322f9, 0x2036298



.thumb
.globl Function_203629c
Function_203629c: @ 203629c :thumb
	ldr     r0, [pc, #0xc] @ 0x20362ac, (=RAM_21c07c4)
	ldr     r3, [pc, #0x10] @ 0x20362b0, (=0x20322f9)
	ldr     r1, [r0, #RAM_21c07c4_8]
	mov     r0, #0x16
	lsl     r0, r0, #6
	add     r0, r1, r0
	bx      r3
@ 0x20362aa

.align 2
.word RAM_21c07c4 @ 0x20362ac
.word Function_20322f8+1 @ =0x20322f9, 0x20362b0



.thumb
Function_20362b4: @ 20362b4 :thumb
	ldr     r1, [pc, #0x8] @ 0x20362c0, (=RAM_21c07c4)
	ldr     r2, [r1, #RAM_21c07c4_8]
	ldr     r1, [pc, #0x8] @ 0x20362c4, (=0x6b7)
	strb    r0, [r2, r1]
	bx      lr
@ 0x20362be

.align 2
.word RAM_21c07c4 @ 0x20362c0
.word 0x6b7 @ 0x20362c4



.thumb
.globl Function_20362c8
Function_20362c8: @ 20362c8 :thumb
	ldr     r0, [pc, #0x8] @ 0x20362d4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x8] @ 0x20362d8, (=0x6b7)
	ldrb    r0, [r1, r0]
	bx      lr
@ 0x20362d2

.align 2
.word RAM_21c07c4 @ 0x20362d4
.word 0x6b7 @ 0x20362d8



.thumb
Function_20362dc: @ 20362dc :thumb
	ldr     r2, [pc, #0xc] @ 0x20362ec, (=RAM_21c07c4)
	ldr     r2, [r2, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_20362ea
	add     r2, r2, r1
	ldr     r1, [pc, #0x8] @ 0x20362f0, (=0x6a7)
	strb    r0, [r2, r1]
branch_20362ea: @ 20362ea :thumb
	bx      lr
@ 0x20362ec

.word RAM_21c07c4 @ 0x20362ec
.word 0x6a7 @ 0x20362f0



.thumb
.globl Function_20362f4
Function_20362f4: @ 20362f4 :thumb
	ldr     r1, [pc, #0x14] @ 0x203630c, (=RAM_21c07c4)
	ldr     r1, [r1, #RAM_21c07c4_8]
	cmp     r1, #0x0
	beq     branch_2036308

	add     r2, r1, r0
	ldr     r1, [pc, #0x10] @ 0x2036310, (=0x6a7)
	ldrb    r1, [r2, r1]
	cmp     r1, #0xff
	beq     branch_2036308
	mov     r0, r1

branch_2036308: @ 2036308 :thumb
	bx      lr
@ 0x203630a

.align 2
.word RAM_21c07c4 @ 0x203630c
.word 0x6a7 @ 0x2036310



.thumb
Function_2036314: @ 2036314 :thumb
	push    {r3,lr}
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_2036328
	bl      0x21d254c
	pop     {r3,pc}

branch_2036328: @ 2036328 :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x203632c


.thumb
.globl Function_203632c
Function_203632c: @ 203632c :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_203636a
	ldr     r2, [pc, #0x2c] @ 0x203636c, (=RAM_21c07c4)
	ldr     r1, [pc, #0x30] @ 0x2036370, (=0x664)
	ldr     r3, [r2, #RAM_21c07c4_8]
	ldr     r0, [r3, r1]
	cmp     r0, r4
	beq     branch_203636a

	str     r4, [r3, r1]
	cmp     r4, #0x0
	beq     branch_203636a

	ldr     r3, [r2, #RAM_21c07c4_8]
	mov     r0, #0x0
	.hword  0x1d09 @ add r1, r1, #0x4
	str     r0, [r3, r1]
	ldr     r1, [pc, #0x1c] @ 0x2036374, (=0x66c)
	mov     r5, r0
	mov     r4, r0
branch_203635c: @ 203635c :thumb
	ldr     r3, [r2, #RAM_21c07c4_8]
	.hword  0x1c40 @ add r0, r0, #0x1
	add     r3, r3, r5
	.hword  0x1d2d @ add r5, r5, #0x4
	str     r4, [r3, r1]
	cmp     r0, #0x8
	blt     branch_203635c

branch_203636a: @ 203636a :thumb
	pop     {r3-r5,pc}
@ 0x203636c

.word RAM_21c07c4 @ 0x203636c
.word 0x664 @ 0x2036370
.word 0x66c @ 0x2036374



.thumb
.globl Function_2036378
Function_2036378: @ 2036378 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203632c
	bl      Function_203895c
	bl      Function_20326ec
	cmp     r0, #0x0
	beq     branch_203639e
	cmp     r4, #0x0
	beq     branch_2036398
	mov     r0, #0x0
	bl      0x21d2598
	pop     {r4,pc}

branch_2036398: @ 2036398 :thumb
	mov     r0, #0x1
	bl      0x21d2598
branch_203639e: @ 203639e :thumb
	pop     {r4,pc}
@ 0x20363a0


.thumb
.globl Function_20363a0
Function_20363a0: @ 20363a0 :thumb
	ldr     r0, [pc, #0x10] @ 0x20363b4, (=RAM_21c07c4)
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x10] @ 0x20363b8, (=0x6b1)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_20363b0

	mov     r0, #0x1
	bx      lr

branch_20363b0: @ 20363b0 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x20363b4

.word RAM_21c07c4 @ 0x20363b4
.word 0x6b1 @ 0x20363b8



.thumb
Function_20363bc: @ 20363bc :thumb
	ldr     r0, [pc, #0x8] @ 0x20363c8, (=RAM_21c07c4)
	mov     r2, #0x1
	ldr     r1, [r0, #RAM_21c07c4_8]
	ldr     r0, [pc, #0x8] @ 0x20363cc, (=0x6b9)
	strb    r2, [r1, r0]
	bx      lr
@ 0x20363c8

.word RAM_21c07c4 @ 0x20363c8
.word 0x6b9 @ 0x20363cc



.thumb
Function_20363d0: @ 20363d0 :thumb
	ldr     r0, [pc, #0xc] @ 0x20363e0, (=RAM_21c07c4)
	ldr     r2, [r0, #RAM_21c07c4_8]
	cmp     r2, #0x0
	beq     branch_20363de
	ldr     r0, [pc, #0x8] @ 0x20363e4, (=0x6ba)
	mov     r1, #0x1
	strb    r1, [r2, r0]
branch_20363de: @ 20363de :thumb
	bx      lr
@ 0x20363e0

.word RAM_21c07c4 @ 0x20363e0
.word 0x6ba @ 0x20363e4

