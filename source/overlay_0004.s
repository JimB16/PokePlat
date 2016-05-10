

.section .iwram4, "ax"


.thumb
Startpoint_21d0d80: @ 21d0d80 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x1bc] @ 0x21d0f44, (=#0x221a400)
	mov     r5, r1
	ldr     r0, [r0, #0x0]
	mov     r4, r2
	str     r3, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0d98
	bl      Function_2022974
branch_21d0d98: @ 21d0d98 :thumb
	ldr     r1, [pc, #0x1ac] @ 0x21d0f48, (=#0x1108)
	mov     r0, r5
	bl      Function_2018144
	ldr     r2, [pc, #0x1a4] @ 0x21d0f48, (=#0x1108)
	mov     r6, r0
	mov     r1, #0x0
	blx     Function_20c4cf4
	mov     r2, r6
	add     r2, #0x1f
	mov     r0, #0x1f
	bic     r2, r0
	ldr     r1, [pc, #0x190] @ 0x21d0f44, (=#0x221a400)
	ldr     r0, [pc, #0x194] @ 0x21d0f4c, (=#0xf7c)
	str     r2, [r1, #0x0]
	str     r6, [r2, r0]
	ldr     r6, [r1, #0x0]
	ldr     r2, [sp, #0x4]
	sub     r3, r0, #0x4
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	mov     r2, #0x0
	add     r3, #0x28
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	add     r3, #0x2c
	str     r2, [r6, r3]
	mov     r3, r0
	ldr     r6, [r1, #0x0]
	add     r3, #0x44
	str     r2, [r6, r3]
	ldr     r3, [r1, #0x0]
	add     r0, #0xf4
	str     r2, [r3, r0]
	ldr     r0, [r1, #0x0]
	ldr     r2, [pc, #0x168] @ 0x21d0f50, (=#0x1084)
	str     r5, [r0, r2]
	add     r0, r2, #0x4
	ldr     r3, [r1, #0x0]
	add     r2, #0x8
	str     r5, [r3, r0]
	ldr     r0, [r1, #0x0]
	ldr     r1, [pc, #0x160] @ 0x21d0f54, (=#0x3020)
	str     r4, [r0, r2]
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_2018144
	ldr     r3, [pc, #0x144] @ 0x21d0f44, (=#0x221a400)
	mov     r1, #0xf9
	ldr     r2, [r3, #0x0]
	lsl     r1, r1, #4
	str     r0, [r2, r1]
	mov     r0, r1
	ldr     r5, [r3, #0x0]
	mov     r2, #0x0
	add     r0, #0x8
	str     r2, [r5, r0]
	ldr     r0, [r3, #0x0]
	ldr     r0, [r0, r1]
	mov     r1, #0x1f
	add     r0, #0x1f
	bic     r0, r1
	mov     r1, r4
	blx     Function_20a5404
	ldr     r4, [pc, #0x120] @ 0x21d0f44, (=#0x221a400)
	mov     r6, #0x0
	ldr     r2, [r4, #0x0]
	ldr     r1, [pc, #0x12c] @ 0x21d0f58, (=#0xf94)
	sub     r7, r6, #0x1
	str     r0, [r2, r1]
	mov     r0, r1
	ldr     r2, [r4, #0x0]
	add     r0, #0x8
	str     r6, [r2, r0]
	ldr     r0, [r4, #0x0]
	ldr     r2, [pc, #0x120] @ 0x21d0f5c, (=#0x10a4)
	str     r6, [r0, r2]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x10
	str     r7, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x38
	str     r6, [r3, r0]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	ldr     r0, [sp, #0x0]
	sub     r3, #0x28
	str     r0, [r5, r3]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0x24
	str     r6, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	add     r0, #0x34
	str     r6, [r3, r0]
	mov     r0, r2
	ldr     r3, [r4, #0x0]
	sub     r0, #0xc
	str     r7, [r3, r0]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	mov     r0, #0x1
	sub     r3, #0x8
	str     r0, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x3a
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x28
	str     r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x38
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x39
	strb    r6, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x30
	strh    r0, [r5, r3]
	mov     r3, r2
	ldr     r5, [r4, #0x0]
	add     r3, #0x2c
	str     r0, [r5, r3]
	ldr     r3, [r4, #0x0]
	add     r2, #0x32
	strh    r0, [r3, r2]
	ldr     r0, [sp, #0x4]
	cmp     r0, #0x0
	beq     branch_21d0ee6
	ldr     r0, [r4, #0x0]
	sub     r1, #0x1c
	ldr     r0, [r0, r1]
	bl      Function_202b370
	bl      Function_202ad28
	mov     r2, r4
	mov     r1, #0xf1
	ldr     r3, [r2, #0x0]
	lsl     r1, r1, #4
	str     r0, [r3, r1]
	ldr     r0, [r2, #0x0]
	add     r1, #0x68
	ldr     r0, [r0, r1]
	bl      Function_202b370
	mov     r1, r6
	bl      Function_202aed8
	mov     r1, r4
	ldr     r2, [r1, #0x0]
	mov     r1, #0x1
	lsl     r1, r1, #8
	str     r0, [r2, r1]
branch_21d0ee6: @ 21d0ee6 :thumb
	ldr     r2, [pc, #0x5c] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [pc, #0x74] @ 0x21d0f60, (=#0x10e5)
	ldr     r0, [r2, #0x0]
	mov     r3, #0x1
	strb    r3, [r0, r1]
	mov     r0, #0x0
	ldr     r3, [r2, #0x0]
	sub     r1, #0x81
	str     r0, [r3, r1]
	ldr     r1, [pc, #0x68] @ 0x21d0f64, (=#0x1044)
	mov     r4, r0
branch_21d0efc: @ 21d0efc :thumb
	ldr     r3, [r2, #0x0]
	add     r3, r3, r0
	.hword  0x1c40 @ add r0, r0, #0x1
	strb    r4, [r3, r1]
	cmp     r0, #0x20
	blt     branch_21d0efc
	bl      Function_21d24d8
	ldr     r0, [pc, #0x34] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a450c
	cmp     r0, #0x0
	bne     branch_21d0f24
	add     sp, #0x8
	mov     r0, #0x1
	pop     {r3-r7,pc}

branch_21d0f24: @ 21d0f24 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d0f44, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a453c
	cmp     r0, #0x0
	beq     branch_21d0f3c
	add     sp, #0x8
	mov     r0, #0x0
	pop     {r3-r7,pc}

branch_21d0f3c: @ 21d0f3c :thumb
	mov     r0, #0x2
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d0f42


.incbin "./baserom/overlay/overlay_0004.bin", 0x1c2, 0x21d0f44 - 0x21d0f42


.pool
.word 0x221a400 @ 0x21d0f44
.word 0x1108 @ 0x21d0f48
.word 0xf7c @ 0x21d0f4c
.word 0x1084 @ 0x21d0f50
.word 0x3020 @ 0x21d0f54
.word 0xf94 @ 0x21d0f58
.word 0x10a4 @ 0x21d0f5c
.word 0x10e5 @ 0x21d0f60
.word 0x1044 @ 0x21d0f64



.thumb
Startpoint_21d0f68: @ 21d0f68 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x6c] @ 0x21d0fd8, (=#0x221a400)
	ldr     r0, [r0, #0x0]
	cmp     r0, #0x0
	beq     branch_21d0fd2
	bl      Function_21d27cc
	ldr     r0, [pc, #0x60] @ 0x21d0fd8, (=#0x221a400)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x60] @ 0x21d0fdc, (=#0xf98)
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	beq     branch_21d0fa0
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	blx     Function_20a543c
	ldr     r0, [pc, #0x4c] @ 0x21d0fd8, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d0fdc, (=#0xf98)
	ldr     r0, [r1, r0]
	bl      Function_20181c4
	ldr     r0, [pc, #0x40] @ 0x21d0fd8, (=#0x221a400)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x3c] @ 0x21d0fdc, (=#0xf98)
	str     r2, [r1, r0]
.thumb
branch_21d0fa0: @ 21d0fa0 :thumb
	ldr     r0, [pc, #0x34] @ 0x21d0fd8, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x21d0fe0, (=#0xf94)
	ldr     r0, [r1, r0]
	blx     Function_20a543c
	ldr     r0, [pc, #0x28] @ 0x21d0fd8, (=#0x221a400)
	ldr     r1, [pc, #0x34] @ 0x21d0fe4, (=#0x1084)
	ldr     r2, [r0, #0x0]
	ldr     r0, [r2, r1]
	sub     r1, #0xf4
	ldr     r1, [r2, r1]
	bl      Function_2018238
	ldr     r0, [pc, #0x18] @ 0x21d0fd8, (=#0x221a400)
	ldr     r1, [pc, #0x28] @ 0x21d0fe8, (=#0xf7c)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d0fe4, (=#0x1084)
	ldr     r1, [r2, r1]
	ldr     r0, [r2, r0]
	bl      Function_2018238
	ldr     r0, [pc, #0x8] @ 0x21d0fd8, (=#0x221a400)
	mov     r1, #0x0
	str     r1, [r0, #0x0]
.thumb
branch_21d0fd2: @ 21d0fd2 :thumb
	blx     Function_21d76e8
	pop     {r3,pc}
@ 0x21d0fd8

.word 0x221a400 @ 0x21d0fd8
.word 0xf98 @ 0x21d0fdc
.word 0xf94 @ 0x21d0fe0
.word 0x1084 @ 0x21d0fe4
.word 0xf7c @ 0x21d0fe8



.thumb
Startpoint_21d0fec: @ 21d0fec :thumb
	push    {r3,lr}
	add     sp, #-0x68
	ldr     r0, [pc, #0xec] @ 0x21d10e0, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xec] @ 0x21d10e4, (=#0x1070)
	ldr     r0, [r1, r0]
	cmp     r0, #0x4
	bhi     branch_21d10d6
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r0, r1, #0
	lsl     r6, r7, #0
	lsl     r4, r5, #1
	lsl     r4, r7, #2
	lsl     r2, r0, #3
	ldr     r0, [pc, #0xd4] @ 0x21d10e8, (=#0x21d1aa1)
	ldr     r1, [pc, #0xd4] @ 0x21d10ec, (=#0x21d1b05)
	blx     Function_21d776c
	ldr     r0, [pc, #0xc4] @ 0x21d10e0, (=#0x221a400)
	mov     r2, #0x1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xcc] @ 0x21d10f0, (=#0xf14)
	mov     r3, #0x14
	add     r0, r1, r0
	mov     r1, #0x2
	blx     Function_21d78c8
	mov     r0, #0x2
	blx     Function_21d792c
	blx     Function_21d797c
	ldr     r1, [pc, #0xa8] @ 0x21d10e0, (=#0x221a400)
	ldr     r0, [pc, #0xa8] @ 0x21d10e4, (=#0x1070)
	ldr     r2, [r1, #0x0]
	mov     r3, #0x1
	str     r3, [r2, r0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x0
	add     r0, #0x20
	str     r2, [r1, r0]
	blx     Function_21d7a8c
	cmp     r0, #0x0
	beq     branch_21d1070
	blx     Function_21d7bfc
	cmp     r0, #0x4
	bne     branch_21d1064
	ldr     r0, [pc, #0x84] @ 0x21d10e0, (=#0x221a400)
	mov     r2, #0x2
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x84] @ 0x21d10e4, (=#0x1070)
	str     r2, [r1, r0]
	b       branch_21d1076
@ 0x21d1064

.thumb
branch_21d1064: @ 21d1064 :thumb
	ldr     r0, [pc, #0x78] @ 0x21d10e0, (=#0x221a400)
	mov     r2, #0xc
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x78] @ 0x21d10e4, (=#0x1070)
	str     r2, [r1, r0]
	b       branch_21d1076
@ 0x21d1070

.thumb
branch_21d1070: @ 21d1070 :thumb
	blx     Function_21d7ae4
	b       branch_21d10d6
@ 0x21d1076

.thumb
branch_21d1076: @ 21d1076 :thumb
	bl      Function_21d1b5c
	cmp     r0, #0x0
	bne     branch_21d10da
	ldr     r0, [pc, #0x60] @ 0x21d10e0, (=#0x221a400)
	mov     r2, #0xf1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x6c] @ 0x21d10f4, (=#0x2215e8c)
	lsl     r2, r2, #4
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x1
	lsl     r0, r0, #8
	ldr     r0, [r1, r0]
	ldr     r3, [pc, #0x60] @ 0x21d10f8, (=#0x2215e80)
	str     r0, [sp, #0xc]
	mov     r0, #0x20
	str     r0, [sp, #0x10]
	add     r0, #0xe4
	add     r0, r1, r0
	ldr     r1, [r1, r2]
	ldr     r2, [pc, #0x54] @ 0x21d10fc, (=#0x29e7)
	blx     Function_21d8c08
	add     r0, sp, #0x14
	blx     Function_20c3fbc
	mov     r1, #0x0
	ldr     r2, [pc, #0x4c] @ 0x21d1100, (=#0x21d1651)
	add     r0, sp, #0x18
	mov     r3, r1
	blx     Function_21d9244
	ldr     r0, [pc, #0x20] @ 0x21d10e0, (=#0x221a400)
	mov     r2, #0x3
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d10e4, (=#0x1070)
	str     r2, [r1, r0]
	blx     Function_21d8ff4
	b       branch_21d10d6
@ 0x21d10cc


.incbin "./baserom/overlay/overlay_0004.bin", 0x34c, 0x21d10d6 - 0x21d10cc


.thumb
branch_21d10d6: @ 21d10d6 :thumb
	bl      Function_21d1b5c
.thumb
branch_21d10da: @ 21d10da :thumb
	add     sp, #0x68
	pop     {r3,pc}
@ 0x21d10de


.incbin "./baserom/overlay/overlay_0004.bin", 0x35e, 0x21d10e0 - 0x21d10de


.word 0x221a400 @ 0x21d10e0
.word 0x1070 @ 0x21d10e4
.word 0x21d1aa1 @ 0x21d10e8
.word Function_21d1b04+1 @ =0x21d1b05, 0x21d10ec
.word 0xf14 @ 0x21d10f0
.word 0x2215e8c @ 0x21d10f4
.word 0x2215e80 @ 0x21d10f8
.word 0x29e7 @ 0x21d10fc
.word 0x21d1651 @ 0x21d1100



.thumb
Startpoint_21d1104: @ 21d1104 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x10] @ 0x21d1118, (=#0x221a400)
	ldr     r2, [pc, #0x10] @ 0x21d111c, (=#0xfa4)
	ldr     r4, [r3, #0x0]
	str     r0, [r4, r2]
	ldr     r3, [r3, #0x0]
	add     r0, r2, #0x4
	str     r1, [r3, r0]
	pop     {r3,r4}
	bx      lr
@ 0x21d1118

.word 0x221a400 @ 0x21d1118
.word 0xfa4 @ 0x21d111c
.thumb
Startpoint_21d1120: @ 21d1120 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x10] @ 0x21d1134, (=#0x221a400)
	ldr     r2, [pc, #0x10] @ 0x21d1138, (=#0xfac)
	ldr     r4, [r3, #0x0]
	str     r0, [r4, r2]
	ldr     r3, [r3, #0x0]
	add     r0, r2, #0x4
	str     r1, [r3, r0]
	pop     {r3,r4}
	bx      lr
@ 0x21d1134

.word 0x221a400 @ 0x21d1134
.word 0xfac @ 0x21d1138

.incbin "./baserom/overlay/overlay_0004.bin", 0x3bc, 0x21d1150 - 0x21d113c


.thumb
Startpoint_21d1150: @ 21d1150 :thumb
	push    {r3,r4}
	ldr     r3, [pc, #0x10] @ 0x21d1164, (=#0x221a400)
	ldr     r2, [pc, #0x10] @ 0x21d1168, (=#0xfb4)
	ldr     r4, [r3, #0x0]
	str     r0, [r4, r2]
	ldr     r3, [r3, #0x0]
	add     r0, r2, #0x4
	str     r1, [r3, r0]
	pop     {r3,r4}
	bx      lr
@ 0x21d1164

.word 0x221a400 @ 0x21d1164
.word 0xfb4 @ 0x21d1168
.thumb
Startpoint_21d116c: @ 21d116c :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r5, r0
	ldr     r0, [pc, #0x108] @ 0x21d127c, (=#0x221a400)
	mov     r4, r1
	ldr     r0, [r0, #0x0]
	mov     r6, r2
	mov     r7, r3
	cmp     r0, #0x0
	bne     branch_21d1184
	bl      Function_2022974
.thumb
branch_21d1184: @ 21d1184 :thumb
	ldr     r0, [pc, #0xf4] @ 0x21d127c, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xf4] @ 0x21d1280, (=#0x1070)
	ldr     r0, [r1, r0]
	cmp     r0, #0x4
	beq     branch_21d1196
	add     sp, #0x10
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1196

.thumb
branch_21d1196: @ 21d1196 :thumb
	bl      Function_21d27cc
	ldr     r2, [pc, #0xe8] @ 0x21d1284, (=#0x2215868)
	add     r1, sp, #0x8
	ldmia   r2!, {r0,r2}
	str     r0, [sp, #0x8]
	mov     r0, #0xfa
	lsl     r0, r0, #2
	str     r2, [sp, #0xc]
	mul     r0, r7
	str     r0, [sp, #0xc]
	mov     r0, #0x0
	mov     r2, #0x8
	blx     Function_21dc9ac
	cmp     r0, #0x0
	beq     branch_21d11bc
	bl      Function_2022974
branch_21d11bc: @ 21d11bc :thumb
	ldr     r1, [pc, #0xc8] @ 0x21d1288, (=#0x2215e94)
	mov     r0, #0x0
	mov     r2, r5
	blx     Function_21dc87c
	cmp     r0, #0x0
	bne     branch_21d11ce
	bl      Function_2022974
branch_21d11ce: @ 21d11ce :thumb
	ldr     r0, [pc, #0xac] @ 0x21d127c, (=#0x221a400)
	mov     r2, #0x80
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xb4] @ 0x21d128c, (=#0xfc4)
	add     r0, r1, r0
	mov     r1, #0x0
	blx     Function_20c4cf4
	ldr     r0, [pc, #0x9c] @ 0x21d127c, (=#0x221a400)
	ldr     r2, [pc, #0xa4] @ 0x21d1288, (=#0x2215e94)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0xa4] @ 0x21d128c, (=#0xfc4)
	mov     r3, r5
	add     r0, r1, r0
	ldr     r1, [pc, #0xa4] @ 0x21d1290, (=#0x2215870)
	blx     Function_20d7510
	ldr     r0, [pc, #0x88] @ 0x21d127c, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x94] @ 0x21d128c, (=#0xfc4)
	add     r0, r1, r0
	blx     Function_20d8b60
	cmp     r0, #0x80
	bcc     branch_21d1204
	bl      Function_2022974
.thumb
branch_21d1204: @ 21d1204 :thumb
	cmp     r6, #0x0
	beq     branch_21d1218
	ldr     r0, [pc, #0x70] @ 0x21d127c, (=#0x221a400)
	ldr     r2, [pc, #0x80] @ 0x21d128c, (=#0xfc4)
	ldr     r3, [r0, #0x0]
	mov     r0, #0x1
	add     r1, r3, r2
	add     r2, r3, r2
	blx     Function_21dc87c
.thumb
branch_21d1218: @ 21d1218 :thumb
	ldr     r2, [pc, #0x60] @ 0x21d127c, (=#0x221a400)
	ldr     r1, [pc, #0x64] @ 0x21d1280, (=#0x1070)
	ldr     r0, [r2, #0x0]
	mov     r3, #0x5
	str     r3, [r0, r1]
	mov     r0, r1
	ldr     r3, [r2, #0x0]
	add     r0, #0xc
	str     r4, [r3, r0]
	ldr     r0, [pc, #0x68] @ 0x21d1294, (=#0x21d18f1)
	mov     r3, #0x0
	str     r0, [sp, #0x0]
	str     r3, [sp, #0x4]
	lsl     r0, r4, #24
	ldr     r2, [r2, #0x0]
	sub     r1, #0xac
	add     r1, r2, r1
	ldr     r2, [pc, #0x5c] @ 0x21d1298, (=#0x21d1899)
	lsr     r0, r0, #24
	blx     Function_21d93f4
	ldr     r0, [pc, #0x38] @ 0x21d127c, (=#0x221a400)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x50] @ 0x21d129c, (=#0x1074)
	str     r2, [r1, r0]
	ldr     r0, [pc, #0x50] @ 0x21d12a0, (=#0x21d18f5)
	blx     Function_21e4d74
	ldr     r0, [pc, #0x50] @ 0x21d12a4, (=#0x21d1951)
	blx     Function_21e4d94
	ldr     r0, [pc, #0x4c] @ 0x21d12a8, (=#0x21d1a21)
	mov     r1, #0x0
	blx     Function_21d9724
	ldr     r0, [pc, #0x48] @ 0x21d12ac, (=#0x21d16e9)
	blx     Function_21e4db4
	ldr     r2, [pc, #0x14] @ 0x21d127c, (=#0x221a400)
	ldr     r1, [pc, #0x44] @ 0x21d12b0, (=#0x1078)
	ldr     r0, [r2, #0x0]
	mov     r3, #0x0
	str     r3, [r0, r1]
	ldr     r2, [r2, #0x0]
	mov     r0, #0x1
	add     r1, #0x6d
	strb    r0, [r2, r1]
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d127c

.word 0x221a400 @ 0x21d127c
.word 0x1070 @ 0x21d1280
.word 0x2215868 @ 0x21d1284
.word 0x2215e94 @ 0x21d1288
.word 0xfc4 @ 0x21d128c
.word 0x2215870 @ 0x21d1290
.word 0x21d18f1 @ 0x21d1294
.word 0x21d1899 @ 0x21d1298
.word 0x1074 @ 0x21d129c
.word 0x21d18f5 @ 0x21d12a0
.word 0x21d1951 @ 0x21d12a4
.word 0x21d1a21 @ 0x21d12a8
.word 0x21d16e9 @ 0x21d12ac
.word 0x1078 @ 0x21d12b0
.thumb
Function_21d12b4: @ 21d12b4 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d12cc, (=#0x221a400)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d12d0, (=#0x1070)
	ldr     r1, [r2, r0]
	cmp     r1, #0xa
	bne     branch_21d12c6
	mov     r1, #0xb
	str     r1, [r2, r0]
	bx      lr
@ 0x21d12c6

.thumb
branch_21d12c6: @ 21d12c6 :thumb
	mov     r1, #0x9
	str     r1, [r2, r0]
	bx      lr
@ 0x21d12cc

.word 0x221a400 @ 0x21d12cc
.word 0x1070 @ 0x21d12d0

.incbin "./baserom/overlay/overlay_0004.bin", 0x554, 0x21d1650 - 0x21d12d4


.thumb
Startpoint_21d1650: @ 21d1650 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r5, r0
	ldr     r0, [pc, #0x74] @ 0x21d16cc, (=#0x221a400)
	mov     r4, r2
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a45fc
	cmp     r0, #0x0
	beq     branch_21d1682
	ldr     r0, [pc, #0x60] @ 0x21d16cc, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a4620
	ldr     r0, [pc, #0x50] @ 0x21d16cc, (=#0x221a400)
	mov     r2, #0x1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x50] @ 0x21d16d0, (=#0x10e6)
	strb    r2, [r1, r0]
.thumb
branch_21d1682: @ 21d1682 :thumb
	cmp     r5, #0x0
	bne     branch_21d16bc
	ldr     r0, [pc, #0x4c] @ 0x21d16d4, (=#0x21d1745)
	str     r4, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r2, [pc, #0x3c] @ 0x21d16cc, (=#0x221a400)
	str     r4, [sp, #0x8]
	ldr     r3, [r2, #0x0]
	mov     r2, #0xf1
	lsl     r2, r2, #4
	ldr     r2, [r3, r2]
	ldr     r1, [pc, #0x3c] @ 0x21d16d8, (=#0x21d171d)
	ldr     r3, [pc, #0x40] @ 0x21d16dc, (=#0x21d1741)
	mov     r0, #0x0
	blx     Function_21d934c
	cmp     r0, #0x0
	bne     branch_21d16b0
	mov     r0, #0x1
	bl      Function_2038ae0
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d16b0

.thumb
branch_21d16b0: @ 21d16b0 :thumb
	ldr     r0, [pc, #0x2c] @ 0x21d16e0, (=#0x21d17a1)
	mov     r1, #0x0
	blx     Function_21db3dc
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d16bc

.thumb
branch_21d16bc: @ 21d16bc :thumb
	ldr     r0, [pc, #0xc] @ 0x21d16cc, (=#0x221a400)
	mov     r2, #0xc
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d16e4, (=#0x1070)
	str     r2, [r1, r0]
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d16ca


.incbin "./baserom/overlay/overlay_0004.bin", 0x94a, 0x21d16cc - 0x21d16ca


.word 0x221a400 @ 0x21d16cc
.word 0x10e6 @ 0x21d16d0
.word 0x21d1745 @ 0x21d16d4
.word 0x21d171d @ 0x21d16d8
.word 0x21d1741 @ 0x21d16dc
.word 0x21d17a1 @ 0x21d16e0
.word 0x1070 @ 0x21d16e4
.thumb
Startpoint_21d16e8: @ 21d16e8 :thumb
	push    {r3,lr}
	ldr     r0, [pc, #0x24] @ 0x21d1710, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d1714, (=#0x10a8)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_21d170e
	blx     Function_21d9750
	ldr     r1, [pc, #0x14] @ 0x21d1710, (=#0x221a400)
	mov     r3, #0x0
	ldr     r2, [r1, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d1718, (=#0x1098)
	mvn     r3, r3
	str     r3, [r2, r0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x12
	sub     r0, #0x28
	str     r2, [r1, r0]
.thumb
branch_21d170e: @ 21d170e :thumb
	pop     {r3,pc}
@ 0x21d1710

.word 0x221a400 @ 0x21d1710
.word 0x10a8 @ 0x21d1714
.word 0x1098 @ 0x21d1718
.thumb
Startpoint_21d171c: @ 21d171c :thumb
	cmp     r0, #0x0
	bne     branch_21d172c
	ldr     r0, [pc, #0x14] @ 0x21d1738, (=#0x221a400)
	mov     r2, #0x4
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d173c, (=#0x1070)
	str     r2, [r1, r0]
	bx      lr
@ 0x21d172c

.thumb
branch_21d172c: @ 21d172c :thumb
	ldr     r0, [pc, #0x8] @ 0x21d1738, (=#0x221a400)
	mov     r2, #0xc
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d173c, (=#0x1070)
	str     r2, [r1, r0]
	bx      lr
@ 0x21d1738

.word 0x221a400 @ 0x21d1738
.word 0x1070 @ 0x21d173c
.thumb
Startpoint_21d1740: @ 21d1740 :thumb
	bx      lr
@ 0x21d1742


.align 2, 0


.thumb
Startpoint_21d1744: @ 21d1744 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [pc, #0x4c] @ 0x21d1798, (=#0x221a400)
	mov     r4, r1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x4c] @ 0x21d179c, (=#0xf78)
	ldr     r0, [r1, r0]
	bl      Function_202b370
	mov     r1, #0x0
	bl      Function_202aed8
	mov     r1, r0
	ldr     r0, [pc, #0x38] @ 0x21d1798, (=#0x221a400)
	mov     r2, #0x1
	ldr     r0, [r0, #0x0]
	lsl     r2, r2, #8
	ldr     r0, [r0, r2]
	add     r2, #0x80
	blx     Function_20c4db0
	ldr     r0, [pc, #0x28] @ 0x21d1798, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x28] @ 0x21d179c, (=#0xf78)
	ldr     r0, [r1, r0]
	bl      Function_202b370
	mov     r1, r5
	mov     r2, r4
	bl      Function_202b270
	ldr     r0, [pc, #0x14] @ 0x21d1798, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d179c, (=#0xf78)
	ldr     r0, [r1, r0]
	bl      Function_203068c
	mov     r1, r5
	mov     r2, r4
	bl      Function_20307f0
	pop     {r3-r5,pc}
@ 0x21d1798

.word 0x221a400 @ 0x21d1798
.word 0xf78 @ 0x21d179c
.thumb
Startpoint_21d17a0: @ 21d17a0 :thumb
	bx      lr
@ 0x21d17a2


.align 2, 0


.thumb
Function_21d17a4: @ 21d17a4 :thumb
	ldr     r0, [pc, #0xc] @ 0x21d17b4, (=#0x221a400)
	ldr     r3, [pc, #0x10] @ 0x21d17b8, (=#Function_20c4cf4)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x10] @ 0x21d17bc, (=#0x10ac)
	mov     r2, #0x20
	add     r0, r1, r0
	mov     r1, #0x0
	bx      r3
@ 0x21d17b4

.word 0x221a400 @ 0x21d17b4
.word Function_20c4cf4 @ 0x21d17b8
.word 0x10ac @ 0x21d17bc



.thumb
Function_21d17c0: @ 21d17c0 :thumb
	push    {r3-r7,lr}
	mov     r5, #0x0
	mov     r4, r5
.thumb
branch_21d17c6: @ 21d17c6 :thumb
	lsl     r0, r5, #24
	lsr     r0, r0, #24
	mov     r1, r4
	blx     Function_21e4e60
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x4
	blt     branch_21d17c6
	blx     Function_21d9968
	cmp     r0, #0x0
	bne     branch_21d1822
	ldr     r6, [pc, #0x64] @ 0x21d1844, (=#0x221a400)
	ldr     r0, [pc, #0x64] @ 0x21d1848, (=#0x107c)
	ldr     r1, [r6, #0x0]
	mov     r5, #0x0
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	ble     branch_21d1832
	ldr     r7, [pc, #0x58] @ 0x21d1848, (=#0x107c)
	mov     r4, #0x1
.thumb
branch_21d17f0: @ 21d17f0 :thumb
	blx     Function_21d9968
	cmp     r5, r0
	beq     branch_21d1816
	blx     Function_21d99d4
	mov     r1, r4
	lsl     r1, r5
	tst     r0, r1
	beq     branch_21d1816
	lsl     r0, r5, #24
	ldr     r1, [pc, #0x44] @ 0x21d184c, (=#0x2710)
	lsr     r0, r0, #24
	blx     Function_21e4e60
	cmp     r0, #0x0
	bne     branch_21d1816
	bl      Function_2022974
.thumb
branch_21d1816: @ 21d1816 :thumb
	ldr     r0, [r6, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r0, [r0, r7]
	cmp     r5, r0
	blt     branch_21d17f0
	b       branch_21d1832
@ 0x21d1822

.thumb
branch_21d1822: @ 21d1822 :thumb
	ldr     r1, [pc, #0x28] @ 0x21d184c, (=#0x2710)
	mov     r0, #0x0
	blx     Function_21e4e60
	cmp     r0, #0x0
	bne     branch_21d1832
	bl      Function_2022974
.thumb
branch_21d1832: @ 21d1832 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d1844, (=#0x221a400)
	mov     r2, #0x1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d1850, (=#0x10a8)
	str     r2, [r1, r0]
	bl      Function_21d17a4
	pop     {r3-r7,pc}
@ 0x21d1842


.incbin "./baserom/overlay/overlay_0004.bin", 0xac2, 0x21d1844 - 0x21d1842


.word 0x221a400 @ 0x21d1844
.word 0x107c @ 0x21d1848
.word 0x2710 @ 0x21d184c
.word 0x10a8 @ 0x21d1850
.thumb
Function_21d1854: @ 21d1854 :thumb
	push    {r4-r6,lr}
	ldr     r4, [pc, #0x34] @ 0x21d188c, (=#0x221a400)
	ldr     r0, [pc, #0x34] @ 0x21d1890, (=#0x1070)
	ldr     r1, [r4, #0x0]
	mov     r2, #0x7
	str     r2, [r1, r0]
	ldr     r1, [r4, #0x0]
	add     r0, #0xc
	ldr     r0, [r1, r0]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_21d1886
	ldr     r6, [pc, #0x24] @ 0x21d1894, (=#0x107c)
.thumb
branch_21d186e: @ 21d186e :thumb
	blx     Function_21d9968
	cmp     r5, r0
	beq     branch_21d187c
	mov     r0, r5
	bl      Function_21d2748
.thumb
branch_21d187c: @ 21d187c :thumb
	ldr     r0, [r4, #0x0]
	.hword  0x1c6d @ add r5, r5, #0x1
	ldr     r0, [r0, r6]
	cmp     r5, r0
	blt     branch_21d186e
.thumb
branch_21d1886: @ 21d1886 :thumb
	bl      Function_21d17c0
	pop     {r4-r6,pc}
@ 0x21d188c

.word 0x221a400 @ 0x21d188c
.word 0x1070 @ 0x21d1890
.word 0x107c @ 0x21d1894
.thumb
Startpoint_21d1898: @ 21d1898 :thumb
	push    {r4,lr}
	cmp     r0, #0x0
	bne     branch_21d18b6
	cmp     r1, #0x0
	bne     branch_21d18b0
	blx     Function_21d9968
	mov     r1, #0x1
	sub     r0, r1, r0
	bl      Function_21d1854
	b       branch_21d18c0
@ 0x21d18b0

.thumb
branch_21d18b0: @ 21d18b0 :thumb
	bl      Function_21d12b4
	b       branch_21d18c0
@ 0x21d18b6

.thumb
branch_21d18b6: @ 21d18b6 :thumb
	ldr     r0, [pc, #0x28] @ 0x21d18e0, (=#0x221a400)
	mov     r2, #0xc
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d18e4, (=#0x1070)
	str     r2, [r1, r0]
.thumb
branch_21d18c0: @ 21d18c0 :thumb
	ldr     r0, [pc, #0x1c] @ 0x21d18e0, (=#0x221a400)
	ldr     r4, [r0, #0x0]
	ldr     r0, [pc, #0x20] @ 0x21d18e8, (=#0xfb4)
	ldr     r0, [r4, r0]
	cmp     r0, #0x0
	beq     branch_21d18de
	blx     Function_21d9968
	ldr     r3, [pc, #0xc] @ 0x21d18e0, (=#0x221a400)
	ldr     r2, [pc, #0x18] @ 0x21d18ec, (=#0xfb8)
	ldr     r3, [r3, #0x0]
	ldr     r1, [r4, r2]
	.hword  0x1f12 @ sub r2, r2, #0x4
	ldr     r2, [r3, r2]
	blx     r2
.thumb
branch_21d18de: @ 21d18de :thumb
	pop     {r4,pc}
@ 0x21d18e0

.word 0x221a400 @ 0x21d18e0
.word 0x1070 @ 0x21d18e4
.word 0xfb4 @ 0x21d18e8
.word 0xfb8 @ 0x21d18ec
.thumb
Startpoint_21d18f0: @ 21d18f0 :thumb
	mov     r0, #0x1
	bx      lr
@ 0x21d18f4

.thumb
Startpoint_21d18f4: @ 21d18f4 :thumb
	push    {r3,r4}
	ldr     r2, [pc, #0x18] @ 0x21d1910, (=#0x221a400)
	ldr     r0, [pc, #0x18] @ 0x21d1914, (=#0x1078)
	ldr     r3, [r2, #0x0]
	mov     r4, #0x0
	str     r4, [r3, r0]
	ldr     r2, [r2, #0x0]
	lsl     r1, r1, #2
	add     r1, r2, r1
	add     r0, #0x34
	str     r4, [r1, r0]
	pop     {r3,r4}
	bx      lr
@ 0x21d190e


.incbin "./baserom/overlay/overlay_0004.bin", 0xb8e, 0x21d1910 - 0x21d190e


.word 0x221a400 @ 0x21d1910
.word 0x1078 @ 0x21d1914
.thumb
Function_21d1918: @ 21d1918 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      Function_203895c
	bl      Function_203272c
	cmp     r0, #0x0
	bne     branch_21d1946
	mov     r0, #0x1
	lsl     r0, r0, #8
	tst     r0, r4
	beq     branch_21d193c
	ldr     r0, [pc, #0x14] @ 0x21d1948, (=#0x221a400)
	mov     r2, #0x1
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x14] @ 0x21d194c, (=#0x10d0)
	str     r2, [r1, r0]
	pop     {r4,pc}
@ 0x21d193c

.thumb
branch_21d193c: @ 21d193c :thumb
	ldr     r0, [pc, #0x8] @ 0x21d1948, (=#0x221a400)
	mov     r2, #0x0
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x8] @ 0x21d194c, (=#0x10d0)
	str     r2, [r1, r0]
.thumb
branch_21d1946: @ 21d1946 :thumb
	pop     {r4,pc}
@ 0x21d1948

.word 0x221a400 @ 0x21d1948
.word 0x10d0 @ 0x21d194c
.thumb
Startpoint_21d1950: @ 21d1950 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	str     r0, [sp, #0x0]
	mov     r4, r1
	ldrb    r3, [r4, #0x1]
	ldrb    r6, [r4, #0x0]
	mov     r7, r2
	lsl     r3, r3, #8
	mov     r12, r3
	ldrb    r3, [r4, #0x3]
	lsl     r5, r3, #24
	ldrb    r3, [r4, #0x2]
	lsl     r3, r3, #16
	orr     r3, r5
	mov     r5, r12
	orr     r3, r5
	orr     r3, r6
	str     r3, [sp, #0x4]
	ldr     r3, [pc, #0x98] @ 0x21d1a10, (=#0x221a400)
	ldr     r5, [pc, #0x9c] @ 0x21d1a14, (=#0x10a8)
	ldr     r6, [r3, #0x0]
	mov     r3, #0x1
	str     r3, [r6, r5]
	ldr     r3, [sp, #0x4]
	lsl     r3, r3, #24
	lsr     r3, r3, #24
	cmp     r3, #0x1
	bne     branch_21d199c
	ldr     r0, [sp, #0x4]
	bl      Function_21d1918
	ldr     r0, [pc, #0x80] @ 0x21d1a10, (=#0x221a400)
	ldrb    r2, [r4, #0x2]
	ldr     r1, [r0, #0x0]
	mov     r0, r5
	add     r0, #0x35
	strb    r2, [r1, r0]
	b       branch_21d19ae
@ 0x21d199c

.thumb
branch_21d199c: @ 21d199c :thumb
	bl      Function_21d2c70
	cmp     r0, #0x0
	bne     branch_21d1a0c
	ldr     r0, [sp, #0x4]
	bl      Function_21d1918
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d19ae

.thumb
branch_21d19ae: @ 21d19ae :thumb
	sub     r6, r7, #0x4
	mov     r0, #0x0
	mov     r1, r6
	mov     r2, #0x4
	bl      Function_21d1aa0
	mov     r5, r0
	beq     branch_21d1a0c
	add     r0, r4, #0x4
	mov     r1, r5
	mov     r2, r6
	blx     Function_20c4db0
	blx     Function_21d9968
	cmp     r0, #0x0
	bne     branch_21d19ea
	ldr     r0, [pc, #0x3c] @ 0x21d1a10, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x40] @ 0x21d1a18, (=#0xfa4)
	ldr     r3, [r1, r0]
	cmp     r3, #0x0
	beq     branch_21d1a02
	mov     r2, r6
	lsl     r2, r2, #16
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	lsr     r2, r2, #16
	blx     r3
	b       branch_21d1a02
@ 0x21d19ea

.thumb
branch_21d19ea: @ 21d19ea :thumb
	ldr     r0, [pc, #0x24] @ 0x21d1a10, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d1a1c, (=#0xfa8)
	ldr     r3, [r1, r0]
	cmp     r3, #0x0
	beq     branch_21d1a02
	mov     r2, r6
	lsl     r2, r2, #16
	ldr     r0, [sp, #0x0]
	mov     r1, r5
	lsr     r2, r2, #16
	blx     r3
.thumb
branch_21d1a02: @ 21d1a02 :thumb
	mov     r0, #0x0
	mov     r1, r5
	mov     r2, r6
	bl      Function_21d1b04
.thumb
branch_21d1a0c: @ 21d1a0c :thumb
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d1a10

.word 0x221a400 @ 0x21d1a10
.word 0x10a8 @ 0x21d1a14
.word 0xfa4 @ 0x21d1a18
.word 0xfa8 @ 0x21d1a1c
.thumb
Startpoint_21d1a20: @ 21d1a20 :thumb
	push    {r4-r6,lr}
	ldr     r5, [pc, #0x68] @ 0x21d1a8c, (=#0x221a400)
	mov     r4, r3
	ldr     r3, [r5, #0x0]
	ldr     r2, [pc, #0x64] @ 0x21d1a90, (=#0x1078)
	mov     r1, #0x0
	str     r1, [r3, r2]
	mov     r3, r2
	ldr     r6, [r5, #0x0]
	add     r3, #0x54
	str     r1, [r6, r3]
	mov     r3, r2
	add     r3, #0x28
	ldr     r6, [r5, #0x0]
	cmp     r0, #0x0
	str     r1, [r6, r3]
	bne     branch_21d1a74
	ldr     r0, [r5, #0x0]
	add     r2, #0x6d
	ldrb    r0, [r0, r2]
	cmp     r0, #0x1
	bne     branch_21d1a74
	blx     Function_21d9920
	cmp     r0, #0x1
	bne     branch_21d1a74
	mov     r0, r5
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x38] @ 0x21d1a94, (=#0x1070)
	ldr     r1, [r2, r0]
	cmp     r1, #0x6
	beq     branch_21d1a64
	mov     r1, #0x10
	str     r1, [r2, r0]
.thumb
branch_21d1a64: @ 21d1a64 :thumb
	ldr     r0, [pc, #0x24] @ 0x21d1a8c, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x2c] @ 0x21d1a98, (=#0x1090)
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_21d1a74
	bl      Function_21d1f18
.thumb
branch_21d1a74: @ 21d1a74 :thumb
	ldr     r0, [pc, #0x14] @ 0x21d1a8c, (=#0x221a400)
	ldr     r1, [pc, #0x24] @ 0x21d1a9c, (=#0xfac)
	ldr     r3, [r0, #0x0]
	ldr     r2, [r3, r1]
	cmp     r2, #0x0
	beq     branch_21d1a88
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r1, [r3, r1]
	mov     r0, r4
	blx     r2
.thumb
branch_21d1a88: @ 21d1a88 :thumb
	pop     {r4-r6,pc}
@ 0x21d1a8a


.incbin "./baserom/overlay/overlay_0004.bin", 0xd0a, 0x21d1a8c - 0x21d1a8a


.word 0x221a400 @ 0x21d1a8c
.word 0x1078 @ 0x21d1a90
.word 0x1070 @ 0x21d1a94
.word 0x1090 @ 0x21d1a98
.word 0xfac @ 0x21d1a9c
.thumb
Function_21d1aa0: @ 21d1aa0 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	mov     r6, r2
	blx     Function_20c3d98
	mov     r7, r0
	ldr     r0, [pc, #0x48] @ 0x21d1af8, (=#0x221a400)
	mov     r2, r6
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x48] @ 0x21d1afc, (=#0xf94)
	ldr     r0, [r1, r0]
	mov     r1, r5
	blx     Function_20a5448
	mov     r4, r0
	bne     branch_21d1ada
	ldr     r0, [pc, #0x34] @ 0x21d1af8, (=#0x221a400)
	ldr     r1, [pc, #0x3c] @ 0x21d1b00, (=#0xf98)
	ldr     r0, [r0, #0x0]
	ldr     r2, [r0, r1]
	cmp     r2, #0x0
	beq     branch_21d1ada
	.hword  0x1d09 @ add r1, r1, #0x4
	ldr     r0, [r0, r1]
	mov     r1, r5
	mov     r2, r6
	blx     Function_20a5448
	mov     r4, r0
.thumb
branch_21d1ada: @ 21d1ada :thumb
	cmp     r4, #0x0
	bne     branch_21d1aee
	mov     r0, #0x1
	bl      Function_2038ae0
	mov     r0, r7
	blx     Function_20c3dac
	mov     r0, #0x0
	pop     {r3-r7,pc}
@ 0x21d1aee

.thumb
branch_21d1aee: @ 21d1aee :thumb
	mov     r0, r7
	blx     Function_20c3dac
	mov     r0, r4
	pop     {r3-r7,pc}
@ 0x21d1af8

.word 0x221a400 @ 0x21d1af8
.word 0xf94 @ 0x21d1afc
.word 0xf98 @ 0x21d1b00
.thumb
Function_21d1b04: @ 21d1b04 :thumb
	push    {r3-r5,lr}
	mov     r5, r1
	beq     branch_21d1b4e
	blx     Function_20c3d98
	mov     r4, r0
	mov     r0, r5
	blx     Function_20a5654
	cmp     r0, #0x10
	bne     branch_21d1b3a
	ldr     r0, [pc, #0x34] @ 0x21d1b50, (=#0x221a400)
	ldr     r2, [r0, #0x0]
	ldr     r0, [pc, #0x34] @ 0x21d1b54, (=#0xf98)
	ldr     r1, [r2, r0]
	cmp     r1, #0x0
	bne     branch_21d1b2e
	mov     r0, #0x1
	bl      Function_2038ae0
	pop     {r3-r5,pc}
@ 0x21d1b2e

.thumb
branch_21d1b2e: @ 21d1b2e :thumb
	.hword  0x1d00 @ add r0, r0, #0x4
	ldr     r0, [r2, r0]
	mov     r1, r5
	blx     Function_20a55d8
	b       branch_21d1b48
@ 0x21d1b3a

.thumb
branch_21d1b3a: @ 21d1b3a :thumb
	ldr     r0, [pc, #0x14] @ 0x21d1b50, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x18] @ 0x21d1b58, (=#0xf94)
	ldr     r0, [r1, r0]
	mov     r1, r5
	blx     Function_20a55d8
.thumb
branch_21d1b48: @ 21d1b48 :thumb
	mov     r0, r4
	blx     Function_20c3dac
.thumb
branch_21d1b4e: @ 21d1b4e :thumb
	pop     {r3-r5,pc}
@ 0x21d1b50

.word 0x221a400 @ 0x21d1b50
.word 0xf98 @ 0x21d1b54
.word 0xf94 @ 0x21d1b58
.thumb
Function_21d1b5c: @ 21d1b5c :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	add     r0, sp, #0x4
	add     r1, sp, #0x0
	mov     r4, #0x0
	blx     Function_21d75f4
	mov     r5, r0
	beq     branch_21d1c2e
	ldr     r4, [sp, #0x4]
	cmp     r4, #0x0
	beq     branch_21d1b7a
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x1
	bne     branch_21d1b7c
.thumb
branch_21d1b7a: @ 21d1b7a :thumb
	mov     r4, r5
.thumb
branch_21d1b7c: @ 21d1b7c :thumb
	ldr     r0, [sp, #0x0]
	cmp     r0, #0x7
	bhi     branch_21d1c2e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
	lsl     r6, r3, #2
	lsl     r6, r1, #0
	lsl     r4, r2, #0
	lsl     r2, r3, #0
	lsl     r2, r3, #0
	lsl     r2, r3, #0
	lsl     r2, r3, #0
	lsl     r0, r0, #2
	blx     Function_21d76e8
	b       branch_21d1c2e
@ 0x21d1ba4


.incbin "./baserom/overlay/overlay_0004.bin", 0xe24, 0x21d1c2e - 0x21d1ba4


.thumb
branch_21d1c2e: @ 21d1c2e :thumb
	ldr     r0, [pc, #0x20] @ 0x21d1c50, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	ldr     r0, [pc, #0x24] @ 0x21d1c58, (=#0x10de)
	ldrb    r0, [r1, r0]
	cmp     r0, #0x0
	beq     branch_21d1c3c
	mov     r4, #0x1a
.thumb
branch_21d1c3c: @ 21d1c3c :thumb
	cmp     r5, #0x0
	beq     branch_21d1c4a
	ldr     r0, [sp, #0x4]
	ldr     r1, [sp, #0x0]
	mov     r2, r5
	bl      Function_2037f94
.thumb
branch_21d1c4a: @ 21d1c4a :thumb
	mov     r0, r4
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1c50

.word 0x221a400 @ 0x21d1c50

.incbin "./baserom/overlay/overlay_0004.bin", 0xed4, 0x21d1c58 - 0x21d1c54


.word 0x10de @ 0x21d1c58

.incbin "./baserom/overlay/overlay_0004.bin", 0xedc, 0x21d1f18 - 0x21d1c5c


.thumb
Function_21d1f18: @ 21d1f18 :thumb
	push    {r3,lr}
	bl      Function_21d2f08
	ldr     r1, [pc, #0x14] @ 0x21d1f34, (=#0x221a400)
	ldr     r3, [r1, #0x0]
	cmp     r3, #0x0
	beq     branch_21d1f32
	ldr     r0, [pc, #0x10] @ 0x21d1f38, (=#0x1090)
	mov     r2, #0x0
	str     r2, [r3, r0]
	ldr     r1, [r1, #0x0]
	sub     r0, #0x10
	str     r2, [r1, r0]
.thumb
branch_21d1f32: @ 21d1f32 :thumb
	pop     {r3,pc}
@ 0x21d1f34

.word 0x221a400 @ 0x21d1f34
.word 0x1090 @ 0x21d1f38

.incbin "./baserom/overlay/overlay_0004.bin", 0x11bc, 0x21d24d8 - 0x21d1f3c


.thumb
Function_21d24d8: @ 21d24d8 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x18
	ldr     r0, [pc, #0x60] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	blx     Function_20a450c
	cmp     r0, #0x0
	bne     branch_21d2500
	ldr     r0, [pc, #0x50] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, sp, #0xc
	blx     Function_20a4788
	b       branch_21d2510

branch_21d2500: @ 21d2500 :thumb
	ldr     r0, [pc, #0x3c] @ 0x21d2540, (=#0x221a400)
	ldr     r1, [r0, #0x0]
	mov     r0, #0xf1
	lsl     r0, r0, #4
	ldr     r0, [r1, r0]
	add     r1, sp, #0x0
	blx     Function_20a4788
branch_21d2510: @ 21d2510 :thumb
	mov     r4, #0x0
	mov     r7, #0x1
	ldr     r6, [pc, #0x28] @ 0x21d2540, (=#0x221a400)
	mov     r5, r4
	lsl     r7, r7, #8
branch_21d251a: @ 21d251a :thumb
	mov     r0, #0x1
	ldr     r1, [r6, #0x0]
	lsl     r0, r0, #8
	ldr     r0, [r1, r0]
	add     r0, r0, r5
	blx     Function_20a4060
	ldr     r0, [r6, #0x0]
	ldr     r0, [r0, r7]
	add     r0, r0, r5
	blx     Function_20a4028
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x20
	blt     branch_21d251a
	add     sp, #0x18
	pop     {r3-r7,pc}
@ 0x21d253e


.incbin "./baserom/overlay/overlay_0004.bin", 0x17be, 0x21d2540 - 0x21d253e

.word 0x221a400 @ 0x21d2540
@ 0x21d2544


.incbin "./baserom/overlay/overlay_0004.bin", 0x17c4, 0x21d2700 - 0x21d2544


.thumb
Function_21d2700: @ 21d2700 :thumb
	push    {r4,lr}
	ldr     r1, [pc, #0x3c] @ 0x21d2740, (=#0x221a400)
	lsl     r4, r0, #2
	ldr     r3, [r1, #0x0]
	mov     r1, #0x3e
	add     r2, r3, r4
	lsl     r1, r1, #6
	ldr     r1, [r2, r1]
	cmp     r1, #0x0
	beq     branch_21d273c
	add     r2, r3, r0
	ldr     r0, [pc, #0x2c] @ 0x21d2744, (=#0x10e1)
	ldrb    r0, [r2, r0]
	cmp     r0, #0x1
	bne     branch_21d2726
	mov     r0, r1
	bl      Function_20181c4
	b       branch_21d272e
@ 0x21d2726

.thumb
branch_21d2726: @ 21d2726 :thumb
	mov     r0, #0x0
	mov     r2, r0
	bl      Function_21d1b04
.thumb
branch_21d272e: @ 21d272e :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2740, (=#0x221a400)
	mov     r2, #0x0
	ldr     r0, [r0, #0x0]
	add     r1, r0, r4
	mov     r0, #0x3e
	lsl     r0, r0, #6
	str     r2, [r1, r0]
.thumb
branch_21d273c: @ 21d273c :thumb
	pop     {r4,pc}
@ 0x21d273e


.incbin "./baserom/overlay/overlay_0004.bin", 0x19be, 0x21d2740 - 0x21d273e


.word 0x221a400 @ 0x21d2740
.word 0x10e1 @ 0x21d2744
.thumb
Function_21d2748: @ 21d2748 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	bl      Function_21d2700
	ldr     r0, [pc, #0x6c] @ 0x21d27c0, (=#0x221a400)
	lsl     r4, r5, #2
	ldr     r2, [r0, #0x0]
	mov     r0, #0x3e
	add     r1, r2, r4
	lsl     r0, r0, #6
	ldr     r0, [r1, r0]
	cmp     r0, #0x0
	bne     branch_21d27bc
	ldr     r1, [pc, #0x60] @ 0x21d27c4, (=#0x1088)
	ldr     r0, [r2, r1]
	cmp     r0, #0xb
	bne     branch_21d2780
	sub     r1, #0x68
	bl      Function_2018144
	ldr     r2, [pc, #0x4c] @ 0x21d27c0, (=#0x221a400)
	ldr     r1, [r2, #0x0]
	add     r3, r1, r4
	mov     r1, #0x3e
	lsl     r1, r1, #6
	str     r0, [r3, r1]
	mov     r3, #0x1
	b       branch_21d2798
@ 0x21d2780

.thumb
branch_21d2780: @ 21d2780 :thumb
	mov     r0, #0x0
	sub     r1, #0x88
	mov     r2, #0x20
	bl      Function_21d1aa0
	ldr     r2, [pc, #0x34] @ 0x21d27c0, (=#0x221a400)
	ldr     r1, [r2, #0x0]
	add     r3, r1, r4
	mov     r1, #0x3e
	lsl     r1, r1, #6
	str     r0, [r3, r1]
	mov     r3, #0x0
.thumb
branch_21d2798: @ 21d2798 :thumb
	ldr     r0, [r2, #0x0]
	mov     r2, #0x3e
	add     r1, r0, r5
	ldr     r0, [pc, #0x28] @ 0x21d27c8, (=#0x10e1)
	lsl     r2, r2, #6
	strb    r3, [r1, r0]
	ldr     r1, [pc, #0x18] @ 0x21d27c0, (=#0x221a400)
	lsl     r0, r5, #24
	ldr     r1, [r1, #0x0]
	mov     r3, #0x1f
	add     r1, r1, r4
	ldr     r1, [r1, r2]
	lsr     r0, r0, #24
	add     r1, #0x1f
	bic     r1, r3
	add     r2, #0x80
	blx     Function_21e4d28
.thumb
branch_21d27bc: @ 21d27bc :thumb
	pop     {r3-r5,pc}
@ 0x21d27be


.incbin "./baserom/overlay/overlay_0004.bin", 0x1a3e, 0x21d27c0 - 0x21d27be


.word 0x221a400 @ 0x21d27c0
.word 0x1088 @ 0x21d27c4
.word 0x10e1 @ 0x21d27c8
.thumb
Function_21d27cc: @ 21d27cc :thumb
	push    {r4,lr}
	mov     r4, #0x0
.thumb
branch_21d27d0: @ 21d27d0 :thumb
	mov     r0, r4
	bl      Function_21d2700
	.hword  0x1c64 @ add r4, r4, #0x1
	cmp     r4, #0x4
	blt     branch_21d27d0
	pop     {r4,pc}
@ 0x21d27de


.incbin "./baserom/overlay/overlay_0004.bin", 0x1a5e, 0x21d2c70 - 0x21d27de


.thumb
Function_21d2c70: @ 21d2c70 :thumb
	push    {r3,lr}
	ldr     r3, [pc, #0x20] @ 0x21d2c94, (=#0x221a404)
	ldr     r3, [r3, #0x4]
	cmp     r3, #0x0
	bne     branch_21d2c7e
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2c7e

.thumb
branch_21d2c7e: @ 21d2c7e :thumb
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	blx     Function_2205b2c
	cmp     r0, #0x0
	beq     branch_21d2c8e
	mov     r0, #0x1
	pop     {r3,pc}
@ 0x21d2c8e

.thumb
branch_21d2c8e: @ 21d2c8e :thumb
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2c92


.incbin "./baserom/overlay/overlay_0004.bin", 0x1f12, 0x21d2c94 - 0x21d2c92


.word 0x221a404 @ 0x21d2c94

.incbin "./baserom/overlay/overlay_0004.bin", 0x1f18, 0x21d2f08 - 0x21d2c98


.thumb
Function_21d2f08: @ 21d2f08 :thumb
	push    {r4,lr}
	ldr     r0, [pc, #0x5c] @ 0x21d2f68, (=#0x221a404)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_21d2f64
	ldr     r0, [pc, #0x58] @ 0x21d2f6c, (=#0x198c)
	ldr     r4, [r1, r0]
	blx     Function_20ca920
	ldr     r0, [pc, #0x4c] @ 0x21d2f68, (=#0x221a404)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x50] @ 0x21d2f70, (=#0x19f8)
	add     r0, r1, r0
	blx     Function_20b8c28
	ldr     r0, [pc, #0x40] @ 0x21d2f68, (=#0x221a404)
	ldr     r1, [r0, #0x4]
	ldr     r0, [pc, #0x44] @ 0x21d2f70, (=#0x19f8)
	add     r0, r1, r0
	blx     Function_20b8a0c
	blx     Function_2205ac0
	ldr     r0, [pc, #0x30] @ 0x21d2f68, (=#0x221a404)
	ldr     r1, [pc, #0x38] @ 0x21d2f74, (=#0x888)
	ldr     r2, [r0, #0x4]
	ldr     r0, [pc, #0x38] @ 0x21d2f78, (=#0x19f4)
	ldr     r1, [r2, r1]
	ldr     r0, [r2, r0]
	bl      Function_2018238
	ldr     r0, [pc, #0x20] @ 0x21d2f68, (=#0x221a404)
	mov     r1, #0x22
	ldr     r2, [r0, #0x4]
	ldr     r0, [pc, #0x28] @ 0x21d2f78, (=#0x19f4)
	lsl     r1, r1, #6
	ldr     r0, [r2, r0]
	ldr     r1, [r2, r1]
	bl      Function_2018238
	mov     r1, #0x0
	ldr     r0, [pc, #0xc] @ 0x21d2f68, (=#0x221a404)
	cmp     r4, #0x0
	str     r1, [r0, #0x4]
	beq     branch_21d2f64
	blx     r4
.thumb
branch_21d2f64: @ 21d2f64 :thumb
	pop     {r4,pc}
@ 0x21d2f66


.incbin "./baserom/overlay/overlay_0004.bin", 0x21e6, 0x21d2f68 - 0x21d2f66


.word 0x221a404 @ 0x21d2f68
.word 0x198c @ 0x21d2f6c
.word 0x19f8 @ 0x21d2f70
.word 0x888 @ 0x21d2f74
.word 0x19f4 @ 0x21d2f78

.incbin "./baserom/overlay/overlay_0004.bin", 0x21fc, 0x21d3038 - 0x21d2f7c


.arm
Function_21d3038: @ 21d3038 :arm
	ldr     r1,  [pc, #0x4] @ [0x21d3044] (=#0x2215ea0)
	str     r0, [r1]
	bx      lr
@ 0x21d3044

.word 0x2215ea0 @ 0x21d3044

.incbin "./baserom/overlay/overlay_0004.bin", 0x22c8, 0x21d3220 - 0x21d3048


.arm
Function_21d3220: @ 21d3220 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x7c] @ [0x21d32a8] (=#0x221a414)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	add     r0, r0, #246, 30 @ #0x3d8
	add     r0, r0, #1, 20 @ #0x1000
	bl      Function_20c29d8
	ldr     r1,  [pc, #0x60] @ [0x21d32a8] (=#0x221a414)
	mov     r2, #0x1
	ldr     r0, [r1, #0x8]
	add     r0, r0, #1, 20 @ #0x1000
	str     r2, [r0, #0x3f0]
	ldr     r0, [r1, #0x8]
	add     r0, r0, #246, 30 @ #0x3d8
	add     r0, r0, #1, 20 @ #0x1000
	bl      Function_20c2a5c
	ldr     r0,  [pc, #0x3c] @ [0x21d32a8] (=#0x221a414)
	ldr     r0, [r0, #0x8]
	add     r0, r0, #1, 20 @ #0x1000
	ldr     r0, [r0, #0x314]
	cmp     r0, #0x0
	beq     branch_21d3280
	bl      Function_21d46e8
.arm
branch_21d3280: @ 21d3280 :arm
	ldr     r0,  [pc, #0x20] @ [0x21d32a8] (=#0x221a414)
	ldr     r1, [r0, #0x8]
	add     r0, r1, #1, 20 @ #0x1000
	ldr     r0, [r0, #0x384]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	add     r0, r1, #198, 30 @ #0x318
	add     r0, r0, #1, 20 @ #0x1000
	bl      Function_20c21d4
	ldmfd   sp!, {r3,pc}
@ 0x21d32a8

.word 0x221a414 @ 0x21d32a8
.arm
Function_21d32ac: @ 21d32ac :arm
	stmfd   sp!, {r4,lr}
	ldr     r0,  [pc, #0x44] @ [0x21d32fc] (=#0x221a414)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	add     r1, r0, #1, 20 @ #0x1000
	ldr     r0, [r1, #0x314]
	ldr     r4, [r1, #0x210]
	cmp     r0, #0x0
	beq     branch_21d32d8
	bl      Function_21d4c2c
.arm
branch_21d32d8: @ 21d32d8 :arm
	ldr     r1,  [pc, #0x1c] @ [0x21d32fc] (=#0x221a414)
	ldr     r0,  [pc, #0x1c] @ [0x21d3300] (=#0x2215ef4)
	ldr     r1, [r1, #0x8]
	mov     r2, #0x0
	blx     r4
	ldr     r0,  [pc, #0x8] @ [0x21d32fc] (=#0x221a414)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r4,pc}
@ 0x21d32fc

.word 0x221a414 @ 0x21d32fc
.word 0x2215ef4 @ 0x21d3300

.incbin "./baserom/overlay/overlay_0004.bin", 0x2584, 0x21d46e8 - 0x21d3304


.arm
Function_21d46e8: @ 21d46e8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x1000
	ldrb    r0, [r0]
	cmp     r0, #0xff
	ldmnefd sp!, {r4,pc}
	add     r0, r4, #254, 30 @ #0x3f8
	add     r0, r0, #0x1800
	bl      Function_20c29d8
	add     r0, r4, #254, 30 @ #0x3f8
	add     r1, r4, #0x1000
	mov     r2, #0x1
	add     r0, r0, #0x1800
	str     r2, [r1, #0xc10]
	bl      Function_20c2a5c
	add     r0, r4, #0x1000
	ldr     r0, [r0, #0xba4]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	add     r0, r4, #0x338
	add     r0, r0, #0x1800
	bl      Function_20c21d4
	ldmfd   sp!, {r4,pc}
@ 0x21d4744


.incbin "./baserom/overlay/overlay_0004.bin", 0x39c4, 0x21d4c2c - 0x21d4744


.arm
Function_21d4c2c: @ 21d4c2c :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	add     r1, r5, #1, 20 @ #0x1000
	ldr     r4, [r1, #0x14]
	ldmeqfd sp!, {r3-r5,pc}
	add     r1, r5, #142, 30 @ #0x238
	add     r1, r1, #6, 22 @ #0x1800
	mov     r2, #0x20
	bl      Function_21d5790
	add     r1, r5, #130, 30 @ #0x208
	mov     r0, r5
	add     r1, r1, #6, 22 @ #0x1800
	bl      Function_21d5074
	add     r1, r5, #126, 30 @ #0x1f8
	mov     r0, r5
	add     r1, r1, #6, 22 @ #0x1800
	bl      Function_21d5074
	add     r0, r5, #1, 20 @ #0x1000
	ldr     r1, [r0, #0x9cc]
	cmp     r1, #0x0
	beq     branch_21d4c98
	ldr     r0,  [pc, #0x4c] @ [0x21d4cd4] (=#0x2216178)
	mov     r2, #0x0
	blx     r4
	add     r0, r5, #1, 20 @ #0x1000
	mov     r1, #0x0
	str     r1, [r0, #0x9cc]
.arm
branch_21d4c98: @ 21d4c98 :arm
	add     r0, r5, #1, 20 @ #0x1000
	ldr     r1, [r0, #0x9d0]
	cmp     r1, #0x0
	beq     branch_21d4cc0
	ldr     r0,  [pc, #0x28] @ [0x21d4cd8] (=#0x2216190)
	mov     r2, #0x0
	blx     r4
	add     r0, r5, #1, 20 @ #0x1000
	mov     r1, #0x0
	str     r1, [r0, #0x9d0]
.arm
branch_21d4cc0: @ 21d4cc0 :arm
	ldr     r2,  [pc, #0x14] @ [0x21d4cdc] (=#0x1c14)
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_20c4cf4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21d4cd4

.word 0x2216178 @ 0x21d4cd4
.word 0x2216190 @ 0x21d4cd8
.word 0x1c14 @ 0x21d4cdc

.incbin "./baserom/overlay/overlay_0004.bin", 0x3f60, 0x21d5074 - 0x21d4ce0


.arm
Function_21d5074: @ 21d5074 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	ldr     r1, [r4]
	add     r0, r0, #1, 20 @ #0x1000
	cmp     r1, #0x0
	ldr     r3, [r0, #0x14]
	beq     branch_21d509c
	ldr     r0,  [pc, #0x18] @ [0x21d50b0] (=#0x221624c)
	mov     r2, #0x0
	blx     r3
.arm
branch_21d509c: @ 21d509c :arm
	mov     r0, r4
	mov     r1, #0x0
	mov     r2, #0x10
	bl      Function_20c4cf4
	ldmfd   sp!, {r4,pc}
@ 0x21d50b0

.word 0x221624c @ 0x21d50b0

.incbin "./baserom/overlay/overlay_0004.bin", 0x4334, 0x21d5790 - 0x21d50b4


.arm
Function_21d5790: @ 21d5790 :arm
	stmfd   sp!, {r3-r11,lr}
	add     r0, r0, #1, 20 @ #0x1000
	ldr     r6, [r0, #0x14]
	mov     r9, r2
	mov     r10, r1
	mov     r8, #0x0
	cmp     r9, #0x0
	ldmlefd sp!, {r3-r11,pc}
	ldr     r11,  [pc, #0x58] @ [0x21d5810] (=#0x2216324)
	ldr     r7,  [pc, #0x58] @ [0x21d5814] (=#0x2216340)
	mov     r5, r8
	mov     r4, r8
.arm
branch_21d57c0: @ 21d57c0 :arm
	ldr     r1, [r10, r8, lsl #0x3]
	cmp     r1, #0x0
	beq     branch_21d57dc
	mov     r0, r11
	mov     r2, #0x0
	blx     r6
	str     r5, [r10, r8, lsl #0x3]
.arm
branch_21d57dc: @ 21d57dc :arm
	add     r0, r10, r8, lsl #3
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	beq     branch_21d5800
	mov     r0, r7
	mov     r2, #0x0
	blx     r6
	add     r0, r10, r8, lsl #3
	str     r4, [r0, #0x4]
.arm
branch_21d5800: @ 21d5800 :arm
	add     r8, r8, #0x1
	cmp     r8, r9
	blt     branch_21d57c0
	ldmfd   sp!, {r3-r11,pc}
@ 0x21d5810

.word 0x2216324 @ 0x21d5810
.word 0x2216340 @ 0x21d5814

.incbin "./baserom/overlay/overlay_0004.bin", 0x4a98, 0x21d58f8 - 0x21d5818


.arm
Function_21d58f8: @ 21d58f8 :arm
	stmfd   sp!, {r4,lr}
	ldr     r0,  [pc, #0xd8] @ [0x21d59dc] (=#0x221a438)
	ldr     r1, [r0]
	ldr     r0, [r0, #0x14]
	add     r1, r1, #1, 20 @ #0x1000
	cmp     r0, #0x0
	ldr     r4, [r1, #0x10c]
	beq     branch_21d593c
	bl      Function_21d4c2c
	ldr     r1,  [pc, #0xb8] @ [0x21d59dc] (=#0x221a438)
	ldr     r0,  [pc, #0xb8] @ [0x21d59e0] (=#0x22163a8)
	ldr     r1, [r1, #0x14]
	mov     r2, #0x0
	blx     r4
	ldr     r0,  [pc, #0xa4] @ [0x21d59dc] (=#0x221a438)
	mov     r1, #0x0
	str     r1, [r0, #0x14]
.arm
branch_21d593c: @ 21d593c :arm
	bl      Function_21d32ac
	ldr     r0,  [pc, #0x94] @ [0x21d59dc] (=#0x221a438)
	ldr     r0, [r0]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	add     r0, r0, #1, 20 @ #0x1000
	ldr     r1, [r0, #0x114]
	cmp     r1, #0x0
	beq     branch_21d5980
	ldr     r0,  [pc, #0x7c] @ [0x21d59e4] (=#0x22163b8)
	mov     r2, #0x0
	blx     r4
	ldr     r0,  [pc, #0x68] @ [0x21d59dc] (=#0x221a438)
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, #1, 20 @ #0x1000
	str     r1, [r0, #0x114]
.arm
branch_21d5980: @ 21d5980 :arm
	ldr     r0,  [pc, #0x54] @ [0x21d59dc] (=#0x221a438)
	ldr     r0, [r0]
	add     r0, r0, #1, 20 @ #0x1000
	ldr     r1, [r0, #0x118]
	cmp     r1, #0x0
	beq     branch_21d59b8
	ldr     r0,  [pc, #0x48] @ [0x21d59e8] (=#0x22163d4)
	mov     r2, #0x0
	blx     r4
	ldr     r0,  [pc, #0x30] @ [0x21d59dc] (=#0x221a438)
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, #1, 20 @ #0x1000
	str     r1, [r0, #0x118]
.arm
branch_21d59b8: @ 21d59b8 :arm
	ldr     r1,  [pc, #0x1c] @ [0x21d59dc] (=#0x221a438)
	ldr     r0,  [pc, #0x28] @ [0x21d59ec] (=#0x22163f4)
	ldr     r1, [r1]
	mov     r2, #0x0
	blx     r4
	ldr     r0,  [pc, #0x8] @ [0x21d59dc] (=#0x221a438)
	mov     r1, #0x0
	str     r1, [r0]
	ldmfd   sp!, {r4,pc}
@ 0x21d59dc

.word 0x221a438 @ 0x21d59dc
.word 0x22163a8 @ 0x21d59e0
.word 0x22163b8 @ 0x21d59e4
.word 0x22163d4 @ 0x21d59e8
.word 0x22163f4 @ 0x21d59ec
.arm
Function_21d59f0: @ 21d59f0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x58] @ [0x21d5a54] (=#0x221a438)
	ldr     r1, [r0]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r0, [r0, #0x14]
	cmp     r0, #0x0
	beq     branch_21d5a14
	bl      Function_21d46e8
.arm
branch_21d5a14: @ 21d5a14 :arm
	bl      Function_21d3220
	ldr     r0,  [pc, #0x34] @ [0x21d5a54] (=#0x221a438)
	ldr     r1, [r0]
	add     r0, r1, #1, 20 @ #0x1000
	ldr     r0, [r0, #0x188]
	cmp     r0, #0x0
	beq     branch_21d5a3c
	add     r0, r1, #71, 30 @ #0x11c
	add     r0, r0, #1, 20 @ #0x1000
	bl      Function_20c21d4
.arm
branch_21d5a3c: @ 21d5a3c :arm
	ldr     r0,  [pc, #0x10] @ [0x21d5a54] (=#0x221a438)
	mvn     r1, #0x6
	ldr     r0, [r0]
	add     r0, r0, #1, 20 @ #0x1000
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x21d5a54

.word 0x221a438 @ 0x21d5a54

.incbin "./baserom/overlay/overlay_0004.bin", 0x4cd8, 0x21d75f4 - 0x21d5a58


.arm
Function_21d75f4: @ 21d75f4 :arm
	cmp     r0, #0x0
	ldrne   r2,  [pc, #0xe4] @ [0x21d76e4] (=#0x221a4cc)
	ldrne   r2, [r2, #0x4]
	strne   r2, [r0]
	cmp     r1, #0x0
	beq     branch_21d76d8
	ldr     r0,  [pc, #0xd0] @ [0x21d76e4] (=#0x221a4cc)
	ldr     r0, [r0]
	cmp     r0, #0x13
	addls   pc, pc, r0, lsl #2
	b       branch_21d76d0
@ 0x21d7620


.incbin "./baserom/overlay/overlay_0004.bin", 0x68a0, 0x21d76d0 - 0x21d7620


.arm
branch_21d76d0: @ 21d76d0 :arm
	mov     r0, #0x0
	str     r0, [r1]
.arm
branch_21d76d8: @ 21d76d8 :arm
	ldr     r0,  [pc, #0x4] @ [0x21d76e4] (=#0x221a4cc)
	ldr     r0, [r0]
	bx      lr
@ 0x21d76e4

.word 0x221a4cc @ 0x21d76e4
.arm
Function_21d76e8: @ 21d76e8 :arm
	ldr     r0,  [pc, #0x14] @ [0x21d7704] (=#0x221a4cc)
	ldr     r1, [r0]
	cmp     r1, #0x9
	movne   r1, #0x0
	strne   r1, [r0]
	strne   r1, [r0, #0x4]
	bx      lr
@ 0x21d7704

.word 0x221a4cc @ 0x21d7704
.arm
Function_21d7708: @ 21d7708 :arm
	ldr     r0,  [pc, #0x10] @ [0x21d7720] (=#0x221a4cc)
	ldr     r0, [r0]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	bx      lr
@ 0x21d7720

.word 0x221a4cc @ 0x21d7720
.arm
Function_21d7724: @ 21d7724 :arm
	ldr     r2,  [pc, #0xc] @ [0x21d7738] (=#0x221a4cc)
	ldr     r3, [r2]
	cmp     r3, #0x9
	stmneia r2, {r0,r1}
	bx      lr
@ 0x21d7738

.word 0x221a4cc @ 0x21d7738
.arm
Function_21d773c: @ 21d773c :arm
	sub     r0, r0, #0x20
	bx      lr
@ 0x21d7744


.arm
Function_21d7744: @ 21d7744 :arm
	ldr     r2,  [pc, #0xc] @ [0x21d7758] (=#0x4457434d)
	str     r2, [r0]
	str     r1, [r0, #0x4]
	add     r0, r0, #0x20
	bx      lr
@ 0x21d7758

.word 0x4457434d @ 0x21d7758

.incbin "./baserom/overlay/overlay_0004.bin", 0x69dc, 0x21d776c - 0x21d775c


.arm
Function_21d776c: @ 21d776c :arm
	ldr     r2,  [pc, #0x8] @ [0x21d777c] (=#0x221a4d4)
	str     r0, [r2, #0x4]
	str     r1, [r2]
	bx      lr
@ 0x21d777c

.word 0x221a4d4 @ 0x21d777c



.arm
Function_21d7780: @ 21d7780 :arm
	ldr     r12,  [pc, #0x4] @ [0x21d778c] (=Function_21d7790)
	mov     r2, #0x20
	bx      r12
@ 0x21d778c

.word Function_21d7790 @ 0x21d778c



.arm
Function_21d7790: @ 21d7790 :arm
	stmfd   sp!, {r4,lr}
	ldr     r3,  [pc, #0x24] @ [0x21d77c0] (=#0x221a4d4)
	mov     r4, r1
	ldr     r3, [r3, #0x4]
	add     r1, r4, #0x20
	blx     r3
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r1, r4
	bl      Function_21d7744
	ldmfd   sp!, {r4,pc}
@ 0x21d77c0

.word 0x221a4d4 @ 0x21d77c0


.arm
Function_21d77c4: @ 21d77c4 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	cmp     r1, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, r1
	bl      Function_21d773c
	mov     r1, r0
	ldr     r0,  [pc, #0x14] @ [0x21d77fc] (=#0x221a4d4)
	ldr     r2, [r1, #0x4]
	ldr     r3, [r0]
	mov     r0, r4
	add     r2, r2, #0x20
	blx     r3
	ldmfd   sp!, {r4,pc}
@ 0x21d77fc

.word 0x221a4d4 @ 0x21d77fc

.incbin "./baserom/overlay/overlay_0004.bin", 0x6a80, 0x21d7880 - 0x21d7800


.arm
Function_21d7880: @ 21d7880 :arm
	ldr     r12,  [pc, #0x8] @ [0x21d7890] (=Function_21d7780)
	mov     r1, r0
	mov     r0, #0x5
	bx      r12
@ 0x21d7890

.word Function_21d7780 @ =0x21d7780, 0x21d7890



.arm
Function_21d7894: @ 21d7894 :arm
	ldr     r12,  [pc, #0x10] @ [0x21d78ac] (=#0x21d7800)
	mov     r2, r1
	mov     r1, r0
	mov     r3, r2
	mov     r0, #0x5
	bx      r12
@ 0x21d78ac

.word 0x21d7800 @ 0x21d78ac
.arm
Function_21d78b0: @ 21d78b0 :arm
	ldr     r12,  [pc, #0xc] @ [0x21d78c4] (=Function_21d77c4)
	mov     r1, r0
	mov     r0, #0x5
	mov     r2, #0x0
	bx      r12
@ 0x21d78c4

.word Function_21d77c4 @ =0x21d77c4, 0x21d78c4



.arm
Function_21d78c8: @ 21d78c8 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2,  [pc, #0x54] @ [0x21d7928] (=#0x221a4dc)
	mov     r4, r0
	ldr     r2, [r2, #0x4]
	mov     r6, r1
	mov     r5, r3
	cmp     r2, #0x0
	ldmnefd sp!, {r4-r6,pc}
	mov     r1, #0x0
	mov     r2, #0x64
	bl      Function_20c4cf4
	strh    r6, [r4, #0x8]
	mov     r0, #0x1
	strh    r0, [r4, #0xa]
	strh    r0, [r4, #0x4]
	mov     r0, #0x0
	strh    r0, [r4, #0x6]
	strb    r0, [r4, #0xc]
	ldr     r1,  [pc, #0x10] @ [0x21d7928] (=#0x221a4dc)
	str     r0, [r4, #0x10]
	mov     r0, r5
	str     r4, [r1, #0x4]
	bl      Function_220dce0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d7928

.word 0x221a4dc @ 0x21d7928
.arm
Function_21d792c: @ 21d792c :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	beq     branch_21d794c
	cmp     r0, #0x1
	beq     branch_21d7958
	cmp     r0, #0x2
	beq     branch_21d7964
	ldmfd   sp!, {r3,pc}
@ 0x21d794c

.arm
branch_21d794c: @ 21d794c :arm
	ldr     r0,  [pc, #0x1c] @ [0x21d7970] (=#0x22173b8)
	bl      Function_21d3038
	ldmfd   sp!, {r3,pc}
@ 0x21d7958

.arm
branch_21d7958: @ 21d7958 :arm
	ldr     r0,  [pc, #0x14] @ [0x21d7974] (=#0x22173e0)
	bl      Function_21d3038
	ldmfd   sp!, {r3,pc}
@ 0x21d7964

.arm
branch_21d7964: @ 21d7964 :arm
	ldr     r0,  [pc, #0xc] @ [0x21d7978] (=#0x2217404)
	bl      Function_21d3038
	ldmfd   sp!, {r3,pc}
@ 0x21d7970

.word 0x22173b8 @ 0x21d7970
.word 0x22173e0 @ 0x21d7974
.word 0x2217404 @ 0x21d7978
.arm
Function_21d797c: @ 21d797c :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xc
	ldr     r0,  [pc, #0x94] @ [0x21d7a20] (=#0x221a4dc)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7a0c
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x1
	addne   sp, sp, #0xc
	ldmnefd sp!, {pc}
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0xc
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0x64] @ [0x21d7a20] (=#0x221a4dc)
	ldr     r3,  [pc, #0x64] @ [0x21d7a24] (=#0x21d7780)
	ldr     lr, [r0, #0x4]
	ldr     r2,  [pc, #0x60] @ [0x21d7a28] (=#0x21d77c4)
	ldrh    r12, [lr, #0x8]
	add     r0, sp, #0x0
	mov     r1, #0x2
	strb    r12, [sp, #0x8]
	ldrh    r12, [lr, #0xa]
	strb    r12, [sp, #0x9]
	str     r3, [sp]
	str     r2, [sp, #0x4]
	strh    r1, [lr, #0x4]
	bl      Function_21e5c34
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	ldmnefd sp!, {pc}
	ldr     r1,  [pc, #0x2c] @ [0x21d7a2c] (=#0xffff3be9)
	mov     r0, #0x9
	bl      Function_21d7724
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x21d7a0c

.arm
branch_21d7a0c: @ 21d7a0c :arm
	ldr     r1,  [pc, #0x18] @ [0x21d7a2c] (=#0xffff3be9)
	mov     r0, #0x9
	bl      Function_21d7724
	add     sp, sp, #0xc
	ldmfd   sp!, {pc}
@ 0x21d7a20

.word 0x221a4dc @ 0x21d7a20
.word Function_21d7780 @ =0x21d7780, 0x21d7a24
.word Function_21d77c4 @ =0x21d77c4, 0x21d7a28
.word 0xffff3be9 @ 0x21d7a2c

.incbin "./baserom/overlay/overlay_0004.bin", 0x6cb0, 0x21d7a8c - 0x21d7a30


.arm
Function_21d7a8c: @ 21d7a8c :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x48] @ [0x21d7ae0] (=#0x221a4dc)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r0, [r1]
	cmp     r0, #0x0
	beq     branch_21d7ad8
	mov     r0, #0x3
	strh    r0, [r1, #0x4]
	bl      Function_21d7bfc
	ldr     r0,  [pc, #0x1c] @ [0x21d7ae0] (=#0x221a4dc)
	ldr     r0, [r0, #0x4]
	ldrb    r0, [r0, #0xc]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21d7ad8

.arm
branch_21d7ad8: @ 21d7ad8 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21d7ae0

.word 0x221a4dc @ 0x21d7ae0
.arm
Function_21d7ae4: @ 21d7ae4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x108] @ [0x21d7bf8] (=#0x221a4dc)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r0, [r1, #0x10]
	cmp     r0, #0x4
	addls   pc, pc, r0, lsl #2
	b       branch_21d7b98
@ 0x21d7b08


.incbin "./baserom/overlay/overlay_0004.bin", 0x6d88, 0x21d7b98 - 0x21d7b08


.arm
branch_21d7b98: @ 21d7b98 :arm
	ldrh    r0, [r1, #0x4]
	cmp     r0, #0x2
	bne     branch_21d7bb8
	bl      Function_21e5ddc
	ldr     r1,  [pc, #0x48] @ [0x21d7bf8] (=#0x221a4dc)
	ldr     r1, [r1, #0x4]
	str     r0, [r1]
	ldmfd   sp!, {r3,pc}
@ 0x21d7bb8

.arm
branch_21d7bb8: @ 21d7bb8 :arm
	cmp     r0, #0x4
	ldmnefd sp!, {r3,pc}
	ldrh    r0, [r1, #0x6]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_2213898
	cmp     r0, #0x9
	ldmeqfd sp!, {r3,pc}
	ldr     r0,  [pc, #0x18] @ [0x21d7bf8] (=#0x221a4dc)
	mov     r3, #0x0
	ldr     r2, [r0, #0x4]
	mov     r1, #0x6
	strh    r3, [r2, #0x6]
	ldr     r0, [r0, #0x4]
	strh    r1, [r0, #0x4]
	ldmfd   sp!, {r3,pc}
@ 0x21d7bf8

.word 0x221a4dc @ 0x21d7bf8
.arm
Function_21d7bfc: @ 21d7bfc :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r0,  [pc, #0x1a0] @ [0x21d7da8] (=#0x221a4dc)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r1, #0x10]
	cmp     r0, #0x4
	addls   pc, pc, r0, lsl #2
	b       branch_21d7c84
@ 0x21d7c24


.incbin "./baserom/overlay/overlay_0004.bin", 0x6ea4, 0x21d7c84 - 0x21d7c24


.arm
branch_21d7c84: @ 21d7c84 :arm
	ldrh    r0, [r1, #0x4]
	cmp     r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	bl      Function_21e5eac
	mov     r4, r0
	cmp     r4, #0x5
	bne     branch_21d7cc8
	ldr     r1,  [pc, #0x100] @ [0x21d7da8] (=#0x221a4dc)
	mov     r0, #0x4
	ldr     r2, [r1, #0x4]
	mov     r3, #0x1
	strh    r0, [r2, #0x4]
	ldr     r2, [r1, #0x4]
	strh    r3, [r2, #0x6]
	ldr     r1, [r1, #0x4]
	strb    r3, [r1, #0xc]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d7cc8

.arm
branch_21d7cc8: @ 21d7cc8 :arm
	cmp     r4, #0x0
	bge     branch_21d7da0
	mvn     r0, #0x9
	cmp     r4, r0
	blt     branch_21d7cfc
	ldr     r1,  [pc, #0xc8] @ [0x21d7dac] (=#0xffff3be9)
	mov     r0, #0x9
	bl      Function_21d7724
	ldr     r1,  [pc, #0xb8] @ [0x21d7da8] (=#0x221a4dc)
	mov     r0, #0x8
	ldr     r1, [r1, #0x4]
	strh    r0, [r1, #0x4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d7cfc

.arm
branch_21d7cfc: @ 21d7cfc :arm
	ldr     r0,  [pc, #0xa4] @ [0x21d7da8] (=#0x221a4dc)
	ldr     r5, [r0, #0x4]
	ldrb    r1, [r5, #0xc]
	cmp     r1, #0x0
	bne     branch_21d7d74
	ldrh    r7, [r5, #0x8]
	bl      Function_220dcd0
	ldr     r1,  [pc, #0x88] @ [0x21d7da8] (=#0x221a4dc)
	mov     r6, r0
	str     r4, [r1]
	bl      Function_21d7db0
	mov     r2, r6, lsl #16
	mov     r3, r2, lsr #16
	mov     r0, r5
	mov     r1, r7
	mov     r2, #0x1
	bl      Function_21d78c8
	ldr     r0,  [pc, #0x60] @ [0x21d7da8] (=#0x221a4dc)
	ldr     r0, [r0, #0x4]
	add     r0, r0, #0x14
	bl      Function_21e91b4
	ldr     r0,  [pc, #0x50] @ [0x21d7da8] (=#0x221a4dc)
	mov     r3, #0x1
	ldr     r1, [r0, #0x4]
	mov     r2, #0x0
	str     r3, [r1, #0x10]
	ldr     r1, [r0, #0x4]
	mov     r0, #0x2
	str     r2, [r1]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d7d74

.arm
branch_21d7d74: @ 21d7d74 :arm
	ldr     r0, [r0]
	cmp     r0, r4
	movlt   r4, r0
	mov     r1, r4
	mov     r0, #0x5
	bl      Function_21d7724
	ldr     r1,  [pc, #0x14] @ [0x21d7da8] (=#0x221a4dc)
	mov     r0, #0x7
	ldr     r1, [r1, #0x4]
	strh    r0, [r1, #0x4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d7da0

.arm
branch_21d7da0: @ 21d7da0 :arm
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d7da8

.word 0x221a4dc @ 0x21d7da8
.word 0xffff3be9 @ 0x21d7dac
.arm
Function_21d7db0: @ 21d7db0 :arm
	stmfd   sp!, {r4,lr}
	ldr     r0,  [pc, #0x50] @ [0x21d7e0c] (=#0x221a4dc)
	ldr     r1, [r0, #0x4]
	cmp     r1, #0x0
	ldmeqfd sp!, {r4,pc}
	ldrh    r1, [r1, #0x4]
	cmp     r1, #0x1
	moveq   r1, #0x0
	streq   r1, [r0, #0x4]
	ldmeqfd sp!, {r4,pc}
	bl      Function_21e5fa0
	cmp     r0, #0x0
	bne     branch_21d7dfc
	mov     r4, #0xa
.arm
branch_21d7de8: @ 21d7de8 :arm
	mov     r0, r4
	bl      Function_20c24a4
	bl      Function_21e5fa0
	cmp     r0, #0x0
	beq     branch_21d7de8
.arm
branch_21d7dfc: @ 21d7dfc :arm
	ldr     r0,  [pc, #0x8] @ [0x21d7e0c] (=#0x221a4dc)
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	ldmfd   sp!, {r4,pc}
@ 0x21d7e0c

.word 0x221a4dc @ 0x21d7e0c

.incbin "./baserom/overlay/overlay_0004.bin", 0x7090, 0x21d7e80 - 0x21d7e10


.arm
Function_21d7e80: @ 21d7e80 :arm
	ldr     r0,  [pc, #0x20] @ [0x21d7ea8] (=#0x221a4dc)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_21d7ea0
	ldrh    r0, [r0, #0x4]
	cmp     r0, #0x6
	moveq   r0, #0x1
	bxeq    lr
.arm
branch_21d7ea0: @ 21d7ea0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x21d7ea8

.word 0x221a4dc @ 0x21d7ea8

.incbin "./baserom/overlay/overlay_0004.bin", 0x712c, 0x21d8018 - 0x21d7eac


.arm
Function_21d8018: @ 21d8018 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21d7ae4
	bl      Function_21d7e80
	cmp     r0, #0x0
	beq     branch_21d8060
	bl      Function_21e5f18
	mov     r2, r0
	cmp     r2, #0xff
	beq     branch_21d8044
	cmp     r2, #0x63
	bls     branch_21d8048
.arm
branch_21d8044: @ 21d8044 :arm
	mov     r2, #0x63
.arm
branch_21d8048: @ 21d8048 :arm
	ldr     r1,  [pc, #0x18] @ [0x21d8068] (=#0xffff2d10)
	mov     r0, #0x8
	sub     r1, r1, r2
	bl      Function_21d7724
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x21d8060

.arm
branch_21d8060: @ 21d8060 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21d8068

.word 0xffff2d10 @ 0x21d8068

.incbin "./baserom/overlay/overlay_0004.bin", 0x72ec, 0x21d8abc - 0x21d806c


.arm
Function_21d8abc: @ 21d8abc :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	ldr     r1,  [pc, #0xfc] @ [0x21d8bc8] (=#0x221a4ec)
	mov     r4, r0
	ldr     r0, [r1, #0x4]
	ldr     r2, [r1]
	cmp     r0, #0x0
	cmpeq   r2, #0x0
	mov     r0, #0x0
	bne     branch_21d8b80
	ldr     r2, [r1, #0xc]
	ldr     r3, [r1, #0x8]
	cmp     r2, r0
	cmpeq   r3, r0
	bne     branch_21d8b80
	ldr     r2, [r1, #0x14]
	ldr     r1, [r1, #0x10]
	cmp     r2, r0
	cmpeq   r1, r0
	bne     branch_21d8b80
	add     r0, sp, #0x0
	bl      Function_20c3fa0
	bl      Function_20c3880
	mov     r2, r1, lsl #24
	ldr     r12, [sp]
	ldr     r3, [sp, #0x4]
	mov     lr, r12, lsr #24
	orr     lr, lr, r3, lsl #8
	mvn     r1, #255, 8 @ #0xff000000
	and     r1, lr, r1
	orr     lr, r1, r0, lsl #24
	mov     r12, #0x0
	orr     r2, r2, r0, lsr #8
	and     r1, r12, r3, lsr #24
	orr     r2, r1, r2
	ldr     r0,  [pc, #0x7c] @ [0x21d8bcc] (=#0x221a4ec)
	add     r1, sp, #0x0
	str     lr, [sp]
	str     r2, [sp, #0x4]
	ldmia   r1, {r2,r3}
	stmia   r0, {r2,r3}
	ldr     r1, [pc, #0x68] @ [0x21d8bd0] (=#0x6c078965)
	ldr     r0, [pc, #0x5c] @ [0x21d8bc8] (=#0x221a4ec)
	ldr     r2, [pc, #0x64] @ [0x21d8bd4] (=#0x5d588b65)
	str     r1, [r0, #0x8]
	ldr     r1, [pc, #0x60] @ [0x21d8bd8] (=#0x269ec3)
	str     r2, [r0, #0xc]
	str     r1, [r0, #0x10]
	str     r12, [r0, #0x14]
.arm
branch_21d8b80: @ 21d8b80 :arm
	ldr     r1,  [pc, #0x40] @ [0x21d8bc8] (=#0x221a4ec)
	ldr     r2, [r1]
	ldmib   r1, {r0,r3}
	umull   lr, r12, r3, r2
	mla     r12, r3, r0, r12
	ldr     r0, [r1, #0xc]
	ldr     r3, [r1, #0x10]
	mla     r12, r0, r2, r12
	ldr     r0, [r1, #0x14]
	adds    r2, r3, lr
	adc     r0, r0, r12
	str     r2, [r1]
	str     r0, [r1, #0x4]
	cmp     r4, #0x0
	umullne r2, r1, r0, r4
	movne   r0, r1
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x21d8bc8

.word 0x221a4ec @ 0x21d8bc8
.word 0x221a4ec @ 0x21d8bcc
.word 0x6c078965 @ 0x21d8bd0
.word 0x5d588b65 @ 0x21d8bd4
.word 0x269ec3 @ 0x21d8bd8
.arm
Function_21d8bdc: @ 21d8bdc :arm
	ldrh    r1, [r0]
	mov     r2, #0x0
	cmp     r1, #0x0
	beq     branch_21d8c00
.arm
branch_21d8bec: @ 21d8bec :arm
	add     r2, r2, #0x1
	mov     r1, r2, lsl #1
	ldrh    r1, [r0, r1]
	cmp     r1, #0x0
	bne     branch_21d8bec
.arm
branch_21d8c00: @ 21d8c00 :arm
	mov     r0, r2
	bx      lr
@ 0x21d8c08

.arm
Function_21d8c08: @ 21d8c08 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x10
	ldr     r12,  [pc, #0x254] @ [0x21d8e6c] (=#0x221a504)
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	str     r0, [r12]
	bl      Function_21d76e8
	ldr     r0,  [pc, #0x23c] @ [0x21d8e6c] (=#0x221a504)
	mov     r2, #0x0
	ldr     r1, [r0]
	ldr     r3,  [pc, #0x234] @ [0x21d8e70] (=#0x21de094)
	str     r2, [r1]
	ldr     r1, [r0]
	ldr     r2,  [pc, #0x22c] @ [0x21d8e74] (=#0x21da30c)
	str     r3, [r1, #0x4]
	ldr     r1, [r0]
	ldr     r12, [sp, #0x24]
	str     r2, [r1, #0x8]
	cmp     r12, #0x0
	ldr     r2, [r0]
	ldr     r3,  [pc, #0x214] @ [0x21d8e78] (=#0x21da318)
	ldr     r1,  [pc, #0x214] @ [0x21d8e7c] (=#0x21da680)
	str     r3, [r2, #0xc]
	ldr     r0, [r0]
	ldr     r3, [sp, #0x28]
	str     r1, [r0, #0x10]
	ldr     r0,  [pc, #0x1f0] @ [0x21d8e6c] (=#0x221a504)
	moveq   r12, #2, 20 @ #0x2000
	ldr     r0, [r0]
	cmp     r3, #0x0
	str     r12, [r0, #0x14]
	moveq   r3, #2, 20 @ #0x2000
	ldr     r1,  [pc, #0x1d8] @ [0x21d8e6c] (=#0x221a504)
	mov     r0, #0x0
	ldr     r2, [r1]
	ldr     r12,  [pc, #0x1e0] @ [0x21d8e80] (=#0x221b1b0)
	str     r3, [r2, #0x18]
	ldr     r2, [r1]
	ldr     r3,  [pc, #0x1d8] @ [0x21d8e84] (=#0x221b2b0)
	str     r0, [r2, #0x1c]
	ldr     r2, [r1]
	str     r6, [r2, #0x20]
	ldr     r2, [r1]
	str     r0, [r2, #0x24]
	ldr     r2, [r1]
	str     r0, [r2, #0x28]
	ldr     r2, [r1]
	strb    r0, [r2, #0x2c]
	ldr     r2, [r1]
	strb    r0, [r2, #0x2d]
	ldr     r2, [r1]
	str     r0, [r2, #0x64]
	ldr     r2, [r1]
	str     r12, [r2, #0x68]
	ldr     r2, [r1]
	str     r3, [r2, #0x6c]
	ldr     r2, [r1]
	str     r0, [r2, #0x70]
	ldr     r2, [r1]
	str     r0, [r2, #0x74]
	ldr     r2, [r1]
	str     r0, [r2, #0x78]
	ldr     r2, [r1]
	str     r0, [r2, #0x7c]
	ldr     r2, [r1]
	str     r0, [r2, #0x80]
	ldr     r2, [r1]
	str     r0, [r2, #0x84]
	ldr     r2, [r1]
	str     r0, [r2, #0x88]
	ldr     r2, [r1]
	str     r0, [r2, #0x8c]
	ldr     r2, [r1]
	str     r0, [r2, #0x90]
	ldr     r1, [r1]
	str     r0, [r1, #0x94]
	bl      Function_21d9bd4
	ldr     r0,  [pc, #0x124] @ [0x21d8e6c] (=#0x221a504)
	ldr     r1, [r6, #0x24]
	ldr     r2, [r0]
	ldr     r0,  [pc, #0x134] @ [0x21d8e88] (=#0x21d9f4c)
	str     r1, [sp]
	add     r1, r2, #0x2e
	str     r1, [sp, #0x4]
	mov     r1, r6
	mov     r3, r5
	str     r0, [sp, #0x8]
	mov     r5, #0x0
	add     r0, r2, #0x98
	add     r2, r2, #0x1c
	str     r5, [sp, #0xc]
	bl      Function_21da6c8
	ldr     r0,  [pc, #0xe8] @ [0x21d8e6c] (=#0x221a504)
	ldr     r2, [sp, #0x30]
	ldr     r5, [r0]
	ldr     r3, [sp, #0x2c]
	add     r0, r5, #198, 30 @ #0x318
	add     r1, r5, #0x1c
	str     r2, [sp]
	add     r2, r5, #0x2e
	bl      Function_21db420
	ldr     r0,  [pc, #0xc4] @ [0x21d8e6c] (=#0x221a504)
	ldr     r1,  [pc, #0xd4] @ [0x21d8e80] (=#0x221b1b0)
	ldr     r2, [r0]
	ldr     r0,  [pc, #0xd0] @ [0x21d8e84] (=#0x221b2b0)
	str     r1, [sp]
	str     r0, [sp, #0x4]
	ldr     r1, [sp, #0x2c]
	ldr     r0, [sp, #0x30]
	str     r1, [sp, #0x8]
	str     r0, [sp, #0xc]
	add     r0, r2, #221, 30 @ #0x374
	add     r1, r2, #0x1c
	add     r3, r2, #0x4
	bl      Function_21dcaf8
	ldr     r0,  [pc, #0x8c] @ [0x21d8e6c] (=#0x221a504)
	ldr     r0, [r0]
	add     r0, r0, #254, 30 @ #0x3f8
	add     r0, r0, #1, 22 @ #0x400
	bl      Function_21e4eac
	mov     r0, r4
	bl      Function_20d8b60
	cmp     r0, #1, 24 @ #0x100
	movcs   r5, #0xff
	bcs     branch_21d8e0c
	mov     r0, r4
	bl      Function_20d8b60
	mov     r5, r0
.arm
branch_21d8e0c: @ 21d8e0c :arm
	ldr     r1,  [pc, #0x6c] @ [0x21d8e80] (=#0x221b1b0)
	mov     r0, r4
	mov     r2, r5
	bl      Function_20c4db0
	ldr     r0, [sp, #0x20]
	ldr     r1,  [pc, #0x58] @ [0x21d8e80] (=#0x221b1b0)
	mov     r2, #0x0
	strb    r2, [r1, r5]
	bl      Function_20d8b60
	cmp     r0, #1, 24 @ #0x100
	movcs   r4, #0xff
	bcs     branch_21d8e48
	ldr     r0, [sp, #0x20]
	bl      Function_20d8b60
	mov     r4, r0
.arm
branch_21d8e48: @ 21d8e48 :arm
	ldr     r0, [sp, #0x20]
	ldr     r1,  [pc, #0x30] @ [0x21d8e84] (=#0x221b2b0)
	mov     r2, r4
	bl      Function_20c4db0
	ldr     r0,  [pc, #0x24] @ [0x21d8e84] (=#0x221b2b0)
	mov     r1, #0x0
	strb    r1, [r0, r4]
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d8e6c

.word 0x221a504 @ 0x21d8e6c
.word 0x21de094 @ 0x21d8e70
.word 0x21da30c @ 0x21d8e74
.word 0x21da318 @ 0x21d8e78
.word 0x21da680 @ 0x21d8e7c
.word 0x221b1b0 @ 0x21d8e80
.word 0x221b2b0 @ 0x21d8e84
.word 0x21d9f4c @ 0x21d8e88

.incbin "./baserom/overlay/overlay_0004.bin", 0x810c, 0x21d8ff4 - 0x21d8e8c


.arm
Function_21d8ff4: @ 21d8ff4 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21d8018
	cmp     r0, #0x0
	beq     branch_21d9008
	bl      Function_21d9cd4
.arm
branch_21d9008: @ 21d9008 :arm
	ldr     r0,  [pc, #0x218] @ [0x21d9228] (=#0x221a504)
	ldr     r0, [r0]
	cmp     r0, #0x0
	ldrne   r0, [r0, #0x24]
	cmpne   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21d7708
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldr     r0,  [pc, #0x1f4] @ [0x21d9228] (=#0x221a504)
	ldr     r0, [r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x6
	addls   pc, pc, r0, lsl #2
	b       branch_21d91e0
@ 0x21d9044


.incbin "./baserom/overlay/overlay_0004.bin", 0x82c4, 0x21d91e0 - 0x21d9044


.arm
branch_21d91e0: @ 21d91e0 :arm
	ldr     r0,  [pc, #0x40] @ [0x21d9228] (=#0x221a504)
	ldr     r1, [r0]
	ldrb    r0, [r1, #0x38c]
	cmp     r0, #0x1
	ldmnefd sp!, {r3,pc}
	ldr     r0, [r1, #0x384]
	cmp     r0, #0x0
	beq     branch_21d9214
	bl      Function_21fc1f0
	ldr     r0,  [pc, #0x1c] @ [0x21d9228] (=#0x221a504)
	mov     r1, #0x0
	ldr     r0, [r0]
	str     r1, [r0, #0x384]
.arm
branch_21d9214: @ 21d9214 :arm
	ldr     r0,  [pc, #0xc] @ [0x21d9228] (=#0x221a504)
	mov     r1, #0x0
	ldr     r0, [r0]
	strb    r1, [r0, #0x38c]
	ldmfd   sp!, {r3,pc}
@ 0x21d9228

.word 0x221a504 @ 0x21d9228

.incbin "./baserom/overlay/overlay_0004.bin", 0x84ac, 0x21d9244 - 0x21d922c


.arm
Function_21d9244: @ 21d9244 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r4, r0
	mov     r6, r2
	mov     r5, r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	bl      Function_21d7708
	cmp     r0, #0x0
	bne     branch_21d927c
	ldr     r0,  [pc, #0xd4] @ [0x21d9344] (=#0x221a504)
	ldr     r2, [r0]
	ldr     r1, [r2, #0x24]
	cmp     r1, #0x0
	beq     branch_21d9284
.arm
branch_21d927c: @ 21d927c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9284

.arm
branch_21d9284: @ 21d9284 :arm
	str     r6, [r2, #0x70]
	ldr     r1, [r0]
	cmp     r4, #0x0
	str     r5, [r1, #0x74]
	ldrneh  r1, [r4]
	cmpne   r1, #0x0
	moveq   r5, #0x0
	beq     branch_21d92f0
	ldr     r1, [r0]
	mov     r0, #0x0
	add     r1, r1, #0x2e
	mov     r2, #0x34
	bl      Function_20c4af0
	mov     r0, r4
	bl      Function_21d8bdc
	cmp     r0, #0x19
	movhi   r5, #0x19
	bhi     branch_21d92d8
	mov     r0, r4
	bl      Function_21d8bdc
	mov     r5, r0
.arm
branch_21d92d8: @ 21d92d8 :arm
	ldr     r1,  [pc, #0x64] @ [0x21d9344] (=#0x221a504)
	mov     r0, r4
	ldr     r1, [r1]
	mov     r2, r5, lsl #1
	add     r1, r1, #0x2e
	bl      Function_20c4b18
.arm
branch_21d92f0: @ 21d92f0 :arm
	ldr     r0,  [pc, #0x4c] @ [0x21d9344] (=#0x221a504)
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, r5, lsl #1
	strh    r1, [r0, #0x2e]
	bl      Function_21d7bfc
	cmp     r0, #0x4
	beq     branch_21d9324
	ldr     r1,  [pc, #0x30] @ [0x21d9348] (=#0xffff1596)
	mov     r0, #0x2
	bl      Function_21da898
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9324

.arm
branch_21d9324: @ 21d9324 :arm
	mov     r0, #0x1
	bl      Function_21d9cd8
	ldr     r0,  [pc, #0x10] @ [0x21d9344] (=#0x221a504)
	ldr     r0, [r0]
	ldr     r0, [r0, #0x68]
	bl      Function_21e9700
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9344

.word 0x221a504 @ 0x21d9344
.word 0xffff1596 @ 0x21d9348
.arm
Function_21d934c: @ 21d934c :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x10
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_21d7708
	cmp     r0, #0x0
	bne     branch_21d9388
	ldr     r0,  [pc, #0x78] @ [0x21d93ec] (=#0x221a504)
	ldr     r2, [r0]
	ldr     r1, [r2, #0x24]
	cmp     r1, #0x3
	blt     branch_21d9388
	cmp     r1, #0x4
	bne     branch_21d9394
.arm
branch_21d9388: @ 21d9388 :arm
	add     sp, sp, #0x10
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9394

.arm
branch_21d9394: @ 21d9394 :arm
	str     r6, [r2, #0x78]
	ldr     r1, [r0]
	mov     r0, #0x4
	str     r5, [r1, #0x7c]
	bl      Function_21d9cd8
	ldr     r0,  [pc, #0x3c] @ [0x21d93ec] (=#0x221a504)
	ldr     r1, [sp, #0x20]
	ldr     r3, [r0]
	ldr     r0, [sp, #0x24]
	str     r4, [sp]
	str     r1, [sp, #0x4]
	ldr     r4, [sp, #0x28]
	str     r0, [sp, #0x8]
	ldr     r2,  [pc, #0x20] @ [0x21d93f0] (=#0x21d9fac)
	add     r0, r3, #0xe0
	add     r1, r3, #30, 28 @ #0x1e0
	mov     r3, #0x0
	str     r4, [sp, #0xc]
	bl      Function_21db664
	mov     r0, #0x1
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d93ec

.word 0x221a504 @ 0x21d93ec
.word 0x21d9fac @ 0x21d93f0
.arm
Function_21d93f4: @ 21d93f4 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_21d7708
	cmp     r0, #0x0
	bne     branch_21d942c
	ldr     r0,  [pc, #0x6c] @ [0x21d948c] (=#0x221a504)
	ldr     r0, [r0]
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x3
	beq     branch_21d9438
.arm
branch_21d942c: @ 21d942c :arm
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d9438

.arm
branch_21d9438: @ 21d9438 :arm
	bl      Function_21d9bd4
	ldr     r1,  [pc, #0x48] @ [0x21d948c] (=#0x221a504)
	mov     r0, #0x5
	ldr     r2, [r1]
	str     r5, [r2, #0x80]
	ldr     r1, [r1]
	str     r4, [r1, #0x84]
	bl      Function_21d9cd8
	ldr     r1, [sp, #0x20]
	sub     r0, r7, #0x1
	ldr     r4, [sp, #0x24]
	str     r1, [sp]
	ldr     r2,  [pc, #0x20] @ [0x21d9490] (=#0x21d9ff4)
	mov     r1, r6
	and     r0, r0, #0xff
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_21dce10
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x21d948c

.word 0x221a504 @ 0x21d948c
.word 0x21d9ff4 @ 0x21d9490

.incbin "./baserom/overlay/overlay_0004.bin", 0x8714, 0x21d9724 - 0x21d9494


.arm
Function_21d9724: @ 21d9724 :arm
	ldr     r2,  [pc, #0x20] @ [0x21d974c] (=#0x221a504)
	ldr     r3, [r2]
	cmp     r3, #0x0
	moveq   r0, #0x0
	bxeq    lr
	str     r0, [r3, #0x90]
	ldr     r2, [r2]
	mov     r0, #0x1
	str     r1, [r2, #0x94]
	bx      lr
@ 0x21d974c

.word 0x221a504 @ 0x21d974c
.arm
Function_21d9750: @ 21d9750 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x90] @ [0x21d97ec] (=#0x221a504)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_21d9788
	bl      Function_21d7708
	cmp     r0, #0x0
	bne     branch_21d9788
	ldr     r0,  [pc, #0x74] @ [0x21d97ec] (=#0x221a504)
	ldr     r2, [r0]
	ldr     r0, [r2, #0x24]
	cmp     r0, #0x5
	cmpne   r0, #0x6
	beq     branch_21d9790
.arm
branch_21d9788: @ 21d9788 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21d9790

.arm
branch_21d9790: @ 21d9790 :arm
	ldrb    r0, [r2, #0x381]
	cmp     r0, #0x0
	bne     branch_21d97c0
	ldr     r1,  [pc, #0x4c] @ [0x21d97f0] (=#0x2217474)
	mov     r0, #0x1
	mov     r2, #0x0
	bl      Function_21db978
	bl      Function_21dc734
	mov     r0, #0x3
	bl      Function_21d9cd8
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x21d97c0

.arm
branch_21d97c0: @ 21d97c0 :arm
	mov     r1, #0x1
	ldr     r0,  [pc, #0x20] @ [0x21d97ec] (=#0x221a504)
	strb    r1, [r2, #0x2d]
	ldr     r0, [r0]
	ldr     r0, [r0]
	bl      Function_21f8710
	ldr     r1,  [pc, #0xc] @ [0x21d97ec] (=#0x221a504)
	mov     r0, #0x0
	ldr     r1, [r1]
	strb    r0, [r1, #0x2d]
	ldmfd   sp!, {r3,pc}
@ 0x21d97ec

.word 0x221a504 @ 0x21d97ec
.word 0x2217474 @ 0x21d97f0

.incbin "./baserom/overlay/overlay_0004.bin", 0x8a74, 0x21d9920 - 0x21d97f4


.arm
Function_21d9920: @ 21d9920 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x38] @ [0x21d9964] (=#0x221a504)
	ldr     r1, [r0]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldrb    r0, [r1, #0x389]
	cmp     r0, #0x2
	ldrneb  r0, [r1, #0x389]
	cmpne   r0, #0x3
	bne     branch_21d9958
	bl      Function_21dea48
	add     r0, r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x21d9958

.arm
branch_21d9958: @ 21d9958 :arm
	bl      Function_21dea28
	add     r0, r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x21d9964

.word 0x221a504 @ 0x21d9964
.arm
Function_21d9968: @ 21d9968 :arm
	ldr     r0,  [pc, #0x10] @ [0x21d9980] (=#0x221a504)
	ldr     r0, [r0]
	cmp     r0, #0x0
	ldrneb  r0, [r0, #0x2c]
	moveq   r0, #0x0
	bx      lr
@ 0x21d9980

.word 0x221a504 @ 0x21d9980
.arm
Function_21d9984: @ 21d9984 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2,  [pc, #0x40] @ [0x21d99d0] (=#0x221a504)
	ldr     r1, [r2]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	add     r1, r1, #145, 30 @ #0x244
	add     r1, r1, #1, 22 @ #0x400
	str     r1, [r0]
	ldr     r2, [r2]
	ldrb    r1, [r2, #0x389]
	cmp     r1, #0x2
	ldrneb  r1, [r2, #0x389]
	cmpne   r1, #0x3
	bne     branch_21d99c8
	bl      Function_21deaf0
	ldmfd   sp!, {r3,pc}
@ 0x21d99c8

.arm
branch_21d99c8: @ 21d99c8 :arm
	bl      Function_21deabc
	ldmfd   sp!, {r3,pc}
@ 0x21d99d0

.word 0x221a504 @ 0x21d99d0
.arm
Function_21d99d4: @ 21d99d4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x24] @ [0x21d9a04] (=#0x221a504)
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	add     r0, sp, #0x0
	bl      Function_21d9984
	mov     r1, r0
	ldr     r0, [sp]
	bl      Function_21d9d58
	ldmfd   sp!, {r3,pc}
@ 0x21d9a04

.word 0x221a504 @ 0x21d9a04
.arm
Function_21d9a08: @ 21d9a08 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x28] @ [0x21d9a3c] (=#0x221a504)
	ldr     r1, [r1]
	cmp     r1, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r2, [r1, #0x664]
	mov     r1, #0x1
	tst     r2, r1, lsl r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21d9c8c
	ldmfd   sp!, {r3,pc}
@ 0x21d9a3c

.word 0x221a504 @ 0x21d9a3c
.arm
Function_21d9a40: @ 21d9a40 :arm
	ldr     r0,  [pc, #0x10] @ [0x21d9a58] (=#0x221a504)
	ldr     r0, [r0]
	cmp     r0, #0x0
	ldrne   r0, [r0, #0x24]
	moveq   r0, #0x0
	bx      lr
@ 0x21d9a58

.word 0x221a504 @ 0x21d9a58

.incbin "./baserom/overlay/overlay_0004.bin", 0x8cdc, 0x21d9b24 - 0x21d9a5c


.arm
Function_21d9b24: @ 21d9b24 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r1,  [pc, #0x50] @ [0x21d9b80] (=#0x221a504)
	mov     r6, r0
	ldr     r0, [r1]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r4,  [pc, #0x3c] @ [0x21d9b84] (=#0x221a50c)
	mov     r5, #0x0
.arm
branch_21d9b48: @ 21d9b48 :arm
	ldr     r0, [r4, r5, lsl #0x2]
	cmp     r0, #0x0
	beq     branch_21d9b6c
	bl      Function_21f87b8
	ldrb    r0, [r0, #0x1]
	cmp     r6, r0
	ldreq   r0,  [pc, #0x1c] @ [0x21d9b84] (=#0x221a50c)
	ldreq   r0, [r0, r5, lsl #0x2]
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_21d9b6c: @ 21d9b6c :arm
	add     r5, r5, #0x1
	cmp     r5, #0x20
	blt     branch_21d9b48
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9b80

.word 0x221a504 @ 0x21d9b80
.word 0x221a50c @ 0x21d9b84

.incbin "./baserom/overlay/overlay_0004.bin", 0x8e08, 0x21d9bd4 - 0x21d9b88


.arm
Function_21d9bd4: @ 21d9bd4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x1c] @ [0x21d9bfc] (=#0x221a50c)
	mov     r0, #0x0
	mov     r2, #0x80
	bl      Function_20c4b4c
	ldr     r1,  [pc, #0x10] @ [0x21d9c00] (=#0x221a58c)
	mov     r0, #0x0
	mov     r2, #1, 24 @ #0x100
	bl      Function_20c4b4c
	ldmfd   sp!, {r3,pc}
@ 0x21d9bfc

.word 0x221a50c @ 0x21d9bfc
.word 0x221a58c @ 0x21d9c00

.incbin "./baserom/overlay/overlay_0004.bin", 0x8e84, 0x21d9c8c - 0x21d9c04


.arm
Function_21d9c8c: @ 21d9c8c :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4,  [pc, #0x38] @ [0x21d9cd0] (=#0x221a50c)
	mov     r6, r0
	mov     r5, #0x0
.arm
branch_21d9c9c: @ 21d9c9c :arm
	ldr     r0, [r4, r5, lsl #0x2]
	cmp     r0, #0x0
	beq     branch_21d9cbc
	bl      Function_21f87b8
	ldrb    r0, [r0, #0x1]
	cmp     r6, r0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_21d9cbc: @ 21d9cbc :arm
	add     r5, r5, #0x1
	cmp     r5, #0x20
	blt     branch_21d9c9c
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21d9cd0

.word 0x221a50c @ 0x21d9cd0
.arm
Function_21d9cd4: @ 21d9cd4 :arm
	bx      lr
@ 0x21d9cd8

.arm
Function_21d9cd8: @ 21d9cd8 :arm
	ldr     r1,  [pc, #0x14] @ [0x21d9cf4] (=#0x221a504)
	ldr     r3, [r1]
	ldr     r2, [r3, #0x24]
	str     r2, [r3, #0x28]
	ldr     r1, [r1]
	str     r0, [r1, #0x24]
	bx      lr
@ 0x21d9cf4

.word 0x221a504 @ 0x21d9cf4

.incbin "./baserom/overlay/overlay_0004.bin", 0x8f78, 0x21d9d58 - 0x21d9cf8


.arm
Function_21d9d58: @ 21d9d58 :arm
	stmfd   sp!, {r3,lr}
	mov     r12, #0x0
	mov     lr, r12
	cmp     r1, #0x0
	ble     branch_21d9d84
	mov     r3, #0x1
.arm
branch_21d9d70: @ 21d9d70 :arm
	ldrb    r2, [r0, lr]
	add     lr, lr, #0x1
	cmp     lr, r1
	orr     r12, r12, r3, lsl r2
	blt     branch_21d9d70
.arm
branch_21d9d84: @ 21d9d84 :arm
	mov     r0, r12
	ldmfd   sp!, {r3,pc}
@ 0x21d9d8c


.incbin "./baserom/overlay/overlay_0004.bin", 0x900c, 0x21da6c8 - 0x21d9d8c


.arm
Function_21da6c8: @ 21da6c8 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r12,  [pc, #0x74] @ [0x21da748] (=#0x221a68c)
	mov     r6, r1
	mov     r5, r2
	mov     r1, #0x0
	mov     r2, #10, 26 @ #0x280
	mov     r4, r3
	str     r0, [r12, #0x4]
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0x54] @ [0x21da748] (=#0x221a68c)
	mov     r2, #0x0
	ldr     r1, [r0, #0x4]
	ldr     r12, [sp, #0x10]
	str     r5, [r1]
	ldr     r1, [r0, #0x4]
	ldr     r5, [sp, #0x14]
	str     r2, [r1, #0x4]
	ldr     r1, [r0, #0x4]
	ldr     r3, [sp, #0x18]
	str     r4, [r1, #0x8]
	ldr     r1, [r0, #0x4]
	ldr     r2, [sp, #0x1c]
	str     r12, [r1, #0xc]
	ldr     r1, [r0, #0x4]
	str     r5, [r1, #0x10]
	ldr     r1, [r0, #0x4]
	str     r3, [r1, #0x14]
	ldr     r1, [r0, #0x4]
	str     r2, [r1, #0x18]
	ldr     r0, [r0, #0x4]
	str     r6, [r0, #0x1c]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21da748

.word 0x221a68c @ 0x21da748

.incbin "./baserom/overlay/overlay_0004.bin", 0x99cc, 0x21da87c - 0x21da74c


.arm
Function_21da87c: @ 21da87c :arm
	ldr     r0,  [pc, #0x10] @ [0x21da894] (=#0x221a68c)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	ldrne   r0, [r0, #0x1c]
	moveq   r0, #0x0
	bx      lr
@ 0x21da894

.word 0x221a68c @ 0x21da894
.arm
Function_21da898: @ 21da898 :arm
	stmfd   sp!, {r4,lr}
	ldr     r2,  [pc, #0x40] @ [0x21da8e4] (=#0x221a68c)
	mov     r4, r0
	ldr     r2, [r2, #0x4]
	cmp     r2, #0x0
	cmpne   r4, #0x0
	ldmeqfd sp!, {r4,pc}
	bl      Function_21d7724
	ldr     r0,  [pc, #0x24] @ [0x21da8e4] (=#0x221a68c)
	ldr     r0, [r0, #0x4]
	ldr     r3, [r0, #0x14]
	cmp     r3, #0x0
	beq     branch_21da8dc
	ldr     r2, [r0, #0x18]
	mov     r0, r4
	mov     r1, #0x0
	blx     r3
.arm
branch_21da8dc: @ 21da8dc :arm
	bl      Function_21da944
	ldmfd   sp!, {r4,pc}
@ 0x21da8e4

.word 0x221a68c @ 0x21da8e4

.incbin "./baserom/overlay/overlay_0004.bin", 0x9b68, 0x21da944 - 0x21da8e8


.arm
Function_21da944: @ 21da944 :arm
	ldr     r0,  [pc, #0x1c] @ [0x21da968] (=#0x221a68c)
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	bxeq    lr
	mov     r1, #0x0
	str     r1, [r2, #0x4]
	ldr     r0, [r0, #0x4]
	str     r1, [r0, #0x30]
	bx      lr
@ 0x21da968

.word 0x221a68c @ 0x21da968

.incbin "./baserom/overlay/overlay_0004.bin", 0x9bec, 0x21db144 - 0x21da96c


.arm
Function_21db144: @ 21db144 :arm
	ldr     r0,  [pc, #0x20] @ [0x21db16c] (=#0x221a68c)
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x0
	beq     branch_21db164
	ldr     r0, [r0, #0x4]
	cmp     r0, #0x5
	moveq   r0, #0x1
	bxeq    lr
.arm
branch_21db164: @ 21db164 :arm
	mov     r0, #0x0
	bx      lr
@ 0x21db16c

.word 0x221a68c @ 0x21db16c

.incbin "./baserom/overlay/overlay_0004.bin", 0xa3f0, 0x21db3dc - 0x21db170


.arm
Function_21db3dc: @ 21db3dc :arm
	ldr     r2,  [pc, #0x20] @ [0x21db404] (=#0x221a698)
	ldr     r3, [r2, #0x8]
	cmp     r3, #0x0
	moveq   r0, #0x0
	bxeq    lr
	str     r0, [r3, #0x44]
	ldr     r2, [r2, #0x8]
	mov     r0, #0x1
	str     r1, [r2, #0x48]
	bx      lr
@ 0x21db404

.word 0x221a698 @ 0x21db404

.incbin "./baserom/overlay/overlay_0004.bin", 0xa688, 0x21db420 - 0x21db408


.arm
Function_21db420: @ 21db420 :arm
	stmfd   sp!, {r4,lr}
	ldr     lr,  [pc, #0xd0] @ [0x21db4fc] (=#0x221a698)
	mov     r12, #0x0
	str     r0, [lr, #0x8]
	str     r12, [r0]
	ldr     r4, [lr, #0x8]
	ldr     r0, [sp, #0x8]
	str     r1, [r4, #0x4]
	ldr     r1, [lr, #0x8]
	str     r12, [r1, #0x8]
	ldr     r1, [lr, #0x8]
	str     r12, [r1, #0xc]
	str     r12, [r1, #0x10]
	str     r0, [r1, #0x14]
	ldr     r0, [lr, #0x8]
	str     r3, [r0, #0x18]
	ldr     r0, [lr, #0x8]
	strb    r12, [r0, #0x1c]
	ldr     r0, [lr, #0x8]
	strb    r12, [r0, #0x1d]
	ldr     r0, [lr, #0x8]
	strb    r12, [r0, #0x1e]
	ldr     r0, [lr, #0x8]
	strb    r12, [r0, #0x1f]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x20]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x24]
	ldr     r0, [lr, #0x8]
	str     r2, [r0, #0x28]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x2c]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x30]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x34]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x38]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x3c]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x40]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x44]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x48]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x4c]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x50]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x54]
	ldr     r0, [lr, #0x8]
	str     r12, [r0, #0x58]
	ldmfd   sp!, {r4,pc}
@ 0x21db4fc

.word 0x221a698 @ 0x21db4fc

.incbin "./baserom/overlay/overlay_0004.bin", 0xa780, 0x21db664 - 0x21db500


.arm
Function_21db664: @ 21db664 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0,  [pc, #0x9c] @ [0x21db70c] (=#0x221a698)
	ldr     r5, [sp, #0x10]
	ldr     r1, [r0, #0x8]
	ldr     r4, [sp, #0x14]
	str     r2, [r1, #0x2c]
	ldr     r1, [r0, #0x8]
	ldr     lr, [sp, #0x18]
	str     r3, [r1, #0x30]
	ldr     r1, [r0, #0x8]
	ldr     r12, [sp, #0x1c]
	str     r5, [r1, #0x34]
	ldr     r1, [r0, #0x8]
	mov     r3, #0x0
	str     r4, [r1, #0x38]
	ldr     r1, [r0, #0x8]
	mov     r2, #0x1
	str     lr, [r1, #0x3c]
	ldr     r1, [r0, #0x8]
	str     r12, [r1, #0x40]
	ldr     r1, [r0, #0x8]
	strb    r3, [r1, #0x1d]
	ldr     r1, [r0, #0x8]
	strb    r3, [r1, #0x1e]
	ldr     r1, [r0, #0x8]
	strb    r3, [r1, #0x1f]
	ldr     r1, [r0, #0x8]
	strb    r3, [r1, #0x1c]
	ldr     r1, [r0, #0x8]
	str     r2, [r1]
	ldr     r1, [r0, #0x8]
	ldr     r0, [r1, #0x18]
	cmp     r0, #0x0
	ldreqb  r0, [r1, #0x1f]
	addeq   r0, r0, #0x1
	streqb  r0, [r1, #0x1f]
	ldr     r0,  [pc, #0x10] @ [0x21db70c] (=#0x221a698)
	ldr     r1, [r0, #0x8]
	ldrb    r0, [r1, #0x1f]
	add     r0, r0, #0x1
	strb    r0, [r1, #0x1f]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21db70c

.word 0x221a698 @ 0x21db70c
.arm
Function_21db710: @ 21db710 :arm
	stmfd   sp!, {r4,lr}
	ldr     r2,  [pc, #0x48] @ [0x21db764] (=#0x221a698)
	mov     r4, r0
	ldr     r2, [r2, #0x8]
	cmp     r2, #0x0
	cmpne   r4, #0x0
	ldmeqfd sp!, {r4,pc}
	bl      Function_21d7724
	ldr     r0,  [pc, #0x2c] @ [0x21db764] (=#0x221a698)
	ldr     r3, [r0, #0x8]
	ldr     r0, [r3]
	cmp     r0, #0x0
	cmpne   r0, #0x2
	beq     branch_21db75c
	ldrb    r1, [r3, #0x1d]
	ldr     r2, [r3, #0x30]
	ldr     r3, [r3, #0x2c]
	mov     r0, r4
	blx     r3
.arm
branch_21db75c: @ 21db75c :arm
	bl      Function_21dbb50
	ldmfd   sp!, {r4,pc}
@ 0x21db764

.word 0x221a698 @ 0x21db764

.incbin "./baserom/overlay/overlay_0004.bin", 0xa9e8, 0x21db894 - 0x21db768


.arm
Function_21db894: @ 21db894 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r1,  [pc, #0x38] @ [0x21db8d8] (=#0x221a698)
	mov     r5, r0
	ldr     r0, [r1, #0x8]
	ldr     r4, [r0, #0x18]
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	bl      Function_21da87c
	mov     r1, #0xc
	mla     r1, r5, r1, r4
	bl      Function_20a4698
	cmp     r0, #0x0
	mvnne   r1, #0x0
	cmpne   r0, r1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21db8d8

.word 0x221a698 @ 0x21db8d8
.arm
Function_21db8dc: @ 21db8dc :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4,  [pc, #0x54] @ [0x21db93c] (=#0x221a698)
	mov     r6, r0
	ldr     r0, [r4, #0x8]
	cmp     r0, #0x0
	cmpne   r6, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [r0, #0x14]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_21db934
.arm
branch_21db90c: @ 21db90c :arm
	mov     r0, r5
	bl      Function_21db894
	cmp     r6, r0
	moveq   r0, r5
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [r4, #0x8]
	add     r5, r5, #0x1
	ldr     r0, [r0, #0x14]
	cmp     r5, r0
	blt     branch_21db90c
.arm
branch_21db934: @ 21db934 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21db93c

.word 0x221a698 @ 0x21db93c

.incbin "./baserom/overlay/overlay_0004.bin", 0xabc0, 0x21db978 - 0x21db940


.arm
Function_21db978: @ 21db978 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r3,  [pc, #0xa0] @ [0x21dba24] (=#0x221a698)
	mov     r6, r0
	ldr     r0, [r3, #0x8]
	mov     r5, r1
	mov     r4, r2
	cmp     r0, #0x0
	beq     branch_21db9a4
	bl      Function_21db144
	cmp     r0, #0x0
	bne     branch_21db9ac
.arm
branch_21db9a4: @ 21db9a4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21db9ac

.arm
branch_21db9ac: @ 21db9ac :arm
	mvn     r0, #0x0
	cmp     r6, r0
	bne     branch_21db9cc
	ldr     r0,  [pc, #0x64] @ [0x21dba24] (=#0x221a698)
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	ldr     r6, [r0, #0x214]
.arm
branch_21db9cc: @ 21db9cc :arm
	cmp     r5, #0x0
	bne     branch_21db9e8
	ldr     r0,  [pc, #0x48] @ [0x21dba24] (=#0x221a698)
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	add     r5, r0, #134, 30 @ #0x218
.arm
branch_21db9e8: @ 21db9e8 :arm
	cmp     r4, #0x0
	bne     branch_21dba04
	ldr     r0,  [pc, #0x2c] @ [0x21dba24] (=#0x221a698)
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	add     r4, r0, #198, 30 @ #0x318
.arm
branch_21dba04: @ 21dba04 :arm
	ldr     r0,  [pc, #0x18] @ [0x21dba24] (=#0x221a698)
	mov     r1, r6
	ldr     r0, [r0, #0x8]
	mov     r2, r5
	ldr     r0, [r0, #0x4]
	mov     r3, r4
	bl      Function_21ebb2c
	ldmfd   sp!, {r4-r6,pc}
@ 0x21dba24

.word 0x221a698 @ 0x21dba24

.incbin "./baserom/overlay/overlay_0004.bin", 0xaca8, 0x21dbb50 - 0x21dba28


.arm
Function_21dbb50: @ 21dbb50 :arm
	ldr     r0,  [pc, #0x24] @ [0x21dbb7c] (=#0x221a698)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	bxeq    lr
	mov     r2, #0x0
	str     r2, [r1]
	ldr     r1, [r0, #0x8]
	strb    r2, [r1, #0x1e]
	ldr     r0, [r0, #0x8]
	strb    r2, [r0, #0x1f]
	bx      lr
@ 0x21dbb7c

.word 0x221a698 @ 0x21dbb7c

.incbin "./baserom/overlay/overlay_0004.bin", 0xae00, 0x21dc734 - 0x21dbb80


.arm
Function_21dc734: @ 21dc734 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x18] @ [0x21dc758] (=#0x221a6a8)
	ldr     r1, [r0, #0x10]
	cmp     r1, #0x0
	movne   r1, #0x1
	strne   r1, [r0, #0xc]
	ldmnefd sp!, {r3,pc}
	bl      Function_21fb018
	ldmfd   sp!, {r3,pc}
@ 0x21dc758

.word 0x221a6a8 @ 0x21dc758

.incbin "./baserom/overlay/overlay_0004.bin", 0xb9dc, 0x21dc87c - 0x21dc75c


.arm
Function_21dc87c: @ 21dc87c :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r6, r1
	mov     r5, r2
	mov     r7, r0
	cmpne   r5, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	cmp     r7, #0x64
	bcc     branch_21dc8e0
	sub     r2, r7, #0x64
	mov     r0, #0xc
	mul     r3, r2, r0
	ldr     r0,  [pc, #0xe0] @ [0x21dc994] (=#0x221a6c8)
	ldrb    r0, [r0, r3]
	cmp     r0, #0x0
	beq     branch_21dc8e0
	ldr     r0,  [pc, #0xd4] @ [0x21dc998] (=#0x221a6cc)
	ldr     r0, [r0, r3]
	cmp     r0, #0x0
	beq     branch_21dc8f0
	bl      Function_20d8d14
	cmp     r0, #0x0
	beq     branch_21dc8f0
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x21dc8e0

.arm
branch_21dc8e0: @ 21dc8e0 :arm
	bl      Function_21e2f70
	movs    r7, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
.arm
branch_21dc8f0: @ 21dc8f0 :arm
	sub     r1, r7, #0x64
	mov     r0, #0xc
	mul     r4, r1, r0
	ldr     r1,  [pc, #0x90] @ [0x21dc994] (=#0x221a6c8)
	ldr     r0,  [pc, #0x94] @ [0x21dc99c] (=#0x221a6c9)
	strb    r7, [r1, r4]
	mov     r2, #0x1
	ldr     r1,  [pc, #0x8c] @ [0x21dc9a0] (=#0x221a6ca)
	strb    r2, [r0, r4]
	mov     r2, #0x0
	ldr     r0,  [pc, #0x78] @ [0x21dc998] (=#0x221a6cc)
	strh    r2, [r1, r4]
	ldr     r1, [r0, r4]
	cmp     r1, #0x0
	beq     branch_21dc934
	mov     r0, #0x4
	bl      Function_21d77c4
.arm
branch_21dc934: @ 21dc934 :arm
	mov     r0, r6
	ldr     r8,  [pc, #0x58] @ [0x21dc998] (=#0x221a6cc)
	bl      Function_20d8b60
	add     r1, r0, #0x1
	mov     r0, #0x4
	bl      Function_21d7780
	str     r0, [r8, r4]
	cmp     r0, #0x0
	bne     branch_21dc96c
	ldr     r1,  [pc, #0x44] @ [0x21dc9a4] (=#0xfffec77f)
	mov     r0, #0x9
	bl      Function_21de3bc
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x21dc96c

.arm
branch_21dc96c: @ 21dc96c :arm
	mov     r1, r6
	bl      Function_20d8b7c
	ldr     r1,  [pc, #0x2c] @ [0x21dc9a8] (=#0x221a6d0)
	mov     r0, r8
	str     r5, [r1, r4]
	ldr     r1, [r0, r4]
	mov     r0, r7
	bl      Function_21fd4e0
	mov     r0, r7
	ldmfd   sp!, {r4-r8,pc}
@ 0x21dc994

.word 0x221a6c8 @ 0x21dc994
.word 0x221a6cc @ 0x21dc998
.word 0x221a6c9 @ 0x21dc99c
.word 0x221a6ca @ 0x21dc9a0
.word 0xfffec77f @ 0x21dc9a4
.word 0x221a6d0 @ 0x21dc9a8
.arm
Function_21dc9ac: @ 21dc9ac :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	bl      Function_21e4a34
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	cmp     r4, #0x0
	moveq   r0, #0x3
	ldmeqfd sp!, {r3-r5,pc}
	cmp     r5, #0x0
	beq     branch_21dc9e8
	cmp     r5, #0x1
	beq     branch_21dcac0
	b       branch_21dcaec
@ 0x21dc9e8

.arm
branch_21dc9e8: @ 21dc9e8 :arm
	bl      Function_21e4a34
	ldr     r0, [r0, #0x1a0]
	cmp     r0, #0x13
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	ldrb    r0, [r4]
	cmp     r0, #0x0
	beq     branch_21dca18
	ldrb    r0, [r4, #0x1]
	cmp     r0, #0x1
	movls   r0, #0x3
	ldmlsfd sp!, {r3-r5,pc}
.arm
branch_21dca18: @ 21dca18 :arm
	ldr     r0,  [pc, #0xd4] @ [0x21dcaf4] (=#0x221a6a8)
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_21dca48
	mov     r0, #0x4
	mov     r1, #0x20
	bl      Function_21d7780
	ldr     r1,  [pc, #0xb8] @ [0x21dcaf4] (=#0x221a6a8)
	cmp     r0, #0x0
	str     r0, [r1]
	moveq   r0, #0x4
	ldmeqfd sp!, {r3-r5,pc}
.arm
branch_21dca48: @ 21dca48 :arm
	ldrb    r2, [r4]
	ldr     r1,  [pc, #0xa0] @ [0x21dcaf4] (=#0x221a6a8)
	mov     r3, #0x0
	strb    r2, [r0]
	ldrb    r2, [r4, #0x1]
	ldr     r0, [r1]
	strb    r2, [r0, #0x1]
	ldr     r0, [r1]
	strb    r3, [r0, #0x2]
	ldr     r0, [r1]
	strb    r3, [r0, #0x3]
	ldr     r2, [r4, #0x4]
	ldr     r0, [r1]
	str     r2, [r0, #0x4]
	ldr     r0, [r1]
	str     r3, [r0, #0x8]
	ldr     r0, [r1]
	str     r3, [r0, #0xc]
	bl      Function_20c3880
	ldr     r2,  [pc, #0x58] @ [0x21dcaf4] (=#0x221a6a8)
	ldr     r2, [r2]
	str     r0, [r2, #0x10]
	str     r1, [r2, #0x14]
	bl      Function_20c3880
	ldr     r2,  [pc, #0x44] @ [0x21dcaf4] (=#0x221a6a8)
	ldr     r2, [r2]
	str     r0, [r2, #0x18]
	str     r1, [r2, #0x1c]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21dcac0

.arm
branch_21dcac0: @ 21dcac0 :arm
	ldr     r0, [r4]
	cmp     r0, #0x0
	ldrne   r0,  [pc, #0x24] @ [0x21dcaf4] (=#0x221a6a8)
	movne   r1, #0x1
	ldreq   r0,  [pc, #0x1c] @ [0x21dcaf4] (=#0x221a6a8)
	moveq   r1, #0x0
	strb    r1, [r0, #0x1c]
	ldr     r1,  [pc, #0x10] @ [0x21dcaf4] (=#0x221a6a8)
	mov     r0, #0x0
	strb    r0, [r1, #0x1d]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21dcaec

.arm
branch_21dcaec: @ 21dcaec :arm
	mov     r0, #0x2
	ldmfd   sp!, {r3-r5,pc}
@ 0x21dcaf4

.word 0x221a6a8 @ 0x21dcaf4
.arm
Function_21dcaf8: @ 21dcaf8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_21e4a24
	bl      Function_21e4a34
	str     r6, [r0]
	bl      Function_21e4a34
	str     r5, [r0, #0x4]
	bl      Function_21e4a34
	str     r4, [r0, #0x8]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	bl      Function_21e4a34
	mov     r1, #0x0
	strh    r1, [r0, #0x1a]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0xe4]
	mov     r0, r1
	bl      Function_21e4a44
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0xf]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x19]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1af]
	bl      Function_21e4a34
	mov     r1, #0x0
	add     r0, r0, #1, 24 @ #0x100
	strh    r1, [r0, #0xb6]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1dc]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x200]
	bl      Function_21e4a34
	ldr     r1, [sp, #0x10]
	str     r1, [r0, #0x2f4]
	bl      Function_21e4a34
	ldr     r1, [sp, #0x14]
	str     r1, [r0, #0x2f8]
	bl      Function_21e4a34
	ldr     r1, [sp, #0x18]
	str     r1, [r0, #0x2fc]
	bl      Function_21e4a34
	ldr     r1, [sp, #0x1c]
	str     r1, [r0, #0x300]
	bl      Function_21e4a34
	add     r0, r0, #193, 30 @ #0x304
	mov     r1, #0x0
	mov     r2, #0x40
	bl      Function_20c4cf4
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x344]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x464]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x468]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x474]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x478]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x47c]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x480]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x174]
	str     r1, [r0, #0x178]
	bl      Function_21e2fb0
	ldr     r1,  [pc, #0x14] @ [0x21dcc70] (=#0x221a6a8)
	mov     r0, #0x0
	strb    r0, [r1, #0x1c]
	strb    r0, [r1, #0x1d]
	strh    r0, [r1, #0x1e]
	bl      Function_21decf4
	ldmfd   sp!, {r4-r6,pc}
@ 0x21dcc70

.word 0x221a6a8 @ 0x21dcc70
.arm
Function_21dcc74: @ 21dcc74 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x28
	mov     r4, r0
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	addne   sp, sp, #0x28
	movne   r0, #0x0
	ldmnefd sp!, {r3-r11,pc}
	bl      Function_21e4a34
	str     r4, [r0, #0x200]
	ldr     r4,  [pc, #0x144] @ [0x21dcdec] (=#0x21e41f0)
	ldr     r11,  [pc, #0x144] @ [0x21dcdf0] (=#0x21e4338)
	mov     r10, #0x0
	mov     r5, #0x1
.arm
branch_21dccb0: @ 21dccb0 :arm
	bl      Function_21e4a34
	mov     r9, r0
	bl      Function_21e4a34
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	bl      Function_21f876c
	mov     r8, r0
	bl      Function_21e4a34
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	bl      Function_21f8754
	mov     r7, r0
	bl      Function_21e4a34
	mov     r6, r0
	bl      Function_21e4a34
	ldr     r3, [r0, #0x2f8]
	mov     r1, r8
	stmea   sp, {r3,r5}
	str     r5, [sp, #0x8]
	str     r4, [sp, #0xc]
	ldr     r3,  [pc, #0xec] @ [0x21dcdf4] (=#0x21e433c)
	str     r11, [sp, #0x10]
	str     r3, [sp, #0x14]
	ldr     r3,  [pc, #0xe4] @ [0x21dcdf8] (=#0x21e4340)
	mov     r2, r7
	str     r3, [sp, #0x18]
	ldr     r3,  [pc, #0xdc] @ [0x21dcdfc] (=#0x21e43e4)
	add     r0, r9, #0x10
	str     r3, [sp, #0x1c]
	ldr     r3,  [pc, #0xd4] @ [0x21dce00] (=#0x21e43ec)
	str     r3, [sp, #0x20]
	mov     r3, #0x0
	str     r3, [sp, #0x24]
	ldr     r3, [r6, #0x2f4]
	bl      Function_21fbd94
	movs    r6, r0
	beq     branch_21dcd8c
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	bl      Function_21fc1f0
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	cmp     r6, #0x3
	bne     branch_21dcd6c
	cmp     r10, #0x4
	bne     branch_21dcd80
.arm
branch_21dcd6c: @ 21dcd6c :arm
	mov     r0, r6
	bl      Function_21e3858
	add     sp, sp, #0x28
	mov     r0, r6
	ldmfd   sp!, {r3-r11,pc}
@ 0x21dcd80

.arm
branch_21dcd80: @ 21dcd80 :arm
	add     r10, r10, #0x1
	cmp     r10, #0x5
	blt     branch_21dccb0
.arm
branch_21dcd8c: @ 21dcd8c :arm
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	bl      Function_21e4a34
	mov     r1, #0x0
	strh    r1, [r0, #0x1a]
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	ldr     r1,  [pc, #0x50] @ [0x21dce04] (=#0x21e43f8)
	bl      Function_21fbf88
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	ldr     r1,  [pc, #0x44] @ [0x21dce08] (=#0x21e4418)
	bl      Function_21fbf58
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	ldr     r1,  [pc, #0x38] @ [0x21dce0c] (=#0x21e44cc)
	bl      Function_21fbf70
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	bl      Function_21fc194
	mov     r0, r6
	add     sp, sp, #0x28
	ldmfd   sp!, {r3-r11,pc}
@ 0x21dcdec

.word 0x21e41f0 @ 0x21dcdec
.word 0x21e4338 @ 0x21dcdf0
.word 0x21e433c @ 0x21dcdf4
.word 0x21e4340 @ 0x21dcdf8
.word 0x21e43e4 @ 0x21dcdfc
.word 0x21e43ec @ 0x21dce00
.word 0x21e43f8 @ 0x21dce04
.word 0x21e4418 @ 0x21dce08
.word 0x21e44cc @ 0x21dce0c
.arm
Function_21dce10: @ 21dce10 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #69, 30 @ #0x114
	ldr     r4,  [pc, #0x1c8] @ [0x21dcfe8] (=#0x221a6a8)
	mov     r7, r1
	ldr     r1, [r4, #0x8]
	mov     r8, r0
	mov     r6, r2
	mov     r5, r3
	cmp     r1, #0x0
	beq     branch_21dce50
	mov     r0, #0x4
	mov     r2, #0x0
	bl      Function_21d77c4
	mov     r0, r4
	mov     r1, #0x0
	str     r1, [r0, #0x8]
.arm
branch_21dce50: @ 21dce50 :arm
	cmp     r7, #0x0
	beq     branch_21dced0
	add     r0, sp, #0x14
	mvn     r1, #0x0
	mov     r2, #0x20
	mov     r3, #0x3
	bl      Function_21df3cc
	mov     r4, r0
	ldr     r0,  [pc, #0x174] @ [0x21dcfec] (=#0x22174d8)
	bl      Function_20d8b60
	rsb     r1, r4, #1, 24 @ #0x100
	sub     r4, r1, r0
	mov     r1, r4
	mov     r0, #0x4
	bl      Function_21d7780
	movs    r1, r0
	ldr     r0,  [pc, #0x150] @ [0x21dcfe8] (=#0x221a6a8)
	str     r1, [r0, #0x8]
	bne     branch_21dceb0
	ldr     r1,  [pc, #0x14c] @ [0x21dcff0] (=#0xfffec77f)
	mov     r0, #0x9
	bl      Function_21de3bc
	add     sp, sp, #69, 30 @ #0x114
	ldmfd   sp!, {r3-r8,pc}
@ 0x21dceb0

.arm
branch_21dceb0: @ 21dceb0 :arm
	mov     r0, r7
	mov     r2, r4
	bl      Function_20c4db0
	ldr     r0,  [pc, #0x124] @ [0x21dcfe8] (=#0x221a6a8)
	mov     r1, #0x0
	ldr     r0, [r0, #0x8]
	add     r0, r0, r4
	strb    r1, [r0, #-0x1]
.arm
branch_21dced0: @ 21dced0 :arm
	mov     r1, r8
	mov     r2, r6
	mov     r3, r5
	mov     r0, #0x0
	bl      Function_21df08c
	bl      Function_21e4a34
	ldr     r1, [sp, #0x130]
	str     r1, [r0, #0x474]
	bl      Function_21e4a34
	ldr     r1, [sp, #0x134]
	str     r1, [r0, #0x478]
	mov     r0, #0x2
	bl      Function_21e4a44
	bl      Function_21e4a34
	ldr     r0, [r0, #0xe4]
	cmp     r0, #0x0
	bne     branch_21dcf6c
	bl      Function_21e4a34
	mov     r6, r0
	bl      Function_21e4a34
	mov     r5, r0
	bl      Function_21e4a34
	mov     r4, r0
	bl      Function_21e4a34
	mov     r2, r0
	mov     r0, #0x14
	str     r0, [sp]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r3, #0x0
	str     r3, [sp, #0x8]
	ldr     r0,  [pc, #0xa0] @ [0x21dcff4] (=#0x21e3a90)
	str     r0, [sp, #0xc]
	str     r3, [sp, #0x10]
	ldr     r0, [r5, #0x2f4]
	ldr     r1, [r4, #0x2f4]
	ldr     r2, [r2, #0x2f8]
	bl      Function_21feae8
	str     r0, [r6, #0xe4]
.arm
branch_21dcf6c: @ 21dcf6c :arm
	bl      Function_21e4a34
	ldr     r0, [r0, #0xe4]
	cmp     r0, #0x0
	bne     branch_21dcf90
	mov     r0, #0x5
	bl      Function_21e37c4
	cmp     r0, #0x0
	addne   sp, sp, #69, 30 @ #0x114
	ldmnefd sp!, {r3-r8,pc}
.arm
branch_21dcf90: @ 21dcf90 :arm
	ldr     r1,  [pc, #0x60] @ [0x21dcff8] (=#0x22174e0)
	mov     r0, #0x3
	mov     r2, #0x0
	bl      Function_21db978
	bl      Function_21e4a34
	ldr     r0, [r0, #0x200]
	bl      Function_21df1d0
	bl      Function_21e37c4
	cmp     r0, #0x0
	addne   sp, sp, #69, 30 @ #0x114
	ldmnefd sp!, {r3-r8,pc}
	bl      Function_21e4a34
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	bne     branch_21dcfd8
	bl      Function_21e4a34
	ldr     r0, [r0, #0x200]
	bl      Function_21dcc74
.arm
branch_21dcfd8: @ 21dcfd8 :arm
	mov     r0, #0x0
	bl      Function_21e32b4
	add     sp, sp, #69, 30 @ #0x114
	ldmfd   sp!, {r3-r8,pc}
@ 0x21dcfe8

.word 0x221a6a8 @ 0x21dcfe8
.word 0x22174d8 @ 0x21dcfec
.word 0xfffec77f @ 0x21dcff0
.word 0x21e3a90 @ 0x21dcff4
.word 0x22174e0 @ 0x21dcff8

.incbin "./baserom/overlay/overlay_0004.bin", 0xc27c, 0x21de3bc - 0x21dcffc


.arm
Function_21de3bc: @ 21de3bc :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r4, r0
	mov     r5, r1
	bl      Function_21e4a34
	cmp     r0, #0x0
	cmpne   r4, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r4-r8,pc}
	bl      Function_21e2600
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d7724
	ldr     r1,  [pc, #0x7c] @ [0x21de474] (=#0x22174e0)
	mov     r0, #0x1
	mov     r2, #0x0
	bl      Function_21db978
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x2
	moveq   r7, #0x1
	movne   r7, #0x0
	bl      Function_21e4a34
	ldr     r0, [r0, #0x20c]
	cmp     r0, #0x0
	moveq   r8, #0x1
	movne   r8, #0x0
	bl      Function_21e4a34
	mov     r6, r0
	bl      Function_21e4a34
	ldr     r0, [r0, #0x20c]
	bl      Function_21db8dc
	mov     r5, r0
	bl      Function_21e4a34
	str     r5, [sp]
	ldr     r1, [r0, #0x468]
	mov     r0, r4
	str     r1, [sp, #0x4]
	ldr     r4, [r6, #0x464]
	mov     r2, r8
	mov     r3, r7
	mov     r1, #0x0
	blx     r4
	bl      Function_21df134
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x21de474

.word 0x22174e0 @ 0x21de474

.incbin "./baserom/overlay/overlay_0004.bin", 0xd6f8, 0x21dea28 - 0x21de478


.arm
Function_21dea28: @ 21dea28 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e4a34
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xd]
	ldmfd   sp!, {r3,pc}
@ 0x21dea48

.arm
Function_21dea48: @ 21dea48 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e4a34
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xe]
	ldmfd   sp!, {r3,pc}
@ 0x21dea68


.incbin "./baserom/overlay/overlay_0004.bin", 0xdce8, 0x21deabc - 0x21dea68


.arm
Function_21deabc: @ 21deabc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21e4a34
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	bl      Function_21e4a34
	add     r0, r0, #45, 28 @ #0x2d0
	str     r0, [r4]
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xd]
	add     r0, r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21deaf0

.arm
Function_21deaf0: @ 21deaf0 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r7, r0
	bl      Function_21e4a34
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0,  [pc, #0x80] @ [0x21deb90] (=#0x221ae00)
	mov     r1, #0x0
	mov     r2, #0x20
	bl      Function_20c4cf4
	mov     r5, #0x0
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xe]
	cmp     r0, #0x0
	blt     branch_21deb78
	ldr     r6,  [pc, #0x5c] @ [0x21deb90] (=#0x221ae00)
	mov     r4, #0x1
.arm
branch_21deb34: @ 21deb34 :arm
	bl      Function_21e4a34
	mov     r8, r0
	bl      Function_21e4a34
	add     r0, r0, r5
	ldrb    r0, [r0, #0x2d0]
	ldr     r1, [r8, #0x2f0]
	tst     r1, r4, lsl r0
	beq     branch_21deb78
	bl      Function_21e4a34
	add     r0, r0, r5
	ldrb    r0, [r0, #0x2d0]
	add     r5, r5, #0x1
	strb    r0, [r6], #0x1
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xe]
	cmp     r5, r0
	ble     branch_21deb34
.arm
branch_21deb78: @ 21deb78 :arm
	ldr     r0,  [pc, #0x10] @ [0x21deb90] (=#0x221ae00)
	str     r0, [r7]
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xe]
	add     r0, r0, #0x1
	ldmfd   sp!, {r4-r8,pc}
@ 0x21deb90

.word 0x221ae00 @ 0x21deb90

.incbin "./baserom/overlay/overlay_0004.bin", 0xde14, 0x21decf4 - 0x21deb94


.arm
Function_21decf4: @ 21decf4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r0
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0xc]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x17c]
	bl      Function_21e4a34
	mov     r5, r0
	mov     r0, #1, 16 @ #0x10000
	bl      Function_21d8abc
	add     r1, r5, #1, 24 @ #0x100
	strh    r0, [r1, #0x7e]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x180]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x184]
	str     r1, [r0, #0x188]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x18c]
	str     r1, [r0, #0x190]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a4]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a9]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1aa]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1ab]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1ac]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a7]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a8]
	bl      Function_21e4a34
	mov     r1, #0x0
	add     r0, r0, #1, 24 @ #0x100
	strh    r1, [r0, #0xb2]
	bl      Function_21e4a34
	mov     r1, #0x0
	add     r0, r0, #1, 24 @ #0x100
	strh    r1, [r0, #0xb4]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1b8]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1e0]
	str     r1, [r0, #0x1e4]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1f0]
	str     r1, [r0, #0x1f4]
	bl      Function_21e4a34
	add     r1, r0, #243, 30 @ #0x3cc
	mov     r0, #0x0
	mov     r2, #0x98
	bl      Function_20c4b4c
	cmp     r4, #0x2
	bne     branch_21dee60
	bl      Function_21e4a34
	mov     r4, r0
	bl      Function_21e4a34
	ldrb    r0, [r0, #0xd]
	strb    r0, [r4, #0x14]
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x3
	bne     branch_21dee44
	mov     r0, #0x1
	bl      Function_21e4a44
	ldmfd   sp!, {r3-r5,pc}
@ 0x21dee44

.arm
branch_21dee44: @ 21dee44 :arm
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x2
	ldmnefd sp!, {r3-r5,pc}
	mov     r0, #0xa
	bl      Function_21e4a44
	ldmfd   sp!, {r3-r5,pc}
@ 0x21dee60

.arm
branch_21dee60: @ 21dee60 :arm
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0xd]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0xe]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x14]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x17]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0xe8]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a5]
	bl      Function_21e4a34
	mov     r1, #0x0
	add     r0, r0, #1, 24 @ #0x100
	strh    r1, [r0, #0xb0]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1bc]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1c0]
	str     r1, [r0, #0x1c4]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1c8]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1cc]
	str     r1, [r0, #0x1d0]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1d4]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x204]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x208]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x2f0]
	bl      Function_21e4a34
	add     r1, r0, #0x24
	mov     r0, #0x0
	mov     r2, #0x80
	bl      Function_20c4b4c
	bl      Function_21e4a34
	add     r1, r0, #0xa4
	mov     r0, #0x0
	mov     r2, #0x40
	bl      Function_20c4af0
	bl      Function_21e4a34
	add     r1, r0, #0xf4
	mov     r0, #0x0
	mov     r2, #0x80
	bl      Function_20c4b4c
	bl      Function_21e4a34
	add     r1, r0, #101, 30 @ #0x194
	mov     r0, #0x0
	mov     r2, #0xc
	bl      Function_20c4b4c
	bl      Function_21e4a34
	add     r1, r0, #33, 28 @ #0x210
	mov     r0, #0x0
	mov     r2, #0x80
	bl      Function_20c4b4c
	bl      Function_21e4a34
	add     r1, r0, #41, 28 @ #0x290
	mov     r0, #0x0
	mov     r2, #0x40
	bl      Function_20c4af0
	bl      Function_21e4a34
	add     r0, r0, #45, 28 @ #0x2d0
	mov     r1, #0x0
	mov     r2, #0x20
	bl      Function_20c4cf4
	bl      Function_21e4a34
	add     r1, r0, #210, 30 @ #0x348
	mov     r0, #0x0
	mov     r2, #0x84
	bl      Function_20c4b4c
	cmp     r4, #0x1
	bne     branch_21df00c
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x0
	bne     branch_21deff0
	mov     r0, #0x3
	bl      Function_21e4a44
	ldmfd   sp!, {r3-r5,pc}
@ 0x21deff0

.arm
branch_21deff0: @ 21deff0 :arm
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x1
	ldmnefd sp!, {r3-r5,pc}
	mov     r0, #0x4
	bl      Function_21e4a44
	ldmfd   sp!, {r3-r5,pc}
@ 0x21df00c

.arm
branch_21df00c: @ 21df00c :arm
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x15]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x16]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x18]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x20c]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a6]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1ae]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1ad]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x1f8]
	str     r1, [r0, #0x1fc]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x46c]
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0x470]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21df08c

.arm
Function_21df08c: @ 21df08c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_21decf4
	bl      Function_21e4a34
	strb    r7, [r0, #0x15]
	bl      Function_21e4a34
	strb    r6, [r0, #0x16]
	bl      Function_21e4a34
	str     r5, [r0, #0x464]
	bl      Function_21e4a34
	str     r4, [r0, #0x468]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x17d]
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x2d0]
	mov     r0, #0x32
	ldr     r1,  [pc, #0x34] @ [0x21df120] (=#0x221752c)
	bl      Function_21fd4e0
	mov     r0, #0x33
	ldr     r1,  [pc, #0x2c] @ [0x21df124] (=#0x2217534)
	bl      Function_21fd4e0
	mov     r0, #0x34
	ldr     r1,  [pc, #0x24] @ [0x21df128] (=#0x2217540)
	bl      Function_21fd4e0
	mov     r0, #0x35
	ldr     r1,  [pc, #0x1c] @ [0x21df12c] (=#0x221754c)
	bl      Function_21fd4e0
	mov     r0, #0x36
	ldr     r1,  [pc, #0x14] @ [0x21df130] (=#0x2217558)
	bl      Function_21fd4e0
	ldmfd   sp!, {r3-r7,pc}
@ 0x21df120

.word 0x221752c @ 0x21df120
.word 0x2217534 @ 0x21df124
.word 0x2217540 @ 0x21df128
.word 0x221754c @ 0x21df12c
.word 0x2217558 @ 0x21df130
.arm
Function_21df134: @ 21df134 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e4a34
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21e4a34
	ldr     r0, [r0, #0xe4]
	cmp     r0, #0x0
	beq     branch_21df184
	ldr     r0,  [pc, #0x70] @ [0x21df1cc] (=#0x221a6a8)
	ldr     r1, [r0, #0x18]
	cmp     r1, #0x0
	movne   r1, #0x1
	strne   r1, [r0, #0x14]
	bne     branch_21df184
	bl      Function_21e4a34
	ldr     r0, [r0, #0xe4]
	bl      Function_21febbc
	bl      Function_21e4a34
	mov     r1, #0x0
	str     r1, [r0, #0xe4]
.arm
branch_21df184: @ 21df184 :arm
	bl      Function_21dc734
	mov     r0, #0x0
	bl      Function_21e4a44
	ldr     r0,  [pc, #0x34] @ [0x21df1cc] (=#0x221a6a8)
	ldr     r1, [r0, #0x8]
	cmp     r1, #0x0
	beq     branch_21df1b8
	mov     r0, #0x4
	mov     r2, #0x0
	bl      Function_21d77c4
	ldr     r0,  [pc, #0x18] @ [0x21df1cc] (=#0x221a6a8)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
.arm
branch_21df1b8: @ 21df1b8 :arm
	bl      Function_21e2fb0
	bl      Function_21e4a34
	mov     r1, #0x1
	strb    r1, [r0, #0x18]
	ldmfd   sp!, {r3,pc}
@ 0x21df1cc

.word 0x221a6a8 @ 0x21df1cc
.arm
Function_21df1d0: @ 21df1d0 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #27, 28 @ #0x1b0
	mov     r7, #0x8
	mov     r6, #0xa
	mov     r5, #0x32
	mov     r4, #0x33
	mov     r3, #0x34
	mov     r2, #0x35
	mov     r1, #0x36
	strb    r7, [sp, #0xc]
	strb    r6, [sp, #0xd]
	strb    r5, [sp, #0xe]
	strb    r4, [sp, #0xf]
	strb    r3, [sp, #0x10]
	strb    r2, [sp, #0x11]
	strb    r1, [sp, #0x12]
	mov     r4, r0
	mov     r8, #0x7
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x0
	beq     branch_21df238
	bl      Function_21e4a34
	ldrb    r0, [r0, #0x15]
	cmp     r0, #0x1
	bne     branch_21df264
.arm
branch_21df238: @ 21df238 :arm
	ldr     r2,  [pc, #0x174] @ [0x21df3b4] (=#0x221a6c8)
	add     r3, sp, #0x13
	mov     r1, #0x0
.arm
branch_21df244: @ 21df244 :arm
	ldrb    r0, [r2]
	add     r1, r1, #0x1
	add     r2, r2, #0xc
	cmp     r0, #0x0
	strneb  r0, [r3], #0x1
	addne   r8, r8, #0x1
	cmp     r1, #0x9a
	blt     branch_21df244
.arm
branch_21df264: @ 21df264 :arm
	bl      Function_21e4a34
	ldr     r0, [r0, #0x1a0]
	cmp     r0, #0x5
	addls   pc, pc, r0, lsl #2
	b       branch_21df31c
@ 0x21df278


.incbin "./baserom/overlay/overlay_0004.bin", 0xe4f8, 0x21df31c - 0x21df278


.arm
branch_21df31c: @ 21df31c :arm
	bl      Function_21e4a34
	ldr     r0, [r0, #0xe4]
	bl      Function_21fee44
	mov     r10, #0x0
	add     r7, sp, #0xad
	mov     r6, #0x6
	mov     r5, #0x1
	mov     r4, r10
	add     r11, sp, #0xc
.arm
branch_21df340: @ 21df340 :arm
	bl      Function_21e4a34
	str     r8, [sp]
	str     r7, [sp, #0x4]
	str     r6, [sp, #0x8]
	ldr     r0, [r0, #0xe4]
	mov     r1, r5
	mov     r2, r4
	mov     r3, r11
	bl      Function_21fed10
	movs    r9, r0
	beq     branch_21df380
	cmp     r9, #0x2
	bne     branch_21df380
	add     r10, r10, #0x1
	cmp     r10, #0x5
	blt     branch_21df340
.arm
branch_21df380: @ 21df380 :arm
	cmp     r9, #0x0
	bne     branch_21df3a8
	bl      Function_21e4a34
	mov     r4, r0
	bl      Function_20c3880
	ldr     r2,  [pc, #0x2c] @ [0x21df3c8] (=#0xefb5f7)
	adds    r0, r0, r2
	str     r0, [r4, #0x174]
	adc     r0, r1, #0x0
	str     r0, [r4, #0x178]
.arm
branch_21df3a8: @ 21df3a8 :arm
	mov     r0, r9
	add     sp, sp, #27, 28 @ #0x1b0
	ldmfd   sp!, {r3-r11,pc}
@ 0x21df3b4

.word 0x221a6c8 @ 0x21df3b4

.incbin "./baserom/overlay/overlay_0004.bin", 0xe638, 0x21df3c8 - 0x21df3b8


.word 0xefb5f7 @ 0x21df3c8
.arm
Function_21df3cc: @ 21df3cc :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0x24
	mov     lr, #0x3
	ldr     r12,  [pc, #0x40] @ [0x21df420] (=#0x221752c)
	str     lr, [sp]
	str     r12, [sp, #0x4]
	str     r1, [sp, #0x8]
	str     r2, [sp, #0xc]
	str     r2, [sp, #0x10]
	ldr     r2,  [pc, #0x2c] @ [0x21df424] (=#0x2217534)
	ldr     r1,  [pc, #0x2c] @ [0x21df428] (=#0x2217540)
	str     r2, [sp, #0x14]
	str     r3, [sp, #0x18]
	str     r1, [sp, #0x1c]
	ldr     r2,  [pc, #0x20] @ [0x21df42c] (=#0x2217578)
	ldr     r3,  [pc, #0x20] @ [0x21df430] (=#0x221754c)
	mov     r1, #1, 24 @ #0x100
	str     r12, [sp, #0x20]
	bl      Function_20c1af0
	add     sp, sp, #0x24
	ldmfd   sp!, {pc}
@ 0x21df420

.word 0x221752c @ 0x21df420
.word 0x2217534 @ 0x21df424
.word 0x2217540 @ 0x21df428
.word 0x2217578 @ 0x21df42c
.word 0x221754c @ 0x21df430

.incbin "./baserom/overlay/overlay_0004.bin", 0xe6b4, 0x21e2600 - 0x21df434


.arm
Function_21e2600: @ 21e2600 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e4a34
	mov     r1, #0x2
	strb    r1, [r0, #0x1a8]
	bl      Function_21e4a34
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0]
	bl      Function_21f8710
	bl      Function_21e4a34
	mov     r1, #0x0
	strb    r1, [r0, #0x1a8]
	ldmfd   sp!, {r3,pc}
@ 0x21e2630


.incbin "./baserom/overlay/overlay_0004.bin", 0x118b0, 0x21e2f70 - 0x21e2630


.arm
Function_21e2f70: @ 21e2f70 :arm
	ldr     r2,  [pc, #0x34] @ [0x21e2fac] (=#0x221a6c8)
	mov     r3, #0x0
	mov     r0, #0xc
.arm
branch_21e2f7c: @ 21e2f7c :arm
	mul     r1, r3, r0
	ldrb    r1, [r2, r1]
	cmp     r1, #0x0
	addeq   r0, r3, #0x64
	andeq   r0, r0, #0xff
	bxeq    lr
	add     r1, r3, #0x1
	and     r3, r1, #0xff
	cmp     r3, #0x9a
	bcc     branch_21e2f7c
	mov     r0, #0x0
	bx      lr
@ 0x21e2fac

.word 0x221a6c8 @ 0x21e2fac
.arm
Function_21e2fb0: @ 21e2fb0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, #0x0
	ldr     r7,  [pc, #0x40] @ [0x21e3000] (=#0x221a6c8)
	mov     r5, #0x4
	mov     r4, r6
.arm
branch_21e2fc4: @ 21e2fc4 :arm
	ldr     r1, [r7, #0x4]
	cmp     r1, #0x0
	beq     branch_21e2fdc
	mov     r0, r5
	mov     r2, r4
	bl      Function_21d77c4
.arm
branch_21e2fdc: @ 21e2fdc :arm
	add     r6, r6, #0x1
	cmp     r6, #0x9a
	add     r7, r7, #0xc
	blt     branch_21e2fc4
	ldr     r1,  [pc, #0xc] @ [0x21e3000] (=#0x221a6c8)
	ldr     r2,  [pc, #0xc] @ [0x21e3004] (=#0x738)
	mov     r0, #0x0
	bl      Function_20c4b4c
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e3000

.word 0x221a6c8 @ 0x21e3000
.word 0x738 @ 0x21e3004

.incbin "./baserom/overlay/overlay_0004.bin", 0x12288, 0x21e32b4 - 0x21e3008


.arm
Function_21e32b4: @ 21e32b4 :arm
	stmfd   sp!, {r4,lr}
	ldr     r1,  [pc, #0x60] @ [0x21e3320] (=#0x221a6a8)
	mov     r4, r0
	ldr     r3, [r1]
	cmp     r3, #0x0
	ldrneb  r0, [r3]
	cmpne   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r2, #0x0
	str     r2, [r3, #0x8]
	ldr     r0, [r1]
	str     r2, [r0, #0xc]
	ldr     r0, [r1]
	strb    r2, [r0, #0x2]
	bl      Function_20c3880
	ldr     r2,  [pc, #0x28] @ [0x21e3320] (=#0x221a6a8)
	cmp     r4, #0x0
	ldr     r2, [r2]
	str     r0, [r2, #0x18]
	str     r1, [r2, #0x1c]
	ldmnefd sp!, {r4,pc}
	bl      Function_20c3880
	ldr     r2,  [pc, #0xc] @ [0x21e3320] (=#0x221a6a8)
	ldr     r2, [r2]
	str     r0, [r2, #0x10]
	str     r1, [r2, #0x14]
	ldmfd   sp!, {r4,pc}
@ 0x21e3320

.word 0x221a6a8 @ 0x21e3320

.incbin "./baserom/overlay/overlay_0004.bin", 0x125a4, 0x21e37c4 - 0x21e3324


.arm
Function_21e37c4: @ 21e37c4 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	cmp     r4, #0x6
	addls   pc, pc, r4, lsl #2
	b       branch_21e3840
@ 0x21e37e0


.incbin "./baserom/overlay/overlay_0004.bin", 0x12a60, 0x21e3840 - 0x21e37e0


.arm
branch_21e3840: @ 21e3840 :arm
	ldr     r1,  [pc, #0xc] @ [0x21e3854] (=#0xfffeb3f8)
	add     r1, r2, r1
	bl      Function_21de3bc
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x21e3854

.word 0xfffeb3f8 @ 0x21e3854
.arm
Function_21e3858: @ 21e3858 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r6, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r6, #0x5
	addls   pc, pc, r6, lsl #2
	b       branch_21e38c4
@ 0x21e3874


.incbin "./baserom/overlay/overlay_0004.bin", 0x12af4, 0x21e38c4 - 0x21e3874


.arm
branch_21e38c4: @ 21e38c4 :arm
	bl      Function_21d9a40
	cmp     r0, #0x2
	beq     branch_21e38e4
	cmp     r0, #0x4
	beq     branch_21e38f4
	cmp     r0, #0x5
	beq     branch_21e3908
	b       branch_21e391c
@ 0x21e38e4

.arm
branch_21e38e4: @ 21e38e4 :arm
	mov     r0, r5
	sub     r1, r4, #250, 24 @ #0xfa00
	bl      Function_21da898
	b       branch_21e392c
@ 0x21e38f4

.arm
branch_21e38f4: @ 21e38f4 :arm
	ldr     r1,  [pc, #0x38] @ [0x21e3934] (=#0xfffedef0)
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_21db710
	b       branch_21e392c
@ 0x21e3908

.arm
branch_21e3908: @ 21e3908 :arm
	ldr     r1,  [pc, #0x28] @ [0x21e3938] (=#0xfffeb7e0)
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_21de3bc
	b       branch_21e392c
@ 0x21e391c

.arm
branch_21e391c: @ 21e391c :arm
	ldr     r1,  [pc, #0x18] @ [0x21e393c] (=#0xfffe90d0)
	mov     r0, r5
	add     r1, r4, r1
	bl      Function_21d7724
.arm
branch_21e392c: @ 21e392c :arm
	mov     r0, r6
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e3934

.word 0xfffedef0 @ 0x21e3934
.word 0xfffeb7e0 @ 0x21e3938
.word 0xfffe90d0 @ 0x21e393c

.incbin "./baserom/overlay/overlay_0004.bin", 0x12bc0, 0x21e4a24 - 0x21e3940


.arm
Function_21e4a24: @ 21e4a24 :arm
	ldr     r1,  [pc, #0x4] @ [0x21e4a30] (=#0x221a6a8)
	str     r0, [r1, #0x4]
	bx      lr
@ 0x21e4a30

.word 0x221a6a8 @ 0x21e4a30
.arm
Function_21e4a34: @ 21e4a34 :arm
	ldr     r0,  [pc, #0x4] @ [0x21e4a40] (=#0x221a6a8)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21e4a40

.word 0x221a6a8 @ 0x21e4a40
.arm
Function_21e4a44: @ 21e4a44 :arm
	ldr     r1,  [pc, #0x8] @ [0x21e4a54] (=#0x221a6a8)
	ldr     r1, [r1, #0x4]
	str     r0, [r1, #0x1a0]
	bx      lr
@ 0x21e4a54

.word 0x221a6a8 @ 0x21e4a54

.incbin "./baserom/overlay/overlay_0004.bin", 0x13cd8, 0x21e4a68 - 0x21e4a58


.arm
Function_21e4a68: @ 21e4a68 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_21d7708
	cmp     r0, #0x0
	bne     branch_21e4aa8
	cmp     r5, #0x1
	bne     branch_21e4a98
	mov     r0, r4
	bl      Function_21d9a08
	cmp     r0, #0x0
	beq     branch_21e4aa8
.arm
branch_21e4a98: @ 21e4a98 :arm
	mov     r0, r4
	bl      Function_21d9c8c
	cmp     r0, #0x0
	bne     branch_21e4ab0
.arm
branch_21e4aa8: @ 21e4aa8 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e4ab0

.arm
branch_21e4ab0: @ 21e4ab0 :arm
	mov     r0, r4
	bl      Function_21e51ac
	cmp     r0, #0x1
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, r4
	bl      Function_21e5568
	mov     r4, r0
	mov     r0, r5
	bl      Function_21e4e40
	cmp     r4, r0
	movge   r0, #0x1
	movlt   r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e4ae8

.arm
Function_21e4ae8: @ 21e4ae8 :arm
	stmfd   sp!, {r3,lr}
	mov     r12, r1
	mov     r3, r2
	mov     r1, r0
	mov     r2, r12
	mov     r0, #0x1
	bl      Function_21e4b08
	ldmfd   sp!, {r3,pc}
@ 0x21e4b08

.arm
Function_21e4b08: @ 21e4b08 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0x8
	mov     r7, r1
	mov     r8, r0
	mov     r0, r7
	mov     r6, r2
	mov     r5, r3
	bl      Function_21e5194
	mov     r4, r0
	mov     r0, r7
	mov     r1, r8
	bl      Function_21e4a68
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r9,pc}
	mov     r0, #0x1
	strb    r0, [r4, #0x1c]
	str     r6, [r4]
	mov     r0, #0x0
	str     r0, [r4, #0xc]
	add     r0, sp, #0x0
	mov     r1, r8
	mov     r2, r5
	str     r5, [r4, #0x14]
	bl      Function_21e4dd4
	add     r1, sp, #0x0
	mov     r0, r7
	mov     r2, #0x8
	mov     r3, #0x1
	bl      Function_21e51e4
	ldr     r0,  [pc, #0x98] @ [0x21e4c24] (=#0x221ae20)
	ldr     r0, [r0]
	add     r0, r0, #6, 24 @ #0x600
	ldrh    r9, [r0, #0x10]
	mov     r0, r7
	cmp     r5, r9
	movle   r9, r5
	bl      Function_21e5568
	cmp     r9, r0
	addgt   sp, sp, #0x8
	movgt   r0, #0x1
	ldmgtfd sp!, {r3-r9,pc}
	mov     r0, r7
	mov     r1, r6
	mov     r2, r9
	mov     r3, #0x1
	bl      Function_21e51e4
	ldr     r0, [r4, #0xc]
	add     r1, r0, r9
	str     r1, [r4, #0xc]
	ldr     r0, [r4, #0x14]
	cmp     r1, r0
	bne     branch_21e4c18
	mov     r2, #0x0
	strb    r2, [r4, #0x1c]
	str     r2, [r4]
	str     r2, [r4, #0xc]
	ldr     r1,  [pc, #0x2c] @ [0x21e4c24] (=#0x221ae20)
	str     r2, [r4, #0x14]
	ldr     r1, [r1]
	ldr     r2, [r1, #0x600]
	cmp     r2, #0x0
	beq     branch_21e4c18
	cmp     r8, #0x1
	bne     branch_21e4c18
	mov     r1, r7
	blx     r2
.arm
branch_21e4c18: @ 21e4c18 :arm
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r9,pc}
@ 0x21e4c24

.word 0x221ae20 @ 0x21e4c24

.incbin "./baserom/overlay/overlay_0004.bin", 0x13ea8, 0x21e4d28 - 0x21e4c28


.arm
Function_21e4d28: @ 21e4d28 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_21e5194
	mov     r4, r0
	mov     r0, r7
	bl      Function_21e51c8
	cmp     r0, #0x2
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	str     r6, [r4, #0x4]
	str     r5, [r4, #0x8]
	mov     r0, #0x1
	strb    r0, [r4, #0x1d]
	mov     r1, #0x0
	str     r1, [r4, #0x10]
	str     r1, [r4, #0x18]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e4d74

.arm
Function_21e4d74: @ 21e4d74 :arm
	ldr     r1,  [pc, #0x14] @ [0x21e4d90] (=#0x221ae20)
	ldr     r1, [r1]
	cmp     r1, #0x0
	moveq   r0, #0x0
	strne   r0, [r1, #0x600]
	movne   r0, #0x1
	bx      lr
@ 0x21e4d90

.word 0x221ae20 @ 0x21e4d90
.arm
Function_21e4d94: @ 21e4d94 :arm
	ldr     r1,  [pc, #0x14] @ [0x21e4db0] (=#0x221ae20)
	ldr     r1, [r1]
	cmp     r1, #0x0
	moveq   r0, #0x0
	strne   r0, [r1, #0x604]
	movne   r0, #0x1
	bx      lr
@ 0x21e4db0

.word 0x221ae20 @ 0x21e4db0
.arm
Function_21e4db4: @ 21e4db4 :arm
	ldr     r1,  [pc, #0x14] @ [0x21e4dd0] (=#0x221ae20)
	ldr     r1, [r1]
	cmp     r1, #0x0
	moveq   r0, #0x0
	strne   r0, [r1, #0x608]
	movne   r0, #0x1
	bx      lr
@ 0x21e4dd0

.word 0x221ae20 @ 0x21e4dd0
.arm
Function_21e4dd4: @ 21e4dd4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	ldr     r1,  [pc, #0x14] @ [0x21e4e00] (=#0x2217608)
	add     r0, r6, #0x6
	mov     r2, #0x2
	bl      Function_20d8c44
	strh    r5, [r6, #0x4]
	str     r4, [r6]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e4e00

.word 0x2217608 @ 0x21e4e00

.incbin "./baserom/overlay/overlay_0004.bin", 0x14084, 0x21e4e40 - 0x21e4e04


.arm
Function_21e4e40: @ 21e4e40 :arm
	cmp     r0, #0x2
	cmpne   r0, #0x3
	cmpne   r0, #0x4
	bne     branch_21e4e58
	mov     r0, #0xc
	bx      lr
@ 0x21e4e58

.arm
branch_21e4e58: @ 21e4e58 :arm
	mov     r0, #0x8
	bx      lr
@ 0x21e4e60

.arm
Function_21e4e60: @ 21e4e60 :arm
	stmfd   sp!, {r4,lr}
	ldr     r2,  [pc, #0x3c] @ [0x21e4ea8] (=#0x221ae20)
	ldr     r3, [r2]
	cmp     r3, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r2, #0x30
	mul     r4, r0, r2
	add     r0, r3, r4
	str     r1, [r0, #0x2c]
	bl      Function_20c3880
	ldr     r2,  [pc, #0x14] @ [0x21e4ea8] (=#0x221ae20)
	ldr     r2, [r2]
	add     r2, r2, r4
	str     r0, [r2, #0x24]
	str     r1, [r2, #0x28]
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21e4ea8

.word 0x221ae20 @ 0x21e4ea8
.arm
Function_21e4eac: @ 21e4eac :arm
	stmfd   sp!, {r3,lr}
	ldr     r3,  [pc, #0x24] @ [0x21e4edc] (=#0x221ae20)
	ldr     r2,  [pc, #0x24] @ [0x21e4ee0] (=#0x614)
	mov     r1, #0x0
	str     r0, [r3]
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0x10] @ [0x21e4edc] (=#0x221ae20)
	ldr     r1,  [pc, #0x14] @ [0x21e4ee4] (=#0x5b9)
	ldr     r0, [r0]
	add     r0, r0, #6, 24 @ #0x600
	strh    r1, [r0, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x21e4edc

.word 0x221ae20 @ 0x21e4edc
.word 0x614 @ 0x21e4ee0
.word 0x5b9 @ 0x21e4ee4

.incbin "./baserom/overlay/overlay_0004.bin", 0x14168, 0x21e5194 - 0x21e4ee8


.arm
Function_21e5194: @ 21e5194 :arm
	ldr     r2,  [pc, #0xc] @ [0x21e51a8] (=#0x221ae20)
	mov     r1, #0x30
	ldr     r2, [r2]
	mla     r0, r1, r0, r2
	bx      lr
@ 0x21e51a8

.word 0x221ae20 @ 0x21e51a8
.arm
Function_21e51ac: @ 21e51ac :arm
	ldr     r2,  [pc, #0x10] @ [0x21e51c4] (=#0x221ae20)
	mov     r1, #0x30
	ldr     r2, [r2]
	mla     r1, r0, r1, r2
	ldrb    r0, [r1, #0x1c]
	bx      lr
@ 0x21e51c4

.word 0x221ae20 @ 0x21e51c4
.arm
Function_21e51c8: @ 21e51c8 :arm
	ldr     r2,  [pc, #0x10] @ [0x21e51e0] (=#0x221ae20)
	mov     r1, #0x30
	ldr     r2, [r2]
	mla     r1, r0, r1, r2
	ldrb    r0, [r1, #0x1d]
	bx      lr
@ 0x21e51e0

.word 0x221ae20 @ 0x21e51e0
.arm
Function_21e51e4: @ 21e51e4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bl      Function_21d9b24
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_21f866c
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e520c


.incbin "./baserom/overlay/overlay_0004.bin", 0x1448c, 0x21e5568 - 0x21e520c


.arm
Function_21e5568: @ 21e5568 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21d9b24
	bl      Function_21f875c
	ldr     r1,  [pc, #0xc] @ [0x21e5588] (=#0xfffffdf9)
	add     r0, r0, r1
	cmp     r0, #0x0
	movle   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21e5588

.word 0xfffffdf9 @ 0x21e5588

.incbin "./baserom/overlay/overlay_0004.bin", 0x1480c, 0x21e5c34 - 0x21e558c


.arm
Function_21e5c34: @ 21e5c34 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r2, [r4]
	mov     r0, #0x1
	mov     r1, #0x24
	blx     r2
	mov     r1, r0
	ldr     r3,  [pc, #0x17c] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r0, #0x0
	mov     r2, #0x24
	str     r1, [r3, #0xc]
	bl      Function_20c4b4c
	ldr     r0,  [pc, #0x168] @ [0x21e5dd4] (=#0x221ae2c)
	ldr     r1, [r4]
	ldr     r3, [r0, #0xc]
	mov     r2, #0x1
	str     r1, [r3]
	ldr     r0, [r4, #0x4]
	ldr     r1,  [pc, #0x154] @ [0x21e5dd8] (=#0xd18)
	str     r0, [r3, #0x4]
	strb    r2, [r3, #0x9]
	strb    r2, [r3, #0x16]
	mov     r0, #0x10
	strb    r2, [r3, #0x8]
	bl      Function_21e6124
	ldr     r2,  [pc, #0x134] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r1, #35, 24 @ #0x2300
	str     r0, [r2, #0x10]
	mov     r0, #0x2
	bl      Function_21e6124
	ldr     r2,  [pc, #0x120] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r1, #0x58
	str     r0, [r2]
	mov     r0, #0x4
	bl      Function_21e6124
	ldr     r2,  [pc, #0x10c] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r1, #0xc
	str     r0, [r2, #0x4]
	mov     r0, #0x8
	bl      Function_21e6124
	ldr     r1, [pc, #0xf8] @ [0x21e5dd4] (=#0x221ae2c)
	ldr     r2, [pc, #0xf8] @ [0x21e5dd8] (=#0xd18)
	str     r0, [r1, #0x8]
	ldr     r1, [r1, #0x10]
	mov     r0, #0x0
	bl      Function_20c4b4c
	mov     r0, #0x0
	ldr     r1, [pc, #0xdc] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r2, #35, 24 @ #0x2300
	ldr     r1, [r1]
	bl      Function_20c4b4c
	mov     r0, #0x0
	ldr     r1, [pc, #0xc8] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r2, #0x58
	ldr     r1, [r1, #0x4]
	bl      Function_20c4b4c
	mov     r0, #0x0
	ldr     r1, [pc, #0xb4] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r2, #0xc
	ldr     r1, [r1, #0x8]
	bl      Function_20c4b4c
	ldr     r1, [pc, #0xa4] @ [0x21e5dd4] (=#0x221ae2c)
	ldrb    r2, [r4, #0x8]
	ldr     r0, [r1, #0x10]
	strb    r2, [r0, #0xd0a]
	ldrb    r3, [r0, #0xd0b]
	ldrb    r2, [r4, #0x9]
	bic     r3, r3, #0x3
	and     r2, r2, #0x3
	orr     r2, r3, r2
	strb    r2, [r0, #0xd0b]
	ldr     r3, [r1, #0x8]
	ldr     r2, [r4]
	mov     r1, #0x0
	str     r2, [r3]
	ldr     r2, [r4, #0x4]
	str     r2, [r3, #0x4]
	str     r1, [r3, #0x8]
	ldrb    r2, [r0, #0xd0c]
	ldrb    r1, [r4, #0xa]
	bic     r2, r2, #0xf
	and     r1, r1, #0xf
	orr     r2, r2, r1
	strb    r2, [r0, #0xd0c]
	ldrb    r1, [r4, #0xb]
	and     r2, r2, #0xff
	bic     r2, r2, #0x30
	mov     r1, r1, lsl #30
	orr     r1, r2, r1, lsr #26
	strb    r1, [r0, #0xd0c]
	bl      Function_20a2810
	ldr     r0, [pc, #0x2c] @ [0x21e5dd4] (=#0x221ae2c)
	mov     r1, #35, 24 @ #0x2300
	ldr     r0, [r0]
	bl      Function_2212cc8
	cmp     r0, #0x1
	beq     branch_21e5dc0
	cmp     r0, #0x4
	ble     branch_21e5dcc
.arm
branch_21e5dc0: @ 21e5dc0 :arm
	bl      Function_21e61c8
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21e5dcc

.arm
branch_21e5dcc: @ 21e5dcc :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21e5dd4

.word 0x221ae2c @ 0x21e5dd4
.word 0xd18 @ 0x21e5dd8
.arm
Function_21e5ddc: @ 21e5ddc :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_21e63a4
	mov     r5, r0
	cmp     r5, #0x1
	bne     branch_21e5dfc
	bl      Function_21e80b0
	mov     r5, r0
	b       branch_21e5e70
@ 0x21e5dfc

.arm
branch_21e5dfc: @ 21e5dfc :arm
	cmp     r5, #0x7
	bcs     branch_21e5e24
	bl      Function_20c3d98
	mov     r4, r0
	bl      Function_21e78e0
	mov     r5, r0
	bl      Function_21e6344
	mov     r0, r4
	bl      Function_20c3dac
	b       branch_21e5e70
@ 0x21e5e24

.arm
branch_21e5e24: @ 21e5e24 :arm
	cmp     r5, #0x9
	bcs     branch_21e5e38
	bl      Function_21e6b90
	mov     r5, r0
	b       branch_21e5e70
@ 0x21e5e38

.arm
branch_21e5e38: @ 21e5e38 :arm
	cmp     r5, #0xa
	bcs     branch_21e5e4c
	bl      Function_21e7804
	mov     r5, r0
	b       branch_21e5e70
@ 0x21e5e4c

.arm
branch_21e5e4c: @ 21e5e4c :arm
	cmp     r5, #0x10
	bcs     branch_21e5e60
	bl      Function_21e8138
	mov     r5, r0
	b       branch_21e5e70
@ 0x21e5e60

.arm
branch_21e5e60: @ 21e5e60 :arm
	cmp     r5, #0x11
	bne     branch_21e5e70
	bl      Function_21e7210
	mov     r5, r0
.arm
branch_21e5e70: @ 21e5e70 :arm
	mov     r0, r5
	bl      Function_21e6344
	cmp     r5, #0x10
	bne     branch_21e5e94
	bl      Function_21e64e8
	mov     r4, r0
	bl      Function_21e64b0
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e5e94

.arm
branch_21e5e94: @ 21e5e94 :arm
	cmp     r5, #0x12
	movne   r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	bl      Function_21e64b0
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e5eac

.arm
Function_21e5eac: @ 21e5eac :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e63a4
	cmp     r0, #0x1
	movls   r0, #0x0
	ldmlsfd sp!, {r3,pc}
	cmp     r0, #0x7
	movcc   r0, #0x1
	ldmccfd sp!, {r3,pc}
	cmp     r0, #0x9
	moveq   r0, #0x4
	ldmeqfd sp!, {r3,pc}
	cmp     r0, #0xa
	movcc   r0, #0x2
	ldmccfd sp!, {r3,pc}
	cmp     r0, #0xb
	moveq   r0, #0x4
	ldmeqfd sp!, {r3,pc}
	cmp     r0, #0x10
	movcc   r0, #0x3
	ldmccfd sp!, {r3,pc}
	moveq   r0, #0x5
	ldmeqfd sp!, {r3,pc}
	cmp     r0, #0x11
	moveq   r0, #0x4
	ldmeqfd sp!, {r3,pc}
	bl      Function_21e7234
	ldmfd   sp!, {r3,pc}
@ 0x21e5f18

.arm
Function_21e5f18: @ 21e5f18 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0xff
	bl      Function_21e63a4
	cmp     r0, #0xa
	bcc     branch_21e5f3c
	cmp     r0, #0x10
	ldrls   r0,  [pc, #0xc] @ [0x21e5f44] (=#0x221ae2c)
	ldrls   r0, [r0, #0xc]
	ldrlsb  r4, [r0, #0x17]
.arm
branch_21e5f3c: @ 21e5f3c :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x21e5f44

.word 0x221ae2c @ 0x21e5f44

.incbin "./baserom/overlay/overlay_0004.bin", 0x151c8, 0x21e5fa0 - 0x21e5f48


.arm
Function_21e5fa0: @ 21e5fa0 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_21e63a4
	strb    r0, [sp]
	ands    r0, r0, #0xff
	cmpne   r0, #0x12
	bne     branch_21e5fc4
	bl      Function_21e61c8
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x21e5fc4

.arm
branch_21e5fc4: @ 21e5fc4 :arm
	add     r0, sp, #0x0
	bl      Function_21e70c8
	ldrb    r0, [sp]
	bl      Function_21e6344
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21e5fdc


.incbin "./baserom/overlay/overlay_0004.bin", 0x1525c, 0x21e6124 - 0x21e5fdc


.arm
Function_21e6124: @ 21e6124 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x1
	mov     r4, r1
	bl      Function_21e62ec
	ldrb    r1, [r0, #0x8]
	tst     r1, r5
	movne   r0, #0x0
	ldmnefd sp!, {r3-r5,pc}
	orr     r1, r1, r5
	strb    r1, [r0, #0x8]
	ldr     r2, [r0]
	mov     r0, r5
	mov     r1, r4
	blx     r2
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6164

.arm
Function_21e6164: @ 21e6164 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x1
	mov     r5, r1
	mov     r4, r2
	bl      Function_21e62ec
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldrb    r2, [r0, #0x8]
	tst     r2, r6
	ldmeqfd sp!, {r4-r6,pc}
	mvn     r1, r6
	and     r1, r2, r1
	strb    r1, [r0, #0x8]
	ldr     r3, [r0, #0x4]
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	blx     r3
	cmp     r6, #0x1
	ldreq   r0,  [pc, #0x8] @ [0x21e61c4] (=#0x221ae2c)
	moveq   r1, #0x0
	streq   r1, [r0, #0xc]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e61c4

.word 0x221ae2c @ 0x21e61c4
.arm
Function_21e61c8: @ 21e61c8 :arm
	stmfd   sp!, {r4,lr}
	mov     r0, #0x1
	bl      Function_21e62ec
	movs    r4, r0
	ldmeqfd sp!, {r4,pc}
	ldrb    r0, [r4, #0x8]
	tst     r0, #0x10
	beq     branch_21e6210
	mov     r0, #0x10
	bl      Function_21e62ec
	ldrb    r3, [r4, #0x8]
	mov     r1, r0
	ldr     r2,  [pc, #0xe4] @ [0x21e62e4] (=#0xd18)
	bic     r0, r3, #0x10
	strb    r0, [r4, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r0, #0x10
	blx     r3
.arm
branch_21e6210: @ 21e6210 :arm
	ldrb    r0, [r4, #0x8]
	tst     r0, #0x8
	beq     branch_21e6244
	mov     r0, #0x8
	bl      Function_21e62ec
	ldrb    r2, [r4, #0x8]
	mov     r1, r0
	mov     r0, #0x8
	bic     r2, r2, #0x8
	strb    r2, [r4, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r2, #0xc
	blx     r3
.arm
branch_21e6244: @ 21e6244 :arm
	ldrb    r0, [r4, #0x8]
	tst     r0, #0x4
	beq     branch_21e6278
	mov     r0, #0x4
	bl      Function_21e62ec
	ldrb    r2, [r4, #0x8]
	mov     r1, r0
	mov     r0, #0x4
	bic     r2, r2, #0x4
	strb    r2, [r4, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r2, #0x58
	blx     r3
.arm
branch_21e6278: @ 21e6278 :arm
	ldrb    r0, [r4, #0x8]
	tst     r0, #0x2
	beq     branch_21e62ac
	mov     r0, #0x2
	bl      Function_21e62ec
	ldrb    r2, [r4, #0x8]
	mov     r1, r0
	mov     r0, #0x2
	bic     r2, r2, #0x2
	strb    r2, [r4, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r2, #35, 24 @ #0x2300
	blx     r3
.arm
branch_21e62ac: @ 21e62ac :arm
	ldrb    r0, [r4, #0x8]
	tst     r0, #0x1
	ldmeqfd sp!, {r4,pc}
	bic     r0, r0, #0x1
	strb    r0, [r4, #0x8]
	ldr     r3, [r4, #0x4]
	mov     r1, r4
	mov     r0, #0x1
	mov     r2, #0x24
	blx     r3
	ldr     r0,  [pc, #0xc] @ [0x21e62e8] (=#0x221ae2c)
	mov     r1, #0x0
	str     r1, [r0, #0xc]
	ldmfd   sp!, {r4,pc}
@ 0x21e62e4

.word 0xd18 @ 0x21e62e4
.word 0x221ae2c @ 0x21e62e8
.arm
Function_21e62ec: @ 21e62ec :arm
	tst     r0, #0x1
	ldrne   r0,  [pc, #0x48] @ [0x21e6340] (=#0x221ae2c)
	ldrne   r0, [r0, #0xc]
	bxne    lr
	tst     r0, #0x2
	ldrne   r0,  [pc, #0x38] @ [0x21e6340] (=#0x221ae2c)
	ldrne   r0, [r0]
	bxne    lr
	tst     r0, #0x4
	ldrne   r0,  [pc, #0x28] @ [0x21e6340] (=#0x221ae2c)
	ldrne   r0, [r0, #0x4]
	bxne    lr
	tst     r0, #0x8
	ldrne   r0,  [pc, #0x18] @ [0x21e6340] (=#0x221ae2c)
	ldrne   r0, [r0, #0x8]
	bxne    lr
	tst     r0, #0x10
	ldrne   r0,  [pc, #0x8] @ [0x21e6340] (=#0x221ae2c)
	ldrne   r0, [r0, #0x10]
	moveq   r0, #0x0
	bx      lr
@ 0x21e6340

.word 0x221ae2c @ 0x21e6340
.arm
Function_21e6344: @ 21e6344 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r0, #0x1
	bl      Function_21e62ec
	mov     r5, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	strb    r6, [r5, #0x9]
	cmp     r6, #0x10
	ldmcsfd sp!, {r4-r6,pc}
	ldrb    r0, [r5, #0x16]
	cmp     r6, r0
	strhib  r6, [r5, #0x16]
	cmphi   r6, #0x7
	ldmlsfd sp!, {r4-r6,pc}
	ldrb    r0, [r4, #0xd0d]
	bl      Function_21e64a0
	strb    r0, [r5, #0x15]
	ldrb    r0, [r4, #0xd13]
	add     r0, r4, r0, lsl #2
	ldrb    r0, [r0, #0x444]
	strb    r0, [r5, #0x14]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e63a4

.arm
Function_21e63a4: @ 21e63a4 :arm
	ldr     r0,  [pc, #0x10] @ [0x21e63bc] (=#0x221ae2c)
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	ldrneb  r0, [r0, #0x9]
	moveq   r0, #0x0
	bx      lr
@ 0x21e63bc

.word 0x221ae2c @ 0x21e63bc
.arm
Function_21e63c0: @ 21e63c0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x1
	bl      Function_21e62ec
	mov     r4, r0
	str     r5, [r4, #0xc]
	bl      Function_21e63a4
	strb    r0, [r4, #0xa]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e63e4

.arm
Function_21e63e4: @ 21e63e4 :arm
	ldr     r0,  [pc, #0x8] @ [0x21e63f4] (=#0x221ae2c)
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0, #0xc]
	bx      lr
@ 0x21e63f4

.word 0x221ae2c @ 0x21e63f4
.arm
Function_21e63f8: @ 21e63f8 :arm
	stmfd   sp!, {r4,lr}
	ldr     r1,  [pc, #0x98] @ [0x21e649c] (=#0x221ae2c)
	ldr     r1, [r1, #0xc]
	ldrb    r2, [r1, #0x22]
	cmp     r2, #0x0
	bne     branch_21e6418
	bl      Function_21e64a0
	mov     r2, r0
.arm
branch_21e6418: @ 21e6418 :arm
	ldr     r1,  [pc, #0x7c] @ [0x21e649c] (=#0x221ae2c)
	mov     r0, #0x0
	ldr     r1, [r1, #0xc]
	strb    r2, [r1, #0x17]
	bl      Function_22153dc
	movs    r4, r0
	beq     branch_21e6450
	mov     r1, #0x20
	bl      Function_20c2c1c
	ldr     r1,  [pc, #0x58] @ [0x21e649c] (=#0x221ae2c)
	mov     r0, r4
	ldr     r1, [r1, #0xc]
	add     r1, r1, #0x18
	bl      Function_21e8654
.arm
branch_21e6450: @ 21e6450 :arm
	ldr     r0,  [pc, #0x44] @ [0x21e649c] (=#0x221ae2c)
	mov     r1, #0x0
	ldr     r3, [r0, #0xc]
	mov     r2, r3
.arm
branch_21e6460: @ 21e6460 :arm
	ldrsb   r0, [r2, #0x18]
	cmp     r0, #0x20
	blt     branch_21e6474
	cmp     r0, #0x7e
	ble     branch_21e6488
.arm
branch_21e6474: @ 21e6474 :arm
	add     r0, r3, #0x18
	mov     r1, #0x0
	mov     r2, #0xa
	bl      Function_20c4cf4
	ldmfd   sp!, {r4,pc}
@ 0x21e6488

.arm
branch_21e6488: @ 21e6488 :arm
	add     r1, r1, #0x1
	cmp     r1, #0xa
	add     r2, r2, #0x1
	blt     branch_21e6460
	ldmfd   sp!, {r4,pc}
@ 0x21e649c

.word 0x221ae2c @ 0x21e649c
.arm
Function_21e64a0: @ 21e64a0 :arm
	cmp     r0, #0x2
	subhi   r0, r0, #0x3
	andhi   r0, r0, #0xff
	bx      lr
@ 0x21e64b0

.arm
Function_21e64b0: @ 21e64b0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x24] @ [0x21e64e0] (=#0x221ae2c)
	mov     r0, #0x8
	ldr     r1, [r1, #0x8]
	mov     r2, #0xc
	bl      Function_21e6164
	ldr     r0,  [pc, #0x10] @ [0x21e64e0] (=#0x221ae2c)
	ldr     r2,  [pc, #0x10] @ [0x21e64e4] (=#0xd18)
	ldr     r1, [r0, #0x10]
	mov     r0, #0x10
	bl      Function_21e6164
	ldmfd   sp!, {r3,pc}
@ 0x21e64e0

.word 0x221ae2c @ 0x21e64e0
.word 0xd18 @ 0x21e64e4
.arm
Function_21e64e8: @ 21e64e8 :arm
	stmfd   sp!, {r4-r10,lr}
	ldr     r0,  [pc, #0x90] @ [0x21e6584] (=#0x221ae2c)
	mov     r1, #0xc0
	ldr     r8, [r0, #0x10]
	ldrb    r7, [r8, #0xd13]
	ldrb    r2, [r8, #0xd0d]
	add     r0, r8, #0x74
	.word 0xe1640187 @ cmn     r4, r7, lsl #3
	add     r5, r0, #1, 22 @ #0x400
	cmp     r2, #0x6
	movcs   r0, #0x1
	ldmcsfd sp!, {r4-r10,pc}
	ldrb    r9, [r8, #0xd12]
	mov     r6, #0x0
	cmp     r9, #0x0
	bls     branch_21e657c
	mov     r10, r1
.arm
branch_21e652c: @ 21e652c :arm
	cmp     r6, r7
	beq     branch_21e656c
	add     r0, r8, r6, lsl #2
	ldrb    r0, [r0, #0x445]
	cmp     r0, #0x6
	bcs     branch_21e656c
	mul     r1, r6, r10
	add     r0, r8, r1
	add     r0, r0, #1, 22 @ #0x400
	ldrh    r2, [r0, #0x7a]
	add     r0, r5, r4
	add     r1, r5, r1
	bl      Function_20d8e28
	cmp     r0, #0x0
	moveq   r0, #0x2
	ldmeqfd sp!, {r4-r10,pc}
.arm
branch_21e656c: @ 21e656c :arm
	add     r0, r6, #0x1
	and     r6, r0, #0xff
	cmp     r6, r9
	bcc     branch_21e652c
.arm
branch_21e657c: @ 21e657c :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r10,pc}
@ 0x21e6584

.word 0x221ae2c @ 0x21e6584

.incbin "./baserom/overlay/overlay_0004.bin", 0x15808, 0x21e66f4 - 0x21e6588


.arm
Function_21e66f4: @ 21e66f4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	ldrb    r0, [r4, #0xd0c]
	mov     r0, r0, lsl #28
	movs    r0, r0, lsr #28
	cmpne   r0, #0x4
	bne     branch_21e6744
	ldrh    r0, [r5, #0x2c]
	mov     r0, r0, asr #4
	and     r0, r0, #0x1
	cmp     r0, #0x1
	bne     branch_21e6744
	add     r0, r5, #0xc
	bl      Function_21e86a0
	cmp     r0, #0x1
	moveq   r0, #0x6
	ldmeqfd sp!, {r3-r5,pc}
.arm
branch_21e6744: @ 21e6744 :arm
	ldrb    r0, [r4, #0xd0c]
	mov     r0, r0, lsl #28
	movs    r0, r0, lsr #28
	cmpne   r0, #0x5
	bne     branch_21e6780
	ldrh    r0, [r5, #0x2c]
	mov     r0, r0, asr #4
	and     r0, r0, #0x1
	cmp     r0, #0x1
	bne     branch_21e6780
	add     r0, r5, #0xc
	bl      Function_21e85f4
	cmp     r0, #0x1
	moveq   r0, #0x7
	ldmeqfd sp!, {r3-r5,pc}
.arm
branch_21e6780: @ 21e6780 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6788


.incbin "./baserom/overlay/overlay_0004.bin", 0x15a08, 0x21e6b90 - 0x21e6788


.arm
Function_21e6b90: @ 21e6b90 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_21e63a4
	mov     r4, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	cmp     r4, #0x7
	beq     branch_21e6bb8
	cmp     r4, #0x8
	beq     branch_21e6bc4
	b       branch_21e6bcc
@ 0x21e6bb8

.arm
branch_21e6bb8: @ 21e6bb8 :arm
	bl      Function_21e6bd4
	mov     r4, r0
	b       branch_21e6bcc
@ 0x21e6bc4

.arm
branch_21e6bc4: @ 21e6bc4 :arm
	bl      Function_21e6ccc
	mov     r4, r0
.arm
branch_21e6bcc: @ 21e6bcc :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x21e6bd4

.arm
Function_21e6bd4: @ 21e6bd4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldrb    r2, [r5, #0xd13]
	add     r3, r5, #71, 28 @ #0x470
	mov     r1, #0xc0
	mla     r4, r2, r1, r3
	bl      Function_21e6e08
	add     r1, r5, #0xb8
	strb    r0, [r5, #0xd0d]
	add     r0, r1, #3, 22 @ #0xc00
	mov     r1, #0x0
	mov     r2, #0x52
	bl      Function_20c4cf4
	add     r2, r5, #0xb8
	ldrb    r1, [r5, #0xd0d]
	mov     r0, r5
	add     r2, r2, #3, 22 @ #0xc00
	bl      Function_21e6fdc
	cmp     r0, #0x0
	ldrb    r0, [r5, #0xd0b]
	bic     r0, r0, #0xc
	beq     branch_21e6c88
	orr     r0, r0, #0x4
	strb    r0, [r5, #0xd0b]
	ldrh    r0, [r4, #0x2c]
	mov     r0, r0, asr #4
	tst     r0, #0x1
	bne     branch_21e6c5c
	ldrb    r1, [r5, #0xd13]
	mov     r2, #0x3
	mov     r0, #0x9
	add     r1, r5, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6c5c

.arm
branch_21e6c5c: @ 21e6c5c :arm
	ldrb    r0, [r5, #0xd0d]
	cmp     r0, #0x6
	ldreqb  r0, [r4, #0x15]
	cmpeq   r0, #0x0
	bne     branch_21e6cb8
	ldrb    r1, [r5, #0xd13]
	mov     r2, #0x3
	mov     r0, #0x9
	add     r1, r5, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6c88

.arm
branch_21e6c88: @ 21e6c88 :arm
	strb    r0, [r5, #0xd0b]
	ldrh    r0, [r4, #0x2c]
	mov     r0, r0, asr #4
	and     r0, r0, #0x1
	cmp     r0, #0x1
	bne     branch_21e6cb8
	ldrb    r1, [r5, #0xd13]
	mov     r2, #0x3
	mov     r0, #0x9
	add     r1, r5, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6cb8

.arm
branch_21e6cb8: @ 21e6cb8 :arm
	mov     r0, #0x0
	strb    r0, [r5, #0xd15]
	strb    r0, [r5, #0xd14]
	mov     r0, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e6ccc

.arm
Function_21e6ccc: @ 21e6ccc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	bl      Function_2213898
	ldrb    r2, [r7, #0xd13]
	mov     r1, #0xc0
	cmp     r0, #0x3
	add     r5, r7, #71, 28 @ #0x470
	.word 0xe1640182 @ cmn     r4, r2, lsl #3
	bne     branch_21e6ddc
	mov     r0, r7
	bl      Function_21e6fa4
	ldrb    r1, [r7, #0xd15]
	mov     r6, r0
	add     r0, r1, #0x1
	and     r1, r0, #0xff
	strb    r0, [r7, #0xd15]
	cmp     r1, #0x3
	bls     branch_21e6d34
	mov     r0, #0x0
	strb    r0, [r7, #0xd15]
	ldrb    r1, [r7, #0xd13]
	mov     r2, #0x1
	mov     r0, #0x9
	add     r1, r7, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e6d34

.arm
branch_21e6d34: @ 21e6d34 :arm
	cmp     r1, #0x1
	beq     branch_21e6db8
	ldrb    r0, [r7, #0xd14]
	cmp     r0, #0x1
	bne     branch_21e6d58
	ldrb    r0, [r7, #0xd0b]
	bic     r0, r0, #0xc
	strb    r0, [r7, #0xd0b]
	b       branch_21e6db8
@ 0x21e6d58

.arm
branch_21e6d58: @ 21e6d58 :arm
	cmp     r0, #0x2
	bne     branch_21e6d80
	mov     r0, #0x0
	strb    r0, [r7, #0xd15]
	ldrb    r1, [r7, #0xd13]
	mov     r2, #0x3
	mov     r0, #0x9
	add     r1, r7, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e6d80

.arm
branch_21e6d80: @ 21e6d80 :arm
	cmp     r0, #0x3
	bne     branch_21e6da8
	mov     r0, #0x0
	strb    r0, [r7, #0xd15]
	ldrb    r1, [r7, #0xd13]
	mov     r2, #0x4
	mov     r0, #0x9
	add     r1, r7, r1, lsl #2
	strb    r2, [r1, #0x444]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e6da8

.arm
branch_21e6da8: @ 21e6da8 :arm
	cmp     r1, #0x3
	ldreqb  r0, [r7, #0xd0b]
	biceq   r0, r0, #0xc
	streqb  r0, [r7, #0xd0b]
.arm
branch_21e6db8: @ 21e6db8 :arm
	mov     r0, r7
	bl      Function_21e6fc0
	mov     r2, r0
	add     r1, r7, #0xb8
	add     r0, r5, r4
	add     r1, r1, #3, 22 @ #0xc00
	orr     r2, r6, r2
	bl      Function_2213368
	b       branch_21e6e00
@ 0x21e6ddc

.arm
branch_21e6ddc: @ 21e6ddc :arm
	cmp     r0, #0x9
	bne     branch_21e6e00
	mov     r0, #0x0
	strb    r0, [r7, #0xd15]
	bl      Function_20c3880
	str     r0, [r7, #0xcb0]
	str     r1, [r7, #0xcb4]
	mov     r0, #0xa
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e6e00

.arm
branch_21e6e00: @ 21e6e00 :arm
	mov     r0, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e6e08

.arm
Function_21e6e08: @ 21e6e08 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	ldrb    r2, [r10, #0xd13]
	ldrb    r1, [r10, #0xd0c]
	add     r3, r10, #71, 28 @ #0x470
	mov     r0, #0xc0
	mla     r4, r2, r0, r3
	mov     r0, r1, lsl #24
	movs    r0, r0, lsr #30
	mov     r0, #0x0
	str     r0, [sp]
	bne     branch_21e6f24
	ldrh    r0, [r4, #0xa]
	ldr     r6, [sp]
	cmp     r0, #0x20
	bne     branch_21e6e68
	mov     r0, r4
	bl      Function_21e66f4
	cmp     r0, #0x0
	str     r0, [sp]
	movle   r0, #0x0
	addgt   r6, r6, #0x1
	strle   r0, [sp]
	b       branch_21e6e8c
@ 0x21e6e68

.arm
branch_21e6e68: @ 21e6e68 :arm
	cmp     r0, #0x8
	bne     branch_21e6e8c
	mov     r0, r4
	bl      Function_21e7490
	cmp     r0, #0x0
	str     r0, [sp]
	moveq   r0, #0x0
	addne   r6, r6, #0x1
	streq   r0, [sp]
.arm
branch_21e6e8c: @ 21e6e8c :arm
	ldrb    r0, [r10, #0xd10]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_21e6f98
	mov     r7, r10
	add     r8, r10, #0x304
	add     r9, r10, #0x300
	add     r11, r10, #0x10c
.arm
branch_21e6eac: @ 21e6eac :arm
	ldrh    r2, [r4, #0xa]
	ldrb    r0, [r7, #0x303]
	cmp     r2, r0
	bne     branch_21e6f04
	mov     r1, r8
	add     r0, r4, #0xc
	bl      Function_20d8e28
	cmp     r0, #0x0
	bne     branch_21e6f04
	cmp     r6, #0x0
	ldreqb  r0, [r7, #0x301]
	streq   r0, [sp]
	beq     branch_21e6f00
	ldrb    r0, [r9]
	bic     r0, r0, #0xf0
	orr     r0, r0, #0x10
	strb    r0, [r9]
	ldrb    r0, [r11, #0xc00]
	bic     r0, r0, #0xc0
	orr     r0, r0, #0x40
	strb    r0, [r11, #0xc00]
.arm
branch_21e6f00: @ 21e6f00 :arm
	add     r6, r6, #0x1
.arm
branch_21e6f04: @ 21e6f04 :arm
	ldrb    r0, [r10, #0xd10]
	add     r5, r5, #0x1
	add     r7, r7, #0x24
	cmp     r5, r0
	add     r8, r8, #0x24
	add     r9, r9, #0x24
	blt     branch_21e6eac
	b       branch_21e6f98
@ 0x21e6f24

.arm
branch_21e6f24: @ 21e6f24 :arm
	ldrb    r0, [r10, #0xd10]
	ldr     r5, [sp]
	mov     r4, r5
	cmp     r0, #0x0
	ble     branch_21e6f88
	mov     r3, r10
	add     r2, r10, #3, 24 @ #0x300
.arm
branch_21e6f40: @ 21e6f40 :arm
	ldrb    r0, [r2]
	mov     r1, r0, lsl #24
	mov     r1, r1, lsr #28
	cmp     r1, #0x1
	bne     branch_21e6f70
	cmp     r4, #0x0
	bne     branch_21e6f6c
	bic     r0, r0, #0xf0
	strb    r0, [r2]
	ldrb    r0, [r3, #0x301]
	str     r0, [sp]
.arm
branch_21e6f6c: @ 21e6f6c :arm
	add     r4, r4, #0x1
.arm
branch_21e6f70: @ 21e6f70 :arm
	ldrb    r0, [r10, #0xd10]
	add     r5, r5, #0x1
	add     r2, r2, #0x24
	cmp     r5, r0
	add     r3, r3, #0x24
	blt     branch_21e6f40
.arm
branch_21e6f88: @ 21e6f88 :arm
	cmp     r4, #0x1
	ldreqb  r0, [r10, #0xd0c]
	biceq   r0, r0, #0xc0
	streqb  r0, [r10, #0xd0c]
.arm
branch_21e6f98: @ 21e6f98 :arm
	ldr     r0, [sp]
	and     r0, r0, #0xff
	ldmfd   sp!, {r3-r11,pc}
@ 0x21e6fa4

.arm
Function_21e6fa4: @ 21e6fa4 :arm
	ldrb    r0, [r0, #0xd0b]
	mov     r0, r0, lsl #30
	mov     r0, r0, lsr #30
	cmp     r0, #0x1
	moveq   r0, #0x30000
	movne   r0, #0x20000
	bx      lr
@ 0x21e6fc0

.arm
Function_21e6fc0: @ 21e6fc0 :arm
	ldrb    r0, [r0, #0xd0b]
	mov     r0, r0, lsl #28
	mov     r0, r0, lsr #30
	cmp     r0, #0x1
	moveq   r0, #0xc0000
	movne   r0, #0x80000
	bx      lr
@ 0x21e6fdc

.arm
Function_21e6fdc: @ 21e6fdc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r2
	cmp     r1, #0x9
	addls   pc, pc, r1, lsl #2
	b       branch_21e70b4
@ 0x21e6ff0


.incbin "./baserom/overlay/overlay_0004.bin", 0x16270, 0x21e70b4 - 0x21e6ff0


.arm
branch_21e70b4: @ 21e70b4 :arm
	ldrb    r0, [r4]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21e70c8

.arm
Function_21e70c8: @ 21e70c8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldrb    r0, [r4]
	cmp     r0, #0xa
	bhi     branch_21e7114
	bl      Function_21e7150
	cmp     r0, #0x1
	bne     branch_21e70f8
	mov     r0, #0x0
	strb    r0, [r4]
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21e70f8

.arm
branch_21e70f8: @ 21e70f8 :arm
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_21e7148
	mov     r0, #0x12
	strb    r0, [r4]
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21e7114

.arm
branch_21e7114: @ 21e7114 :arm
	cmp     r0, #0xe
	bne     branch_21e7130
	bl      Function_21d59f0
	bl      Function_21d58f8
	mov     r0, #0xc
	strb    r0, [r4]
	b       branch_21e7148
@ 0x21e7130

.arm
branch_21e7130: @ 21e7130 :arm
	cmp     r0, #0x12
	bcs     branch_21e7148
	bl      Function_21e71e0
	cmp     r0, #0x1
	moveq   r0, #0xa
	streqb  r0, [r4]
.arm
branch_21e7148: @ 21e7148 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21e7150

.arm
Function_21e7150: @ 21e7150 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2213898
	cmp     r0, #0xc
	addls   pc, pc, r0, lsl #2
	b       branch_21e71d8
@ 0x21e7164


.incbin "./baserom/overlay/overlay_0004.bin", 0x163e4, 0x21e71d8 - 0x21e7164


.arm
branch_21e71d8: @ 21e71d8 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21e71e0

.arm
Function_21e71e0: @ 21e71e0 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2207edc
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	bl      Function_22089e8
	cmp     r0, #0x0
	mvnne   r1, #0x26
	cmpne   r0, r1
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21e7210

.arm
Function_21e7210: @ 21e7210 :arm
	stmfd   sp!, {r3,lr}
	mov     r0, #0x1
	bl      Function_21e62ec
	add     r0, r0, #0xa
	bl      Function_21e70c8
	cmp     r0, #0x1
	moveq   r0, #0x12
	movne   r0, #0x11
	ldmfd   sp!, {r3,pc}
@ 0x21e7234

.arm
Function_21e7234: @ 21e7234 :arm
	stmfd   sp!, {r4,lr}
	mov     r0, #0x1
	bl      Function_21e62ec
	mov     r4, r0
	bl      Function_21e63e4
	cmp     r0, #0x4
	bge     branch_21e7258
	bl      Function_21e7284
	ldmfd   sp!, {r4,pc}
@ 0x21e7258

.arm
branch_21e7258: @ 21e7258 :arm
	cmp     r0, #0x5
	bge     branch_21e7268
	bl      Function_21e72c8
	ldmfd   sp!, {r4,pc}
@ 0x21e7268

.arm
branch_21e7268: @ 21e7268 :arm
	cmp     r0, #0x5
	mov     r0, r4
	bne     branch_21e727c
	bl      Function_21e72d0
	ldmfd   sp!, {r4,pc}
@ 0x21e727c

.arm
branch_21e727c: @ 21e727c :arm
	bl      Function_21e72ec
	ldmfd   sp!, {r4,pc}
@ 0x21e7284

.arm
Function_21e7284: @ 21e7284 :arm
	cmp     r0, #0x3
	addls   pc, pc, r0, lsl #2
	b       branch_21e72c0
@ 0x21e7290


.incbin "./baserom/overlay/overlay_0004.bin", 0x16510, 0x21e72c0 - 0x21e7290


.arm
branch_21e72c0: @ 21e72c0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x21e72c8

.arm
Function_21e72c8: @ 21e72c8 :arm
	mvn     r0, #0x5
	bx      lr
@ 0x21e72d0

.arm
Function_21e72d0: @ 21e72d0 :arm
	ldrb    r0, [r0, #0xb]
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x4] @ [0x21e72e4] (=#0xffff3c4d)
	ldrne   r0,  [pc, #0x4] @ [0x21e72e8] (=#0xffff3865)
	bx      lr
@ 0x21e72e4

.word 0xffff3c4d @ 0x21e72e4
.word 0xffff3865 @ 0x21e72e8
.arm
Function_21e72ec: @ 21e72ec :arm
	ldrb    r1, [r0, #0x22]
	ldrb    r2, [r0, #0x16]
	cmp     r1, #0x0
	ldreqb  r1, [r0, #0x15]
	cmp     r2, #0xa
	bcs     branch_21e7338
	ldrb    r0, [r0, #0x14]
	cmp     r0, #0x3
	ldreq   r0,  [pc, #0xc0] @ [0x21e73d4] (=#0xffff3864)
	subeq   r0, r0, r1
	bxeq    lr
	cmp     r0, #0x4
	ldrne   r0,  [pc, #0xb4] @ [0x21e73d8] (=#0xffff379c)
	subne   r0, r0, r1
	bxne    lr
	mov     r0, #50, 22 @ #0xc800
	rsb     r0, r0, #0x0
	sub     r0, r0, r1
	bx      lr
@ 0x21e7338

.arm
branch_21e7338: @ 21e7338 :arm
	cmp     r2, #0xd
	ldrcc   r0,  [pc, #0x98] @ [0x21e73dc] (=#0xffff34e0)
	subcc   r0, r0, r1
	bxcc    lr
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x88] @ [0x21e73e0] (=#0xffff3cb0)
	subeq   r0, r0, r1
	bxeq    lr
	mvn     r3, #0x0
	cmp     r0, r3
	ldreq   r0,  [pc, #0x78] @ [0x21e73e4] (=#0xffff347c)
	subeq   r0, r0, r1
	bxeq    lr
	sub     r2, r3, #0x1
	cmp     r0, r2
	ldreq   r0,  [pc, #0x68] @ [0x21e73e8] (=#0xffff3418)
	subeq   r0, r0, r1
	bxeq    lr
	sub     r2, r3, #0x2
	cmp     r0, r2
	ldreq   r0,  [pc, #0x58] @ [0x21e73ec] (=#0xffff33b4)
	subeq   r0, r0, r1
	bxeq    lr
	sub     r2, r3, #0x3
	cmp     r0, r2
	ldreq   r0,  [pc, #0x48] @ [0x21e73f0] (=#0xffff30f8)
	subeq   r0, r0, r1
	bxeq    lr
	sub     r2, r3, #0x4
	cmp     r0, r2
	ldreq   r0,  [pc, #0x38] @ [0x21e73f4] (=#0xffff3094)
	subeq   r0, r0, r1
	bxeq    lr
	sub     r2, r3, #0x5
	cmp     r0, r2
	ldreq   r0,  [pc, #0x28] @ [0x21e73f8] (=#0xffff3030)
	subeq   r0, r0, r1
	bx      lr
@ 0x21e73d4

.word 0xffff3864 @ 0x21e73d4
.word 0xffff379c @ 0x21e73d8
.word 0xffff34e0 @ 0x21e73dc
.word 0xffff3cb0 @ 0x21e73e0
.word 0xffff347c @ 0x21e73e4
.word 0xffff3418 @ 0x21e73e8
.word 0xffff33b4 @ 0x21e73ec
.word 0xffff30f8 @ 0x21e73f0
.word 0xffff3094 @ 0x21e73f4
.word 0xffff3030 @ 0x21e73f8
.arm
Function_21e73fc: @ 21e73fc :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	cmp     r5, #0x0
	beq     branch_21e742c
	cmp     r5, #0x1
	beq     branch_21e744c
	cmp     r5, #0x2
	beq     branch_21e7464
	b       branch_21e7488
@ 0x21e742c

.arm
branch_21e742c: @ 21e742c :arm
	add     r1, r4, #3, 24 @ #0x300
	mov     r0, #0x0
	mov     r2, #81, 30 @ #0x144
	bl      Function_20c4b4c
	mov     r0, r4
	bl      Function_21e74dc
	strb    r0, [r4, #0xd10]
	b       branch_21e7488
@ 0x21e744c

.arm
branch_21e744c: @ 21e744c :arm
	bl      Function_21e7730
	strb    r0, [r4, #0xd10]
	mov     r0, r4
	bl      Function_21e77c0
	strb    r0, [r4, #0xd0f]
	b       branch_21e7488
@ 0x21e7464

.arm
branch_21e7464: @ 21e7464 :arm
	add     r1, r4, #3, 24 @ #0x300
	mov     r0, #0x0
	mov     r2, #81, 30 @ #0x144
	bl      Function_20c4b4c
	mov     r1, #0x0
	mov     r0, r4
	strb    r1, [r4, #0xd0f]
	bl      Function_21e753c
	strb    r0, [r4, #0xd10]
.arm
branch_21e7488: @ 21e7488 :arm
	ldrb    r0, [r4, #0xd10]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7490

.arm
Function_21e7490: @ 21e7490 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	ldrb    r0, [r0, #0xd0c]
	mov     r0, r0, lsl #28
	movs    r0, r0, lsr #28
	cmpne   r0, #0x6
	bne     branch_21e74d0
	ldr     r1,  [pc, #0x1c] @ [0x21e74d8] (=#0x22158a0)
	add     r0, r4, #0xc
	mov     r2, #0x8
	bl      Function_20d8e28
	cmp     r0, #0x0
	moveq   r0, #0x8
	ldmeqfd sp!, {r4,pc}
.arm
branch_21e74d0: @ 21e74d0 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21e74d8

.word 0x22158a0 @ 0x21e74d8
.arm
Function_21e74dc: @ 21e74dc :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	add     r4, r5, #3, 24 @ #0x300
	bl      Function_21e7628
	ldrb    r1, [r5, #0xd0c]
	mov     r5, r0
	mov     r0, #0x24
	mla     r4, r5, r0, r4
	mov     r1, r1, lsl #28
	movs    r0, r1, lsr #28
	cmpne   r0, #0x6
	bne     branch_21e7530
	ldr     r0,  [pc, #0x24] @ [0x21e7538] (=#0x22158a0)
	add     r1, r4, #0x4
	mov     r2, #0x8
	bl      Function_20c4db0
	mov     r1, #0x8
	strb    r1, [r4, #0x3]
	add     r0, r5, #0x1
	strb    r1, [r4, #0x1]
	and     r5, r0, #0xff
.arm
branch_21e7530: @ 21e7530 :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7538

.word 0x22158a0 @ 0x21e7538
.arm
Function_21e753c: @ 21e753c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	add     r5, r6, #3, 24 @ #0x300
	bl      Function_21e7628
	ldrb    r1, [r6, #0xd0c]
	mov     r4, r0
	mov     r0, #0x24
	mla     r5, r4, r0, r5
	mov     r1, r1, lsl #28
	movs    r0, r1, lsr #28
	cmpne   r0, #0x4
	bne     branch_21e7598
	ldr     r0,  [pc, #0xa8] @ [0x21e761c] (=#0x221760c)
	add     r1, r5, #0x4
	mov     r2, #0x8
	bl      Function_20c4db0
	mov     r1, #0x8
	add     r0, r4, #0x1
	strb    r1, [r5, #0x3]
	mov     r1, #0x6
	strb    r1, [r5, #0x1]
	and     r4, r0, #0xff
	add     r5, r5, #0x24
.arm
branch_21e7598: @ 21e7598 :arm
	ldrb    r0, [r6, #0xd0c]
	mov     r0, r0, lsl #28
	movs    r0, r0, lsr #28
	cmpne   r0, #0x7
	bne     branch_21e75d8
	ldr     r0,  [pc, #0x6c] @ [0x21e7620] (=#0x2215898)
	add     r1, r5, #0x4
	mov     r2, #0x8
	bl      Function_20c4db0
	mov     r1, #0x8
	add     r0, r4, #0x1
	strb    r1, [r5, #0x3]
	mov     r1, #0x9
	strb    r1, [r5, #0x1]
	and     r4, r0, #0xff
	add     r5, r5, #0x24
.arm
branch_21e75d8: @ 21e75d8 :arm
	ldrb    r0, [r6, #0xd0c]
	mov     r0, r0, lsl #28
	movs    r0, r0, lsr #28
	cmpne   r0, #0x8
	bne     branch_21e7614
	ldr     r0,  [pc, #0x30] @ [0x21e7624] (=#0x22158a8)
	add     r1, r5, #0x4
	mov     r2, #0xb
	bl      Function_20c4db0
	mov     r1, #0xb
	add     r0, r4, #0x1
	strb    r1, [r5, #0x3]
	mov     r1, #0xa
	strb    r1, [r5, #0x1]
	and     r4, r0, #0xff
.arm
branch_21e7614: @ 21e7614 :arm
	mov     r0, r4
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e761c

.word 0x221760c @ 0x21e761c
.word 0x2215898 @ 0x21e7620
.word 0x22158a8 @ 0x21e7624
.arm
Function_21e7628: @ 21e7628 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r2, #0x0
	mov     r3, r0
	mov     r1, r2
	add     r12, r0, #3, 24 @ #0x300
.arm
branch_21e763c: @ 21e763c :arm
	ldrb    r4, [r0, #0xd0c]
	mov     r4, r4, lsl #28
	movs    r5, r4, lsr #28
	addne   r4, r1, #0x1
	cmpne   r5, r4
	bne     branch_21e7718
	ldrb    r4, [r3, #0xe7]
	cmp     r4, #0xff
	beq     branch_21e7718
	mov     r6, #0x0
.arm
branch_21e7664: @ 21e7664 :arm
	add     r4, r3, r6
	ldrb    lr, [r4, #0x40]
	cmp     lr, #0x0
	beq     branch_21e768c
	add     r4, r6, #0x1
	add     r5, r12, r6
	and     r6, r4, #0xff
	strb    lr, [r5, #0x4]
	cmp     r6, #0x20
	bcc     branch_21e7664
.arm
branch_21e768c: @ 21e768c :arm
	cmp     r6, #0x0
	moveq   r4, #0x0
	beq     branch_21e76a4
	strb    r6, [r12, #0x3]
	strb    r1, [r12, #0x1]
	mov     r4, #0x1
.arm
branch_21e76a4: @ 21e76a4 :arm
	cmp     r4, #0x0
	ldrb    r4, [r3, #0xe7]
	addne   r2, r2, #0x1
	andne   r2, r2, #0xff
	addne   r12, r12, #0x24
	cmp     r4, #0x1
	bne     branch_21e7718
	mov     r6, #0x0
.arm
branch_21e76c4: @ 21e76c4 :arm
	add     r4, r3, r6
	ldrb    r5, [r4, #0x60]
	cmp     r5, #0x0
	beq     branch_21e76ec
	add     lr, r6, #0x1
	add     r4, r12, r6
	and     r6, lr, #0xff
	strb    r5, [r4, #0x4]
	cmp     r6, #0x20
	bcc     branch_21e76c4
.arm
branch_21e76ec: @ 21e76ec :arm
	cmp     r6, #0x0
	moveq   r4, #0x0
	beq     branch_21e7708
	strb    r6, [r12, #0x3]
	add     lr, r1, #0x3
	strb    lr, [r12, #0x1]
	mov     r4, #0x1
.arm
branch_21e7708: @ 21e7708 :arm
	cmp     r4, #0x0
	addne   r2, r2, #0x1
	andne   r2, r2, #0xff
	addne   r12, r12, #0x24
.arm
branch_21e7718: @ 21e7718 :arm
	add     r1, r1, #0x1
	cmp     r1, #0x3
	add     r3, r3, #1, 24 @ #0x100
	blt     branch_21e763c
	mov     r0, r2
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e7730

.arm
Function_21e7730: @ 21e7730 :arm
	stmfd   sp!, {r3-r5,lr}
	ldrb    r3, [r0, #0xd12]
	mov     r2, #0x0
	mov     r1, r2
	cmp     r3, #0x0
	ble     branch_21e77b8
	add     r3, r0, #0x47
	mov     r12, r0
	add     r3, r3, #1, 22 @ #0x400
.arm
branch_21e7754: @ 21e7754 :arm
	add     r4, r0, r1, lsl #2
	ldrb    r4, [r4, #0x444]
	cmp     r4, #0x0
	bne     branch_21e7794
	add     lr, r12, #1, 22 @ #0x400
	ldrh    r4, [lr, #0xa6]
	ldrb    lr, [r3]
	sub     r5, r4, #0x1
	mov     r4, lr, lsl #25
	cmp     r5, r4, lsr #25
	beq     branch_21e7794
	bic     lr, lr, #0x80
	add     r2, r2, #0x1
	strb    lr, [r3]
	and     r2, r2, #0xff
	b       branch_21e77a0
@ 0x21e7794

.arm
branch_21e7794: @ 21e7794 :arm
	ldrb    lr, [r3]
	orr     lr, lr, #0x80
	strb    lr, [r3]
.arm
branch_21e77a0: @ 21e77a0 :arm
	ldrb    lr, [r0, #0xd12]
	add     r1, r1, #0x1
	add     r3, r3, #0x4
	cmp     r1, lr
	add     r12, r12, #0xc0
	blt     branch_21e7754
.arm
branch_21e77b8: @ 21e77b8 :arm
	mov     r0, r2
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e77c0

.arm
Function_21e77c0: @ 21e77c0 :arm
	ldrb    r12, [r0, #0xd12]
	mov     r3, #0x0
	mov     r2, r3
	cmp     r12, #0x0
	bls     branch_21e77fc
.arm
branch_21e77d4: @ 21e77d4 :arm
	add     r1, r0, r2, lsl #2
	ldrb    r1, [r1, #0x447]
	mov     r1, r1, lsl #24
	movs    r1, r1, lsr #31
	moveq   r3, r2
	beq     branch_21e77fc
	add     r1, r2, #0x1
	and     r2, r1, #0xff
	cmp     r2, r12
	bcc     branch_21e77d4
.arm
branch_21e77fc: @ 21e77fc :arm
	mov     r0, r3
	bx      lr
@ 0x21e7804

.arm
Function_21e7804: @ 21e7804 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	mov     r5, #0x9
	bl      Function_2213898
	cmp     r0, #0xc
	addls   pc, pc, r0, lsl #2
	b       branch_21e78d8
@ 0x21e7828


.incbin "./baserom/overlay/overlay_0004.bin", 0x16aa8, 0x21e78d8 - 0x21e7828


.arm
branch_21e78d8: @ 21e78d8 :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e78e0

.arm
Function_21e78e0: @ 21e78e0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	bl      Function_21e63a4
	mov     r5, r0
	bl      Function_2213898
	cmp     r5, #0x2
	cmpeq   r0, #0x3
	bne     branch_21e7918
	mov     r0, r4
	bl      Function_21e7b20
	mov     r5, r0
	b       branch_21e799c
@ 0x21e7918

.arm
branch_21e7918: @ 21e7918 :arm
	cmp     r5, #0x6
	bne     branch_21e7934
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e7f68
	mov     r5, r0
	b       branch_21e799c
@ 0x21e7934

.arm
branch_21e7934: @ 21e7934 :arm
	cmp     r0, #0x3
	cmpne   r0, #0x6
	bne     branch_21e799c
	mov     r0, r4
	mov     r1, r5
	bl      Function_21e7f68
	mov     r5, r0
	cmp     r5, #0x7
	beq     branch_21e799c
	cmp     r5, #0x3
	bne     branch_21e7970
	mov     r0, r4
	bl      Function_21e7b70
	mov     r5, r0
	b       branch_21e799c
@ 0x21e7970

.arm
branch_21e7970: @ 21e7970 :arm
	cmp     r5, #0x4
	bne     branch_21e7988
	mov     r0, r4
	bl      Function_21e7c5c
	mov     r5, r0
	b       branch_21e799c
@ 0x21e7988

.arm
branch_21e7988: @ 21e7988 :arm
	cmp     r5, #0x5
	bne     branch_21e799c
	mov     r0, r4
	bl      Function_21e7d84
	mov     r5, r0
.arm
branch_21e799c: @ 21e799c :arm
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e79a4


.incbin "./baserom/overlay/overlay_0004.bin", 0x16c24, 0x21e79d8 - 0x21e79a4


.arm
Function_21e79d8: @ 21e79d8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	add     r0, r0, #13, 24 @ #0xd00
	ldrh    r12, [r0, #0x16]
	cmp     r12, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r2, #0x0
	mov     r3, r2
	mov     r1, #0x1
.arm
branch_21e7a08: @ 21e7a08 :arm
	tst     r12, r1, lsl r2
	beq     branch_21e7a28
	cmp     r3, r4
	moveq   r0, r2, lsl #24
	moveq   r0, r0, asr #24
	ldmeqfd sp!, {r4,pc}
	add     r0, r3, #0x1
	and     r3, r0, #0xff
.arm
branch_21e7a28: @ 21e7a28 :arm
	add     r0, r2, #0x1
	and     r2, r0, #0xff
	cmp     r2, #0xd
	bcc     branch_21e7a08
	mvn     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21e7a40

.arm
Function_21e7a40: @ 21e7a40 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r4, r0
	cmp     r5, #0x3
	beq     branch_21e7a70
	cmp     r5, #0x4
	beq     branch_21e7a98
	cmp     r5, #0x5
	beq     branch_21e7ae4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7a70

.arm
branch_21e7a70: @ 21e7a70 :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	add     r0, r4, #13, 24 @ #0xd00
	ldrsb   r2, [r0, #0x11]
	ldr     r0,  [pc, #0x8c] @ [0x21e7b18] (=#0x2215e48)
	ldr     r1,  [pc, #0x8c] @ [0x21e7b1c] (=#0x2215e50)
	mov     r3, #2, 12 @ #0x200000
	bl      Function_21e808c
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7a98

.arm
branch_21e7a98: @ 21e7a98 :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	ldrb    r2, [r4, #0xd0f]
	mov     r0, #0xc0
	add     r1, r4, #0x74
	.word 0xe16c0082 @ cmn     r12, r2, lsl #1
	add     r0, r4, r12
	add     r0, r0, #1, 22 @ #0x400
	ldrh    r2, [r0, #0xa6]
	add     r0, r4, #0x7c
	add     r3, r1, #0x400
	add     r1, r0, #0x400
	add     r0, r3, r12
	add     r1, r1, r12
	sub     r2, r2, #0x1
	mov     r3, #0x300000
	bl      Function_21e808c
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7ae4

.arm
branch_21e7ae4: @ 21e7ae4 :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	ldrb    r3, [r4, #0xd0f]
	add     r1, r4, #0x304
	mov     r0, #0x24
	add     r2, r4, #0xd00
	mla     r1, r3, r0, r1
	ldrsb   r2, [r2, #0x11]
	ldr     r0,  [pc, #0x8] @ [0x21e7b18] (=#0x2215e48)
	mov     r3, #0x300000
	bl      Function_21e808c
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7b18

.word 0x2215e48 @ 0x21e7b18
.word 0x2215e50 @ 0x21e7b1c
.arm
Function_21e7b20: @ 21e7b20 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	mov     r0, #0x0
	strb    r0, [r4, #0xd11]
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	add     r0, r4, #13, 24 @ #0xd00
	ldrsb   r2, [r0, #0x11]
	ldr     r0,  [pc, #0x10] @ [0x21e7b68] (=#0x2215e48)
	ldr     r1,  [pc, #0x10] @ [0x21e7b6c] (=#0x2215e50)
	mov     r3, #0x200000
	bl      Function_21e808c
	mov     r0, #0x3
	ldmfd   sp!, {r4,pc}
@ 0x21e7b68

.word 0x2215e48 @ 0x21e7b68
.word 0x2215e50 @ 0x21e7b6c
.arm
Function_21e7b70: @ 21e7b70 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3880
	ldr     r3, [r4, #0xcb0]
	ldr     r2, [r4, #0xcb4]
	subs    r3, r0, r3
	sbc     r0, r1, r2
	mov     r1, r0, lsl #6
	ldr     r2,  [pc, #0x70] @ [0x21e7c08] (=#0x82ea)
	orr     r1, r1, r3, lsr #26
	mov     r0, r3, lsl #6
	mov     r3, #0x0
	bl      Function_20e1ed4
	cmp     r1, #0x0
	cmpeq   r0, #0x12c
	bcc     branch_21e7c00
	add     r0, r4, #0xd00
	ldrsb   r1, [r0, #0x11]
	add     r1, r1, #0x2
	strb    r1, [r4, #0xd11]
	ldrsb   r0, [r0, #0x11]
	cmp     r0, #0xd
	blt     branch_21e7bdc
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_21e7ea4
	ldmfd   sp!, {r4,pc}
@ 0x21e7bdc

.arm
branch_21e7bdc: @ 21e7bdc :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	add     r0, r4, #0xd00
	ldrsb   r2, [r0, #0x11]
	ldr     r0,  [pc, #0x14] @ [0x21e7c0c] (=#0x2215e48)
	ldr     r1,  [pc, #0x14] @ [0x21e7c10] (=#0x2215e50)
	mov     r3, #0x200000
	bl      Function_21e808c
.arm
branch_21e7c00: @ 21e7c00 :arm
	mov     r0, #0x3
	ldmfd   sp!, {r4,pc}
@ 0x21e7c08

.word 0x82ea @ 0x21e7c08
.word 0x2215e48 @ 0x21e7c0c
.word 0x2215e50 @ 0x21e7c10
.arm
Function_21e7c14: @ 21e7c14 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x0
	strb    r0, [r4, #0xd15]
	ldrb    r2, [r4, #0xd0b]
	mov     r1, r2, lsl #24
	mov     r1, r1, lsr #28
	add     r1, r1, #0x1
	and     r1, r1, #0xff
	bic     r2, r2, #0xf0
	mov     r1, r1, lsl #28
	orr     r1, r2, r1, lsr #24
	strb    r1, [r4, #0xd0b]
	bl      Function_21e73fc
	mov     r0, #0x1
	strb    r0, [r4, #0xd11]
	mov     r0, #0x3
	ldmfd   sp!, {r4,pc}
@ 0x21e7c5c

.arm
Function_21e7c5c: @ 21e7c5c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3880
	ldr     r3, [r4, #0xcb0]
	ldr     r2, [r4, #0xcb4]
	subs    r3, r0, r3
	sbc     r0, r1, r2
	mov     r1, r0, lsl #6
	ldr     r2,  [pc, #0xfc] @ [0x21e7d80] (=#0x82ea)
	orr     r1, r1, r3, lsr #26
	mov     r0, r3, lsl #6
	mov     r3, #0x0
	bl      Function_20e1ed4
	cmp     r1, #0x0
	cmpeq   r0, #0x96
	bcs     branch_21e7cb8
	ldrb    r0, [r4, #0xd0f]
	add     r0, r4, r0, lsl #2
	ldrb    r0, [r0, #0x447]
	mov     r0, r0, lsl #24
	mov     r0, r0, lsr #31
	cmp     r0, #0x1
	bne     branch_21e7d78
.arm
branch_21e7cb8: @ 21e7cb8 :arm
	ldrb    r1, [r4, #0xd0f]
	add     r0, r4, #0x47
	add     r2, r0, #1, 22 @ #0x400
	ldrb    r0, [r2, r1, lsl #0x2]
	orr     r0, r0, #0x80
	strb    r0, [r2, r1, lsl #0x2]
	ldrb    r2, [r4, #0xd12]
	ldrb    r1, [r4, #0xd0f]
	cmp     r1, r2
	bcs     branch_21e7d10
.arm
branch_21e7ce0: @ 21e7ce0 :arm
	add     r0, r4, r1, lsl #2
	ldrb    r0, [r0, #0x447]
	mov     r0, r0, lsl #24
	movs    r0, r0, lsr #31
	beq     branch_21e7d10
	ldrb    r0, [r4, #0xd0f]
	add     r0, r0, #0x1
	strb    r0, [r4, #0xd0f]
	ldrb    r2, [r4, #0xd12]
	and     r1, r0, #0xff
	cmp     r1, r2
	bcc     branch_21e7ce0
.arm
branch_21e7d10: @ 21e7d10 :arm
	cmp     r2, r1
	bhi     branch_21e7d30
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x4
	strb    r2, [r4, #0xd0f]
	bl      Function_21e7ea4
	ldmfd   sp!, {r4,pc}
@ 0x21e7d30

.arm
branch_21e7d30: @ 21e7d30 :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	ldrb    r2, [r4, #0xd0f]
	mov     r0, #0xc0
	add     r1, r4, #0x74
	.word 0xe16c0082 @ cmn     r12, r2, lsl #1
	add     r0, r4, r12
	add     r0, r0, #1, 22 @ #0x400
	ldrh    r2, [r0, #0xa6]
	add     r0, r4, #0x7c
	add     r3, r1, #1, 22 @ #0x400
	add     r1, r0, #1, 22 @ #0x400
	add     r0, r3, r12
	add     r1, r1, r12
	sub     r2, r2, #0x1
	mov     r3, #0x300000
	bl      Function_21e808c
.arm
branch_21e7d78: @ 21e7d78 :arm
	mov     r0, #0x4
	ldmfd   sp!, {r4,pc}
@ 0x21e7d80

.word 0x82ea @ 0x21e7d80
.arm
Function_21e7d84: @ 21e7d84 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3880
	ldr     r3, [r4, #0xcb0]
	ldr     r2, [r4, #0xcb4]
	subs    r3, r0, r3
	sbc     r0, r1, r2
	mov     r1, r0, lsl #6
	ldr     r2,  [pc, #0xf0] @ [0x21e7e9c] (=#0x82ea)
	orr     r1, r1, r3, lsr #26
	mov     r0, r3, lsl #6
	mov     r3, #0x0
	bl      Function_20e1ed4
	cmp     r1, #0x0
	cmpeq   r0, #0x96
	bcs     branch_21e7de4
	ldrb    r1, [r4, #0xd0f]
	mov     r0, #0x24
	mla     r0, r1, r0, r4
	ldrb    r0, [r0, #0x300]
	mov     r0, r0, lsl #28
	mov     r0, r0, lsr #28
	cmp     r0, #0x1
	bne     branch_21e7e94
.arm
branch_21e7de4: @ 21e7de4 :arm
	ldrb    r1, [r4, #0xd0f]
	mov     r0, #0x24
	add     r2, r4, #0x300
	.word 0xe1610081 @ cmn     r1, r1, lsl #1
	ldrb    r0, [r2, r1]
	bic     r0, r0, #0xf
	strb    r0, [r2, r1]
	ldrb    r0, [r4, #0xd0f]
	add     r0, r0, #0x1
	strb    r0, [r4, #0xd0f]
	ldrb    r1, [r4, #0xd10]
	and     r0, r0, #0xff
	cmp     r1, r0
	bhi     branch_21e7e3c
	ldrb    r1, [r4, #0xd15]
	mov     r0, #0x0
	add     r1, r1, #0x1
	strb    r1, [r4, #0xd15]
	strb    r0, [r4, #0xd0f]
	ldrb    r0, [r4, #0xd15]
	bl      Function_21e79d8
	strb    r0, [r4, #0xd11]
.arm
branch_21e7e3c: @ 21e7e3c :arm
	add     r0, r4, #0xd00
	ldrsb   r0, [r0, #0x11]
	cmp     r0, #0x0
	bge     branch_21e7e64
	mov     r2, #0x0
	mov     r0, r4
	mov     r1, #0x5
	strb    r2, [r4, #0xd15]
	bl      Function_21e7ea4
	ldmfd   sp!, {r4,pc}
@ 0x21e7e64

.arm
branch_21e7e64: @ 21e7e64 :arm
	bl      Function_20c3880
	str     r0, [r4, #0xcb0]
	str     r1, [r4, #0xcb4]
	ldrb    r3, [r4, #0xd0f]
	add     r1, r4, #0x304
	mov     r0, #0x24
	add     r2, r4, #0xd00
	mla     r1, r3, r0, r1
	ldrsb   r2, [r2, #0x11]
	ldr     r0,  [pc, #0x10] @ [0x21e7ea0] (=#0x2215e48)
	mov     r3, #0x300000
	bl      Function_21e808c
.arm
branch_21e7e94: @ 21e7e94 :arm
	mov     r0, #0x5
	ldmfd   sp!, {r4,pc}
@ 0x21e7e9c

.word 0x82ea @ 0x21e7e9c
.word 0x2215e48 @ 0x21e7ea0
.arm
Function_21e7ea4: @ 21e7ea4 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x3
	beq     branch_21e7ecc
	cmp     r4, #0x4
	beq     branch_21e7f2c
	cmp     r4, #0x5
	beq     branch_21e7f38
	b       branch_21e7f58
@ 0x21e7ecc

.arm
branch_21e7ecc: @ 21e7ecc :arm
	ldrb    r1, [r5, #0xd12]
	cmp     r1, #0x0
	addeq   r1, r5, #13, 24 @ #0xd00
	ldreqh  r1, [r1, #0x16]
	cmpeq   r1, #0x0
	beq     branch_21e7f08
	mov     r0, #0x1
	bl      Function_21e73fc
	cmp     r0, #0x0
	movne   r4, #0x4
	bne     branch_21e7f58
	mov     r0, r5
	bl      Function_21e802c
	mov     r4, r0
	b       branch_21e7f58
@ 0x21e7f08

.arm
branch_21e7f08: @ 21e7f08 :arm
	ldrb    r1, [r5, #0xd0b]
	mov     r1, r1, lsl #24
	mov     r1, r1, lsr #28
	cmp     r1, #0x1
	movcs   r4, #0x6
	bcs     branch_21e7f58
	bl      Function_21e7c14
	mov     r4, r0
	b       branch_21e7f58
@ 0x21e7f2c

.arm
branch_21e7f2c: @ 21e7f2c :arm
	bl      Function_21e802c
	mov     r4, r0
	b       branch_21e7f58
@ 0x21e7f38

.arm
branch_21e7f38: @ 21e7f38 :arm
	ldrb    r1, [r5, #0xd0b]
	mov     r1, r1, lsl #24
	mov     r1, r1, lsr #28
	cmp     r1, #0x1
	movcs   r4, #0x6
	bcs     branch_21e7f58
	bl      Function_21e7c14
	mov     r4, r0
.arm
branch_21e7f58: @ 21e7f58 :arm
	mov     r0, r4
	bl      Function_21e7a40
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7f68

.arm
Function_21e7f68: @ 21e7f68 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	cmp     r4, #0x11
	moveq   r0, r4
	ldmeqfd sp!, {r3-r5,pc}
	ldrb    r2, [r5, #0xd12]
	mov     r1, #0x0
	cmp     r2, #0x0
	bls     branch_21e7fb0
.arm
branch_21e7f90: @ 21e7f90 :arm
	add     r0, r5, r1, lsl #2
	ldrb    r0, [r0, #0x444]
	cmp     r0, #0x0
	beq     branch_21e7fb0
	add     r0, r1, #0x1
	and     r1, r0, #0xff
	cmp     r1, r2
	bcc     branch_21e7f90
.arm
branch_21e7fb0: @ 21e7fb0 :arm
	cmp     r4, #0x6
	bne     branch_21e7fe4
	cmp     r2, r1
	bne     branch_21e8010
	cmp     r1, #0x0
	bne     branch_21e7fd4
	mov     r0, #0x5
	bl      Function_21e63c0
	b       branch_21e7fdc
@ 0x21e7fd4

.arm
branch_21e7fd4: @ 21e7fd4 :arm
	mov     r0, #0x6
	bl      Function_21e63c0
.arm
branch_21e7fdc: @ 21e7fdc :arm
	mov     r0, #0x11
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e7fe4

.arm
branch_21e7fe4: @ 21e7fe4 :arm
	cmp     r2, #0x0
	moveq   r0, r4
	ldmeqfd sp!, {r3-r5,pc}
	cmp     r2, r1
	moveq   r0, r4
	ldmeqfd sp!, {r3-r5,pc}
	add     r0, r5, r1, lsl #2
	ldrb    r0, [r0, #0x446]
	cmp     r0, #0x14
	movcc   r0, r4
	ldmccfd sp!, {r3-r5,pc}
.arm
branch_21e8010: @ 21e8010 :arm
	strb    r1, [r5, #0xd13]
	bl      Function_22132c4
	cmp     r0, #0x1
	strneb  r4, [r5, #0xd0e]
	movne   r4, #0x7
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e802c

.arm
Function_21e802c: @ 21e802c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0xd00
	ldrh    r0, [r0, #0x16]
	cmp     r0, #0x0
	beq     branch_21e8068
	mov     r0, #0x2
	bl      Function_21e73fc
	cmp     r0, #0x0
	beq     branch_21e8068
	mov     r0, #0x0
	bl      Function_21e79d8
	strb    r0, [r4, #0xd11]
	mov     r0, #0x5
	ldmfd   sp!, {r4,pc}
@ 0x21e8068

.arm
branch_21e8068: @ 21e8068 :arm
	ldrb    r0, [r4, #0xd0b]
	mov     r0, r0, lsl #24
	mov     r0, r0, lsr #28
	cmp     r0, #0x1
	movcs   r0, #0x6
	ldmcsfd sp!, {r4,pc}
	mov     r0, r4
	bl      Function_21e7c14
	ldmfd   sp!, {r4,pc}
@ 0x21e808c

.arm
Function_21e808c: @ 21e808c :arm
	stmfd   sp!, {r3,lr}
	ldr     r12,  [pc, #0x14] @ [0x21e80ac] (=#0x22158b4)
	cmp     r2, #0xc
	movgt   r2, #0xc
	ldr     r2, [r12, r2, lsl #0x2]
	orr     r2, r3, r2
	bl      Function_221312c
	ldmfd   sp!, {r3,pc}
@ 0x21e80ac

.word 0x22158b4 @ 0x21e80ac
.arm
Function_21e80b0: @ 21e80b0 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	bl      Function_2213898
	mov     r4, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	cmp     r4, #0x1
	bne     branch_21e811c
	ldrb    r1, [r0, #0xd0a]
	mov     r0, #0x0
	str     r1, [sp]
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	bl      Function_21e73fc
	ldr     r1,  [pc, #0x40] @ [0x21e8134] (=#0x21e6b04)
	add     r0, sp, #0x0
	bl      Function_2212e38
	cmp     r0, #0x1
	beq     branch_21e8108
	cmp     r0, #0x4
	blt     branch_21e8128
.arm
branch_21e8108: @ 21e8108 :arm
	mov     r0, #0x1
	bl      Function_21e63c0
	add     sp, sp, #0x10
	mov     r0, #0x11
	ldmfd   sp!, {r4,pc}
@ 0x21e811c

.arm
branch_21e811c: @ 21e811c :arm
	add     sp, sp, #0x10
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21e8128

.arm
branch_21e8128: @ 21e8128 :arm
	mov     r0, #0x2
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x21e8134

.word 0x21e6b04 @ 0x21e8134
.arm
Function_21e8138: @ 21e8138 :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_21e63a4
	mov     r4, r0
	mov     r0, #0x10
	bl      Function_21e62ec
	mov     r5, r0
	bl      Function_2213898
	cmp     r0, #0x9
	bne     branch_21e81dc
	sub     r0, r4, #0xa
	cmp     r0, #0x5
	addls   pc, pc, r0, lsl #2
	b       branch_21e822c
@ 0x21e816c


.incbin "./baserom/overlay/overlay_0004.bin", 0x173ec, 0x21e81dc - 0x21e816c


.arm
branch_21e81dc: @ 21e81dc :arm
	cmp     r4, #0xb
	beq     branch_21e8204
	cmp     r4, #0xe
	beq     branch_21e8210
	cmp     r4, #0xf
	bne     branch_21e8218
	mov     r0, r5
	bl      Function_21e83c0
	mov     r4, r0
	b       branch_21e822c
@ 0x21e8204

.arm
branch_21e8204: @ 21e8204 :arm
	bl      Function_21e83d4
	mov     r4, r0
	b       branch_21e822c
@ 0x21e8210

.arm
branch_21e8210: @ 21e8210 :arm
	bl      Function_21d59f0
	bl      Function_21d58f8
.arm
branch_21e8218: @ 21e8218 :arm
	ldrb    r0, [r5, #0xd13]
	mov     r1, #0x2
	mov     r4, #0xb
	add     r0, r5, r0, lsl #2
	strb    r1, [r0, #0x444]
.arm
branch_21e822c: @ 21e822c :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e8234


.incbin "./baserom/overlay/overlay_0004.bin", 0x174b4, 0x21e83c0 - 0x21e8234


.arm
Function_21e83c0: @ 21e83c0 :arm
	stmfd   sp!, {r3,lr}
	ldrb    r0, [r0, #0xd0d]
	bl      Function_21e63f8
	mov     r0, #0x10
	ldmfd   sp!, {r3,pc}
@ 0x21e83d4

.arm
Function_21e83d4: @ 21e83d4 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2207edc
	cmp     r0, #0x0
	movne   r0, #0xb
	ldmnefd sp!, {r3,pc}
	bl      Function_22089e8
	cmp     r0, #0x0
	mvnne   r1, #0x26
	cmpne   r0, r1
	moveq   r0, #0x9
	movne   r0, #0xb
	ldmfd   sp!, {r3,pc}
@ 0x21e8404


.incbin "./baserom/overlay/overlay_0004.bin", 0x17684, 0x21e85f4 - 0x21e8404


.arm
Function_21e85f4: @ 21e85f4 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x18
	add     r1, sp, #0x0
	bl      Function_21e86d4
	ldr     r1,  [pc, #0x1c] @ [0x21e8628] (=#0x221768c)
	add     r0, sp, #0x0
	mov     r2, #0x8
	bl      Function_20d5190
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	add     sp, sp, #0x18
	ldmfd   sp!, {r3,pc}
@ 0x21e8628

.word 0x221768c @ 0x21e8628

.incbin "./baserom/overlay/overlay_0004.bin", 0x178ac, 0x21e8654 - 0x21e862c


.arm
Function_21e8654: @ 21e8654 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x18
	mov     r4, r1
	add     r1, sp, #0x0
	bl      Function_21e86d4
	ldr     r1,  [pc, #0x2c] @ [0x21e869c] (=#0x221768c)
	add     r0, sp, #0x0
	mov     r2, #0x8
	bl      Function_20d5190
	cmp     r0, #0x0
	addne   sp, sp, #0x18
	ldmnefd sp!, {r4,pc}
	add     r0, sp, #0x8
	mov     r1, r4
	mov     r2, #0xa
	bl      Function_20c4db0
	add     sp, sp, #0x18
	ldmfd   sp!, {r4,pc}
@ 0x21e869c

.word 0x221768c @ 0x21e869c
.arm
Function_21e86a0: @ 21e86a0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x14] @ [0x21e86c0] (=#0x2217698)
	mov     r2, #0x8
	bl      Function_20d5190
	cmp     r0, #0x0
	moveq   r0, #0x1
	movne   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21e86c0

.word 0x2217698 @ 0x21e86c0

.incbin "./baserom/overlay/overlay_0004.bin", 0x17944, 0x21e86d4 - 0x21e86c4


.arm
Function_21e86d4: @ 21e86d4 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x18
	ldr     lr,  [pc, #0xec] @ [0x21e87d0] (=#0x2215943)
	add     r12, sp, #0x0
	mov     r4, r1
	mov     r3, #0xc
.arm
branch_21e86ec: @ 21e86ec :arm
	ldrb    r2, [lr]
	ldrb    r1, [lr, #0x1]
	add     lr, lr, #0x2
	strb    r2, [r12]
	strb    r1, [r12, #0x1]
	add     r12, r12, #0x2
	subs    r3, r3, #0x1
	bne     branch_21e86ec
	mov     r1, r4
	mov     r2, #0x20
	mov     r3, #0x18
	bl      Function_21e8a40
	ldr     r0,  [pc, #0xb0] @ [0x21e87d4] (=#0x2217624)
	mov     r3, #0x0
.arm
branch_21e8724: @ 21e8724 :arm
	ldr     r1, [r0, #0x8]
	ldrb    r2, [r4, r3]
	ldrsb   r1, [r1, r3]
	eor     r1, r2, r1
	strb    r1, [r4, r3]
	add     r3, r3, #0x1
	cmp     r3, #0x18
	blt     branch_21e8724
	mov     r7, #0x0
	add     r12, sp, #0x0
	mov     r1, #0xff
.arm
branch_21e8750: @ 21e8750 :arm
	and     lr, r7, #0xff
	ldrb    r0, [r12, lr]
	mov     r5, lr
	ldrb    r6, [r4, r7]
	cmp     r0, #0xff
	beq     branch_21e8794
.arm
branch_21e8768: @ 21e8768 :arm
	add     r3, r12, r5
	ldrb    r5, [r12, r5]
	ldrb    r0, [r12, lr]
	ldrb    r2, [r4, r5]
	mov     lr, r5
	strb    r6, [r4, r0]
	strb    r1, [r3]
	ldrb    r0, [r12, r5]
	mov     r6, r2
	cmp     r0, #0xff
	bne     branch_21e8768
.arm
branch_21e8794: @ 21e8794 :arm
	add     r7, r7, #0x1
	cmp     r7, #0x18
	blt     branch_21e8750
	ldr     r0,  [pc, #0x2c] @ [0x21e87d4] (=#0x2217624)
	mov     r3, #0x0
.arm
branch_21e87a8: @ 21e87a8 :arm
	ldr     r1, [r0]
	ldrb    r2, [r4, r3]
	ldrsb   r1, [r1, r3]
	eor     r1, r2, r1
	strb    r1, [r4, r3]
	add     r3, r3, #0x1
	cmp     r3, #0x18
	blt     branch_21e87a8
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e87d0

.word 0x2215943 @ 0x21e87d0
.word 0x2217624 @ 0x21e87d4

.incbin "./baserom/overlay/overlay_0004.bin", 0x17a58, 0x21e89d0 - 0x21e87d8


.arm
Function_21e89d0: @ 21e89d0 :arm
	cmp     r0, #0x41
	bcc     branch_21e89e4
	cmp     r0, #0x5a
	subls   r0, r0, #0x41
	bxls    lr
.arm
branch_21e89e4: @ 21e89e4 :arm
	cmp     r0, #0x61
	bcc     branch_21e89fc
	cmp     r0, #0x7a
	subls   r0, r0, #0x61
	addls   r0, r0, #0x1a
	bxls    lr
.arm
branch_21e89fc: @ 21e89fc :arm
	cmp     r0, #0x30
	bcc     branch_21e8a14
	cmp     r0, #0x39
	subls   r0, r0, #0x30
	addls   r0, r0, #0x34
	bxls    lr
.arm
branch_21e8a14: @ 21e8a14 :arm
	cmp     r0, #0x2b
	moveq   r0, #0x3e
	bxeq    lr
	cmp     r0, #0x2f
	moveq   r0, #0x3f
	bxeq    lr
	cmp     r0, #0x3d
	movne   r0, #0x1
	moveq   r0, #0x0
	rsb     r0, r0, #0x0
	bx      lr
@ 0x21e8a40

.arm
Function_21e8a40: @ 21e8a40 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	add     r4, r2, r2, lsl #1
	str     r0, [sp]
	mov     r0, r4, lsr #2
	str     r1, [sp, #0x4]
	cmp     r3, r4, lsr #2
	str     r0, [sp, #0x8]
	bcc     branch_21e8a74
	and     r11, r2, #0x3
	sub     r0, r2, r11
	str     r0, [sp, #0xc]
	b       branch_21e8a80
@ 0x21e8a74

.arm
branch_21e8a74: @ 21e8a74 :arm
	add     sp, sp, #0x18
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x21e8a80

.arm
branch_21e8a80: @ 21e8a80 :arm
	cmp     r0, #0x0
	mov     r7, #0x0
	ble     branch_21e8b08
	mov     r9, r7
	add     r5, sp, #0x14
	mov     r4, #0x6
.arm
branch_21e8a98: @ 21e8a98 :arm
	ldr     r0, [sp]
	mov     r6, #0x0
	mov     r8, r6
	add     r10, r0, r7
.arm
branch_21e8aa8: @ 21e8aa8 :arm
	ldrb    r0, [r10], #0x1
	bl      Function_21e89d0
	rsb     r1, r8, #0x3
	mul     r2, r1, r4
	orr     r6, r6, r0, lsl r2
	add     r8, r8, #0x1
	cmp     r8, #0x4
	blt     branch_21e8aa8
	ldr     r0, [sp, #0x4]
	add     r1, r9, r9, lsl #1
	mov     r2, #0x0
	str     r6, [sp, #0x14]
	add     r1, r0, r1
.arm
branch_21e8adc: @ 21e8adc :arm
	rsb     r0, r2, #0x2
	ldrb    r0, [r5, r0]
	add     r2, r2, #0x1
	cmp     r2, #0x3
	strb    r0, [r1], #0x1
	blt     branch_21e8adc
	ldr     r0, [sp, #0xc]
	add     r7, r7, #0x4
	cmp     r7, r0
	add     r9, r9, #0x1
	blt     branch_21e8a98
.arm
branch_21e8b08: @ 21e8b08 :arm
	cmp     r11, #0x0
	beq     branch_21e8b9c
	mov     r5, #0x0
	mov     r6, r5
	str     r5, [sp, #0x10]
	ble     branch_21e8b5c
	ldr     r1, [sp]
	ldr     r0, [sp, #0xc]
	mov     r8, r5
	add     r4, r1, r0
	mov     r7, #0x6
.arm
branch_21e8b34: @ 21e8b34 :arm
	ldrb    r0, [r4], #0x1
	bl      Function_21e89d0
	rsb     r1, r6, #0x3
	mul     r2, r1, r7
	orr     r5, r5, r0, lsl r2
	add     r6, r6, #0x1
	cmp     r6, r11
	orr     r8, r8, r5
	blt     branch_21e8b34
	str     r8, [sp, #0x10]
.arm
branch_21e8b5c: @ 21e8b5c :arm
	cmp     r11, #0x0
	mov     r3, #0x0
	ble     branch_21e8b9c
	ldr     r0, [sp, #0xc]
	add     r1, r0, r0, lsl #1
	mov     r0, r1, asr #1
	add     r1, r1, r0, lsr #30
	ldr     r0, [sp, #0x4]
	add     r2, r0, r1, asr #2
	add     r1, sp, #0x10
.arm
branch_21e8b84: @ 21e8b84 :arm
	rsb     r0, r3, #0x2
	ldrb    r0, [r1, r0]
	add     r3, r3, #0x1
	cmp     r3, r11
	strb    r0, [r2], #0x1
	blt     branch_21e8b84
.arm
branch_21e8b9c: @ 21e8b9c :arm
	ldr     r0, [sp, #0x8]
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x21e8ba8


.incbin "./baserom/overlay/overlay_0004.bin", 0x17e28, 0x21e8e98 - 0x21e8ba8


.arm
Function_21e8e98: @ 21e8e98 :arm
	ldr     r0,  [pc, #0x0] @ [0x21e8ea0] (=#0x1ca0)
	bx      lr
@ 0x21e8ea0

.word 0x1ca0 @ 0x21e8ea0

.incbin "./baserom/overlay/overlay_0004.bin", 0x18124, 0x21e91b4 - 0x21e8ea4


.arm
Function_21e91b4: @ 21e91b4 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21e8e98
	mov     r1, r0
	mov     r0, #0x1
	bl      Function_21d7780
	ldr     r2,  [pc, #0x3c] @ [0x21e9210] (=#0x221ae44)
	mov     r1, #0x790
	str     r0, [r2, #0x4]
	mov     r0, #0x1
	bl      Function_21d7780
	ldr     r3,  [pc, #0x28] @ [0x21e9210] (=#0x221ae44)
	mov     r1, #0x0
	mov     r2, #0x790
	str     r0, [r3]
	bl      Function_20c4cf4
	ldr     r1,  [pc, #0x14] @ [0x21e9210] (=#0x221ae44)
	mov     r2, #0x0
	ldr     r3, [r1]
	mov     r0, #0x1
	str     r4, [r3]
	str     r2, [r1, #0x8]
	ldmfd   sp!, {r4,pc}
@ 0x21e9210

.word 0x221ae44 @ 0x21e9210

.incbin "./baserom/overlay/overlay_0004.bin", 0x18494, 0x21e963c - 0x21e9214


.arm
Function_21e963c: @ 21e963c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r1, r1, lsl #16
	mov     r1, r1, lsr #16
	mov     r3, r1, asr #8
	mov     r1, r1, lsl #8
	mov     r4, r2
	mov     r12, #0x2
	and     r2, r3, #0xff
	and     r1, r1, #0xff00
	strb    r12, [r4, #0x1]
	orr     r1, r2, r1
	mov     r5, r0
	strh    r1, [r4, #0x2]
	bl      Function_21eaf1c
	mvn     r1, #0x0
	str     r0, [r4, #0x4]
	cmp     r0, r1
	bne     branch_21e96a8
	mov     r0, r5
	bl      Function_220854c
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r0, #0xc]
	ldr     r0, [r0]
	ldr     r0, [r0]
	str     r0, [r4, #0x4]
.arm
branch_21e96a8: @ 21e96a8 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e96b0

.arm
Function_21e96b0: @ 21e96b0 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	ldr     r1,  [pc, #0x34] @ [0x21e96f4] (=#0x221ae58)
	mov     r0, #0x8
	str     r1, [sp]
	ldr     r1,  [pc, #0x2c] @ [0x21e96f8] (=#0x221ae50)
	str     r0, [sp, #0x4]
	ldr     r0, [r1, #0x4]
	ldr     r2, [r1, #0x50]
	ldr     r1,  [pc, #0x20] @ [0x21e96fc] (=#0x221ae60)
	mov     r3, #0x0
	bl      Function_21eae5c
	bl      Function_21ea840
	ldr     r1,  [pc, #0xc] @ [0x21e96f8] (=#0x221ae50)
	str     r0, [r1, #0x54]
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x21e96f4

.word 0x221ae58 @ 0x21e96f4
.word 0x221ae50 @ 0x21e96f8
.word 0x221ae60 @ 0x21e96fc
.arm
Function_21e9700: @ 21e9700 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x40
	mov     r4, r0
	ldr     r0,  [pc, #0xc8] @ [0x21e97dc] (=#0x221aeec)
	mov     r1, r4
	bl      Function_20d8b7c
	ldr     r0,  [pc, #0xc0] @ [0x21e97e0] (=#0x221ae50)
	mvn     r1, #0x0
	str     r1, [r0, #0x4]
	bl      Function_21ea8a4
	ldr     r0,  [pc, #0xb4] @ [0x21e97e4] (=#0x221aeac)
	ldrsb   r5, [r0]
	cmp     r5, #0x0
	bne     branch_21e9748
	ldr     r1,  [pc, #0xa8] @ [0x21e97e8] (=#0x22176a4)
	add     r0, sp, #0x0
	mov     r2, r4
	bl      Function_20d7510
.arm
branch_21e9748: @ 21e9748 :arm
	cmp     r5, #0x0
	ldrne   r0,  [pc, #0x90] @ [0x21e97e4] (=#0x221aeac)
	ldr     r1,  [pc, #0x94] @ [0x21e97ec] (=#0x6cfc)
	ldr     r2,  [pc, #0x94] @ [0x21e97f0] (=#0x221ae58)
	addeq   r0, sp, #0x0
	bl      Function_21e963c
	cmp     r0, #0x0
	addeq   sp, sp, #0x40
	ldmeqfd sp!, {r3-r5,pc}
	mov     r0, #0x2
	mov     r1, r0
	mov     r2, #0x0
	bl      Function_21eacdc
	ldr     r2,  [pc, #0x5c] @ [0x21e97e0] (=#0x221ae50)
	mvn     r1, #0x0
	cmp     r0, r1
	str     r0, [r2, #0x4]
	addeq   sp, sp, #0x40
	ldmeqfd sp!, {r3-r5,pc}
	mov     r1, #0x9
	mov     r0, r4
	strb    r1, [r2, #0x10]
	bl      Function_20d8b60
	mov     r5, r0
	ldr     r0,  [pc, #0x44] @ [0x21e97f4] (=#0x221ae65)
	mov     r1, r4
	add     r2, r5, #0x1
	bl      Function_20d50b8
	ldr     r0,  [pc, #0x20] @ [0x21e97e0] (=#0x221ae50)
	add     r1, r5, #0x6
	str     r1, [r0, #0x50]
	bl      Function_21e96b0
	ldr     r0,  [pc, #0x10] @ [0x21e97e0] (=#0x221ae50)
	mov     r1, #0x0
	str     r1, [r0, #0x58]
	add     sp, sp, #0x40
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e97dc

.word 0x221aeec @ 0x21e97dc
.word 0x221ae50 @ 0x21e97e0
.word 0x221aeac @ 0x21e97e4
.word 0x22176a4 @ 0x21e97e8
.word 0x6cfc @ 0x21e97ec
.word 0x221ae58 @ 0x21e97f0
.word 0x221ae65 @ 0x21e97f4

.incbin "./baserom/overlay/overlay_0004.bin", 0x18a78, 0x21e99ec - 0x21e97f8


.arm
Function_21e99ec: @ 21e99ec :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r2, [r4, #0x10]
	cmp     r2, #0x0
	ldmeqfd sp!, {r4,pc}
	bl      Function_21e9bc4
	ldr     r1, [r4, #0x10]
	blx     r1
	ldmfd   sp!, {r4,pc}
@ 0x21e9a10

.arm
Function_21e9a10: @ 21e9a10 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x4]
	ldr     r0, [r4, #0xc]
	add     r2, r1, r0
	str     r2, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	mul     r1, r2, r0
	ldr     r0, [r4, #0x14]
	bl      Function_21d7894
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	ldr     r0,  [pc, #0x10] @ [0x21e9a5c] (=#0x2217790)
	ldr     r1,  [pc, #0x10] @ [0x21e9a60] (=#0x221779c)
	ldr     r2,  [pc, #0x10] @ [0x21e9a64] (=#0x22176fc)
	mov     r3, #0x41
	bl      Function_20d407c
	ldmfd   sp!, {r4,pc}
@ 0x21e9a5c

.word 0x2217790 @ 0x21e9a5c
.word 0x221779c @ 0x21e9a60
.word 0x22176fc @ 0x21e9a64
.arm
Function_21e9a68: @ 21e9a68 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	mov     r1, r2
	bl      Function_21e9bc4
	ldr     r2, [r5, #0x8]
	mov     r1, r4
	bl      Function_20d50b8
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9a8c

.arm
Function_21e9a8c: @ 21e9a8c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r0, #0x18
	mov     r6, r1
	mov     r5, r2
	bl      Function_21d7880
	movs    r4, r0
	bne     branch_21e9ac0
	ldr     r0,  [pc, #0x88] @ [0x21e9b3c] (=#0x22177a8)
	ldr     r1,  [pc, #0x88] @ [0x21e9b40] (=#0x221779c)
	ldr     r2,  [pc, #0x88] @ [0x21e9b44] (=#0x22176e4)
	mov     r3, #0x52
	bl      Function_20d407c
.arm
branch_21e9ac0: @ 21e9ac0 :arm
	cmp     r7, #0x0
	bne     branch_21e9adc
	ldr     r0,  [pc, #0x78] @ [0x21e9b48] (=#0x22177b0)
	ldr     r1,  [pc, #0x6c] @ [0x21e9b40] (=#0x221779c)
	ldr     r2,  [pc, #0x6c] @ [0x21e9b44] (=#0x22176e4)
	mov     r3, #0x53
	bl      Function_20d407c
.arm
branch_21e9adc: @ 21e9adc :arm
	cmp     r6, #0x0
	moveq   r6, #0x8
	mov     r0, #0x0
	stmia   r4, {r0,r6,r7}
	str     r6, [r4, #0xc]
	str     r5, [r4, #0x10]
	ldr     r1, [r4, #0x4]
	cmp     r1, #0x0
	beq     branch_21e9b30
	ldr     r0, [r4, #0x8]
	mul     r0, r1, r0
	bl      Function_21d7880
	str     r0, [r4, #0x14]
	cmp     r0, #0x0
	bne     branch_21e9b34
	ldr     r0,  [pc, #0x2c] @ [0x21e9b4c] (=#0x2217790)
	ldr     r1,  [pc, #0x1c] @ [0x21e9b40] (=#0x221779c)
	ldr     r2,  [pc, #0x1c] @ [0x21e9b44] (=#0x22176e4)
	mov     r3, #0x5e
	bl      Function_20d407c
	b       branch_21e9b34
@ 0x21e9b30

.arm
branch_21e9b30: @ 21e9b30 :arm
	str     r0, [r4, #0x14]
.arm
branch_21e9b34: @ 21e9b34 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e9b3c

.word 0x22177a8 @ 0x21e9b3c
.word 0x221779c @ 0x21e9b40
.word 0x22176e4 @ 0x21e9b44
.word 0x22177b0 @ 0x21e9b48
.word 0x2217790 @ 0x21e9b4c
.arm
Function_21e9b50: @ 21e9b50 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	bne     branch_21e9b70
	ldr     r0,  [pc, #0x4c] @ [0x21e9bb0] (=#0x22177a8)
	ldr     r1,  [pc, #0x4c] @ [0x21e9bb4] (=#0x221779c)
	ldr     r2,  [pc, #0x4c] @ [0x21e9bb8] (=#0x22176f0)
	mov     r3, #0x69
	bl      Function_20d407c
.arm
branch_21e9b70: @ 21e9b70 :arm
	ldr     r0, [r5]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21e9b9c
.arm
branch_21e9b80: @ 21e9b80 :arm
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e99ec
	ldr     r0, [r5]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21e9b80
.arm
branch_21e9b9c: @ 21e9b9c :arm
	ldr     r0, [r5, #0x14]
	bl      Function_21d78b0
	mov     r0, r5
	bl      Function_21d78b0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9bb0

.word 0x22177a8 @ 0x21e9bb0
.word 0x221779c @ 0x21e9bb4
.word 0x22176f0 @ 0x21e9bb8
.arm
Function_21e9bbc: @ 21e9bbc :arm
	ldr     r0, [r0]
	bx      lr
@ 0x21e9bc4

.arm
Function_21e9bc4: @ 21e9bc4 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r4, r1
	mov     r5, r0
	bmi     branch_21e9be0
	ldr     r0, [r5]
	cmp     r4, r0
	blt     branch_21e9bf4
.arm
branch_21e9be0: @ 21e9be0 :arm
	ldr     r0,  [pc, #0x38] @ [0x21e9c20] (=#0x22177bc)
	ldr     r1,  [pc, #0x38] @ [0x21e9c24] (=#0x221779c)
	ldr     r2,  [pc, #0x38] @ [0x21e9c28] (=#0x22176d8)
	mov     r3, #0x94
	bl      Function_20d407c
.arm
branch_21e9bf4: @ 21e9bf4 :arm
	cmp     r4, #0x0
	blt     branch_21e9c08
	ldr     r0, [r5]
	cmp     r4, r0
	blt     branch_21e9c10
.arm
branch_21e9c08: @ 21e9c08 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9c10

.arm
branch_21e9c10: @ 21e9c10 :arm
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x8]
	mla     r0, r1, r4, r0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9c20

.word 0x22177bc @ 0x21e9c20
.word 0x221779c @ 0x21e9c24
.word 0x22176d8 @ 0x21e9c28
.arm
Function_21e9c2c: @ 21e9c2c :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	mov     r4, r1
	bne     branch_21e9c50
	ldr     r0,  [pc, #0x28] @ [0x21e9c6c] (=#0x22177a8)
	ldr     r1,  [pc, #0x28] @ [0x21e9c70] (=#0x221779c)
	ldr     r2,  [pc, #0x28] @ [0x21e9c74] (=#0x2217708)
	mov     r3, #0xa0
	bl      Function_20d407c
.arm
branch_21e9c50: @ 21e9c50 :arm
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r2, [r5]
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e9c78
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9c6c

.word 0x22177a8 @ 0x21e9c6c
.word 0x221779c @ 0x21e9c70
.word 0x2217708 @ 0x21e9c74
.arm
Function_21e9c78: @ 21e9c78 :arm
	stmfd   sp!, {r4-r8,lr}
	movs    r4, r2
	mov     r6, r0
	mov     r5, r1
	bmi     branch_21e9c98
	ldr     r0, [r6]
	cmp     r4, r0
	ble     branch_21e9cac
.arm
branch_21e9c98: @ 21e9c98 :arm
	ldr     r0,  [pc, #0x84] @ [0x21e9d24] (=#0x22177dc)
	ldr     r1,  [pc, #0x84] @ [0x21e9d28] (=#0x221779c)
	ldr     r2,  [pc, #0x84] @ [0x21e9d2c] (=#0x2217734)
	mov     r3, #0xa7
	bl      Function_20d407c
.arm
branch_21e9cac: @ 21e9cac :arm
	ldr     r1, [r6]
	ldr     r0, [r6, #0x4]
	cmp     r1, r0
	bne     branch_21e9cc4
	mov     r0, r6
	bl      Function_21e9a10
.arm
branch_21e9cc4: @ 21e9cc4 :arm
	ldr     r0, [r6]
	add     r0, r0, #0x1
	sub     r8, r0, #0x1
	str     r0, [r6]
	cmp     r4, r8
	bge     branch_21e9d10
	mov     r0, r6
	add     r1, r4, #0x1
	bl      Function_21e9bc4
	mov     r7, r0
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e9bc4
	mov     r1, r0
	ldr     r3, [r6, #0x8]
	sub     r0, r8, r4
	mul     r2, r3, r0
	mov     r0, r7
	bl      Function_20d50d8
.arm
branch_21e9d10: @ 21e9d10 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21e9a68
	ldmfd   sp!, {r4-r8,pc}
@ 0x21e9d24

.word 0x22177dc @ 0x21e9d24
.word 0x221779c @ 0x21e9d28
.word 0x2217734 @ 0x21e9d2c

.incbin "./baserom/overlay/overlay_0004.bin", 0x18fb0, 0x21e9db0 - 0x21e9d30


.arm
Function_21e9db0: @ 21e9db0 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r1
	mov     r4, r0
	bmi     branch_21e9dcc
	ldr     r0, [r4]
	cmp     r7, r0
	blt     branch_21e9de0
.arm
branch_21e9dcc: @ 21e9dcc :arm
	ldr     r0,  [pc, #0x60] @ [0x21e9e34] (=#0x22177bc)
	ldr     r1,  [pc, #0x60] @ [0x21e9e38] (=#0x221779c)
	ldr     r2,  [pc, #0x60] @ [0x21e9e3c] (=#0x2217714)
	mov     r3, #0xc0
	bl      Function_20d407c
.arm
branch_21e9de0: @ 21e9de0 :arm
	ldr     r0, [r4]
	sub     r6, r0, #0x1
	cmp     r7, r6
	bge     branch_21e9e24
	mov     r0, r4
	mov     r1, r7
	bl      Function_21e9bc4
	mov     r5, r0
	mov     r0, r4
	add     r1, r7, #0x1
	bl      Function_21e9bc4
	mov     r1, r0
	ldr     r3, [r4, #0x8]
	sub     r0, r6, r7
	mul     r2, r3, r0
	mov     r0, r5
	bl      Function_20d50d8
.arm
branch_21e9e24: @ 21e9e24 :arm
	ldr     r0, [r4]
	sub     r0, r0, #0x1
	str     r0, [r4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21e9e34

.word 0x22177bc @ 0x21e9e34
.word 0x221779c @ 0x21e9e38
.word 0x2217714 @ 0x21e9e3c
.arm
Function_21e9e40: @ 21e9e40 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r4, r1
	mov     r5, r0
	bmi     branch_21e9e5c
	ldr     r0, [r5]
	cmp     r4, r0
	blt     branch_21e9e70
.arm
branch_21e9e5c: @ 21e9e5c :arm
	ldr     r0,  [pc, #0x28] @ [0x21e9e8c] (=#0x22177bc)
	ldr     r1,  [pc, #0x28] @ [0x21e9e90] (=#0x221779c)
	ldr     r2,  [pc, #0x28] @ [0x21e9e94] (=#0x2217724)
	mov     r3, #0xca
	bl      Function_20d407c
.arm
branch_21e9e70: @ 21e9e70 :arm
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e99ec
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e9db0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21e9e8c

.word 0x22177bc @ 0x21e9e8c
.word 0x221779c @ 0x21e9e90
.word 0x2217724 @ 0x21e9e94
.arm
Function_21e9e98: @ 21e9e98 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r4, r2
	mov     r6, r0
	mov     r5, r1
	bmi     branch_21e9eb8
	ldr     r0, [r6]
	cmp     r4, r0
	blt     branch_21e9ecc
.arm
branch_21e9eb8: @ 21e9eb8 :arm
	ldr     r0,  [pc, #0x2c] @ [0x21e9eec] (=#0x22177bc)
	ldr     r1,  [pc, #0x2c] @ [0x21e9ef0] (=#0x221779c)
	ldr     r2,  [pc, #0x2c] @ [0x21e9ef4] (=#0x2217744)
	mov     r3, #0xd3
	bl      Function_20d407c
.arm
branch_21e9ecc: @ 21e9ecc :arm
	mov     r0, r6
	mov     r1, r4
	bl      Function_21e99ec
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21e9a68
	ldmfd   sp!, {r4-r6,pc}
@ 0x21e9eec

.word 0x22177bc @ 0x21e9eec
.word 0x221779c @ 0x21e9ef0
.word 0x2217744 @ 0x21e9ef4

.incbin "./baserom/overlay/overlay_0004.bin", 0x19178, 0x21e9f18 - 0x21e9ef8


.arm
Function_21e9f18: @ 21e9f18 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0xc
	mov     r12, #0x1
	movs    r7, r0
	str     r12, [sp, #0x8]
	ldrne   r8, [r7]
	mov     r6, r1
	cmpne   r8, #0x0
	mov     r5, r2
	mov     r4, r3
	addeq   sp, sp, #0xc
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r8,pc}
	ldr     r1, [sp, #0x28]
	cmp     r1, #0x0
	mov     r1, r4
	beq     branch_21e9f84
	bl      Function_21e9bc4
	add     r1, sp, #0x8
	str     r5, [sp]
	str     r1, [sp, #0x4]
	mov     r1, r0
	ldr     r3, [r7, #0x8]
	mov     r0, r6
	sub     r2, r8, r4
	bl      Function_21ea198
	b       branch_21e9fa0
@ 0x21e9f84

.arm
branch_21e9f84: @ 21e9f84 :arm
	bl      Function_21e9bc4
	str     r5, [sp]
	mov     r1, r0
	ldr     r3, [r7, #0x8]
	mov     r0, r6
	sub     r2, r8, r4
	bl      Function_21ea140
.arm
branch_21e9fa0: @ 21e9fa0 :arm
	cmp     r0, #0x0
	ldrne   r1, [sp, #0x8]
	cmpne   r1, #0x0
	addeq   sp, sp, #0xc
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r8,pc}
	ldr     r2, [r7, #0x14]
	ldr     r1, [r7, #0x8]
	sub     r0, r0, r2
	bl      Division
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r8,pc}
@ 0x21e9fd0


.incbin "./baserom/overlay/overlay_0004.bin", 0x19250, 0x21ea03c - 0x21e9fd0


.arm
Function_21ea03c: @ 21ea03c :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r6, r1
	mov     r7, r0
	mov     r5, r2
	bne     branch_21ea064
	ldr     r0,  [pc, #0x38] @ [0x21ea090] (=#0x2217808)
	ldr     r1,  [pc, #0x38] @ [0x21ea094] (=#0x221779c)
	ldr     r2,  [pc, #0x38] @ [0x21ea098] (=#0x2217754)
	mov     r3, #65, 30 @ #0x104
	bl      Function_20d407c
.arm
branch_21ea064: @ 21ea064 :arm
	ldr     r0, [r7]
	subs    r4, r0, #0x1
	ldmmifd sp!, {r3-r7,pc}
.arm
branch_21ea070: @ 21ea070 :arm
	mov     r0, r7
	mov     r1, r4
	bl      Function_21e9bc4
	mov     r1, r5
	blx     r6
	subs    r4, r4, #0x1
	bpl     branch_21ea070
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ea090

.word 0x2217808 @ 0x21ea090
.word 0x221779c @ 0x21ea094
.word 0x2217754 @ 0x21ea098

.incbin "./baserom/overlay/overlay_0004.bin", 0x1931c, 0x21ea114 - 0x21ea09c


.arm
Function_21ea114: @ 21ea114 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_21e9bbc
	subs    r4, r0, #0x1
	ldmmifd sp!, {r3-r5,pc}
.arm
branch_21ea128: @ 21ea128 :arm
	mov     r0, r5
	mov     r1, r4
	bl      Function_21e9e40
	subs    r4, r4, #0x1
	bpl     branch_21ea128
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ea140

.arm
Function_21ea140: @ 21ea140 :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r8, r2
	mov     r10, r0
	mov     r9, r1
	mov     r7, r3
	cmp     r8, #0x0
	ldr     r6, [sp, #0x20]
	mov     r4, #0x0
	ble     branch_21ea190
	mov     r5, r4
.arm
branch_21ea168: @ 21ea168 :arm
	mov     r0, r10
	add     r1, r9, r5
	blx     r6
	cmp     r0, #0x0
	mlaeq   r0, r7, r4, r9
	ldmeqfd sp!, {r4-r10,pc}
	add     r4, r4, #0x1
	cmp     r4, r8
	add     r5, r5, r7
	blt     branch_21ea168
.arm
branch_21ea190: @ 21ea190 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4-r10,pc}
@ 0x21ea198

.arm
Function_21ea198: @ 21ea198 :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r7, [sp, #0x2c]
	mov     r4, #0x0
	mov     r11, r0
	mov     r10, r1
	mov     r9, r3
	str     r4, [r7]
	subs    r5, r2, #0x1
	ldr     r8, [sp, #0x28]
	bmi     branch_21ea1f4
.arm
branch_21ea1c0: @ 21ea1c0 :arm
	add     r0, r4, r5
	mov     r6, r0, asr #1
	mla     r0, r6, r9, r10
	mov     r1, r11
	blx     r8
	cmp     r0, #0x0
	moveq   r1, #0x1
	streq   r1, [r7]
	cmp     r0, #0x0
	addlt   r4, r6, #0x1
	subge   r5, r6, #0x1
	cmp     r4, r5
	ble     branch_21ea1c0
.arm
branch_21ea1f4: @ 21ea1f4 :arm
	mla     r0, r4, r9, r10
	ldmfd   sp!, {r3-r11,pc}
@ 0x21ea1fc


.incbin "./baserom/overlay/overlay_0004.bin", 0x1947c, 0x21ea224 - 0x21ea1fc


.arm
Function_21ea224: @ 21ea224 :arm
	stmfd   sp!, {r4-r10,lr}
	movs    r7, r3
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	ldr     r6, [sp, #0x24]
	bne     branch_21ea254
	ldr     r0,  [pc, #0xfc] @ [0x21ea344] (=#0x2217880)
	ldr     r1,  [pc, #0xfc] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0xfc] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x38
	bl      Function_20d407c
.arm
branch_21ea254: @ 21ea254 :arm
	ldr     r0, [sp, #0x20]
	cmp     r0, #0x0
	bne     branch_21ea274
	ldr     r0,  [pc, #0xe8] @ [0x21ea350] (=#0x2217894)
	ldr     r1,  [pc, #0xdc] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0xdc] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x39
	bl      Function_20d407c
.arm
branch_21ea274: @ 21ea274 :arm
	cmp     r10, #0x0
	bne     branch_21ea290
	ldr     r0,  [pc, #0xd0] @ [0x21ea354] (=#0x221789c)
	ldr     r1,  [pc, #0xc0] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0xc0] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x3a
	bl      Function_20d407c
.arm
branch_21ea290: @ 21ea290 :arm
	cmp     r9, #0x0
	bne     branch_21ea2ac
	ldr     r0,  [pc, #0xb8] @ [0x21ea358] (=#0x22178a8)
	ldr     r1,  [pc, #0xa4] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0xa4] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x3b
	bl      Function_20d407c
.arm
branch_21ea2ac: @ 21ea2ac :arm
	mov     r0, #0x14
	bl      Function_21d7880
	movs    r4, r0
	bne     branch_21ea2d0
	ldr     r0,  [pc, #0x98] @ [0x21ea35c] (=#0x22178b4)
	ldr     r1,  [pc, #0x80] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0x80] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x3e
	bl      Function_20d407c
.arm
branch_21ea2d0: @ 21ea2d0 :arm
	mov     r0, r9, lsl #2
	bl      Function_21d7880
	str     r0, [r4]
	cmp     r0, #0x0
	bne     branch_21ea2f8
	ldr     r0,  [pc, #0x74] @ [0x21ea360] (=#0x22178bc)
	ldr     r1,  [pc, #0x58] @ [0x21ea348] (=#0x2217888)
	ldr     r2,  [pc, #0x58] @ [0x21ea34c] (=#0x2217818)
	mov     r3, #0x41
	bl      Function_20d407c
.arm
branch_21ea2f8: @ 21ea2f8 :arm
	cmp     r9, #0x0
	mov     r5, #0x0
	ble     branch_21ea328
.arm
branch_21ea304: @ 21ea304 :arm
	mov     r0, r10
	mov     r1, r8
	mov     r2, r6
	bl      Function_21e9a8c
	ldr     r1, [r4]
	str     r0, [r1, r5, lsl #0x2]
	add     r5, r5, #0x1
	cmp     r5, r9
	blt     branch_21ea304
.arm
branch_21ea328: @ 21ea328 :arm
	str     r9, [r4, #0x4]
	ldr     r0, [sp, #0x20]
	str     r6, [r4, #0x8]
	str     r0, [r4, #0x10]
	mov     r0, r4
	str     r7, [r4, #0xc]
	ldmfd   sp!, {r4-r10,pc}
@ 0x21ea344

.word 0x2217880 @ 0x21ea344
.word 0x2217888 @ 0x21ea348
.word 0x2217818 @ 0x21ea34c
.word 0x2217894 @ 0x21ea350
.word 0x221789c @ 0x21ea354
.word 0x22178a8 @ 0x21ea358
.word 0x22178b4 @ 0x21ea35c
.word 0x22178bc @ 0x21ea360



.arm
Function_21ea364: @ 21ea364 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	bne     branch_21ea384
	ldr     r0,  [pc, #0x54] @ [0x21ea3cc] (=#0x22178b4)
	ldr     r1,  [pc, #0x54] @ [0x21ea3d0] (=#0x2217888)
	ldr     r2,  [pc, #0x54] @ [0x21ea3d4] (=#0x2217824)
	mov     r3, #0x51
	bl      Function_20d407c
.arm
branch_21ea384: @ 21ea384 :arm
	cmp     r5, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r5, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21ea3b8
.arm
branch_21ea39c: @ 21ea39c :arm
	ldr     r0, [r5]
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9b50
	ldr     r0, [r5, #0x4]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21ea39c
.arm
branch_21ea3b8: @ 21ea3b8 :arm
	ldr     r0, [r5]
	bl      Function_21d78b0
	mov     r0, r5
	bl      Function_21d78b0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ea3cc

.word 0x22178b4 @ 0x21ea3cc
.word 0x2217888 @ 0x21ea3d0
.word 0x2217824 @ 0x21ea3d4



.arm
Function_21ea3d8: @ 21ea3d8 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r6, r0
	mov     r5, #0x0
	bne     branch_21ea3fc
	ldr     r0,  [pc, #0x50] @ [0x21ea440] (=#0x22178b4)
	ldr     r1,  [pc, #0x50] @ [0x21ea444] (=#0x2217888)
	ldr     r2,  [pc, #0x50] @ [0x21ea448] (=#0x221783c)
	mov     r3, #0x61
	bl      Function_20d407c
.arm
branch_21ea3fc: @ 21ea3fc :arm
	cmp     r6, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [r6, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21ea438
.arm
branch_21ea418: @ 21ea418 :arm
	ldr     r0, [r6]
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9bbc
	ldr     r1, [r6, #0x4]
	add     r4, r4, #0x1
	cmp     r4, r1
	add     r5, r5, r0
	blt     branch_21ea418
.arm
branch_21ea438: @ 21ea438 :arm
	mov     r0, r5
	ldmfd   sp!, {r4-r6,pc}
@ 0x21ea440

.word 0x22178b4 @ 0x21ea440
.word 0x2217888 @ 0x21ea444
.word 0x221783c @ 0x21ea448
.arm
Function_21ea44c: @ 21ea44c :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	movs    r6, r0
	mov     r5, r1
	bne     branch_21ea474
	ldr     r0,  [pc, #0x80] @ [0x21ea4e8] (=#0x22178b4)
	ldr     r1,  [pc, #0x80] @ [0x21ea4ec] (=#0x2217888)
	ldr     r2,  [pc, #0x80] @ [0x21ea4f0] (=#0x2217830)
	mov     r3, #0x71
	bl      Function_20d407c
.arm
branch_21ea474: @ 21ea474 :arm
	cmp     r6, #0x0
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [r6, #0x4]
	ldr     r2, [r6, #0xc]
	mov     r0, r5
	blx     r2
	mov     r3, #0x0
	str     r3, [sp]
	ldr     r1, [r6]
	mov     r4, r0
	ldr     r0, [r1, r4, lsl #0x2]
	ldr     r2, [r6, #0x10]
	mov     r1, r5
	bl      Function_21e9f18
	mov     r2, r0
	mvn     r0, #0x0
	cmp     r2, r0
	ldr     r0, [r6]
	mov     r1, r5
	bne     branch_21ea4d8
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9c2c
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21ea4d8

.arm
branch_21ea4d8: @ 21ea4d8 :arm
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9e98
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21ea4e8

.word 0x22178b4 @ 0x21ea4e8
.word 0x2217888 @ 0x21ea4ec
.word 0x2217830 @ 0x21ea4f0



.arm
Function_21ea4f4: @ 21ea4f4 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	movs    r6, r0
	mov     r5, r1
	bne     branch_21ea51c
	ldr     r0,  [pc, #0x7c] @ [0x21ea58c] (=#0x22178b4)
	ldr     r1,  [pc, #0x7c] @ [0x21ea590] (=#0x2217888)
	ldr     r2,  [pc, #0x7c] @ [0x21ea594] (=#0x2217848)
	mov     r3, #0x82
	bl      Function_20d407c
.arm
branch_21ea51c: @ 21ea51c :arm
	cmp     r6, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [r6, #0x4]
	ldr     r2, [r6, #0xc]
	mov     r0, r5
	blx     r2
	mov     r3, #0x0
	str     r3, [sp]
	ldr     r1, [r6]
	mov     r4, r0
	ldr     r0, [r1, r4, lsl #0x2]
	ldr     r2, [r6, #0x10]
	mov     r1, r5
	bl      Function_21e9f18
	mov     r1, r0
	mvn     r0, #0x0
	cmp     r1, r0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r0, [r6]
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9e40
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21ea58c

.word 0x22178b4 @ 0x21ea58c
.word 0x2217888 @ 0x21ea590
.word 0x2217848 @ 0x21ea594



.arm
Function_21ea598: @ 21ea598 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	movs    r6, r0
	mov     r5, r1
	bne     branch_21ea5c0
	ldr     r0,  [pc, #0x78] @ [0x21ea62c] (=#0x22178b4)
	ldr     r1,  [pc, #0x78] @ [0x21ea630] (=#0x2217888)
	ldr     r2,  [pc, #0x78] @ [0x21ea634] (=#0x2217854)
	mov     r3, #0x94
	bl      Function_20d407c
.arm
branch_21ea5c0: @ 21ea5c0 :arm
	cmp     r6, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [r6, #0x4]
	ldr     r2, [r6, #0xc]
	mov     r0, r5
	blx     r2
	mov     r3, #0x0
	str     r3, [sp]
	ldr     r1, [r6]
	mov     r4, r0
	ldr     r0, [r1, r4, lsl #0x2]
	ldr     r2, [r6, #0x10]
	mov     r1, r5
	bl      Function_21e9f18
	mov     r1, r0
	mvn     r0, #0x0
	cmp     r1, r0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r0, [r6]
	ldr     r0, [r0, r4, lsl #0x2]
	bl      Function_21e9bc4
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21ea62c

.word 0x22178b4 @ 0x21ea62c
.word 0x2217888 @ 0x21ea630
.word 0x2217854 @ 0x21ea634

.incbin "./baserom/overlay/overlay_0004.bin", 0x198b8, 0x21ea6d0 - 0x21ea638


.arm
Function_21ea6d0: @ 21ea6d0 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r6, r1
	mov     r7, r0
	mov     r5, r2
	bne     branch_21ea6f8
	ldr     r0,  [pc, #0x44] @ [0x21ea730] (=#0x22178cc)
	ldr     r1,  [pc, #0x44] @ [0x21ea734] (=#0x2217888)
	ldr     r2,  [pc, #0x44] @ [0x21ea738] (=#0x2217860)
	mov     r3, #0xb6
	bl      Function_20d407c
.arm
branch_21ea6f8: @ 21ea6f8 :arm
	ldr     r0, [r7, #0x4]
	mov     r4, #0x0
	cmp     r0, #0x0
	ldmlefd sp!, {r3-r7,pc}
.arm
branch_21ea708: @ 21ea708 :arm
	ldr     r0, [r7]
	mov     r1, r6
	ldr     r0, [r0, r4, lsl #0x2]
	mov     r2, r5
	bl      Function_21ea03c
	ldr     r0, [r7, #0x4]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21ea708
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ea730

.word 0x22178cc @ 0x21ea730
.word 0x2217888 @ 0x21ea734
.word 0x2217860 @ 0x21ea738

.incbin "./baserom/overlay/overlay_0004.bin", 0x199bc, 0x21ea840 - 0x21ea73c


.arm
Function_21ea840: @ 21ea840 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_20c3808
	cmp     r0, #0x1
	beq     branch_21ea864
	ldr     r0,  [pc, #0x2c] @ [0x21ea884] (=#0x22178f4)
	ldr     r1,  [pc, #0x2c] @ [0x21ea888] (=#0x2217914)
	ldr     r2,  [pc, #0x2c] @ [0x21ea88c] (=#0x22178e4)
	ldr     r3,  [pc, #0x2c] @ [0x21ea890] (=#0x109)
	bl      Function_20d407c
.arm
branch_21ea864: @ 21ea864 :arm
	bl      Function_20c3880
	mov     r1, r1, lsl #6
	orr     r1, r1, r0, lsr #26
	ldr     r2,  [pc, #0x1c] @ [0x21ea894] (=#0x82ea)
	mov     r0, r0, lsl #6
	mov     r3, #0x0
	bl      Function_20e1ed4
	ldmfd   sp!, {r3,pc}
@ 0x21ea884

.word 0x22178f4 @ 0x21ea884
.word 0x2217914 @ 0x21ea888
.word 0x22178e4 @ 0x21ea88c
.word 0x109 @ 0x21ea890
.word 0x82ea @ 0x21ea894



.arm
Function_21ea898: @ 21ea898 :arm
	ldr     r12,  [pc, #0x0] @ [0x21ea8a0] (=Function_20c24a4)
	bx      r12
@ 0x21ea8a0

.word Function_20c24a4 @ 0x21ea8a0



.arm
Function_21ea8a4: @ 21ea8a4 :arm
	bx      lr
@ 0x21ea8a8

.arm
Function_21ea8a8: @ 21ea8a8 :arm
	bx      lr
@ 0x21ea8ac

.arm
Function_21ea8ac: @ 21ea8ac :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	bl      Function_20d8b60
	add     r0, r0, #0x1
	bl      Function_21d7880
	movs    r4, r0
	beq     branch_21ea8d8
	mov     r1, r5
	bl      Function_20d8b7c
.arm
branch_21ea8d8: @ 21ea8d8 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ea8e0


.incbin "./baserom/overlay/overlay_0004.bin", 0x19b60, 0x21eaa74 - 0x21ea8e0


.arm
Function_21eaa74: @ 21eaa74 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	movs    r6, r1
	mov     r1, #0x0
	strh    r1, [sp, #0x4]
	str     r0, [sp]
	ldrnesh r0, [sp, #0x4]
	mov     r5, r2
	mov     r2, #0x0
	orrne   r0, r0, #0x1
	strneh  r0, [sp, #0x4]
	cmp     r5, #0x0
	ldrnesh r0, [sp, #0x4]
	mov     r4, r3
	mov     r3, r2
	orrne   r0, r0, #0x8
	strneh  r0, [sp, #0x4]
	add     r0, sp, #0x0
	mov     r1, #0x1
	strh    r2, [sp, #0x6]
	bl      Function_2208b18
	cmp     r0, #0x0
	addlt   sp, sp, #0x8
	mvnlt   r0, #0x0
	ldmltfd sp!, {r4-r6,pc}
	cmp     r6, #0x0
	beq     branch_21eab04
	cmp     r0, #0x0
	ble     branch_21eaafc
	ldrsh   r1, [sp, #0x6]
	tst     r1, #0x41
	movne   r1, #0x1
	strne   r1, [r6]
	bne     branch_21eab04
.arm
branch_21eaafc: @ 21eaafc :arm
	mov     r1, #0x0
	str     r1, [r6]
.arm
branch_21eab04: @ 21eab04 :arm
	cmp     r5, #0x0
	beq     branch_21eab30
	cmp     r0, #0x0
	ble     branch_21eab28
	ldrsh   r1, [sp, #0x6]
	tst     r1, #0x8
	movne   r1, #0x1
	strne   r1, [r5]
	bne     branch_21eab30
.arm
branch_21eab28: @ 21eab28 :arm
	mov     r1, #0x0
	str     r1, [r5]
.arm
branch_21eab30: @ 21eab30 :arm
	cmp     r4, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r0, #0x0
	ble     branch_21eab5c
	ldrsh   r1, [sp, #0x6]
	tst     r1, #0x20
	movne   r1, #0x1
	addne   sp, sp, #0x8
	strne   r1, [r4]
	ldmnefd sp!, {r4-r6,pc}
.arm
branch_21eab5c: @ 21eab5c :arm
	mov     r1, #0x0
	str     r1, [r4]
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x21eab6c

.arm
Function_21eab6c: @ 21eab6c :arm
	stmfd   sp!, {r3,lr}
	mov     r2, #0x0
	add     r1, sp, #0x0
	mov     r3, r2
	str     r2, [sp]
	bl      Function_21eaa74
	cmp     r0, #0x1
	ldreq   r0, [sp]
	movne   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21eab94

.arm
Function_21eab94: @ 21eab94 :arm
	stmfd   sp!, {r3,lr}
	mov     r1, #0x0
	add     r2, sp, #0x0
	mov     r3, r1
	str     r1, [sp]
	bl      Function_21eaa74
	cmp     r0, #0x1
	ldreq   r0, [sp]
	movne   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x21eabbc

.arm
Function_21eabbc: @ 21eabbc :arm
	stmfd   sp!, {r3,lr}
	ldr     r2,  [pc, #0x68] @ [0x21eac30] (=#0x2217920)
	ldr     r0,  [pc, #0x68] @ [0x21eac34] (=#0x221af2c)
	ldr     r1,  [pc, #0x68] @ [0x21eac38] (=#0x221af2c)
	str     r2, [r0, #0x8]
	str     r1, [r0, #0xc]
	mov     r1, #0x2
	strh    r1, [r0, #0x10]
	mov     r2, #0x0
	ldr     r1,  [pc, #0x54] @ [0x21eac3c] (=#0x221af58)
	strh    r2, [r0, #0x12]
	str     r1, [r0, #0x14]
	str     r2, [r0, #0x18]
	bl      Function_2208088
	ldr     r1,  [pc, #0x44] @ [0x21eac40] (=#0x221af44)
	bl      Function_2208af8
	ldr     r1,  [pc, #0x30] @ [0x21eac34] (=#0x221af2c)
	ldr     r0, [r1, #0x18]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r2,  [pc, #0x28] @ [0x21eac40] (=#0x221af44)
	mov     r0, #0x4
	str     r2, [r1, #0x2c]
	strh    r0, [r1, #0x12]
	mov     r2, #0x0
	ldr     r0,  [pc, #0x18] @ [0x21eac44] (=#0x221af34)
	str     r2, [r1, #0x30]
	ldmfd   sp!, {r3,pc}
@ 0x21eac30

.word 0x2217920 @ 0x21eac30
.word 0x221af2c @ 0x21eac34
.word 0x221af2c @ 0x21eac38
.word 0x221af58 @ 0x21eac3c
.word 0x221af44 @ 0x21eac40
.word 0x221af34 @ 0x21eac44

.incbin "./baserom/overlay/overlay_0004.bin", 0x19ec8, 0x21eacc4 - 0x21eac48


.arm
Function_21eacc4: @ 21eacc4 :arm
	cmp     r0, #0x0
	ldrlt   r2,  [pc, #0x8] @ [0x21eacd8] (=#0x221af2c)
	strlt   r0, [r2, #0x4]
	movlt   r0, r1
	bx      lr
@ 0x21eacd8

.word 0x221af2c @ 0x21eacd8
.arm
Function_21eacdc: @ 21eacdc :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2208324
	mvn     r1, #0x0
	bl      Function_21eacc4
	ldmfd   sp!, {r3,pc}
@ 0x21eacf0

.arm
Function_21eacf0: @ 21eacf0 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2208540
	mvn     r1, #0x0
	bl      Function_21eacc4
	ldmfd   sp!, {r3,pc}
@ 0x21ead04


.incbin "./baserom/overlay/overlay_0004.bin", 0x19f84, 0x21ead78 - 0x21ead04


.arm
Function_21ead78: @ 21ead78 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	add     r4, sp, #0x0
	mov     lr, #0x4
.arm
branch_21ead88: @ 21ead88 :arm
	ldrb    r12, [r1]
	ldrb    r3, [r1, #0x1]
	add     r1, r1, #0x2
	subs    lr, lr, #0x1
	strb    r12, [r4]
	strb    r3, [r4, #0x1]
	add     r4, r4, #0x2
	bne     branch_21ead88
	add     r1, sp, #0x0
	strb    r2, [sp]
	bl      Function_220837c
	mvn     r1, #0x0
	bl      Function_21eacc4
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x21eadc4


.incbin "./baserom/overlay/overlay_0004.bin", 0x1a044, 0x21eae18 - 0x21eadc4


.arm
Function_21eae18: @ 21eae18 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r4, [sp, #0x14]
	ldr     r5, [sp, #0x10]
	ldr     r12, [r4]
	strb    r12, [r5]
	str     r5, [sp]
	bl      Function_22083fc
	ldrb    r2, [r5]
	mvn     r1, #0x0
	str     r2, [r4]
	bl      Function_21eacc4
	ldmfd   sp!, {r3-r5,pc}
@ 0x21eae48

.arm
Function_21eae48: @ 21eae48 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_220848c
	mvn     r1, #0x0
	bl      Function_21eacc4
	ldmfd   sp!, {r3,pc}
@ 0x21eae5c

.arm
Function_21eae5c: @ 21eae5c :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0xc
	ldr     r5, [sp, #0x20]
	add     r6, sp, #0x4
	mov     r4, #0x4
.arm
branch_21eae70: @ 21eae70 :arm
	ldrb    lr, [r5]
	ldrb    r12, [r5, #0x1]
	add     r5, r5, #0x2
	subs    r4, r4, #0x1
	strb    lr, [r6]
	strb    r12, [r6, #0x1]
	add     r6, r6, #0x2
	bne     branch_21eae70
	ldr     lr, [sp, #0x24]
	add     r12, sp, #0x4
	strb    lr, [sp, #0x4]
	str     r12, [sp]
	bl      Function_22084b0
	mvn     r1, #0x0
	bl      Function_21eacc4
	add     sp, sp, #0xc
	ldmfd   sp!, {r3-r6,pc}
@ 0x21eaeb4


.incbin "./baserom/overlay/overlay_0004.bin", 0x1a134, 0x21eaf1c - 0x21eaeb4


.arm
Function_21eaf1c: @ 21eaf1c :arm
	stmfd   sp!, {r3,lr}
	add     r1, sp, #0x0
	bl      Function_2208a24
	cmp     r0, #0x0
	mvneq   r0, #0x0
	ldrne   r0, [sp]
	ldmfd   sp!, {r3,pc}
@ 0x21eaf38

.arm
Function_21eaf38: @ 21eaf38 :arm
	ldr     r0,  [pc, #0x4] @ [0x21eaf44] (=#0x221af2c)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x21eaf44

.word 0x221af2c @ 0x21eaf44

.incbin "./baserom/overlay/overlay_0004.bin", 0x1a1c8, 0x21ebb2c - 0x21eaf48


.arm
Function_21ebb2c: @ 21ebb2c :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #2, 24 @ #0x200
	movs    r7, r0
	ldrne   r4, [r7]
	mov     r6, r1
	cmpne   r4, #0x0
	mov     r5, r3
	addeq   sp, sp, #2, 24 @ #0x200
	moveq   r0, #0x2
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [r4, #0x108]
	cmp     r1, #0x0
	addne   sp, sp, #2, 24 @ #0x200
	movne   r0, #0x0
	ldmnefd sp!, {r3-r7,pc}
	ldr     r1, [r4, #0x1d8]
	cmp     r1, #0x4
	bne     branch_21ebb88
	ldr     r1,  [pc, #0x1bc] @ [0x21ebd38] (=#0x2217964)
	bl      Function_21f5d68
	add     sp, sp, #2, 24 @ #0x200
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ebb88

.arm
branch_21ebb88: @ 21ebb88 :arm
	cmp     r2, #0x0
	bne     branch_21ebba4
	ldr     r1,  [pc, #0x1a4] @ [0x21ebd3c] (=#0x2217a14)
	bl      Function_21f5d68
	add     sp, sp, #2, 24 @ #0x200
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ebba4

.arm
branch_21ebba4: @ 21ebba4 :arm
	cmp     r5, #0x0
	bne     branch_21ebbc0
	ldr     r1,  [pc, #0x18c] @ [0x21ebd40] (=#0x2217a2c)
	bl      Function_21f5d68
	add     sp, sp, #2, 24 @ #0x200
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ebbc0

.arm
branch_21ebbc0: @ 21ebbc0 :arm
	mov     r1, r2
	add     r0, sp, #1, 24 @ #0x100
	mov     r2, #1, 24 @ #0x100
	bl      Function_21f5820
	add     r0, sp, #1, 24 @ #0x100
	ldrsb   r0, [r0]
	cmp     r0, #0x0
	beq     branch_21ebc00
	add     r2, sp, #1, 24 @ #0x100
	mov     r1, #0x2f
.arm
branch_21ebbe8: @ 21ebbe8 :arm
	ldrsb   r0, [r2]
	cmp     r0, #0x5c
	streqb  r1, [r2]
	ldrsb   r0, [r2, #0x1]!
	cmp     r0, #0x0
	bne     branch_21ebbe8
.arm
branch_21ebc00: @ 21ebc00 :arm
	add     r0, sp, #0x0
	mov     r1, r5
	mov     r2, #1, 24 @ #0x100
	bl      Function_21f5820
	ldrsb   r0, [sp]
	cmp     r0, #0x0
	beq     branch_21ebc3c
	add     r2, sp, #0x0
	mov     r1, #0x2f
.arm
branch_21ebc24: @ 21ebc24 :arm
	ldrsb   r0, [r2]
	cmp     r0, #0x5c
	streqb  r1, [r2]
	ldrsb   r0, [r2, #0x1]!
	cmp     r0, #0x0
	bne     branch_21ebc24
.arm
branch_21ebc3c: @ 21ebc3c :arm
	ldr     r0, [r4, #0x214]
	cmp     r6, r0
	bne     branch_21ebc78
	add     r0, sp, #1, 24 @ #0x100
	add     r1, r4, #134, 30 @ #0x218
	bl      Function_20d8d14
	cmp     r0, #0x0
	bne     branch_21ebc78
	add     r0, sp, #0x0
	add     r1, r4, #198, 30 @ #0x318
	bl      Function_20d8d14
	cmp     r0, #0x0
	addeq   sp, sp, #2, 24 @ #0x200
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_21ebc78: @ 21ebc78 :arm
	add     r1, sp, #1, 24 @ #0x100
	add     r0, r4, #134, 30 @ #0x218
	mov     r2, #1, 24 @ #0x100
	str     r6, [r4, #0x214]
	bl      Function_21f5820
	add     r1, sp, #0x0
	add     r0, r4, #198, 30 @ #0x318
	mov     r2, #1, 24 @ #0x100
	bl      Function_21f5820
	ldr     r2,  [pc, #0xa0] @ [0x21ebd44] (=#0x2217a44)
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5c4
	mov     r0, r7
	mov     r2, r6
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5f4
	ldr     r2,  [pc, #0x84] @ [0x21ebd48] (=#0x22179b0)
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5c4
	ldr     r2, [r4, #0x198]
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5f4
	ldr     r2,  [pc, #0x68] @ [0x21ebd4c] (=#0x2217a50)
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5c4
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	add     r2, sp, #1, 24 @ #0x100
	bl      Function_21ed5c4
	ldr     r2,  [pc, #0x4c] @ [0x21ebd50] (=#0x2217a60)
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5c4
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	add     r2, sp, #0x0
	bl      Function_21ed5c4
	ldr     r2,  [pc, #0x30] @ [0x21ebd54] (=#0x22179d8)
	mov     r0, r7
	add     r1, r4, #125, 30 @ #0x1f4
	bl      Function_21ed5c4
	mov     r0, #0x0
	add     sp, sp, #2, 24 @ #0x200
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ebd38

.word 0x2217964 @ 0x21ebd38
.word 0x2217a14 @ 0x21ebd3c
.word 0x2217a2c @ 0x21ebd40
.word 0x2217a44 @ 0x21ebd44
.word 0x22179b0 @ 0x21ebd48
.word 0x2217a50 @ 0x21ebd4c
.word 0x2217a60 @ 0x21ebd50
.word 0x22179d8 @ 0x21ebd54

.incbin "./baserom/overlay/overlay_0004.bin", 0x1afd8, 0x21ed4b8 - 0x21ebd58


.arm
Function_21ed4b8: @ 21ed4b8 :arm
	stmfd   sp!, {r4-r10,lr}
	movs    r8, r2
	mov     r10, r0
	mov     r9, r1
	mov     r7, r3
	bne     branch_21ed4e4
	ldr     r0,  [pc, #0xd4] @ [0x21ed5ac] (=#0x2217eac)
	ldr     r1,  [pc, #0xd4] @ [0x21ed5b0] (=#0x2217e90)
	ldr     r2,  [pc, #0xd4] @ [0x21ed5b4] (=#0x2217e5c)
	mov     r3, #0x51
	bl      Function_20d407c
.arm
branch_21ed4e4: @ 21ed4e4 :arm
	cmp     r7, #0x0
	bge     branch_21ed500
	ldr     r0,  [pc, #0xc4] @ [0x21ed5b8] (=#0x2217ebc)
	ldr     r1,  [pc, #0xb8] @ [0x21ed5b0] (=#0x2217e90)
	ldr     r2,  [pc, #0xb8] @ [0x21ed5b4] (=#0x2217e5c)
	mov     r3, #0x52
	bl      Function_20d407c
.arm
branch_21ed500: @ 21ed500 :arm
	cmp     r9, #0x0
	bne     branch_21ed51c
	ldr     r0,  [pc, #0xac] @ [0x21ed5bc] (=#0x2217e78)
	ldr     r1,  [pc, #0x9c] @ [0x21ed5b0] (=#0x2217e90)
	ldr     r2,  [pc, #0x9c] @ [0x21ed5b4] (=#0x2217e5c)
	mov     r3, #0x53
	bl      Function_20d407c
.arm
branch_21ed51c: @ 21ed51c :arm
	cmp     r8, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r10,pc}
	ldr     r4, [r9, #0x8]
	ldr     r5, [r9, #0x4]
	ldr     r6, [r9]
	sub     r0, r5, r4
	cmp     r0, r7
	bge     branch_21ed578
	cmp     r7, #0x800
	movlt   r0, #0x800
	movge   r0, r7
	add     r5, r5, r0
	mov     r0, r6
	add     r1, r5, #0x1
	bl      Function_21d7894
	movs    r6, r0
	bne     branch_21ed578
	ldr     r1,  [pc, #0x54] @ [0x21ed5c0] (=#0x2217e9c)
	mov     r0, r10
	bl      Function_21f5d68
	mov     r0, #0x1
	ldmfd   sp!, {r4-r10,pc}
@ 0x21ed578

.arm
branch_21ed578: @ 21ed578 :arm
	mov     r1, r8
	mov     r2, r7
	add     r0, r6, r4
	bl      Function_20d50b8
	add     r1, r4, r7
	mov     r0, #0x0
	strb    r0, [r6, r1]
	ldr     r1, [r9, #0x8]
	add     r1, r1, r7
	str     r1, [r9, #0x8]
	str     r5, [r9, #0x4]
	str     r6, [r9]
	ldmfd   sp!, {r4-r10,pc}
@ 0x21ed5ac

.word 0x2217eac @ 0x21ed5ac
.word 0x2217e90 @ 0x21ed5b0
.word 0x2217e5c @ 0x21ed5b4
.word 0x2217ebc @ 0x21ed5b8
.word 0x2217e78 @ 0x21ed5bc
.word 0x2217e9c @ 0x21ed5c0



.arm
Function_21ed5c4: @ 21ed5c4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r5, r1
	mov     r0, r4
	bl      Function_20d8b60
	mov     r3, r0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21ed4b8
	ldmfd   sp!, {r4-r6,pc}
@ 0x21ed5f4

.arm
Function_21ed5f4: @ 21ed5f4 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x10
	mov     r4, r1
	mov     r5, r0
	ldr     r1,  [pc, #0x1c] @ [0x21ed628] (=#0x2217ecc)
	add     r0, sp, #0x0
	bl      Function_20d7510
	add     r2, sp, #0x0
	mov     r0, r5
	mov     r1, r4
	bl      Function_21ed5c4
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ed628

.word 0x2217ecc @ 0x21ed628



.incbin "./baserom/overlay/overlay_0004.bin", 0x1c8ac, 0x21f5820 - 0x21ed62c


.arm
Function_21f5820: @ 21f5820 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r6, r0
	mov     r5, r1
	mov     r4, r2
	bne     branch_21f5848
	ldr     r0,  [pc, #0x48] @ [0x21f5884] (=#0x22191e8)
	ldr     r1,  [pc, #0x48] @ [0x21f5888] (=#0x22191f8)
	ldr     r2,  [pc, #0x48] @ [0x21f588c] (=#0x22191bc)
	mov     r3, #0x2f
	bl      Function_20d407c
.arm
branch_21f5848: @ 21f5848 :arm
	cmp     r5, #0x0
	bne     branch_21f5864
	ldr     r0,  [pc, #0x38] @ [0x21f5890] (=#0x2219208)
	ldr     r1,  [pc, #0x2c] @ [0x21f5888] (=#0x22191f8)
	ldr     r2,  [pc, #0x2c] @ [0x21f588c] (=#0x22191bc)
	mov     r3, #0x30
	bl      Function_20d407c
.arm
branch_21f5864: @ 21f5864 :arm
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_20d8c44
	add     r0, r6, r4
	mov     r1, #0x0
	strb    r1, [r0, #-0x1]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21f5884

.word 0x22191e8 @ 0x21f5884
.word 0x22191f8 @ 0x21f5888
.word 0x22191bc @ 0x21f588c
.word 0x2219208 @ 0x21f5890

.incbin "./baserom/overlay/overlay_0004.bin", 0x24b14, 0x21f5d68 - 0x21f5894


.arm
Function_21f5d68: @ 21f5d68 :arm
	ldr     r12,  [pc, #0x8] @ [0x21f5d78] (=Function_21f5820)
	ldr     r0, [r0]
	mov     r2, #1, 24 @ #0x100
	bx      r12
@ 0x21f5d78

.word Function_21f5820 @ =0x21f5820, 0x21f5d78

.incbin "./baserom/overlay/overlay_0004.bin", 0x24ffc, 0x21f7448 - 0x21f5d7c


.arm
Function_21f7448: @ 21f7448 :arm
	ldr     r1, [r0, #0x4]
	ldr     r0, [r0, #0x8]
	sub     r0, r1, r0
	bx      lr
@ 0x21f7458

.arm
Function_21f7458: @ 21f7458 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldmib   r5, {r0,r2}
	mov     r4, r1
	cmp     r2, r0
	blt     branch_21f7484
	ldr     r0,  [pc, #0x24] @ [0x21f749c] (=#0x22194f0)
	ldr     r1,  [pc, #0x24] @ [0x21f74a0] (=#0x221950c)
	ldr     r2,  [pc, #0x24] @ [0x21f74a4] (=#0x22194c4)
	mov     r3, #0x23
	bl      Function_20d407c
.arm
branch_21f7484: @ 21f7484 :arm
	ldr     r1, [r5, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r5]
	strb    r4, [r0, r1]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f749c

.word 0x22194f0 @ 0x21f749c
.word 0x221950c @ 0x21f74a0
.word 0x22194c4 @ 0x21f74a4



.arm
Function_21f74a8: @ 21f74a8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldmib   r5, {r0,r2}
	add     r2, r2, #0x2
	mov     r4, r1
	cmp     r2, r0
	ble     branch_21f74d8
	ldr     r0,  [pc, #0x3c] @ [0x21f7508] (=#0x2219518)
	ldr     r1,  [pc, #0x3c] @ [0x21f750c] (=#0x221950c)
	ldr     r2,  [pc, #0x3c] @ [0x21f7510] (=#0x22194d8)
	mov     r3, #0x2e
	bl      Function_20d407c
.arm
branch_21f74d8: @ 21f74d8 :arm
	ldr     r2, [r5, #0x8]
	mov     r1, r4, asr #8
	add     r0, r2, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r5]
	strb    r1, [r0, r2]
	ldr     r1, [r5, #0x8]
	add     r0, r1, #0x1
	str     r0, [r5, #0x8]
	ldr     r0, [r5]
	strb    r4, [r0, r1]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f7508

.word 0x2219518 @ 0x21f7508
.word 0x221950c @ 0x21f750c
.word 0x22194d8 @ 0x21f7510



.arm
Function_21f7514: @ 21f7514 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r5, r1
	mov     r4, r2
	mov     r6, r0
	cmpne   r4, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	mvn     r0, #0x0
	cmp     r4, r0
	bne     branch_21f7544
	mov     r0, r5
	bl      Function_20d8b60
	mov     r4, r0
.arm
branch_21f7544: @ 21f7544 :arm
	ldmib   r6, {r0,r1}
	add     r1, r1, r4
	cmp     r1, r0
	ble     branch_21f7568
	ldr     r0,  [pc, #0x34] @ [0x21f7590] (=#0x221953c)
	ldr     r1,  [pc, #0x34] @ [0x21f7594] (=#0x221950c)
	ldr     r2,  [pc, #0x34] @ [0x21f7598] (=#0x22194b0)
	mov     r3, #0x40
	bl      Function_20d407c
.arm
branch_21f7568: @ 21f7568 :arm
	ldr     r3, [r6]
	ldr     r0, [r6, #0x8]
	mov     r1, r5
	mov     r2, r4
	add     r0, r3, r0
	bl      Function_20d50b8
	ldr     r0, [r6, #0x8]
	add     r0, r0, r4
	str     r0, [r6, #0x8]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21f7590

.word 0x221953c @ 0x21f7590
.word 0x221950c @ 0x21f7594
.word 0x22194b0 @ 0x21f7598
.arm
Function_21f759c: @ 21f759c :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r1
	mvn     r1, #0x0
	mov     r6, r0
	cmp     r5, r1
	ldreq   r0, [r6, #0x8]
	mov     r4, r2
	subeq   r5, r0, r4
	ldr     r0, [r6, #0x8]
	cmp     r5, r0
	ble     branch_21f75dc
	ldr     r0,  [pc, #0x5c] @ [0x21f762c] (=#0x2219560)
	ldr     r1,  [pc, #0x5c] @ [0x21f7630] (=#0x221950c)
	ldr     r2,  [pc, #0x5c] @ [0x21f7634] (=#0x221949c)
	mov     r3, #0x4f
	bl      Function_20d407c
.arm
branch_21f75dc: @ 21f75dc :arm
	ldr     r0, [r6, #0x8]
	sub     r0, r0, r5
	cmp     r4, r0
	ble     branch_21f7600
	ldr     r0,  [pc, #0x44] @ [0x21f7638] (=#0x2219578)
	ldr     r1,  [pc, #0x38] @ [0x21f7630] (=#0x221950c)
	ldr     r2,  [pc, #0x38] @ [0x21f7634] (=#0x221949c)
	mov     r3, #0x50
	bl      Function_20d407c
.arm
branch_21f7600: @ 21f7600 :arm
	ldr     r0, [r6]
	ldr     r1, [r6, #0x8]
	add     r0, r0, r5
	sub     r2, r1, r5
	add     r1, r0, r4
	sub     r2, r2, r4
	bl      Function_20d50d8
	ldr     r0, [r6, #0x8]
	sub     r0, r0, r4
	str     r0, [r6, #0x8]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21f762c

.word 0x2219560 @ 0x21f762c
.word 0x221950c @ 0x21f7630
.word 0x221949c @ 0x21f7634
.word 0x2219578 @ 0x21f7638



.arm
Function_21f763c: @ 21f763c :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_21f765c
	ldr     r0,  [pc, #0x7c] @ [0x21f76cc] (=#0x2219690)
	ldr     r1,  [pc, #0x7c] @ [0x21f76d0] (=#0x2219698)
	ldr     r2,  [pc, #0x7c] @ [0x21f76d4] (=#0x2219620)
	mov     r3, #0x1b
	bl      Function_20d407c
.arm
branch_21f765c: @ 21f765c :arm
	cmp     r4, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0x24]
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,pc}
	ldr     r1, [r4, #0x1c]
	mov     r0, r4
	add     r1, r1, #0x1
	str     r1, [r4, #0x1c]
	ldr     r1, [r4, #0x24]
	blx     r1
	ldr     r0, [r4, #0x1c]
	sub     r0, r0, #0x1
	str     r0, [r4, #0x1c]
	ldr     r0, [r4, #0x14]
	cmp     r0, #0x0
	beq     branch_21f76c4
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	bne     branch_21f76c4
	mov     r0, r4
	bl      Function_21fa61c
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x21f76c4

.arm
branch_21f76c4: @ 21f76c4 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x21f76cc

.word 0x2219690 @ 0x21f76cc
.word 0x2219698 @ 0x21f76d0
.word 0x2219620 @ 0x21f76d4

.incbin "./baserom/overlay/overlay_0004.bin", 0x26958, 0x21f77f4 - 0x21f76d8


.arm
Function_21f77f4: @ 21f77f4 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_21f7820
	ldr     r0,  [pc, #0xbc] @ [0x21f78d0] (=#0x22196c0)
	ldr     r1,  [pc, #0xbc] @ [0x21f78d4] (=#0x2219698)
	ldr     r2,  [pc, #0xbc] @ [0x21f78d8] (=#0x22195f0)
	mov     r3, #0x69
	bl      Function_20d407c
.arm
branch_21f7820: @ 21f7820 :arm
	cmp     r7, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	str     r6, [r7, #0x18]
	ldr     r0, [r7, #0x28]
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [r7, #0x24]
	cmp     r4, #0x0
	add     r1, r1, #0x1
	str     r1, [r7, #0x24]
	ldr     r12, [r7, #0x8]
	cmpne   r5, #0x0
	ldr     r3, [r12, #0x1c]
	moveq   r5, #0x0
	add     r3, r3, #0x1
	str     r3, [r12, #0x1c]
	moveq   r4, r5
	mov     r2, r5
	ldr     r5, [r7, #0x28]
	mov     r0, r7
	mov     r1, r6
	mov     r3, r4
	blx     r5
	ldr     r0, [r7, #0x24]
	sub     r0, r0, #0x1
	str     r0, [r7, #0x24]
	ldr     r1, [r7, #0x8]
	ldr     r0, [r1, #0x1c]
	sub     r0, r0, #0x1
	str     r0, [r1, #0x1c]
	ldr     r0, [r7, #0x8]
	ldr     r1, [r0, #0x14]
	cmp     r1, #0x0
	beq     branch_21f78c8
	ldr     r1, [r0, #0x1c]
	cmp     r1, #0x0
	bne     branch_21f78c8
	bl      Function_21fa61c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f78c8

.arm
branch_21f78c8: @ 21f78c8 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f78d0

.word 0x22196c0 @ 0x21f78d0
.word 0x2219698 @ 0x21f78d4
.word 0x22195f0 @ 0x21f78d8

.incbin "./baserom/overlay/overlay_0004.bin", 0x26b5c, 0x21f79c0 - 0x21f78dc


.arm
Function_21f79c0: @ 21f79c0 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r4, r0
	mov     r5, r1
	bne     branch_21f79e4
	ldr     r0,  [pc, #0xa0] @ [0x21f7a78] (=#0x22196c0)
	ldr     r1,  [pc, #0xa0] @ [0x21f7a7c] (=#0x2219698)
	ldr     r2,  [pc, #0xa0] @ [0x21f7a80] (=#0x22195c4)
	mov     r3, #0xba
	bl      Function_20d407c
.arm
branch_21f79e4: @ 21f79e4 :arm
	cmp     r4, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x30]
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r1, [r4, #0x24]
	mov     r0, r4
	add     r1, r1, #0x1
	str     r1, [r4, #0x24]
	ldr     r3, [r4, #0x8]
	mov     r1, r5
	ldr     r2, [r3, #0x1c]
	add     r2, r2, #0x1
	str     r2, [r3, #0x1c]
	ldr     r2, [r4, #0x30]
	blx     r2
	ldr     r0, [r4, #0x24]
	sub     r0, r0, #0x1
	str     r0, [r4, #0x24]
	ldr     r1, [r4, #0x8]
	ldr     r0, [r1, #0x1c]
	sub     r0, r0, #0x1
	str     r0, [r1, #0x1c]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r0, #0x14]
	cmp     r1, #0x0
	beq     branch_21f7a70
	ldr     r1, [r0, #0x1c]
	cmp     r1, #0x0
	bne     branch_21f7a70
	bl      Function_21fa61c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f7a70

.arm
branch_21f7a70: @ 21f7a70 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f7a78

.word 0x22196c0 @ 0x21f7a78
.word 0x2219698 @ 0x21f7a7c
.word 0x22195c4 @ 0x21f7a80

.incbin "./baserom/overlay/overlay_0004.bin", 0x26d04, 0x21f7b48 - 0x21f7a84


.arm
Function_21f7b48: @ 21f7b48 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_21f7b74
	ldr     r0,  [pc, #0xc8] @ [0x21f7c30] (=#0x22196c0)
	ldr     r1,  [pc, #0xc8] @ [0x21f7c34] (=#0x2219698)
	ldr     r2,  [pc, #0xc8] @ [0x21f7c38] (=#0x2219608)
	ldr     r3,  [pc, #0xc8] @ [0x21f7c3c] (=#0x101)
	bl      Function_20d407c
branch_21f7b74: @ 21f7b74 :arm
	cmp     r7, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0x98]
	mov     r1, r6
	bl      Function_21e9bc4
	movs    lr, r0
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0x24]
	cmp     r4, #0x0
	add     r0, r0, #0x1
	str     r0, [r7, #0x24]
	ldr     r12, [r7, #0x8]
	cmpne   r5, #0x0
	ldr     r3, [r12, #0x1c]
	moveq   r5, #0x0
	add     r3, r3, #0x1
	ldr     r2, [sp, #0x18]
	str     r3, [r12, #0x1c]
	str     r2, [sp]
	moveq   r4, r5
	mov     r1, r6
	ldr     r6, [lr]
	mov     r0, r7
	mov     r2, r5
	mov     r3, r4
	blx     r6
	ldr     r0, [r7, #0x24]
	sub     r0, r0, #0x1
	str     r0, [r7, #0x24]
	ldr     r1, [r7, #0x8]
	ldr     r0, [r1, #0x1c]
	sub     r0, r0, #0x1
	str     r0, [r1, #0x1c]
	ldr     r0, [r7, #0x8]
	ldr     r1, [r0, #0x14]
	cmp     r1, #0x0
	beq     branch_21f7c28
	ldr     r1, [r0, #0x1c]
	cmp     r1, #0x0
	bne     branch_21f7c28
	bl      Function_21fa61c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}

branch_21f7c28: @ 21f7c28 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f7c30

.word 0x22196c0 @ 0x21f7c30
.word 0x2219698 @ 0x21f7c34
.word 0x2219608 @ 0x21f7c38
.word 0x101 @ 0x21f7c3c

.incbin "./baserom/overlay/overlay_0004.bin", 0x26ec0, 0x21f7d38 - 0x21f7c40


.arm
Function_21f7d38: @ 21f7d38 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0xc
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_21f7d68
	ldr     r0,  [pc, #0xf4] @ [0x21f7e50] (=#0x2219690)
	ldr     r1,  [pc, #0xf4] @ [0x21f7e54] (=#0x2219698)
	ldr     r2,  [pc, #0xf4] @ [0x21f7e58] (=#0x221959c)
	mov     r3, #22, 28 @ #0x160
	bl      Function_20d407c
branch_21f7d68: @ 21f7d68 :arm
	cmp     r7, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r7,pc}
	ldr     r0, [sp, #0x2c]
	cmp     r0, #0x0
	ldrne   r12, [r7, #0x28]
	ldreq   r12, [r7, #0x2c]
	cmp     r12, #0x0
	addeq   sp, sp, #0xc
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r7,pc}
	ldr     r0, [sp, #0x28]
	ldr     r1, [sp, #0x20]
	cmp     r0, #0x0
	ldrne   r0, [sp, #0x24]
	mov     r2, r5
	cmpne   r0, #0x0
	moveq   r0, #0x0
	streq   r0, [sp, #0x28]
	streq   r0, [sp, #0x24]
	ldr     r0, [r7, #0x1c]
	cmp     r6, #0x0
	add     r0, r0, #0x1
	str     r0, [r7, #0x1c]
	ldrne   r0, [r6, #0x24]
	ldr     lr, [sp, #0x28]
	addne   r0, r0, #0x1
	strne   r0, [r6, #0x24]
	str     r1, [sp]
	ldr     r0, [sp, #0x24]
	mov     r1, r6
	str     r0, [sp, #0x4]
	mov     r0, r7
	mov     r3, r4
	str     lr, [sp, #0x8]
	blx     r12
	ldr     r0, [r7, #0x1c]
	cmp     r6, #0x0
	sub     r0, r0, #0x1
	str     r0, [r7, #0x1c]
	ldrne   r0, [r6, #0x24]
	subne   r0, r0, #0x1
	strne   r0, [r6, #0x24]
	ldr     r0, [r7, #0x14]
	cmp     r0, #0x0
	beq     branch_21f7e44
	ldr     r0, [r7, #0x1c]
	cmp     r0, #0x0
	bne     branch_21f7e44
	mov     r0, r7
	bl      Function_21fa61c
	add     sp, sp, #0xc
	mov     r0, #0x0
	ldmfd   sp!, {r4-r7,pc}

branch_21f7e44: @ 21f7e44 :arm
	mov     r0, #0x1
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r7,pc}
@ 0x21f7e50

.word 0x2219690 @ 0x21f7e50
.word 0x2219698 @ 0x21f7e54
.word 0x221959c @ 0x21f7e58

.incbin "./baserom/overlay/overlay_0004.bin", 0x270dc, 0x21f8110 - 0x21f7e5c


.arm
Function_21f8110: @ 21f8110 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x4
	mov     r4, r0
	str     r2, [sp]
	mov     r3, r1
	ldrh    r2, [r4, #0x4]
	ldr     r0, [r4, #0x8]
	ldr     r1, [r4]
	bl      Function_21fa94c
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,r4,pc}
	bl      Function_21ea840
	str     r0, [r4, #0x88]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r3,r4,pc}
@ 0x21f8158


.incbin "./baserom/overlay/overlay_0004.bin", 0x273d8, 0x21f8390 - 0x21f8158


.arm
Function_21f8390: @ 21f8390 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3,lr}
	ldr     r1, [sp, #0x8]
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x7
	ldmeqfd sp!, {r3,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	mov     r0, #0x7
	str     r0, [r1, #0xc]
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x8
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0xc]
	bl      Function_21ea4f4
	ldr     r0, [sp, #0x8]
	add     r1, sp, #0x8
	ldr     r0, [r0, #0x8]
	ldr     r0, [r0, #0x10]
	bl      Function_21e9c2c
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21f83ec


.incbin "./baserom/overlay/overlay_0004.bin", 0x2766c, 0x21f866c - 0x21f83ec


.arm
Function_21f866c: @ 21f866c :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0xc]
	mov     r4, r3
	cmp     r0, #0x5
	ldmnefd sp!, {r3-r5,lr}
	addne   sp, sp, #0x10
	bxne    lr
	add     r0, sp, #0x14
	add     r1, sp, #0x18
	bl      Function_21fae30
	ldr     r0, [r5, #0x98]
	bl      Function_21e9bbc
	cmp     r0, #0x0
	beq     branch_21f86d0
	str     r4, [sp]
	ldr     r2, [sp, #0x14]
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21f7b48
	ldmfd   sp!, {r3-r5,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21f86d0

.arm
branch_21f86d0: @ 21f86d0 :arm
	ldr     r1, [sp, #0x14]
	ldr     r2, [sp, #0x18]
	mov     r0, r5
	mov     r3, r4
	bl      Function_21fa344
	ldmfd   sp!, {r3-r5,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21f86f0


.incbin "./baserom/overlay/overlay_0004.bin", 0x27970, 0x21f8710 - 0x21f86f0


.arm
Function_21f8710: @ 21f8710 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x30] @ [0x21f874c] (=#0x221b3b0)
	ldr     r2, [r1]
	cmp     r2, #0x1
	ldmeqfd sp!, {r3,pc}
	mov     r2, #0x1
	str     r2, [r1]
	ldr     r0, [r0, #0xc]
	ldr     r1,  [pc, #0x18] @ [0x21f8750] (=#0x21f8700)
	mov     r2, #0x0
	bl      Function_21ea6d0
	ldr     r0,  [pc, #0x8] @ [0x21f874c] (=#0x221b3b0)
	mov     r1, #0x0
	str     r1, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x21f874c

.word 0x221b3b0 @ 0x21f874c
.word 0x21f8700 @ 0x21f8750
.arm
Function_21f8754: @ 21f8754 :arm
	ldrh    r0, [r0, #0x8]
	bx      lr
@ 0x21f875c

.arm
Function_21f875c: @ 21f875c :arm
	ldr     r1, [r0, #0x54]
	ldr     r0, [r0, #0x58]
	sub     r0, r1, r0
	bx      lr
@ 0x21f876c

.arm
Function_21f876c: @ 21f876c :arm
	ldr     r0, [r0]
	bx      lr
@ 0x21f8774


.incbin "./baserom/overlay/overlay_0004.bin", 0x279f4, 0x21f87b8 - 0x21f8774


.arm
Function_21f87b8: @ 21f87b8 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bne     branch_21f87d8
	ldr     r0,  [pc, #0x14] @ [0x21f87e0] (=#0x2219708)
	ldr     r1,  [pc, #0x14] @ [0x21f87e4] (=#0x22196fc)
	ldr     r2,  [pc, #0x14] @ [0x21f87e8] (=#0x22196e4)
	ldr     r3,  [pc, #0x14] @ [0x21f87ec] (=#0x1aa)
	bl      Function_20d407c
.arm
branch_21f87d8: @ 21f87d8 :arm
	ldr     r0, [r4, #0x40]
	ldmfd   sp!, {r4,pc}
@ 0x21f87e0

.word 0x2219708 @ 0x21f87e0
.word 0x22196fc @ 0x21f87e4
.word 0x22196e4 @ 0x21f87e8
.word 0x1aa @ 0x21f87ec

.incbin "./baserom/overlay/overlay_0004.bin", 0x27a70, 0x21f8834 - 0x21f87f0


.arm
Function_21f8834: @ 21f8834 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r3, [r6, #0xc]
	mov     r5, r1
	mov     r4, r2
	cmp     r3, #0x5
	bge     branch_21f889c
	ldr     r1, [r6, #0x10]
	cmp     r1, #0x0
	beq     branch_21f8884
	bl      Function_21f8390
	mov     r2, #0x0
	mov     r0, r6
	mov     r1, r5
	mov     r3, r2
	bl      Function_21f77f4
	cmp     r0, #0x0
	bne     branch_21f88c0
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x21f8884

.arm
branch_21f8884: @ 21f8884 :arm
	cmp     r3, #0x4
	moveq   r0, #0x1
	streq   r0, [r6, #0x14]
	mov     r0, r6
	bl      Function_21f8390
	b       branch_21f88c0
@ 0x21f889c

.arm
branch_21f889c: @ 21f889c :arm
	cmp     r3, #0x7
	beq     branch_21f88c0
	bl      Function_21f8390
	mov     r0, r6
	mov     r1, r4
	bl      Function_21f79c0
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_21f88c0: @ 21f88c0 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x21f88c8


.incbin "./baserom/overlay/overlay_0004.bin", 0x27b48, 0x21f88dc - 0x21f88c8


.arm
Function_21f88dc: @ 21f88dc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21fa270
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, r4
	mov     r1, #0x1
	mov     r2, #0x4
	bl      Function_21f8834
	ldmfd   sp!, {r4,pc}
@ 0x21f8908


.incbin "./baserom/overlay/overlay_0004.bin", 0x27b88, 0x21f9968 - 0x21f8908


.arm
Function_21f9968: @ 21f9968 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x10
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_21fa3c4
	ldr     r1, [r7, #0x2c]
	mov     r4, r0
	cmp     r1, #0x0
	beq     branch_21f99cc
	mov     r0, #0x1
	str     r0, [sp]
	mov     r12, #0x0
	str     r12, [sp, #0x4]
	str     r12, [sp, #0x8]
	mov     r0, r7
	mov     r1, r4
	mov     r2, r6
	mov     r3, r5
	str     r12, [sp, #0xc]
	bl      Function_21f7d38
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_21f99cc: @ 21f99cc :arm
	cmp     r4, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r4, #0xc]
	cmp     r0, #0x0
	bne     branch_21f9a3c
	ldr     r0, [r4, #0x20]
	cmp     r0, #0x0
	beq     branch_21f9a0c
	bl      Function_21ea840
	ldr     r2, [r4, #0x1c]
	ldr     r1, [r4, #0x20]
	sub     r0, r0, r2
	cmp     r0, r1
	bcs     branch_21f9a18
.arm
branch_21f9a0c: @ 21f9a0c :arm
	add     sp, sp, #0x10
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9a18

.arm
branch_21f9a18: @ 21f9a18 :arm
	mov     r0, r4
	mov     r1, #0x6
	mov     r2, #0x1
	bl      Function_21f8834
	cmp     r0, #0x0
	bne     branch_21f9a5c
	add     sp, sp, #0x10
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9a3c

.arm
branch_21f9a3c: @ 21f9a3c :arm
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x1
	bl      Function_21f8834
	cmp     r0, #0x0
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_21f9a5c: @ 21f9a5c :arm
	mov     r0, #0x1
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9a68


.incbin "./baserom/overlay/overlay_0004.bin", 0x28ce8, 0x21f9b98 - 0x21f9a68


.arm
Function_21f9b98: @ 21f9b98 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x10
	add     r4, sp, #0x0
	mov     r3, #0x0
	mov     r5, r0
	str     r3, [r4]
	str     r3, [r4, #0x4]
	str     r3, [r4, #0x8]
	str     r3, [r4, #0xc]
	ldr     r0, [r5, #0x58]
	str     r0, [sp]
	str     r2, [sp, #0x4]
	strh    r1, [sp, #0x8]
	bl      Function_21ea840
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x60]
	bl      Function_21e9bbc
	mov     r4, r0
	ldr     r0, [r5, #0x60]
	add     r1, sp, #0x0
	bl      Function_21e9c2c
	ldr     r0, [r5, #0x60]
	bl      Function_21e9bbc
	add     r1, r4, #0x1
	cmp     r1, r0
	moveq   r0, #0x1
	movne   r0, #0x0
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f9c0c

.arm
Function_21f9c0c: @ 21f9c0c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r5, r2
	add     r0, r7, #0x50
	mov     r6, r1
	mov     r4, r3
	bl      Function_21f7448
	cmp     r0, r5
	bge     branch_21f9c4c
	mov     r0, r7
	bl      Function_21f88dc
	cmp     r0, #0x0
	moveq   r0, #0x0
	movne   r0, #0x1
	strne   r0, [r4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9c4c

.arm
branch_21f9c4c: @ 21f9c4c :arm
	ldrh    r1, [r7, #0x64]
	mov     r0, r7
	mov     r2, r5
	bl      Function_21f9b98
	cmp     r0, #0x0
	bne     branch_21f9c80
	mov     r0, r7
	bl      Function_21f88dc
	cmp     r0, #0x0
	moveq   r0, #0x0
	movne   r0, #0x1
	strne   r0, [r4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9c80

.arm
branch_21f9c80: @ 21f9c80 :arm
	ldr     r1,  [pc, #0x44] @ [0x21f9ccc] (=#0x2219734)
	add     r0, r7, #0x50
	mov     r2, #0x2
	bl      Function_21f7514
	add     r0, r7, #0x50
	and     r1, r6, #0xff
	bl      Function_21f7458
	ldrh    r1, [r7, #0x64]
	add     r0, r7, #0x50
	add     r2, r1, #0x1
	strh    r2, [r7, #0x64]
	bl      Function_21f74a8
	ldrh    r1, [r7, #0x66]
	add     r0, r7, #0x50
	bl      Function_21f74a8
	mov     r0, #0x0
	str     r0, [r4]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x21f9ccc

.word 0x2219734 @ 0x21f9ccc
.arm
Function_21f9cd0: @ 21f9cd0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x60]
	bl      Function_21e9bbc
	mov     r4, r0
	cmp     r4, #0x0
	bgt     branch_21f9d00
	ldr     r0,  [pc, #0x40] @ [0x21f9d34] (=#0x2219738)
	ldr     r1,  [pc, #0x40] @ [0x21f9d38] (=#0x2219740)
	ldr     r2,  [pc, #0x40] @ [0x21f9d3c] (=#0x2219714)
	ldr     r3,  [pc, #0x40] @ [0x21f9d40] (=#0x475)
	bl      Function_20d407c
.arm
branch_21f9d00: @ 21f9d00 :arm
	ldr     r0, [r5, #0x60]
	sub     r1, r4, #0x1
	bl      Function_21e9bc4
	ldmia   r0, {r1,r2}
	ldr     r3, [r5, #0x50]
	mov     r0, r5
	add     r1, r3, r1
	bl      Function_21f8110
	cmp     r0, #0x0
	mov     r0, #0x0
	strne   r0, [r5, #0x90]
	movne   r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x21f9d34

.word 0x2219738 @ 0x21f9d34
.word 0x2219740 @ 0x21f9d38
.word 0x2219714 @ 0x21f9d3c
.word 0x475 @ 0x21f9d40
.arm
Function_21f9d44: @ 21f9d44 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	mov     r4, r2
	mov     r5, r1
	add     r3, sp, #0x0
	add     r2, r4, #0x7
	mov     r1, #0x0
	mov     r6, r0
	bl      Function_21f9c0c
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r0, [sp]
	cmp     r0, #0x0
	addne   sp, sp, #0x4
	movne   r0, #0x1
	ldmnefd sp!, {r3-r6,pc}
	mov     r1, r5
	mov     r2, r4
	add     r0, r6, #0x50
	bl      Function_21f7514
	mov     r0, r6
	bl      Function_21f9cd0
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21f9db8


.incbin "./baserom/overlay/overlay_0004.bin", 0x29038, 0x21fa0a4 - 0x21f9db8


.arm
Function_21fa0a4: @ 21fa0a4 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r7, r2
	mov     r9, r0
	mov     r8, r1
	cmp     r7, #0x2
	blt     branch_21fa0d4
	ldr     r1,  [pc, #0xa4] @ [0x21fa168] (=#0x2219734)
	mov     r0, r8
	mov     r2, #0x2
	bl      Function_20d5190
	cmp     r0, #0x0
	beq     branch_21fa0f4
.arm
branch_21fa0d4: @ 21fa0d4 :arm
	mov     r0, r9
	mov     r1, r8
	mov     r2, r7
	bl      Function_21f8110
	cmp     r0, #0x0
	moveq   r0, #0x0
	movne   r0, #0x1
	ldmfd   sp!, {r3-r9,pc}
@ 0x21fa0f4

.arm
branch_21fa0f4: @ 21fa0f4 :arm
	add     r6, r7, #0x2
	add     r0, r9, #0x50
	bl      Function_21f7448
	cmp     r0, r6
	movlt   r0, #0x1
	ldmltfd sp!, {r3-r9,pc}
	ldr     r1,  [pc, #0x54] @ [0x21fa168] (=#0x2219734)
	add     r0, r9, #0x50
	ldr     r5, [r9, #0x50]
	ldr     r4, [r9, #0x58]
	mov     r2, #0x2
	bl      Function_21f7514
	mov     r1, r8
	mov     r2, r7
	add     r0, r9, #0x50
	bl      Function_21f7514
	mov     r0, r9
	mov     r2, r6
	add     r1, r5, r4
	bl      Function_21f8110
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r9,pc}
	mov     r2, r6
	add     r0, r9, #0x50
	mvn     r1, #0x0
	bl      Function_21f759c
	mov     r0, #0x1
	ldmfd   sp!, {r3-r9,pc}
@ 0x21fa168

.word 0x2219734 @ 0x21fa168

.incbin "./baserom/overlay/overlay_0004.bin", 0x293ec, 0x21fa270 - 0x21fa16c


.arm
Function_21fa270: @ 21fa270 :arm
	ldr     r12,  [pc, #0x10] @ [0x21fa288] (=#0x21fa28c)
	mov     r1, r0
	ldrh    r2, [r1, #0x4]
	ldr     r0, [r1, #0x8]
	ldr     r1, [r1]
	bx      r12
@ 0x21fa288

.word 0x21fa28c @ 0x21fa288

.incbin "./baserom/overlay/overlay_0004.bin", 0x2950c, 0x21fa344 - 0x21fa28c


.arm
Function_21fa344: @ 21fa344 :arm
	stmfd   sp!, {r3,lr}
	cmp     r3, #0x0
	beq     branch_21fa358
	bl      Function_21f9d44
	ldmfd   sp!, {r3,pc}
@ 0x21fa358

.arm
branch_21fa358: @ 21fa358 :arm
	bl      Function_21fa0a4
	ldmfd   sp!, {r3,pc}
@ 0x21fa360


.incbin "./baserom/overlay/overlay_0004.bin", 0x295e0, 0x21fa3c4 - 0x21fa360


.arm
Function_21fa3c4: @ 21fa3c4 :arm
	stmfd   sp!, {lr}
	sub     sp, sp, #0xa4
	add     r3, sp, #0x4
	str     r1, [sp, #0x4]
	strh    r2, [sp, #0x8]
	str     r3, [sp]
	ldr     r0, [r0, #0xc]
	add     r1, sp, #0x0
	bl      Function_21ea598
	cmp     r0, #0x0
	ldrne   r0, [r0]
	moveq   r0, #0x0
	add     sp, sp, #0xa4
	ldmfd   sp!, {pc}
@ 0x21fa3fc


.incbin "./baserom/overlay/overlay_0004.bin", 0x2967c, 0x21fa61c - 0x21fa3fc


.arm
Function_21fa61c: @ 21fa61c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	movne   r0, #0x1
	strne   r0, [r4, #0x14]
	ldmnefd sp!, {r4,pc}
	ldr     r0, [r4]
	bl      Function_21eacf0
	ldr     r0, [r4, #0xc]
	bl      Function_21ea364
	ldr     r0, [r4, #0x10]
	bl      Function_21e9b50
	mov     r0, r4
	bl      Function_21d78b0
	bl      Function_21ea8a8
	ldmfd   sp!, {r4,pc}
@ 0x21fa660


.incbin "./baserom/overlay/overlay_0004.bin", 0x298e0, 0x21fa94c - 0x21fa660


.arm
Function_21fa94c: @ 21fa94c :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x18
	mov     r6, r0
	mov     r5, r1
	add     r0, sp, #0x34
	add     r1, sp, #0x38
	mov     r4, r2
	bl      Function_21fae30
	ldr     r0, [r6]
	bl      Function_21eab94
	cmp     r0, #0x0
	addeq   sp, sp, #0x18
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	mov     r1, r4, asr #8
	mov     r0, r4, lsl #8
	add     r2, sp, #0x10
	mov     r3, #0x0
	str     r3, [r2, #0x4]
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	str     r3, [r2]
	mov     r1, #0x2
	strh    r0, [sp, #0x12]
	strb    r1, [sp, #0x11]
	str     r5, [sp, #0x14]
	str     r2, [sp]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r6]
	ldr     r1, [sp, #0x34]
	ldr     r2, [sp, #0x38]
	bl      Function_21eae5c
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_21faa78
	ldr     r0, [r6]
	bl      Function_21eaf38
	mvn     r2, #0xe
	cmp     r0, r2
	bne     branch_21faa2c
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21f9968
	cmp     r0, #0x0
	bne     branch_21faae0
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21faa2c

.arm
branch_21faa2c: @ 21faa2c :arm
	sub     r1, r2, #0x1b
	cmp     r0, r1
	addne   r1, r2, #0x9
	cmpne   r0, r1
	addeq   sp, sp, #0x18
	moveq   r0, #0x1
	ldmeqfd sp!, {r4-r6,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
	sub     r1, r2, #0x14
	cmp     r0, r1
	beq     branch_21faae0
	mov     r0, r6
	bl      Function_21fabc0
	add     sp, sp, #0x18
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21faa78

.arm
branch_21faa78: @ 21faa78 :arm
	ldr     r0, [r6, #0x28]
	cmp     r0, #0x0
	beq     branch_21faae0
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_21fa3c4
	mov     r1, #0x0
	str     r1, [sp]
	ldr     r2, [sp, #0x34]
	mov     r1, r0
	str     r2, [sp, #0x4]
	ldr     r12, [sp, #0x38]
	mov     r3, r4
	mov     r0, r6
	mov     r2, r5
	str     r12, [sp, #0x8]
	mov     r4, #0x1
	str     r4, [sp, #0xc]
	bl      Function_21f7d38
	cmp     r0, #0x0
	addeq   sp, sp, #0x18
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,lr}
	addeq   sp, sp, #0x10
	bxeq    lr
.arm
branch_21faae0: @ 21faae0 :arm
	mov     r0, #0x1
	add     sp, sp, #0x18
	ldmfd   sp!, {r4-r6,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21faaf4


.incbin "./baserom/overlay/overlay_0004.bin", 0x29d74, 0x21fabc0 - 0x21faaf4


.arm
Function_21fabc0: @ 21fabc0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x18]
	cmp     r1, #0x0
	ldmnefd sp!, {r4,pc}
	mov     r1, #0x1
	str     r1, [r4, #0x18]
	bl      Function_21f8710
	mov     r0, r4
	bl      Function_21f763c
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r0, r4
	bl      Function_21fa61c
	ldmfd   sp!, {r4,pc}
@ 0x21fabfc


.incbin "./baserom/overlay/overlay_0004.bin", 0x29e7c, 0x21fae30 - 0x21fabfc


.arm
Function_21fae30: @ 21fae30 :arm
	stmfd   sp!, {r4,lr}
	ldr     r2, [r0]
	mov     r4, r1
	cmp     r2, #0x0
	bne     branch_21fae58
	ldr     r2,  [pc, #0x30] @ [0x21fae7c] (=#0x22197a4)
	mov     r1, #0x0
	str     r2, [r0]
	str     r1, [r4]
	ldmfd   sp!, {r4,pc}
@ 0x21fae58

.arm
branch_21fae58: @ 21fae58 :arm
	ldr     r1, [r4]
	mvn     r0, #0x0
	cmp     r1, r0
	ldmnefd sp!, {r4,pc}
	mov     r0, r2
	bl      Function_20d8b60
	add     r0, r0, #0x1
	str     r0, [r4]
	ldmfd   sp!, {r4,pc}
@ 0x21fae7c

.word 0x22197a4 @ 0x21fae7c

.incbin "./baserom/overlay/overlay_0004.bin", 0x2a100, 0x21fb018 - 0x21fae80


.arm
Function_21fb018: @ 21fb018 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x1c] @ [0x21fb040] (=#0x221b3e4)
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21e9b50
	ldr     r0,  [pc, #0x8] @ [0x21fb040] (=#0x221b3e4)
	mov     r1, #0x0
	str     r1, [r0, #0x10]
	ldmfd   sp!, {r3,pc}
@ 0x21fb040

.word 0x221b3e4 @ 0x21fb040

.incbin "./baserom/overlay/overlay_0004.bin", 0x2a2c4, 0x21fbd94 - 0x21fb044


.arm
Function_21fbd94: @ 21fbd94 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x40
	movs    r5, r0
	mov     r8, r1
	mov     r4, r2
	mov     r7, r3
	ldreq   r6,  [pc, #0x18c] @ [0x21fbf40] (=#0x22197f4)
	beq     branch_21fbdc4
	mov     r0, #17, 28 @ #0x110
	bl      Function_21d7880
	mov     r6, r0
	str     r0, [r5]
.arm
branch_21fbdc4: @ 21fbdc4 :arm
	bl      Function_21ea840
	bl      Function_20d76d4
	mov     r1, r7
	add     r0, r6, #0x4
	bl      Function_20d8b7c
	ldr     r1, [sp, #0x58]
	add     r0, r6, #0x44
	bl      Function_20d8b7c
	str     r4, [r6, #0xc0]
	mov     r5, #0x0
	str     r5, [r6, #0xac]
	str     r5, [r6, #0xb0]
	str     r8, [r6]
	mov     r1, #0x1
	str     r1, [r6, #0xb8]
	ldr     r0, [sp, #0x7c]
	ldr     r1, [sp, #0x64]
	str     r0, [r6, #0x10c]
	str     r1, [r6, #0x88]
	ldr     r0, [sp, #0x68]
	ldr     r1, [sp, #0x6c]
	str     r0, [r6, #0x8c]
	str     r1, [r6, #0x90]
	ldr     r0, [sp, #0x70]
	ldr     r1, [sp, #0x74]
	str     r0, [r6, #0x94]
	ldr     r0, [sp, #0x78]
	str     r1, [r6, #0x98]
	str     r0, [r6, #0x9c]
	str     r5, [r6, #0xa0]
	str     r5, [r6, #0xa4]
	ldr     r0, [sp, #0x5c]
	str     r5, [r6, #0xd4]
	str     r0, [r6, #0xbc]
	ldr     r0, [sp, #0x60]
	str     r5, [r6, #0xc4]
	str     r0, [r6, #0xc8]
	str     r5, [r6, #0x104]
	add     r0, r6, #1, 24 @ #0x100
	strh    r5, [r0, #0x8]
	str     r5, [r6, #0xa8]
	ldr     r4,  [pc, #0xd4] @ [0x21fbf44] (=#0x80808081)
	str     r5, [r6, #0xb4]
	mov     r8, #0xff
.arm
branch_21fbe74: @ 21fbe74 :arm
	bl      Function_20d76a0
	smull   r1, r2, r4, r0
	add     r3, r6, r5
	add     r5, r5, #0x1
	add     r2, r0, r2
	mov     r1, r0, lsr #31
	add     r2, r1, r2, asr #7
	smull   r1, r2, r8, r2
	sub     r2, r0, r1
	strb    r2, [r3, #0x84]
	cmp     r5, #0x4
	blt     branch_21fbe74
	mov     r2, #0x0
	mvn     r1, #0x0
.arm
branch_21fbeac: @ 21fbeac :arm
	add     r0, r6, r2, lsl #2
	add     r2, r2, #0x1
	str     r1, [r0, #0xd8]
	cmp     r2, #0xa
	blt     branch_21fbeac
	mov     r1, #0x0
	ldr     r0,  [pc, #0x7c] @ [0x21fbf48] (=#0x221b5f8)
	str     r1, [r6, #0x100]
	ldr     r0, [r0]
	cmp     r0, #0x0
	bne     branch_21fbedc
	bl      Function_21fc330
.arm
branch_21fbedc: @ 21fbedc :arm
	ldr     r0, [sp, #0x5c]
	cmp     r0, #0x0
	beq     branch_21fbf28
	ldr     r0,  [pc, #0x5c] @ [0x21fbf4c] (=#0x221b610)
	ldrsb   r4, [r0]
	cmp     r4, #0x0
	bne     branch_21fbf08
	ldr     r1,  [pc, #0x50] @ [0x21fbf50] (=#0x2219904)
	add     r0, sp, #0x0
	mov     r2, r7
	bl      Function_20d7510
.arm
branch_21fbf08: @ 21fbf08 :arm
	cmp     r4, #0x0
	ldrne   r0,  [pc, #0x38] @ [0x21fbf4c] (=#0x221b610)
	ldr     r1,  [pc, #0x3c] @ [0x21fbf54] (=#0x6cfc)
	addeq   r0, sp, #0x0
	add     r2, r6, #0xcc
	mov     r3, #0x0
	bl      Function_21fc3a4
	b       branch_21fbf2c
@ 0x21fbf28

.arm
branch_21fbf28: @ 21fbf28 :arm
	mov     r0, #0x1
.arm
branch_21fbf2c: @ 21fbf2c :arm
	cmp     r0, #0x0
	moveq   r0, #0x3
	movne   r0, #0x0
	add     sp, sp, #0x40
	ldmfd   sp!, {r4-r8,pc}
@ 0x21fbf40

.word 0x22197f4 @ 0x21fbf40
.word 0x80808081 @ 0x21fbf44
.word 0x221b5f8 @ 0x21fbf48
.word 0x221b610 @ 0x21fbf4c
.word 0x2219904 @ 0x21fbf50
.word 0x6cfc @ 0x21fbf54
.arm
Function_21fbf58: @ 21fbf58 :arm
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x8] @ [0x21fbf6c] (=#0x22197f0)
	ldreq   r0, [r0]
	str     r1, [r0, #0xa0]
	bx      lr
@ 0x21fbf6c

.word 0x22197f0 @ 0x21fbf6c
.arm
Function_21fbf70: @ 21fbf70 :arm
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x8] @ [0x21fbf84] (=#0x22197f0)
	ldreq   r0, [r0]
	str     r1, [r0, #0xa4]
	bx      lr
@ 0x21fbf84

.word 0x22197f0 @ 0x21fbf84
.arm
Function_21fbf88: @ 21fbf88 :arm
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x8] @ [0x21fbf9c] (=#0x22197f0)
	ldreq   r0, [r0]
	str     r1, [r0, #0xa8]
	bx      lr
@ 0x21fbf9c

.word 0x22197f0 @ 0x21fbf9c

.incbin "./baserom/overlay/overlay_0004.bin", 0x2b220, 0x21fc194 - 0x21fbfa0


.arm
Function_21fc194: @ 21fc194 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldreq   r0,  [pc, #0x44] @ [0x21fc1e8] (=#0x22197f0)
	ldreq   r4, [r0]
	ldr     r0, [r4, #0xbc]
	cmp     r0, #0x0
	ldmeqfd sp!, {r4,pc}
	bl      Function_21ea840
	ldr     r2, [r4, #0xac]
	ldr     r1,  [pc, #0x2c] @ [0x21fc1ec] (=#0x2710)
	sub     r0, r0, r2
	cmp     r0, r1
	movcc   r0, #0x1
	strcc   r0, [r4, #0xb4]
	ldmccfd sp!, {r4,pc}
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21fd2d4
	mov     r0, #0x0
	str     r0, [r4, #0xb4]
	ldmfd   sp!, {r4,pc}
@ 0x21fc1e8

.word 0x22197f0 @ 0x21fc1e8
.word 0x2710 @ 0x21fc1ec
.arm
Function_21fc1f0: @ 21fc1f0 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	ldreq   r0,  [pc, #0x6c] @ [0x21fc26c] (=#0x22197f0)
	ldreq   r4, [r0]
	ldr     r0, [r4, #0xbc]
	cmp     r0, #0x0
	beq     branch_21fc218
	mov     r0, r4
	mov     r1, #0x2
	bl      Function_21fd2d4
.arm
branch_21fc218: @ 21fc218 :arm
	ldr     r0, [r4]
	mvn     r1, #0x0
	cmp     r0, r1
	ldrne   r1, [r4, #0xc4]
	cmpne   r1, #0x0
	beq     branch_21fc234
	bl      Function_21eacf0
.arm
branch_21fc234: @ 21fc234 :arm
	mvn     r0, #0x0
	str     r0, [r4]
	mov     r0, #0x0
	str     r0, [r4, #0xac]
	ldr     r0, [r4, #0xc4]
	cmp     r0, #0x0
	beq     branch_21fc254
	bl      Function_21ea8a8
.arm
branch_21fc254: @ 21fc254 :arm
	ldr     r0,  [pc, #0x14] @ [0x21fc270] (=#0x22197f4)
	cmp     r4, r0
	ldmeqfd sp!, {r4,pc}
	mov     r0, r4
	bl      Function_21d78b0
	ldmfd   sp!, {r4,pc}
@ 0x21fc26c

.word 0x22197f0 @ 0x21fc26c
.word 0x22197f4 @ 0x21fc270

.incbin "./baserom/overlay/overlay_0004.bin", 0x2b4f4, 0x21fc2a0 - 0x21fc274


.arm
Function_21fc2a0: @ 21fc2a0 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x14
	mov     r2, r1
	mov     r4, r0
	ldr     r1,  [pc, #0x18] @ [0x21fc2d0] (=#0x221995c)
	add     r0, sp, #0x0
	bl      Function_20d7510
	add     r1, sp, #0x0
	mov     r0, r4
	bl      Function_21fc2d4
	add     sp, sp, #0x14
	ldmfd   sp!, {r3,r4,pc}
@ 0x21fc2d0

.word 0x221995c @ 0x21fc2d0
.arm
Function_21fc2d4: @ 21fc2d4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r1
	mov     r4, r0
	mov     r0, r6
	bl      Function_20d8b60
	ldr     r3, [r4, #0x800]
	add     r5, r0, #0x1
	rsb     r0, r3, #2, 22 @ #0x800
	cmp     r5, r0
	movgt   r5, r0
	cmp     r5, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	mov     r1, r6
	mov     r2, r5
	add     r0, r4, r3
	bl      Function_20d50b8
	ldr     r0, [r4, #0x800]
	mov     r1, #0x0
	add     r0, r0, r5
	str     r0, [r4, #0x800]
	sub     r0, r0, #0x1
	strb    r1, [r4, r0]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21fc330

.arm
Function_21fc330: @ 21fc330 :arm
	stmfd   sp!, {r4-r6,lr}
	bl      Function_21eabbc
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r1,  [pc, #0x54] @ [0x21fc39c] (=#0x221b5f8)
	mov     r6, #0x0
	ldr     r12,  [pc, #0x50] @ [0x21fc3a0] (=#0x221b5fc)
	str     r6, [r1]
.arm
branch_21fc350: @ 21fc350 :arm
	ldr     r2, [r0, #0xc]
	mov     r5, r6, lsl #2
	ldr     r4, [r2, r6, lsl #0x2]
	cmp     r4, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	ldrb    r3, [r4]
	ldrb    r2, [r4, #0x1]
	add     r6, r6, #0x1
	add     lr, r12, r5
	strb    r3, [r12, r5]
	strb    r2, [lr, #0x1]
	ldrb    r3, [r4, #0x2]
	ldrb    r2, [r4, #0x3]
	cmp     r6, #0x5
	strb    r3, [lr, #0x2]
	strb    r2, [lr, #0x3]
	str     r6, [r1]
	blt     branch_21fc350
	ldmfd   sp!, {r4-r6,pc}
@ 0x21fc39c

.word 0x221b5f8 @ 0x21fc39c
.word 0x221b5fc @ 0x21fc3a0
.arm
Function_21fc3a4: @ 21fc3a4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r1, r1, lsl #16
	mov     r1, r1, lsr #16
	mov     r4, r1, asr #8
	mov     r1, r1, lsl #8
	mov     r6, r2
	mov     r5, #0x2
	and     r2, r4, #0xff
	and     r1, r1, #255, 24 @ #0xff00
	strb    r5, [r6, #0x1]
	orr     r1, r2, r1
	strh    r1, [r6, #0x2]
	mov     r4, #0x0
	movs    r7, r0
	mov     r5, r3
	streq   r4, [r6, #0x4]
	beq     branch_21fc3f0
	bl      Function_21eaf1c
	str     r0, [r6, #0x4]
.arm
branch_21fc3f0: @ 21fc3f0 :arm
	ldr     r1, [r6, #0x4]
	mvn     r0, #0x0
	cmp     r1, r0
	bne     branch_21fc438
	ldr     r1,  [pc, #0x40] @ [0x21fc448] (=#0x2219960)
	mov     r0, r7
	bl      Function_20d8d14
	cmp     r0, #0x0
	beq     branch_21fc438
	mov     r0, r7
	bl      Function_220854c
	movs    r4, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r4, #0xc]
	ldr     r0, [r0]
	ldr     r0, [r0]
	str     r0, [r6, #0x4]
.arm
branch_21fc438: @ 21fc438 :arm
	cmp     r5, #0x0
	strne   r4, [r5]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x21fc448

.word 0x2219960 @ 0x21fc448

.incbin "./baserom/overlay/overlay_0004.bin", 0x2b6cc, 0x21fc6b0 - 0x21fc44c


.arm
Function_21fc6b0: @ 21fc6b0 :arm
	strb    r1, [r0]
	ldrb    r12, [r2]
	ldrb    r3, [r2, #0x1]
	mov     r1, #0x5
	strb    r12, [r0, #0x1]
	strb    r3, [r0, #0x2]
	ldrb    r3, [r2, #0x2]
	ldrb    r2, [r2, #0x3]
	strb    r3, [r0, #0x3]
	strb    r2, [r0, #0x4]
	str     r1, [r0, #0x800]
	bx      lr
@ 0x21fc6e0


.incbin "./baserom/overlay/overlay_0004.bin", 0x2b960, 0x21fc830 - 0x21fc6e0


.arm
Function_21fc830: @ 21fc830 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #67, 30 @ #0x10c
	movs    r11, r3
	mov     r3, #0x0
	ldr     r7, [sp, #0x130]
	str     r3, [sp, #0x108]
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	addeq   sp, sp, #67, 30 @ #0x10c
	ldmeqfd sp!, {r4-r11,pc}
	sub     r0, r8, #0x1
	cmp     r0, #0x1
	bhi     branch_21fc8dc
	ldr     r0, [r9, #0x800]
	rsb     r0, r0, #2, 22 @ #0x800
	cmp     r0, #0x2
	addcc   sp, sp, #67, 30 @ #0x10c
	ldmccfd sp!, {r4-r11,pc}
	ldr     r1, [r10, #0x10c]
	ldr     r2, [r10, #0x98]
	mov     r0, r8
	blx     r2
	str     r0, [sp]
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp, #0x4]
	add     r0, sp, #0x4
	ldrb    r1, [r0]
	ldr     r2, [r9, #0x800]
	ldrb    r0, [r0, #0x1]
	add     r3, r9, r2
	strb    r1, [r9, r2]
	strb    r0, [r3, #0x1]
	ldr     r0, [r9, #0x800]
	add     r0, r0, #0x2
	str     r0, [r9, #0x800]
	b       branch_21fc8e4
@ 0x21fc8dc

.arm
branch_21fc8dc: @ 21fc8dc :arm
	mov     r0, #0x1
	str     r0, [sp]
.arm
branch_21fc8e4: @ 21fc8e4 :arm
	cmp     r11, #0xff
	bne     branch_21fc9b8
	ldr     r2, [r10, #0x10c]
	ldr     r3, [r10, #0x94]
	add     r1, sp, #0x8
	mov     r0, r8
	blx     r3
	ldr     r0, [sp, #0x108]
	mov     r5, #0x0
	cmp     r0, #0x0
	ble     branch_21fc980
	ldr     r11,  [pc, #0x164] @ [0x21fca7c] (=#0x221997c)
	ldr     r4,  [pc, #0x164] @ [0x21fca80] (=#0x2219b38)
	add     r7, sp, #0x8
.arm
branch_21fc91c: @ 21fc91c :arm
	ldrb    r0, [r7]
	ldr     r1, [r4, r0, lsl #0x2]
	mov     r0, r9
	cmp     r1, #0x0
	moveq   r1, r11
	bl      Function_21fc2d4
	cmp     r8, #0x0
	bne     branch_21fc96c
	ldrb    r0, [r7]
	ldr     r2, [r10, #0x10c]
	ldr     r3, [r10, #0x88]
	mov     r1, r9
	ldr     r6, [r9, #0x800]
	blx     r3
	ldr     r0, [r9, #0x800]
	cmp     r6, r0
	bne     branch_21fc96c
	ldr     r1,  [pc, #0x11c] @ [0x21fca84] (=#0x2219984)
	mov     r0, r9
	bl      Function_21fc2d4
.arm
branch_21fc96c: @ 21fc96c :arm
	ldr     r0, [sp, #0x108]
	add     r5, r5, #0x1
	cmp     r5, r0
	add     r7, r7, #0x1
	blt     branch_21fc91c
.arm
branch_21fc980: @ 21fc980 :arm
	ldr     r1, [r9, #0x800]
	rsb     r0, r1, #2, 22 @ #0x800
	cmp     r0, #0x1
	addlt   sp, sp, #67, 30 @ #0x10c
	ldmltfd sp!, {r4-r11,pc}
	add     r0, r1, #0x1
	str     r0, [r9, #0x800]
	mov     r0, #0x0
	strb    r0, [r9, r1]
	ldr     r11, [sp, #0x108]
	cmp     r8, #0x0
	add     r7, sp, #0x8
	addeq   sp, sp, #67, 30 @ #0x10c
	ldmeqfd sp!, {r4-r11,pc}
.arm
branch_21fc9b8: @ 21fc9b8 :arm
	ldr     r0, [sp]
	mov     r4, #0x0
	cmp     r0, #0x0
	addle   sp, sp, #67, 30 @ #0x10c
	ldmlefd sp!, {r4-r11,pc}
.arm
branch_21fc9cc: @ 21fc9cc :arm
	mov     r5, #0x0
	cmp     r11, #0x0
	ble     branch_21fca64
.arm
branch_21fc9d8: @ 21fc9d8 :arm
	cmp     r8, #0x0
	ldr     r6, [r9, #0x800]
	bne     branch_21fc9fc
	ldrb    r0, [r7, r5]
	ldr     r2, [r10, #0x10c]
	ldr     r3, [r10, #0x88]
	mov     r1, r9
	blx     r3
	b       branch_21fca40
@ 0x21fc9fc

.arm
branch_21fc9fc: @ 21fc9fc :arm
	cmp     r8, #0x1
	bne     branch_21fca20
	ldrb    r0, [r7, r5]
	ldr     r3, [r10, #0x10c]
	ldr     r12, [r10, #0x8c]
	mov     r1, r4
	mov     r2, r9
	blx     r12
	b       branch_21fca40
@ 0x21fca20

.arm
branch_21fca20: @ 21fca20 :arm
	cmp     r8, #0x2
	bne     branch_21fca40
	ldrb    r0, [r7, r5]
	ldr     r3, [r10, #0x10c]
	ldr     r12, [r10, #0x90]
	mov     r1, r4
	mov     r2, r9
	blx     r12
.arm
branch_21fca40: @ 21fca40 :arm
	ldr     r0, [r9, #0x800]
	cmp     r6, r0
	bne     branch_21fca58
	ldr     r1,  [pc, #0x30] @ [0x21fca84] (=#0x2219984)
	mov     r0, r9
	bl      Function_21fc2d4
.arm
branch_21fca58: @ 21fca58 :arm
	add     r5, r5, #0x1
	cmp     r5, r11
	blt     branch_21fc9d8
.arm
branch_21fca64: @ 21fca64 :arm
	ldr     r0, [sp]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21fc9cc
	add     sp, sp, #67, 30 @ #0x10c
	ldmfd   sp!, {r4-r11,pc}
@ 0x21fca7c

.word 0x221997c @ 0x21fca7c
.word 0x2219b38 @ 0x21fca80
.word 0x2219984 @ 0x21fca84
.arm
Function_21fca88: @ 21fca88 :arm
	stmfd   sp!, {r3-r5,lr}
	str     r3, [sp]
	mov     r3, r2
	mov     r2, #0x0
	mov     r5, r0
	mov     r4, r1
	bl      Function_21fc830
	ldr     r12, [sp, #0x14]
	ldr     r3, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x1
	str     r12, [sp]
	bl      Function_21fc830
	ldr     r0, [sp, #0x1c]
	ldr     r3, [sp, #0x18]
	str     r0, [sp]
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x2
	bl      Function_21fc830
	ldmfd   sp!, {r3-r5,pc}
@ 0x21fcae0


.incbin "./baserom/overlay/overlay_0004.bin", 0x2bd60, 0x21fd2d4 - 0x21fcae0


.arm
Function_21fd2d4: @ 21fd2d4 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x28
	sub     sp, sp, #2, 22 @ #0x800
	mov     r10, r0
	mov     r9, r1
	mov     r3, #0x0
	add     r0, sp, #0x24
	add     r2, r10, #0x84
	mov     r1, #0x3
	str     r3, [sp, #0x824]
	bl      Function_21fc6b0
	ldr     r4,  [pc, #0x1ac] @ [0x21fd4b4] (=#0x221b5f8)
	mov     r8, #0x0
	ldr     r0, [r4]
	cmp     r0, #0x0
	ble     branch_21fd364
	ldr     r11,  [pc, #0x19c] @ [0x21fd4b8] (=#0x22199a4)
	ldr     r5,  [pc, #0x19c] @ [0x21fd4bc] (=#0x221b5fc)
	add     r7, sp, #0x10
	add     r6, sp, #0x24
.arm
branch_21fd324: @ 21fd324 :arm
	mov     r0, r7
	mov     r1, r11
	mov     r2, r8
	bl      Function_20d7510
	mov     r0, r6
	mov     r1, r7
	bl      Function_21fc2d4
	ldr     r0, [r5, r8, lsl #0x2]
	bl      Function_22089f4
	mov     r1, r0
	mov     r0, r6
	bl      Function_21fc2d4
	add     r8, r8, #0x1
	ldr     r0, [r4]
	cmp     r8, r0
	blt     branch_21fd324
.arm
branch_21fd364: @ 21fd364 :arm
	ldr     r1,  [pc, #0x154] @ [0x21fd4c0] (=#0x22199b0)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	ldr     r1, [r10, #0xc0]
	add     r0, sp, #0x24
	bl      Function_21fc2a0
	ldr     r1,  [pc, #0x140] @ [0x21fd4c4] (=#0x22199bc)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	ldr     r0, [r10, #0xc8]
	cmp     r0, #0x0
	ldrne   r1,  [pc, #0x130] @ [0x21fd4c8] (=#0x22199c4)
	add     r0, sp, #0x24
	ldreq   r1,  [pc, #0x12c] @ [0x21fd4cc] (=#0x22199c8)
	bl      Function_21fc2d4
	cmp     r9, #0x0
	beq     branch_21fd3c0
	ldr     r1,  [pc, #0x120] @ [0x21fd4d0] (=#0x22199cc)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	add     r0, sp, #0x24
	mov     r1, r9
	bl      Function_21fc2a0
.arm
branch_21fd3c0: @ 21fd3c0 :arm
	ldr     r1,  [pc, #0x10c] @ [0x21fd4d4] (=#0x22199dc)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	add     r0, sp, #0x24
	add     r1, r10, #0x4
	bl      Function_21fc2d4
	ldr     r0, [r10, #0xa8]
	cmp     r0, #0x0
	beq     branch_21fd418
	ldr     r1,  [pc, #0xec] @ [0x21fd4d8] (=#0x22199e8)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	ldr     r1, [r10, #0x104]
	add     r0, sp, #0x24
	bl      Function_21fc2a0
	ldr     r1,  [pc, #0xd8] @ [0x21fd4dc] (=#0x22199f4)
	add     r0, sp, #0x24
	bl      Function_21fc2d4
	add     r0, r10, #1, 24 @ #0x100
	ldrh    r1, [r0, #0x8]
	add     r0, sp, #0x24
	bl      Function_21fc2a0
.arm
branch_21fd418: @ 21fd418 :arm
	cmp     r9, #0x2
	beq     branch_21fd448
	mov     r2, #0xff
	str     r2, [sp]
	mov     r3, #0x0
	str     r3, [sp, #0x4]
	str     r2, [sp, #0x8]
	add     r1, sp, #0x24
	mov     r0, r10
	str     r3, [sp, #0xc]
	bl      Function_21fca88
	b       branch_21fd46c
@ 0x21fd448

.arm
branch_21fd448: @ 21fd448 :arm
	ldr     r2, [sp, #0x824]
	rsb     r0, r2, #2, 22 @ #0x800
	cmp     r0, #0x1
	blt     branch_21fd46c
	add     r1, r2, #0x1
	str     r1, [sp, #0x824]
	add     r0, sp, #0x24
	mov     r1, #0x0
	strb    r1, [r0, r2]
.arm
branch_21fd46c: @ 21fd46c :arm
	add     r0, r10, #0xcc
	str     r0, [sp]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r10]
	ldr     r2, [sp, #0x824]
	add     r1, sp, #0x24
	mov     r3, #0x0
	bl      Function_21eae5c
	bl      Function_21ea840
	str     r0, [r10, #0xac]
	str     r0, [r10, #0xb0]
	cmp     r9, #0x0
	movne   r0, #0x0
	strne   r0, [r10, #0xb4]
	add     sp, sp, #0x28
	add     sp, sp, #2, 22 @ #0x800
	ldmfd   sp!, {r3-r11,pc}
@ 0x21fd4b4

.word 0x221b5f8 @ 0x21fd4b4
.word 0x22199a4 @ 0x21fd4b8
.word 0x221b5fc @ 0x21fd4bc
.word 0x22199b0 @ 0x21fd4c0
.word 0x22199bc @ 0x21fd4c4
.word 0x22199c4 @ 0x21fd4c8
.word 0x22199c8 @ 0x21fd4cc
.word 0x22199cc @ 0x21fd4d0
.word 0x22199dc @ 0x21fd4d4
.word 0x22199e8 @ 0x21fd4d8
.word 0x22199f4 @ 0x21fd4dc
.arm
Function_21fd4e0: @ 21fd4e0 :arm
	cmp     r0, #0x32
	bxlt    lr
	cmp     r0, #0xfe
	bxgt    lr
	ldr     r2,  [pc, #0x4] @ [0x21fd4fc] (=#0x2219b38)
	str     r1, [r2, r0, lsl #0x2]
	bx      lr
@ 0x21fd4fc

.word 0x2219b38 @ 0x21fd4fc

.incbin "./baserom/overlay/overlay_0004.bin", 0x2c780, 0x21fd7cc - 0x21fd500


.arm
Function_21fd7cc: @ 21fd7cc :arm
	ldr     r2, [r0, #0x4]
	cmp     r2, #0x0
	strne   r1, [r2, #0x20]
	str     r1, [r0, #0x4]
	mov     r2, #0x0
	str     r2, [r1, #0x20]
	ldr     r2, [r0]
	cmp     r2, #0x0
	streq   r1, [r0]
	ldr     r1, [r0, #0x8]
	add     r1, r1, #0x1
	str     r1, [r0, #0x8]
	bx      lr
@ 0x21fd800


.incbin "./baserom/overlay/overlay_0004.bin", 0x2ca80, 0x21fd828 - 0x21fd800


.arm
Function_21fd828: @ 21fd828 :arm
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_21fd854
	ldr     r1, [r2, #0x20]
	str     r1, [r0]
	cmp     r1, #0x0
	moveq   r1, #0x0
	streq   r1, [r0, #0x4]
	ldr     r1, [r0, #0x8]
	sub     r1, r1, #0x1
	str     r1, [r0, #0x8]
.arm
branch_21fd854: @ 21fd854 :arm
	mov     r0, r2
	bx      lr
@ 0x21fd85c

.arm
Function_21fd85c: @ 21fd85c :arm
	ldr     r2, [r0]
	mov     r3, #0x0
	cmp     r2, #0x0
	beq     branch_21fd8c0
.arm
branch_21fd86c: @ 21fd86c :arm
	cmp     r2, r1
	bne     branch_21fd8b0
	cmp     r3, #0x0
	ldrne   r1, [r2, #0x20]
	strne   r1, [r3, #0x20]
	ldr     r1, [r0]
	cmp     r1, r2
	ldreq   r1, [r2, #0x20]
	streq   r1, [r0]
	ldr     r1, [r0, #0x4]
	cmp     r1, r2
	streq   r3, [r0, #0x4]
	ldr     r1, [r0, #0x8]
	sub     r1, r1, #0x1
	str     r1, [r0, #0x8]
	mov     r0, #0x1
	bx      lr
@ 0x21fd8b0

.arm
branch_21fd8b0: @ 21fd8b0 :arm
	mov     r3, r2
	ldr     r2, [r2, #0x20]
	cmp     r2, #0x0
	bne     branch_21fd86c
.arm
branch_21fd8c0: @ 21fd8c0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x21fd8c8

.arm
Function_21fd8c8: @ 21fd8c8 :arm
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	str     r1, [r0]
	str     r1, [r0, #0x8]
	bx      lr
@ 0x21fd8dc

.arm
Function_21fd8dc: @ 21fd8dc :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #17, 28 @ #0x110
	mov     r5, r0
	mov     r4, r1
	add     r0, r5, #0x8
	bl      Function_21fd7cc
	bl      Function_21ea840
	str     r0, [r4, #0x1c]
	mov     r0, #0x2
	strb    r0, [sp, #0x9]
	ldrb    r1, [r4, #0x14]
	tst     r1, #0x20
	addne   sp, sp, #17, 28 @ #0x110
	ldmnefd sp!, {r3-r5,pc}
	ldr     r0, [r5]
	cmp     r0, #0x1
	bne     branch_21fd9e0
	mov     r2, #0xfe
	mov     r1, #0xfd
	mov     r0, #0x0
	strb    r2, [sp, #0x10]
	strb    r1, [sp, #0x11]
	strb    r0, [sp, #0x12]
	ldrb    r2, [r4, #0x1c]
	ldrb    r1, [r4, #0x1d]
	add     r3, sp, #0x13
	strb    r2, [r3]
	strb    r1, [r3, #0x1]
	ldrb    r2, [r4, #0x1e]
	ldrb    r1, [r4, #0x1f]
	strb    r2, [r3, #0x2]
	strb    r1, [r3, #0x3]
	ldrb    r1, [r4, #0x14]
	tst     r1, #0x4
	beq     branch_21fd9c8
	ldr     r1, [r5, #0x40]
	strb    r1, [sp, #0x17]
	ldr     r3, [r5, #0x40]
	cmp     r3, #0x0
	ble     branch_21fd9a0
	add     r2, sp, #0x10
.arm
branch_21fd980: @ 21fd980 :arm
	add     r1, r5, r0
	ldrb    r1, [r1, #0x2c]
	add     r0, r0, #0x1
	strb    r1, [r2, #0x8]
	ldr     r3, [r5, #0x40]
	add     r2, r2, #0x1
	cmp     r0, r3
	blt     branch_21fd980
.arm
branch_21fd9a0: @ 21fd9a0 :arm
	add     r1, sp, #0x10
	add     r0, r3, #0x8
	mov     r2, #0x0
	strb    r2, [r1, r0]
	ldr     r0, [r5, #0x40]
	add     r0, r0, #0x9
	strb    r2, [r1, r0]
	ldr     r0, [r5, #0x40]
	add     r2, r0, #0xa
	b       branch_21fda50
@ 0x21fd9c8

.arm
branch_21fd9c8: @ 21fd9c8 :arm
	mov     r0, #0xff
	strb    r0, [sp, #0x17]
	strb    r0, [sp, #0x18]
	strb    r0, [sp, #0x19]
	mov     r2, #0xa
	b       branch_21fda50
@ 0x21fd9e0

.arm
branch_21fd9e0: @ 21fd9e0 :arm
	tst     r1, #0x4
	add     r12, sp, #0x10
	beq     branch_21fda24
	ldr     r3,  [pc, #0xc0] @ [0x21fdab4] (=#0x2219f30)
	mov     r2, #0x6
.arm
branch_21fd9f4: @ 21fd9f4 :arm
	ldrb    r1, [r3]
	ldrb    r0, [r3, #0x1]
	add     r3, r3, #0x2
	strb    r1, [r12]
	strb    r0, [r12, #0x1]
	add     r12, r12, #0x2
	subs    r2, r2, #0x1
	bne     branch_21fd9f4
	ldrb    r0, [r3]
	mov     r2, #0xd
	strb    r0, [r12]
	b       branch_21fda50
@ 0x21fda24

.arm
branch_21fda24: @ 21fda24 :arm
	ldr     r3,  [pc, #0x8c] @ [0x21fdab8] (=#0x2219f40)
	mov     r2, #0x4
.arm
branch_21fda2c: @ 21fda2c :arm
	ldrb    r1, [r3]
	ldrb    r0, [r3, #0x1]
	add     r3, r3, #0x2
	strb    r1, [r12]
	strb    r0, [r12, #0x1]
	add     r12, r12, #0x2
	subs    r2, r2, #0x1
	bne     branch_21fda2c
	mov     r2, #0x8
.arm
branch_21fda50: @ 21fda50 :arm
	ldr     r1, [r4]
	ldr     r0, [r5, #0x28]
	cmp     r1, r0
	bne     branch_21fda80
	ldrb    r0, [r4, #0x15]
	tst     r0, #0x2
	beq     branch_21fda80
	ldr     r0, [r4, #0x8]
	str     r0, [sp, #0xc]
	ldrh    r0, [r4, #0xc]
	strh    r0, [sp, #0xa]
	b       branch_21fda8c
@ 0x21fda80

.arm
branch_21fda80: @ 21fda80 :arm
	str     r1, [sp, #0xc]
	ldrh    r0, [r4, #0x4]
	strh    r0, [sp, #0xa]
.arm
branch_21fda8c: @ 21fda8c :arm
	add     r1, sp, #0x8
	str     r1, [sp]
	mov     r0, #0x8
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x20]
	add     r1, sp, #0x10
	mov     r3, #0x0
	bl      Function_21eae5c
	add     sp, sp, #17, 28 @ #0x110
	ldmfd   sp!, {r3-r5,pc}
@ 0x21fdab4

.word 0x2219f30 @ 0x21fdab4
.word 0x2219f40 @ 0x21fdab8
.arm
Function_21fdabc: @ 21fdabc :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	cmp     r3, #0x0
	bne     branch_21fdae4
	ldr     r0,  [pc, #0x50] @ [0x21fdb2c] (=#0x221ae50)
	ldr     r0, [r0]
	cmp     r0, #0x1
	ldmnefd sp!, {r4-r6,pc}
.arm
branch_21fdae4: @ 21fdae4 :arm
	bl      Function_21ea8a4
	stmia   r6, {r4,r5}
	mov     r2, #0x0
	ldr     r3, [sp, #0x10]
	str     r2, [r6, #0x40]
	ldr     r1, [sp, #0x14]
	str     r3, [r6, #0x44]
	str     r1, [r6, #0x48]
	mov     r0, #0x2
	mov     r1, r0
	str     r2, [r6, #0x28]
	bl      Function_21eacdc
	str     r0, [r6, #0x20]
	add     r0, r6, #0x14
	bl      Function_21fd8c8
	add     r0, r6, #0x8
	bl      Function_21fd8c8
	ldmfd   sp!, {r4-r6,pc}
@ 0x21fdb2c

.word 0x221ae50 @ 0x21fdb2c

.incbin "./baserom/overlay/overlay_0004.bin", 0x2cdb0, 0x21fdb38 - 0x21fdb30


.arm
Function_21fdb38: @ 21fdb38 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x14
	bl      Function_21fd8c8
	add     r0, r4, #0x8
	bl      Function_21fd8c8
	ldmfd   sp!, {r4,pc}
@ 0x21fdb54

.arm
Function_21fdb54: @ 21fdb54 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x20]
	bl      Function_21eacf0
	mvn     r1, #0x0
	add     r0, r4, #0x14
	str     r1, [r4, #0x20]
	bl      Function_21fd8c8
	add     r0, r4, #0x8
	bl      Function_21fd8c8
	ldmfd   sp!, {r4,pc}
@ 0x21fdb80


.incbin "./baserom/overlay/overlay_0004.bin", 0x2ce00, 0x21fdbfc - 0x21fdb80


.arm
Function_21fdbfc: @ 21fdbfc :arm
	stmfd   sp!, {r4-r10,lr}
	mov     r8, r2
	ldrsb   r2, [r8]
	mov     r10, r0
	mov     r9, r1
	mov     r7, r3
	cmp     r2, #0x0
	ldmnefd sp!, {r4-r10,pc}
	ldrb    r0, [r9, #0x14]
	add     r8, r8, #0x5
	sub     r7, r7, #0x5
	tst     r0, #0x4
	beq     branch_21fdc98
	ldr     r0, [r10, #0x40]
	mov     r6, #0x0
	cmp     r0, #0x0
	ble     branch_21fdc88
	ldr     r4,  [pc, #0xb0] @ [0x21fdcf8] (=#0x2219b38)
.arm
branch_21fdc44: @ 21fdc44 :arm
	mov     r0, r8
	mov     r1, r7
	bl      Function_21ff4ac
	movs    r5, r0
	bmi     branch_21fdc88
	add     r0, r10, r6
	ldrb    r1, [r0, #0x2c]
	mov     r0, r9
	mov     r2, r8
	ldr     r1, [r4, r1, lsl #0x2]
	bl      Function_21fe1a8
	ldr     r0, [r10, #0x40]
	add     r6, r6, #0x1
	cmp     r6, r0
	add     r8, r8, r5
	sub     r7, r7, r5
	blt     branch_21fdc44
.arm
branch_21fdc88: @ 21fdc88 :arm
	ldrb    r0, [r9, #0x14]
	orr     r0, r0, #0x41
	strb    r0, [r9, #0x14]
	b       branch_21fdcb4
@ 0x21fdc98

.arm
branch_21fdc98: @ 21fdc98 :arm
	mov     r0, r9
	mov     r1, r8
	mov     r2, r7
	bl      Function_21fe51c
	ldrb    r0, [r9, #0x14]
	orr     r0, r0, #0x43
	strb    r0, [r9, #0x14]
.arm
branch_21fdcb4: @ 21fdcb4 :arm
	ldrb    r0, [r9, #0x14]
	and     r0, r0, #0xf3
	strb    r0, [r9, #0x14]
	bl      Function_21ea840
	ldr     r2, [r9, #0x1c]
	mov     r1, r9
	sub     r0, r0, r2
	str     r0, [r9, #0x1c]
	add     r0, r10, #0x8
	bl      Function_21fd85c
	ldr     r3, [r10, #0x48]
	ldr     r4, [r10, #0x44]
	mov     r0, r10
	mov     r2, r9
	mov     r1, #0x0
	blx     r4
	ldmfd   sp!, {r4-r10,pc}
@ 0x21fdcf8

.word 0x2219b38 @ 0x21fdcf8



.arm
Function_21fdcfc: @ 21fdcfc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r1
	mov     r7, r2
	mov     r5, r0
	ldr     r1,  [pc, #0x7c] @ [0x21fdd90] (=#0x2219f4c)
	mov     r0, r7
	bl      Function_20d90b0
	cmp     r0, #0x0
	movne   r6, #0x1
	moveq   r6, #0x0
	mov     r0, r4
	mov     r1, r7
	bl      Function_21fe49c
	cmp     r6, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldrb    r0, [r4, #0x14]
	tst     r0, #0x4
	orrne   r0, r0, #0x41
	orreq   r0, r0, #0x42
	strb    r0, [r4, #0x14]
	ldrb    r0, [r4, #0x14]
	and     r0, r0, #0xf3
	strb    r0, [r4, #0x14]
	bl      Function_21ea840
	ldr     r2, [r4, #0x1c]
	mov     r1, r4
	sub     r0, r0, r2
	str     r0, [r4, #0x1c]
	add     r0, r5, #0x8
	bl      Function_21fd85c
	ldr     r3, [r5, #0x48]
	ldr     r12, [r5, #0x44]
	mov     r0, r5
	mov     r2, r4
	mov     r1, #0x0
	blx     r12
	ldmfd   sp!, {r3-r7,pc}
@ 0x21fdd90

.word 0x2219f4c @ 0x21fdd90
.arm
Function_21fdd94: @ 21fdd94 :arm
	mov     r0, #0x1
	bx      lr
@ 0x21fdd9c

.arm
Function_21fdd9c: @ 21fdd9c :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0x14
	sub     sp, sp, #2, 22 @ #0x800
	movs    r8, r1
	mov     r1, #0x8
	mov     r9, r0
	str     r1, [sp, #0x8]
	ldrne   r7, [r9, #0x24]
	ldreq   r7, [r9, #0x20]
	mov     r0, r7
	bl      Function_21eab6c
	cmp     r0, #0x0
	addeq   sp, sp, #0x14
	addeq   sp, sp, #2, 22 @ #0x800
	ldmeqfd sp!, {r4-r9,pc}
.arm
branch_21fddd8: @ 21fddd8 :arm
	add     r0, sp, #0xc
	str     r0, [sp]
	add     r4, sp, #0x8
	ldr     r2,  [pc, #0x140] @ [0x21fdf2c] (=#0x7ff)
	add     r1, sp, #0x14
	mov     r0, r7
	mov     r3, #0x0
	str     r4, [sp, #0x4]
	bl      Function_21eae18
	mov     r5, r0
	mvn     r0, #0x0
	cmp     r5, r0
	addeq   sp, sp, #0x14
	addeq   sp, sp, #2, 22 @ #0x800
	ldmeqfd sp!, {r4-r9,pc}
	add     r4, sp, #0x14
	mov     r0, #0x0
	strb    r0, [r4, r5]
	ldr     r6, [r9, #0x8]
	cmp     r6, #0x0
	beq     branch_21fdf10
.arm
branch_21fde2c: @ 21fde2c :arm
	cmp     r8, #0x0
	beq     branch_21fde50
	ldrb    r0, [r6, #0x15]
	tst     r0, #0x8
	beq     branch_21fde50
	ldr     r1, [r6, #0x10]
	ldr     r0, [sp, #0x10]
	cmp     r1, r0
	beq     branch_21fdea8
.arm
branch_21fde50: @ 21fde50 :arm
	ldr     r3, [sp, #0x10]
	ldr     r2, [r6]
	cmp     r2, r3
	bne     branch_21fde78
	ldrh    r1, [r6, #0x4]
	ldrh    r0, [sp, #0xe]
	cmp     r1, r0
	beq     branch_21fdea8
	cmp     r8, #0x0
	bne     branch_21fdea8
.arm
branch_21fde78: @ 21fde78 :arm
	ldr     r0, [r9, #0x28]
	cmp     r2, r0
	bne     branch_21fdf04
	ldrb    r0, [r6, #0x15]
	tst     r0, #0x2
	beq     branch_21fdf04
	ldr     r0, [r6, #0x8]
	cmp     r0, r3
	ldreqh  r1, [r6, #0xc]
	ldreqh  r0, [sp, #0xe]
	cmpeq   r1, r0
	bne     branch_21fdf04
.arm
branch_21fdea8: @ 21fdea8 :arm
	cmp     r8, #0x0
	beq     branch_21fded0
	mov     r0, r9
	mov     r1, r6
	mov     r2, r4
	mov     r3, r5
	bl      Function_21fdd94
	cmp     r0, #0x0
	bne     branch_21fdf10
	b       branch_21fdf04
@ 0x21fded0

.arm
branch_21fded0: @ 21fded0 :arm
	ldr     r0, [r9]
	add     r2, sp, #0x14
	cmp     r0, #0x1
	mov     r0, r9
	bne     branch_21fdef4
	mov     r1, r6
	mov     r3, r5
	bl      Function_21fdbfc
	b       branch_21fdf10
@ 0x21fdef4

.arm
branch_21fdef4: @ 21fdef4 :arm
	mov     r1, r6
	mov     r3, r5
	bl      Function_21fdcfc
	b       branch_21fdf10
@ 0x21fdf04

.arm
branch_21fdf04: @ 21fdf04 :arm
	ldr     r6, [r6, #0x20]
	cmp     r6, #0x0
	bne     branch_21fde2c
.arm
branch_21fdf10: @ 21fdf10 :arm
	mov     r0, r7
	bl      Function_21eab6c
	cmp     r0, #0x0
	bne     branch_21fddd8
	add     sp, sp, #0x14
	add     sp, sp, #2, 22 @ #0x800
	ldmfd   sp!, {r4-r9,pc}
@ 0x21fdf2c

.word 0x7ff @ 0x21fdf2c
.arm
Function_21fdf30: @ 21fdf30 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	bl      Function_21ea840
	ldr     r3, [r6, #0x8]
	mov     r5, r0
	cmp     r3, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r4,  [pc, #0x68] @ [0x21fdfbc] (=#0x9c4)
	mov     r7, #0x1
.arm
branch_21fdf54: @ 21fdf54 :arm
	ldr     r0, [r3, #0x1c]
	add     r0, r0, #113, 30 @ #0x1c4
	add     r0, r0, #2, 22 @ #0x800
	cmp     r5, r0
	ldmlsfd sp!, {r3-r7,pc}
	ldrb    r2, [r3, #0x15]
	mov     r0, r6
	mov     r1, r7
	orr     r2, r2, #0x10
	strb    r2, [r3, #0x15]
	ldr     r2, [r6, #0x8]
	str     r4, [r2, #0x1c]
	ldr     r3, [r6, #0x8]
	ldrb    r2, [r3, #0x15]
	and     r2, r2, #0xd3
	strb    r2, [r3, #0x15]
	ldr     r2, [r6, #0x8]
	ldr     r3, [r6, #0x48]
	ldr     r12, [r6, #0x44]
	blx     r12
	add     r0, r6, #0x8
	bl      Function_21fd828
	ldr     r3, [r6, #0x8]
	cmp     r3, #0x0
	bne     branch_21fdf54
	ldmfd   sp!, {r3-r7,pc}
@ 0x21fdfbc

.word 0x9c4 @ 0x21fdfbc
.arm
Function_21fdfc0: @ 21fdfc0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	b       branch_21fdfe0
@ 0x21fdfcc

.arm
branch_21fdfcc: @ 21fdfcc :arm
	add     r0, r4, #0x14
	bl      Function_21fd828
	mov     r1, r0
	mov     r0, r4
	bl      Function_21fd8dc
.arm
branch_21fdfe0: @ 21fdfe0 :arm
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x4]
	cmp     r1, r0
	ldmgefd sp!, {r4,pc}
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	bgt     branch_21fdfcc
	ldmfd   sp!, {r4,pc}
@ 0x21fe000

.arm
Function_21fe000: @ 21fe000 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x10]
	cmp     r1, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r1, #0x0
	bl      Function_21fdd9c
	mov     r0, r4
	bl      Function_21fdf30
	ldr     r0, [r4, #0x1c]
	cmp     r0, #0x0
	ble     branch_21fe038
	mov     r0, r4
	bl      Function_21fdfc0
.arm
branch_21fe038: @ 21fe038 :arm
	ldr     r0, [r4, #0x10]
	cmp     r0, #0x0
	ldmnefd sp!, {r4,pc}
	ldr     r3, [r4, #0x48]
	ldr     r12, [r4, #0x44]
	mov     r0, r4
	mov     r1, #0x2
	mov     r2, #0x0
	blx     r12
	ldmfd   sp!, {r4,pc}
@ 0x21fe060

.arm
Function_21fe060: @ 21fe060 :arm
	ldr     r3, [r0, #0x40]
	cmp     r3, #0x14
	bxge    lr
	add     r2, r3, #0x1
	str     r2, [r0, #0x40]
	add     r0, r0, r3
	strb    r1, [r0, #0x2c]
	bx      lr
@ 0x21fe080


.incbin "./baserom/overlay/overlay_0004.bin", 0x2d300, 0x21fe0e0 - 0x21fe080


.arm
Function_21fe0e0: @ 21fe0e0 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	ldr     r0,  [pc, #0x44] @ [0x21fe134] (=#0x221b750)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	bne     branch_21fe124
	ldr     r0,  [pc, #0x38] @ [0x21fe138] (=#0x21fe0bc)
	ldr     r12,  [pc, #0x38] @ [0x21fe13c] (=#0x21fe0d0)
	str     r0, [sp]
	ldr     r3,  [pc, #0x34] @ [0x21fe140] (=#0x21fe0ac)
	mov     r0, #0x8
	mov     r1, #0x64
	mov     r2, #0x2
	str     r12, [sp, #0x4]
	bl      Function_21ea224
	ldr     r1,  [pc, #0x10] @ [0x21fe134] (=#0x221b750)
	str     r0, [r1, #0x8]
.arm
branch_21fe124: @ 21fe124 :arm
	ldr     r0,  [pc, #0x8] @ [0x21fe134] (=#0x221b750)
	ldr     r0, [r0, #0x8]
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x21fe134

.word 0x221b750 @ 0x21fe134
.word 0x21fe0bc @ 0x21fe138
.word 0x21fe0d0 @ 0x21fe13c
.word 0x21fe0ac @ 0x21fe140
.arm
Function_21fe144: @ 21fe144 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x30] @ [0x21fe180] (=#0x221b750)
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3,pc}
	bl      Function_21ea3d8
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldr     r0,  [pc, #0x14] @ [0x21fe180] (=#0x221b750)
	ldr     r0, [r0, #0x8]
	bl      Function_21ea364
	ldr     r0,  [pc, #0x8] @ [0x21fe180] (=#0x221b750)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x21fe180

.word 0x221b750 @ 0x21fe180
.arm
Function_21fe184: @ 21fe184 :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [r0]
	ldr     r0, [r4, #0x18]
	bl      Function_21ea364
	mov     r1, #0x0
	mov     r0, r4
	str     r1, [r4, #0x18]
	bl      Function_21d78b0
	ldmfd   sp!, {r4,pc}
@ 0x21fe1a8

.arm
Function_21fe1a8: @ 21fe1a8 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	mov     r4, r2
	mov     r0, #0x0
	bl      Function_21ff3c0
	str     r0, [sp]
	mov     r1, r4
	mov     r0, #0x0
	bl      Function_21ff3c0
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x18]
	add     r1, sp, #0x0
	bl      Function_21ea44c
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x21fe1e8


.incbin "./baserom/overlay/overlay_0004.bin", 0x2d468, 0x21fe3c8 - 0x21fe1e8


.arm
Function_21fe3c8: @ 21fe3c8 :arm
	str     r1, [r0, #0x20]
	bx      lr
@ 0x21fe3d0

.arm
Function_21fe3d0: @ 21fe3d0 :arm
	ldr     r0, [r0, #0x20]
	bx      lr
@ 0x21fe3d8

.arm
Function_21fe3d8: @ 21fe3d8 :arm
	stmfd   sp!, {r4-r6,lr}
	sub     sp, sp, #0x8
	ldr     r1,  [pc, #0x4c] @ [0x21fe434] (=#0x2215c30)
	add     r4, sp, #0x0
	ldr     r2, [r1]
	ldr     r1, [r1, #0x4]
	mov     r6, r0
	str     r2, [sp]
	str     r1, [sp, #0x4]
	mov     r5, #0x0
.arm
branch_21fe400: @ 21fe400 :arm
	ldr     r1, [r4, r5, lsl #0x2]
	mov     r0, r6
	bl      Function_20d8d14
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	add     r5, r5, #0x1
	cmp     r5, #0x2
	bcc     branch_21fe400
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r6,pc}
@ 0x21fe434

.word 0x2215c30 @ 0x21fe434
.arm
Function_21fe438: @ 21fe438 :arm
	cmp     r0, #0x0
	ldrne   r2,  [pc, #0x54] @ [0x21fe498] (=#0x221b750)
	strne   r0, [r2]
	ldr     r2,  [pc, #0x4c] @ [0x21fe498] (=#0x221b750)
	ldr     r0, [r2]
	mov     r12, r0
	b       branch_21fe45c
@ 0x21fe454

.arm
branch_21fe454: @ 21fe454 :arm
	add     r12, r12, #0x1
	str     r12, [r2]
.arm
branch_21fe45c: @ 21fe45c :arm
	ldrsb   r3, [r12]
	cmp     r3, #0x0
	cmpne   r3, r1
	bne     branch_21fe454
	cmp     r12, r0
	moveq   r0, #0x0
	cmp     r3, #0x0
	bxeq    lr
	ldr     r1,  [pc, #0x14] @ [0x21fe498] (=#0x221b750)
	mov     r2, #0x0
	ldr     r3, [r1]
	strb    r2, [r12]
	add     r2, r3, #0x1
	str     r2, [r1]
	bx      lr
@ 0x21fe498

.word 0x221b750 @ 0x21fe498
.arm
Function_21fe49c: @ 21fe49c :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	add     r0, r1, #0x1
	mov     r1, #0x5c
	bl      Function_21fe438
	movs    r8, r0
	ldmeqfd sp!, {r3-r11,pc}
	mov     r4, #0x0
	mov     r11, #0x5c
	ldr     r5,  [pc, #0x50] @ [0x21fe518] (=#0x2219f9c)
	mov     r7, r4
	mov     r6, r11
.arm
branch_21fe4cc: @ 21fe4cc :arm
	mov     r0, r7
	mov     r1, r6
	bl      Function_21fe438
	movs    r9, r0
	mov     r0, r8
	moveq   r9, r5
	bl      Function_21fe3d8
	cmp     r0, #0x0
	beq     branch_21fe500
	mov     r0, r10
	mov     r1, r8
	mov     r2, r9
	bl      Function_21fe1a8
.arm
branch_21fe500: @ 21fe500 :arm
	mov     r0, r4
	mov     r1, r11
	bl      Function_21fe438
	movs    r8, r0
	bne     branch_21fe4cc
	ldmfd   sp!, {r3-r11,pc}
@ 0x21fe518

.word 0x2219f9c @ 0x21fe518
.arm
Function_21fe51c: @ 21fe51c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x8c
	mov     r10, r1
	ldrsb   r1, [r10]
	mov     r11, r0
	mov     r9, r2
	cmp     r1, #0x0
	beq     branch_21fe59c
.arm
branch_21fe53c: @ 21fe53c :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_21ff4ac
	cmp     r0, #0x0
	addlt   sp, sp, #0x8c
	ldmltfd sp!, {r4-r11,pc}
	mov     r4, r10
	sub     r9, r9, r0
	add     r10, r10, r0
	mov     r0, r10
	mov     r1, r9
	bl      Function_21ff4ac
	cmp     r0, #0x0
	addlt   sp, sp, #0x8c
	ldmltfd sp!, {r4-r11,pc}
	mov     r2, r10
	mov     r1, r4
	add     r10, r10, r0
	sub     r9, r9, r0
	mov     r0, r11
	bl      Function_21fe1a8
	ldrsb   r0, [r10]
	cmp     r0, #0x0
	bne     branch_21fe53c
.arm
branch_21fe59c: @ 21fe59c :arm
	mov     r0, #0x0
	add     r10, r10, #0x1
	sub     r9, r9, #0x1
	str     r0, [sp]
.arm
branch_21fe5ac: @ 21fe5ac :arm
	cmp     r9, #0x2
	addlt   sp, sp, #0x8c
	ldmltfd sp!, {r4-r11,pc}
	ldrb    r1, [r10]
	ldrb    r0, [r10, #0x1]
	add     r2, sp, #0x8
	add     r10, r10, #0x2
	strb    r1, [r2]
	strb    r0, [r2, #0x1]
	ldrh    r0, [sp, #0x8]
	str     r10, [sp, #0x4]
	sub     r9, r9, #0x2
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp, #0x8]
	ldrsb   r0, [r10]
	mov     r5, #0x0
	cmp     r0, #0x0
	beq     branch_21fe63c
.arm
branch_21fe604: @ 21fe604 :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_21ff4ac
	cmp     r0, #0x0
	addlt   sp, sp, #0x8c
	ldmltfd sp!, {r4-r11,pc}
	cmp     r0, #0x64
	addgt   sp, sp, #0x8c
	ldmgtfd sp!, {r4-r11,pc}
	ldrsb   r1, [r10, r0]!
	add     r5, r5, #0x1
	sub     r9, r9, r0
	cmp     r1, #0x0
	bne     branch_21fe604
.arm
branch_21fe63c: @ 21fe63c :arm
	ldrh    r0, [sp, #0x8]
	add     r10, r10, #0x1
	sub     r9, r9, #0x1
	cmp     r0, #0x0
	mov     r6, #0x0
	ble     branch_21fe6d4
.arm
branch_21fe654: @ 21fe654 :arm
	ldr     r8, [sp, #0x4]
	mov     r7, #0x0
	cmp     r5, #0x0
	ble     branch_21fe6c4
.arm
branch_21fe664: @ 21fe664 :arm
	mov     r0, r10
	mov     r1, r9
	bl      Function_21ff4ac
	movs    r4, r0
	addmi   sp, sp, #0x8c
	ldmmifd sp!, {r4-r11,pc}
	ldr     r1,  [pc, #0x6c] @ [0x21fe6f0] (=#0x2219fa0)
	add     r0, sp, #0xa
	mov     r2, r8
	mov     r3, r6
	bl      Function_20d7510
	mov     r0, r11
	add     r1, sp, #0xa
	mov     r2, r10
	bl      Function_21fe1a8
	mov     r0, r8
	add     r10, r10, r4
	sub     r9, r9, r4
	bl      Function_20d8b60
	add     r0, r0, #0x1
	add     r7, r7, #0x1
	add     r8, r8, r0
	cmp     r7, r5
	blt     branch_21fe664
.arm
branch_21fe6c4: @ 21fe6c4 :arm
	ldrh    r0, [sp, #0x8]
	add     r6, r6, #0x1
	cmp     r6, r0
	blt     branch_21fe654
.arm
branch_21fe6d4: @ 21fe6d4 :arm
	ldr     r0, [sp]
	add     r0, r0, #0x1
	str     r0, [sp]
	cmp     r0, #0x2
	blt     branch_21fe5ac
	add     sp, sp, #0x8c
	ldmfd   sp!, {r4-r11,pc}
@ 0x21fe6f0

.word 0x2219fa0 @ 0x21fe6f0

.incbin "./baserom/overlay/overlay_0004.bin", 0x2d974, 0x21feae8 - 0x21fe6f4


.arm
Function_21feae8: @ 21feae8 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x10
	ldr     r4, [sp, #0x30]
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	cmp     r4, #0x0
	bne     branch_21feb24
	ldr     r0,  [pc, #0x98] @ [0x21febac] (=#0x221ae50)
	ldr     r0, [r0]
	cmp     r0, #0x1
	addne   sp, sp, #0x10
	movne   r0, #0x0
	ldmnefd sp!, {r4-r8,pc}
.arm
branch_21feb24: @ 21feb24 :arm
	ldr     r0,  [pc, #0x84] @ [0x21febb0] (=#0x638)
	bl      Function_21d7880
	movs    r4, r0
	addeq   sp, sp, #0x10
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r1, [sp, #0x34]
	ldr     r0, [sp, #0x38]
	str     r1, [r4, #0x630]
	str     r0, [r4, #0x634]
	mov     r0, #0x0
	str     r0, [r4, #0x624]
	ldr     r1, [sp, #0x30]
	str     r5, [sp]
	ldr     r0,  [pc, #0x50] @ [0x21febb4] (=#0x21fe890)
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r1, r8
	mov     r2, r7
	mov     r3, r6
	add     r0, r4, #0x4c
	str     r4, [sp, #0xc]
	bl      Function_21ff4dc
	ldr     r0,  [pc, #0x30] @ [0x21febb8] (=#0x21fea48)
	ldr     r1, [sp, #0x28]
	str     r0, [sp]
	ldr     r2, [sp, #0x2c]
	ldr     r3, [sp, #0x30]
	mov     r0, r4
	str     r4, [sp, #0x4]
	bl      Function_21fdabc
	mov     r0, r4
	add     sp, sp, #0x10
	ldmfd   sp!, {r4-r8,pc}
@ 0x21febac

.word 0x221ae50 @ 0x21febac
.word 0x638 @ 0x21febb0
.word 0x21fe890 @ 0x21febb4
.word 0x21fea48 @ 0x21febb8
.arm
Function_21febbc: @ 21febbc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4c
	bl      Function_21ffe44
	mov     r0, r4
	bl      Function_21fdb54
	mov     r0, r4
	bl      Function_21d78b0
	ldmfd   sp!, {r4,pc}
@ 0x21febe0

.arm
Function_21febe0: @ 21febe0 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #66, 30 @ #0x108
	ldr     r8, [sp, #0x130]
	mov     r10, r0
	str     r1, [sp, #0x4]
	add     r4, sp, #0x8
	mov     r9, r3
	mov     r1, #0x40
	mov     r0, #0x0
.arm
branch_21fec04: @ 21fec04 :arm
	strb    r0, [r4]
	strb    r0, [r4, #0x1]
	strb    r0, [r4, #0x2]
	strb    r0, [r4, #0x3]
	add     r4, r4, #0x4
	subs    r1, r1, #0x1
	bne     branch_21fec04
	mov     r5, #0x0
	str     r2, [r10, #0x620]
	mov     r6, r5
	str     r5, [r10, #0x40]
	cmp     r8, #0x0
	ble     branch_21fec8c
	ldr     r4,  [pc, #0xc8] @ [0x21fed08] (=#0x2219b38)
	add     r11, sp, #0x8
.arm
branch_21fec40: @ 21fec40 :arm
	ldrb    r0, [r9, r6]
	ldr     r7, [r4, r0, lsl #0x2]
	mov     r0, r7
	bl      Function_20d8b60
	add     r0, r5, r0
	add     r0, r0, #0x1
	cmp     r0, #1, 24 @ #0x100
	bge     branch_21fec8c
	ldr     r1,  [pc, #0xa4] @ [0x21fed0c] (=#0x2219fa8)
	mov     r2, r7
	add     r0, r11, r5
	bl      Function_20d7510
	add     r5, r5, r0
	ldrb    r1, [r9, r6]
	mov     r0, r10
	bl      Function_21fe060
	add     r6, r6, #0x1
	cmp     r6, r8
	blt     branch_21fec40
.arm
branch_21fec8c: @ 21fec8c :arm
	ldr     r4, [sp, #0x13c]
	ldr     r2, [sp, #0x134]
	ldr     r3, [sp, #0x138]
	add     r1, sp, #0x8
	add     r0, r10, #0x4c
	str     r4, [sp]
	bl      Function_21ffac8
	cmp     r0, #0x0
	addne   sp, sp, #66, 30 @ #0x108
	ldmnefd sp!, {r3-r11,pc}
	ldr     r1, [sp, #0x4]
	cmp     r1, #0x0
	addne   sp, sp, #66, 30 @ #0x108
	ldmnefd sp!, {r3-r11,pc}
	mov     r4, #0xa
	b       branch_21fecdc
@ 0x21feccc

.arm
branch_21feccc: @ 21feccc :arm
	mov     r0, r4
	bl      Function_21ea898
	mov     r0, r10
	bl      Function_21fee10
.arm
branch_21fecdc: @ 21fecdc :arm
	ldr     r1, [r10, #0x4c]
	cmp     r1, #0x3
	beq     branch_21feccc
	ldr     r1, [r10, #0x10]
	cmp     r1, #0x0
	addle   sp, sp, #66, 30 @ #0x108
	ldmlefd sp!, {r3-r11,pc}
	cmp     r0, #0x0
	beq     branch_21feccc
	add     sp, sp, #66, 30 @ #0x108
	ldmfd   sp!, {r3-r11,pc}
@ 0x21fed08

.word 0x2219b38 @ 0x21fed08
.word 0x2219fa8 @ 0x21fed0c
.arm
Function_21fed10: @ 21fed10 :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x10
	ldr     lr, [sp, #0x18]
	ldr     r12, [sp, #0x1c]
	str     lr, [sp]
	str     r12, [sp, #0x4]
	mov     lr, #0x80
	ldr     r12, [sp, #0x20]
	str     lr, [sp, #0x8]
	str     r12, [sp, #0xc]
	bl      Function_21febe0
	add     sp, sp, #0x10
	ldmfd   sp!, {r3,pc}
@ 0x21fed44


.incbin "./baserom/overlay/overlay_0004.bin", 0x2dfc4, 0x21fee10 - 0x21fed44


.arm
Function_21fee10: @ 21fee10 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21fe000
	add     r0, r4, #0x4c
	bl      Function_22014b8
	ldmfd   sp!, {r4,pc}
@ 0x21fee28

.arm
Function_21fee28: @ 21fee28 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	add     r0, r4, #0x4c
	bl      Function_21ffde0
	mov     r0, r4
	bl      Function_21fdb38
	ldmfd   sp!, {r4,pc}
@ 0x21fee44

.arm
Function_21fee44: @ 21fee44 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21fee28
	add     r0, r4, #0x4c
	bl      Function_21ff340
	ldmfd   sp!, {r4,pc}
@ 0x21fee5c


.incbin "./baserom/overlay/overlay_0004.bin", 0x2e0dc, 0x21ff244 - 0x21fee5c


.arm
Function_21ff244: @ 21ff244 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	ldr     r1, [r5, #0x5d0]
	mov     r0, r4
	cmp     r1, #0x0
	bne     branch_21ff26c
	mov     r1, #0x0
	bl      Function_21fe3c8
	b       branch_21ff270
@ 0x21ff26c

.arm
branch_21ff26c: @ 21ff26c :arm
	bl      Function_21fe3c8
.arm
branch_21ff270: @ 21ff270 :arm
	str     r4, [r5, #0x5d0]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ff278


.incbin "./baserom/overlay/overlay_0004.bin", 0x2e4f8, 0x21ff2e8 - 0x21ff278


.arm
Function_21ff2e8: @ 21ff2e8 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	mov     r6, r0
	ldr     r5, [r6, #0x5d0]
	cmp     r5, #0x0
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r3-r6,pc}
	str     r5, [sp]
	beq     branch_21ff330
	add     r4, sp, #0x0
.arm
branch_21ff310: @ 21ff310 :arm
	mov     r0, r5
	bl      Function_21fe3d0
	mov     r5, r0
	mov     r0, r4
	bl      Function_21fe184
	str     r5, [sp]
	cmp     r5, #0x0
	bne     branch_21ff310
.arm
branch_21ff330: @ 21ff330 :arm
	mov     r0, #0x0
	str     r0, [r6, #0x5d0]
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x21ff340

.arm
Function_21ff340: @ 21ff340 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6, #0x4]
	bl      Function_21e9bbc
	mov     r5, r0
	cmp     r5, #0x0
	mov     r4, #0x0
	ble     branch_21ff384
.arm
branch_21ff360: @ 21ff360 :arm
	ldr     r0, [r6, #0x4]
	mov     r1, r4
	bl      Function_21e9bc4
	ldr     r1, [r0]
	mov     r0, r6
	bl      Function_21ff244
	add     r4, r4, #0x1
	cmp     r4, r5
	blt     branch_21ff360
.arm
branch_21ff384: @ 21ff384 :arm
	ldr     r0, [r6, #0x4]
	bl      Function_21ea114
	mov     r0, r6
	bl      Function_21ff2e8
	ldmfd   sp!, {r4-r6,pc}
@ 0x21ff398

.arm
Function_21ff398: @ 21ff398 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	mov     r0, #0x4
	mov     r1, #0x64
	mov     r2, #0x0
	bl      Function_21e9a8c
	str     r0, [r4, #0x4]
	mov     r0, #0x0
	str     r0, [r4, #0x5d0]
	ldmfd   sp!, {r4,pc}
@ 0x21ff3c0

.arm
Function_21ff3c0: @ 21ff3c0 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r4, r1
	mov     r5, r0
	str     r4, [sp]
	bl      Function_21fe0e0
	add     r1, sp, #0x0
	bl      Function_21ea598
	cmp     r0, #0x0
	beq     branch_21ff400
	ldr     r1, [r0, #0x4]
	add     sp, sp, #0x8
	add     r1, r1, #0x1
	str     r1, [r0, #0x4]
	ldr     r0, [r0]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ff400

.arm
branch_21ff400: @ 21ff400 :arm
	mov     r0, r4
	bl      Function_21ea8ac
	str     r0, [sp]
	mov     r1, #0x1
	mov     r0, r5
	str     r1, [sp, #0x4]
	bl      Function_21fe0e0
	add     r1, sp, #0x0
	bl      Function_21ea44c
	ldr     r0, [sp]
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ff430

.arm
Function_21ff430: @ 21ff430 :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x8
	mov     r5, r0
	str     r1, [sp]
	bl      Function_21fe0e0
	add     r1, sp, #0x0
	bl      Function_21ea598
	movs    r4, r0
	bne     branch_21ff468
	ldr     r0,  [pc, #0x44] @ [0x21ff4a0] (=#0x221a03c)
	ldr     r1,  [pc, #0x44] @ [0x21ff4a4] (=#0x221a048)
	ldr     r2,  [pc, #0x44] @ [0x21ff4a8] (=#0x2219fb0)
	mov     r3, #0xf4
	bl      Function_20d407c
.arm
branch_21ff468: @ 21ff468 :arm
	cmp     r4, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0, [r4, #0x4]
	subs    r0, r0, #0x1
	addne   sp, sp, #0x8
	str     r0, [r4, #0x4]
	ldmnefd sp!, {r3-r5,pc}
	mov     r0, r5
	bl      Function_21fe0e0
	add     r1, sp, #0x0
	bl      Function_21ea4f4
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ff4a0

.word 0x221a03c @ 0x21ff4a0
.word 0x221a048 @ 0x21ff4a4
.word 0x2219fb0 @ 0x21ff4a8
.arm
Function_21ff4ac: @ 21ff4ac :arm
	cmp     r1, #0x0
	mov     r3, #0x0
	ble     branch_21ff4d4
.arm
branch_21ff4b8: @ 21ff4b8 :arm
	ldrsb   r2, [r0, r3]
	cmp     r2, #0x0
	addeq   r0, r3, #0x1
	bxeq    lr
	add     r3, r3, #0x1
	cmp     r3, r1
	blt     branch_21ff4b8
.arm
branch_21ff4d4: @ 21ff4d4 :arm
	mvn     r0, #0x0
	bx      lr
@ 0x21ff4dc

.arm
Function_21ff4dc: @ 21ff4dc :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r0
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	bne     branch_21ff508
	ldr     r0,  [pc, #0xf0] @ [0x21ff5ec] (=#0x221a058)
	ldr     r1,  [pc, #0xf0] @ [0x21ff5f0] (=#0x221a048)
	ldr     r2,  [pc, #0xf0] @ [0x21ff5f4] (=#0x2219fe0)
	mov     r3, #71, 30 @ #0x11c
	bl      Function_20d407c
.arm
branch_21ff508: @ 21ff508 :arm
	ldr     r0, [sp, #0x1c]
	cmp     r0, #0x0
	bne     branch_21ff524
	ldr     r0,  [pc, #0xdc] @ [0x21ff5f8] (=#0x221ae50)
	ldr     r0, [r0]
	cmp     r0, #0x1
	ldmnefd sp!, {r3-r7,pc}
.arm
branch_21ff524: @ 21ff524 :arm
	mov     r1, #0x1
	mov     r0, r7
	str     r1, [r7]
	bl      Function_21ff398
	mov     r0, r7
	bl      Function_21fe0e0
	mov     r1, r6
	add     r0, r7, #0xc
	bl      Function_20d8b7c
	mov     r1, r5
	add     r0, r7, #0x30
	bl      Function_20d8b7c
	mov     r1, r4
	add     r0, r7, #0x54
	bl      Function_20d8b7c
	ldr     r1, [sp, #0x20]
	mov     r0, #0x0
	str     r1, [r7, #0x488]
	str     r0, [r7, #0x48c]
	cmp     r1, #0x0
	bne     branch_21ff58c
	ldr     r0,  [pc, #0x7c] @ [0x21ff5fc] (=#0x221a068)
	ldr     r1,  [pc, #0x6c] @ [0x21ff5f0] (=#0x221a048)
	ldr     r2,  [pc, #0x6c] @ [0x21ff5f4] (=#0x2219fe0)
	ldr     r3,  [pc, #0x74] @ [0x21ff600] (=#0x132)
	bl      Function_20d407c
.arm
branch_21ff58c: @ 21ff58c :arm
	ldr     r0, [sp, #0x24]
	ldr     r1,  [pc, #0x6c] @ [0x21ff604] (=#0x221a038)
	str     r0, [r7, #0x494]
	mov     r3, #0x0
	str     r1, [r7, #0x498]
	str     r3, [r7, #0x4a0]
	sub     r0, r3, #0x1
	str     r0, [r7, #0x4b0]
	str     r3, [r7, #0x7c]
	str     r3, [r7, #0x80]
	str     r3, [r7, #0x8]
	str     r0, [r7, #0x484]
	str     r3, [r7, #0x480]
	ldr     r2, [sp, #0x18]
	str     r3, [r7, #0x4a4]
	mov     r0, r7
	str     r2, [r7, #0x4b8]
	bl      Function_2200534
	mov     r0, #0x0
	str     r0, [r7, #0x5cc]
	bl      Function_21ea840
	bl      Function_20d76d4
	bl      Function_21ea8a4
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ff5ec

.word 0x221a058 @ 0x21ff5ec
.word 0x221a048 @ 0x21ff5f0
.word 0x2219fe0 @ 0x21ff5f4
.word 0x221ae50 @ 0x21ff5f8
.word 0x221a068 @ 0x21ff5fc
.word 0x132 @ 0x21ff600
.word 0x221a038 @ 0x21ff604

.incbin "./baserom/overlay/overlay_0004.bin", 0x2e888, 0x21ff6c4 - 0x21ff608


.arm
Function_21ff6c4: @ 21ff6c4 :arm
	stmfd   sp!, {r3,lr}
	ldrsb   lr, [r0]
	mov     r12, #0x0
	cmp     lr, #0x0
	beq     branch_21ff704
	ldr     r3,  [pc, #0x34] @ [0x21ff714] (=#0x20fe764)
	ldr     r2,  [pc, #0x34] @ [0x21ff718] (=#0x9ccf9319)
.arm
branch_21ff6e0: @ 21ff6e0 :arm
	cmp     lr, #0x0
	blt     branch_21ff6f4
	cmp     lr, #0x80
	bge     branch_21ff6f4
	ldrb    lr, [r3, lr]
.arm
branch_21ff6f4: @ 21ff6f4 :arm
	mla     r12, r2, r12, lr
	ldrsb   lr, [r0, #0x1]!
	cmp     lr, #0x0
	bne     branch_21ff6e0
.arm
branch_21ff704: @ 21ff704 :arm
	mov     r0, r12
	bl      Function_20e2178
	mov     r0, r1
	ldmfd   sp!, {r3,pc}
@ 0x21ff714

.word 0x20fe764 @ 0x21ff714
.word 0x9ccf9319 @ 0x21ff718



.arm
Function_21ff71c: @ 21ff71c :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x88
	mov     r4, r0
	add     r0, r4, #0xc
	mov     r1, #0x14
	bl      Function_21ff6c4
	ldr     r1,  [pc, #0x100] @ [0x21ff83c] (=#0x221b75c)
	mov     r3, r0
	ldr     r1, [r1, #0x4]
	add     r0, sp, #0x8
	cmp     r1, #0x0
	beq     branch_21ff754
	bl      Function_20d8b7c
	b       branch_21ff760
@ 0x21ff754

.arm
branch_21ff754: @ 21ff754 :arm
	ldr     r1,  [pc, #0xe4] @ [0x21ff840] (=#0x221a07c)
	add     r2, r4, #0xc
	bl      Function_20d7510
.arm
branch_21ff760: @ 21ff760 :arm
	ldr     r1,  [pc, #0xdc] @ [0x21ff844] (=#0xee70)
	mov     r2, #0x2
	add     r0, sp, #0x8
	strb    r2, [sp, #0x1]
	strh    r1, [sp, #0x2]
	bl      Function_21eaf1c
	mvn     r1, #0x0
	str     r0, [sp, #0x4]
	cmp     r0, r1
	bne     branch_21ff7cc
	add     r0, sp, #0x8
	bl      Function_220854c
	cmp     r0, #0x0
	addeq   sp, sp, #0x88
	moveq   r0, #0x2
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r0, #0xc]
	add     r3, sp, #0x4
	ldr     r2, [r0]
	ldrb    r1, [r2]
	ldrb    r0, [r2, #0x1]
	strb    r1, [r3]
	strb    r0, [r3, #0x1]
	ldrb    r1, [r2, #0x2]
	ldrb    r0, [r2, #0x3]
	strb    r1, [r3, #0x2]
	strb    r0, [r3, #0x3]
.arm
branch_21ff7cc: @ 21ff7cc :arm
	ldr     r0, [r4, #0x4b0]
	mvn     r1, #0x0
	cmp     r0, r1
	bne     branch_21ff804
	mov     r0, #0x2
	mov     r1, #0x1
	mov     r2, #0x0
	bl      Function_21eacdc
	mvn     r1, #0x0
	cmp     r0, r1
	str     r0, [r4, #0x4b0]
	addeq   sp, sp, #0x88
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,pc}
.arm
branch_21ff804: @ 21ff804 :arm
	add     r1, sp, #0x0
	mov     r2, #0x8
	bl      Function_21ead78
	cmp     r0, #0x0
	addeq   sp, sp, #0x88
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r0, [r4, #0x4b0]
	bl      Function_21eacf0
	mvn     r0, #0x0
	str     r0, [r4, #0x4b0]
	mov     r0, #0x3
	add     sp, sp, #0x88
	ldmfd   sp!, {r4,pc}
@ 0x21ff83c

.word 0x221b75c @ 0x21ff83c
.word 0x221a07c @ 0x21ff840
.word 0xee70 @ 0x21ff844
.arm
Function_21ff848: @ 21ff848 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r7, r1
	ldreq   r7,  [pc, #0x3c] @ [0x21ff894] (=#0x221a038)
	mov     r4, r0
	mov     r0, r7
	mov     r6, r2
	bl      Function_20d8b60
	add     r5, r0, #0x1
	ldr     r0, [r4]
	mov     r1, r7
	mov     r2, r5
	bl      Function_20d50b8
	ldr     r0, [r6]
	add     r0, r0, r5
	str     r0, [r6]
	ldr     r0, [r4]
	add     r0, r0, r5
	str     r0, [r4]
	ldmfd   sp!, {r3-r7,pc}
@ 0x21ff894

.word 0x221a038 @ 0x21ff894
.arm
Function_21ff898: @ 21ff898 :arm
	ldr     r3, [r0]
	strb    r1, [r3]
	ldr     r1, [r2]
	add     r1, r1, #0x1
	str     r1, [r2]
	ldr     r1, [r0]
	add     r1, r1, #0x1
	str     r1, [r0]
	bx      lr
@ 0x21ff8bc

.arm
Function_21ff8bc: @ 21ff8bc :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3,lr}
	add     r12, sp, #0xc
	ldrb    r3, [r12]
	ldrb    r1, [r12, #0x1]
	ldr     lr, [r0]
	strb    r3, [lr]
	strb    r1, [lr, #0x1]
	ldrb    r3, [r12, #0x2]
	ldrb    r1, [r12, #0x3]
	strb    r3, [lr, #0x2]
	strb    r1, [lr, #0x3]
	ldr     r1, [r2]
	add     r1, r1, #0x4
	str     r1, [r2]
	ldr     r1, [r0]
	add     r1, r1, #0x4
	str     r1, [r0]
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x21ff910

.arm
Function_21ff910: @ 21ff910 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldr     r0, [r6]
	mov     r4, r3
	mov     r5, r2
	bl      Function_20d50b8
	ldr     r0, [r4]
	add     r0, r0, r5
	str     r0, [r4]
	ldr     r0, [r6]
	add     r0, r0, r5
	str     r0, [r6]
	ldmfd   sp!, {r4-r6,pc}
@ 0x21ff944

.arm
Function_21ff944: @ 21ff944 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	bl      Function_20d76a0
	ldr     r5,  [pc, #0xd4] @ [0x21ffa2c] (=#0x2c0b02c1)
	mov     r8, #0x0
	smull   r2, r4, r5, r0
	mov     r1, r0, lsr #31
	add     r4, r1, r4, asr #4
	mov     r3, #0x5d
	smull   r1, r2, r3, r4
	sub     r4, r0, r1
	add     r0, r4, #0x21
	mov     r7, #0x1
	strb    r0, [r10, #0x74]
	mov     r11, r8
	mov     r6, r7
	mov     r4, r3
.arm
branch_21ff988: @ 21ff988 :arm
	add     r9, r10, r7
	ldrsb   r3, [r9, #0x73]
	ldrsb   r0, [r10, #0x74]
	cmp     r3, r0
	eor     r3, r7, r3
	movlt   r1, r6
	and     r3, r3, #0x1
	movge   r1, r11
	cmp     r0, #0x4f
	movlt   r2, #0x1
	and     r0, r0, #0x1
	eor     r3, r8, r3
	movge   r2, #0x0
	eor     r0, r0, r3
	eor     r0, r0, r2
	eor     r8, r0, r1
	bl      Function_20d76a0
	smull   r2, r3, r5, r0
	mov     r1, r0, lsr #31
	add     r3, r1, r3, asr #4
	smull   r1, r2, r4, r3
	sub     r3, r0, r1
	add     r0, r3, #0x21
	cmp     r8, #0x0
	strb    r0, [r9, #0x74]
	beq     branch_21ff9fc
	ldrsb   r0, [r9, #0x74]
	tst     r0, #0x1
	beq     branch_21ffa10
.arm
branch_21ff9fc: @ 21ff9fc :arm
	cmp     r8, #0x0
	ldreqsb r0, [r9, #0x74]
	andeq   r0, r0, #0x1
	cmpeq   r0, #0x1
	bne     branch_21ffa1c
.arm
branch_21ffa10: @ 21ffa10 :arm
	ldrsb   r0, [r9, #0x74]
	add     r0, r0, #0x1
	strb    r0, [r9, #0x74]
.arm
branch_21ffa1c: @ 21ffa1c :arm
	add     r7, r7, #0x1
	cmp     r7, #0x8
	blt     branch_21ff988
	ldmfd   sp!, {r3-r11,pc}
@ 0x21ffa2c

.word 0x2c0b02c1 @ 0x21ffa2c

.incbin "./baserom/overlay/overlay_0004.bin", 0x2ecb0, 0x21ffac8 - 0x21ffa30


.arm
Function_21ffac8: @ 21ffac8 :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #195, 30 @ #0x30c
	mov     r5, r0
	ldr     r0, [r5]
	mov     r7, r1
	mov     r6, r2
	mov     r4, r3
	cmp     r0, #0x1
	beq     branch_21ffb00
	ldr     r0,  [pc, #0x230] @ [0x21ffd24] (=#0x221a098)
	ldr     r1,  [pc, #0x230] @ [0x21ffd28] (=#0x221a048)
	ldr     r2,  [pc, #0x230] @ [0x21ffd2c] (=#0x221a01c)
	ldr     r3,  [pc, #0x230] @ [0x21ffd30] (=#0x20a)
	bl      Function_20d407c
.arm
branch_21ffb00: @ 21ffb00 :arm
	cmp     r7, #0x0
	ldreq   r7,  [pc, #0x228] @ [0x21ffd34] (=#0x221a038)
	cmp     r6, #0x0
	ldreq   r6,  [pc, #0x220] @ [0x21ffd34] (=#0x221a038)
	mov     r0, r7
	bl      Function_20d8b60
	cmp     r0, #1, 24 @ #0x100
	addhi   sp, sp, #195, 30 @ #0x30c
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r7,pc}
	mov     r0, r6
	bl      Function_20d8b60
	cmp     r0, #1, 24 @ #0x100
	addhi   sp, sp, #195, 30 @ #0x30c
	movhi   r0, #0x6
	ldmhifd sp!, {r4-r7,pc}
	mov     r0, r5
	bl      Function_21ff71c
	cmp     r0, #0x0
	addne   sp, sp, #195, 30 @ #0x30c
	ldmnefd sp!, {r4-r7,pc}
	mov     r0, r5
	str     r4, [r5, #0x5c4]
	bl      Function_21ff944
	add     r3, sp, #0xe
	mov     r12, #0x2
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	mov     r1, #0x0
	str     r12, [sp, #0x8]
	str     r3, [sp, #0x4]
	bl      Function_21ff898
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	mov     r1, #0x1
	bl      Function_21ff898
	add     r0, sp, #0x4
	mov     r1, #0x3
	add     r2, sp, #0x8
	bl      Function_21ff898
	ldr     r1, [r5, #0x4b8]
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	bl      Function_21ff8bc
	add     r0, sp, #0x4
	add     r1, r5, #0xc
	add     r2, sp, #0x8
	bl      Function_21ff848
	add     r0, sp, #0x4
	add     r1, r5, #0x30
	add     r2, sp, #0x8
	bl      Function_21ff848
	add     r0, sp, #0x4
	add     r1, r5, #0x74
	mov     r2, #0x8
	add     r3, sp, #0x8
	bl      Function_21ff910
	mov     r1, r6
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	bl      Function_21ff848
	mov     r1, r7
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	bl      Function_21ff848
	mov     r1, r4, lsl #24
	and     r12, r1, #255, 8 @ #0xff000000
	mov     r1, r4, lsl #8
	and     r3, r1, #255, 16 @ #0xff0000
	mov     r1, r4, lsr #24
	and     r2, r1, #0xff
	mov     r1, r4, lsr #8
	and     r1, r1, #255, 24 @ #0xff00
	orr     r1, r2, r1
	orr     r1, r3, r1
	add     r0, sp, #0x4
	orr     r1, r12, r1
	add     r2, sp, #0x8
	bl      Function_21ff8bc
	ldr     r0, [r5, #0x5c4]
	tst     r0, #0x8
	beq     branch_21ffc58
	ldr     r1, [r5, #0x4a4]
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	bl      Function_21ff8bc
.arm
branch_21ffc58: @ 21ffc58 :arm
	ldr     r0, [r5, #0x5c4]
	tst     r0, #0x80
	beq     branch_21ffc74
	ldr     r1, [sp, #0x320]
	add     r0, sp, #0x4
	add     r2, sp, #0x8
	bl      Function_21ff8bc
.arm
branch_21ffc74: @ 21ffc74 :arm
	ldr     r2, [sp, #0x8]
	add     r4, sp, #0x0
	mov     r0, r2, lsl #16
	mov     r0, r0, lsr #16
	mov     r1, r0, asr #8
	mov     r0, r0, lsl #8
	and     r1, r1, #0xff
	and     r0, r0, #255, 24 @ #0xff00
	orr     r0, r1, r0
	strh    r0, [sp]
	ldrb    r3, [r4]
	add     r1, sp, #0xc
	ldrb    r0, [r4, #0x1]
	strb    r3, [r1]
	mov     r3, #0x0
	strb    r0, [r1, #0x1]
	ldr     r0, [r5, #0x4b0]
	bl      Function_21eae48
	cmp     r0, #0x0
	bgt     branch_21ffcd8
	mov     r0, r5
	bl      Function_21ffde0
	add     sp, sp, #195, 30 @ #0x30c
	mov     r0, #0x3
	ldmfd   sp!, {r4-r7,pc}
@ 0x21ffcd8

.arm
branch_21ffcd8: @ 21ffcd8 :arm
	mov     r0, #0x3
	str     r0, [r5]
	mov     r0, #0x0
	str     r0, [r5, #0x5c8]
	ldr     r0, [r5, #0x7c]
	cmp     r0, #0x0
	bne     branch_21ffd18
	mov     r0, #1, 20 @ #0x1000
	bl      Function_21d7880
	cmp     r0, #0x0
	str     r0, [r5, #0x7c]
	addeq   sp, sp, #195, 30 @ #0x30c
	moveq   r0, #0x5
	ldmeqfd sp!, {r4-r7,pc}
	mov     r0, #0x0
	str     r0, [r5, #0x80]
.arm
branch_21ffd18: @ 21ffd18 :arm
	mov     r0, #0x0
	add     sp, sp, #195, 30 @ #0x30c
	ldmfd   sp!, {r4-r7,pc}
@ 0x21ffd24

.word 0x221a098 @ 0x21ffd24
.word 0x221a048 @ 0x21ffd28
.word 0x221a01c @ 0x21ffd2c
.word 0x20a @ 0x21ffd30
.word 0x221a038 @ 0x21ffd34
.arm
Function_21ffd38: @ 21ffd38 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x480]
	mov     r4, #0x0
	cmp     r0, #0x0
	ble     branch_21ffd70
.arm
branch_21ffd50: @ 21ffd50 :arm
	add     r0, r5, r4, lsl #2
	ldr     r1, [r0, #0x84]
	mov     r0, r5
	bl      Function_21ff430
	ldr     r0, [r5, #0x480]
	add     r4, r4, #0x1
	cmp     r4, r0
	blt     branch_21ffd50
.arm
branch_21ffd70: @ 21ffd70 :arm
	mov     r0, #0x0
	str     r0, [r5, #0x480]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ffd7c

.arm
Function_21ffd7c: @ 21ffd7c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x8]
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	mov     r4, #0x0
	bl      Function_21e9bbc
	cmp     r0, #0x0
	ble     branch_21ffdcc
.arm
branch_21ffda0: @ 21ffda0 :arm
	ldr     r0, [r5, #0x8]
	mov     r1, r4
	bl      Function_21e9bc4
	ldr     r1, [r0]
	mov     r0, r5
	bl      Function_21ff430
	ldr     r0, [r5, #0x8]
	add     r4, r4, #0x1
	bl      Function_21e9bbc
	cmp     r4, r0
	blt     branch_21ffda0
.arm
branch_21ffdcc: @ 21ffdcc :arm
	ldr     r0, [r5, #0x8]
	bl      Function_21e9b50
	mov     r0, #0x0
	str     r0, [r5, #0x8]
	ldmfd   sp!, {r3-r5,pc}
@ 0x21ffde0

.arm
Function_21ffde0: @ 21ffde0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x7c]
	cmp     r0, #0x0
	beq     branch_21ffdf8
	bl      Function_21d78b0
.arm
branch_21ffdf8: @ 21ffdf8 :arm
	mov     r1, #0x0
	str     r1, [r4, #0x7c]
	str     r1, [r4, #0x80]
	ldr     r0, [r4, #0x4b0]
	sub     r1, r1, #0x1
	cmp     r0, r1
	beq     branch_21ffe18
	bl      Function_21eacf0
.arm
branch_21ffe18: @ 21ffe18 :arm
	mvn     r1, #0x0
	mov     r0, r4
	str     r1, [r4, #0x4b0]
	mov     r1, #0x1
	str     r1, [r4]
	bl      Function_21ffd7c
	mvn     r1, #0x0
	mov     r0, r4
	str     r1, [r4, #0x484]
	bl      Function_21ffd38
	ldmfd   sp!, {r4,pc}
@ 0x21ffe44

.arm
Function_21ffe44: @ 21ffe44 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21ffde0
	mov     r0, r4
	bl      Function_21ff340
	mov     r0, r4
	bl      Function_21fe144
	ldr     r0, [r4, #0x4]
	cmp     r0, #0x0
	beq     branch_21ffe70
	bl      Function_21e9b50
.arm
branch_21ffe70: @ 21ffe70 :arm
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	ldmfd   sp!, {r4,pc}
@ 0x21ffe7c


.incbin "./baserom/overlay/overlay_0004.bin", 0x2f0fc, 0x2200534 - 0x21ffe7c


.arm
Function_2200534: @ 2200534 :arm
	str     r1, [r0, #0x4ac]
	bx      lr
@ 0x220053c


.incbin "./baserom/overlay/overlay_0004.bin", 0x2f7bc, 0x22014b8 - 0x220053c


.arm
Function_22014b8: @ 22014b8 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_21ff2e8
	ldr     r0, [r4]
	cmp     r0, #0x3
	addls   pc, pc, r0, lsl #2
	b       branch_22014fc
@ 0x22014d4


.incbin "./baserom/overlay/overlay_0004.bin", 0x30754, 0x22014fc - 0x22014d4


.arm
branch_22014fc: @ 22014fc :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2201504


.incbin "./baserom/overlay/overlay_0004.bin", 0x30784, 0x2202794 - 0x2201504


.arm
Function_2202794: @ 2202794 :arm
	ldr     r0,  [pc, #0x8] @ [0x22027a4] (=#0x221b780)
	mov     r1, #0x0
	str     r1, [r0, #0x20]
	bx      lr
@ 0x22027a4

.word 0x221b780 @ 0x22027a4

.incbin "./baserom/overlay/overlay_0004.bin", 0x31a28, 0x220313c - 0x22027a8


.arm
Function_220313c: @ 220313c :arm
	stmfd   sp!, {r3-r11,lr}
	ldr     r4,  [pc, #0x1d0] @ [0x2203318] (=#0x221b780)
	mov     r10, r0
	ldr     r0, [r4, #0x20]
	ldr     r7, [sp, #0x28]
	mov     r9, r1
	mov     r8, r2
	mov     r11, r3
	mov     r5, #0x0
	cmp     r0, #0x0
	moveq   r0, r5
	ldmeqfd sp!, {r3-r11,pc}
	ldr     r1,  [pc, #0x1a8] @ [0x220331c] (=#0x221b7b8)
	mov     r2, r5
.arm
branch_2203174: @ 2203174 :arm
	ldr     r0, [r1, #0x38]
	cmp     r10, r0
	bne     branch_2203190
	ldr     r1,  [pc, #0x194] @ [0x220331c] (=#0x221b7b8)
	mov     r0, #0x94
	mla     r5, r2, r0, r1
	b       branch_22031a0
@ 0x2203190

.arm
branch_2203190: @ 2203190 :arm
	add     r2, r2, #0x1
	cmp     r2, #0x3
	add     r1, r1, #0x94
	bcc     branch_2203174
.arm
branch_22031a0: @ 22031a0 :arm
	cmp     r5, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	ldrb    r0, [r9, #0x4]
	cmp     r0, #0x41
	bne     branch_22031d4
	ldrh    r2, [r9, #0x6]
	mov     r0, #0x0
	mov     r1, #0x1
	str     r2, [r5, #0x30]
	str     r0, [r5, #0x4c]
	str     r1, [r5, #0x6c]
	ldmfd   sp!, {r3-r11,pc}
@ 0x22031d4

.arm
branch_22031d4: @ 22031d4 :arm
	cmp     r0, #0x40
	movne   r0, #0x0
	ldmnefd sp!, {r3-r11,pc}
	ldrb    r0, [r9, #0x5]
	and     r6, r0, #0x7f
	cmp     r6, #0x5
	str     r6, [r5, #0x24]
	movge   r0, #0x0
	ldmgefd sp!, {r3-r11,pc}
	ldr     r1,  [pc, #0x120] @ [0x2203320] (=#0x2215d09)
	ldr     r0,  [pc, #0x120] @ [0x2203324] (=#0x2215d08)
	ldrb    r2, [r1, r6, lsl #0x1]
	ldrb    r1, [r0, r6, lsl #0x1]
	mov     r0, #0x44
	mla     r0, r1, r0, r2
	add     r0, r0, #0xc
	cmp     r8, r0
	movne   r0, #0x0
	ldmnefd sp!, {r3-r11,pc}
	cmp     r10, #0x0
	movne   r0, #0x1
	movne   r1, r0, lsl r10
	ldr     r0,  [pc, #0xe4] @ [0x2203318] (=#0x221b780)
	moveq   r1, #0x1
	ldr     r0, [r0, #0x4]
	tst     r0, r1
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
	bl      Function_2205208
	movs    r4, r0
	bne     branch_2203288
	ldr     r0, [r5, #0x34]
	bl      Function_2203930
	ldr     r0, [r5, #0x34]
	bl      Function_2203544
	bl      Function_2205208
	movs    r4, r0
	bne     branch_220327c
	bl      Function_22039a0
	bl      Function_22035a0
	bl      Function_2205208
	mov     r4, r0
.arm
branch_220327c: @ 220327c :arm
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r11,pc}
.arm
branch_2203288: @ 2203288 :arm
	add     r0, r4, #0x5c
	add     r0, r0, #1, 22 @ #0x400
	sub     r2, r8, #0xc
	sub     r1, r0, r2
	add     r0, r9, #0xc
	str     r1, [sp]
	bl      Function_20c4db0
	ldr     r0, [r5, #0x34]
	sub     r1, r8, #0xc
	strb    r0, [r4, #0x11]
	ldr     r0, [sp]
	str     r6, [r4, #0xc]
	str     r0, [r4, #0x474]
	str     r1, [r4, #0x14]
	str     r11, [r4, #0x464]
	str     r7, [r4, #0x468]
	strb    r10, [r4, #0x10]
	ldrb    r2, [r9, #0x5]
	mov     r0, r5
	mov     r1, r4
	and     r2, r2, #0x80
	str     r2, [r4, #0x45c]
	ldr     r2, [r9, #0x8]
	str     r2, [r4, #0x460]
	ldrh    r2, [r9, #0x6]
	str     r2, [r4, #0x18]
	bl      Function_2203db0
	cmp     r0, #0x0
	mov     r0, r4
	bne     branch_220330c
	bl      Function_220523c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x220330c

.arm
branch_220330c: @ 220330c :arm
	bl      Function_220360c
	mov     r0, #0x1
	ldmfd   sp!, {r3-r11,pc}
@ 0x2203318

.word 0x221b780 @ 0x2203318
.word 0x221b7b8 @ 0x220331c
.word 0x2215d09 @ 0x2203320
.word 0x2215d08 @ 0x2203324

.incbin "./baserom/overlay/overlay_0004.bin", 0x325a8, 0x2203544 - 0x2203328


.arm
Function_2203544: @ 2203544 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	bl      Function_20c3d98
	mov     r4, r0
	mov     r0, r6
	bl      Function_22036b4
	movs    r5, r0
	beq     branch_2203584
.arm
branch_2203564: @ 2203564 :arm
	mov     r0, r5
	bl      Function_2203704
	mov     r0, r5
	bl      Function_220523c
	mov     r0, r6
	bl      Function_22036b4
	movs    r5, r0
	bne     branch_2203564
.arm
branch_2203584: @ 2203584 :arm
	ldr     r1,  [pc, #0x10] @ [0x220359c] (=#0x221c6a0)
	mov     r2, #0x0
	mov     r0, r4
	str     r2, [r1, r6, lsl #0x2]
	bl      Function_20c3dac
	ldmfd   sp!, {r4-r6,pc}
@ 0x220359c

.word 0x221c6a0 @ 0x220359c



.arm
Function_22035a0: @ 22035a0 :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x54] @ [0x2203604] (=#0x221c698)
	mov     r4, r0
	ldr     r5, [r1]
	cmp     r5, #0x0
	beq     branch_22035d0
.arm
branch_22035bc: @ 22035bc :arm
	mov     r0, r5
	ldr     r5, [r5, #0x8]
	bl      Function_220523c
	cmp     r5, #0x0
	bne     branch_22035bc
.arm
branch_22035d0: @ 22035d0 :arm
	ldr     r0,  [pc, #0x2c] @ [0x2203604] (=#0x221c698)
	mov     r2, #0x0
	str     r2, [r0]
	str     r2, [r0, #0x4]
	ldr     r0,  [pc, #0x20] @ [0x2203608] (=#0x221c6a0)
	mov     r1, r2
.arm
branch_22035e8: @ 22035e8 :arm
	str     r1, [r0, r2, lsl #0x2]
	add     r2, r2, #0x1
	cmp     r2, #0x3
	blt     branch_22035e8
	mov     r0, r4
	bl      Function_20c3dac
	ldmfd   sp!, {r3-r5,pc}
@ 0x2203604

.word 0x221c698 @ 0x2203604
.word 0x221c6a0 @ 0x2203608
.arm
Function_220360c: @ 220360c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x6c] @ [0x220368c] (=#0x221c698)
	ldr     r2, [r1]
	cmp     r2, #0x0
	bne     branch_2203648
	str     r4, [r1]
	mov     r3, #0x0
	str     r3, [r4, #0x4]
	ldr     r2, [r1]
	str     r3, [r2, #0x8]
	ldr     r2, [r1]
	str     r2, [r1, #0x4]
	b       branch_2203664
@ 0x2203648

.arm
branch_2203648: @ 2203648 :arm
	ldr     r3, [r1, #0x4]
	mov     r2, #0x0
	str     r3, [r4, #0x4]
	str     r2, [r4, #0x8]
	ldr     r2, [r1, #0x4]
	str     r4, [r2, #0x8]
	str     r4, [r1, #0x4]
.arm
branch_2203664: @ 2203664 :arm
	ldrb    r2, [r4, #0x11]
	ldr     r3,  [pc, #0x20] @ [0x2203690] (=#0x221c6a0)
	ldr     r1, [r3, r2, lsl #0x2]
	add     r1, r1, #0x1
	str     r1, [r3, r2, lsl #0x2]
	bl      Function_20c3dac
	ldrb    r1, [r4, #0x11]
	ldr     r0,  [pc, #0x8] @ [0x2203690] (=#0x221c6a0)
	ldr     r0, [r0, r1, lsl #0x2]
	ldmfd   sp!, {r4,pc}
@ 0x220368c

.word 0x221c698 @ 0x220368c
.word 0x221c6a0 @ 0x2203690

.incbin "./baserom/overlay/overlay_0004.bin", 0x32914, 0x22036b4 - 0x2203694


.arm
Function_22036b4: @ 22036b4 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r1,  [pc, #0x40] @ [0x2203700] (=#0x221c698)
	mov     r5, r0
	ldr     r4, [r1]
	bl      Function_20c3d98
	cmp     r4, #0x0
	beq     branch_22036f4
.arm
branch_22036d0: @ 22036d0 :arm
	ldrb    r1, [r4, #0x11]
	cmp     r1, r5
	bne     branch_22036e8
	bl      Function_20c3dac
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x22036e8

.arm
branch_22036e8: @ 22036e8 :arm
	ldr     r4, [r4, #0x8]
	cmp     r4, #0x0
	bne     branch_22036d0
.arm
branch_22036f4: @ 22036f4 :arm
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2203700

.word 0x221c698 @ 0x2203700
.arm
Function_2203704: @ 2203704 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r2, [r4, #0x4]
	cmp     r2, #0x0
	ldrne   r1, [r4, #0x8]
	strne   r1, [r2, #0x8]
	bne     branch_220373c
	ldr     r2, [r4, #0x8]
	ldr     r1,  [pc, #0x60] @ [0x2203790] (=#0x221c698)
	cmp     r2, #0x0
	str     r2, [r1]
	movne   r1, #0x0
	strne   r1, [r2, #0x4]
.arm
branch_220373c: @ 220373c :arm
	ldr     r2, [r4, #0x8]
	cmp     r2, #0x0
	ldrne   r1, [r4, #0x4]
	strne   r1, [r2, #0x4]
	bne     branch_2203768
	ldr     r2, [r4, #0x4]
	ldr     r1,  [pc, #0x34] @ [0x2203790] (=#0x221c698)
	cmp     r2, #0x0
	str     r2, [r1, #0x4]
	movne   r1, #0x0
	strne   r1, [r2, #0x8]
.arm
branch_2203768: @ 2203768 :arm
	ldrb    r2, [r4, #0x11]
	ldr     r3,  [pc, #0x20] @ [0x2203794] (=#0x221c6a0)
	ldr     r1, [r3, r2, lsl #0x2]
	sub     r1, r1, #0x1
	str     r1, [r3, r2, lsl #0x2]
	bl      Function_20c3dac
	ldrb    r1, [r4, #0x11]
	ldr     r0,  [pc, #0x8] @ [0x2203794] (=#0x221c6a0)
	ldr     r0, [r0, r1, lsl #0x2]
	ldmfd   sp!, {r4,pc}
@ 0x2203790

.word 0x221c698 @ 0x2203790
.word 0x221c6a0 @ 0x2203794

.incbin "./baserom/overlay/overlay_0004.bin", 0x32a18, 0x2203930 - 0x2203798


.arm
Function_2203930: @ 2203930 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	bl      Function_20c3d98
	ldr     r7,  [pc, #0x50] @ [0x2203994] (=#0x221c6ac)
	mov     r4, r0
	ldr     r0, [r7, r5, lsl #0x2]
	cmp     r0, #0x0
	beq     branch_2203974
	mov     r6, #0x0
.arm
branch_2203954: @ 2203954 :arm
	ldr     r1, [r0, #0x8]
	str     r1, [r7, r5, lsl #0x2]
	cmp     r1, #0x0
	strne   r6, [r1, #0x4]
	bl      Function_220523c
	ldr     r0, [r7, r5, lsl #0x2]
	cmp     r0, #0x0
	bne     branch_2203954
.arm
branch_2203974: @ 2203974 :arm
	ldr     r2,  [pc, #0x1c] @ [0x2203998] (=#0x221c6c4)
	mov     r3, #0x0
	ldr     r1,  [pc, #0x18] @ [0x220399c] (=#0x221c6b8)
	mov     r0, r4
	str     r3, [r2, r5, lsl #0x2]
	str     r3, [r1, r5, lsl #0x2]
	bl      Function_20c3dac
	ldmfd   sp!, {r3-r7,pc}
@ 0x2203994

.word 0x221c6ac @ 0x2203994
.word 0x221c6c4 @ 0x2203998
.word 0x221c6b8 @ 0x220399c
.arm
Function_22039a0: @ 22039a0 :arm
	stmfd   sp!, {r4-r10,lr}
	bl      Function_20c3d98
	mov     r6, #0x0
	mov     r5, r0
	mov     r10, r6
	ldr     r4,  [pc, #0x58] @ [0x2203a14] (=#0x221c6ac)
	mov     r9, r6
	ldr     r8,  [pc, #0x54] @ [0x2203a18] (=#0x221c6c4)
	ldr     r7,  [pc, #0x54] @ [0x2203a1c] (=#0x221c6b8)
	b       branch_2203a00
@ 0x22039c8

.arm
branch_22039c8: @ 22039c8 :arm
	ldr     r0, [r4, r6, lsl #0x2]
	cmp     r0, #0x0
	beq     branch_22039f4
.arm
branch_22039d4: @ 22039d4 :arm
	ldr     r1, [r0, #0x8]
	str     r1, [r4, r6, lsl #0x2]
	cmp     r1, #0x0
	strne   r10, [r1, #0x4]
	bl      Function_220523c
	ldr     r0, [r4, r6, lsl #0x2]
	cmp     r0, #0x0
	bne     branch_22039d4
.arm
branch_22039f4: @ 22039f4 :arm
	str     r9, [r8, r6, lsl #0x2]
	str     r9, [r7, r6, lsl #0x2]
	add     r6, r6, #0x1
.arm
branch_2203a00: @ 2203a00 :arm
	cmp     r6, #0x3
	blt     branch_22039c8
	mov     r0, r5
	bl      Function_20c3dac
	ldmfd   sp!, {r4-r10,pc}
@ 0x2203a14

.word 0x221c6ac @ 0x2203a14
.word 0x221c6c4 @ 0x2203a18
.word 0x221c6b8 @ 0x2203a1c

.incbin "./baserom/overlay/overlay_0004.bin", 0x32ca0, 0x2203cb8 - 0x2203a20


.arm
Function_2203cb8: @ 2203cb8 :arm
	ldr     r2,  [pc, #0x14] @ [0x2203cd4] (=#0x10001)
	strh    r1, [r0, #0x68]
	str     r2, [r0, #0x64]
	mov     r1, #0x0
	str     r1, [r0, #0x60]
	str     r1, [r0, #0x5c]
	bx      lr
@ 0x2203cd4

.word 0x10001 @ 0x2203cd4
.arm
Function_2203cd8: @ 2203cd8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	ldrh    r12, [r6, #0x68]
	mov     r4, r2
	ldr     r3,  [pc, #0xb8] @ [0x2203da8] (=#0xbb8)
	sub     r2, r4, r12
	mov     r2, r2, lsl #16
	mov     r5, r1
	cmp     r3, r2, lsr #16
	mov     r2, r2, lsr #16
	bls     branch_2203d1c
	cmp     r4, r12
	ldrcc   r0, [r6, #0x60]
	addcc   r0, r0, #1, 16 @ #0x10000
	strcc   r0, [r6, #0x60]
	strh    r4, [r6, #0x68]
	b       branch_2203d94
@ 0x2203d1c

.arm
branch_2203d1c: @ 2203d1c :arm
	ldr     r1,  [pc, #0x88] @ [0x2203dac] (=#0xff9c)
	cmp     r2, r1
	bhi     branch_2203d68
	ldr     r1, [r6, #0x64]
	cmp     r4, r1
	bne     branch_2203d50
	mov     r1, r4
	bl      Function_2203cb8
	sub     r0, r4, #0x1
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	str     r0, [r6, #0x54]
	b       branch_2203d94
@ 0x2203d50

.arm
branch_2203d50: @ 2203d50 :arm
	add     r0, r4, #0x1
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	str     r0, [r6, #0x64]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2203d68

.arm
branch_2203d68: @ 2203d68 :arm
	ldr     r0, [r6, #0x54]
	ldr     r1, [r6, #0x60]
	add     r0, r0, #231, 30 @ #0x39c
	add     r1, r4, r1
	add     r0, r0, #63, 22 @ #0xfc00
	cmp     r1, r0
	bls     branch_2203d94
	sub     r0, r1, #1, 16 @ #0x10000
	str     r0, [r5, #0x18]
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2203d94

.arm
branch_2203d94: @ 2203d94 :arm
	ldr     r1, [r6, #0x60]
	mov     r0, #0x1
	add     r1, r4, r1
	str     r1, [r5, #0x18]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2203da8

.word 0xbb8 @ 0x2203da8
.word 0xff9c @ 0x2203dac
.arm
Function_2203db0: @ 2203db0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	ldr     r2, [r7, #0x5c]
	mov     r6, r1
	cmp     r2, #0x0
	mov     r5, #0x0
	beq     branch_2203de0
	ldr     r1, [r6, #0x18]
	mov     r1, r1, lsl #16
	mov     r1, r1, lsr #16
	bl      Function_2203cb8
	b       branch_2203e78
@ 0x2203de0

.arm
branch_2203de0: @ 2203de0 :arm
	ldr     r2, [r6, #0x18]
	mov     r2, r2, lsl #16
	mov     r2, r2, lsr #16
	bl      Function_2203cd8
	cmp     r0, #0x0
	bne     branch_2203e0c
	ldr     r1, [r7, #0x14]
	mov     r0, r5
	add     r1, r1, #0x1
	str     r1, [r7, #0x14]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2203e0c

.arm
branch_2203e0c: @ 2203e0c :arm
	ldr     r0, [r6, #0x18]
	str     r0, [r7, #0x10]
	ldr     r1, [r6, #0x18]
	ldr     r2, [r7, #0x54]
	cmp     r2, r1
	bne     branch_2203e38
	ldr     r1, [r7, #0x14]
	mov     r0, r5
	add     r1, r1, #0x1
	str     r1, [r7, #0x14]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2203e38

.arm
branch_2203e38: @ 2203e38 :arm
	add     r0, r2, #0x1
	cmp     r0, r1
	beq     branch_2203e78
	ldr     r0, [r6, #0x45c]
	cmp     r0, #0x0
	bne     branch_2203e78
	subs    r0, r1, r2
	rsbmi   r0, r0, #0x0
	cmp     r0, #0x64
	strgt   r1, [r7, #0x54]
	movgt   r0, #0x0
	ldmgtfd sp!, {r3-r7,pc}
	cmp     r2, r1
	ldrhi   r0, [r7, #0x1c]
	addhi   r0, r0, #0x1
	strhi   r0, [r7, #0x1c]
.arm
branch_2203e78: @ 2203e78 :arm
	ldr     r0, [r6, #0x18]
	str     r0, [r7, #0x54]
	ldr     r0, [r7, #0x4c]
	cmp     r0, #0x0
	bne     branch_2203eb0
	ldr     r1, [r6, #0x460]
	add     r0, r6, #0x64
	str     r1, [r7, #0x4c]
	add     r1, r0, #1, 22 @ #0x400
	add     r0, r7, #0x44
	ldmia   r1, {r2,r3}
	stmia   r0, {r2,r3}
	mov     r0, #0x0
	str     r0, [r7, #0x6c]
.arm
branch_2203eb0: @ 2203eb0 :arm
	ldr     r2, [r6, #0x460]
	ldr     r0, [r7, #0x4c]
	ldr     r3, [r6, #0x464]
	ldr     r1, [r7, #0x44]
	sub     r0, r2, r0
	ldr     r2, [r7, #0x80]
	mov     r0, r0, lsl #6
	subs    r1, r3, r1
	subs    r4, r0, r1
	cmp     r2, #0x0
	beq     branch_2203ee8
	ldr     r1, [r6, #0x45c]
	cmp     r1, #0x0
	beq     branch_2203ef0
.arm
branch_2203ee8: @ 2203ee8 :arm
	str     r4, [r7, #0x80]
	b       branch_2203f64
@ 0x2203ef0

.arm
branch_2203ef0: @ 2203ef0 :arm
	str     r4, [r7, #0x80]
	subs    r1, r4, r2
	ldr     r2, [r7, #0x7c]
	rsbmi   r1, r1, #0x0
	add     r2, r2, #198, 30 @ #0x318
	add     r2, r2, #34, 22 @ #0x8800
	mov     r12, r2, lsl #1
	ldr     r3,  [pc, #0x22c] @ [0x2204140] (=#0xcc8d)
	mov     r2, #0x0
	adds    r3, r12, r3
	mov     lr, r1, asr #31
	adc     r2, r2, r12, asr #31
	cmp     lr, r2
	cmpeq   r1, r3
	bls     branch_2203f44
	ldr     r12,  [pc, #0x210] @ [0x2204144] (=#0x75ca82cb)
	mov     r2, r1, lsr #31
	smull   r3, lr, r12, r1
	add     lr, r2, lr, asr #14
	add     r2, lr, #0x2
	str     r2, [r7, #0x84]
.arm
branch_2203f44: @ 2203f44 :arm
	ldr     r2, [r7, #0x84]
	cmp     r2, #0x0
	bgt     branch_2203f64
	ldr     r2, [r7, #0x7c]
	sub     r1, r1, r2
	add     r1, r2, r1, asr #4
	str     r1, [r7, #0x7c]
	str     r1, [r7, #0x18]
.arm
branch_2203f64: @ 2203f64 :arm
	ldr     r2, [r7, #0x44]
	ldr     r3, [r7, #0x4]
	ldr     r1, [r7, #0x48]
	adds    r2, r0, r2
	adc     r0, r1, #0x0
	adds    r1, r3, r2
	str     r1, [r6, #0x46c]
	adc     r0, r0, #0x0
	str     r0, [r6, #0x470]
	bl      Function_20c3880
	ldr     r12, [r6, #0x46c]
	ldr     r2,  [pc, #0x1b0] @ [0x2204148] (=#0x8b18)
	ldr     lr, [r6, #0x470]
	adds    r6, r12, r2
	adc     r3, lr, #0x0
	cmp     r3, r1
	mov     r3, #0x0
	cmpeq   r6, r0
	movcc   r0, r3
	ldmccfd sp!, {r3-r7,pc}
	ldr     r6,  [pc, #0x190] @ [0x220414c] (=#0x7fd88)
	adds    r6, r0, r6
	adc     r0, r1, r3
	cmp     lr, r0
	cmpeq   r12, r6
	movhi   r0, r3
	ldmhifd sp!, {r3-r7,pc}
	ldr     r0, [r7, #0x84]
	cmp     r0, #0x0
	bgt     branch_220412c
	ldr     r0, [r7, #0x7c]
	ldr     r6,  [pc, #0x15c] @ [0x2204144] (=#0x75ca82cb)
	add     r12, r0, r0, lsl #1
	smull   r1, r0, r6, r12
	ldr     r6, [r7, #0x8c]
	mov     r1, r12, lsr #31
	cmp     r12, r6
	add     r0, r1, r0, asr #14
	bls     branch_2204038
	add     r1, r0, #0x1
	mul     r6, r1, r2
	mul     r1, r0, r2
	add     r0, r6, #0xdf
	add     r2, r0, #77, 22 @ #0x13400
	ldr     r0,  [pc, #0x134] @ [0x2204150] (=#0xffff2f5c)
	add     r1, r1, #0xdf
	str     r2, [r7, #0x8c]
	add     r0, r2, r0
	str     r0, [r7, #0x88]
	add     r0, r1, #77, 22 @ #0x13400
	str     r0, [r7, #0x4]
	str     r3, [r7, #0x90]
	b       branch_2204098
@ 0x2204038

.arm
branch_2204038: @ 2204038 :arm
	ldr     r1, [r7, #0x88]
	cmp     r12, r1
	bge     branch_2204098
	ldr     r1, [r7, #0x90]
	add     r1, r1, #0x1
	str     r1, [r7, #0x90]
	cmp     r1, #0x46
	bls     branch_2204098
	add     r1, r0, #0x1
	mul     r12, r1, r2
	add     r1, r12, #0xdf
	add     r1, r1, #77, 22 @ #0x13400
	ldr     r6,  [pc, #0xe4] @ [0x2204154] (=#0xffffba74)
	str     r1, [r7, #0x8c]
	ldr     r1,  [pc, #0xd0] @ [0x2204148] (=#0x8b18)
	mlas    r2, r0, r2, r6
	str     r2, [r7, #0x88]
	mul     r1, r0, r1
	add     r0, r1, #0xdf
	strmi   r3, [r7, #0x88]
	add     r0, r0, #77, 22 @ #0x13400
	mov     r2, #0x0
	str     r0, [r7, #0x4]
	str     r2, [r7, #0x90]
.arm
branch_2204098: @ 2204098 :arm
	ldr     r1, [r7, #0x4]
	ldr     r0,  [pc, #0xb4] @ [0x2204158] (=#0x68520)
	cmp     r1, r0
	strhi   r0, [r7, #0x4]
	ldr     r0, [r7, #0x6c]
	cmp     r0, #0x10
	bcs     branch_22040c8
	add     r0, r0, #0x1
	str     r0, [r7, #0x6c]
	str     r4, [r7, #0x74]
	str     r4, [r7, #0x78]
	b       branch_22040e4
@ 0x22040c8

.arm
branch_22040c8: @ 22040c8 :arm
	ldr     r0, [r7, #0x74]
	rsb     r0, r0, r0, lsl #5
	add     r1, r4, r0
	mov     r0, r1, asr #4
	add     r0, r1, r0, lsr #27
	mov     r0, r0, asr #5
	str     r0, [r7, #0x74]
.arm
branch_22040e4: @ 22040e4 :arm
	ldr     r2, [r7, #0x78]
	ldr     r1, [r7, #0x74]
	ldr     r0,  [pc, #0x68] @ [0x220415c] (=#0x8701)
	sub     r1, r2, r1
	cmp     r1, r0
	mvn     r0, #135, 24 @ #0x8700
	movgt   r5, #0x1
	str     r1, [r7, #0xc]
	cmp     r1, r0
	bge     branch_220411c
	ldr     r1, [r7, #0x70]
	add     r5, r0, #135, 24 @ #0x8700
	add     r0, r1, #0x1
	str     r0, [r7, #0x70]
.arm
branch_220411c: @ 220411c :arm
	cmp     r5, #0x0
	movne   r0, #0x0
	strne   r0, [r7, #0x6c]
	strne   r0, [r7, #0x4c]
.arm
branch_220412c: @ 220412c :arm
	ldr     r1, [r7, #0x84]
	mov     r0, #0x1
	sub     r1, r1, #0x1
	str     r1, [r7, #0x84]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204140

.word 0xcc8d @ 0x2204140
.word 0x75ca82cb @ 0x2204144
.word 0x8b18 @ 0x2204148
.word 0x7fd88 @ 0x220414c
.word 0xffff2f5c @ 0x2204150
.word 0xffffba74 @ 0x2204154
.word 0x68520 @ 0x2204158
.word 0x8701 @ 0x220415c

.incbin "./baserom/overlay/overlay_0004.bin", 0x333e0, 0x2204188 - 0x2204160


.arm
Function_2204188: @ 2204188 :arm
	stmfd   sp!, {r3,lr}
	ldr     r2,  [pc, #0xa4] @ [0x2204238] (=#0x221c6d0)
	mov     r12, #0x0
	cmp     r0, #0x0
	ldr     lr, [r2, #0x14]
	moveq   r0, r12
	ldmeqfd sp!, {r3,pc}
	ldr     r1,  [pc, #0x90] @ [0x220423c] (=#0x221dbd8)
	ldr     r1, [r1, #0x10]
	cmp     r1, #0x2
	bne     branch_22041c8
	ldr     r1,  [pc, #0x84] @ [0x2204240] (=#0x221c70c)
	cmp     r0, r1
	streq   r12, [r2, #0x3c]
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x22041c8

.arm
branch_22041c8: @ 22041c8 :arm
	cmp     lr, #0x0
	beq     branch_2204230
.arm
branch_22041d0: @ 22041d0 :arm
	cmp     lr, r0
	bne     branch_2204220
	mov     r3, #0x0
	str     r3, [r0]
	cmp     r12, #0x0
	ldrne   r1, [r0, #0x14]
	strne   r1, [r12, #0x14]
	bne     branch_2204208
	ldr     r2, [lr, #0x14]
	cmp     r2, #0x0
	ldrne   r1,  [pc, #0x38] @ [0x2204238] (=#0x221c6d0)
	strne   r2, [r1, #0x14]
	ldreq   r1,  [pc, #0x30] @ [0x2204238] (=#0x221c6d0)
	streq   r3, [r1, #0x14]
.arm
branch_2204208: @ 2204208 :arm
	ldr     r1,  [pc, #0x28] @ [0x2204238] (=#0x221c6d0)
	ldr     r2, [r1, #0x10]
	str     r2, [r0, #0x14]
	str     r0, [r1, #0x10]
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x2204220

.arm
branch_2204220: @ 2204220 :arm
	mov     r12, lr
	ldr     lr, [lr, #0x14]
	cmp     lr, #0x0
	bne     branch_22041d0
.arm
branch_2204230: @ 2204230 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x2204238

.word 0x221c6d0 @ 0x2204238
.word 0x221dbd8 @ 0x220423c
.word 0x221c70c @ 0x2204240

.incbin "./baserom/overlay/overlay_0004.bin", 0x334c4, 0x2204318 - 0x2204244


.arm
Function_2204318: @ 2204318 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r5, r0
	mov     r6, r1
	mov     r4, r2
	mvneq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	cmp     r3, #0x10
	mvncc   r0, #0x0
	ldmccfd sp!, {r4-r6,pc}
	cmp     r6, #0x0
	blt     branch_220434c
	cmp     r6, #0x6
	blt     branch_2204354
.arm
branch_220434c: @ 220434c :arm
	mvn     r0, #0x2
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204354

.arm
branch_2204354: @ 2204354 :arm
	mov     r3, #0x0
	mov     r1, r4
	and     r2, r6, #0xff
	strb    r3, [r4, #0x4]
	bl      Function_2204a50
	cmp     r6, #0x0
	bne     branch_22043b0
	ldr     r0,  [pc, #0x54] @ [0x22043cc] (=#0x221dbd8)
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	ldreq   r0, [r5, #0xc]
	cmpeq   r0, #0x4
	bne     branch_220439c
	mov     r0, r5
	bl      Function_2204b70
	cmp     r0, #0x0
	mvneq   r0, #0x2
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_220439c: @ 220439c :arm
	ldrb    r1, [r5, #0x4]
	mov     r0, #0x1
	cmp     r1, #0x0
	movne   r0, r0, lsl r1
	str     r0, [r5, #0x8]
.arm
branch_22043b0: @ 22043b0 :arm
	mov     r0, r5
	mov     r1, r4
	bl      Function_2204bbc
	cmp     r0, #0x0
	mvneq   r0, #0x2
	movne   r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x22043cc

.word 0x221dbd8 @ 0x22043cc

.incbin "./baserom/overlay/overlay_0004.bin", 0x33650, 0x22045c0 - 0x22043d0


.arm
Function_22045c0: @ 22045c0 :arm
	ldr     r0,  [pc, #0xc] @ [0x22045d4] (=#0x221c6d0)
	mov     r1, #0x0
	str     r1, [r0, #0x14]
	str     r1, [r0, #0x10]
	bx      lr
@ 0x22045d4

.word 0x221c6d0 @ 0x22045d4

.incbin "./baserom/overlay/overlay_0004.bin", 0x33858, 0x2204684 - 0x22045d8


.arm
Function_2204684: @ 2204684 :arm
	stmfd   sp!, {r3,lr}
	cmp     r2, #0x10
	movne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldrb    r2, [r1, #0x8]
	cmp     r2, r0
	bne     branch_22046b4
	ldr     r0,  [pc, #0x54] @ [0x22046fc] (=#0x221dbd8)
	ldrb    r12, [r1, #0x9]
	ldrb    r2, [r0]
	cmp     r12, r2
	beq     branch_22046bc
.arm
branch_22046b4: @ 22046b4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x22046bc

.arm
branch_22046bc: @ 22046bc :arm
	ldrb    r2, [r1, #0x5]
	cmp     r2, #0x10
	beq     branch_22046d8
	mov     r0, r1
	mov     r1, r3
	bl      Function_2204f90
	ldmfd   sp!, {r3,pc}
@ 0x22046d8

.arm
branch_22046d8: @ 22046d8 :arm
	ldr     r0, [r0, #0xc]
	cmp     r0, #0x0
	mov     r0, r1
	mov     r1, r3
	bne     branch_22046f4
	bl      Function_2204cc4
	ldmfd   sp!, {r3,pc}
@ 0x22046f4

.arm
branch_22046f4: @ 22046f4 :arm
	bl      Function_2204e00
	ldmfd   sp!, {r3,pc}
@ 0x22046fc

.word 0x221dbd8 @ 0x22046fc
.arm
Function_2204700: @ 2204700 :arm
	stmfd   sp!, {r4,lr}
	mov     r1, r0
	cmp     r1, #0x20
	movcs   r0, #0x0
	ldmcsfd sp!, {r4,pc}
	ldr     r0,  [pc, #0x48] @ [0x2204764] (=#0x221dbd8)
	ldrb    r0, [r0]
	cmp     r1, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r2,  [pc, #0x38] @ [0x2204768] (=#0x221c6d0)
	ldr     r4, [r2, #0x10]
	cmp     r4, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r3, [r4, #0x14]
	mov     r0, r4
	str     r3, [r2, #0x10]
	bl      Function_220491c
	ldr     r1,  [pc, #0x14] @ [0x2204768] (=#0x221c6d0)
	mov     r0, r4
	ldr     r2, [r1, #0x14]
	str     r2, [r4, #0x14]
	str     r4, [r1, #0x14]
	ldmfd   sp!, {r4,pc}
@ 0x2204764

.word 0x221dbd8 @ 0x2204764
.word 0x221c6d0 @ 0x2204768

.incbin "./baserom/overlay/overlay_0004.bin", 0x339ec, 0x22047b0 - 0x220476c


.arm
Function_22047b0: @ 22047b0 :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	add     r2, sp, #0x0
	mov     r3, #0x10
	mov     r4, r0
	bl      Function_2204318
	cmp     r0, #0x0
	addne   sp, sp, #0x10
	ldmnefd sp!, {r4,pc}
	add     r1, sp, #0x0
	mov     r0, r4
	bl      Function_2204964
	cmp     r0, #0x0
	movne   r0, #0x0
	mvneq   r0, #0x3
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x22047f4

.arm
Function_22047f4: @ 22047f4 :arm
	ldrb    r2, [r1, #0xa]
	cmp     r2, #0x1
	bxne    lr
	ldrb    r2, [r0, #0x4]
	ldr     r0,  [pc, #0xc] @ [0x2204818] (=#0x221c6d0)
	strb    r2, [r1, #0xb]
	ldr     r0, [r0, #0x4]
	str     r0, [r1, #0xc]
	bx      lr
@ 0x2204818

.word 0x221c6d0 @ 0x2204818
.arm
Function_220481c: @ 220481c :arm
	stmfd   sp!, {r3-r11,lr}
	str     r0, [sp]
	mov     r10, r1
	mov     r8, #0x0
	bl      Function_22047f4
	mov     r6, #0x1
	ldr     r4,  [pc, #0x98] @ [0x22048d4] (=#0x221dbd8)
	ldr     r5,  [pc, #0x98] @ [0x22048d8] (=#0x221c6d0)
	mov     r9, r8
	mov     r7, r6
	mov     r11, #0x10
.arm
branch_2204848: @ 2204848 :arm
	cmp     r9, #0x0
	movne   r1, r7, lsl r9
	ldr     r0, [r5, #0x4]
	moveq   r1, r6
	tst     r0, r1
	ldrneb  r0, [r4]
	cmpne   r9, r0
	beq     branch_2204884
	mov     r0, r9
	mov     r1, r10
	mov     r2, r11
	strb    r9, [r10, #0x9]
	bl      Function_21e4ae8
	cmp     r0, #0x0
	addne   r8, r8, #0x1
.arm
branch_2204884: @ 2204884 :arm
	add     r0, r9, #0x1
	and     r9, r0, #0xff
	cmp     r9, #0x20
	bcc     branch_2204848
	ldrb    r0, [r10, #0xa]
	cmp     r0, #0x1
	bne     branch_22048b4
	ldr     r0,  [pc, #0x30] @ [0x22048d8] (=#0x221c6d0)
	ldr     r1, [r0, #0x4]
	ldr     r0, [sp]
	str     r1, [r0, #0x8]
	b       branch_22048c4
@ 0x22048b4

.arm
branch_22048b4: @ 22048b4 :arm
	cmp     r0, #0x0
	ldreq   r0, [sp]
	moveq   r1, #0x0
	streq   r1, [r0, #0x8]
.arm
branch_22048c4: @ 22048c4 :arm
	cmp     r8, #0x0
	mvneq   r0, #0x3
	movne   r0, #0x0
	ldmfd   sp!, {r3-r11,pc}
@ 0x22048d4

.word 0x221dbd8 @ 0x22048d4
.word 0x221c6d0 @ 0x22048d8
.arm
Function_22048dc: @ 22048dc :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x10
	mov     r4, r0
	mov     r3, #0xff
	ldr     r0,  [pc, #0x24] @ [0x2204918] (=#0x221c70c)
	add     r1, sp, #0x0
	mov     r2, #0x4
	strb    r3, [sp, #0x4]
	bl      Function_2204a50
	ldr     r0,  [pc, #0x10] @ [0x2204918] (=#0x221c70c)
	add     r1, sp, #0x0
	strb    r4, [sp, #0xa]
	bl      Function_220481c
	add     sp, sp, #0x10
	ldmfd   sp!, {r4,pc}
@ 0x2204918

.word 0x221c70c @ 0x2204918
.arm
Function_220491c: @ 220491c :arm
	mov     r12, r0
	mov     r3, #0x6
	mov     r2, #0x0
.arm
branch_2204928: @ 2204928 :arm
	strb    r2, [r12]
	strb    r2, [r12, #0x1]
	strb    r2, [r12, #0x2]
	strb    r2, [r12, #0x3]
	add     r12, r12, #0x4
	subs    r3, r3, #0x1
	bne     branch_2204928
	ldr     r2,  [pc, #0x14] @ [0x2204960] (=#0x221dbd8)
	mov     r3, #0x0
	ldr     r2, [r2, #0x10]
	str     r2, [r0]
	str     r3, [r0, #0xc]
	strb    r1, [r0, #0x4]
	bx      lr
@ 0x2204960

.word 0x221dbd8 @ 0x2204960
.arm
Function_2204964: @ 2204964 :arm
	stmfd   sp!, {r3,lr}
	ldrb    r2, [r1, #0x4]
	cmp     r2, #0xff
	ldreqb  r2, [r1, #0x6]
	cmpeq   r2, #0x4
	bne     branch_2204984
	bl      Function_220481c
	b       branch_220499c
@ 0x2204984

.arm
branch_2204984: @ 2204984 :arm
	ldrb    r0, [r0, #0x4]
	mov     r2, #0x10
	bl      Function_21e4ae8
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
.arm
branch_220499c: @ 220499c :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x22049a4

.arm
Function_22049a4: @ 22049a4 :arm
	ldrb    r2, [r0, #0xb]
	strb    r2, [r1, #0x5]
	ldrb    r2, [r0, #0x4]
	cmp     r2, #0xff
	bne     branch_22049e8
	ldrb    r2, [r0, #0x6]
	cmp     r2, #0x0
	bne     branch_22049d8
	ldrb    r3, [r1, #0x4]
	mov     r2, #0x1
	cmp     r3, #0x0
	movne   r2, r2, lsl r3
	str     r2, [r1, #0x8]
.arm
branch_22049d8: @ 22049d8 :arm
	ldrb    r1, [r0, #0x6]
	ldr     r0,  [pc, #0x64] @ [0x2204a48] (=#0x2215d28)
	ldrb    r0, [r0, r1]
	bx      lr
@ 0x22049e8

.arm
branch_22049e8: @ 22049e8 :arm
	cmp     r2, #0x0
	bne     branch_2204a40
	ldrb    r2, [r0, #0x6]
	cmp     r2, #0x0
	bne     branch_2204a34
	ldr     r0, [r1, #0xc]
	cmp     r0, #0x1
	bne     branch_2204a24
	ldrb    r2, [r1, #0x4]
	mov     r0, #0x1
	cmp     r2, #0x0
	movne   r0, r0, lsl r2
	str     r0, [r1, #0x8]
	mov     r0, #0x7
	bx      lr
@ 0x2204a24

.arm
branch_2204a24: @ 2204a24 :arm
	cmp     r0, #0x5
	moveq   r0, #0x9
	movne   r0, #0xc
	bx      lr
@ 0x2204a34

.arm
branch_2204a34: @ 2204a34 :arm
	ldr     r0,  [pc, #0x10] @ [0x2204a4c] (=#0x2215d30)
	ldrb    r0, [r0, r2]
	bx      lr
@ 0x2204a40

.arm
branch_2204a40: @ 2204a40 :arm
	mov     r0, #0xc
	bx      lr
@ 0x2204a48

.word 0x2215d28 @ 0x2204a48
.word 0x2215d30 @ 0x2204a4c
.arm
Function_2204a50: @ 2204a50 :arm
	ldr     r12,  [pc, #0x38] @ [0x2204a90] (=#0x5f564354)
	mov     r3, #0x10
	str     r12, [r1]
	strb    r3, [r1, #0x5]
	ldr     r3,  [pc, #0x2c] @ [0x2204a94] (=#0x221dbd8)
	strb    r2, [r1, #0x6]
	ldrb    r2, [r3]
	strb    r2, [r1, #0x8]
	ldrb    r2, [r0, #0x4]
	mov     r0, #0x0
	strb    r2, [r1, #0x9]
	strb    r0, [r1, #0xa]
	ldrb    r2, [r3]
	strb    r2, [r1, #0xb]
	str     r0, [r1, #0xc]
	bx      lr
@ 0x2204a90

.word 0x5f564354 @ 0x2204a90
.word 0x221dbd8 @ 0x2204a94
.arm
Function_2204a98: @ 2204a98 :arm
	stmfd   sp!, {r3-r5,lr}
	ldrb    r2, [r1, #0x4]
	ldrb    r3, [r1, #0x6]
	mov     r4, r0
	cmp     r2, #0x0
	addeq   r3, r3, #0x5
	cmp     r3, #0x0
	blt     branch_2204ac0
	cmp     r3, #0xb
	blt     branch_2204ac4
.arm
branch_2204ac0: @ 2204ac0 :arm
	mvn     r3, #0x0
.arm
branch_2204ac4: @ 2204ac4 :arm
	cmp     r3, #0x0
	mvnlt   r0, #0x0
	ldmltfd sp!, {r3-r5,pc}
	ldr     r0,  [pc, #0x8c] @ [0x2204b64] (=#0x221dbd8)
	ldr     r2, [r4, #0xc]
	ldr     r0, [r0, #0x10]
	cmp     r0, #0x1
	ldreq   r1,  [pc, #0x80] @ [0x2204b68] (=#0x2215dfe)
	mov     r0, #0xb
	ldrne   r1,  [pc, #0x7c] @ [0x2204b6c] (=#0x2215d38)
	mla     r0, r2, r0, r1
	ldrsb   r5, [r3, r0]
	mvn     r1, #0x2
	cmp     r5, r1
	beq     branch_2204b40
	add     r0, r1, #0x1
	cmp     r5, r0
	beq     branch_2204b20
	add     r0, r1, #0x2
	cmp     r5, r0
	mov     r0, r5
	bne     branch_2204b60
	ldmfd   sp!, {r3-r5,pc}
@ 0x2204b20

.arm
branch_2204b20: @ 2204b20 :arm
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_22047b0
	mov     r1, #0x0
	str     r1, [r4, #0xc]
	mov     r0, r5
	str     r1, [r4]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2204b40

.arm
branch_2204b40: @ 2204b40 :arm
	mov     r0, r4
	mov     r1, #0x3
	bl      Function_22047b0
	mov     r1, #0x0
	str     r1, [r4, #0xc]
	mov     r0, r5
	str     r1, [r4]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2204b60

.arm
branch_2204b60: @ 2204b60 :arm
	ldmfd   sp!, {r3-r5,pc}
@ 0x2204b64

.word 0x221dbd8 @ 0x2204b64
.word 0x2215dfe @ 0x2204b68
.word 0x2215d38 @ 0x2204b6c
.arm
Function_2204b70: @ 2204b70 :arm
	ldr     r1,  [pc, #0x40] @ [0x2204bb8] (=#0x221c6d0)
	ldr     r2, [r1, #0x14]
	cmp     r2, #0x0
	beq     branch_2204bb0
.arm
branch_2204b80: @ 2204b80 :arm
	ldr     r1, [r2]
	cmp     r1, #0x0
	beq     branch_2204ba4
	ldr     r1, [r2, #0xc]
	cmp     r1, #0x2
	bne     branch_2204ba4
	cmp     r0, r2
	movne   r0, #0x0
	bxne    lr
.arm
branch_2204ba4: @ 2204ba4 :arm
	ldr     r2, [r2, #0x14]
	cmp     r2, #0x0
	bne     branch_2204b80
.arm
branch_2204bb0: @ 2204bb0 :arm
	mov     r0, #0x1
	bx      lr
@ 0x2204bb8

.word 0x221c6d0 @ 0x2204bb8
.arm
Function_2204bbc: @ 2204bbc :arm
	ldrb    r2, [r1, #0x4]
	ldrb    r12, [r1, #0x6]
	cmp     r2, #0x0
	addeq   r12, r12, #0x5
	cmp     r12, #0x0
	blt     branch_2204bdc
	cmp     r12, #0xb
	blt     branch_2204be0
.arm
branch_2204bdc: @ 2204bdc :arm
	mvn     r12, #0x0
.arm
branch_2204be0: @ 2204be0 :arm
	cmp     r12, #0x0
	mvnlt   r0, #0x0
	bxlt    lr
	ldr     r1,  [pc, #0x44] @ [0x2204c38] (=#0x221dbd8)
	ldr     r3, [r0, #0xc]
	ldr     r1, [r1, #0x10]
	cmp     r1, #0x1
	ldreq   r2,  [pc, #0x38] @ [0x2204c3c] (=#0x2215d7a)
	mov     r1, #0xb
	ldrne   r2,  [pc, #0x34] @ [0x2204c40] (=#0x2215dbc)
	mla     r1, r3, r1, r2
	ldrsb   r2, [r12, r1]
	mvn     r1, #0x0
	cmp     r2, r1
	moveq   r0, #0x1
	bxeq    lr
	sub     r1, r1, #0x1
	cmp     r2, r1
	moveq   r0, #0x0
	strne   r2, [r0, #0xc]
	movne   r0, #0x1
	bx      lr
@ 0x2204c38

.word 0x221dbd8 @ 0x2204c38
.word 0x2215d7a @ 0x2204c3c
.word 0x2215dbc @ 0x2204c40
.arm
Function_2204c44: @ 2204c44 :arm
	ldr     r1,  [pc, #0x6c] @ [0x2204cb8] (=#0x221dbd8)
	ldr     r2,  [pc, #0x6c] @ [0x2204cbc] (=#0x221c6d0)
	ldr     r1, [r1, #0x10]
	ldr     r3, [r2, #0x14]
	cmp     r1, #0x2
	bne     branch_2204c80
	ldr     r1, [r2, #0x3c]
	cmp     r1, #0x0
	beq     branch_2204c78
	ldrb    r1, [r2, #0x40]
	cmp     r1, r0
	ldreq   r0,  [pc, #0x48] @ [0x2204cc0] (=#0x221c70c)
	bxeq    lr
.arm
branch_2204c78: @ 2204c78 :arm
	mov     r0, #0x0
	bx      lr
@ 0x2204c80

.arm
branch_2204c80: @ 2204c80 :arm
	cmp     r3, #0x0
	beq     branch_2204cb0
.arm
branch_2204c88: @ 2204c88 :arm
	ldr     r1, [r3]
	cmp     r1, #0x0
	beq     branch_2204ca4
	ldrb    r1, [r3, #0x4]
	cmp     r1, r0
	moveq   r0, r3
	bxeq    lr
.arm
branch_2204ca4: @ 2204ca4 :arm
	ldr     r3, [r3, #0x14]
	cmp     r3, #0x0
	bne     branch_2204c88
.arm
branch_2204cb0: @ 2204cb0 :arm
	mov     r0, #0x0
	bx      lr
@ 0x2204cb8

.word 0x221dbd8 @ 0x2204cb8
.word 0x221c6d0 @ 0x2204cbc
.word 0x221c70c @ 0x2204cc0
.arm
Function_2204cc4: @ 2204cc4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r0
	ldrb    r2, [r6, #0x4]
	mov     r5, r1
	cmp     r2, #0xff
	bne     branch_2204cfc
	ldrb    r2, [r6, #0x6]
	cmp     r2, #0x4
	bne     branch_2204cf0
	bl      Function_2205008
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204cf0

.arm
branch_2204cf0: @ 2204cf0 :arm
	cmp     r2, #0x3
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_2204cfc: @ 2204cfc :arm
	ldrb    r0, [r6, #0x8]
	bl      Function_2204c44
	movs    r4, r0
	beq     branch_2204d7c
	mov     r1, r6
	bl      Function_2204a98
	mov     r7, r0
	mvn     r0, #0x1
	cmp     r7, r0
	beq     branch_2204d38
	add     r0, r0, #0x1
	cmp     r7, r0
	bne     branch_2204d54
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204d38

.arm
branch_2204d38: @ 2204d38 :arm
	mov     r0, #0xc
	str     r0, [r5]
	mov     r0, #0x0
	str     r0, [r4]
	str     r4, [r5, #0x4]
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204d54

.arm
branch_2204d54: @ 2204d54 :arm
	mov     r0, r6
	mov     r1, r4
	bl      Function_22049a4
	stmia   r5, {r0,r4}
	str     r7, [r4, #0xc]
	ldr     r0, [r5]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204d7c

.arm
branch_2204d7c: @ 2204d7c :arm
	ldrb    r0, [r6, #0x8]
	bl      Function_2204700
	movs    r7, r0
	bne     branch_2204dac
	ldrb    r1, [r6, #0x8]
	ldr     r0,  [pc, #0x64] @ [0x2204dfc] (=#0x221c6f4)
	bl      Function_220491c
	ldr     r0,  [pc, #0x5c] @ [0x2204dfc] (=#0x221c6f4)
	mov     r1, #0x3
	bl      Function_22047b0
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204dac

.arm
branch_2204dac: @ 2204dac :arm
	mov     r1, r6
	bl      Function_2204a98
	mov     r4, r0
	add     r0, r4, #0x2
	cmp     r0, #0x1
	bhi     branch_2204dd4
	mov     r0, r7
	bl      Function_2204188
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204dd4

.arm
branch_2204dd4: @ 2204dd4 :arm
	mov     r0, r6
	mov     r1, r7
	bl      Function_22049a4
	stmia   r5, {r0,r7}
	str     r4, [r7, #0xc]
	ldr     r0, [r5]
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2204dfc

.word 0x221c6f4 @ 0x2204dfc
.arm
Function_2204e00: @ 2204e00 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r2,  [pc, #0x17c] @ [0x2204f88] (=#0x221c6d0)
	mov     r5, r0
	ldr     r0, [r2, #0x3c]
	mov     r4, r1
	cmp     r0, #0x2
	bne     branch_2204eb0
	ldrb    r1, [r2, #0x40]
	ldrb    r0, [r5, #0x8]
	cmp     r1, r0
	bne     branch_2204ea0
	ldr     r0,  [pc, #0x158] @ [0x2204f8c] (=#0x221c70c)
	mov     r1, r5
	bl      Function_2204a98
	mov     r6, r0
	mvn     r1, #0x2
	cmp     r6, r1
	beq     branch_2204e7c
	add     r0, r1, #0x1
	cmp     r6, r0
	beq     branch_2204e64
	add     r0, r1, #0x2
	cmp     r6, r0
	beq     branch_2204e7c
	b       branch_2204e84
@ 0x2204e64

.arm
branch_2204e64: @ 2204e64 :arm
	mov     r0, #0xc
	str     r0, [r4]
	mov     r0, #0x0
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204e7c

.arm
branch_2204e7c: @ 2204e7c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204e84

.arm
branch_2204e84: @ 2204e84 :arm
	ldr     r1,  [pc, #0x100] @ [0x2204f8c] (=#0x221c70c)
	mov     r0, r5
	bl      Function_22049a4
	ldr     r1,  [pc, #0xf4] @ [0x2204f8c] (=#0x221c70c)
	stmia   r4, {r0,r1}
	str     r6, [r1, #0xc]
	b       branch_2204f40
@ 0x2204ea0

.arm
branch_2204ea0: @ 2204ea0 :arm
	mov     r0, #0x1
	bl      Function_22048dc
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204eb0

.arm
branch_2204eb0: @ 2204eb0 :arm
	ldrb    r1, [r5, #0x8]
	ldr     r2,  [pc, #0xcc] @ [0x2204f88] (=#0x221c6d0)
	cmp     r1, #0x0
	movne   r0, #0x1
	movne   r3, r0, lsl r1
	ldr     r0, [r2, #0x4]
	moveq   r3, #0x1
	tst     r0, r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	strb    r1, [r2, #0x40]
	mov     r3, #0x2
	str     r3, [r2, #0x3c]
	mov     r3, #0x0
	ldr     r0,  [pc, #0x9c] @ [0x2204f8c] (=#0x221c70c)
	mov     r1, r5
	str     r3, [r2, #0x48]
	bl      Function_2204a98
	mov     r6, r0
	mvn     r1, #0x2
	cmp     r6, r1
	addne   r0, r1, #0x1
	cmpne   r6, r0
	addne   r0, r1, #0x2
	cmpne   r6, r0
	bne     branch_2204f28
	ldr     r1,  [pc, #0x68] @ [0x2204f88] (=#0x221c6d0)
	mov     r0, #0x0
	str     r0, [r1, #0x3c]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204f28

.arm
branch_2204f28: @ 2204f28 :arm
	ldr     r1,  [pc, #0x5c] @ [0x2204f8c] (=#0x221c70c)
	mov     r0, r5
	bl      Function_22049a4
	ldr     r1,  [pc, #0x50] @ [0x2204f8c] (=#0x221c70c)
	stmia   r4, {r0,r1}
	str     r6, [r1, #0xc]
.arm
branch_2204f40: @ 2204f40 :arm
	ldr     r0, [r4]
	cmp     r0, #0xa
	bne     branch_2204f68
	mov     r0, #0x1
	bl      Function_22048dc
	bl      Function_20c3880
	ldr     r2,  [pc, #0x28] @ [0x2204f88] (=#0x221c6d0)
	str     r0, [r2, #0x8]
	str     r1, [r2, #0xc]
	b       branch_2204f80
@ 0x2204f68

.arm
branch_2204f68: @ 2204f68 :arm
	mov     r0, #0x0
	bl      Function_22048dc
	ldr     r0,  [pc, #0x10] @ [0x2204f88] (=#0x221c6d0)
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	str     r1, [r0, #0xc]
.arm
branch_2204f80: @ 2204f80 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2204f88

.word 0x221c6d0 @ 0x2204f88
.word 0x221c70c @ 0x2204f8c
.arm
Function_2204f90: @ 2204f90 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x4]
	mov     r4, r1
	cmp     r0, #0xff
	ldreqb  r0, [r5, #0x6]
	cmpeq   r0, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldrb    r0, [r5, #0x8]
	bl      Function_2204c44
	cmp     r0, #0x0
	beq     branch_2204fe4
	mov     r1, #0x2
	str     r1, [r4]
	str     r0, [r4, #0x4]
	mov     r2, #0x0
	str     r2, [r0]
	bl      Function_22047b0
	mov     r0, #0x1
	ldmfd   sp!, {r3-r5,pc}
@ 0x2204fe4

.arm
branch_2204fe4: @ 2204fe4 :arm
	ldrb    r1, [r5, #0x8]
	ldr     r0,  [pc, #0x14] @ [0x2205004] (=#0x221c6f4)
	bl      Function_220491c
	ldr     r0,  [pc, #0xc] @ [0x2205004] (=#0x221c6f4)
	mov     r1, #0x2
	bl      Function_22047b0
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2205004

.word 0x221c6f4 @ 0x2205004
.arm
Function_2205008: @ 2205008 :arm
	stmfd   sp!, {r3,lr}
	ldr     r3,  [pc, #0x108] @ [0x220511c] (=#0x221dbd8)
	ldr     r2, [r3, #0x10]
	cmp     r2, #0x2
	movne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldrb    r12, [r3, #0x1]
	ldrb    r2, [r0, #0x8]
	cmp     r12, r2
	movne   r0, #0x0
	ldmnefd sp!, {r3,pc}
	ldrb    r2, [r0, #0xa]
	cmp     r2, #0x0
	beq     branch_220504c
	cmp     r2, #0x1
	beq     branch_2205098
	b       branch_220510c
@ 0x220504c

.arm
branch_220504c: @ 220504c :arm
	ldr     r0,  [pc, #0xcc] @ [0x2205120] (=#0x221c6d0)
	ldr     r2, [r0, #0x3c]
	cmp     r2, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3,pc}
	ldr     r0, [r0, #0x48]
	mov     r3, #0x0
	cmp     r0, #0x5
	cmpne   r0, #0x2
	moveq   r0, #0x9
	streq   r0, [r1]
	movne   r0, #0x5
	strne   r0, [r1]
	ldr     r0,  [pc, #0x98] @ [0x2205120] (=#0x221c6d0)
	ldr     r2,  [pc, #0x98] @ [0x2205124] (=#0x221c70c)
	str     r3, [r0, #0x3c]
	str     r3, [r0, #0x48]
	str     r2, [r1, #0x4]
	b       branch_2205114
@ 0x2205098

.arm
branch_2205098: @ 2205098 :arm
	ldr     r2,  [pc, #0x80] @ [0x2205120] (=#0x221c6d0)
	mov     lr, #0x2
	str     lr, [r2, #0x3c]
	ldrb    r12, [r0, #0xb]
	ldrb    r3, [r3]
	cmp     r12, r3
	bne     branch_22050c8
	str     lr, [r2, #0x48]
	mov     r3, #0x7
	str     r3, [r1]
	ldr     r3, [r0, #0xc]
	b       branch_22050f0
@ 0x22050c8

.arm
branch_22050c8: @ 22050c8 :arm
	mov     r3, #0x3
	str     r3, [r2, #0x48]
	mov     r2, #0x6
	str     r2, [r1]
	ldrb    r3, [r0, #0xb]
	cmp     r3, #0x0
	movne   r2, #0x1
	movne   r3, r2, lsl r3
	ldr     r2,  [pc, #0x30] @ [0x2205120] (=#0x221c6d0)
	moveq   r3, #0x1
.arm
branch_22050f0: @ 22050f0 :arm
	str     r3, [r2, #0x44]
	ldrb    r3, [r0, #0xb]
	ldr     r0,  [pc, #0x20] @ [0x2205120] (=#0x221c6d0)
	ldr     r2,  [pc, #0x20] @ [0x2205124] (=#0x221c70c)
	strb    r3, [r0, #0x41]
	str     r2, [r1, #0x4]
	b       branch_2205114
@ 0x220510c

.arm
branch_220510c: @ 220510c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x2205114

.arm
branch_2205114: @ 2205114 :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x220511c

.word 0x221dbd8 @ 0x220511c
.word 0x221c6d0 @ 0x2205120
.word 0x221c70c @ 0x2205124

.incbin "./baserom/overlay/overlay_0004.bin", 0x343a8, 0x22051f0 - 0x2205128


.arm
Function_22051f0: @ 22051f0 :arm
	ldr     r0,  [pc, #0xc] @ [0x2205204] (=#0x221c724)
	mov     r1, #0x0
	str     r1, [r0]
	str     r1, [r0, #0x4]
	bx      lr
@ 0x2205204

.word 0x221c724 @ 0x2205204
.arm
Function_2205208: @ 2205208 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, #0x0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x1c] @ [0x2205238] (=#0x221c724)
	ldr     r3, [r1]
	cmp     r3, #0x0
	ldrne   r2, [r3]
	movne   r4, r3
	strne   r2, [r1]
	bl      Function_20c3dac
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x2205238

.word 0x221c724 @ 0x2205238
.arm
Function_220523c: @ 220523c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x1c] @ [0x220526c] (=#0x221c724)
	mov     r2, #0x0
	ldr     r3, [r1]
	str     r3, [r4]
	str     r4, [r1]
	str     r2, [r4, #0x4]
	str     r2, [r4, #0x8]
	bl      Function_20c3dac
	ldmfd   sp!, {r4,pc}
@ 0x220526c

.word 0x221c724 @ 0x220526c

.incbin "./baserom/overlay/overlay_0004.bin", 0x344f0, 0x2205ac0 - 0x2205270


.arm
Function_2205ac0: @ 2205ac0 :arm
	stmfd   sp!, {r3,lr}
	bl      Function_2202794
	bl      Function_22045c0
	bl      Function_22051f0
	ldr     r0,  [pc, #0xc] @ [0x2205ae4] (=#0x221dbcc)
	mov     r1, #0x0
	str     r1, [r0, #0x1c]
	str     r1, [r0, #0x8]
	ldmfd   sp!, {r3,pc}
@ 0x2205ae4

.word 0x221dbcc @ 0x2205ae4

.incbin "./baserom/overlay/overlay_0004.bin", 0x34d68, 0x2205b2c - 0x2205ae8


.arm
Function_2205b2c: @ 2205b2c :arm
	stmfd   sp!, {r4,lr}
	sub     sp, sp, #0x8
	add     r3, sp, #0x0
	mov     r4, r0
	bl      Function_2205ba0
	cmp     r0, #0x0
	beq     branch_2205b90
	cmp     r0, #0x1
	beq     branch_2205b5c
	cmp     r0, #0x2
	beq     branch_2205b84
	b       branch_2205b90
@ 0x2205b5c

.arm
branch_2205b5c: @ 2205b5c :arm
	ldr     r0,  [pc, #0x38] @ [0x2205b9c] (=#0x221dbcc)
	ldr     r1, [sp]
	ldr     r2, [sp, #0x4]
	ldr     r3, [r0, #0x14]
	ldr     r12, [r0, #0x10]
	mov     r0, r4
	blx     r12
	add     sp, sp, #0x8
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x2205b84

.arm
branch_2205b84: @ 2205b84 :arm
	add     sp, sp, #0x8
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2205b90

.arm
branch_2205b90: @ 2205b90 :arm
	mov     r0, #0x1
	add     sp, sp, #0x8
	ldmfd   sp!, {r4,pc}
@ 0x2205b9c

.word 0x221dbcc @ 0x2205b9c
.arm
Function_2205ba0: @ 2205ba0 :arm
	stmfd   sp!, {r3-r7,lr}
	movs    r6, r1
	mov     r7, r0
	mov     r5, r2
	mov     r4, r3
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r1, [r6]
	ldr     r0,  [pc, #0xac] @ [0x2205c74] (=#0x5f564354)
	cmp     r1, r0
	movne   r0, #0x2
	ldmnefd sp!, {r3-r7,pc}
	ldr     r0,  [pc, #0xa0] @ [0x2205c78] (=#0x221dbcc)
	ldr     r1, [r0, #0x1c]
	cmp     r1, #0x0
	ldrne   r0, [r0, #0x8]
	cmpne   r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	mov     r0, #0x0
	str     r0, [r4]
	str     r0, [r4, #0x4]
	bl      Function_20c3880
	ldrb    r2, [r6, #0x4]
	and     r3, r2, #0xf0
	cmp     r3, #0x40
	bne     branch_2205c3c
	ldr     r2,  [pc, #0x64] @ [0x2205c78] (=#0x221dbcc)
	mov     r3, r0
	ldr     r4, [r2, #0x4]
	mov     r0, r7
	add     r4, r4, #0x1
	str     r4, [r2, #0x4]
	str     r1, [sp]
	mov     r1, r6
	mov     r2, r5
	bl      Function_220313c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2205c3c

.arm
branch_2205c3c: @ 2205c3c :arm
	cmp     r2, #0x0
	cmpne   r2, #0xff
	bne     branch_2205c6c
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	bl      Function_2204684
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2205c6c

.arm
branch_2205c6c: @ 2205c6c :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x2205c74

.word 0x5f564354 @ 0x2205c74
.word 0x221dbcc @ 0x2205c78

.incbin "./baserom/overlay/overlay_0004.bin", 0x34efc, 0x2205fcc - 0x2205c7c


.arm
Function_2205fcc: @ 2205fcc :arm
	stmfd   sp!, {r3,lr}
	mov     r2, r0
	ldr     r0,  [pc, #0x14] @ [0x2205ff0] (=#0x221dc34)
	add     r1, sp, #0x0
	bl      Function_20c2804
	cmp     r0, #0x0
	ldrne   r0, [sp]
	moveq   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x2205ff0

.word 0x221dc34 @ 0x2205ff0
.arm
Function_2205ff4: @ 2205ff4 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, r2
	mov     r6, r0
	mov     r0, r4
	mov     r5, r1
	bl      Function_2205fcc
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
	str     r6, [r0]
	str     r5, [r0, #0x4]
	mov     r1, #0x0
	str     r1, [r0, #0x8]
	ldrsb   r1, [r5, #0x73]
	strb    r1, [r0, #0xc]
	strb    r4, [r0, #0xd]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2206034

.arm
Function_2206034: @ 2206034 :arm
	stmfd   sp!, {r3,lr}
	movs    r1, r0
	ldmeqfd sp!, {r3,pc}
	ldr     r0,  [pc, #0x8] @ [0x2206050] (=#0x221dc34)
	mov     r2, #0x0
	bl      Function_20c2770
	ldmfd   sp!, {r3,pc}
@ 0x2206050

.word 0x221dc34 @ 0x2206050
.arm
Function_2206054: @ 2206054 :arm
	ldr     r1, [r0, #0x64]
	cmp     r1, #0x0
	ldreq   r1, [r0, #0x68]
	mov     r0, r1
	bx      lr
@ 0x2206068

.arm
Function_2206068: @ 2206068 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r1
	beq     branch_2206080
	ldrsb   r1, [r5, #0xd]
	tst     r1, #0x1
	beq     branch_2206088
.arm
branch_2206080: @ 2206080 :arm
	mov     r2, #0x1
	b       branch_220608c
@ 0x2206088

.arm
branch_2206088: @ 2206088 :arm
	mov     r2, #0x0
.arm
branch_220608c: @ 220608c :arm
	mov     r1, r5
	bl      Function_20c2770
	movs    r4, r0
	bne     branch_22060a4
	mov     r0, r5
	bl      Function_2206034
.arm
branch_22060a4: @ 22060a4 :arm
	cmp     r4, #0x0
	movne   r0, #0x0
	mvneq   r0, #0x29
	ldmfd   sp!, {r3-r5,pc}
@ 0x22060b4

.arm
Function_22060b4: @ 22060b4 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	bl      Function_2206054
	mov     r1, r4
	bl      Function_2206068
	ldmfd   sp!, {r4,pc}
@ 0x22060cc

.arm
Function_22060cc: @ 22060cc :arm
	stmfd   sp!, {r3-r5,lr}
	sub     sp, sp, #0x28
	mov     r4, r1
	ldrsb   r2, [r4, #0xd]
	mov     r5, r0
	cmp     r2, #0x1
	bne     branch_2206120
	add     r0, sp, #0x8
	add     r1, sp, #0x0
	mov     r2, #0x1
	bl      Function_20c2748
	add     r2, sp, #0x8
	mov     r0, r5
	mov     r1, r4
	str     r2, [r4, #0x8]
	bl      Function_2206068
	add     r0, sp, #0x8
	add     r1, sp, #0x4
	mov     r2, #0x1
	bl      Function_20c2804
	b       branch_2206130
@ 0x2206120

.arm
branch_2206120: @ 2206120 :arm
	mov     r2, #0x0
	str     r2, [r4, #0x8]
	bl      Function_2206068
	str     r0, [sp, #0x4]
.arm
branch_2206130: @ 2206130 :arm
	ldr     r0, [sp, #0x4]
	add     sp, sp, #0x28
	ldmfd   sp!, {r3-r5,pc}
@ 0x220613c

.arm
Function_220613c: @ 220613c :arm
	ldr     r12,  [pc, #0x4] @ [0x2206148] (=#0x22060cc)
	ldr     r0, [r0, #0x64]
	bx      r12
@ 0x2206148

.word Function_22060cc @ =0x22060cc, 0x2206148
.arm
Function_220614c: @ 220614c :arm
	ldr     r12,  [pc, #0x4] @ [0x2206158] (=#0x22060cc)
	ldr     r0, [r0, #0x68]
	bx      r12
@ 0x2206158

.word 0x22060cc @ 0x2206158
.arm
Function_220615c: @ 220615c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	bl      Function_2206054
	mov     r1, r4
	bl      Function_22060cc
	ldmfd   sp!, {r4,pc}
@ 0x2206174


.incbin "./baserom/overlay/overlay_0004.bin", 0x353f4, 0x2206224 - 0x2206174


.arm
Function_2206224: @ 2206224 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_22062d4
	movs    r4, r0
	mvneq   r0, #0x30
	ldmeqfd sp!, {r4,pc}
	ldr     r0,  [pc, #0x1c] @ [0x220625c] (=#0x2206260)
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2205ff4
	mov     r1, r0
	mov     r0, r4
	bl      Function_220615c
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x220625c

.word 0x2206260 @ 0x220625c

.incbin "./baserom/overlay/overlay_0004.bin", 0x354e0, 0x22062d4 - 0x2206260


.arm
Function_22062d4: @ 22062d4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	bl      Function_220633c
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x48] @ [0x2206338] (=#0x221a134)
	mov     r6, r0
	ldr     r1, [r1]
	mov     r0, r4
	ldr     r1, [r1, #0x18]
	blx     r1
	movs    r5, r0
	beq     branch_2206328
	mov     r2, r4
	mov     r1, #0x0
	bl      Function_20c4cf4
	mov     r0, r5
	mov     r1, r7
	bl      Function_22063e4
	mov     r0, r5
	bl      Function_2208214
.arm
branch_2206328: @ 2206328 :arm
	mov     r0, r6
	bl      Function_20c3dac
	mov     r0, r5
	ldmfd   sp!, {r3-r7,pc}
@ 0x2206338

.word 0x221a134 @ 0x2206338
.arm
Function_220633c: @ 220633c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldrh    r0, [r5, #0x2]
	mov     r4, #0x80
	cmp     r0, #0x0
	beq     branch_2206378
	add     r4, r4, #69, 30 @ #0x114
	bl      Function_2208208
	add     r4, r4, r0
	ldrh    r0, [r5, #0x8]
	bl      Function_2208208
	add     r4, r4, r0
	add     r0, r5, #0x10
	bl      Function_22063bc
	add     r4, r4, r0
.arm
branch_2206378: @ 2206378 :arm
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_22063b4
	add     r4, r4, #17, 28 @ #0x110
	bl      Function_2208208
	add     r4, r4, r0
	ldrh    r0, [r5, #0xa]
	bl      Function_2208208
	add     r4, r4, r0
	ldrh    r0, [r5, #0xc]
	bl      Function_2208208
	add     r4, r4, r0
	add     r0, r5, #0x14
	bl      Function_22063bc
	add     r4, r4, r0
.arm
branch_22063b4: @ 22063b4 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x22063bc

.arm
Function_22063bc: @ 22063bc :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldrb    r0, [r5, #0x3]
	mov     r0, r0, lsl #2
	bl      Function_2208208
	mov     r4, r0
	ldrh    r0, [r5]
	bl      Function_2208208
	add     r0, r4, r0
	ldmfd   sp!, {r3-r5,pc}
@ 0x22063e4

.arm
Function_22063e4: @ 22063e4 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r1
	ldrsb   r1, [r5]
	mov     r6, r0
	add     r4, r6, #0x80
	strb    r1, [r6, #0x73]
	ldrsb   r0, [r5, #0x1]
	strb    r0, [r6, #0x72]
	ldrh    r0, [r5, #0x2]
	cmp     r0, #0x0
	beq     branch_2206464
	str     r4, [r6, #0x64]
	ldrh    r2, [r5, #0x4]
	mov     r1, r4
	add     r0, r4, #69, 30 @ #0x114
	strh    r2, [r4, #0xfc]
	add     r2, r5, #0x10
	mov     r7, r4
	bl      Function_2206508
	ldrh    r2, [r5, #0x2]
	add     r1, r6, #0x3c
	bl      Function_22064e0
	ldrh    r2, [r5, #0x8]
	add     r1, r6, #0x50
	bl      Function_22064e0
	ldrh    r3, [r5, #0xe]
	add     r1, r7, #1, 24 @ #0x100
	mov     r2, #0x0
	strh    r3, [r1, #0xa]
	str     r2, [r7, #0x110]
	mov     r4, r0
	str     r2, [r7, #0x10c]
.arm
branch_2206464: @ 2206464 :arm
	ldrh    r0, [r5, #0x6]
	cmp     r0, #0x0
	beq     branch_22064c4
	str     r4, [r6, #0x68]
	mov     r1, r4
	str     r6, [r4, #0x10c]
	add     r0, r4, #17, 28 @ #0x110
	add     r2, r5, #0x14
	mov     r7, r4
	bl      Function_2206508
	ldrh    r2, [r5, #0x6]
	add     r1, r6, #0x48
	bl      Function_22064e0
	ldrh    r2, [r5, #0xa]
	add     r1, r6, #0x58
	bl      Function_22064e0
	ldrh    r2, [r5, #0xc]
	add     r1, r4, #0xf8
	bl      Function_22064e0
	mov     r1, #0x0
	str     r1, [r7, #0x108]
	mov     r4, r0
	str     r1, [r7, #0x104]
	b       branch_22064d4
@ 0x22064c4

.arm
branch_22064c4: @ 22064c4 :arm
	ldr     r0,  [pc, #0x10] @ [0x22064dc] (=#0x221dbfc)
	ldr     r0, [r0]
	ldr     r0, [r0, #0x68]
	str     r0, [r6, #0x68]
.arm
branch_22064d4: @ 22064d4 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r7,pc}
@ 0x22064dc

.word 0x221dbfc @ 0x22064dc
.arm
Function_22064e0: @ 22064e0 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	cmp     r2, #0x0
	moveq   r0, #0x0
	str     r0, [r1, #0x4]
	mov     r0, r2
	str     r2, [r1]
	bl      Function_2208208
	add     r0, r4, r0
	ldmfd   sp!, {r4,pc}
@ 0x2206508

.arm
Function_2206508: @ 2206508 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r5, r2
	mov     r7, r0
	mov     r0, r5
	mov     r6, r1
	bl      Function_22063bc
	mov     r4, r0
	ldrb    r2, [r5, #0x3]
	mov     r0, r6
	mov     r1, r7
	bl      Function_20c2748
	add     r0, r6, #0xe0
	bl      Function_20c29c0
	ldrh    r2, [r5]
	add     r0, r6, #0x20
	ldr     r1,  [pc, #0x28] @ [0x2206578] (=#0x2206174)
	str     r2, [sp]
	ldrb    r12, [r5, #0x2]
	mov     r2, r6
	add     r3, r7, r4
	str     r12, [sp, #0x4]
	bl      Function_20c1f34
	add     r0, r6, #0x20
	bl      Function_20c22d0
	add     r0, r7, r4
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x2206578

.word 0x2206174 @ 0x2206578

.incbin "./baserom/overlay/overlay_0004.bin", 0x357fc, 0x2206878 - 0x220657c


.arm
Function_2206878: @ 2206878 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	bl      Function_22082cc
	cmp     r0, #0x0
	bne     branch_22068a0
	ldrsh   r0, [r6, #0x70]
	tst     r0, #0x8
	beq     branch_22068a8
.arm
branch_22068a0: @ 22068a0 :arm
	mvn     r0, #0x1b
	ldmfd   sp!, {r4-r6,pc}
@ 0x22068a8

.arm
branch_22068a8: @ 22068a8 :arm
	cmp     r6, #0x0
	mov     r1, #0x0
	beq     branch_22068c0
	ldrsh   r0, [r6, #0x70]
	tst     r0, #0x1
	movne   r1, #0x1
.arm
branch_22068c0: @ 22068c0 :arm
	cmp     r1, #0x0
	mvneq   r0, #0x26
	ldmeqfd sp!, {r4-r6,pc}
	ldrsb   r0, [r6, #0x73]
	mov     r1, #0x1
	cmp     r0, #0x0
	cmpne   r0, #0x4
	movne   r1, #0x0
	cmp     r1, #0x0
	beq     branch_220694c
	ldrsh   r0, [r6, #0x70]
	tst     r0, #0x4
	beq     branch_2206908
	ldrsb   r0, [r6, #0x72]
	cmp     r0, #0x1
	mvneq   r0, #0x1d
	movne   r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2206908

.arm
branch_2206908: @ 2206908 :arm
	ldrsh   r0, [r6, #0x70]
	tst     r0, #0x2
	beq     branch_220692c
	ldrsh   r0, [r6, #0x70]
	tst     r0, #0x40
	ldrne   r0, [r6, #0x6c]
	ldreq   r0,  [pc, #0x34] @ [0x220695c] (=#0x221a138)
	ldreq   r0, [r0]
	ldmfd   sp!, {r4-r6,pc}
@ 0x220692c

.arm
branch_220692c: @ 220692c :arm
	strh    r5, [r6, #0x76]
	mov     r0, r6
	str     r4, [r6, #0x78]
	bl      Function_2206960
	ldrsb   r1, [r6, #0x72]
	cmp     r1, #0x1
	mvnne   r0, #0x19
	ldmfd   sp!, {r4-r6,pc}
@ 0x220694c

.arm
branch_220694c: @ 220694c :arm
	strh    r5, [r6, #0x76]
	str     r4, [r6, #0x78]
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x220695c

.word 0x221a138 @ 0x220695c
.arm
Function_2206960: @ 2206960 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldrsb   r2, [r4, #0x72]
	ldr     r0,  [pc, #0x40] @ [0x22069b4] (=#0x22069b8)
	mov     r1, r4
	bl      Function_2205ff4
	movs    r1, r0
	mvneq   r0, #0x20
	ldmeqfd sp!, {r4,pc}
	ldrh    r2, [r4, #0x74]
	mov     r0, r4
	strh    r2, [r1, #0x10]
	ldrh    r2, [r4, #0x76]
	strh    r2, [r1, #0x12]
	ldr     r2, [r4, #0x78]
	str     r2, [r1, #0x14]
	ldrsh   r2, [r4, #0x70]
	orr     r2, r2, #0x2
	strh    r2, [r4, #0x70]
	bl      Function_220613c
	ldmfd   sp!, {r4,pc}
@ 0x22069b4

.word 0x22069b8 @ 0x22069b4

.incbin "./baserom/overlay/overlay_0004.bin", 0x35c38, 0x2206a3c - 0x22069b8


.arm
Function_2206a3c: @ 2206a3c :arm
	stmfd   sp!, {r4-r9,lr}
	sub     sp, sp, #0xc
	mov     r9, r0
	mov     r8, r1
	mov     r7, r2
	mov     r6, r3
	bl      Function_22082cc
	cmp     r0, #0x0
	addne   sp, sp, #0xc
	mvnne   r0, #0x1b
	ldmnefd sp!, {r4-r9,pc}
	ldr     r0, [sp, #0x2c]
	tst     r0, #0x4
	bne     branch_2206a80
	ldrsb   r0, [r9, #0x72]
	cmp     r0, #0x0
	bne     branch_2206a9c
.arm
branch_2206a80: @ 2206a80 :arm
	ldrsb   r0, [r9, #0x73]
	cmp     r0, #0x4
	addeq   sp, sp, #0xc
	mvneq   r0, #0x1b
	ldmeqfd sp!, {r4-r9,pc}
	mov     r5, #0x0
	b       branch_2206ab4

branch_2206a9c: @ 2206a9c :arm
	bl      GetCPUOperatingMode
	cmp     r0, #0x12
	addeq   sp, sp, #0xc
	mvneq   r0, #0x1b
	ldmeqfd sp!, {r4-r9,pc}
	mov     r5, #0x1
branch_2206ab4: @ 2206ab4 :arm
	cmp     r9, #0x0
	mov     r1, #0x0
	beq     branch_2206acc
	ldrsh   r0, [r9, #0x70]
	tst     r0, #0x1
	movne   r1, #0x1
.arm
branch_2206acc: @ 2206acc :arm
	cmp     r1, #0x0
	addeq   sp, sp, #0xc
	mvneq   r0, #0x26
	ldmeqfd sp!, {r4-r9,pc}
	ldrsb   r0, [r9, #0x73]
	mov     r1, #0x1
	cmp     r0, #0x0
	cmpne   r0, #0x4
	movne   r1, #0x0
	cmp     r1, #0x0
	beq     branch_2206b1c
	ldrsh   r0, [r9, #0x70]
	tst     r0, #0x4
	beq     branch_2206b10
	ldrsh   r0, [r9, #0x70]
	tst     r0, #0x8
	beq     branch_2206b1c
.arm
branch_2206b10: @ 2206b10 :arm
	add     sp, sp, #0xc
	mvn     r0, #0x37
	ldmfd   sp!, {r4-r9,pc}
@ 0x2206b1c

.arm
branch_2206b1c: @ 2206b1c :arm
	ldr     r4, [r9, #0x64]
	tst     r5, #0x1
	add     r0, r4, #0xe0
	bne     branch_2206b44
	bl      Function_20c2af4
	cmp     r0, #0x0
	bne     branch_2206b48
	add     sp, sp, #0xc
	mvn     r0, #0x5
	ldmfd   sp!, {r4-r9,pc}

branch_2206b44: @ 2206b44 :arm
	bl      Function_20c29d8
branch_2206b48: @ 2206b48 :arm
	ldr     r0, [sp, #0x28]
	ldr     r12, [sp, #0x2c]
	str     r0, [sp]
	mov     r0, r9
	mov     r1, r8
	mov     r2, r7
	mov     r3, r6
	stmfa   sp, {r5,r12}
	bl      Function_2206b84
	mov     r5, r0
	add     r0, r4, #0xe0
	bl      Function_20c2a5c
	mov     r0, r5
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r9,pc}
@ 0x2206b84

.arm
Function_2206b84: @ 2206b84 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	ldr     r4, [sp, #0x28]
	mov     r7, r0
	tst     r4, #0x2
	ldr     r4, [r7, #0x64]
	cmpne   r4, #0x0
	movne   r6, #0x1
	moveq   r6, #0x0
	cmp     r6, #0x0
	ldrnesb r5, [r4, #0xfe]
	movne   r0, #0x1
	strneb  r0, [r4, #0xfe]
	ldrsb   r0, [r7, #0x73]
	cmp     r0, #0x1
	bne     branch_2206be4
	ldr     r0, [sp, #0x20]
	ldr     r12, [sp, #0x24]
	str     r0, [sp]
	mov     r0, r7
	str     r12, [sp, #0x4]
	bl      Function_2207044
	mov     r8, r0
	b       branch_2206c0c
@ 0x2206be4

.arm
branch_2206be4: @ 2206be4 :arm
	ldr     r0, [sp, #0x20]
	ldr     r12, [sp, #0x24]
	str     r0, [sp]
	mov     r0, r7
	str     r12, [sp, #0x4]
	bl      Function_2206c20
	movs    r8, r0
	bmi     branch_2206c0c
	mov     r0, r7
	bl      Function_2206fac
.arm
branch_2206c0c: @ 2206c0c :arm
	cmp     r6, #0x0
	strneb  r5, [r4, #0xfe]
	mov     r0, r8
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x2206c20

.arm
Function_2206c20: @ 2206c20 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	ldrsb   r12, [r7, #0x73]
	mov     r6, r1
	mov     r5, r2
	mov     r4, r3
	cmp     r12, #0x4
	bne     branch_2206c50
	ldr     r4, [sp, #0x18]
	str     r4, [sp]
	bl      Function_2206e10
	ldmfd   sp!, {r3-r7,pc}
@ 0x2206c50

.arm
branch_2206c50: @ 2206c50 :arm
	ldr     r12, [sp, #0x18]
	str     r12, [sp]
	bl      Function_2206c94
	mvn     r1, #0x5
	cmp     r0, r1
	ldmnefd sp!, {r3-r7,pc}
	ldr     r1, [sp, #0x1c]
	tst     r1, #0x1
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r12, [sp, #0x18]
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	mov     r3, r4
	str     r12, [sp]
	bl      Function_2206e10
	ldmfd   sp!, {r3-r7,pc}
@ 0x2206c94

.arm
Function_2206c94: @ 2206c94 :arm
	stmfd   sp!, {r3-r9,lr}
	sub     sp, sp, #0x10
	mov     r9, r0
	mov     r8, r1
	mov     r7, r2
	mov     r6, r3
	bl      Function_20c3d98
	add     r1, sp, #0x8
	mov     r4, r0
	str     r1, [sp]
	add     r1, sp, #0xc
	mov     r0, r9
	add     r2, sp, #0x6
	add     r3, sp, #0x4
	bl      Function_2206d9c
	cmp     r0, #0x0
	beq     branch_2206d34
	ldr     r5, [sp, #0xc]
	cmp     r5, #0x0
	mvneq   r5, #0x5
	beq     branch_2206d50
	ldrsb   r1, [r9, #0x73]
	cmp     r7, r5
	mov     r2, #0x1
	movgt   r7, r5
	cmp     r1, #0x0
	cmpne   r1, #0x4
	movne   r2, #0x0
	cmp     r2, #0x0
	mov     r1, r8
	mov     r2, r7
	movne   r5, r7
	bl      Function_20c4db0
	ldr     r1, [r9, #0x64]
	ldrsb   r0, [r1, #0xfe]
	cmp     r0, #0x0
	ldreq   r0, [r1, #0xf8]
	addeq   r0, r0, r5
	streq   r0, [r1, #0xf8]
	b       branch_2206d50
@ 0x2206d34

.arm
branch_2206d34: @ 2206d34 :arm
	ldr     r0, [sp, #0xc]
	cmp     r0, #0x0
	ldrsh   r0, [r9, #0x70]
	moveq   r5, #0x0
	mvnne   r5, #0x1b
	bic     r0, r0, #0x6
	strh    r0, [r9, #0x70]
.arm
branch_2206d50: @ 2206d50 :arm
	cmp     r5, #0x0
	blt     branch_2206d88
	cmp     r6, #0x0
	ldrne   r1, [sp, #0x30]
	cmpne   r1, #0x0
	beq     branch_2206d78
	ldrh    r0, [sp, #0x4]
	strh    r0, [r6]
	ldr     r0, [sp, #0x8]
	str     r0, [r1]
.arm
branch_2206d78: @ 2206d78 :arm
	ldrh    r0, [r9, #0x74]
	cmp     r0, #0x0
	ldreqh  r0, [sp, #0x6]
	streqh  r0, [r9, #0x74]
.arm
branch_2206d88: @ 2206d88 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, r5
	add     sp, sp, #0x10
	ldmfd   sp!, {r3-r9,pc}
@ 0x2206d9c

.arm
Function_2206d9c: @ 2206d9c :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r0, [r0, #0x64]
	ldr     r4, [r0, #0xc4]
	ldr     r5, [r0, #0xf8]
	ldr     r0, [r4, #0x44]
	subs    lr, r0, r5
	bmi     branch_2206df4
	ldrh    r12, [r4, #0xa]
	ldr     r0, [sp, #0x10]
	cmp     lr, #0x0
	strh    r12, [r2]
	ldrh    r2, [r4, #0x18]
	strh    r2, [r3]
	ldr     r2, [r4, #0x1c]
	str     r2, [r0]
	str     lr, [r1]
	bne     branch_2206e04
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0x4
	beq     branch_2206e04
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2206df4

.arm
branch_2206df4: @ 2206df4 :arm
	mvn     r0, #0x0
	str     r0, [r1]
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2206e04

.arm
branch_2206e04: @ 2206e04 :arm
	ldr     r0, [r4, #0x40]
	add     r0, r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x2206e10

.arm
Function_2206e10: @ 2206e10 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	ldr     r0,  [pc, #0x30] @ [0x2206e58] (=#0x2206e5c)
	mov     r1, r7
	mov     r2, #0x1
	mov     r4, r3
	bl      Function_2205ff4
	mov     r1, r0
	str     r6, [r1, #0x10]
	str     r5, [r1, #0x14]
	ldr     r2, [sp, #0x18]
	str     r4, [r1, #0x18]
	mov     r0, r7
	str     r2, [r1, #0x1c]
	bl      Function_220613c
	ldmfd   sp!, {r3-r7,pc}
@ 0x2206e58

.word 0x2206e5c @ 0x2206e58

.incbin "./baserom/overlay/overlay_0004.bin", 0x360dc, 0x2206fac - 0x2206e5c


.arm
Function_2206fac: @ 2206fac :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x64]
	ldrh    r0, [r1, #0xfc]
	ldr     r1, [r1, #0xf8]
	cmp     r1, r0
	movlt   r0, #0x0
	ldmltfd sp!, {r4,pc}
	ldr     r0,  [pc, #0x20] @ [0x2206ff4] (=#0x2206ff8)
	mov     r1, r4
	mov     r2, #0x0
	bl      Function_2205ff4
	movs    r1, r0
	mvneq   r0, #0x20
	ldmeqfd sp!, {r4,pc}
	mov     r0, r4
	bl      Function_220613c
	ldmfd   sp!, {r4,pc}
@ 0x2206ff4

.word 0x2206ff8 @ 0x2206ff4

.incbin "./baserom/overlay/overlay_0004.bin", 0x36278, 0x2207044 - 0x2206ff8


.arm
Function_2207044: @ 2207044 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	mov     r10, r0
	ldr     r6, [r10, #0x64]
	str     r1, [sp]
	ldr     r0, [r6, #0x104]
	str     r2, [sp, #0x4]
	mov     r11, r3
	bl      Function_20c3d98
	ldr     r7, [r6, #0x104]
	str     r0, [sp, #0x8]
	cmp     r7, #0x0
	bne     branch_22070e0
	ldr     r0, [sp, #0x34]
	mov     r4, #0x1
	and     r9, r0, #0x1
	mov     r5, #0x0
.arm
branch_2207088: @ 2207088 :arm
	cmp     r9, #0x0
	mvneq   r8, #0x5
	beq     branch_22070e0
	add     r0, r6, #67, 30 @ #0x10c
	bl      Function_20c2218
	mov     r0, r10
	bl      Function_22082cc
	cmp     r0, #0x0
	bne     branch_22070cc
	mov     r1, r5
	cmp     r10, #0x0
	beq     branch_22070c4
	ldrsh   r0, [r10, #0x70]
	tst     r0, #0x1
	movne   r1, r4
.arm
branch_22070c4: @ 22070c4 :arm
	cmp     r1, #0x0
	bne     branch_22070d4
.arm
branch_22070cc: @ 22070cc :arm
	mvn     r8, #0x37
	b       branch_22070e0
@ 0x22070d4

.arm
branch_22070d4: @ 22070d4 :arm
	ldr     r7, [r6, #0x104]
	cmp     r7, #0x0
	beq     branch_2207088
.arm
branch_22070e0: @ 22070e0 :arm
	cmp     r7, #0x0
	beq     branch_2207170
	ldrh    r1, [r7, #0x4]
	ldr     r0, [sp, #0x4]
	cmp     r0, r1
	strgt   r1, [sp, #0x4]
	ldr     r1, [sp]
	ldr     r2, [sp, #0x4]
	add     r0, r7, #0xc
	bl      Function_20c4db0
	cmp     r11, #0x0
	ldrneh  r0, [r7, #0x6]
	ldr     r1, [sp, #0x30]
	strneh  r0, [r11]
	cmp     r1, #0x0
	ldrne   r0, [r7, #0x8]
	strne   r0, [r1]
	ldrsb   r0, [r6, #0xfe]
	ldrh    r8, [r7, #0x4]
	cmp     r0, #0x0
	bne     branch_2207170
	ldr     r0, [r7]
	ldr     r1,  [pc, #0x44] @ [0x2207184] (=#0x221a134)
	str     r0, [r6, #0x104]
	ldr     r0, [r7]
	cmp     r0, #0x0
	moveq   r0, #0x0
	streq   r0, [r6, #0x100]
	ldr     r1, [r1]
	mov     r0, r7
	ldr     r1, [r1, #0x1c]
	blx     r1
	add     r0, r6, #1, 24 @ #0x100
	ldrh    r1, [r0, #0x8]
	sub     r1, r1, r8
	strh    r1, [r0, #0x8]
.arm
branch_2207170: @ 2207170 :arm
	ldr     r0, [sp, #0x8]
	bl      Function_20c3dac
	mov     r0, r8
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,pc}
@ 0x2207184

.word 0x221a134 @ 0x2207184

.incbin "./baserom/overlay/overlay_0004.bin", 0x36408, 0x220729c - 0x2207188


.arm
Function_220729c: @ 220729c :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	bl      Function_22082cc
	cmp     r0, #0x0
	addne   sp, sp, #0x8
	mvnne   r0, #0x1b
	ldmnefd sp!, {r4-r8,pc}
	cmp     r8, #0x0
	mov     r1, #0x0
	beq     branch_22072e0
	ldrsh   r0, [r8, #0x70]
	tst     r0, #0x1
	movne   r1, #0x1
.arm
branch_22072e0: @ 22072e0 :arm
	cmp     r1, #0x0
	addeq   sp, sp, #0x8
	mvneq   r0, #0x26
	ldmeqfd sp!, {r4-r8,pc}
	ldrsb   r0, [r8, #0x73]
	mov     r1, #0x1
	cmp     r0, #0x0
	cmpne   r0, #0x4
	movne   r1, #0x0
	cmp     r1, #0x0
	beq     branch_2207330
	ldrsh   r0, [r8, #0x70]
	tst     r0, #0x4
	beq     branch_2207324
	ldrsh   r0, [r8, #0x70]
	tst     r0, #0x8
	beq     branch_2207330
.arm
branch_2207324: @ 2207324 :arm
	add     sp, sp, #0x8
	mvn     r0, #0x37
	ldmfd   sp!, {r4-r8,pc}
@ 0x2207330

.arm
branch_2207330: @ 2207330 :arm
	ldr     r0, [sp, #0x24]
	ldr     r4, [r8, #0x68]
	tst     r0, #0x4
	bne     branch_220734c
	ldrsb   r0, [r8, #0x72]
	cmp     r0, #0x0
	bne     branch_220736c
.arm
branch_220734c: @ 220734c :arm
	add     r0, r4, #0xe0
	bl      Function_20c2af4
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	mvneq   r0, #0x5
	ldmeqfd sp!, {r4-r8,pc}
	mov     r12, #0x0
	b       branch_2207378
@ 0x220736c

.arm
branch_220736c: @ 220736c :arm
	add     r0, r4, #0xe0
	bl      Function_20c29d8
	mov     r12, #0x1
.arm
branch_2207378: @ 2207378 :arm
	ldr     r1, [sp, #0x20]
	mov     r0, r8
	str     r1, [sp]
	mov     r1, r7
	mov     r2, r6
	mov     r3, r5
	str     r12, [sp, #0x4]
	bl      Function_22073b0
	mov     r5, r0
	add     r0, r4, #0xe0
	bl      Function_20c2a5c
	mov     r0, r5
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x22073b0

.arm
Function_22073b0: @ 22073b0 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x18
	mov     r10, r0
	ldr     r4, [r10, #0x68]
	ldrsb   r0, [r10, #0x73]
	ldr     r4, [r4, #0x10c]
	mov     r9, r1
	str     r3, [sp, #0xc]
	cmp     r0, #0x1
	mov     r8, r2
	ldr     r7, [sp, #0x40]
	ldr     r6, [sp, #0x44]
	ldr     r0, [r4, #0x48]
	mov     r5, #0x0
	bne     branch_2207408
	sub     r0, r0, #0x2a
	cmp     r8, r0
	addgt   sp, sp, #0x18
	subgt   r0, r5, #0x23
	ldmgtfd sp!, {r3-r11,pc}
	str     r8, [sp, #0x10]
	b       branch_2207418
@ 0x2207408

.arm
branch_2207408: @ 2207408 :arm
	sub     r0, r0, #0x36
	str     r0, [sp, #0x10]
	cmp     r8, r0
	strle   r8, [sp, #0x10]
.arm
branch_2207418: @ 2207418 :arm
	cmp     r8, #0x0
	ble     branch_22074a8
	and     r11, r6, #0x1
.arm
branch_2207424: @ 2207424 :arm
	ldr     r2, [sp, #0x10]
	mov     r0, r10
	mov     r1, r8
	add     r3, sp, #0x14
	str     r6, [sp]
	bl      Function_22074b4
	mov     r4, r0
	cmp     r4, #0x0
	ble     branch_2207484
	ldr     r0, [sp, #0xc]
	mov     r1, r9
	stmea   sp, {r0,r7}
	str     r6, [sp, #0x8]
	ldr     r3, [sp, #0x14]
	mov     r0, r10
	mov     r2, r4
	bl      Function_220755c
	cmp     r0, #0x0
	addle   sp, sp, #0x18
	mvnle   r0, #0x5
	ldmlefd sp!, {r3-r11,pc}
	add     r9, r9, r4
	sub     r8, r8, r4
	add     r5, r5, r4
.arm
branch_2207484: @ 2207484 :arm
	cmp     r11, #0x0
	bne     branch_22074a0
	cmp     r4, #0x0
	bgt     branch_22074a8
	add     sp, sp, #0x18
	mvn     r0, #0x5
	ldmfd   sp!, {r3-r11,pc}
@ 0x22074a0

.arm
branch_22074a0: @ 22074a0 :arm
	cmp     r8, #0x0
	bgt     branch_2207424
.arm
branch_22074a8: @ 22074a8 :arm
	mov     r0, r5
	add     sp, sp, #0x18
	ldmfd   sp!, {r3-r11,pc}
@ 0x22074b4

.arm
Function_22074b4: @ 22074b4 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r10, r0
	mov     r9, r1
	mov     r8, r2
	cmp     r8, r9
	mov     r7, r3
	ldr     r4, [r10, #0x68]
	movgt   r8, r9
	bl      Function_20c3d98
	ldr     r1, [sp, #0x28]
	mov     r11, r0
	and     r6, r1, #0x1
.arm
branch_22074e4: @ 22074e4 :arm
	mov     r0, r10
	bl      Function_2207538
	mov     r5, r0
	cmp     r5, r8
	blt     branch_2207510
	add     r0, r4, #1, 24 @ #0x100
	ldrh    r0, [r0]
	cmp     r5, r9
	movge   r5, r9
	str     r0, [r7]
	b       branch_2207528
@ 0x2207510

.arm
branch_2207510: @ 2207510 :arm
	cmp     r6, #0x0
	moveq   r5, #0x0
	beq     branch_2207528
	add     r0, r4, #65, 30 @ #0x104
	bl      Function_20c2218
	b       branch_22074e4
@ 0x2207528

.arm
branch_2207528: @ 2207528 :arm
	mov     r0, r11
	bl      Function_20c3dac
	mov     r0, r5
	ldmfd   sp!, {r3-r11,pc}
@ 0x2207538

.arm
Function_2207538: @ 2207538 :arm
	ldr     r2, [r0, #0x68]
	add     r0, r2, #1, 24 @ #0x100
	ldrh    r1, [r0]
	ldrh    r0, [r0, #0x2]
	ldr     r2, [r2, #0xf8]
	sub     r0, r0, r1
	subs    r0, r0, #0x1
	addmi   r0, r0, r2
	bx      lr
@ 0x220755c

.arm
Function_220755c: @ 220755c :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r9, r0
	ldr     r4, [r9, #0x68]
	mov     r6, r1
	mov     r8, r2
	ldr     r1, [r4, #0x10c]
	ldr     r2, [sp, #0x28]
	ldr     r0,  [pc, #0x14c] @ [0x22076cc] (=#0x22076d0)
	mov     r7, r3
	bl      Function_2205ff4
	movs    r5, r0
	mvneq   r0, #0x20
	ldmeqfd sp!, {r3-r9,pc}
	ldr     r0, [sp, #0x28]
	add     r1, r7, r8
	tst     r0, #0x1
	ldrnesb r0, [r9, #0x73]
	cmpne   r0, #0x1
	movne   r0, #0x3
	strneb  r0, [r5, #0xd]
	moveq   r0, #0x0
	streqb  r0, [r5, #0xd]
	ldr     r3, [r4, #0xfc]
	ldr     r2, [r4, #0xf8]
	add     r0, r3, r7
	cmp     r1, r2
	str     r0, [r5, #0x10]
	bge     branch_22075e4
	str     r8, [r5, #0x14]
	mov     r0, #0x0
	str     r0, [r5, #0x18]
	mov     r7, r1
	str     r0, [r5, #0x1c]
	b       branch_2207610
@ 0x22075e4

.arm
branch_22075e4: @ 22075e4 :arm
	sub     r0, r2, r7
	str     r0, [r5, #0x14]
	str     r3, [r5, #0x18]
	ldr     r0, [r5, #0x14]
	sub     r7, r8, r0
	str     r7, [r5, #0x1c]
	ldr     r0, [r5, #0x14]
	ldr     r1, [r5, #0x18]
	mov     r2, r7
	add     r0, r6, r0
	bl      Function_20c4db0
.arm
branch_2207610: @ 2207610 :arm
	ldr     r1, [r5, #0x10]
	ldr     r2, [r5, #0x14]
	mov     r0, r6
	bl      Function_20c4db0
	add     r0, r4, #1, 24 @ #0x100
	ldrh    r6, [r0]
	strh    r7, [r5, #0x20]
	ldrh    r1, [r5, #0x20]
	strh    r1, [r0]
	ldrsb   r0, [r9, #0x73]
	cmp     r0, #0x1
	bne     branch_22076a0
	ldrh    r0, [r9, #0x74]
	cmp     r0, #0x0
	bne     branch_220765c
	bl      Function_220bc04
	strh    r0, [r9, #0x74]
	ldrh    r0, [r9, #0x74]
	strh    r0, [r9, #0xa]
.arm
branch_220765c: @ 220765c :arm
	ldrh    r0, [r9, #0x74]
	strh    r0, [r5, #0x24]
	ldr     r1, [r9, #0x78]
	cmp     r1, #0x0
	beq     branch_220767c
	ldr     r0, [sp, #0x24]
	cmp     r0, #0x0
	beq     branch_2207690
.arm
branch_220767c: @ 220767c :arm
	ldr     r1, [sp, #0x24]
	ldrh    r0, [sp, #0x20]
	str     r1, [r5, #0x28]
	strh    r0, [r5, #0x26]
	b       branch_22076a8
@ 0x2207690

.arm
branch_2207690: @ 2207690 :arm
	str     r1, [r5, #0x28]
	ldrh    r0, [r9, #0x76]
	strh    r0, [r5, #0x26]
	b       branch_22076a8
@ 0x22076a0

.arm
branch_22076a0: @ 22076a0 :arm
	mov     r0, #0x0
	str     r0, [r5, #0x28]
.arm
branch_22076a8: @ 22076a8 :arm
	ldr     r0, [r4, #0x10c]
	mov     r1, r5
	bl      Function_220614c
	cmp     r0, #0x0
	addne   r0, r4, #1, 24 @ #0x100
	movne   r8, #0x0
	strneh  r6, [r0]
	mov     r0, r8
	ldmfd   sp!, {r3-r9,pc}
@ 0x22076cc

.word 0x22076d0 @ 0x22076cc

.incbin "./baserom/overlay/overlay_0004.bin", 0x36950, 0x2207a18 - 0x22076d0


.arm
Function_2207a18: @ 2207a18 :arm
	stmfd   sp!, {r4,lr}
	movs    r4, r0
	bmi     branch_2207a44
	bl      Function_22082cc
	cmp     r0, #0x0
	beq     branch_2207a44
	mov     r0, r4
	bl      Function_2208300
	cmp     r0, #0x0
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,pc}
.arm
branch_2207a44: @ 2207a44 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2207a4c

.arm
Function_2207a4c: @ 2207a4c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	cmp     r4, #0x0
	mvnle   r0, #0x1b
	ldmlefd sp!, {r4,pc}
	bl      Function_2208300
	cmp     r0, #0x0
	mvnne   r0, #0x19
	ldmnefd sp!, {r4,pc}
	mov     r0, r4
	bl      Function_22082cc
	cmp     r0, #0x0
	movne   r0, #0x0
	ldmnefd sp!, {r4,pc}
	cmp     r4, #0x0
	mov     r1, #0x0
	beq     branch_2207a9c
	ldrsh   r0, [r4, #0x70]
	tst     r0, #0x1
	movne   r1, #0x1
.arm
branch_2207a9c: @ 2207a9c :arm
	cmp     r1, #0x0
	mvneq   r0, #0x26
	ldmeqfd sp!, {r4,pc}
	ldrsh   r0, [r4, #0x70]
	tst     r0, #0x10
	mvnne   r0, #0x19
	ldmnefd sp!, {r4,pc}
	ldrsh   r0, [r4, #0x70]
	mov     r1, #0x1
	orr     r0, r0, #0x18
	strh    r0, [r4, #0x70]
	ldrsb   r0, [r4, #0x73]
	cmp     r0, #0x0
	cmpne   r0, #0x4
	movne   r1, #0x0
	cmp     r1, #0x0
	beq     branch_2207aec
	ldr     r0, [r4, #0x68]
	mov     r1, #0x0
	bl      Function_2206068
.arm
branch_2207aec: @ 2207aec :arm
	ldr     r0,  [pc, #0x24] @ [0x2207b18] (=#0x2207b1c)
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2205ff4
	mov     r1, r0
	mov     r2, #0x0
	mov     r0, r4
	str     r2, [r1, #0x8]
	bl      Function_22060b4
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x2207b18

.word 0x2207b1c @ 0x2207b18

.incbin "./baserom/overlay/overlay_0004.bin", 0x36d9c, 0x2207bb4 - 0x2207b1c


.arm
Function_2207bb4: @ 2207bb4 :arm
	stmfd   sp!, {r4-r6,lr}
	movs    r4, r0
	ldmeqfd sp!, {r4-r6,pc}
	mov     r0, #0x0
	strh    r0, [r4, #0x70]
	ldrsb   r2, [r4, #0x73]
	mov     r1, #0x1
	cmp     r2, #0x0
	cmpne   r2, #0x4
	movne   r1, r0
	cmp     r1, #0x0
	beq     branch_2207bf8
	ldr     r0, [r4, #0x68]
	bl      Function_2207cb4
	ldr     r0, [r4, #0x64]
	bl      Function_2207cb4
	b       branch_2207c78
@ 0x2207bf8

.arm
branch_2207bf8: @ 2207bf8 :arm
	cmp     r2, #0x1
	bne     branch_2207c68
	ldr     r0, [r4, #0x64]
	ldr     r0, [r0, #0x104]
	cmp     r0, #0x0
	beq     branch_2207c30
	ldr     r5,  [pc, #0x98] @ [0x2207cb0] (=#0x221a134)
.arm
branch_2207c14: @ 2207c14 :arm
	ldr     r1, [r5]
	ldr     r6, [r0]
	ldr     r1, [r1, #0x1c]
	blx     r1
	mov     r0, r6
	cmp     r6, #0x0
	bne     branch_2207c14
.arm
branch_2207c30: @ 2207c30 :arm
	ldr     r0, [r4, #0x64]
	mov     r1, #0x0
	add     r0, r0, #1, 24 @ #0x100
	strh    r1, [r0, #0x8]
	ldr     r0, [r4, #0x64]
	str     r1, [r0, #0x100]
	ldr     r0, [r4, #0x64]
	str     r1, [r0, #0x104]
	ldr     r0, [r4, #0x64]
	add     r0, r0, #67, 30 @ #0x10c
	bl      Function_20c2268
	ldr     r0, [r4, #0x64]
	bl      Function_2207cb4
	b       branch_2207c78
@ 0x2207c68

.arm
branch_2207c68: @ 2207c68 :arm
	cmp     r2, #0x2
	bne     branch_2207c78
	ldr     r0, [r4, #0x68]
	bl      Function_2207cb4
.arm
branch_2207c78: @ 2207c78 :arm
	bl      Function_20c3d98
	mov     r5, r0
	mov     r0, r4
	bl      Function_2208254
	mov     r0, r4
	bl      Function_22082b4
	ldr     r1,  [pc, #0x18] @ [0x2207cb0] (=#0x221a134)
	mov     r0, r4
	ldr     r1, [r1]
	ldr     r1, [r1, #0x1c]
	blx     r1
	mov     r0, r5
	bl      Function_20c3dac
	ldmfd   sp!, {r4-r6,pc}
@ 0x2207cb0

.word 0x221a134 @ 0x2207cb0
.arm
Function_2207cb4: @ 2207cb4 :arm
	stmfd   sp!, {r3-r9,lr}
	movs    r9, r0
	ldmeqfd sp!, {r3-r9,pc}
	add     r0, r9, #0x20
	bl      Function_20c21d4
	bl      Function_20c3d98
	mov     r8, r0
	bl      Function_20c25a4
	add     r1, sp, #0x0
	mov     r0, r9
	mov     r2, #0x0
	bl      Function_20c2804
	cmp     r0, #0x0
	beq     branch_2207d40
	mov     r6, #0x0
	mvn     r7, #0xa
	add     r5, sp, #0x0
	mov     r4, r6
.arm
branch_2207cfc: @ 2207cfc :arm
	ldr     r0, [sp]
	cmp     r0, #0x0
	beq     branch_2207d28
	ldr     r0, [r0, #0x8]
	cmp     r0, #0x0
	beq     branch_2207d20
	mov     r1, r7
	mov     r2, r6
	bl      Function_20c2770
.arm
branch_2207d20: @ 2207d20 :arm
	ldr     r0, [sp]
	bl      Function_2206034
.arm
branch_2207d28: @ 2207d28 :arm
	mov     r0, r9
	mov     r1, r5
	mov     r2, r4
	bl      Function_20c2804
	cmp     r0, #0x0
	bne     branch_2207cfc
.arm
branch_2207d40: @ 2207d40 :arm
	bl      Function_20c25d8
	bl      Function_20c2320
	mov     r0, r8
	bl      Function_20c3dac
	ldmfd   sp!, {r3-r9,pc}
@ 0x2207d54

.arm
Function_2207d54: @ 2207d54 :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_20c3d98
	ldr     r4,  [pc, #0x28] @ [0x2207d8c] (=#0x221dc60)
	mov     r5, r0
	ldr     r0, [r4]
	cmp     r0, #0x0
	beq     branch_2207d80
.arm
branch_2207d70: @ 2207d70 :arm
	bl      Function_2207bb4
	ldr     r0, [r4]
	cmp     r0, #0x0
	bne     branch_2207d70
.arm
branch_2207d80: @ 2207d80 :arm
	mov     r0, r5
	bl      Function_20c3dac
	ldmfd   sp!, {r3-r5,pc}
@ 0x2207d8c

.word 0x221dc60 @ 0x2207d8c

.incbin "./baserom/overlay/overlay_0004.bin", 0x37010, 0x2207e34 - 0x2207d90


.arm
Function_2207e34: @ 2207e34 :arm
	stmfd   sp!, {r4-r6,lr}
	ldr     r4,  [pc, #0x90] @ [0x2207ed0] (=#0x221dbfc)
	ldr     r5,  [pc, #0x90] @ [0x2207ed4] (=#0x221dc5c)
.arm
branch_2207e40: @ 2207e40 :arm
	bl      Function_20c3d98
	ldr     r6, [r5]
	cmp     r6, #0x0
	beq     branch_2207e74
	ldr     r2, [r4]
.arm
branch_2207e54: @ 2207e54 :arm
	cmp     r6, r2
	beq     branch_2207e68
	ldrsh   r1, [r6, #0x70]
	tst     r1, #0x10
	beq     branch_2207e74
.arm
branch_2207e68: @ 2207e68 :arm
	ldr     r6, [r6, #0x7c]
	cmp     r6, #0x0
	bne     branch_2207e54
.arm
branch_2207e74: @ 2207e74 :arm
	bl      Function_20c3dac
	cmp     r6, #0x0
	beq     branch_2207e8c
	mov     r0, r6
	bl      Function_2207a4c
	b       branch_2207e40
@ 0x2207e8c

.arm
branch_2207e8c: @ 2207e8c :arm
	ldr     r0,  [pc, #0x40] @ [0x2207ed4] (=#0x221dc5c)
	ldr     r1, [r0]
	cmp     r1, #0x0
	beq     branch_2207eb4
	ldr     r0,  [pc, #0x2c] @ [0x2207ed0] (=#0x221dbfc)
	ldr     r0, [r0]
	cmp     r1, r0
	ldreq   r0, [r1, #0x7c]
	cmpeq   r0, #0x0
	bne     branch_2207ec8
.arm
branch_2207eb4: @ 2207eb4 :arm
	ldr     r0,  [pc, #0x1c] @ [0x2207ed8] (=#0x221dc60)
	ldr     r0, [r0]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4-r6,pc}
.arm
branch_2207ec8: @ 2207ec8 :arm
	mvn     r0, #0x19
	ldmfd   sp!, {r4-r6,pc}
@ 0x2207ed0

.word 0x221dbfc @ 0x2207ed0
.word 0x221dc5c @ 0x2207ed4
.word 0x221dc60 @ 0x2207ed8



.arm
Function_2207edc: @ 2207edc :arm
	stmfd   sp!, {r4,lr}
	ldr     r0,  [pc, #0x6c] @ [0x2207f54] (=#0x221dbfc)
	ldr     r0, [r0]
	cmp     r0, #0x0
	beq     branch_2207f30
	bl      Function_2207e34
	movs    r4, r0
	bne     branch_2207f28
	ldr     r0,  [pc, #0x50] @ [0x2207f54] (=#0x221dbfc)
	ldr     r0, [r0]
	bl      Function_2207a4c
	ldr     r0,  [pc, #0x44] @ [0x2207f54] (=#0x221dbfc)
	ldr     r0, [r0]
	bl      Function_2207a18
	cmp     r0, #0x0
	ldrne   r0,  [pc, #0x34] @ [0x2207f54] (=#0x221dbfc)
	movne   r1, #0x0
	strne   r1, [r0]
	mvn     r4, #0x19
.arm
branch_2207f28: @ 2207f28 :arm
	bl      Function_2207d54
	b       branch_2207f4c
@ 0x2207f30

.arm
branch_2207f30: @ 2207f30 :arm
	bl      Function_2209060
	cmp     r0, #0x0
	mvneq   r4, #0x19
	beq     branch_2207f4c
	mov     r0, #0x0
	bl      Function_221543c
	mov     r4, #0x0
.arm
branch_2207f4c: @ 2207f4c :arm
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x2207f54

.word 0x221dbfc @ 0x2207f54
.arm
Function_2207f58: @ 2207f58 :arm
	stmfd   sp!, {r4,r5,lr}
	sub     sp, sp, #0x64
	movs    r5, r0
	addeq   sp, sp, #0x64
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,pc}
	ldr     r1,  [pc, #0x84] @ [0x2207ffc] (=#0x221a134)
	mov     r0, #253, 28 @ #0xfd0
	ldr     r1, [r1]
	ldr     r1, [r1, #0x18]
	blx     r1
	movs    r4, r0
	addeq   sp, sp, #0x64
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,r5,pc}
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x64
	bl      Function_20c4cf4
	add     r0, r4, #218, 30 @ #0x368
	add     r2, r0, #2, 22 @ #0x800
	ldr     r3,  [pc, #0x4c] @ [0x2208000] (=#0xb68)
	ldr     r1,  [pc, #0x4c] @ [0x2208004] (=#0x466)
	add     r0, sp, #0x0
	str     r4, [sp, #0x40]
	str     r3, [sp, #0x3c]
	str     r2, [sp, #0x4c]
	str     r1, [sp, #0x48]
	bl      Function_220bcf0
	mov     r0, r5
	bl      Function_220d8d8
	mov     r5, r0
	bl      Function_220bd04
	ldr     r1,  [pc, #0x18] @ [0x2207ffc] (=#0x221a134)
	mov     r0, r4
	ldr     r1, [r1]
	ldr     r1, [r1, #0x1c]
	blx     r1
	mov     r0, r5
	add     sp, sp, #0x64
	ldmfd   sp!, {r4,r5,pc}
@ 0x2207ffc

.word 0x221a134 @ 0x2207ffc
.word 0xb68 @ 0x2208000
.word 0x466 @ 0x2208004
.arm
Function_2208008: @ 2208008 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x34] @ [0x2208050] (=#0x221de50)
	mov     r5, r0
	ldmia   r1, {r6,r7}
	mov     r2, #0x0
	str     r2, [r1]
	mov     r0, r4
	str     r2, [r1, #0x4]
	bl      Function_220d8d8
	ldr     r1,  [pc, #0x14] @ [0x2208050] (=#0x221de50)
	mov     r4, r0
	mov     r0, r5
	stmia   r1, {r6,r7}
	bl      Function_20c3dac
	mov     r0, r4
	ldmfd   sp!, {r3-r7,pc}
@ 0x2208050

.word 0x221de50 @ 0x2208050

.incbin "./baserom/overlay/overlay_0004.bin", 0x372d4, 0x2208088 - 0x2208054


.arm
Function_2208088: @ 2208088 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x50] @ [0x22080e4] (=#0x221de40)
	ldr     r2, [r0]
	cmp     r2, #0x0
	bne     branch_22080c8
	ldr     r0,  [pc, #0x44] @ [0x22080e8] (=#0x221dbf8)
	ldr     r0, [r0]
	and     r0, r0, #0x3
	cmp     r0, #0x1
	bne     branch_22080d8
	bl      GetCPUOperatingMode
	cmp     r0, #0x12
	beq     branch_22080d8
	mov     r0, #0xa
	bl      Function_20c24a4
	b       branch_22080d8
@ 0x22080c8

.arm
branch_22080c8: @ 22080c8 :arm
	ldr     r0,  [pc, #0x1c] @ [0x22080ec] (=#0x221dbf4)
	ldr     r1, [r0]
	cmp     r1, #0x0
	streq   r2, [r0]
.arm
branch_22080d8: @ 22080d8 :arm
	ldr     r0,  [pc, #0x4] @ [0x22080e4] (=#0x221de40)
	ldr     r0, [r0]
	ldmfd   sp!, {r3,pc}
@ 0x22080e4

.word 0x221de40 @ 0x22080e4
.word 0x221dbf8 @ 0x22080e8
.word 0x221dbf4 @ 0x22080ec



.arm
Function_22080f0: @ 22080f0 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r4, #0x0
	mov     r5, r0
	bl      Function_22082cc
	cmp     r0, #0x0
	orrne   r4, r4, #0x80
	bne     branch_22081b8
	ldrsh   r0, [r5, #0x70]
	tst     r0, #0x40
	ldrsb   r0, [r5, #0x73]
	orrne   r4, r4, #0x20
	cmp     r0, #0x1
	beq     branch_2208130
	ldrsh   r0, [r5, #0x70]
	tst     r0, #0x4
	beq     branch_2208160
.arm
branch_2208130: @ 2208130 :arm
	bl      Function_20c3d98
	mov     r6, r0
	mov     r0, r5
	bl      Function_22081c0
	cmp     r0, #0x0
	mov     r0, r5
	orrgt   r4, r4, #0x1
	bl      Function_2207538
	cmp     r0, #0x0
	mov     r0, r6
	orrgt   r4, r4, #0x8
	bl      Function_20c3dac
.arm
branch_2208160: @ 2208160 :arm
	ldrsb   r0, [r5, #0x73]
	mov     r1, #0x1
	cmp     r0, #0x0
	cmpne   r0, #0x4
	movne   r1, #0x0
	cmp     r1, #0x0
	beq     branch_22081b8
	ldrsh   r0, [r5, #0x70]
	tst     r0, #0x4
	ldrneb  r0, [r5, #0x8]
	cmpne   r0, #0x4
	beq     branch_22081a0
	tst     r4, #0x1
	ldreqsh r0, [r5, #0x70]
	biceq   r0, r0, #0x6
	streqh  r0, [r5, #0x70]
.arm
branch_22081a0: @ 22081a0 :arm
	ldrsh   r0, [r5, #0x70]
	tst     r0, #0x2
	bne     branch_22081b8
	ldrsh   r0, [r5, #0x70]
	tst     r0, #0x4
	orreq   r4, r4, #0x40
.arm
branch_22081b8: @ 22081b8 :arm
	mov     r0, r4
	ldmfd   sp!, {r4-r6,pc}
@ 0x22081c0

.arm
Function_22081c0: @ 22081c0 :arm
	ldr     r2, [r0, #0x64]
	mov     r3, #0x0
	cmp     r2, #0x0
	beq     branch_2208200
	ldrsb   r1, [r0, #0x73]
	cmp     r1, #0x1
	bne     branch_22081ec
	ldr     r0, [r2, #0x104]
	cmp     r0, #0x0
	ldrneh  r3, [r0, #0x4]
	b       branch_2208200
@ 0x22081ec

.arm
branch_22081ec: @ 22081ec :arm
	cmp     r1, #0x0
	cmpne   r1, #0x4
	ldreq   r1, [r0, #0x44]
	ldreq   r0, [r2, #0xf8]
	subeq   r3, r1, r0
.arm
branch_2208200: @ 2208200 :arm
	mov     r0, r3
	bx      lr
@ 0x2208208

.arm
Function_2208208: @ 2208208 :arm
	add     r0, r0, #0x3
	bic     r0, r0, #0x3
	bx      lr
@ 0x2208214

.arm
Function_2208214: @ 2208214 :arm
	ldr     r12,  [pc, #0x8] @ [0x2208224] (=#0x220822c)
	mov     r1, r0
	ldr     r0,  [pc, #0x4] @ [0x2208228] (=#0x221dc5c)
	bx      r12
@ 0x2208224

.word 0x220822c @ 0x2208224
.word 0x221dc5c @ 0x2208228

.incbin "./baserom/overlay/overlay_0004.bin", 0x374ac, 0x2208254 - 0x220822c


.arm
Function_2208254: @ 2208254 :arm
	ldr     r12,  [pc, #0x8] @ [0x2208264] (=Function_220826c)
	mov     r1, r0
	ldr     r0,  [pc, #0x4] @ [0x2208268] (=#0x221dc5c)
	bx      r12
@ 0x2208264

.word Function_220826c @ 0x2208264
.word 0x221dc5c @ 0x2208268



.arm
.globl Function_220826c
Function_220826c: @ 220826c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	bl      Function_2208288
	cmp     r0, #0x0
	ldrne   r1, [r4, #0x7c]
	strne   r1, [r0]
	ldmfd   sp!, {r4,pc}
@ 0x2208288


.arm
Function_2208288: @ 2208288 :arm
	ldr     r2, [r0]
	cmp     r2, #0x0
	beq     branch_22082ac
.arm
branch_2208294: @ 2208294 :arm
	cmp     r2, r1
	bxeq    lr
	add     r0, r2, #0x7c
	ldr     r2, [r2, #0x7c]
	cmp     r2, #0x0
	bne     branch_2208294
.arm
branch_22082ac: @ 22082ac :arm
	mov     r0, #0x0
	bx      lr
@ 0x22082b4

.arm
Function_22082b4: @ 22082b4 :arm
	ldr     r12,  [pc, #0x8] @ [0x22082c4] (=Function_220826c)
	mov     r1, r0
	ldr     r0,  [pc, #0x4] @ [0x22082c8] (=#0x221dc60)
	bx      r12
@ 0x22082c4

.word Function_220826c @ 0x22082c4
.word 0x221dc60 @ 0x22082c8



.arm
Function_22082cc: @ 22082cc :arm
	stmfd   sp!, {r3,lr}
	mov     r1, r0
	cmp     r1, #0x0
	ble     branch_22082ec
	ldr     r0,  [pc, #0x18] @ [0x22082fc] (=#0x221dc5c)
	bl      Function_2208288
	cmp     r0, #0x0
	bne     branch_22082f4
.arm
branch_22082ec: @ 22082ec :arm
	mov     r0, #0x1
	ldmfd   sp!, {r3,pc}
@ 0x22082f4

.arm
branch_22082f4: @ 22082f4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x22082fc

.word 0x221dc5c @ 0x22082fc
.arm
Function_2208300: @ 2208300 :arm
	stmfd   sp!, {r3,lr}
	mov     r1, r0
	ldr     r0,  [pc, #0x10] @ [0x2208320] (=#0x221dc60)
	bl      Function_2208288
	cmp     r0, #0x0
	movne   r0, #0x1
	moveq   r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x2208320

.word 0x221dc60 @ 0x2208320
.arm
Function_2208324: @ 2208324 :arm
	stmfd   sp!, {r3,lr}
	cmp     r1, #0x1
	bne     branch_220833c
	ldr     r0,  [pc, #0x10] @ [0x2208348] (=#0x221a154)
	bl      Function_2206224
	ldmfd   sp!, {r3,pc}
@ 0x220833c

.arm
branch_220833c: @ 220833c :arm
	ldr     r0,  [pc, #0x8] @ [0x220834c] (=#0x221a13c)
	bl      Function_2206224
	ldmfd   sp!, {r3,pc}
@ 0x2208348

.word 0x221a154 @ 0x2208348
.word 0x221a13c @ 0x220834c

.incbin "./baserom/overlay/overlay_0004.bin", 0x375d0, 0x220837c - 0x2208350


.arm
Function_220837c: @ 220837c :arm
	stmfd   sp!, {r4,lr}
	ldrh    r2, [r1, #0x2]
	ldr     lr, [r1, #0x4]
	mov     r4, r2, asr #8
	mov     r1, r2, lsl #8
	mov     r3, lr, lsr #24
	mov     r2, lr, lsr #8
	mov     r12, lr, lsl #8
	mov     lr, lr, lsl #24
	and     r4, r4, #0xff
	and     r1, r1, #255, 24 @ #0xff00
	orr     r1, r4, r1
	mov     r1, r1, lsl #16
	and     r3, r3, #0xff
	and     r2, r2, #255, 24 @ #0xff00
	and     r12, r12, #255, 16 @ #0xff0000
	orr     r2, r3, r2
	and     r3, lr, #255, 8 @ #0xff000000
	orr     r2, r12, r2
	mov     r1, r1, lsr #16
	orr     r2, r3, r2
	bl      Function_2206878
	ldmfd   sp!, {r4,pc}
@ 0x22083d8


.incbin "./baserom/overlay/overlay_0004.bin", 0x37658, 0x22083fc - 0x22083d8


.arm
Function_22083fc: @ 22083fc :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x10
	add     r12, sp, #0xc
	str     r12, [sp]
	str     r3, [sp, #0x4]
	add     r3, sp, #0x8
	bl      Function_2206a3c
	cmp     r0, #0x0
	addlt   sp, sp, #0x10
	ldmltfd sp!, {r3,pc}
	ldr     r1, [sp, #0x18]
	cmp     r1, #0x0
	addeq   sp, sp, #0x10
	ldmeqfd sp!, {r3,pc}
	ldrh    r2, [sp, #0x8]
	mov     r3, r2, asr #8
	mov     r2, r2, lsl #8
	and     r3, r3, #0xff
	and     r2, r2, #255, 24 @ #0xff00
	orr     r2, r3, r2
	strh    r2, [r1, #0x2]
	ldr     lr, [sp, #0xc]
	mov     r3, lr, lsr #24
	mov     r2, lr, lsr #8
	mov     r12, lr, lsl #8
	mov     lr, lr, lsl #24
	and     r3, r3, #0xff
	and     r2, r2, #255, 24 @ #0xff00
	and     r12, r12, #255, 16 @ #0xff0000
	orr     r2, r3, r2
	and     r3, lr, #255, 8 @ #0xff000000
	orr     r2, r12, r2
	orr     r2, r3, r2
	str     r2, [r1, #0x4]
	add     sp, sp, #0x10
	ldmfd   sp!, {r3,pc}
@ 0x220848c

.arm
Function_220848c: @ 220848c :arm
	stmfd   sp!, {r3,lr}
	sub     sp, sp, #0x8
	mov     r12, #0x0
	str     r12, [sp]
	str     r3, [sp, #0x4]
	mov     r3, r12
	bl      Function_220729c
	add     sp, sp, #0x8
	ldmfd   sp!, {r3,pc}
@ 0x22084b0

.arm
Function_22084b0: @ 22084b0 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	ldr     r5, [sp, #0x20]
	cmp     r5, #0x0
	moveq   r5, #0x0
	moveq   r4, r5
	beq     branch_220851c
	ldrh    r4, [r5, #0x2]
	ldr     r6, [r5, #0x4]
	mov     r7, r4, asr #8
	mov     r12, r4, lsl #8
	mov     r4, r6, lsr #24
	mov     lr, r6, lsr #8
	mov     r5, r6, lsl #8
	mov     r6, r6, lsl #24
	and     r7, r7, #0xff
	and     r12, r12, #255, 24 @ #0xff00
	orr     r7, r7, r12
	and     r4, r4, #0xff
	and     lr, lr, #255, 24 @ #0xff00
	and     r5, r5, #255, 16 @ #0xff0000
	orr     r4, r4, lr
	mov     r12, r7, lsl #16
	orr     r4, r5, r4
	and     r6, r6, #255, 8 @ #0xff000000
	mov     r5, r12, lsr #16
	orr     r4, r6, r4
.arm
branch_220851c: @ 220851c :arm
	str     r4, [sp]
	str     r3, [sp, #0x4]
	mov     r3, r5
	bl      Function_220729c
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x2208534


.incbin "./baserom/overlay/overlay_0004.bin", 0x377b4, 0x2208540 - 0x2208534


.arm
Function_2208540: @ 2208540 :arm
	ldr     r12,  [pc, #0x0] @ [0x2208548] (=Function_2207a4c)
	bx      r12
@ 0x2208548

.word Function_2207a4c @ =0x2207a4c, 0x2208548



.arm
Function_220854c: @ 220854c :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_2207f58
	movs    r4, r0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r0,  [pc, #0x88] @ [0x22085f4] (=#0x221dcec)
	ldr     r2,  [pc, #0x88] @ [0x22085f8] (=#0x101)
	mov     r1, #0x0
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0x78] @ [0x22085f4] (=#0x221dcec)
	ldr     r2,  [pc, #0x78] @ [0x22085f8] (=#0x101)
	mov     r1, r5
	bl      Function_20d3354
	mov     r3, r4, lsr #24
	mov     r2, r4, lsr #8
	mov     r12, r4, lsl #8
	mov     lr, r4, lsl #24
	ldr     r4,  [pc, #0x58] @ [0x22085f4] (=#0x221dcec)
	ldr     r1,  [pc, #0x5c] @ [0x22085fc] (=#0x221dc64)
	mov     r0, #0x0
	str     r4, [r1, #0x20]
	str     r0, [r1, #0x24]
	mov     r4, #0x2
	strh    r4, [r1, #0x28]
	mov     r4, #0x4
	ldr     r5,  [pc, #0x44] @ [0x2208600] (=#0x221dc7c)
	strh    r4, [r1, #0x2a]
	and     r3, r3, #0xff
	and     r2, r2, #255, 24 @ #0xff00
	ldr     r4,  [pc, #0x38] @ [0x2208604] (=#0x221dc64)
	str     r5, [r1, #0x2c]
	str     r4, [r1, #0x18]
	and     r12, r12, #255, 16 @ #0xff0000
	orr     r2, r3, r2
	and     r3, lr, #255, 8 @ #0xff000000
	orr     r2, r12, r2
	str     r0, [r1, #0x1c]
	orr     r2, r3, r2
	ldr     r0,  [pc, #0x18] @ [0x2208608] (=#0x221dc84)
	str     r2, [r1]
	ldmfd   sp!, {r3-r5,pc}
@ 0x22085f4

.word 0x221dcec @ 0x22085f4
.word 0x101 @ 0x22085f8
.word 0x221dc64 @ 0x22085fc
.word 0x221dc7c @ 0x2208600
.word 0x221dc64 @ 0x2208604
.word 0x221dc84 @ 0x2208608

.incbin "./baserom/overlay/overlay_0004.bin", 0x3788c, 0x22089e8 - 0x220860c


.arm
Function_22089e8: @ 22089e8 :arm
	ldr     r12,  [pc, #0x0] @ [0x22089f0] (=#0x2207d90)
	bx      r12
@ 0x22089f0

.word 0x2207d90 @ 0x22089f0



.arm
Function_22089f4: @ 22089f4 :arm
	stmfd   sp!, {r0-r3}
	stmfd   sp!, {r3,lr}
	ldr     r2,  [pc, #0x1c] @ [0x2208a20] (=#0x221dcdc)
	add     r1, sp, #0x8
	mov     r0, #0x2
	mov     r3, #0x10
	bl      Function_2208a74
	ldr     r0,  [pc, #0x8] @ [0x2208a20] (=#0x221dcdc)
	ldmfd   sp!, {r3,lr}
	add     sp, sp, #0x10
	bx      lr
@ 0x2208a20

.word 0x221dcdc @ 0x2208a20
.arm
Function_2208a24: @ 2208a24 :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r1
	bl      Function_2208008
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r4,pc}
	mov     r2, r0, lsr #24
	mov     r1, r0, lsr #8
	mov     r3, r0, lsl #8
	mov     r12, r0, lsl #24
	and     r2, r2, #0xff
	and     r0, r1, #255, 24 @ #0xff00
	and     r1, r3, #255, 16 @ #0xff0000
	orr     r0, r2, r0
	and     r2, r12, #255, 8 @ #0xff000000
	orr     r0, r1, r0
	orr     r0, r2, r0
	str     r0, [r4]
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}
@ 0x2208a74

.arm
Function_2208a74: @ 2208a74 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x14
	cmp     r0, #0x2
	mov     r4, r2
	addne   sp, sp, #0x14
	movne   r0, #0x0
	ldmnefd sp!, {r3,r4,pc}
	cmp     r3, #0x10
	addcc   sp, sp, #0x14
	movcc   r0, #0x0
	ldmccfd sp!, {r3,r4,pc}
	mov     r0, r1
	add     r1, sp, #0x10
	mov     r2, #0x4
	bl      Function_20c4db0
	ldr     r0, [sp, #0x10]
	add     r1, sp, #0xc
	bl      Function_2208af8
	ldrb    r1, [sp, #0xe]
	ldr     r2,  [pc, #0x2c] @ [0x2208af4] (=#0x221a184)
	mov     r0, r4
	str     r1, [sp]
	ldrb    r3, [sp, #0xd]
	mov     r1, #0x10
	str     r3, [sp, #0x4]
	ldrb    r3, [sp, #0xc]
	str     r3, [sp, #0x8]
	ldrb    r3, [sp, #0xf]
	bl      Function_20c1af0
	mov     r0, r4
	add     sp, sp, #0x14
	ldmfd   sp!, {r3,r4,pc}
@ 0x2208af4

.word 0x221a184 @ 0x2208af4
.arm
Function_2208af8: @ 2208af8 :arm
	mov     r2, r0, lsr #24
	strb    r2, [r1]
	mov     r2, r0, lsr #16
	strb    r2, [r1, #0x1]
	mov     r2, r0, lsr #8
	strb    r2, [r1, #0x2]
	strb    r0, [r1, #0x3]
	bx      lr
@ 0x2208b18

.arm
Function_2208b18: @ 2208b18 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r9, r2
	mov     r8, r3
	mvn     r2, #0x0
	cmp     r8, r2
	cmpeq   r9, r2
	movne   r11, #0x1
	str     r0, [sp]
	mov     r10, r1
	moveq   r11, #0x0
.arm
branch_2208b40: @ 2208b40 :arm
	mov     r6, #0x0
	ldr     r4, [sp]
	mov     r5, r6
	cmp     r10, #0x0
	bls     branch_2208b80
.arm
branch_2208b54: @ 2208b54 :arm
	ldrsh   r1, [r4, #0x4]
	ldr     r0, [r4]
	orr     r7, r1, #0xe0
	bl      Function_22080f0
	ands    r0, r7, r0
	strh    r0, [r4, #0x6]
	add     r5, r5, #0x1
	addne   r6, r6, #0x1
	add     r4, r4, #0x8
	cmp     r5, r10
	bcc     branch_2208b54
.arm
branch_2208b80: @ 2208b80 :arm
	cmp     r6, #0x0
	bgt     branch_2208bc0
	cmp     r11, #0x0
	beq     branch_2208ba4
	mov     r0, #0x0
	subs    r0, r0, r9
	mov     r0, #0x0
	sbcs    r0, r0, r8
	bge     branch_2208bc0
.arm
branch_2208ba4: @ 2208ba4 :arm
	mov     r0, #0x1
	bl      Function_20c24a4
	ldr     r0,  [pc, #0x14] @ [0x2208bc8] (=#0x20b)
	subs    r9, r9, r0
	mov     r0, #0x0
	sbc     r8, r8, r0
	b       branch_2208b40
@ 0x2208bc0

.arm
branch_2208bc0: @ 2208bc0 :arm
	mov     r0, r6
	ldmfd   sp!, {r3-r11,pc}
@ 0x2208bc8

.word 0x20b @ 0x2208bc8

.incbin "./baserom/overlay/overlay_0004.bin", 0x37e4c, 0x2208df0 - 0x2208bcc


.arm
Function_2208df0: @ 2208df0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x18] @ [0x2208e14] (=#0x221ddf0)
	ldr     r0, [r0, #0x24]
	cmp     r0, #0x0
	bne     branch_2208e0c
	bl      Function_20c233c
	ldmfd   sp!, {r3,pc}
@ 0x2208e0c

.arm
branch_2208e0c: @ 2208e0c :arm
	bl      Function_20c24a4
	ldmfd   sp!, {r3,pc}
@ 0x2208e14

.word 0x221ddf0 @ 0x2208e14

.incbin "./baserom/overlay/overlay_0004.bin", 0x38098, 0x2209060 - 0x2208e18


.arm
Function_2209060: @ 2209060 :arm
	stmfd   sp!, {r3-r5,lr}
	bl      Function_20c3d98
	mov     r4, r0
	ldr     r0,  [pc, #0x34] @ [0x22090a8] (=#0x221df98)
	bl      Function_20c2204
	movs    r5, r0
	ldreq   r1,  [pc, #0x2c] @ [0x22090ac] (=#0x221ddf0)
	ldreq   r0, [r1, #0x44]
	cmpeq   r0, #0x0
	bne     branch_2209098
	ldr     r0,  [pc, #0x18] @ [0x22090a8] (=#0x221df98)
	mov     r2, #0x1
	str     r2, [r1, #0x44]
	bl      Function_20c22d0
.arm
branch_2209098: @ 2209098 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, r5
	ldmfd   sp!, {r3-r5,pc}
@ 0x22090a8

.word 0x221df98 @ 0x22090a8
.word 0x221ddf0 @ 0x22090ac

.incbin "./baserom/overlay/overlay_0004.bin", 0x38330, 0x2209140 - 0x22090b0


.arm
Function_2209140: @ 2209140 :arm
	tst     r0, #0x1
	beq     branch_2209178
	cmp     r1, #0x1
	bls     branch_22091c8
.arm
branch_2209150: @ 2209150 :arm
	ldrb    r12, [r0]
	ldrb    r3, [r0, #0x1]
	sub     r1, r1, #0x2
	cmp     r1, #0x1
	orr     r3, r3, r12, lsl #8
	mov     r3, r3, lsl #16
	add     r2, r2, r3, lsr #16
	add     r0, r0, #0x2
	bhi     branch_2209150
	b       branch_22091c8
@ 0x2209178

.arm
branch_2209178: @ 2209178 :arm
	mov     r2, r2, lsl #16
	mov     r3, r2, lsr #16
	mov     r2, r3, lsl #8
	orr     r2, r2, r3, asr #8
	mov     r2, r2, lsl #16
	cmp     r1, #0x1
	mov     r2, r2, lsr #16
	bls     branch_22091ac
.arm
branch_2209198: @ 2209198 :arm
	ldrh    r3, [r0], #0x2
	sub     r1, r1, #0x2
	cmp     r1, #0x1
	add     r2, r2, r3
	bhi     branch_2209198
.arm
branch_22091ac: @ 22091ac :arm
	ldr     r3,  [pc, #0x3c] @ [0x22091f0] (=#0xff00ff)
	mov     r12, r3, lsl #8
	and     r3, r3, r2, lsr #8
	and     r2, r12, r2, lsl #8
	orr     r3, r3, r2
	mov     r2, r3, lsl #16
	orr     r2, r2, r3, lsr #16
.arm
branch_22091c8: @ 22091c8 :arm
	cmp     r1, #0x0
	ldrneb  r0, [r0]
	addne   r2, r2, r0, lsl #8
	mov     r0, r2, lsl #16
	mov     r1, r2, lsr #16
	add     r0, r1, r0, lsr #16
	add     r0, r0, r0, lsr #16
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bx      lr
@ 0x22091f0

.word 0xff00ff @ 0x22091f0
.arm
Function_22091f4: @ 22091f4 :arm
	ldr     r1,  [pc, #0x10] @ [0x220920c] (=#0xffff)
	eor     r0, r0, r1
	mov     r0, r0, lsl #16
	movs    r0, r0, lsr #16
	moveq   r0, r1
	bx      lr
@ 0x220920c

.word 0xffff @ 0x220920c
.arm
Function_2209210: @ 2209210 :arm
	stmfd   sp!, {r3,lr}
	mov     r2, #0x0
	bl      Function_2209140
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      Function_22091f4
	ldmfd   sp!, {r3,pc}
@ 0x220922c


.incbin "./baserom/overlay/overlay_0004.bin", 0x384ac, 0x220927c - 0x220922c


.arm
Function_220927c: @ 220927c :arm
	mov     r12, #0x1
	sub     r1, r12, #0x2
	cmp     r0, r1
	subne   r1, r12, #129, 8 @ #0x81000000
	cmpne   r0, r1
	beq     branch_22092b0
	ldr     r1,  [pc, #0x1c] @ [0x22092b8] (=#0x221ddf0)
	ldr     r3, [r1, #0x1c]
	ldr     r1, [r1, #0x50]
	and     r2, r0, r3
	and     r0, r1, r3
	cmp     r2, r0
	movne   r12, #0x0
.arm
branch_22092b0: @ 22092b0 :arm
	mov     r0, r12
	bx      lr
@ 0x22092b8

.word 0x221ddf0 @ 0x22092b8
.arm
Function_22092bc: @ 22092bc :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_220927c
	cmp     r0, #0x0
	ldreq   r0,  [pc, #0x8] @ [0x22092dc] (=#0x221ddf0)
	ldreq   r4, [r0, #0x2c]
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x22092dc

.word 0x221ddf0 @ 0x22092dc
.arm
Function_22092e0: @ 22092e0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
	bl      Function_220927c
	cmp     r0, #0x0
	beq     branch_2209310
	ldr     r0,  [pc, #0x18] @ [0x2209318] (=#0x221ddf0)
	ldr     r0, [r0, #0x1c]
	mvn     r1, r0
	and     r0, r1, r5
	cmp     r1, r0
	moveq   r4, #0x1
.arm
branch_2209310: @ 2209310 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2209318

.word 0x221ddf0 @ 0x2209318
.arm
Function_220931c: @ 220931c :arm
	and     r0, r0, #15, 4 @ #0xf0000000
	cmp     r0, #14, 4 @ #0xe0000000
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x2209330


.incbin "./baserom/overlay/overlay_0004.bin", 0x385b0, 0x22093dc - 0x2209330


.arm
Function_22093dc: @ 22093dc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	ldr     r0,  [pc, #0x3c] @ [0x2209430] (=#0x221a19c)
	add     r1, r7, #0x6
	mov     r2, #0x6
	mov     r4, r3
	bl      Function_20c4db0
	mov     r0, r7
	mov     r3, r5
	add     r1, r7, #0x6
	sub     r2, r6, #0x6
	str     r4, [sp]
	bl      Function_221545c
	cmp     r0, #0x0
	movlt   r1, #0x1
	ldr     r0,  [pc, #0xc] @ [0x2209434] (=#0x221ddf0)
	movge   r1, #0x0
	strb    r1, [r0]
	ldmfd   sp!, {r3-r7,pc}
@ 0x2209430

.word 0x221a19c @ 0x2209430
.word 0x221ddf0 @ 0x2209434
.arm
Function_2209438: @ 2209438 :arm
	stmfd   sp!, {r4-r8,lr}
	ldr     r4,  [pc, #0x1dc] @ [0x2209620] (=#0x221ddf0)
	mov     r7, r0
	ldr     r12, [r4, #0x58]
	mov     r6, r2
	cmp     r12, #0x0
	ldrne   r0, [r4, #0x5c]
	mov     r5, r3
	cmpne   r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	ldr     r0, [sp, #0x1c]
	add     r0, r5, r0
	cmp     r0, #0x8
	ldmccfd sp!, {r4-r8,pc}
	ldr     r2,  [pc, #0x1ac] @ [0x2209624] (=#0x5e4)
	cmp     r0, r2
	ldmhifd sp!, {r4-r8,pc}
	ldr     r2,  [pc, #0x1a4] @ [0x2209628] (=#0x221a19c)
	ldrb    r4, [r6]
	ldrb    r3, [r2]
	cmp     r4, r3
	ldreqb  r4, [r6, #0x1]
	ldreqb  r3, [r2, #0x1]
	cmpeq   r4, r3
	ldreqb  r3, [r6, #0x2]
	ldreqb  r2, [r2, #0x2]
	cmpeq   r3, r2
	ldreqb  r2, [r6, #0x6]
	cmpeq   r2, #0x8
	ldmnefd sp!, {r4-r8,pc}
	ldrb    r2, [r6, #0x7]
	cmp     r2, #0x0
	cmpne   r2, #0x6
	ldmnefd sp!, {r4-r8,pc}
	ldr     r2,  [pc, #0x158] @ [0x2209620] (=#0x221ddf0)
	add     r0, r0, #0x9
	bic     r0, r0, #0x1
	ldr     r8, [r2, #0x28]
	mov     r0, r0, lsl #16
	ldr     lr, [r2, #0x28]
	ldr     r4, [r2, #0x30]
	mov     r3, r0, lsr #16
	cmp     lr, r4
	add     r4, r8, r0, lsr #16
	bcs     branch_22094f8
	ldr     r0, [r2, #0x30]
	cmp     r0, r4
	ldmlsfd sp!, {r4-r8,pc}
.arm
branch_22094f8: @ 22094f8 :arm
	ldr     r0,  [pc, #0x120] @ [0x2209620] (=#0x221ddf0)
	ldr     r2, [r0, #0x5c]
	cmp     r4, r2
	bne     branch_220951c
	ldr     r0, [r0, #0x30]
	mov     r4, #0x0
	cmp     r0, #0x0
	bne     branch_2209538
	ldmfd   sp!, {r4-r8,pc}
@ 0x220951c

.arm
branch_220951c: @ 220951c :arm
	ldr     r2, [r0, #0x5c]
	cmp     r4, r2
	bls     branch_2209538
	ldr     r0, [r0, #0x30]
	mov     r4, r3
	cmp     r0, r3
	ldmlsfd sp!, {r4-r8,pc}
.arm
branch_2209538: @ 2209538 :arm
	ldr     r0,  [pc, #0xe0] @ [0x2209620] (=#0x221ddf0)
	ldr     lr, [r0, #0x28]
	ldr     r2, [r0, #0x5c]
	add     lr, lr, r3
	cmp     lr, r2
	bls     branch_2209578
	ldr     lr, [r0, #0x5c]
	ldr     r2, [r0, #0x28]
	sub     r2, lr, r2
	cmp     r2, #0x2
	ldrcs   r0, [r0, #0x28]
	movcs   r2, #0x0
	strcsh  r2, [r12, r0]
	ldr     r0,  [pc, #0xac] @ [0x2209620] (=#0x221ddf0)
	mov     r2, #0x0
	str     r2, [r0, #0x28]
.arm
branch_2209578: @ 2209578 :arm
	ldr     r12,  [pc, #0xa0] @ [0x2209620] (=#0x221ddf0)
	mov     r0, r1
	ldr     lr, [r12, #0x58]
	ldr     r1, [r12, #0x28]
	mov     r2, #0x6
	strh    r3, [lr, r1]
	ldr     r3, [r12, #0x58]
	ldr     r1, [r12, #0x28]
	add     r1, r3, r1
	add     r1, r1, #0x2
	bl      Function_20c4db0
	ldr     r1,  [pc, #0x74] @ [0x2209620] (=#0x221ddf0)
	mov     r0, r7
	ldr     r3, [r1, #0x58]
	ldr     r1, [r1, #0x28]
	mov     r2, #0x6
	add     r1, r3, r1
	add     r1, r1, #0x8
	bl      Function_20c4db0
	ldr     r1,  [pc, #0x54] @ [0x2209620] (=#0x221ddf0)
	add     r0, r6, #0x6
	ldr     r3, [r1, #0x58]
	ldr     r1, [r1, #0x28]
	sub     r2, r5, #0x6
	add     r1, r3, r1
	add     r1, r1, #0xe
	bl      Function_20c4db0
	ldr     r0, [sp, #0x18]
	cmp     r0, #0x0
	ldrne   r2, [sp, #0x1c]
	cmpne   r2, #0x0
	beq     branch_2209614
	ldr     r1,  [pc, #0x20] @ [0x2209620] (=#0x221ddf0)
	ldr     r3, [r1, #0x58]
	ldr     r1, [r1, #0x28]
	add     r1, r3, r1
	add     r1, r1, #0x8
	add     r1, r1, r5
	bl      Function_20c4db0
.arm
branch_2209614: @ 2209614 :arm
	ldr     r0,  [pc, #0x4] @ [0x2209620] (=#0x221ddf0)
	str     r4, [r0, #0x28]
	ldmfd   sp!, {r4-r8,pc}
@ 0x2209620

.word 0x221ddf0 @ 0x2209620
.word 0x5e4 @ 0x2209624
.word 0x221a19c @ 0x2209628

.incbin "./baserom/overlay/overlay_0004.bin", 0x388ac, 0x2209788 - 0x220962c


.arm
Function_2209788: @ 2209788 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r5, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0xa4] @ [0x2209840] (=#0x7f000001)
	mov     r4, r0
	cmp     r5, r1
	ldrne   r0,  [pc, #0x9c] @ [0x2209844] (=#0x221ddf0)
	mov     r7, #0x0
	ldrne   r0, [r0, #0x50]
	cmpne   r5, r0
	ldreq   r7,  [pc, #0x90] @ [0x2209848] (=#0x221e2d8)
	beq     branch_2209830
	mov     r0, r5
	bl      Function_22092e0
	cmp     r0, #0x0
	bne     branch_22097d8
	mov     r0, r5
	bl      Function_220931c
	cmp     r0, #0x0
	beq     branch_22097e0
.arm
branch_22097d8: @ 22097d8 :arm
	ldr     r7,  [pc, #0x6c] @ [0x220984c] (=#0x221a194)
	b       branch_2209830
@ 0x22097e0

.arm
branch_22097e0: @ 22097e0 :arm
	ldr     r1,  [pc, #0x68] @ [0x2209850] (=#0x221de70)
	mov     r6, r7
.arm
branch_22097e8: @ 22097e8 :arm
	ldr     r0, [r1]
	cmp     r5, r0
	bne     branch_2209820
	bl      Function_20c3880
	mov     r2, #0xc
	mul     r3, r6, r2
	ldr     r2,  [pc, #0x48] @ [0x2209850] (=#0x221de70)
	mov     r5, r0, lsr #16
	add     r0, r2, r3
	ldr     r2,  [pc, #0x40] @ [0x2209854] (=#0x221de7a)
	orr     r5, r5, r1, lsl #16
	strh    r5, [r2, r3]
	add     r7, r0, #0x4
	b       branch_2209830
@ 0x2209820

.arm
branch_2209820: @ 2209820 :arm
	add     r6, r6, #0x1
	cmp     r6, #0x8
	add     r1, r1, #0xc
	bcc     branch_22097e8
.arm
branch_2209830: @ 2209830 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, r7
	ldmfd   sp!, {r3-r7,pc}
@ 0x2209840

.word 0x7f000001 @ 0x2209840
.word 0x221ddf0 @ 0x2209844
.word 0x221e2d8 @ 0x2209848
.word 0x221a194 @ 0x220984c
.word 0x221de70 @ 0x2209850
.word 0x221de7a @ 0x2209854



.arm
Function_2209858: @ 2209858 :arm
	stmfd   sp!, {r3,r4,lr}
	sub     sp, sp, #0x2c
	mov     r4, r0
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x2a
	bl      Function_20c4cf4
	add     r0, sp, #0x0
	mov     r1, #0xff
	mov     r2, #0x6
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0xb8] @ [0x2209944] (=#0x221e2d8)
	add     r1, sp, #0x6
	mov     r2, #0x6
	bl      Function_20c4db0
	mov     r0, #0x1
	ldr     r1,  [pc, #0xa8] @ [0x2209948] (=#0x608)
	strb    r0, [sp, #0xf]
	strh    r1, [sp, #0xc]
	strb    r0, [sp, #0x15]
	mov     r0, #0x8
	ldr     r1,  [pc, #0x98] @ [0x220994c] (=#0x406)
	strb    r0, [sp, #0x10]
	strh    r1, [sp, #0x12]
	ldr     r0,  [pc, #0x84] @ [0x2209944] (=#0x221e2d8)
	add     r1, sp, #0x16
	mov     r2, #0x6
	bl      Function_20c4db0
	ldr     r0,  [pc, #0x80] @ [0x2209950] (=#0x221ddf0)
	mov     r1, r4, lsr #16
	ldr     r3, [r0, #0x50]
	mov     r0, r1, lsl #16
	mov     r2, r0, lsr #16
	mov     r0, r4, lsl #16
	mov     r1, r0, lsr #16
	mov     r0, r3, lsr #16
	mov     r0, r0, lsl #16
	mov     r4, r0, lsr #16
	mov     r0, r3, lsl #16
	mov     r3, r0, lsr #16
	mov     r0, r4, lsl #8
	orr     r0, r0, r4, asr #8
	strh    r0, [sp, #0x1c]
	mov     r0, r3, lsl #8
	orr     r0, r0, r3, asr #8
	strh    r0, [sp, #0x1e]
	mov     r0, r2, lsl #8
	orr     r0, r0, r2, asr #8
	strh    r0, [sp, #0x26]
	mov     r0, r1, lsl #8
	orr     r0, r0, r1, asr #8
	mov     r2, #0x0
	strh    r0, [sp, #0x28]
	add     r0, sp, #0x0
	mov     r1, #0x2a
	mov     r3, r2
	bl      Function_22093dc
	add     sp, sp, #0x2c
	ldmfd   sp!, {r3,r4,pc}
@ 0x2209944

.word 0x221e2d8 @ 0x2209944
.word 0x608 @ 0x2209948
.word 0x406 @ 0x220994c
.word 0x221ddf0 @ 0x2209950
.arm
Function_2209954: @ 2209954 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r7, #0x0
	ldr     r4,  [pc, #0x5c] @ [0x22099c0] (=#0x221ddf0)
	mov     r9, r0
	mov     r5, #0x64
	mov     r6, r7
.arm
branch_220996c: @ 220996c :arm
	mov     r0, r9
	bl      Function_2209858
	mov     r8, r6
.arm
branch_2209978: @ 2209978 :arm
	ldr     r0, [r4, #0x50]
	cmp     r0, #0x0
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r9,pc}
	mov     r0, r5
	bl      Function_20c24a4
	mov     r0, r9
	bl      Function_2209788
	cmp     r0, #0x0
	ldmnefd sp!, {r3-r9,pc}
	add     r8, r8, #0x1
	cmp     r8, #0x14
	bcc     branch_2209978
	add     r7, r7, #0x1
	cmp     r7, #0x8
	bcc     branch_220996c
	mov     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x22099c0

.word 0x221ddf0 @ 0x22099c0

.incbin "./baserom/overlay/overlay_0004.bin", 0x38c44, 0x2209b00 - 0x22099c4


.arm
Function_2209b00: @ 2209b00 :arm
	stmfd   sp!, {r4-r8,lr}
	ldrh    r5, [sp, #0x1c]
	ldr     r4, [sp, #0x18]
	mov     r8, r0
	mov     r0, r5, lsl #8
	orr     r12, r0, r5, asr #8
	mov     r0, r4
	mov     r7, r1
	mov     r6, r2
	mov     r5, r3
	strh    r12, [r8, #-0x2]
	bl      Function_220931c
	cmp     r0, #0x0
	bne     branch_2209b74
	mov     r0, r4
	bl      Function_22092bc
	movs    r4, r0
	ldmeqfd sp!, {r4-r8,pc}
	bl      Function_2209788
	cmp     r0, #0x0
	bne     branch_2209b5c
	mov     r0, r4
	bl      Function_2209954
.arm
branch_2209b5c: @ 2209b5c :arm
	cmp     r0, #0x0
	ldmeqfd sp!, {r4-r8,pc}
	sub     r1, r8, #0xe
	mov     r2, #0x6
	bl      Function_20c4db0
	b       branch_2209ba4
@ 0x2209b74

.arm
branch_2209b74: @ 2209b74 :arm
	mov     r0, #0x1
	strb    r0, [r8, #-0xe]
	mov     r1, #0x0
	mov     r0, r4, lsr #16
	strb    r1, [r8, #-0xd]
	mov     r1, #0x5e
	strb    r1, [r8, #-0xc]
	and     r0, r0, #0x7f
	strb    r0, [r8, #-0xb]
	mov     r0, r4, lsr #8
	strb    r0, [r8, #-0xa]
	strb    r4, [r8, #-0x9]
.arm
branch_2209ba4: @ 2209ba4 :arm
	ldr     r0,  [pc, #0x20] @ [0x2209bcc] (=#0x221e2d8)
	sub     r1, r8, #0x8
	mov     r2, #0x6
	bl      Function_20c4db0
	mov     r2, r6
	mov     r3, r5
	sub     r0, r8, #0xe
	add     r1, r7, #0xe
	bl      Function_22093dc
	ldmfd   sp!, {r4-r8,pc}
@ 0x2209bcc

.word 0x221e2d8 @ 0x2209bcc
.arm
Function_2209bd0: @ 2209bd0 :arm
	stmfd   sp!, {r4-r8,lr}
	sub     sp, sp, #0x8
	mov     r7, r1
	mov     r5, r3
	add     r1, r7, #0x14
	add     r1, r1, r5
	mov     r1, r1, lsl #16
	ldr     r3, [sp, #0x24]
	mov     r4, r1, lsr #16
	mov     r1, r3, lsl #16
	mov     r3, r4, lsl #8
	orr     r3, r3, r4, asr #8
	mov     r8, r0
	mov     r1, r1, lsr #16
	mov     r0, r1, lsl #8
	strh    r3, [r8, #-0x12]
	orr     r0, r0, r1, asr #8
	strh    r0, [r8, #-0xe]
	mov     r3, #0x0
	sub     r0, r8, #0x14
	mov     r1, #0x14
	mov     r6, r2
	strh    r3, [r8, #-0xa]
	ldr     r4, [sp, #0x20]
	bl      Function_2209210
	mov     r2, r0, lsl #8
	ldr     r1,  [pc, #0xa8] @ [0x2209ce8] (=#0x7f000001)
	orr     r0, r2, r0, asr #8
	strh    r0, [r8, #-0xa]
	cmp     r4, r1
	ldrne   r0,  [pc, #0x9c] @ [0x2209cec] (=#0x221ddf0)
	ldrne   r0, [r0, #0x50]
	cmpne   r4, r0
	beq     branch_2209c78
	mov     r2, r6
	mov     r3, r5
	str     r4, [sp]
	mov     r12, #2, 22 @ #0x800
	sub     r0, r8, #0x14
	add     r1, r7, #0x14
	str     r12, [sp, #0x4]
	bl      Function_2209b00
.arm
branch_2209c78: @ 2209c78 :arm
	ldr     r0,  [pc, #0x68] @ [0x2209ce8] (=#0x7f000001)
	cmp     r4, r0
	ldrne   r0,  [pc, #0x64] @ [0x2209cec] (=#0x221ddf0)
	ldrne   r0, [r0, #0x50]
	cmpne   r4, r0
	beq     branch_2209ca4
	mov     r0, r4
	bl      Function_220931c
	cmp     r0, #0x0
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r4-r8,pc}
.arm
branch_2209ca4: @ 2209ca4 :arm
	ldr     r0,  [pc, #0x44] @ [0x2209cf0] (=#0x221a19c)
	sub     r1, r8, #0x1c
	mov     r2, #0x8
	bl      Function_20c4db0
	bl      Function_20c3d98
	mov     r4, r0
	ldr     r0,  [pc, #0x30] @ [0x2209cf4] (=#0x221e2d8)
	str     r6, [sp]
	mov     r1, r0
	str     r5, [sp, #0x4]
	sub     r2, r8, #0x1c
	add     r3, r7, #0x1c
	bl      Function_2209438
	mov     r0, r4
	bl      Function_20c3dac
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r8,pc}
@ 0x2209ce8

.word 0x7f000001 @ 0x2209ce8
.word 0x221ddf0 @ 0x2209cec
.word 0x221a19c @ 0x2209cf0
.word 0x221e2d8 @ 0x2209cf4
.arm
Function_2209cf8: @ 2209cf8 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x8
	mov     r10, r0
	mov     r0, #0x45
	strb    r0, [r10, #-0x14]
	mov     r4, #0x0
	ldr     r7,  [pc, #0x1d0] @ [0x2209ee8] (=#0x221ddf0)
	strb    r4, [r10, #-0x13]
	ldrh    r0, [r7, #0x6]
	ldr     r6, [sp, #0x30]
	ldrb    r5, [sp, #0x34]
	add     r0, r0, #0x1
	strh    r0, [r7, #0x6]
	ldrh    r11, [r7, #0x6]
	mov     r0, r6, lsr #16
	mov     r8, #0x80
	mov     r9, r11, lsl #8
	orr     r9, r9, r11, asr #8
	strh    r9, [r10, #-0x10]
	strb    r8, [r10, #-0xc]
	strb    r5, [r10, #-0xb]
	ldr     r8, [r7, #0x50]
	mov     r5, r0, lsl #16
	mov     r0, r8, lsr #16
	mov     r0, r0, lsl #16
	mov     r8, r0, lsr #16
	mov     r0, r8, lsl #8
	orr     r0, r0, r8, asr #8
	strh    r0, [r10, #-0x8]
	ldr     r0, [r7, #0x50]
	mov     r8, r5, lsr #16
	mov     r0, r0, lsl #16
	mov     r7, r0, lsr #16
	mov     r5, r7, lsl #8
	mov     r0, r6, lsl #16
	orr     r9, r5, r7, asr #8
	mov     r7, r8, lsl #8
	mov     r5, r0, lsr #16
	mov     r0, r5, lsl #8
	strh    r9, [r10, #-0x6]
	orr     r7, r7, r8, asr #8
	ldr     r11,  [pc, #0x148] @ [0x2209eec] (=#0x5c8)
	mov     r9, r1
	strh    r7, [r10, #-0x4]
	orr     r0, r0, r5, asr #8
	mov     r8, r2
	mov     r7, r3
	strh    r0, [r10, #-0x2]
	cmp     r9, r11
	bls     branch_2209e64
	mov     r5, r10
	bls     branch_2209e08
.arm
branch_2209dc8: @ 2209dc8 :arm
	mov     r0, r10
	mov     r1, #0x0
	mov     r2, r5
	mov     r3, r11
	str     r6, [sp]
	orr     r12, r4, #2, 20 @ #0x2000
	str     r12, [sp, #0x4]
	bl      Function_2209bd0
	add     r1, r4, #0xb9
	add     r0, r5, #114, 30 @ #0x1c8
	sub     r9, r9, r11
	mov     r1, r1, lsl #16
	cmp     r9, r11
	add     r5, r0, #1, 22 @ #0x400
	mov     r4, r1, lsr #16
	bhi     branch_2209dc8
.arm
branch_2209e08: @ 2209e08 :arm
	cmp     r9, #0x0
	beq     branch_2209e64
	cmp     r7, #0x0
	mov     r1, #0x0
	beq     branch_2209e3c
	mov     r2, r5
	mov     r0, r10
	mov     r3, r9
	str     r6, [sp]
	orr     r5, r4, #2, 20 @ #0x2000
	str     r5, [sp, #0x4]
	bl      Function_2209bd0
	b       branch_2209e54
@ 0x2209e3c

.arm
branch_2209e3c: @ 2209e3c :arm
	str     r6, [sp]
	mov     r0, r10
	mov     r2, r5
	mov     r3, r9
	str     r4, [sp, #0x4]
	bl      Function_2209bd0
.arm
branch_2209e54: @ 2209e54 :arm
	add     r0, r4, r9, lsr #3
	mov     r0, r0, lsl #16
	mov     r4, r0, lsr #16
	mov     r9, #0x0
.arm
branch_2209e64: @ 2209e64 :arm
	ldr     r11,  [pc, #0x80] @ [0x2209eec] (=#0x5c8)
	add     r0, r9, r7
	cmp     r0, r11
	bls     branch_2209eb8
.arm
branch_2209e74: @ 2209e74 :arm
	sub     r5, r11, r9
	mov     r1, r9
	mov     r0, r10
	mov     r2, r8
	mov     r3, r5
	str     r6, [sp]
	orr     r9, r4, #2, 20 @ #0x2000
	str     r9, [sp, #0x4]
	bl      Function_2209bd0
	add     r0, r4, #0xb9
	sub     r7, r7, r5
	mov     r0, r0, lsl #16
	mov     r9, #0x0
	cmp     r7, r11
	add     r8, r8, r5
	mov     r4, r0, lsr #16
	bhi     branch_2209e74
.arm
branch_2209eb8: @ 2209eb8 :arm
	adds    r0, r9, r7
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r3-r11,pc}
	str     r6, [sp]
	mov     r0, r10
	mov     r1, r9
	mov     r2, r8
	mov     r3, r7
	str     r4, [sp, #0x4]
	bl      Function_2209bd0
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r11,pc}
@ 0x2209ee8

.word 0x221ddf0 @ 0x2209ee8
.word 0x5c8 @ 0x2209eec
.arm
Function_2209ef0: @ 2209ef0 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	mov     r5, r2
	ldr     r4, [r5, #0x4c]
	mov     r6, r1
	mov     r1, #0x8
	ldr     r3,  [pc, #0x88] @ [0x2209f98] (=#0x221ddf0)
	ldr     r2,  [pc, #0x88] @ [0x2209f9c] (=#0x21ccc80)
	strh    r1, [r4, #0x22]
	ldr     r2, [r2, #0x4]
	ldrh    lr, [r3, #0x4]
	mov     r7, r0
	strh    r2, [r4, #0x26]
	mov     r2, #0x0
	strh    r2, [r4, #0x24]
	strh    lr, [r5, #0xa]
	add     r12, lr, #0x1
	add     r0, r4, #0x22
	strh    r12, [r3, #0x4]
	strh    lr, [r4, #0x28]
	bl      Function_2209140
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2209140
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      Function_22091f4
	mov     r2, r7
	mov     r3, r6
	mov     r1, r0, lsl #8
	orr     r0, r1, r0, asr #8
	strh    r0, [r4, #0x24]
	ldr     r1, [r5, #0x1c]
	add     r0, r4, #0x22
	str     r1, [sp]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r1, #0x8
	bl      Function_2209cf8
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x2209f98

.word 0x221ddf0 @ 0x2209f98
.word 0x21ccc80 @ 0x2209f9c
.arm
Function_2209fa0: @ 2209fa0 :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x8
	ldr     r7,  [pc, #0x128] @ [0x220a0d8] (=#0x221ddf0)
	mov     r5, r2
	ldr     r2, [r7, #0x50]
	mov     r6, r1
	mov     r1, r2, lsr #16
	mov     r1, r1, lsl #16
	mov     r2, r1, lsr #16
	ldr     r3, [r5, #0x4c]
	mov     r1, r2, lsl #8
	add     r4, r3, #0x22
	orr     r1, r1, r2, asr #8
	strh    r1, [r4, #-0xc]
	ldr     r1, [r7, #0x50]
	add     r2, r6, #0x8
	mov     r1, r1, lsl #16
	mov     r7, r1, lsr #16
	mov     r1, r7, lsl #8
	orr     r1, r1, r7, asr #8
	strh    r1, [r4, #-0xa]
	ldr     r1, [r5, #0x1c]
	mov     r2, r2, lsl #16
	mov     r1, r1, lsr #16
	mov     r1, r1, lsl #16
	mov     r7, r1, lsr #16
	mov     r1, r7, lsl #8
	orr     r1, r1, r7, asr #8
	strh    r1, [r4, #-0x8]
	ldr     r1, [r5, #0x1c]
	mov     r2, r2, lsr #16
	mov     r1, r1, lsl #16
	mov     r7, r1, lsr #16
	mov     r1, r7, lsl #8
	orr     r7, r1, r7, asr #8
	mov     r1, r2, lsl #8
	strh    r7, [r4, #-0x6]
	mov     r7, #17, 24 @ #0x1100
	strh    r7, [r4, #-0x4]
	orr     r1, r1, r2, asr #8
	strh    r1, [r4, #0x4]
	ldrh    r1, [r4, #0x4]
	mov     r7, r0
	sub     r0, r4, #0xc
	strh    r1, [r4, #-0x2]
	ldrh    lr, [r5, #0x18]
	mov     r2, #0x0
	mov     r1, #0x14
	mov     r12, lr, lsl #8
	orr     r12, r12, lr, asr #8
	strh    r12, [r4, #0x2]
	ldrh    lr, [r5, #0xa]
	mov     r12, lr, lsl #8
	orr     r12, r12, lr, asr #8
	strh    r12, [r3, #0x22]
	strh    r2, [r4, #0x6]
	bl      Function_2209140
	mov     r2, r0
	mov     r0, r7
	mov     r1, r6
	bl      Function_2209140
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      Function_22091f4
	mov     r2, r7
	mov     r3, r6
	mov     r1, r0, lsl #8
	orr     r0, r1, r0, asr #8
	strh    r0, [r4, #0x6]
	ldr     r1, [r5, #0x1c]
	mov     r0, r4
	str     r1, [sp]
	mov     r1, #0x11
	str     r1, [sp, #0x4]
	mov     r1, #0x8
	bl      Function_2209cf8
	add     sp, sp, #0x8
	ldmfd   sp!, {r3-r7,pc}
@ 0x220a0d8

.word 0x221ddf0 @ 0x220a0d8
.arm
Function_220a0dc: @ 220a0dc :arm
	stmfd   sp!, {r4-r10,lr}
	sub     sp, sp, #0x8
	mov     r7, r2
	ldrb    r2, [r7, #0x8]
	mov     r9, r0
	mov     r8, r1
	cmp     r2, #0x0
	mov     r6, r3
	addeq   sp, sp, #0x8
	ldmeqfd sp!, {r4-r10,pc}
	ldr     r0,  [pc, #0x234] @ [0x220a340] (=#0x21ccc80)
	ldr     r1,  [pc, #0x234] @ [0x220a344] (=#0x221e058)
	ldr     r0, [r0, #0x4]
	cmp     r0, r1
	ldreq   r4,  [pc, #0x22c] @ [0x220a348] (=#0x221e302)
	ldrne   r0, [r7, #0x4c]
	addne   r4, r0, #0x22
	ldr     r0,  [pc, #0x224] @ [0x220a34c] (=#0x221ddf0)
	ands    r2, r6, #0x2
	movne   r5, #0x18
	moveq   r5, #0x14
	add     r1, r5, r8
	ldr     r10, [r0, #0x50]
	mov     r3, r1, lsl #16
	mov     r1, r10, lsr #16
	mov     r1, r1, lsl #16
	mov     r10, r1, lsr #16
	mov     r1, r10, lsl #8
	orr     r1, r1, r10, asr #8
	strh    r1, [r4, #-0xc]
	mov     r1, r3, lsr #16
	ldr     r10, [r0, #0x50]
	mov     lr, r1, lsl #8
	mov     r3, r10, lsl #16
	mov     r10, r3, lsr #16
	mov     r3, r10, lsl #8
	orr     r3, r3, r10, asr #8
	strh    r3, [r4, #-0xa]
	ldr     r3, [r7, #0x1c]
	orr     r1, lr, r1, asr #8
	mov     r3, r3, lsr #16
	mov     r3, r3, lsl #16
	mov     r10, r3, lsr #16
	mov     r3, r10, lsl #8
	orr     r3, r3, r10, asr #8
	strh    r3, [r4, #-0x8]
	ldr     r3, [r7, #0x1c]
	mov     r12, r5, lsr #2
	mov     r3, r3, lsl #16
	mov     r10, r3, lsr #16
	mov     r3, r10, lsl #8
	orr     r3, r3, r10, asr #8
	strh    r3, [r4, #-0x6]
	mov     r3, #6, 24 @ #0x600
	strh    r3, [r4, #-0x4]
	strh    r1, [r4, #-0x2]
	ldrh    lr, [r7, #0xa]
	mov     r3, r12, lsl #4
	cmp     r2, #0x0
	mov     r1, lr, lsl #8
	orr     r1, r1, lr, asr #8
	strh    r1, [r4]
	ldrh    r12, [r7, #0x18]
	mov     r1, r12, lsl #8
	orr     r1, r1, r12, asr #8
	strh    r1, [r4, #0x2]
	ldr     r1, [r7, #0x28]
	mov     r1, r1, lsr #16
	mov     r1, r1, lsl #16
	mov     r12, r1, lsr #16
	mov     r1, r12, lsl #8
	orr     r1, r1, r12, asr #8
	strh    r1, [r4, #0x4]
	ldr     r1, [r7, #0x28]
	mov     r1, r1, lsl #16
	mov     r12, r1, lsr #16
	mov     r1, r12, lsl #8
	orr     r1, r1, r12, asr #8
	strh    r1, [r4, #0x6]
	ldr     r1, [r7, #0x24]
	mov     r1, r1, lsr #16
	mov     r1, r1, lsl #16
	mov     r12, r1, lsr #16
	mov     r1, r12, lsl #8
	orr     r1, r1, r12, asr #8
	strh    r1, [r4, #0x8]
	ldr     r1, [r7, #0x24]
	mov     r1, r1, lsl #16
	mov     r12, r1, lsr #16
	mov     r1, r12, lsl #8
	orr     r1, r1, r12, asr #8
	strh    r1, [r4, #0xa]
	strb    r3, [r4, #0xc]
	strb    r6, [r4, #0xd]
	ldr     r3, [r7, #0x3c]
	ldr     r1, [r7, #0x44]
	sub     r1, r3, r1
	mov     r1, r1, lsl #16
	mov     r3, r1, lsr #16
	mov     r1, r3, lsl #8
	orr     r1, r1, r3, asr #8
	strh    r1, [r4, #0xe]
	mov     r1, #0x0
	strh    r1, [r4, #0x10]
	strh    r1, [r4, #0x12]
	beq     branch_220a2c0
	ldrh    r1, [r0, #0x2]
	add     r1, r1, #129, 14 @ #0x2040000
	mov     r1, r1, lsr #16
	mov     r1, r1, lsl #16
	mov     r2, r1, lsr #16
	mov     r1, r2, lsl #8
	orr     r1, r1, r2, asr #8
	strh    r1, [r4, #0x14]
	ldrh    r0, [r0, #0x2]
	add     r0, r0, #129, 14 @ #0x2040000
	mov     r0, r0, lsl #16
	mov     r1, r0, lsr #16
	mov     r0, r1, lsl #8
	orr     r0, r0, r1, asr #8
	strh    r0, [r4, #0x16]
.arm
branch_220a2c0: @ 220a2c0 :arm
	sub     r0, r4, #0xc
	add     r1, r5, #0xc
	mov     r2, #0x0
	bl      Function_2209140
	mov     r2, r0
	mov     r0, r9
	mov     r1, r8
	bl      Function_2209140
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	bl      Function_22091f4
	mov     r3, r0, lsl #8
	orr     r0, r3, r0, asr #8
	strh    r0, [r4, #0x10]
	mov     r0, r4
	ldr     r4, [r7, #0x1c]
	mov     r3, #0x6
	str     r4, [sp]
	str     r3, [sp, #0x4]
	mov     r1, r5
	mov     r2, r9
	mov     r3, r8
	bl      Function_2209cf8
	ldr     r0, [r7, #0x28]
	tst     r6, #0x3
	add     r0, r0, r8
	str     r0, [r7, #0x28]
	ldrne   r0, [r7, #0x28]
	addne   r0, r0, #0x1
	strne   r0, [r7, #0x28]
	add     sp, sp, #0x8
	ldmfd   sp!, {r4-r10,pc}
@ 0x220a340

.word 0x21ccc80 @ 0x220a340
.word 0x221e058 @ 0x220a344
.word 0x221e302 @ 0x220a348
.word 0x221ddf0 @ 0x220a34c

.incbin "./baserom/overlay/overlay_0004.bin", 0x395d0, 0x220ab10 - 0x220a350


.arm
Function_220ab10: @ 220ab10 :arm
	ldr     r12,  [pc, #0x8] @ [0x220ab20] (=#0x220aa9c)
	mov     r2, r1
	mov     r1, #0x10
	bx      r12
@ 0x220ab20

.word 0x220aa9c @ 0x220ab20

.incbin "./baserom/overlay/overlay_0004.bin", 0x39da4, 0x220bc04 - 0x220ab24


.arm
Function_220bc04: @ 220bc04 :arm
	stmfd   sp!, {r4-r8,lr}
	ldr     r0,  [pc, #0x90] @ [0x220bca0] (=#0x21ccc80)
	ldr     r2,  [pc, #0x90] @ [0x220bca4] (=#0x221ddf0)
	ldr     r0, [r0, #0x8]
	ldr     r1,  [pc, #0x8c] @ [0x220bca8] (=#0x1388)
	mov     r4, #1, 22 @ #0x400
	mov     r3, #0x1
	mov     r5, #0x0
.arm
branch_220bc24: @ 220bc24 :arm
	ldrh    r12, [r2, #0x8]
	mov     r6, r5
	add     r12, r12, #0x1
	strh    r12, [r2, #0x8]
	ldrh    r12, [r2, #0x8]
	cmp     r12, #1, 22 @ #0x400
	bcc     branch_220bc48
	cmp     r12, r1
	bcc     branch_220bc4c
.arm
branch_220bc48: @ 220bc48 :arm
	strh    r4, [r2, #0x8]
.arm
branch_220bc4c: @ 220bc4c :arm
	mov     r7, r0
	cmp     r0, #0x0
	beq     branch_220bc8c
	ldrh    r8, [r2, #0x8]
.arm
branch_220bc5c: @ 220bc5c :arm
	ldr     lr, [r7, #0xa4]
	cmp     lr, #0x0
	ldrne   r12, [lr]
	cmpne   r12, #0x0
	beq     branch_220bc80
	ldrh    r12, [lr, #0xa]
	cmp     r12, r8
	moveq   r6, r3
	beq     branch_220bc8c
.arm
branch_220bc80: @ 220bc80 :arm
	ldr     r7, [r7, #0x68]
	cmp     r7, #0x0
	bne     branch_220bc5c
.arm
branch_220bc8c: @ 220bc8c :arm
	cmp     r6, #0x0
	bne     branch_220bc24
	ldr     r0,  [pc, #0x8] @ [0x220bca4] (=#0x221ddf0)
	ldrh    r0, [r0, #0x8]
	ldmfd   sp!, {r4-r8,pc}
@ 0x220bca0

.word 0x21ccc80 @ 0x220bca0
.word 0x221ddf0 @ 0x220bca4
.word 0x1388 @ 0x220bca8

.incbin "./baserom/overlay/overlay_0004.bin", 0x3af2c, 0x220bcf0 - 0x220bcac


.arm
Function_220bcf0: @ 220bcf0 :arm
	ldr     r1,  [pc, #0x8] @ [0x220bd00] (=#0x21ccc80)
	ldr     r1, [r1, #0x4]
	str     r0, [r1, #0xa4]
	bx      lr
@ 0x220bd00

.word 0x21ccc80 @ 0x220bd00
.arm
Function_220bd04: @ 220bd04 :arm
	ldr     r0,  [pc, #0xc] @ [0x220bd18] (=#0x21ccc80)
	mov     r1, #0x0
	ldr     r0, [r0, #0x4]
	str     r1, [r0, #0xa4]
	bx      lr
@ 0x220bd18

.word 0x21ccc80 @ 0x220bd18
.arm
Function_220bd1c: @ 220bd1c :arm
	ldr     r0,  [pc, #0x20] @ [0x220bd44] (=#0x21ccc80)
	ldr     r0, [r0, #0x4]
	ldr     r1, [r0, #0xa4]
	cmp     r1, #0x0
	bxeq    lr
	mov     r0, #0xa
	strb    r0, [r1, #0x8]
	mov     r0, #0x0
	str     r0, [r1, #0x44]
	bx      lr
@ 0x220bd44

.word 0x21ccc80 @ 0x220bd44
.arm
Function_220bd48: @ 220bd48 :arm
	stmfd   sp!, {r4,lr}
	ldr     r3,  [pc, #0x48] @ [0x220bd9c] (=#0x21ccc80)
	ldr     r3, [r3, #0x4]
	ldr     r4, [r3, #0xa4]
	cmp     r4, #0x0
	ldmeqfd sp!, {r4,pc}
	ldr     r3,  [pc, #0x38] @ [0x220bda0] (=#0x7f000001)
	cmp     r2, r3
	ldreq   r2,  [pc, #0x34] @ [0x220bda4] (=#0x221ddf0)
	ldreq   r2, [r2, #0x50]
	cmp     r0, #0x0
	strh    r1, [r4, #0x1a]
	ldrh    r1, [r4, #0x1a]
	strh    r1, [r4, #0x18]
	str     r2, [r4, #0x20]
	str     r2, [r4, #0x1c]
	strneh  r0, [r4, #0xa]
	ldmnefd sp!, {r4,pc}
	bl      Function_220bc04
	strh    r0, [r4, #0xa]
	ldmfd   sp!, {r4,pc}
@ 0x220bd9c

.word 0x21ccc80 @ 0x220bd9c
.word 0x7f000001 @ 0x220bda0
.word 0x221ddf0 @ 0x220bda4
.arm
Function_220bda8: @ 220bda8 :arm
	ldr     r0,  [pc, #0x28] @ [0x220bdd8] (=#0x21ccc80)
	ldr     r0, [r0, #0x4]
	ldr     r1, [r0, #0xa4]
	cmp     r1, #0x0
	bxeq    lr
	str     r0, [r1]
	mov     r0, #0x0
	strb    r0, [r1, #0x8]
	str     r0, [r1, #0x44]
	str     r0, [r1, #0x60]
	str     r0, [r1, #0x38]
	bx      lr
@ 0x220bdd8

.word 0x21ccc80 @ 0x220bdd8
.arm
Function_220bddc: @ 220bddc :arm
	ldr     r0,  [pc, #0x14] @ [0x220bdf8] (=#0x21ccc80)
	ldr     r0, [r0, #0x4]
	ldr     r1, [r0, #0xa4]
	cmp     r1, #0x0
	movne   r0, #0x0
	strne   r0, [r1]
	bx      lr
@ 0x220bdf8

.word 0x21ccc80 @ 0x220bdf8

.incbin "./baserom/overlay/overlay_0004.bin", 0x3b07c, 0x220c100 - 0x220bdfc


.arm
Function_220c100: @ 220c100 :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r8, r1
	mov     r9, r0
	bl      Function_20c3d98
	ldr     r6, [r8, #0x44]
	mov     r7, r0
	cmp     r6, #0x0
	bne     branch_220c140
	mov     r5, #0x3
	mov     r4, #0x0
.arm
branch_220c128: @ 220c128 :arm
	mov     r0, r4
	str     r5, [r8, #0x4]
	bl      Function_20c2218
	ldr     r6, [r8, #0x44]
	cmp     r6, #0x0
	beq     branch_220c128
.arm
branch_220c140: @ 220c140 :arm
	mov     r0, r7
	bl      Function_20c3dac
	str     r6, [r9]
	ldr     r0, [r8, #0x40]
	ldmfd   sp!, {r3-r9,pc}
@ 0x220c154

.arm
Function_220c154: @ 220c154 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r4, r1
	ldr     r1, [r4, #0x44]
	mov     r5, r0
	cmp     r1, #0x0
	ldreqb  r0, [r4, #0x8]
	cmpeq   r0, #0x4
	bne     branch_220c1b4
	bl      Function_20c3d98
	mov     r8, r0
	mov     r7, #0x2
	mov     r6, #0x0
	b       branch_220c194

branch_220c188: @ 220c188 :arm
	mov     r0, r6
	str     r7, [r4, #0x4]
	bl      Function_20c2218
branch_220c194: @ 220c194 :arm
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	ldreqb  r0, [r4, #0x8]
	cmpeq   r0, #0x4
	beq     branch_220c188
	mov     r0, r8
	bl      Function_20c3dac
	b       branch_220c1b8

branch_220c1b4: @ 220c1b4 :arm
	bl      Function_20c233c
branch_220c1b8: @ 220c1b8 :arm
	ldr     r0, [r4, #0x44]
	str     r0, [r5]
	cmp     r0, #0x0
	ldrne   r0, [r4, #0x40]
	moveq   r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x220c1d0

.arm
Function_220c1d0: @ 220c1d0 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x54] @ [0x220c230] (=#0x21ccc80)
	ldr     r1, [r1, #0x4]
	ldr     r1, [r1, #0xa4]
	cmp     r1, #0x0
	beq     branch_220c220
	ldrb    r2, [r1, #0x8]
	add     r2, r2, #0xf6
	and     r2, r2, #0xff
	cmp     r2, #0x1
	bhi     branch_220c204
	bl      Function_220c100
	ldmfd   sp!, {r3,pc}
@ 0x220c204

.arm
branch_220c204: @ 220c204 :arm
	ldrb    r2, [r1, #0x9]
	cmp     r2, #0x0
	beq     branch_220c218
	bl      Function_22108ec
	ldmfd   sp!, {r3,pc}
@ 0x220c218

.arm
branch_220c218: @ 220c218 :arm
	bl      Function_220c154
	ldmfd   sp!, {r3,pc}
@ 0x220c220

.arm
branch_220c220: @ 220c220 :arm
	mov     r1, #0x0
	str     r1, [r0]
	mov     r0, r1
	ldmfd   sp!, {r3,pc}
@ 0x220c230

.word 0x21ccc80 @ 0x220c230
.arm
Function_220c234: @ 220c234 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r4, r1
	mov     r7, r0
	bl      Function_20c3d98
	ldr     r2, [r4, #0x44]
	ldr     r1, [r4, #0x3c]
	mov     r5, r0
	cmp     r2, r1
	mov     r6, #0x0
	bne     branch_220c264
	cmp     r7, #0x0
	movne   r6, #0x1
.arm
branch_220c264: @ 220c264 :arm
	cmp     r7, r2
	movcs   r0, #0x0
	strcs   r0, [r4, #0x44]
	bcs     branch_220c288
	ldr     r0, [r4, #0x40]
	sub     r2, r2, r7
	add     r1, r0, r7
	str     r2, [r4, #0x44]
	bl      Function_20d50d8
.arm
branch_220c288: @ 220c288 :arm
	mov     r0, r5
	bl      Function_20c3dac
	ldrb    r0, [r4, #0x8]
	cmp     r0, #0xa
	cmpne   r0, #0xb
	ldmeqfd sp!, {r3-r7,pc}
	ldr     r0, [r4, #0x44]
	cmp     r0, #0x0
	beq     branch_220c2b4
	cmp     r6, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_220c2b4: @ 220c2b4 :arm
	mov     r0, r4
	mov     r1, #0x1b
	bl      Function_220ab10
	ldmfd   sp!, {r3-r7,pc}
@ 0x220c2c4

.arm
Function_220c2c4: @ 220c2c4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x28] @ [0x220c2f8] (=#0x21ccc80)
	ldr     r1, [r1, #0x4]
	ldr     r1, [r1, #0xa4]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3,pc}
	ldrb    r2, [r1, #0x9]
	cmp     r2, #0x0
	beq     branch_220c2f0
	bl      Function_22109c4
	ldmfd   sp!, {r3,pc}
@ 0x220c2f0

.arm
branch_220c2f0: @ 220c2f0 :arm
	bl      Function_220c234
	ldmfd   sp!, {r3,pc}
@ 0x220c2f8

.word 0x21ccc80 @ 0x220c2f8
.arm
Function_220c2fc: @ 220c2fc :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r8, r2
	ldr     r6, [r8, #0x34]
	movs    r11, r3
	mov     r10, r0
	movne   r5, #0x1
	mov     r0, r6, lsl #1
	mov     r9, r1
	ldreqh  r5, [r8, #0x2c]
	add     r7, r0, #0x4
	b       branch_220c3a0
@ 0x220c328

.arm
branch_220c328: @ 220c328 :arm
	ldr     r0,  [pc, #0x8c] @ [0x220c3bc] (=#0x221ddf0)
	ldrh    r4, [r8, #0x2e]
	ldrh    r0, [r0, #0x2]
	ldr     r1, [r8, #0x34]
	cmp     r4, r5
	movcs   r4, r5
	cmp     r0, r4
	movcc   r4, r0
	cmp     r11, #0x0
	biceq   r4, r4, #0x1
	cmp     r9, r4
	sub     r0, r1, r6
	movcc   r4, r9
	adds    r0, r7, r0
	moveq   r4, #0x0
	mov     r6, r1
	sub     r7, r0, #0x1
	cmp     r4, #0x0
	beq     branch_220c3b4
	mov     r2, #0x0
	str     r2, [sp]
	mov     r0, r10
	mov     r1, r4
	mov     r2, r8
	mov     r3, #0x18
	sub     r5, r5, r4
	bl      Function_220a0dc
	bl      Function_20c233c
	add     r10, r10, r4
	sub     r9, r9, r4
.arm
branch_220c3a0: @ 220c3a0 :arm
	cmp     r9, #0x0
	beq     branch_220c3b4
	ldrb    r0, [r8, #0x8]
	cmp     r0, #0x4
	beq     branch_220c328
.arm
branch_220c3b4: @ 220c3b4 :arm
	mov     r0, r4
	ldmfd   sp!, {r3-r11,pc}
@ 0x220c3bc

.word 0x221ddf0 @ 0x220c3bc
.arm
Function_220c3c0: @ 220c3c0 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r2
	mov     r4, r3
	ldr     r2, [sp, #0x10]
	ldr     r3, [sp, #0x14]
	bl      Function_220c2fc
	cmp     r0, #0x0
	cmpne   r4, #0x0
	ldmeqfd sp!, {r3-r5,pc}
	ldr     r2, [sp, #0x10]
	mov     r0, r5
	mov     r1, r4
	mov     r3, #0x0
	bl      Function_220c2fc
	ldmfd   sp!, {r3-r5,pc}
@ 0x220c3fc

.arm
Function_220c3fc: @ 220c3fc :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x14
	mov     r4, #0x0
	mov     r11, r0
	ldr     r8, [sp, #0x38]
	mov     r0, r4
	str     r4, [sp, #0x10]
	mov     r10, r1
	mov     r9, r2
	str     r3, [sp, #0x8]
	mov     r6, r4
	str     r0, [r8, #0x34]
	bl      Function_20c3880
	mov     r0, r0, lsr #16
	orr     r0, r0, r1, lsl #16
	str     r0, [sp, #0xc]
	b       branch_220c5b4
@ 0x220c440

.arm
branch_220c440: @ 220c440 :arm
	ldr     r7, [r8, #0x28]
	ldr     r3, [sp, #0x8]
	str     r8, [sp]
	mov     r0, r11
	mov     r1, r10
	mov     r2, r9
	str     r6, [sp, #0x4]
	bl      Function_220c3c0
	bl      Function_20c3880
	mov     r5, r0, lsr #16
	ldr     r4,  [pc, #0x190] @ [0x220c600] (=#0x221ddf0)
	orr     r5, r5, r1, lsl #16
.arm
branch_220c470: @ 220c470 :arm
	bl      Function_2208df0
	ldr     r0, [r4, #0x48]
	blx     r0
	cmp     r0, #0x0
	beq     branch_220c4c8
	ldrb    r0, [r8, #0x8]
	cmp     r0, #0x4
	bne     branch_220c4c8
	ldr     r1, [r8, #0x28]
	ldr     r0, [r8, #0x30]
	cmp     r1, r0
	beq     branch_220c4c8
	bl      Function_20c3880
	mov     r0, r0, lsr #16
	orr     r0, r0, r1, lsl #16
	sub     r0, r0, r5
	cmp     r0, #0xf
	bge     branch_220c4c8
	cmp     r6, #0x0
	ldrneh  r0, [r8, #0x2c]
	cmpne   r0, #0x0
	beq     branch_220c470
.arm
branch_220c4c8: @ 220c4c8 :arm
	ldr     r1, [r8, #0x30]
	ldr     r0, [r8, #0x28]
	sub     r5, r1, r7
	sub     r0, r0, r7
	cmp     r5, r0
	movhi   r5, #0x0
	ldr     r0, [sp, #0x10]
	cmp     r5, #0x0
	add     r0, r0, r5
	str     r0, [sp, #0x10]
	beq     branch_220c504
	bl      Function_20c3880
	mov     r0, r0, lsr #16
	orr     r0, r0, r1, lsl #16
	str     r0, [sp, #0xc]
.arm
branch_220c504: @ 220c504 :arm
	ldr     r0, [r8, #0x30]
	str     r0, [r8, #0x28]
	ldrb    r0, [r8, #0x8]
	cmp     r0, #0x4
	ldreqh  r0, [r8, #0x2c]
	cmpeq   r0, #0x0
	cmpeq   r5, #0x0
	bne     branch_220c588
	cmp     r6, #0x0
	bne     branch_220c58c
	bl      Function_20c3880
	mov     r7, r0, lsr #16
	orr     r7, r7, r1, lsl #16
	ldr     r4,  [pc, #0xc0] @ [0x220c600] (=#0x221ddf0)
	b       branch_220c550
@ 0x220c540

.arm
branch_220c540: @ 220c540 :arm
	bl      Function_2208df0
	ldrh    r0, [r8, #0x2c]
	cmp     r0, #0x0
	bne     branch_220c578
.arm
branch_220c550: @ 220c550 :arm
	ldr     r0, [r4, #0x48]
	blx     r0
	cmp     r0, #0x0
	beq     branch_220c578
	bl      Function_20c3880
	mov     r0, r0, lsr #16
	orr     r0, r0, r1, lsl #16
	sub     r0, r0, r7
	cmp     r0, #0xf
	blt     branch_220c540
.arm
branch_220c578: @ 220c578 :arm
	ldrh    r0, [r8, #0x2c]
	cmp     r0, #0x0
	moveq   r6, #0x1
	b       branch_220c58c
@ 0x220c588

.arm
branch_220c588: @ 220c588 :arm
	mov     r6, #0x0
.arm
branch_220c58c: @ 220c58c :arm
	cmp     r5, r10
	addcc   r11, r11, r5
	subcc   r10, r10, r5
	bcc     branch_220c5b4
	sub     r1, r5, r10
	ldr     r0, [sp, #0x8]
	add     r11, r9, r1
	mov     r9, #0x0
	sub     r10, r0, r1
	str     r9, [sp, #0x8]
.arm
branch_220c5b4: @ 220c5b4 :arm
	ldr     r0,  [pc, #0x44] @ [0x220c600] (=#0x221ddf0)
	ldr     r0, [r0, #0x48]
	blx     r0
	cmp     r0, #0x0
	cmpne   r10, #0x0
	beq     branch_220c5f4
	ldrb    r0, [r8, #0x8]
	cmp     r0, #0x4
	bne     branch_220c5f4
	bl      Function_20c3880
	mov     r2, r0, lsr #16
	ldr     r0, [sp, #0xc]
	orr     r2, r2, r1, lsl #16
	sub     r0, r2, r0
	cmp     r0, #0x9f
	blt     branch_220c440
.arm
branch_220c5f4: @ 220c5f4 :arm
	ldr     r0, [sp, #0x10]
	add     sp, sp, #0x14
	ldmfd   sp!, {r4-r11,pc}
@ 0x220c600

.word 0x221ddf0 @ 0x220c600
.arm
Function_220c604: @ 220c604 :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r12,  [pc, #0xc0] @ [0x220c6d0] (=#0x21ccc80)
	mov     r7, r1
	ldr     r12, [r12, #0x4]
	mov     r6, r2
	ldr     r4, [r12, #0xa4]
	mov     r5, r3
	cmp     r4, #0x0
	beq     branch_220c6c8
	ldrb    r12, [r4, #0x8]
	cmp     r12, #0xa
	bne     branch_220c664
	cmp     r7, #0x0
	beq     branch_220c644
	mov     r2, r4
	bl      Function_2209fa0
.arm
branch_220c644: @ 220c644 :arm
	cmp     r5, #0x0
	beq     branch_220c65c
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2209fa0
.arm
branch_220c65c: @ 220c65c :arm
	add     r0, r7, r5
	b       branch_220c6b8
@ 0x220c664

.arm
branch_220c664: @ 220c664 :arm
	cmp     r12, #0xb
	bne     branch_220c69c
	cmp     r7, #0x0
	beq     branch_220c67c
	mov     r2, r4
	bl      Function_2209ef0
.arm
branch_220c67c: @ 220c67c :arm
	cmp     r5, #0x0
	beq     branch_220c694
	mov     r0, r6
	mov     r1, r5
	mov     r2, r4
	bl      Function_2209ef0
.arm
branch_220c694: @ 220c694 :arm
	add     r0, r7, r5
	b       branch_220c6b8
@ 0x220c69c

.arm
branch_220c69c: @ 220c69c :arm
	ldrb    r12, [r4, #0x9]
	cmp     r12, #0x0
	str     r4, [sp]
	beq     branch_220c6b4
	bl      Function_2210bd4
	b       branch_220c6b8
@ 0x220c6b4

.arm
branch_220c6b4: @ 220c6b4 :arm
	bl      Function_220c3fc
.arm
branch_220c6b8: @ 220c6b8 :arm
	ldr     r1,  [pc, #0x14] @ [0x220c6d4] (=#0x221ddf0)
	ldrb    r1, [r1]
	cmp     r1, #0x0
	ldmeqfd sp!, {r3-r7,pc}
.arm
branch_220c6c8: @ 220c6c8 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x220c6d0

.word 0x21ccc80 @ 0x220c6d0
.word 0x221ddf0 @ 0x220c6d4
.arm
Function_220c6d8: @ 220c6d8 :arm
	stmfd   sp!, {r3-r5,lr}
	ldr     r3,  [pc, #0x88] @ [0x220c76c] (=#0x21ccc80)
	mov     r2, r0
	ldr     r4, [r3, #0x4]
	mov     r3, r1
	ldr     r5, [r4, #0xa4]
	cmp     r5, #0x0
	beq     branch_220c764
	ldr     r4, [r5, #0x60]
	cmp     r4, #0x0
	beq     branch_220c754
	ldr     r0, [r5, #0x5c]
	mov     r1, r4
	bl      Function_220c604
	ldr     r1, [r5, #0x60]
	mov     r4, r0
	cmp     r4, r1
	bcs     branch_220c744
	ldr     r0, [r5, #0x5c]
	sub     r2, r1, r4
	add     r1, r0, r4
	bl      Function_20d50d8
	ldr     r1, [r5, #0x60]
	mov     r0, #0x0
	sub     r1, r1, r4
	str     r1, [r5, #0x60]
	ldmfd   sp!, {r3-r5,pc}
@ 0x220c744

.arm
branch_220c744: @ 220c744 :arm
	mov     r0, #0x0
	str     r0, [r5, #0x60]
	sub     r0, r4, r1
	ldmfd   sp!, {r3-r5,pc}
@ 0x220c754

.arm
branch_220c754: @ 220c754 :arm
	mov     r2, #0x0
	mov     r3, r2
	bl      Function_220c604
	ldmfd   sp!, {r3-r5,pc}
@ 0x220c764

.arm
branch_220c764: @ 220c764 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x220c76c

.word 0x21ccc80 @ 0x220c76c
.arm
Function_220c770: @ 220c770 :arm
	stmfd   sp!, {r3,lr}
	ldr     r0,  [pc, #0x60] @ [0x220c7dc] (=#0x21ccc80)
	ldr     r0, [r0, #0x4]
	ldr     r0, [r0, #0xa4]
	cmp     r0, #0x0
	beq     branch_220c7d4
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	beq     branch_220c79c
	bl      Function_2210b58
	ldmfd   sp!, {r3,pc}
@ 0x220c79c

.arm
branch_220c79c: @ 220c79c :arm
	ldr     r1, [r0, #0x44]
	cmp     r1, #0x0
	bne     branch_220c7c4
	ldrb    r0, [r0, #0x8]
	cmp     r0, #0x4
	beq     branch_220c7c4
	add     r0, r0, #0xf6
	and     r0, r0, #0xff
	cmp     r0, #0x1
	bhi     branch_220c7cc
.arm
branch_220c7c4: @ 220c7c4 :arm
	mov     r0, r1
	ldmfd   sp!, {r3,pc}
@ 0x220c7cc

.arm
branch_220c7cc: @ 220c7cc :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x220c7d4

.arm
branch_220c7d4: @ 220c7d4 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3,pc}
@ 0x220c7dc

.word 0x21ccc80 @ 0x220c7dc

.incbin "./baserom/overlay/overlay_0004.bin", 0x3ba60, 0x220d4cc - 0x220c7e0


.arm
Function_220d4cc: @ 220d4cc :arm
	ldrb    r2, [r0], #0x1
	cmp     r2, #0x0
	bxeq    lr
.arm
branch_220d4d8: @ 220d4d8 :arm
	and     r1, r2, #0xc0
	cmp     r1, #0xc0
	addeq   r0, r0, #0x1
	bxeq    lr
	add     r0, r0, r2
	ldrb    r2, [r0], #0x1
	cmp     r2, #0x0
	bne     branch_220d4d8
	bx      lr
@ 0x220d4fc

.arm
Function_220d4fc: @ 220d4fc :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x40
	mov     r9, r2
	mov     r2, r9, lsl #8
	mov     r10, r1
	orr     r1, r2, r9, asr #8
	strh    r1, [sp, #0x4]
	cmp     r10, #0x20
	mov     r6, #0x0
	movne   r1, #0x1
	strneh  r1, [sp, #0x6]
	ldreq   r1,  [pc, #0x26c] @ [0x220d79c] (=#0x1001)
	strh    r6, [sp, #0xa]
	streqh  r1, [sp, #0x6]
	mov     r1, #1, 24 @ #0x100
	strh    r1, [sp, #0x8]
	add     r1, sp, #0x10
	strh    r6, [sp, #0xc]
	strh    r6, [sp, #0xe]
	str     r6, [sp]
	ldrb    r7, [r0], #0x1
	mov     r11, r3
	ldr     r8, [sp, #0x68]
	add     r2, r1, #0x1
	cmp     r7, #0x0
	beq     branch_220d5c4
	mov     r4, r6
	add     r5, sp, #0x4
	mov     r3, r6
.arm
branch_220d570: @ 220d570 :arm
	cmp     r7, #0x2e
	beq     branch_220d5a0
	sub     r6, r2, r5
	cmp     r6, #0x3c
	addge   sp, sp, #0x40
	mvnge   r0, #0x0
	ldmgefd sp!, {r3-r11,pc}
	add     r6, r4, #0x1
	mov     r4, r6
	str     r6, [sp]
	strb    r7, [r2], #0x1
	b       branch_220d5b8
@ 0x220d5a0

.arm
branch_220d5a0: @ 220d5a0 :arm
	strb    r6, [r1]
	mov     r1, r2
	mov     r4, r3
	mov     r6, r3
	str     r3, [sp]
	add     r2, r2, #0x1
.arm
branch_220d5b8: @ 220d5b8 :arm
	ldrb    r7, [r0], #0x1
	cmp     r7, #0x0
	bne     branch_220d570
.arm
branch_220d5c4: @ 220d5c4 :arm
	ldr     r0, [sp]
	mov     r3, #0x0
	strb    r0, [r1]
	strb    r3, [r2]
	mov     r0, r10, lsr #8
	strb    r0, [r2, #0x1]
	strb    r10, [r2, #0x2]
	strb    r3, [r2, #0x3]
	mov     r3, #0x1
	add     r0, sp, #0x4
	add     r1, r2, #0x5
	sub     r1, r1, r0
	strb    r3, [r2, #0x4]
	bl      Function_220c6d8
	mov     r4, #0x0
	bl      Function_20c3880
	mov     r5, r0, lsr #16
	orr     r5, r5, r1, lsl #16
	b       branch_220d75c
@ 0x220d610

.arm
branch_220d610: @ 220d610 :arm
	bl      Function_220c770
	cmp     r0, #0x0
	bne     branch_220d624
	bl      Function_2208df0
	b       branch_220d75c
@ 0x220d624

.arm
branch_220d624: @ 220d624 :arm
	add     r0, sp, #0x0
	bl      Function_220c1d0
	ldr     r1, [sp]
	cmp     r1, #0xc
	bls     branch_220d754
	ldrh    r3, [r0]
	mov     r2, r3, lsl #8
	orr     r2, r2, r3, asr #8
	mov     r2, r2, lsl #16
	cmp     r9, r2, lsr #16
	bne     branch_220d754
	ldrb    r2, [r0, #0x3]
	and     r2, r2, #0xf
	cmp     r2, #0x3
	mvneq   r4, #0x0
	beq     branch_220d754
	cmp     r2, #0x0
	bne     branch_220d754
	ldrb    r3, [r0, #0x4]
	ldrb    r2, [r0, #0x5]
	add     r6, r0, r1
	add     r0, r0, #0xc
	orr     r1, r2, r3, lsl #8
	mov     r1, r1, lsl #16
	movs    r1, r1, lsr #16
	sub     r7, r1, #0x1
	beq     branch_220d6a4
.arm
branch_220d690: @ 220d690 :arm
	bl      Function_220d4cc
	cmp     r7, #0x0
	add     r0, r0, #0x4
	sub     r7, r7, #0x1
	bne     branch_220d690
.arm
branch_220d6a4: @ 220d6a4 :arm
	cmp     r0, r6
	bcs     branch_220d754
.arm
branch_220d6ac: @ 220d6ac :arm
	bl      Function_220d4cc
	ldrb    r7, [r0, #0x8]
	ldrb    r1, [r0, #0x9]
	ldrb    r3, [r0]
	ldrb    r2, [r0, #0x1]
	orr     r1, r1, r7, lsl #8
	mov     r1, r1, lsl #16
	orr     r2, r2, r3, lsl #8
	mov     r2, r2, lsl #16
	cmp     r10, r2, lsr #16
	mov     r2, r1, lsr #16
	bne     branch_220d744
	cmp     r10, #0xc
	beq     branch_220d724
	add     r4, r0, #0x8
	add     r0, r0, #0x6
	add     r6, r4, r2
	add     r1, r0, r2
	ldrb    r3, [r0, r2]
	ldrb    r0, [r1, #0x1]
	ldrb    r2, [r4, r2]
	ldrb    r1, [r6, #0x1]
	orr     r0, r0, r3, lsl #8
	mov     r0, r0, lsl #16
	orr     r1, r1, r2, lsl #8
	mov     r1, r1, lsl #16
	mov     r2, r0, lsr #16
	mov     r0, r1, lsr #16
	orr     r4, r0, r2, lsl #16
	b       branch_220d754
@ 0x220d724

.arm
branch_220d724: @ 220d724 :arm
	cmp     r2, r8
	movhi   r4, #0x2
	bhi     branch_220d754
	mov     r1, r11
	add     r0, r0, #0xa
	bl      Function_20c4db0
	mov     r4, #0x1
	b       branch_220d754
@ 0x220d744

.arm
branch_220d744: @ 220d744 :arm
	add     r1, r2, #0xa
	add     r0, r0, r1
	cmp     r0, r6
	bcc     branch_220d6ac
.arm
branch_220d754: @ 220d754 :arm
	ldr     r0, [sp]
	bl      Function_220c2c4
.arm
branch_220d75c: @ 220d75c :arm
	ldr     r0,  [pc, #0x3c] @ [0x220d7a0] (=#0x221ddf0)
	ldr     r0, [r0, #0x48]
	blx     r0
	cmp     r0, #0x0
	beq     branch_220d790
	cmp     r4, #0x0
	bne     branch_220d790
	bl      Function_20c3880
	mov     r0, r0, lsr #16
	orr     r0, r0, r1, lsl #16
	sub     r0, r0, r5
	cmp     r0, #0xf
	blt     branch_220d610
.arm
branch_220d790: @ 220d790 :arm
	mov     r0, r4
	add     sp, sp, #0x40
	ldmfd   sp!, {r3-r11,pc}
@ 0x220d79c

.word 0x1001 @ 0x220d79c
.word 0x221ddf0 @ 0x220d7a0
.arm
Function_220d7a4: @ 220d7a4 :arm
	str     r0, [r1]
	mov     r12, #0x0
	mov     r2, #0xa
.arm
branch_220d7b0: @ 220d7b0 :arm
	ldrb    r3, [r0]
	sub     r3, r3, #0x30
	and     r3, r3, #0xff
	cmp     r3, #0x9
	mlals   r12, r2, r12, r3
	addls   r0, r0, #0x1
	strls   r0, [r1]
	bls     branch_220d7b0
	mov     r0, r12
	bx      lr
@ 0x220d7d8

.arm
Function_220d7d8: @ 220d7d8 :arm
	stmfd   sp!, {r3-r8,lr}
	sub     sp, sp, #0x4
	mov     r5, #0x0
	mov     r8, r0
	mov     r7, r1
	mov     r6, r5
	add     r4, sp, #0x0
.arm
branch_220d7f4: @ 220d7f4 :arm
	mov     r0, r8
	mov     r1, r4
	bl      Function_220d7a4
	ldr     r2, [sp]
	cmp     r8, r2
	addeq   sp, sp, #0x4
	moveq   r0, #0x0
	ldmeqfd sp!, {r3-r8,pc}
	mov     r8, r2
	cmp     r0, #0xff
	bhi     branch_220d848
	cmp     r6, #0x3
	ldrneb  r1, [r2]
	addne   r8, r2, #0x1
	cmpne   r1, #0x2e
	bne     branch_220d848
	cmp     r6, #0x3
	bne     branch_220d854
	ldrb    r1, [r8]
	cmp     r1, #0x0
	beq     branch_220d854
.arm
branch_220d848: @ 220d848 :arm
	add     sp, sp, #0x4
	mov     r0, #0x0
	ldmfd   sp!, {r3-r8,pc}
@ 0x220d854

.arm
branch_220d854: @ 220d854 :arm
	add     r6, r6, #0x1
	cmp     r6, #0x4
	orr     r5, r0, r5, lsl #8
	blt     branch_220d7f4
	str     r5, [r7]
	mov     r0, #0x1
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r8,pc}
@ 0x220d874

.arm
Function_220d874: @ 220d874 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	movs    r5, r1
	mov     r6, r0
	mov     r4, r2
	addeq   sp, sp, #0x4
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r6,pc}
	bl      Function_220bda8
	bl      Function_220bd1c
	mov     r2, r5
	mov     r0, #0x0
	mov     r1, #0x35
	bl      Function_220bd48
	mov     r0, r6
	mov     r2, r4
	mov     r3, #0x0
	str     r3, [sp]
	mov     r1, #0x1
	bl      Function_220d4fc
	mov     r4, r0
	bl      Function_220bddc
	mov     r0, r4
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x220d8d8

.arm
Function_220d8d8: @ 220d8d8 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	ldr     r2,  [pc, #0x120] @ [0x220da08] (=#0x221ddf0)
	mov     r6, #0x0
	ldr     r5, [r2, #0x70]
	ldr     r3, [r2, #0x68]
	ldr     r1, [r2, #0x6c]
	umull   r8, r7, r5, r3
	ldr     r9, [r2, #0x78]
	mla     r7, r5, r1, r7
	ldr     r4, [r2, #0x74]
	adds    r11, r9, r8
	mla     r7, r4, r3, r7
	ldr     r8, [r2, #0x7c]
	umull   r3, r1, r5, r11
	adc     r10, r8, r7
	mla     r1, r5, r10, r1
	str     r11, [r2, #0x68]
	mov     r7, r6, lsl #16
	adds    r5, r9, r3
	mla     r1, r4, r11, r1
	str     r10, [r2, #0x6c]
	orr     r7, r7, r10, lsr #16
	adc     r4, r8, r1
	mov     r3, r6, lsl #16
	str     r5, [r2, #0x68]
	orr     r3, r3, r4, lsr #16
	add     r1, sp, #0x8
	mov     r10, r0
	strh    r7, [sp, #0x2]
	str     r4, [r2, #0x6c]
	strh    r3, [sp, #0x4]
	bl      Function_220d7d8
	cmp     r0, #0x0
	ldrne   r0, [sp, #0x8]
	addne   sp, sp, #0xc
	ldmnefd sp!, {r4-r11,pc}
	mov     r0, #0x1
	mov     r11, r6
	ldr     r7,  [pc, #0x90] @ [0x220da0c] (=#0x221de50)
	strb    r0, [sp]
	strb    r0, [sp, #0x1]
	add     r6, sp, #0x2
	mov     r5, r11
	mvn     r4, #0x0
.arm
branch_220d98c: @ 220d98c :arm
	mov     r8, #0x0
	add     r9, sp, #0x0
.arm
branch_220d994: @ 220d994 :arm
	ldrb    r0, [r9]
	cmp     r0, #0x0
	beq     branch_220d9cc
	mov     r0, r8, lsl #1
	ldrh    r2, [r6, r0]
	ldr     r1, [r7, r8, lsl #0x2]
	mov     r0, r10
	bl      Function_220d874
	cmp     r0, #0x0
	str     r0, [sp, #0x8]
	cmpne   r0, r4
	bne     branch_220d9e8
	cmp     r0, r4
	streqb  r5, [r9]
.arm
branch_220d9cc: @ 220d9cc :arm
	add     r8, r8, #0x1
	cmp     r8, #0x2
	add     r9, r9, #0x1
	blt     branch_220d994
	add     r11, r11, #0x1
	cmp     r11, #0x3
	blt     branch_220d98c
.arm
branch_220d9e8: @ 220d9e8 :arm
	ldr     r1, [sp, #0x8]
	mvn     r0, #0x0
	cmp     r1, r0
	moveq   r0, #0x0
	streq   r0, [sp, #0x8]
	ldr     r0, [sp, #0x8]
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,pc}
@ 0x220da08

.word 0x221ddf0 @ 0x220da08
.word 0x221de50 @ 0x220da0c

.incbin "./baserom/overlay/overlay_0004.bin", 0x3cc90, 0x220dcd0 - 0x220da10


.arm
Function_220dcd0: @ 220dcd0 :arm
	ldr     r0,  [pc, #0x4] @ [0x220dcdc] (=#0x221a1bc)
	ldr     r0, [r0, #0x4]
	bx      lr
@ 0x220dcdc

.word 0x221a1bc @ 0x220dcdc
.arm
Function_220dce0: @ 220dce0 :arm
	ldr     r1,  [pc, #0x4] @ [0x220dcec] (=#0x221a1bc)
	str     r0, [r1, #0x4]
	bx      lr
@ 0x220dcec

.word 0x221a1bc @ 0x220dcec

.incbin "./baserom/overlay/overlay_0004.bin", 0x3cf70, 0x220e9f4 - 0x220dcf0


.arm
Function_220e9f4: @ 220e9f4 :arm
	stmfd   sp!, {r4,lr}
	cmp     r1, #0x0
	mov     r4, #0x0
	ble     branch_220ea38
.arm
branch_220ea04: @ 220ea04 :arm
	ldrb    lr, [r0]
	ldrb    r12, [r0, #0x1]
	cmp     r2, #0x3
	add     lr, r12, lr, lsl #8
	ldreqb  r12, [r0, #0x2]
	addeq   lr, r12, lr, lsl #8
	cmp     lr, r3
	moveq   r0, #0x1
	ldmeqfd sp!, {r4,pc}
	add     r4, r4, #0x1
	cmp     r4, r1
	add     r0, r0, r2
	blt     branch_220ea04
.arm
branch_220ea38: @ 220ea38 :arm
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}
@ 0x220ea40

.arm
Function_220ea40: @ 220ea40 :arm
	stmfd   sp!, {r4-r8,lr}
	ldr     r4,  [pc, #0x50] @ [0x220ea9c] (=#0x221a1bc)
	mov     r8, r0
	mov     r7, r1
	mov     r6, r2
	mov     r5, #0x0
.arm
branch_220ea58: @ 220ea58 :arm
	mov     r0, r5, lsl #1
	ldrh    r3, [r4, r0]
	mov     r0, r8
	mov     r1, r7
	mov     r2, r6
	bl      Function_220e9f4
	cmp     r0, #0x0
	beq     branch_220ea88
	ldr     r0,  [pc, #0x1c] @ [0x220ea9c] (=#0x221a1bc)
	mov     r1, r5, lsl #1
	ldrh    r0, [r0, r1]
	ldmfd   sp!, {r4-r8,pc}
@ 0x220ea88

.arm
branch_220ea88: @ 220ea88 :arm
	add     r5, r5, #0x1
	cmp     r5, #0x2
	bcc     branch_220ea58
	mov     r0, #0x0
	ldmfd   sp!, {r4-r8,pc}
@ 0x220ea9c

.word 0x221a1bc @ 0x220ea9c
.arm
Function_220eaa0: @ 220eaa0 :arm
	cmp     r0, #0x3
	moveq   r0, #0x1
	movne   r0, #0x0
	bx      lr
@ 0x220eab0

.arm
Function_220eab0: @ 220eab0 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r6, r1
	mov     r7, r0
	ldrb    r0, [r6]
	ldrb    r1, [r6, #0x1]
	bl      Function_220eaa0
	cmp     r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	ldrb    r2, [r6, #0x2]
	ldrb    r1, [r6, #0x3]
	ldr     r3,  [pc, #0x94] @ [0x220eb74] (=#0x55555556)
	add     r0, r6, #0x8
	add     r4, r1, r2, lsl #8
	smull   r2, r1, r3, r4
	add     r1, r1, r4, lsr #31
	mov     r2, #0x3
	bl      Function_220ea40
	mov     r0, r0, lsl #16
	movs    r0, r0, lsr #16
	ldmeqfd sp!, {r3-r7,pc}
	strh    r0, [r7, #0x32]
	ldrb    r5, [r6, #0x4]
	ldrb    r3, [r6, #0x5]
	ldrb    r2, [r6, #0x6]
	ldrb    r0, [r6, #0x7]
	mov     r1, #0x0
	add     r3, r3, r5, lsl #8
	add     r5, r0, r2, lsl #8
	add     r0, r4, #0x8
	strb    r1, [r7, #0x30]
	cmp     r5, #0x20
	add     r4, r0, r3
	blt     branch_220eb48
	add     r0, r6, r4
	add     r1, r7, #0x34
	mov     r2, #0x20
	bl      Function_20c4db0
	b       branch_220eb68
@ 0x220eb48

.arm
branch_220eb48: @ 220eb48 :arm
	add     r0, r7, #0x34
	rsb     r2, r5, #0x20
	bl      Function_20c4cf4
	add     r1, r7, #0x54
	mov     r2, r5
	add     r0, r6, r4
	sub     r1, r1, r5
	bl      Function_20c4db0
.arm
branch_220eb68: @ 220eb68 :arm
	mov     r0, #0x1
	strb    r0, [r7, #0x455]
	ldmfd   sp!, {r3-r7,pc}
@ 0x220eb74

.word 0x55555556 @ 0x220eb74

.incbin "./baserom/overlay/overlay_0004.bin", 0x3ddf8, 0x220f3d0 - 0x220eb78


.arm
Function_220f3d0: @ 220f3d0 :arm
	mov     r2, #0x8
.arm
branch_220f3d4: @ 220f3d4 :arm
	ldrb    r1, [r0, #-0x1]!
	add     r1, r1, #0x1
	ands    r1, r1, #0xff
	strb    r1, [r0]
	bxne    lr
	subs    r2, r2, #0x1
	bne     branch_220f3d4
	bx      lr
@ 0x220f3f4

.arm
Function_220f3f4: @ 220f3f4 :arm
	stmfd   sp!, {r4,lr}
	add     r0, r0, #30, 28 @ #0x1e0
	mov     r4, r2
	bl      Function_2211e10
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x220f40c

.arm
Function_220f40c: @ 220f40c :arm
	stmfd   sp!, {r4-r7,lr}
	sub     sp, sp, #0x44
	mov     r6, r1
	ldrb    r3, [r6, #0x3]
	ldrb    r2, [r6, #0x4]
	mov     r7, r0
	add     r1, r6, #0x5
	add     r2, r2, r3, lsl #8
	bl      Function_220f3f4
	ldrh    r1, [r7, #0x32]
	mov     r4, r0
	cmp     r1, #0x4
	beq     branch_220f44c
	cmp     r1, #0x5
	beq     branch_220f52c
	b       branch_220f608
@ 0x220f44c

.arm
branch_220f44c: @ 220f44c :arm
	sub     r4, r4, #0x10
	mov     r0, r4, asr #8
	strb    r0, [r6, #0x3]
	strb    r4, [r6, #0x4]
	add     r0, r7, #255, 30 @ #0x3fc
	bl      Function_2211338
	ldr     r1, [r7, #0x1d4]
	add     r0, r7, #255, 30 @ #0x3fc
	mov     r2, #0x10
	bl      Function_2211380
	add     r0, sp, #0x0
	mov     r1, #0x36
	mov     r2, #0x30
	bl      Function_20c4cf4
	add     r1, sp, #0x0
	add     r0, r7, #255, 30 @ #0x3fc
	mov     r2, #0x30
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, r7, #185, 30 @ #0x2e4
	mov     r2, #0x8
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, r6, #0x3
	add     r2, r4, #0x2
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, sp, #0x30
	bl      Function_2211438
	add     r0, r7, #255, 30 @ #0x3fc
	bl      Function_2211338
	ldr     r1, [r7, #0x1d4]
	add     r0, r7, #255, 30 @ #0x3fc
	mov     r2, #0x10
	bl      Function_2211380
	add     r0, sp, #0x0
	mov     r1, #0x5c
	mov     r2, #0x30
	bl      Function_20c4cf4
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, sp, #0x0
	mov     r2, #0x30
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, sp, #0x30
	mov     r2, #0x10
	bl      Function_2211380
	add     r0, r7, #255, 30 @ #0x3fc
	add     r1, sp, #0x30
	bl      Function_2211438
	mov     r5, #0x10
	b       branch_220f608
@ 0x220f52c

.arm
branch_220f52c: @ 220f52c :arm
	sub     r4, r4, #0x14
	mov     r0, r4, asr #8
	strb    r0, [r6, #0x3]
	strb    r4, [r6, #0x4]
	add     r0, r7, #210, 30 @ #0x348
	bl      Function_2211bf8
	ldr     r1, [r7, #0x1d4]
	add     r0, r7, #210, 30 @ #0x348
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r0, sp, #0x0
	mov     r1, #0x36
	mov     r2, #0x28
	bl      Function_20c4cf4
	add     r1, sp, #0x0
	add     r0, r7, #210, 30 @ #0x348
	mov     r2, #0x28
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	add     r1, r7, #185, 30 @ #0x2e4
	mov     r2, #0x8
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	mov     r1, r6
	mov     r2, #0x1
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	add     r1, r6, #0x3
	add     r2, r4, #0x2
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	add     r1, sp, #0x30
	bl      Function_2211d04
	add     r0, r7, #210, 30 @ #0x348
	bl      Function_2211bf8
	ldr     r1, [r7, #0x1d4]
	add     r0, r7, #210, 30 @ #0x348
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r0, sp, #0x0
	mov     r1, #0x5c
	mov     r2, #0x28
	bl      Function_20c4cf4
	add     r0, r7, #210, 30 @ #0x348
	add     r1, sp, #0x0
	mov     r2, #0x28
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	add     r1, sp, #0x30
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r0, r7, #210, 30 @ #0x348
	add     r1, sp, #0x30
	bl      Function_2211d04
	mov     r5, #0x14
.arm
branch_220f608: @ 220f608 :arm
	add     r0, r6, #0x5
	add     r1, sp, #0x30
	mov     r2, r5
	add     r0, r0, r4
	bl      Function_20d5190
	cmp     r0, #0x0
	movne   r0, #0x9
	strneb  r0, [r7, #0x455]
	add     r0, r7, #187, 30 @ #0x2ec
	bl      Function_220f3d0
	add     r0, r4, #0x5
	add     sp, sp, #0x44
	ldmfd   sp!, {r4-r7,pc}
@ 0x220f63c

.arm
Function_220f63c: @ 220f63c :arm
	stmfd   sp!, {r3-r7,lr}
	sub     sp, sp, #0x30
	mov     r4, r1
	mov     r5, r0
	ldrh    r0, [r5, #0x32]
	ldrb    r2, [r4, #0x3]
	ldrb    r1, [r4, #0x4]
	cmp     r0, #0x4
	add     r6, r4, #0x5
	add     r7, r1, r2, lsl #8
	beq     branch_220f674
	cmp     r0, #0x5
	beq     branch_220f744
	b       branch_220f810
@ 0x220f674

.arm
branch_220f674: @ 220f674 :arm
	add     r0, r5, #255, 30 @ #0x3fc
	bl      Function_2211338
	ldr     r1, [r5, #0xbc]
	add     r0, r5, #255, 30 @ #0x3fc
	mov     r2, #0x10
	bl      Function_2211380
	add     r0, sp, #0x0
	mov     r1, #0x36
	mov     r2, #0x30
	bl      Function_20c4cf4
	add     r1, sp, #0x0
	add     r0, r5, #255, 30 @ #0x3fc
	mov     r2, #0x30
	bl      Function_2211380
	add     r0, r5, #255, 30 @ #0x3fc
	add     r1, r5, #115, 30 @ #0x1cc
	mov     r2, #0x8
	bl      Function_2211380
	add     r0, r5, #255, 30 @ #0x3fc
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2211380
	add     r0, r5, #255, 30 @ #0x3fc
	add     r1, r4, #0x3
	add     r2, r7, #0x2
	bl      Function_2211380
	add     r0, r5, #255, 30 @ #0x3fc
	add     r1, r6, r7
	bl      Function_2211438
	add     r0, r5, #255, 30 @ #0x3fc
	bl      Function_2211338
	ldr     r1, [r5, #0xbc]
	add     r0, r5, #255, 30 @ #0x3fc
	mov     r2, #0x10
	bl      Function_2211380
	add     r0, sp, #0x0
	mov     r1, #0x5c
	mov     r2, #0x30
	bl      Function_20c4cf4
	add     r0, r5, #255, 30 @ #0x3fc
	add     r1, sp, #0x0
	mov     r2, #0x30
	bl      Function_2211380
	add     r0, r5, #255, 30 @ #0x3fc
	add     r1, r6, r7
	mov     r2, #0x10
	bl      Function_2211380
	add     r1, r6, r7
	add     r0, r5, #255, 30 @ #0x3fc
	bl      Function_2211438
	add     r7, r7, #0x10
	b       branch_220f810
@ 0x220f744

.arm
branch_220f744: @ 220f744 :arm
	add     r0, r5, #210, 30 @ #0x348
	bl      Function_2211bf8
	ldr     r1, [r5, #0xbc]
	add     r0, r5, #210, 30 @ #0x348
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r0, sp, #0x0
	mov     r1, #0x36
	mov     r2, #0x28
	bl      Function_20c4cf4
	add     r1, sp, #0x0
	add     r0, r5, #210, 30 @ #0x348
	mov     r2, #0x28
	bl      Function_2211c4c
	add     r0, r5, #210, 30 @ #0x348
	add     r1, r5, #115, 30 @ #0x1cc
	mov     r2, #0x8
	bl      Function_2211c4c
	add     r0, r5, #210, 30 @ #0x348
	mov     r1, r4
	mov     r2, #0x1
	bl      Function_2211c4c
	add     r0, r5, #210, 30 @ #0x348
	add     r1, r4, #0x3
	add     r2, r7, #0x2
	bl      Function_2211c4c
	add     r0, r5, #210, 30 @ #0x348
	add     r1, r6, r7
	bl      Function_2211d04
	add     r0, r5, #210, 30 @ #0x348
	bl      Function_2211bf8
	ldr     r1, [r5, #0xbc]
	add     r0, r5, #210, 30 @ #0x348
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r0, sp, #0x0
	mov     r1, #0x5c
	mov     r2, #0x28
	bl      Function_20c4cf4
	add     r0, r5, #210, 30 @ #0x348
	add     r1, sp, #0x0
	mov     r2, #0x28
	bl      Function_2211c4c
	add     r0, r5, #210, 30 @ #0x348
	add     r1, r6, r7
	mov     r2, #0x14
	bl      Function_2211c4c
	add     r1, r6, r7
	add     r0, r5, #210, 30 @ #0x348
	bl      Function_2211d04
	add     r7, r7, #0x14
.arm
branch_220f810: @ 220f810 :arm
	mov     r0, r7, asr #8
	strb    r0, [r4, #0x3]
	mov     r2, r7
	add     r0, r5, #0xc8
	add     r1, r4, #0x5
	strb    r7, [r4, #0x4]
	bl      Function_2211e10
	add     r0, r5, #117, 30 @ #0x1d4
	bl      Function_220f3d0
	add     r0, r7, #0x5
	add     sp, sp, #0x30
	ldmfd   sp!, {r3-r7,pc}
@ 0x220f840

.arm
Function_220f840: @ 220f840 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	add     r4, sp, #0x0
.arm
branch_220f854: @ 220f854 :arm
	mov     r0, r4
	mov     r1, r5
	bl      Function_220c154
	ldr     r1, [sp]
	cmp     r1, #0x0
	mvneq   r0, #0x0
	ldmeqfd sp!, {r3-r7,pc}
	cmp     r1, r6
	strhi   r6, [sp]
	ldr     r2, [sp]
	mov     r1, r7
	bl      Function_20c4db0
	ldr     r0, [sp]
	mov     r1, r5
	bl      Function_220c234
	ldr     r0, [sp]
	sub     r6, r6, r0
	cmp     r6, #0x0
	add     r7, r7, r0
	bgt     branch_220f854
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x220f8ac

.arm
Function_220f8ac: @ 220f8ac :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	mov     r4, r2
	add     r0, r6, #187, 30 @ #0x2ec
	bl      Function_2211c4c
	mov     r1, r5
	mov     r2, r4
	add     r0, r6, #233, 30 @ #0x3a4
	bl      Function_2211380
	ldmfd   sp!, {r4-r6,pc}
@ 0x220f8d8

.arm
Function_220f8d8: @ 220f8d8 :arm
	stmfd   sp!, {r3-r11,lr}
	mov     r9, r0
	ldrb    r2, [r9, #0x455]
	mov     r8, r1
	cmp     r2, #0x9
	bne     branch_220f904
	ldr     r1,  [pc, #0x25c] @ [0x220fb54] (=#0x221de30)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r3-r11,pc}
@ 0x220f904

.arm
branch_220f904: @ 220f904 :arm
	ldrb    r3, [r8, #0x3]
	ldrb    r1, [r8, #0x4]
	add     r0, r2, #0xf9
	and     r0, r0, #0xff
	add     r1, r1, r3, lsl #8
	cmp     r0, #0x1
	add     r6, r1, #0x5
	ldrb    r4, [r8]
	bhi     branch_220f930
	cmp     r4, #0x15
	bne     branch_220f940
.arm
branch_220f930: @ 220f930 :arm
	cmp     r4, #0x15
	bne     branch_220f970
	cmp     r6, #0x7
	bls     branch_220f970
.arm
branch_220f940: @ 220f940 :arm
	mov     r0, r9
	mov     r1, r8
	bl      Function_220f40c
	ldrb    r2, [r9, #0x455]
	mov     r6, r0
	cmp     r2, #0x9
	bne     branch_220f970
	ldr     r1,  [pc, #0x1f0] @ [0x220fb54] (=#0x221de30)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r3-r11,pc}
@ 0x220f970

.arm
branch_220f970: @ 220f970 :arm
	sub     r0, r4, #0x14
	cmp     r0, #0x3
	add     r5, r8, #0x5
	sub     r6, r6, #0x5
	addls   pc, pc, r0, lsl #2
	b       branch_220fb38
@ 0x220f988


.incbin "./baserom/overlay/overlay_0004.bin", 0x3ec08, 0x220fb38 - 0x220f988


.arm
branch_220fb38: @ 220fb38 :arm
	mov     r0, #0x9
	strb    r0, [r9, #0x455]
	ldr     r1,  [pc, #0xc] @ [0x220fb54] (=#0x221de30)
	mov     r0, r8
	ldr     r1, [r1]
	blx     r1
	ldmfd   sp!, {r3-r11,pc}
@ 0x220fb54

.word 0x221de30 @ 0x220fb54
.arm
Function_220fb58: @ 220fb58 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	ldr     r4, [r5, #0xc]
	add     r6, sp, #0x0
.arm
branch_220fb6c: @ 220fb6c :arm
	mov     r0, r6
	mov     r1, r5
	bl      Function_220c154
	ldr     r1, [sp]
	cmp     r1, #0x0
	moveq   r0, #0x9
	addeq   sp, sp, #0x4
	streqb  r0, [r4, #0x455]
	ldmeqfd sp!, {r3-r6,pc}
	cmp     r1, #0x5
	bcc     branch_220fb6c
	ldrb    r1, [r0]
	cmp     r1, #0x80
	bne     branch_220fc54
	ldrb    r1, [r4, #0x454]
	cmp     r1, #0x0
	beq     branch_220fc48
	ldrb    r1, [r4, #0x455]
	cmp     r1, #0x0
	bne     branch_220fc48
	ldrb    r2, [r0, #0x1]
	mov     r1, r5
	mov     r0, #0x2
	str     r2, [sp]
	bl      Function_220c234
	ldr     r1,  [pc, #0x114] @ [0x220fcec] (=#0x221de04)
	ldr     r0, [sp]
	ldr     r1, [r1]
	blx     r1
	movs    r6, r0
	moveq   r0, #0x9
	addeq   sp, sp, #0x4
	streqb  r0, [r4, #0x455]
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [sp]
	mov     r2, r5
	bl      Function_220f840
	cmp     r0, #0x0
	ldreqb  r0, [r6]
	cmpeq   r0, #0x1
	movne   r0, #0x9
	strneb  r0, [r4, #0x455]
	bne     branch_220fc24
	mov     r0, r4
	add     r1, r6, #0x1
	bl      Function_220eab0
.arm
branch_220fc24: @ 220fc24 :arm
	ldr     r2, [sp]
	mov     r0, r4
	mov     r1, r6
	bl      Function_220f8ac
	ldr     r1,  [pc, #0xb4] @ [0x220fcf0] (=#0x221de30)
	mov     r0, r6
	ldr     r1, [r1]
	blx     r1
	b       branch_220fce0
@ 0x220fc48

.arm
branch_220fc48: @ 220fc48 :arm
	mov     r0, #0x9
	strb    r0, [r4, #0x455]
	b       branch_220fce0
@ 0x220fc54

.arm
branch_220fc54: @ 220fc54 :arm
	ldrb    r2, [r0, #0x3]
	ldrb    r0, [r0, #0x4]
	ldr     r1,  [pc, #0x90] @ [0x220fcf4] (=#0x4805)
	add     r0, r0, r2, lsl #8
	add     r0, r0, #0x5
	str     r0, [sp]
	cmp     r0, r1
	movhi   r0, #0x9
	addhi   sp, sp, #0x4
	strhib  r0, [r4, #0x455]
	ldmhifd sp!, {r3-r6,pc}
	ldr     r1,  [pc, #0x64] @ [0x220fcec] (=#0x221de04)
	ldr     r1, [r1]
	blx     r1
	movs    r6, r0
	moveq   r0, #0x9
	addeq   sp, sp, #0x4
	streqb  r0, [r4, #0x455]
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [sp]
	mov     r2, r5
	bl      Function_220f840
	cmp     r0, #0x0
	beq     branch_220fcd4
	ldr     r1,  [pc, #0x34] @ [0x220fcf0] (=#0x221de30)
	mov     r0, r6
	ldr     r1, [r1]
	blx     r1
	mov     r0, #0x9
	add     sp, sp, #0x4
	strb    r0, [r4, #0x455]
	ldmfd   sp!, {r3-r6,pc}
@ 0x220fcd4

.arm
branch_220fcd4: @ 220fcd4 :arm
	mov     r0, r4
	mov     r1, r6
	bl      Function_220f8d8
.arm
branch_220fce0: @ 220fce0 :arm
	ldrb    r0, [r4, #0x455]
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x220fcec

.word 0x221de04 @ 0x220fcec
.word 0x221de30 @ 0x220fcf0
.word 0x4805 @ 0x220fcf4

.incbin "./baserom/overlay/overlay_0004.bin", 0x3ef78, 0x22108ec - 0x220fcf8


.arm
Function_22108ec: @ 22108ec :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r5, r1
	ldr     r4, [r5, #0xc]
	mov     r6, r0
	ldr     r12, [r4, #0x824]
	cmp     r12, #0x0
	beq     branch_2210970
	ldrb    r0, [r4, #0x456]
	cmp     r0, #0x0
	bne     branch_2210970
	ldr     r3, [r4, #0x82c]
	ldr     r1, [r4, #0x828]
	mov     r2, r5
	add     r0, r12, r3
	sub     r1, r1, r3
	bl      Function_220f840
	cmp     r0, #0x0
	beq     branch_2210954
	ldr     r1,  [pc, #0x84] @ [0x22109c0] (=#0x221de30)
	ldr     r0, [r4, #0x824]
	ldr     r1, [r1]
	blx     r1
	mov     r0, #0x0
	str     r0, [r4, #0x824]
	str     r0, [r6]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2210954

.arm
branch_2210954: @ 2210954 :arm
	ldr     r1, [r4, #0x824]
	mov     r0, r4
	bl      Function_220f8d8
	ldrb    r0, [r4, #0x456]
	cmp     r0, #0x0
	moveq   r0, #0x0
	streq   r0, [r4, #0x824]
.arm
branch_2210970: @ 2210970 :arm
	ldr     r0, [r4, #0x824]
	cmp     r0, #0x0
	bne     branch_22109a0
.arm
branch_221097c: @ 221097c :arm
	mov     r0, r5
	bl      Function_220fb58
	cmp     r0, #0x9
	moveq   r0, #0x0
	streq   r0, [r6]
	ldmeqfd sp!, {r4-r6,pc}
	ldr     r0, [r4, #0x824]
	cmp     r0, #0x0
	beq     branch_221097c
.arm
branch_22109a0: @ 22109a0 :arm
	ldr     r1, [r4, #0x828]
	ldr     r0, [r4, #0x82c]
	sub     r0, r1, r0
	str     r0, [r6]
	ldr     r1, [r4, #0x824]
	ldr     r0, [r4, #0x82c]
	add     r0, r1, r0
	ldmfd   sp!, {r4-r6,pc}
@ 0x22109c0

.word 0x221de30 @ 0x22109c0
.arm
Function_22109c4: @ 22109c4 :arm
	stmfd   sp!, {r4,lr}
	ldr     r4, [r1, #0xc]
	ldr     r2, [r4, #0x828]
	ldr     r1, [r4, #0x82c]
	sub     r2, r2, r1
	cmp     r0, r2
	bcc     branch_2210a04
	ldr     r0, [r4, #0x824]
	cmp     r0, #0x0
	beq     branch_22109f8
	ldr     r1,  [pc, #0x1c] @ [0x2210a10] (=#0x221de30)
	ldr     r1, [r1]
	blx     r1
.arm
branch_22109f8: @ 22109f8 :arm
	mov     r0, #0x0
	str     r0, [r4, #0x824]
	ldmfd   sp!, {r4,pc}
@ 0x2210a04

.arm
branch_2210a04: @ 2210a04 :arm
	add     r0, r1, r0
	str     r0, [r4, #0x82c]
	ldmfd   sp!, {r4,pc}
@ 0x2210a10

.word 0x221de30 @ 0x2210a10
.arm
Function_2210a14: @ 2210a14 :arm
	stmfd   sp!, {r3-r6,lr}
	sub     sp, sp, #0x4
	mov     r5, r0
	ldr     r4, [r5, #0xc]
	ldr     r0, [r4, #0x824]
	cmp     r0, #0x0
	ldr     r0, [r5, #0x44]
	bne     branch_2210ab4
	cmp     r0, #0x5
	addcc   sp, sp, #0x4
	ldmccfd sp!, {r3-r6,pc}
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_220c154
	ldrb    r2, [r0, #0x3]
	ldrb    r0, [r0, #0x4]
	ldr     r1,  [pc, #0xf4] @ [0x2210b50] (=#0x4805)
	add     r0, r0, r2, lsl #8
	add     r0, r0, #0x5
	str     r0, [sp]
	cmp     r0, r1
	movhi   r0, #0x9
	addhi   sp, sp, #0x4
	strhib  r0, [r4, #0x455]
	ldmhifd sp!, {r3-r6,pc}
	ldr     r1,  [pc, #0xd4] @ [0x2210b54] (=#0x221de04)
	ldr     r1, [r1]
	blx     r1
	cmp     r0, #0x0
	str     r0, [r4, #0x824]
	moveq   r0, #0x9
	addeq   sp, sp, #0x4
	streqb  r0, [r4, #0x455]
	ldmeqfd sp!, {r3-r6,pc}
	ldr     r1, [sp]
	mov     r0, #0x0
	str     r1, [r4, #0x828]
	str     r0, [r4, #0x82c]
	strb    r0, [r4, #0x456]
	b       branch_2210ac0
@ 0x2210ab4

.arm
branch_2210ab4: @ 2210ab4 :arm
	cmp     r0, #0x0
	addeq   sp, sp, #0x4
	ldmeqfd sp!, {r3-r6,pc}
.arm
branch_2210ac0: @ 2210ac0 :arm
	add     r0, sp, #0x0
	mov     r1, r5
	bl      Function_220c154
	ldr     r3, [r4, #0x828]
	ldr     r2, [r4, #0x82c]
	ldr     r1, [sp]
	sub     r2, r3, r2
	cmp     r1, r2
	strcs   r2, [sp]
	movcs   r6, #0x1
	ldr     r3, [r4, #0x824]
	ldr     r1, [r4, #0x82c]
	ldr     r2, [sp]
	add     r1, r3, r1
	movcc   r6, #0x0
	bl      Function_20c4db0
	ldr     r0, [sp]
	mov     r1, r5
	bl      Function_220c234
	cmp     r6, #0x0
	beq     branch_2210b38
	ldr     r1, [r4, #0x824]
	mov     r0, r4
	bl      Function_220f8d8
	ldrb    r0, [r4, #0x456]
	add     sp, sp, #0x4
	cmp     r0, #0x0
	moveq   r0, #0x0
	streq   r0, [r4, #0x824]
	ldmfd   sp!, {r3-r6,pc}
@ 0x2210b38

.arm
branch_2210b38: @ 2210b38 :arm
	ldr     r1, [r4, #0x82c]
	ldr     r0, [sp]
	add     r0, r1, r0
	str     r0, [r4, #0x82c]
	add     sp, sp, #0x4
	ldmfd   sp!, {r3-r6,pc}
@ 0x2210b50

.word 0x4805 @ 0x2210b50
.word 0x221de04 @ 0x2210b54
.arm
Function_2210b58: @ 2210b58 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	ldr     r4, [r5, #0xc]
	ldr     r0, [r4, #0x824]
	cmp     r0, #0x0
	ldrneb  r0, [r4, #0x456]
	cmpne   r0, #0x0
	bne     branch_2210b80
	mov     r0, r5
	bl      Function_2210a14
.arm
branch_2210b80: @ 2210b80 :arm
	ldr     r1, [r4, #0x824]
	cmp     r1, #0x0
	ldrneb  r0, [r4, #0x456]
	cmpne   r0, #0x0
	beq     branch_2210ba4
	ldr     r1, [r4, #0x828]
	ldr     r0, [r4, #0x82c]
	sub     r0, r1, r0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2210ba4

.arm
branch_2210ba4: @ 2210ba4 :arm
	cmp     r1, #0x0
	bne     branch_2210bcc
	ldrb    r0, [r5, #0x8]
	cmp     r0, #0x4
	bne     branch_2210bc4
	ldrb    r0, [r4, #0x455]
	cmp     r0, #0x9
	bne     branch_2210bcc
.arm
branch_2210bc4: @ 2210bc4 :arm
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2210bcc

.arm
branch_2210bcc: @ 2210bcc :arm
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x2210bd4

.arm
Function_2210bd4: @ 2210bd4 :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0xc
	ldr     r4, [sp, #0x30]
	mov     r9, r1
	mov     r1, r4
	ldr     r1, [r1, #0xc]
	mov     r10, r0
	mov     r0, #0x0
	str     r4, [sp, #0x30]
	str     r1, [sp, #0x8]
	mov     r8, r2
	add     r5, r9, r3
	str     r0, [sp, #0x4]
.arm
branch_2210c08: @ 2210c08 :arm
	ldr     r0,  [pc, #0xec] @ [0x2210cfc] (=#0xb4f)
	ldr     r1,  [pc, #0xec] @ [0x2210d00] (=#0x221de04)
	cmp     r5, r0
	movgt   r6, r0
	movle   r6, r5
	ldr     r1, [r1]
	add     r0, r6, #0x19
	blx     r1
	movs    r4, r0
	beq     branch_2210cf0
	cmp     r9, r6
	movcs   r7, r6
	movcc   r7, r9
	mov     r0, r10
	add     r1, r4, #0x5
	mov     r2, r7
	sub     r11, r6, r7
	bl      Function_20c4db0
	add     r1, r4, #0x5
	mov     r0, r8
	add     r1, r1, r7
	mov     r2, r11
	add     r10, r10, r7
	sub     r9, r9, r7
	bl      Function_20c4db0
	mov     r0, #0x17
	strb    r0, [r4]
	mov     r0, #0x3
	strb    r0, [r4, #0x1]
	mov     r0, #0x0
	strb    r0, [r4, #0x2]
	mov     r0, r6, asr #8
	strb    r0, [r4, #0x3]
	ldr     r0, [sp, #0x8]
	mov     r1, r4
	add     r8, r8, r11
	strb    r6, [r4, #0x4]
	bl      Function_220f63c
	ldr     r1, [sp, #0x30]
	mov     r7, r0
	mov     r2, #0x0
	str     r1, [sp]
	mov     r0, r4
	mov     r1, r7
	mov     r3, r2
	bl      Function_220c3fc
	cmp     r0, r7
	ldr     r1,  [pc, #0x38] @ [0x2210d04] (=#0x221de30)
	mov     r0, r4
	ldr     r1, [r1]
	movcc   r6, #0x0
	blx     r1
	ldr     r0, [sp, #0x4]
	subs    r5, r5, r6
	add     r0, r0, r6
	str     r0, [sp, #0x4]
	cmpne   r6, #0x0
	bne     branch_2210c08
.arm
branch_2210cf0: @ 2210cf0 :arm
	ldr     r0, [sp, #0x4]
	add     sp, sp, #0xc
	ldmfd   sp!, {r4-r11,pc}
@ 0x2210cfc

.word 0xb4f @ 0x2210cfc
.word 0x221de04 @ 0x2210d00
.word 0x221de30 @ 0x2210d04

.incbin "./baserom/overlay/overlay_0004.bin", 0x3ff88, 0x2210eec - 0x2210d08


.arm
Function_2210eec: @ 2210eec :arm
	ldr     r12,  [pc, #0xc] @ [0x2210f00] (=Function_20c4db0)
	mov     r3, r0
	mov     r0, r1
	mov     r1, r3
	bx      r12
@ 0x2210f00

.word Function_20c4db0 @ 0x2210f00



.arm
Function_2210f04: @ 2210f04 :arm
	ldr     r12,  [pc, #0xc] @ [0x2210f18] (=Function_20c4db0)
	mov     r3, r0
	mov     r0, r1
	mov     r1, r3
	bx      r12
@ 0x2210f18

.word Function_20c4db0 @ 0x2210f18



.arm
Function_2210f1c: @ 2210f1c :arm
	stmfd   sp!, {r4-r11,lr}
	sub     sp, sp, #0x44
	str     r0, [sp]
	ldr     r3, [sp]
	add     r0, sp, #0x4
	mov     r2, #0x40
	ldmia   r3, {r4-r7}
	bl      Function_2210f04
	mov     r3, #0x0
	ldr     lr,  [pc, #0x3e8] @ [0x2211330] (=#0x221a224)
	mov     r12, r3
	add     r2, sp, #0x4
.arm
branch_2210f4c: @ 2210f4c :arm
	ldr     r1,  [pc, #0x3e0] @ [0x2211334] (=#0x221a2a4)
	ldrb    r0, [lr]
	add     r9, r1, r3, lsl #2
	eor     r1, r6, r7
	and     r8, r5, r1
	ldr     r1,  [pc, #0x3cc] @ [0x2211334] (=#0x221a2a4)
	ldr     r0, [r2, r0, lsl #0x2]
	ldr     r10, [r1, r3, lsl #0x2]
	eor     r1, r7, r8
	add     r0, r1, r0
	add     r0, r10, r0
	add     r1, r4, r0
	mov     r0, r1, lsr #25
	orr     r0, r0, r1, lsl #7
	ldrb    r1, [lr, #0x1]
	add     r4, r5, r0
	eor     r0, r5, r6
	and     r0, r4, r0
	ldr     r10, [r2, r1, lsl #0x2]
	eor     r0, r6, r0
	add     r0, r0, r10
	ldr     r8, [r9, #0x4]
	ldrb    r10, [lr, #0x2]
	add     r0, r8, r0
	add     r7, r7, r0
	mov     r0, r7, lsr #20
	orr     r0, r0, r7, lsl #12
	add     r7, r4, r0
	eor     r0, r4, r5
	and     r0, r7, r0
	ldr     r1, [r9, #0x8]
	ldrb    r11, [lr, #0x3]
	ldr     r10, [r2, r10, lsl #0x2]
	eor     r0, r5, r0
	add     r0, r0, r10
	add     r0, r1, r0
	add     r6, r6, r0
	mov     r1, r6, lsr #15
	orr     r1, r1, r6, lsl #17
	add     r12, r12, #0x1
	eor     r8, r7, r4
	add     r6, r7, r1
	and     r1, r6, r8
	ldr     r0, [r2, r11, lsl #0x2]
	eor     r1, r4, r1
	ldr     r9, [r9, #0xc]
	add     r0, r1, r0
	add     r0, r9, r0
	add     r1, r5, r0
	mov     r0, r1, lsr #10
	orr     r0, r0, r1, lsl #22
	add     lr, lr, #0x4
	add     r5, r6, r0
	add     r3, r3, #0x4
	cmp     r12, #0x4
	blt     branch_2210f4c
	ldr     r0,  [pc, #0x2fc] @ [0x2211330] (=#0x221a224)
	ldr     lr,  [pc, #0x2fc] @ [0x2211334] (=#0x221a2a4)
	mov     r11, #0x0
	add     r10, r0, r3
	add     r9, sp, #0x4
.arm
branch_2211040: @ 2211040 :arm
	ldrb    r0, [r10]
	add     r12, lr, r3, lsl #2
	eor     r1, r5, r6
	and     r1, r7, r1
	ldr     r8, [lr, r3, lsl #0x2]
	eor     r1, r6, r1
	ldr     r0, [r9, r0, lsl #0x2]
	ldr     r2, [r12, #0x4]
	add     r0, r1, r0
	add     r0, r8, r0
	add     r1, r4, r0
	mov     r0, r1, lsr #27
	orr     r1, r0, r1, lsl #5
	ldrb    r0, [r10, #0x1]
	add     r4, r5, r1
	eor     r1, r4, r5
	and     r1, r6, r1
	eor     r1, r5, r1
	ldr     r0, [r9, r0, lsl #0x2]
	ldr     r8, [r12, #0x8]
	add     r0, r1, r0
	add     r0, r2, r0
	add     r2, r7, r0
	ldr     r0, [r12, #0xc]
	mov     r1, r2, lsr #23
	orr     r1, r1, r2, lsl #9
	add     r7, r4, r1
	eor     r1, r7, r4
	and     r1, r5, r1
	eor     r2, r4, r1
	ldrb    r1, [r10, #0x2]
	ldrb    r12, [r10, #0x3]
	add     r10, r10, #0x4
	ldr     r1, [r9, r1, lsl #0x2]
	ldr     r12, [r9, r12, lsl #0x2]
	add     r1, r2, r1
	add     r1, r8, r1
	add     r2, r6, r1
	mov     r1, r2, lsr #18
	orr     r1, r1, r2, lsl #14
	add     r6, r7, r1
	eor     r1, r6, r7
	and     r1, r4, r1
	eor     r1, r7, r1
	add     r1, r1, r12
	add     r0, r0, r1
	add     r1, r5, r0
	mov     r0, r1, lsr #12
	orr     r0, r0, r1, lsl #20
	add     r5, r6, r0
	add     r3, r3, #0x4
	add     r11, r11, #0x1
	cmp     r11, #0x4
	blt     branch_2211040
	ldr     r0,  [pc, #0x210] @ [0x2211330] (=#0x221a224)
	ldr     r1,  [pc, #0x210] @ [0x2211334] (=#0x221a2a4)
	add     r2, r0, r3
	mov     r8, #0x0
	add     r0, sp, #0x4
.arm
branch_221112c: @ 221112c :arm
	ldrb    r9, [r2]
	add     r11, r1, r3, lsl #2
	eor     r12, r5, r6
	ldr     r10, [r0, r9, lsl #0x2]
	eor     r12, r7, r12
	ldr     r9, [r1, r3, lsl #0x2]
	add     r10, r12, r10
	add     r9, r9, r10
	add     r9, r4, r9
	mov     r4, r9, lsr #28
	ldrb    r10, [r2, #0x1]
	orr     r4, r4, r9, lsl #4
	add     r4, r5, r4
	eor     r9, r4, r5
	eor     r9, r6, r9
	ldr     r12, [r0, r10, lsl #0x2]
	ldr     r10, [r11, #0x4]
	add     r9, r9, r12
	add     r9, r10, r9
	add     r9, r7, r9
	mov     r7, r9, lsr #21
	orr     r7, r7, r9, lsl #11
	ldrb    r9, [r2, #0x2]
	add     r7, r4, r7
	ldr     r10, [r11, #0x8]
	ldr     r12, [r0, r9, lsl #0x2]
	ldr     r9, [r11, #0xc]
	eor     r11, r7, r4
	eor     r11, r5, r11
	add     r11, r11, r12
	add     r10, r10, r11
	add     r10, r6, r10
	mov     r6, r10, lsr #16
	orr     r6, r6, r10, lsl #16
	add     r6, r7, r6
	eor     r10, r6, r7
	eor     r11, r4, r10
	ldrb    r10, [r2, #0x3]
	add     r2, r2, #0x4
	add     r3, r3, #0x4
	ldr     r10, [r0, r10, lsl #0x2]
	add     r8, r8, #0x1
	add     r10, r11, r10
	add     r9, r9, r10
	add     r9, r5, r9
	cmp     r8, #0x4
	mov     r5, r9, lsr #9
	orr     r5, r5, r9, lsl #23
	add     r5, r6, r5
	blt     branch_221112c
	ldr     r0,  [pc, #0x134] @ [0x2211330] (=#0x221a224)
	mov     r9, #0x0
	add     r8, r0, r3
	add     r2, sp, #0x4
.arm
branch_2211204: @ 2211204 :arm
	ldr     r1,  [pc, #0x128] @ [0x2211334] (=#0x221a2a4)
	ldrb    r0, [r8]
	add     r11, r1, r3, lsl #2
	mvn     r1, r7
	orr     r10, r5, r1
	ldr     r1,  [pc, #0x114] @ [0x2211334] (=#0x221a2a4)
	ldr     r0, [r2, r0, lsl #0x2]
	ldr     r12, [r1, r3, lsl #0x2]
	eor     r1, r6, r10
	add     r0, r1, r0
	add     r0, r12, r0
	add     r1, r4, r0
	mov     r0, r1, lsr #26
	orr     r0, r0, r1, lsl #6
	ldrb    r1, [r8, #0x1]
	add     r4, r5, r0
	mvn     r0, r6
	orr     r0, r4, r0
	ldr     r12, [r2, r1, lsl #0x2]
	eor     r0, r5, r0
	add     r0, r0, r12
	ldr     r10, [r11, #0x4]
	ldrb    r12, [r8, #0x2]
	add     r0, r10, r0
	add     r7, r7, r0
	mov     r0, r7, lsr #22
	orr     r0, r0, r7, lsl #10
	add     r7, r4, r0
	mvn     r0, r5
	orr     r0, r7, r0
	ldr     r1, [r11, #0x8]
	ldrb    lr, [r8, #0x3]
	ldr     r12, [r2, r12, lsl #0x2]
	eor     r0, r4, r0
	add     r0, r0, r12
	add     r0, r1, r0
	add     r6, r6, r0
	mov     r1, r6, lsr #17
	orr     r1, r1, r6, lsl #15
	add     r9, r9, #0x1
	mvn     r10, r4
	add     r6, r7, r1
	orr     r1, r6, r10
	ldr     r0, [r2, lr, lsl #0x2]
	eor     r1, r7, r1
	ldr     r11, [r11, #0xc]
	add     r0, r1, r0
	add     r0, r11, r0
	add     r1, r5, r0
	mov     r0, r1, lsr #11
	orr     r0, r0, r1, lsl #21
	add     r8, r8, #0x4
	add     r5, r6, r0
	add     r3, r3, #0x4
	cmp     r9, #0x4
	blt     branch_2211204
	ldr     r0, [sp]
	ldr     r0, [r0]
	add     r1, r0, r4
	ldr     r0, [sp]
	str     r1, [r0]
	ldr     r0, [r0, #0x4]
	add     r1, r0, r5
	ldr     r0, [sp]
	str     r1, [r0, #0x4]
	ldr     r0, [r0, #0x8]
	add     r1, r0, r6
	ldr     r0, [sp]
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0xc]
	add     r1, r0, r7
	ldr     r0, [sp]
	str     r1, [r0, #0xc]
	add     sp, sp, #0x44
	ldmfd   sp!, {r4-r11,pc}
@ 0x2211330

.word 0x221a224 @ 0x2211330
.word 0x221a2a4 @ 0x2211334
.arm
Function_2211338: @ 2211338 :arm
	stmfd   sp!, {r4,lr}
	mov     r1, #0x0
	mov     r2, #0x58
	mov     r4, r0
	bl      Function_20c4cf4
	ldr     r1,  [pc, #0x1c] @ [0x2211370] (=#0x67452301)
	ldr     r0,  [pc, #0x1c] @ [0x2211374] (=#0xefcdab89)
	str     r1, [r4]
	ldr     r1,  [pc, #0x18] @ [0x2211378] (=#0x98badcfe)
	str     r0, [r4, #0x4]
	ldr     r0,  [pc, #0x14] @ [0x221137c] (=#0x10325476)
	str     r1, [r4, #0x8]
	str     r0, [r4, #0xc]
	ldmfd   sp!, {r4,pc}
@ 0x2211370

.word 0x67452301 @ 0x2211370
.word 0xefcdab89 @ 0x2211374
.word 0x98badcfe @ 0x2211378
.word 0x10325476 @ 0x221137c
.arm
Function_2211380: @ 2211380 :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r3, [r8, #0x10]
	mov     r6, r2
	add     r0, r3, r6, lsl #3
	str     r0, [r8, #0x10]
	cmp     r0, r6, lsl #3
	ldrcc   r0, [r8, #0x14]
	mov     r2, r3, lsr #3
	addcc   r0, r0, #0x1
	strcc   r0, [r8, #0x14]
	ldr     r0, [r8, #0x14]
	and     r4, r2, #0x3f
	rsb     r5, r4, #0x40
	add     r0, r0, r6, lsr #29
	mov     r7, r1
	str     r0, [r8, #0x14]
	cmp     r6, r5
	bcc     branch_221141c
	add     r1, r8, #0x18
	mov     r0, r7
	mov     r2, r5
	add     r1, r1, r4
	bl      Function_20c4db0
	mov     r0, r8
	add     r1, r8, #0x18
	mov     r4, #0x0
	bl      Function_2210f1c
	add     r0, r5, #0x3f
	cmp     r0, r6
	bcs     branch_2211420
.arm
branch_22113fc: @ 22113fc :arm
	mov     r0, r8
	add     r1, r7, r5
	bl      Function_2210f1c
	add     r5, r5, #0x40
	add     r0, r5, #0x3f
	cmp     r0, r6
	bcc     branch_22113fc
	b       branch_2211420
@ 0x221141c

.arm
branch_221141c: @ 221141c :arm
	mov     r5, #0x0
.arm
branch_2211420: @ 2211420 :arm
	add     r1, r8, #0x18
	add     r0, r7, r5
	add     r1, r1, r4
	sub     r2, r6, r5
	bl      Function_20c4db0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2211438

.arm
Function_2211438: @ 2211438 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, r4
	add     r1, r5, #0x10
	mov     r2, #0x8
	bl      Function_2210eec
	ldr     r0, [r5, #0x10]
	ldr     r1,  [pc, #0x3c] @ [0x221149c] (=#0x221a264)
	mov     r0, r0, lsr #3
	and     r0, r0, #0x3f
	cmp     r0, #0x38
	rsblt   r2, r0, #0x38
	rsbge   r2, r0, #0x78
	mov     r0, r5
	bl      Function_2211380
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	bl      Function_2211380
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x10
	bl      Function_2210eec
	ldmfd   sp!, {r3-r5,pc}
@ 0x221149c

.word 0x221a264 @ 0x221149c
.arm
Function_22114a0: @ 22114a0 :arm
	add     r2, r0, #0xd
	add     r12, r0, #0x2
	and     r3, r2, #0xf
	eor     r2, r0, #0x8
	and     r12, r12, #0xf
	ldr     r3, [r1, r3, lsl #0x2]
	ldr     r2, [r1, r2, lsl #0x2]
	ldr     r12, [r1, r12, lsl #0x2]
	eor     r2, r3, r2
	ldr     r3, [r1, r0, lsl #0x2]
	eor     r2, r12, r2
	eor     r3, r3, r2
	mov     r2, r3, lsr #31
	orr     r2, r2, r3, lsl #1
	str     r2, [r1, r0, lsl #0x2]
	mov     r0, r2
	bx      lr
@ 0x22114e4

.arm
Function_22114e4: @ 22114e4 :arm
	stmfd   sp!, {r3,lr}
	movs    r2, r2, lsr #2
	mov     lr, #0x0
	ldmeqfd sp!, {r3,pc}
.arm
branch_22114f4: @ 22114f4 :arm
	ldr     r12, [r1], #0x4
	add     lr, lr, #0x1
	mov     r3, r12, lsr #24
	strb    r3, [r0]
	mov     r3, r12, lsr #16
	strb    r3, [r0, #0x1]
	mov     r3, r12, lsr #8
	strb    r3, [r0, #0x2]
	strb    r12, [r0, #0x3]
	cmp     lr, r2
	add     r0, r0, #0x4
	bcc     branch_22114f4
	ldmfd   sp!, {r3,pc}
@ 0x2211528

.arm
Function_2211528: @ 2211528 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, #0x0
	cmp     r2, #0x0
	ldmlsfd sp!, {r3-r5,pc}
.arm
branch_2211538: @ 2211538 :arm
	add     r4, r1, r5
	ldrb    r3, [r4, #0x1]
	ldrb    r12, [r1, r5]
	ldrb    lr, [r4, #0x2]
	mov     r3, r3, lsl #16
	orr     r3, r3, r12, lsl #24
	ldrb    r12, [r4, #0x3]
	orr     r3, r3, lr, lsl #8
	add     r5, r5, #0x4
	orr     r3, r12, r3
	cmp     r5, r2
	str     r3, [r0], #0x4
	bcc     branch_2211538
	ldmfd   sp!, {r3-r5,pc}
@ 0x2211570

.arm
Function_2211570: @ 2211570 :arm
	stmfd   sp!, {r3-r11,lr}
	sub     sp, sp, #0x50
	str     r0, [sp]
	ldr     r3, [sp]
	add     r0, sp, #0x10
	ldmia   r3, {r4,r5,r7-r9}
	mov     r2, #0x40
	bl      Function_2211528
	mov     r0, #0x0
	ldr     r3,  [pc, #0x64c] @ [0x2211be8] (=#0x5a827999)
	mov     r2, r0
	add     r1, sp, #0x10
.arm
branch_22115a0: @ 22115a0 :arm
	eor     r6, r7, r8
	mov     r10, r4, lsr #27
	and     r6, r5, r6
	orr     r11, r10, r4, lsl #5
	eor     r6, r8, r6
	mov     r10, r5, lsr #2
	orr     r10, r10, r5, lsl #30
	add     r5, r1, r0, lsl #2
	add     r6, r11, r6
	ldr     r12, [r1, r0, lsl #0x2]
	ldr     r11, [r5, #0x4]
	add     r6, r12, r6
	add     r6, r6, r3
	add     r9, r9, r6
	mov     r6, r9, lsr #27
	orr     r6, r6, r9, lsl #5
	eor     r12, r10, r7
	and     r12, r4, r12
	eor     r12, r7, r12
	add     r6, r6, r12
	add     r6, r11, r6
	add     r6, r6, r3
	add     r8, r8, r6
	mov     r6, r4, lsr #2
	orr     r4, r6, r4, lsl #30
	ldr     r11, [r5, #0x8]
	mov     r6, r8, lsr #27
	orr     r6, r6, r8, lsl #5
	eor     r12, r4, r10
	and     r12, r9, r12
	eor     r12, r10, r12
	add     r6, r6, r12
	add     r6, r11, r6
	add     r6, r6, r3
	add     r6, r7, r6
	mov     r7, r9, lsr #2
	orr     r9, r7, r9, lsl #30
	ldr     r7, [r5, #0xc]
	ldr     r11, [r5, #0x10]
	mov     r5, r6, lsr #27
	orr     r5, r5, r6, lsl #5
	eor     r12, r9, r4
	and     r12, r8, r12
	eor     r12, r4, r12
	add     r5, r5, r12
	add     r5, r7, r5
	add     r5, r5, r3
	add     r5, r10, r5
	mov     r7, r8, lsr #2
	orr     r8, r7, r8, lsl #30
	mov     r7, r5, lsr #27
	orr     r7, r7, r5, lsl #5
	eor     r10, r8, r9
	and     r10, r6, r10
	eor     r10, r9, r10
	add     r7, r7, r10
	add     r7, r11, r7
	add     r7, r7, r3
	add     r4, r4, r7
	mov     r7, r6, lsr #2
	orr     r7, r7, r6, lsl #30
	add     r0, r0, #0x5
	add     r2, r2, #0x1
	cmp     r2, #0x3
	blt     branch_22115a0
	eor     r0, r7, r8
	mov     r2, r4, lsr #27
	and     r0, r5, r0
	orr     r3, r2, r4, lsl #5
	eor     r0, r8, r0
	add     r3, r3, r0
	ldr     r6, [sp, #0x4c]
	ldr     r0,  [pc, #0x520] @ [0x2211be8] (=#0x5a827999)
	add     r3, r6, r3
	add     r3, r3, r0
	mov     r2, r5, lsr #2
	orr     r6, r2, r5, lsl #30
	mov     r0, #0x0
	add     r9, r9, r3
	bl      Function_22114a0
	eor     r1, r6, r7
	mov     r3, r9, lsr #27
	and     r1, r4, r1
	mov     r2, r4, lsr #2
	orr     r3, r3, r9, lsl #5
	eor     r1, r7, r1
	add     r1, r3, r1
	add     r3, r1, r0
	ldr     r0,  [pc, #0x4e0] @ [0x2211be8] (=#0x5a827999)
	add     r1, sp, #0x10
	add     r3, r3, r0
	orr     r5, r2, r4, lsl #30
	mov     r0, #0x1
	add     r8, r8, r3
	bl      Function_22114a0
	eor     r1, r5, r6
	mov     r2, r8, lsr #27
	and     r1, r9, r1
	orr     r2, r2, r8, lsl #5
	eor     r1, r6, r1
	add     r1, r2, r1
	add     r2, r1, r0
	ldr     r0,  [pc, #0x4a8] @ [0x2211be8] (=#0x5a827999)
	mov     r1, r9, lsr #2
	add     r0, r2, r0
	orr     r9, r1, r9, lsl #30
	add     r7, r7, r0
	add     r1, sp, #0x10
	mov     r0, #0x2
	bl      Function_22114a0
	mov     r1, r7, lsr #27
	orr     r2, r1, r7, lsl #5
	eor     r1, r9, r5
	and     r1, r8, r1
	eor     r1, r5, r1
	add     r1, r2, r1
	add     r2, r1, r0
	ldr     r0,  [pc, #0x46c] @ [0x2211be8] (=#0x5a827999)
	mov     r1, r8, lsr #2
	add     r0, r2, r0
	orr     r8, r1, r8, lsl #30
	add     r6, r6, r0
	mov     r0, #0x3
	add     r1, sp, #0x10
	bl      Function_22114a0
	mov     r1, r6, lsr #27
	orr     r2, r1, r6, lsl #5
	eor     r1, r8, r9
	and     r1, r7, r1
	eor     r1, r9, r1
	add     r1, r2, r1
	add     r2, r1, r0
	ldr     r0,  [pc, #0x430] @ [0x2211be8] (=#0x5a827999)
	mov     r1, r7, lsr #2
	add     r0, r2, r0
	add     r5, r5, r0
	mov     r0, #0x0
	ldr     r4,  [pc, #0x420] @ [0x2211bec] (=#0x6ed9eba1)
	orr     r7, r1, r7, lsl #30
	mov     r10, #0x4
	str     r0, [sp, #0x4]
	add     r11, sp, #0x10
.arm
branch_22117d8: @ 22117d8 :arm
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	mov     r2, r5, lsr #27
	eor     r1, r6, r7
	orr     r2, r2, r5, lsl #5
	eor     r1, r8, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r1, r0, r4
	mov     r0, r6, lsr #2
	add     r9, r9, r1
	orr     r6, r0, r6, lsl #30
	add     r0, r10, #0x1
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r9, lsr #27
	orr     r2, r1, r9, lsl #5
	eor     r1, r5, r6
	eor     r1, r7, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r8, r8, r0
	mov     r0, r5, lsr #2
	orr     r5, r0, r5, lsl #30
	add     r0, r10, #0x2
	and     r10, r0, #0xf
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r8, lsr #27
	orr     r2, r1, r8, lsl #5
	eor     r1, r9, r5
	eor     r1, r6, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r7, r7, r0
	mov     r0, r9, lsr #2
	orr     r9, r0, r9, lsl #30
	add     r0, r10, #0x1
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r7, lsr #27
	orr     r2, r1, r7, lsl #5
	eor     r1, r8, r9
	eor     r1, r5, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r6, r6, r0
	mov     r0, r8, lsr #2
	orr     r8, r0, r8, lsl #30
	add     r0, r10, #0x2
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r6, lsr #27
	orr     r2, r1, r6, lsl #5
	eor     r1, r7, r8
	eor     r1, r9, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r5, r5, r0
	mov     r1, r7, lsr #2
	ldr     r0, [sp, #0x4]
	add     r0, r0, #0x1
	str     r0, [sp, #0x4]
	cmp     r0, #0x4
	orr     r7, r1, r7, lsl #30
	add     r10, r10, #0x3
	blt     branch_22117d8
	mov     r0, #0x0
	ldr     r4,  [pc, #0x2e8] @ [0x2211bf0] (=#0x8f1bbcdc)
	str     r0, [sp, #0x8]
	add     r11, sp, #0x10
.arm
branch_221190c: @ 221190c :arm
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	orr     r2, r7, r8
	mov     r1, r5, lsr #27
	orr     r1, r1, r5, lsl #5
	and     r3, r6, r2
	and     r2, r7, r8
	orr     r2, r3, r2
	add     r1, r1, r2
	add     r1, r1, r0
	mov     r0, r6, lsr #2
	add     r1, r1, r4
	add     r9, r9, r1
	orr     r6, r0, r6, lsl #30
	add     r0, r10, #0x1
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r9, lsr #27
	orr     r1, r1, r9, lsl #5
	orr     r2, r6, r7
	and     r3, r5, r2
	and     r2, r6, r7
	orr     r2, r3, r2
	add     r1, r1, r2
	add     r0, r1, r0
	add     r0, r0, r4
	add     r8, r8, r0
	mov     r0, r5, lsr #2
	orr     r5, r0, r5, lsl #30
	add     r0, r10, #0x2
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r8, lsr #27
	orr     r1, r1, r8, lsl #5
	orr     r2, r5, r6
	and     r3, r9, r2
	and     r2, r5, r6
	orr     r2, r3, r2
	add     r1, r1, r2
	add     r0, r1, r0
	add     r0, r0, r4
	add     r7, r7, r0
	mov     r0, r9, lsr #2
	orr     r9, r0, r9, lsl #30
	add     r0, r10, #0x3
	and     r10, r0, #0xf
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r7, lsr #27
	orr     r1, r1, r7, lsl #5
	orr     r2, r9, r5
	and     r3, r8, r2
	and     r2, r9, r5
	orr     r2, r3, r2
	add     r1, r1, r2
	add     r0, r1, r0
	add     r0, r0, r4
	add     r6, r6, r0
	mov     r0, r8, lsr #2
	orr     r8, r0, r8, lsl #30
	add     r0, r10, #0x1
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r6, lsr #27
	orr     r1, r1, r6, lsl #5
	orr     r2, r8, r9
	and     r3, r7, r2
	and     r2, r8, r9
	orr     r2, r3, r2
	add     r1, r1, r2
	add     r0, r1, r0
	add     r0, r0, r4
	add     r5, r5, r0
	mov     r1, r7, lsr #2
	ldr     r0, [sp, #0x8]
	add     r0, r0, #0x1
	str     r0, [sp, #0x8]
	cmp     r0, #0x4
	orr     r7, r1, r7, lsl #30
	add     r10, r10, #0x2
	blt     branch_221190c
	mov     r0, #0x0
	ldr     r4,  [pc, #0x190] @ [0x2211bf4] (=#0xca62c1d6)
	str     r0, [sp, #0xc]
	add     r11, sp, #0x10
.arm
branch_2211a68: @ 2211a68 :arm
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	mov     r2, r5, lsr #27
	eor     r1, r6, r7
	orr     r2, r2, r5, lsl #5
	eor     r1, r8, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r1, r0, r4
	mov     r0, r6, lsr #2
	add     r9, r9, r1
	orr     r6, r0, r6, lsl #30
	add     r0, r10, #0x1
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r9, lsr #27
	orr     r2, r1, r9, lsl #5
	eor     r1, r5, r6
	eor     r1, r7, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r8, r8, r0
	mov     r0, r5, lsr #2
	orr     r5, r0, r5, lsl #30
	add     r0, r10, #0x2
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r8, lsr #27
	orr     r2, r1, r8, lsl #5
	eor     r1, r9, r5
	eor     r1, r6, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r7, r7, r0
	mov     r0, r9, lsr #2
	orr     r9, r0, r9, lsl #30
	add     r0, r10, #0x3
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r7, lsr #27
	orr     r2, r1, r7, lsl #5
	eor     r1, r8, r9
	eor     r1, r5, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r6, r6, r0
	mov     r0, r8, lsr #2
	orr     r8, r0, r8, lsl #30
	add     r0, r10, #0x4
	and     r10, r0, #0xf
	mov     r0, r10
	mov     r1, r11
	bl      Function_22114a0
	mov     r1, r6, lsr #27
	orr     r2, r1, r6, lsl #5
	eor     r1, r7, r8
	eor     r1, r9, r1
	add     r1, r2, r1
	add     r0, r1, r0
	add     r0, r0, r4
	add     r5, r5, r0
	mov     r1, r7, lsr #2
	ldr     r0, [sp, #0xc]
	add     r0, r0, #0x1
	str     r0, [sp, #0xc]
	cmp     r0, #0x4
	orr     r7, r1, r7, lsl #30
	add     r10, r10, #0x1
	blt     branch_2211a68
	ldr     r0, [sp]
	ldr     r0, [r0]
	add     r1, r0, r5
	ldr     r0, [sp]
	str     r1, [r0]
	ldr     r0, [r0, #0x4]
	add     r1, r0, r6
	ldr     r0, [sp]
	str     r1, [r0, #0x4]
	ldr     r0, [r0, #0x8]
	add     r1, r0, r7
	ldr     r0, [sp]
	str     r1, [r0, #0x8]
	ldr     r0, [r0, #0xc]
	add     r1, r0, r8
	ldr     r0, [sp]
	str     r1, [r0, #0xc]
	ldr     r0, [r0, #0x10]
	add     r1, r0, r9
	ldr     r0, [sp]
	str     r1, [r0, #0x10]
	add     sp, sp, #0x50
	ldmfd   sp!, {r3-r11,pc}
@ 0x2211be8

.word 0x5a827999 @ 0x2211be8
.word 0x6ed9eba1 @ 0x2211bec
.word 0x8f1bbcdc @ 0x2211bf0
.word 0xca62c1d6 @ 0x2211bf4
.arm
Function_2211bf8: @ 2211bf8 :arm
	stmfd   sp!, {r4,lr}
	mov     r1, #0x0
	mov     r2, #0x5c
	mov     r4, r0
	bl      Function_20c4cf4
	ldr     r0,  [pc, #0x24] @ [0x2211c38] (=#0x67452301)
	ldr     r1,  [pc, #0x24] @ [0x2211c3c] (=#0xefcdab89)
	str     r0, [r4]
	ldr     r0,  [pc, #0x20] @ [0x2211c40] (=#0x98badcfe)
	str     r1, [r4, #0x4]
	ldr     r1,  [pc, #0x1c] @ [0x2211c44] (=#0x10325476)
	str     r0, [r4, #0x8]
	ldr     r0,  [pc, #0x18] @ [0x2211c48] (=#0xc3d2e1f0)
	str     r1, [r4, #0xc]
	str     r0, [r4, #0x10]
	ldmfd   sp!, {r4,pc}
@ 0x2211c38

.word 0x67452301 @ 0x2211c38
.word 0xefcdab89 @ 0x2211c3c
.word 0x98badcfe @ 0x2211c40
.word 0x10325476 @ 0x2211c44
.word 0xc3d2e1f0 @ 0x2211c48
.arm
Function_2211c4c: @ 2211c4c :arm
	stmfd   sp!, {r4-r8,lr}
	mov     r8, r0
	ldr     r3, [r8, #0x18]
	mov     r6, r2
	add     r0, r3, r6, lsl #3
	str     r0, [r8, #0x18]
	cmp     r0, r6, lsl #3
	ldrcc   r0, [r8, #0x14]
	mov     r2, r3, lsr #3
	addcc   r0, r0, #0x1
	strcc   r0, [r8, #0x14]
	ldr     r0, [r8, #0x14]
	and     r4, r2, #0x3f
	rsb     r5, r4, #0x40
	add     r0, r0, r6, lsr #29
	mov     r7, r1
	str     r0, [r8, #0x14]
	cmp     r6, r5
	bcc     branch_2211ce8
	add     r1, r8, #0x1c
	mov     r0, r7
	mov     r2, r5
	add     r1, r1, r4
	bl      Function_20c4db0
	mov     r0, r8
	add     r1, r8, #0x1c
	mov     r4, #0x0
	bl      Function_2211570
	add     r0, r5, #0x3f
	cmp     r0, r6
	bcs     branch_2211cec
.arm
branch_2211cc8: @ 2211cc8 :arm
	mov     r0, r8
	add     r1, r7, r5
	bl      Function_2211570
	add     r5, r5, #0x40
	add     r0, r5, #0x3f
	cmp     r0, r6
	bcc     branch_2211cc8
	b       branch_2211cec
@ 0x2211ce8

.arm
branch_2211ce8: @ 2211ce8 :arm
	mov     r5, #0x0
.arm
branch_2211cec: @ 2211cec :arm
	add     r1, r8, #0x1c
	add     r0, r7, r5
	add     r1, r1, r4
	sub     r2, r6, r5
	bl      Function_20c4db0
	ldmfd   sp!, {r4-r8,pc}
@ 0x2211d04

.arm
Function_2211d04: @ 2211d04 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r0, r4
	add     r1, r5, #0x14
	mov     r2, #0x8
	bl      Function_22114e4
	ldr     r0, [r5, #0x18]
	ldr     r1,  [pc, #0x3c] @ [0x2211d68] (=#0x221a3a4)
	mov     r0, r0, lsr #3
	and     r0, r0, #0x3f
	cmp     r0, #0x38
	rsblt   r2, r0, #0x38
	rsbge   r2, r0, #0x78
	mov     r0, r5
	bl      Function_2211c4c
	mov     r0, r5
	mov     r1, r4
	mov     r2, #0x8
	bl      Function_2211c4c
	mov     r0, r4
	mov     r1, r5
	mov     r2, #0x14
	bl      Function_22114e4
	ldmfd   sp!, {r3-r5,pc}
@ 0x2211d68

.word 0x221a3a4 @ 0x2211d68

.incbin "./baserom/overlay/overlay_0004.bin", 0x40fec, 0x2211e10 - 0x2211d6c


.arm
Function_2211e10: @ 2211e10 :arm
	stmfd   sp!, {r4-r6,lr}
	cmp     r2, #0x0
	add     r4, r0, #0x2
	ldrb    r12, [r0]
	ldrb    lr, [r0, #0x1]
	mov     r3, #0x0
	ble     branch_2211e70
.arm
branch_2211e2c: @ 2211e2c :arm
	add     r5, r12, #0x1
	and     r12, r5, #0xff
	ldrb    r6, [r4, r12]
	add     r5, lr, r6
	and     lr, r5, #0xff
	ldrb    r5, [r4, lr]
	strb    r5, [r4, r12]
	add     r5, r6, r5
	strb    r6, [r4, lr]
	and     r5, r5, #0xff
	ldrb    r6, [r1, r3]
	ldrb    r5, [r4, r5]
	eor     r5, r6, r5
	strb    r5, [r1, r3]
	add     r3, r3, #0x1
	cmp     r3, r2
	blt     branch_2211e2c
.arm
branch_2211e70: @ 2211e70 :arm
	strb    r12, [r0]
	strb    lr, [r0, #0x1]
	ldmfd   sp!, {r4-r6,pc}
@ 0x2211e7c


.incbin "./baserom/overlay/overlay_0004.bin", 0x410fc, 0x2212cc8 - 0x2211e7c


.arm
Function_2212cc8: @ 2212cc8 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_20c3d98
	ldr     r2,  [pc, #0xfc] @ [0x2212ddc] (=#0x221f7ac)
	mov     r4, r0
	ldr     r1, [r2]
	cmp     r1, #0x0
	beq     branch_2212cf8
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212cf8

.arm
branch_2212cf8: @ 2212cf8 :arm
	cmp     r6, #0x0
	bne     branch_2212d0c
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}

branch_2212d0c: @ 2212d0c :arm
	tst     r6, #0x1f
	beq     branch_2212d20
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}

branch_2212d20: @ 2212d20 :arm
	cmp     r5, #35, 24 @ #0x2300
	bcs     branch_2212d34
	bl      Function_20c3dac
	mov     r0, #0x6
	ldmfd   sp!, {r4-r6,pc}

branch_2212d34: @ 2212d34 :arm
	str     r6, [r2]
	add     r0, r6, #2, 20 @ #0x2000
	mov     r1, #0x1
	str     r1, [r0, #0x260]
	ldr     r1, [r2]
	mov     r0, #0x0
	add     r1, r1, #34, 24 @ #0x2200
	strh    r0, [r1, #0x80]
	ldr     r1, [r2]
	add     r1, r1, #34, 24 @ #0x2200
	strh    r0, [r1, #0x68]
	ldr     r1, [r2]
	add     r1, r1, #2, 20 @ #0x2000
	strb    r0, [r1, #0x26a]
	ldr     r1, [r2]
	add     r1, r1, #2, 20 @ #0x2000
	strb    r0, [r1, #0x26b]
	ldr     r1, [r2]
	add     r1, r1, #34, 24 @ #0x2200
	strh    r0, [r1, #0x82]
	ldr     r1, [r2]
	add     r1, r1, #34, 24 @ #0x2200
	strh    r0, [r1, #0xf8]
	bl      Function_2213c2c
	bl      Function_22152b4
	bl      Function_20c3808
	cmp     r0, #0x0
	bne     branch_2212da8
	bl      Function_20c3790
branch_2212da8: @ 2212da8 :arm
	bl      Function_20c39fc
	cmp     r0, #0x0
	bne     branch_2212db8
	bl      Function_20c39bc
branch_2212db8: @ 2212db8 :arm
	ldr     r0,  [pc, #0x1c] @ [0x2212ddc] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r0, r0, #179, 30 @ #0x2cc
	add     r0, r0, #2, 20 @ #0x2000
	bl      Function_20c3a0c
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212ddc

.word 0x221f7ac @ 0x2212ddc

.incbin "./baserom/overlay/overlay_0004.bin", 0x42060, 0x2212e38 - 0x2212de0


.arm
Function_2212e38: @ 2212e38 :arm
	stmfd   sp!, {r4-r6,lr}
	mov     r6, r0
	mov     r5, r1
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x1e0] @ [0x2213030] (=#0x221f7ac)
	mov     r4, r0
	ldr     r1, [r1]
	cmp     r1, #0x0
	bne     branch_2212e68
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212e68

.arm
branch_2212e68: @ 2212e68 :arm
	add     r1, r1, #2, 20 @ #0x2000
	ldr     r1, [r1, #0x260]
	cmp     r1, #0x1
	beq     branch_2212e8c
	cmp     r1, #0x2
	beq     branch_2212e9c
	cmp     r1, #0x3
	beq     branch_2212ea8
	b       branch_2212eb4
@ 0x2212e8c

.arm
branch_2212e8c: @ 2212e8c :arm
	mov     r0, r6
	mov     r1, r5
	bl      Function_2213974
	b       branch_2212ec0
@ 0x2212e9c

.arm
branch_2212e9c: @ 2212e9c :arm
	bl      Function_20c3dac
	mov     r0, #0x2
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212ea8

.arm
branch_2212ea8: @ 2212ea8 :arm
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212eb4

.arm
branch_2212eb4: @ 2212eb4 :arm
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212ec0

.arm
branch_2212ec0: @ 2212ec0 :arm
	ldr     r0,  [pc, #0x168] @ [0x2213030] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r1, r0, #2, 20 @ #0x2000
	ldr     r1, [r1, #0x26c]
	mov     r1, r1, lsl #16
	mov     r1, r1, lsr #16
	bl      Function_20cdb18
	cmp     r0, #0x6
	addls   pc, pc, r0, lsl #2
	b       branch_2212f2c
@ 0x2212ee8


.incbin "./baserom/overlay/overlay_0004.bin", 0x42168, 0x2212f2c - 0x2212ee8


.arm
branch_2212f2c: @ 2212f2c :arm
	mov     r0, #0xb
	bl      Function_2213d74
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x7
	ldmfd   sp!, {r4-r6,pc}
@ 0x2212f44


.incbin "./baserom/overlay/overlay_0004.bin", 0x421c4, 0x2213030 - 0x2212f44


.word 0x221f7ac @ 0x2213030

.incbin "./baserom/overlay/overlay_0004.bin", 0x422b4, 0x221312c - 0x2213034


.arm
Function_221312c: @ 221312c :arm
	stmfd   sp!, {r3,lr}
	cmp     r0, #0x0
	cmpne   r1, #0x0
	bne     branch_2213144
	bl      Function_22132c4
	ldmfd   sp!, {r3,pc}
@ 0x2213144

.arm
branch_2213144: @ 2213144 :arm
	bl      Function_221314c
	ldmfd   sp!, {r3,pc}
@ 0x221314c

.arm
Function_221314c: @ 221314c :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x154] @ [0x22132bc] (=#0x221f7ac)
	mov     r4, r0
	ldr     r1, [r1]
	cmp     r1, #0x0
	bne     branch_2213180
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213180

.arm
branch_2213180: @ 2213180 :arm
	add     r1, r1, #2, 20 @ #0x2000
	ldr     r1, [r1, #0x260]
	cmp     r1, #0x3
	beq     branch_22131f0
	cmp     r1, #0x5
	beq     branch_22131a4
	cmp     r1, #0x6
	beq     branch_22131c4
	b       branch_22131e4
@ 0x22131a4

.arm
branch_22131a4: @ 22131a4 :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_2213a94
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x22131c4

.arm
branch_22131c4: @ 22131c4 :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_2213a94
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x22131e4

.arm
branch_22131e4: @ 22131e4 :arm
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x22131f0

.arm
branch_22131f0: @ 22131f0 :arm
	mov     r0, r7
	mov     r1, r6
	mov     r2, r5
	bl      Function_2213a94
	ldr     r0,  [pc, #0xb4] @ [0x22132bc] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r1, r0, #34, 24 @ #0x2200
	add     r0, r0, #2, 20 @ #0x2000
	ldrh    r1, [r1, #0x8c]
	ldr     r0, [r0, #0x288]
	bl      Function_20c2c1c
	ldr     r2,  [pc, #0x98] @ [0x22132bc] (=#0x221f7ac)
	ldr     r0,  [pc, #0x98] @ [0x22132c0] (=#0x2214254)
	ldr     r1, [r2]
	add     r1, r1, #2, 20 @ #0x2000
	ldr     r3, [r1, #0x284]
	add     r3, r3, #0x1
	str     r3, [r1, #0x284]
	ldr     r1, [r2]
	add     r1, r1, #162, 30 @ #0x288
	add     r1, r1, #2, 20 @ #0x2000
	bl      Function_20cf08c
	cmp     r0, #0x2
	beq     branch_2213264
	cmp     r0, #0x3
	beq     branch_2213294
	cmp     r0, #0x8
	beq     branch_2213284
	b       branch_2213294
@ 0x2213264

.arm
branch_2213264: @ 2213264 :arm
	mov     r0, #0x5
	bl      Function_2213d74
	ldr     r0,  [pc, #0x48] @ [0x22132bc] (=#0x221f7ac)
	mov     r1, #0x3
	ldr     r0, [r0]
	add     r0, r0, #34, 24 @ #0x2200
	strh    r1, [r0, #0x80]
	b       branch_22132ac
@ 0x2213284

.arm
branch_2213284: @ 2213284 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x4
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213294

.arm
branch_2213294: @ 2213294 :arm
	mov     r0, #0xb
	bl      Function_2213d74
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x7
	ldmfd   sp!, {r3-r7,pc}

branch_22132ac: @ 22132ac :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x22132bc

.word 0x221f7ac @ 0x22132bc
.word 0x2214254 @ 0x22132c0



.arm
Function_22132c4: @ 22132c4 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x90] @ [0x2213364] (=#0x221f7ac)
	mov     r4, r0
	ldr     r1, [r1]
	cmp     r1, #0x0
	bne     branch_22132ec
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}

branch_22132ec: @ 22132ec :arm
	add     r1, r1, #2, 20 @ #0x2000
	ldr     r1, [r1, #0x260]
	cmp     r1, #0x3
	beq     branch_221333c
	cmp     r1, #0x6
	beq     branch_2213310
	cmp     r1, #0x7
	beq     branch_2213330
	b       branch_2213348

branch_2213310: @ 2213310 :arm
	mov     r0, #0x7
	bl      Function_2213d74
	ldr     r0,  [pc, #0x44] @ [0x2213364] (=#0x221f7ac)
	mov     r1, #0x4
	ldr     r0, [r0]
	add     r0, r0, #34, 24 @ #0x2200
	strh    r1, [r0, #0x80]
	b       branch_2213354

branch_2213330: @ 2213330 :arm
	bl      Function_20c3dac
	mov     r0, #0x2
	ldmfd   sp!, {r4,pc}

branch_221333c: @ 221333c :arm
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r4,pc}

branch_2213348: @ 2213348 :arm
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r4,pc}

branch_2213354: @ 2213354 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x3
	ldmfd   sp!, {r4,pc}
@ 0x2213364

.word 0x221f7ac @ 0x2213364



.arm
Function_2213368: @ 2213368 :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, r0
	mov     r6, r1
	mov     r5, r2
	bl      Function_20c3d98
	ldr     r2,  [pc, #0x1dc] @ [0x2213560] (=#0x221f7ac)
	mov     r4, r0
	ldr     r12, [r2]
	cmp     r12, #0x0
	bne     branch_221339c
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}

branch_221339c: @ 221339c :arm
	add     r1, r12, #2, 20 @ #0x2000
	ldr     r3, [r1, #0x260]
	cmp     r3, #0x3
	beq     branch_22133c0
	cmp     r3, #0x8
	beq     branch_22134b0
	cmp     r3, #0x9
	beq     branch_22134bc
	b       branch_22134c8

branch_22133c0: @ 22133c0 :arm
	cmp     r7, #0x0
	bne     branch_22133d4
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x22133d4

.arm
branch_22133d4: @ 22133d4 :arm
	ldrh    r3, [r7, #0x3c]
	cmp     r3, #0x0
	beq     branch_22133ec
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x22133ec

.arm
branch_22133ec: @ 22133ec :arm
	cmp     r6, #0x0
	beq     branch_2213464
	ldrb    r3, [r6]
	cmp     r3, #0x4
	ldrccb  r0, [r6, #0x1]
	cmpcc   r0, #0x4
	bcc     branch_2213418
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213418

.arm
branch_2213418: @ 2213418 :arm
	strb    r3, [r1, #0x250]
	ldr     r0, [r2]
	ldrb    r1, [r6, #0x1]
	add     r0, r0, #2, 20 @ #0x2000
	strb    r1, [r0, #0x251]
	ldr     r1, [r2]
	mov     r2, #0x50
	add     r0, r1, #2, 20 @ #0x2000
	ldrb    r0, [r0, #0x250]
	cmp     r0, #0x0
	bne     branch_2213454
	add     r0, r1, #34, 24 @ #0x2200
	mov     r1, #0x0
	bl      Function_20c4cf4
	b       branch_2213474
@ 0x2213454

.arm
branch_2213454: @ 2213454 :arm
	add     r0, r6, #0x2
	add     r1, r1, #34, 24 @ #0x2200
	bl      Function_20c4db0
	b       branch_2213474
@ 0x2213464

.arm
branch_2213464: @ 2213464 :arm
	add     r0, r12, #34, 24 @ #0x2200
	mov     r1, #0x0
	mov     r2, #0x52
	bl      Function_20c4cf4
.arm
branch_2213474: @ 2213474 :arm
	ldr     r1,  [pc, #0xe4] @ [0x2213560] (=#0x221f7ac)
	mov     r0, r7
	ldr     r1, [r1]
	mov     r2, #0xc0
	add     r1, r1, #133, 26 @ #0x2140
	bl      Function_20c4db0
	ldr     r1,  [pc, #0xcc] @ [0x2213560] (=#0x221f7ac)
	mov     r0, r5
	ldr     r1, [r1]
	add     r1, r1, #33, 24 @ #0x2100
	ldrh    r2, [r1, #0x6e]
	orr     r2, r2, #0x3
	strh    r2, [r1, #0x70]
	bl      Function_22138c8
	b       branch_22134d4
@ 0x22134b0

.arm
branch_22134b0: @ 22134b0 :arm
	bl      Function_20c3dac
	mov     r0, #0x2
	ldmfd   sp!, {r3-r7,pc}
@ 0x22134bc

.arm
branch_22134bc: @ 22134bc :arm
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r3-r7,pc}
@ 0x22134c8

.arm
branch_22134c8: @ 22134c8 :arm
	bl      Function_20c3dac
	mov     r0, #0x1
	ldmfd   sp!, {r3-r7,pc}
@ 0x22134d4

.arm
branch_22134d4: @ 22134d4 :arm
	ldr     r1,  [pc, #0x88] @ [0x2213564] (=#0xffff)
	ldr     r0,  [pc, #0x88] @ [0x2213568] (=#0x2213f98)
	mov     r3, r1
	mov     r2, #0x50
	str     r1, [sp]
	bl      Function_20d0764
	cmp     r0, #0x2
	beq     branch_2213508
	cmp     r0, #0x3
	beq     branch_2213538
	cmp     r0, #0x8
	beq     branch_2213528
	b       branch_2213538
@ 0x2213508

.arm
branch_2213508: @ 2213508 :arm
	mov     r0, #0x8
	bl      Function_2213d74
	ldr     r0,  [pc, #0x48] @ [0x2213560] (=#0x221f7ac)
	mov     r1, #0x5
	ldr     r0, [r0]
	add     r0, r0, #34, 24 @ #0x2200
	strh    r1, [r0, #0x80]
	b       branch_2213550
@ 0x2213528

.arm
branch_2213528: @ 2213528 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x4
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213538

.arm
branch_2213538: @ 2213538 :arm
	mov     r0, #0xb
	bl      Function_2213d74
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x7
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213550

.arm
branch_2213550: @ 2213550 :arm
	mov     r0, r4
	bl      Function_20c3dac
	mov     r0, #0x3
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213560

.word 0x221f7ac @ 0x2213560
.word 0xffff @ 0x2213564
.word 0x2213f98 @ 0x2213568

.incbin "./baserom/overlay/overlay_0004.bin", 0x427ec, 0x2213898 - 0x221356c


.arm
Function_2213898: @ 2213898 :arm
	stmfd   sp!, {r4,lr}
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x1c] @ [0x22138c4] (=#0x221f7ac)
	mov     r4, #0x0
	ldr     r1, [r1]
	cmp     r1, #0x0
	addne   r1, r1, #2, 20 @ #0x2000
	ldrne   r4, [r1, #0x260]
	bl      Function_20c3dac
	mov     r0, r4
	ldmfd   sp!, {r4,pc}
@ 0x22138c4

.word 0x221f7ac @ 0x22138c4
.arm
Function_22138c8: @ 22138c8 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x80] @ [0x221395c] (=#0x221f7ac)
	mov     r2, #0x0
	ldr     r3, [r1]
	add     r1, r3, #2, 20 @ #0x2000
	cmp     r3, #0x0
	ldr     r4, [r1, #0x264]
	bne     branch_22138fc
	bl      Function_20c3dac
	mov     r0, #0x0
	ldmfd   sp!, {r3-r5,pc}
@ 0x22138fc

.arm
branch_22138fc: @ 22138fc :arm
	tst     r5, #2, 18 @ #0x8000
	beq     branch_221391c
	ldr     r1,  [pc, #0x54] @ [0x2213960] (=#0x3ffe)
	orr     r2, r2, #0xfe
	tst     r5, r1
	orreq   r5, r5, #0x82
	orr     r2, r2, #63, 24 @ #0x3f00
	orreq   r5, r5, #10, 20 @ #0xa000
.arm
branch_221391c: @ 221391c :arm
	tst     r5, #0x20000
	orrne   r2, r2, #1, 16 @ #0x10000
	tst     r5, #0x80000
	orrne   r2, r2, #1, 14 @ #0x40000
	tst     r5, #0x200000
	orrne   r2, r2, #1, 12 @ #0x100000
	tst     r5, #0x800000
	orrne   r2, r2, #1, 10 @ #0x400000
	mvn     r1, r2
	and     r1, r4, r1
	orr     r2, r5, r1
	add     r1, r3, #0x2000
	str     r2, [r1, #0x264]
	bl      Function_20c3dac
	mov     r0, r4
	ldmfd   sp!, {r3-r5,pc}
@ 0x221395c

.word 0x221f7ac @ 0x221395c
.word 0x3ffe @ 0x2213960
.arm
Function_2213964: @ 2213964 :arm
	ldr     r0,  [pc, #0x4] @ [0x2213970] (=#0x221f7ac)
	ldr     r0, [r0]
	bx      lr
@ 0x2213970

.word 0x221f7ac @ 0x2213970
.arm
Function_2213974: @ 2213974 :arm
	stmfd   sp!, {r3-r5,lr}
	movs    r5, r0
	mov     r4, r1
	bne     branch_22139c4
	ldr     r1,  [pc, #0x104] @ [0x2213a90] (=#0x221f7ac)
	mov     r3, #0x3
	ldr     r0, [r1]
	mov     r2, #0x0
	add     r0, r0, #2, 20 @ #0x2000
	str     r3, [r0, #0x26c]
	ldr     r0, [r1]
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x270]
	ldr     r0, [r1]
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x274]
	ldr     r0, [r1]
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x278]
	b       branch_2213a7c
@ 0x22139c4

.arm
branch_22139c4: @ 22139c4 :arm
	ldr     r1,  [pc, #0xc4] @ [0x2213a90] (=#0x221f7ac)
	ldr     r2, [r5]
	ldr     r0, [r1]
	and     r2, r2, #0x3
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x26c]
	ldr     r3, [r5, #0x4]
	ldr     r0, [r5, #0x8]
	and     r2, r3, #0x3
	rsb     r2, r2, #0x4
	and     r2, r2, #0x3
	add     r2, r2, #0xc
	cmp     r2, r0
	ldr     r0, [r1]
	bls     branch_2213a1c
	mov     r2, #0x0
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x270]
	ldr     r0, [r1]
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x274]
	b       branch_2213a68
@ 0x2213a1c

.arm
branch_2213a1c: @ 2213a1c :arm
	add     r2, r3, #0x3
	bic     r2, r2, #0x3
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x270]
	ldr     r2, [r5, #0x4]
	ldr     r0, [r1]
	and     r2, r2, #0x3
	rsb     r2, r2, #0x4
	ldr     r3, [r5, #0x8]
	and     r2, r2, #0x3
	sub     r2, r3, r2
	add     r0, r0, #2, 20 @ #0x2000
	str     r2, [r0, #0x274]
	ldr     r0, [r1]
	mov     r1, #0x0
	add     r2, r0, #2, 20 @ #0x2000
	ldr     r0, [r2, #0x270]
	ldr     r2, [r2, #0x274]
	bl      Function_20c4cf4
.arm
branch_2213a68: @ 2213a68 :arm
	ldr     r0,  [pc, #0x20] @ [0x2213a90] (=#0x221f7ac)
	ldr     r1, [r5, #0xc]
	ldr     r0, [r0]
	add     r0, r0, #2, 20 @ #0x2000
	str     r1, [r0, #0x278]
.arm
branch_2213a7c: @ 2213a7c :arm
	ldr     r0,  [pc, #0xc] @ [0x2213a90] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r0, r0, #2, 20 @ #0x2000
	str     r4, [r0, #0x27c]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2213a90

.word 0x221f7ac @ 0x2213a90
.arm
Function_2213a94: @ 2213a94 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	mov     r0, r2
	mov     r4, r1
	bl      Function_22138c8
	ldr     r2,  [pc, #0x170] @ [0x2213c20] (=#0x221f7ac)
	mov     r3, #1, 22 @ #0x400
	ldr     r1, [r2]
	mov     r0, #0x0
	add     r12, r1, #21, 24 @ #0x1500
	add     r1, r1, #2, 20 @ #0x2000
	str     r12, [r1, #0x288]
	ldr     r1, [r2]
	add     r1, r1, #34, 24 @ #0x2200
	strh    r3, [r1, #0x8c]
	bl      Function_2213c4c
	ldr     r1, [pc, #0x144] @ [0x2213c20] (=#0x221f7ac)
	mov     r2, #0x1
	mov     r2, r2, lsl r0
	ldr     r0, [r1]
	mov     r2, r2, asr #1
	add     r0, r0, #34, 24 @ #0x2200
	strh    r2, [r0, #0x8e]
	ldr     r0, [r1]
	add     r0, r0, #34, 24 @ #0x2200
	ldrh    r0, [r0, #0x68]
	cmp     r0, #0x0
	bne     branch_2213b08
	bl      Function_20ce934
.arm
branch_2213b08: @ 2213b08 :arm
	ldr     r2, [pc, #0x110] @ [0x2213c20] (=#0x221f7ac)
	ldr     r1, [r2]
	add     r1, r1, #34, 24 @ #0x2200
	strh    r0, [r1, #0x90]
	ldr     r1, [r2]
	add     r0, r1, #2, 20 @ #0x2000
	ldr     r0, [r0, #0x264]
	and     r0, r0, #3, 12 @ #0x300000
	cmp     r0, #3, 12 @ #0x300000
	movne   r2, #0x1
	moveq   r2, #0x0
	add     r0, r1, #34, 24 @ #0x2200
	strh    r2, [r0, #0x98]
	cmp     r5, #0x0
	mov     r2, #0x6
	bne     branch_2213b64
	ldr     r1,  [pc, #0xd0] @ [0x2213c20] (=#0x221f7ac)
	ldr     r0,  [pc, #0xd0] @ [0x2213c24] (=#0x2215e48)
	ldr     r1, [r1]
	add     r1, r1, #0x92
	add     r1, r1, #34, 24 @ #0x2200
	bl      Function_20c4db0
	b       branch_2213b7c
@ 0x2213b64

.arm
branch_2213b64: @ 2213b64 :arm
	ldr     r1,  [pc, #0xb4] @ [0x2213c20] (=#0x221f7ac)
	mov     r0, r5
	ldr     r1, [r1]
	add     r1, r1, #0x92
	add     r1, r1, #34, 24 @ #0x2200
	bl      Function_20c4db0
.arm
branch_2213b7c: @ 2213b7c :arm
	cmp     r4, #0x0
	ldrne   r0,  [pc, #0xa0] @ [0x2213c28] (=#0x2215e50)
	mov     r2, #0x20
	cmpne   r4, r0
	bne     branch_2213bc0
	ldr     r1,  [pc, #0x88] @ [0x2213c20] (=#0x221f7ac)
	ldr     r0,  [pc, #0x8c] @ [0x2213c28] (=#0x2215e50)
	ldr     r1, [r1]
	add     r1, r1, #167, 30 @ #0x29c
	add     r1, r1, #2, 20 @ #0x2000
	bl      Function_20c4db0
	ldr     r0,  [pc, #0x70] @ [0x2213c20] (=#0x221f7ac)
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, #34, 24 @ #0x2200
	strh    r1, [r0, #0x9a]
	b       branch_2213c08

branch_2213bc0: @ 2213bc0 :arm
	ldr     r1,  [pc, #0x58] @ [0x2213c20] (=#0x221f7ac)
	mov     r0, r4
	ldr     r1, [r1]
	add     r1, r1, #167, 30 @ #0x29c
	add     r1, r1, #2, 20 @ #0x2000
	bl      Function_20c4db0
	mov     r1, #0x0
branch_2213bdc: @ 2213bdc :arm
	ldrb    r0, [r4]
	cmp     r0, #0x0
	beq     branch_2213bf8
	add     r1, r1, #0x1
	cmp     r1, #0x20
	add     r4, r4, #0x1
	blt     branch_2213bdc
branch_2213bf8: @ 2213bf8 :arm
	ldr     r0,  [pc, #0x20] @ [0x2213c20] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r0, r0, #34, 24 @ #0x2200
	strh    r1, [r0, #0x9a]
branch_2213c08: @ 2213c08 :arm
	ldr     r0,  [pc, #0x10] @ [0x2213c20] (=#0x221f7ac)
	mov     r1, #0x0
	ldr     r0, [r0]
	add     r0, r0, #2, 20 @ #0x2000
	str     r1, [r0, #0x284]
	ldmfd   sp!, {r3-r5,pc}
@ 0x2213c20

.word 0x221f7ac @ 0x2213c20
.word 0x2215e48 @ 0x2213c24
.word 0x2215e50 @ 0x2213c28
.arm
Function_2213c2c: @ 2213c2c :arm
	ldr     r0,  [pc, #0x10] @ [0x2213c44] (=#0x221f7ac)
	ldr     r1,  [pc, #0x10] @ [0x2213c48] (=#0xaaa082)
	ldr     r0, [r0]
	add     r0, r0, #2, 20 @ #0x2000
	str     r1, [r0, #0x264]
	bx      lr
@ 0x2213c44

.word 0x221f7ac @ 0x2213c44
.word 0xaaa082 @ 0x2213c48
.arm
Function_2213c4c: @ 2213c4c :arm
	stmfd   sp!, {r3-r7,lr}
	ldr     r2,  [pc, #0x7c] @ [0x2213cd4] (=#0x221f7ac)
	ldr     lr,  [pc, #0x7c] @ [0x2213cd8] (=#0x4ec4ec4f)
	ldr     r2, [r2]
	mov     r1, r0
	add     r2, r2, #2, 20 @ #0x2000
	ldr     r7, [r2, #0x264]
	mov     r6, #0x0
	mov     r5, #0x1
	mov     r12, #0xd
.arm
branch_2213c74: @ 2213c74 :arm
	mov     r2, r1, lsr #31
	smull   r3, r4, lr, r1
	add     r4, r2, r4, asr #2
	smull   r2, r3, r12, r4
	sub     r4, r1, r2
	add     r2, r4, #0x1
	tst     r7, r5, lsl r2
	bne     branch_2213ca4
	add     r6, r6, #0x1
	cmp     r6, #0xd
	add     r1, r1, #0x1
	blt     branch_2213c74
.arm
branch_2213ca4: @ 2213ca4 :arm
	add     r3, r0, r6
	ldr     r2,  [pc, #0x28] @ [0x2213cd8] (=#0x4ec4ec4f)
	mov     r0, r3, lsr #31
	smull   r1, r12, r2, r3
	add     r12, r0, r12, asr #2
	mov     r2, #0xd
	smull   r0, r1, r2, r12
	sub     r12, r3, r0
	add     r0, r12, #0x1
	mov     r0, r0, lsl #16
	mov     r0, r0, lsr #16
	ldmfd   sp!, {r3-r7,pc}
@ 0x2213cd4

.word 0x221f7ac @ 0x2213cd4
.word 0x4ec4ec4f @ 0x2213cd8

.incbin "./baserom/overlay/overlay_0004.bin", 0x42f5c, 0x2213d74 - 0x2213cdc


.arm
Function_2213d74: @ 2213d74 :arm
	stmfd   sp!, {r3-r5,lr}
	mov     r5, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x78] @ [0x2213e00] (=#0x221f7ac)
	mov     r4, r0
	ldr     r1, [r1]
	add     r0, r1, #2, 20 @ #0x2000
	ldr     r0, [r0, #0x260]
	cmp     r0, #0x9
	bne     branch_2213db0
	cmp     r5, #0x9
	beq     branch_2213db0
	add     r0, r1, #179, 30 @ #0x2cc
	add     r0, r0, #2, 20 @ #0x2000
	bl      Function_20c3bb4
.arm
branch_2213db0: @ 2213db0 :arm
	ldr     r0,  [pc, #0x48] @ [0x2213e00] (=#0x221f7ac)
	ldr     r0, [r0]
	add     r0, r0, #2, 20 @ #0x2000
	ldr     r1, [r0, #0x260]
	cmp     r1, #0xb
	strne   r5, [r0, #0x260]
	cmp     r5, #0x9
	bne     branch_2213df4
	mov     r2, #0x0
	ldr     r0,  [pc, #0x24] @ [0x2213e00] (=#0x221f7ac)
	str     r2, [sp]
	ldr     r0, [r0]
	ldr     r1,  [pc, #0x1c] @ [0x2213e04] (=#0x22f5341)
	add     r0, r0, #179, 30 @ #0x2cc
	ldr     r3,  [pc, #0x18] @ [0x2213e08] (=#0x2213e80)
	add     r0, r0, #2, 20 @ #0x2000
	bl      Function_20c3b48
.arm
branch_2213df4: @ 2213df4 :arm
	mov     r0, r4
	bl      Function_20c3dac
	ldmfd   sp!, {r3-r5,pc}
@ 0x2213e00

.word 0x221f7ac @ 0x2213e00
.word 0x22f5341 @ 0x2213e04
.word 0x2213e80 @ 0x2213e08

.incbin "./baserom/overlay/overlay_0004.bin", 0x4308c, 0x22152b4 - 0x2213e0c


.arm
Function_22152b4: @ 22152b4 :arm
	stmfd   sp!, {r3,lr}
	ldr     r1,  [pc, #0x2c] @ [0x22152ec] (=#0x221f7b0)
	ldrb    r0, [r1]
	cmp     r0, #0x0
	ldmnefd sp!, {r3,pc}
	mov     r0, #0x1
	strb    r0, [r1]
	mov     r2, #0x0
	str     r2, [r1, #0x24]
	str     r2, [r1, #0x8]
	ldr     r0,  [pc, #0xc] @ [0x22152f0] (=#0x221f7bc)
	str     r2, [r1, #0x4]
	bl      Function_20c29c0
	ldmfd   sp!, {r3,pc}
@ 0x22152ec

.word 0x221f7b0 @ 0x22152ec
.word 0x221f7bc @ 0x22152f0

.incbin "./baserom/overlay/overlay_0004.bin", 0x44574, 0x22153dc - 0x22152f4


.arm
Function_22153dc: @ 22153dc :arm
	stmfd   sp!, {r3-r7,lr}
	mov     r7, #0x0
	mov     r5, r0
	mov     r4, r7
	bl      Function_2213964
	mov     r6, r0
	bl      Function_20c3d98
	cmp     r6, #0x0
	beq     branch_2215428
	add     r1, r6, #2, 20 @ #0x2000
	ldr     r2, [r1, #0x260]
	cmp     r2, #0x9
	ldreqb  r1, [r1, #0x26b]
	cmpeq   r1, #0x0
	bne     branch_2215428
	add     r1, r6, #33, 24 @ #0x2100
	ldrh    r4, [r1, #0x4a]
	add     r1, r6, #83, 30 @ #0x14c
	add     r7, r1, #2, 20 @ #0x2000
.arm
branch_2215428: @ 2215428 :arm
	bl      Function_20c3dac
	cmp     r5, #0x0
	strneh  r4, [r5]
	mov     r0, r7
	ldmfd   sp!, {r3-r7,pc}
@ 0x221543c

.arm
Function_221543c: @ 221543c :arm
	stmfd   sp!, {r4,lr}
	mov     r4, r0
	bl      Function_20c3d98
	ldr     r1,  [pc, #0x8] @ [0x2215458] (=#0x221f7b0)
	str     r4, [r1, #0x28]
	bl      Function_20c3dac
	ldmfd   sp!, {r4,pc}
@ 0x2215458

.word 0x221f7b0 @ 0x2215458
.arm
Function_221545c: @ 221545c :arm
	stmfd   sp!, {r3-r9,lr}
	mov     r4, r0
	mov     r9, r1
	mov     r8, r2
	mov     r6, r3
	bl      Function_20c3d98
	mov     r5, r0
	bl      Function_2213964
	cmp     r0, #0x0
	bne     branch_2215494
	mov     r0, r5
	bl      Function_20c3dac
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x2215494

.arm
branch_2215494: @ 2215494 :arm
	ldr     r0,  [pc, #0x138] @ [0x22155d4] (=#0x221f7bc)
	bl      Function_20c29d8
	bl      Function_2213964
	movs    r7, r0
	bne     branch_22154c0
	ldr     r0,  [pc, #0x124] @ [0x22155d4] (=#0x221f7bc)
	bl      Function_20c2a5c
	mov     r0, r5
	bl      Function_20c3dac
	mvn     r0, #0x0
	ldmfd   sp!, {r3-r9,pc}
@ 0x22154c0

.arm
branch_22154c0: @ 22154c0 :arm
	add     r0, r7, #2, 20 @ #0x2000
	ldr     r1, [r0, #0x260]
	cmp     r1, #0x9
	bne     branch_22154dc
	ldrb    r0, [r0, #0x26b]
	cmp     r0, #0x1
	bne     branch_22154f4
.arm
branch_22154dc: @ 22154dc :arm
	ldr     r0,  [pc, #0xf0] @ [0x22155d4] (=#0x221f7bc)
	bl      Function_20c2a5c
	mov     r0, r5
	bl      Function_20c3dac
	mvn     r0, #0x3
	ldmfd   sp!, {r3-r9,pc}
@ 0x22154f4

.arm
branch_22154f4: @ 22154f4 :arm
	mov     r0, r9
	mov     r2, r8
	add     r1, r7, #15, 24 @ #0xf00
	bl      Function_20c4db0
	ldr     r2, [sp, #0x20]
	cmp     r2, #0x0
	ble     branch_2215520
	add     r1, r7, #15, 24 @ #0xf00
	mov     r0, r6
	add     r1, r1, r8
	bl      Function_20c4db0
.arm
branch_2215520: @ 2215520 :arm
	ldr     r1, [sp, #0x20]
	ldr     r0,  [pc, #0xac] @ [0x22155d8] (=#0x22155e4)
	add     r6, r8, r1
	mov     r3, r6, lsl #16
	mov     r1, r4
	add     r2, r7, #15, 24 @ #0xf00
	mov     r3, r3, lsr #16
	bl      Function_20cf88c
	cmp     r0, #0x8
	addls   pc, pc, r0, lsl #2
	b       branch_2215570
@ 0x221554c


.incbin "./baserom/overlay/overlay_0004.bin", 0x447cc, 0x2215570 - 0x221554c


.arm
branch_2215570: @ 2215570 :arm
	ldr     r0,  [pc, #0x5c] @ [0x22155d4] (=#0x221f7bc)
	bl      Function_20c2a5c
	mov     r0, r5
	bl      Function_20c3dac
	mvn     r0, #0x4
	ldmfd   sp!, {r3-r9,pc}
@ 0x2215588


.incbin "./baserom/overlay/overlay_0004.bin", 0x44808, 0x22155d4 - 0x2215588


.word 0x221f7bc @ 0x22155d4
.word 0x22155e4 @ 0x22155d8
@ 0x22155dc


.incbin "./baserom/overlay/overlay_0004.bin", 0x4485c, 0x221a400 - 0x22155dc


@end 0x221a400


@.section .text
