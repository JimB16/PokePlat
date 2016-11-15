

.section .iwram78, "ax"


.thumb
Function_21d0d80: @ 21d0d80 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x10
	mov     r2, #0x1
	mov     r4, r0
	mov     r0, #0x3
	mov     r1, #0x2f
	lsl     r2, r2, #18
	bl      0x2017fc8
	ldr     r1, [pc, #0x150] @ 0x21d0ee4, (=0x6b4)
	mov     r0, r4
	mov     r2, #0x2f
	bl      0x200681c
	mov     r5, r0
	bne     branch_21d0da4
	bl      0x2022974
.thumb
branch_21d0da4: @ 21d0da4 :thumb
	ldr     r2, [pc, #0x13c] @ 0x21d0ee4, (=0x6b4)
	mov     r0, r5
	mov     r1, #0x0
	blx     0x20d5124
	mov     r0, #0x25
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, #0x2f
	mov     r2, #0x20
	bl      0x20182cc
	mov     r0, r4
	bl      0x2006840
	mov     r4, r0
	ldr     r0, [r4, #0x4]
	bl      0x2027b50
	ldr     r1, [pc, #0x11c] @ 0x21d0ee8, (=0x6a8)
	str     r0, [r5, r1]
	ldr     r0, [r4, #0x4]
	bl      0x2027ac0
	ldr     r1, [pc, #0x114] @ 0x21d0eec, (=0x6ac)
	str     r0, [r5, r1]
	mov     r0, #0x8
	mov     r1, #0x2f
	bl      0x201dbec
	ldr     r0, [pc, #0x10c] @ 0x21d0ef0, (=0x21d1059)
	mov     r1, r5
	bl      SetMainLoopFunctionCall
	bl      0x20177a4
	bl      0x201e3d8
	mov     r0, #0x4
	bl      0x201e450
	cmp     r0, #0x1
	beq     branch_21d0dfe
	bl      0x2022974
.thumb
branch_21d0dfe: @ 21d0dfe :thumb
	mov     r0, #0x1
	bl      Function_2002ac8
	mov     r0, #0x0
	bl      Function_2002ae4
	mov     r0, #0x0
	bl      Function_2002b20
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d10c4
	mov     r0, #0x2f
	bl      0x2018340
	mov     r1, r5
	add     r1, #0x94
	str     r0, [r1, #0x0]
	mov     r1, #0x1
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	add     r0, sp, #0x0
	str     r1, [sp, #0x0]
	str     r1, [sp, #0x8]
	str     r1, [sp, #0xc]
	bl      0x2018368
	mov     r0, r5
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r1, #0x2f
	bl      Function_21d1224
	mov     r0, #0x1
	mov     r1, r0
	bl      Function_201ff0c
	mov     r0, #0x2
	mov     r1, #0x0
	bl      Function_201ff0c
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d1308
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d20a4
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d27cc
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d13b8
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d14e8
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d1528
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d1834
	mov     r0, r5
	mov     r1, #0x2f
	bl      Function_21d1b20
	mov     r0, r5
	bl      Function_21d1ba0
	mov     r0, r5
	bl      Function_21d1c28
	mov     r1, #0x6
	lsl     r1, r1, #8
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x2f
	bl      Function_21d2204
	mov     r1, #0x6
	lsl     r1, r1, #8
	mov     r0, r5
	add     r1, r5, r1
	mov     r2, #0x2f
	bl      Function_21d22d4
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r5, r0
	bl      Function_21d23b8
	mov     r0, #0x65
	lsl     r0, r0, #4
	add     r0, r5, r0
	mov     r1, r5
	mov     r2, #0x2f
	bl      Function_21d2448
	mov     r1, #0x0
	mov     r0, #0x3c
	mov     r2, r1
	bl      0x2004550
	mov     r0, #0x1
	add     sp, #0x10
	pop     {r3-r5,pc}
@ 0x21d0ee2


.align 2


.word 0x6b4 @ 0x21d0ee4
.word 0x6a8 @ 0x21d0ee8
.word 0x6ac @ 0x21d0eec
.word 0x21d1059 @ 0x21d0ef0
.thumb
Function_21d0ef4: @ 21d0ef4 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r4, r1
	bl      0x200682c
	ldr     r2, [pc, #0xa4] @ 0x21d0fa4, (=0x8c3)
	add     r1, sp, #0x0
	strh    r2, [r1, #0x0]
	ldr     r1, [r4, #0x0]
	mov     r6, r0
	cmp     r1, #0x4
	bhi     branch_21d0f96
	add     r1, r1, r1
	add     r1, pc
	ldrh    r1, [r1, #0x6]
	lsl     r1, r1, #16
	asr     r1, r1, #16
	add     pc, r1
@ 0x21d0f18

Jumppoints_21d0f18:
.hword branch_21d0f22 - Jumppoints_21d0f18 - 2
.hword branch_21d0f38 - Jumppoints_21d0f18 - 2
.hword branch_21d0f54 - Jumppoints_21d0f18 - 2
.hword branch_21d0f70 - Jumppoints_21d0f18 - 2
.hword branch_21d0f7c - Jumppoints_21d0f18 - 2
.thumb
branch_21d0f22: @ 21d0f22 :thumb
	bl      Function_21d107c
	add     r0, sp, #0x0
	mov     r1, #0x0
	mov     r2, #0x2
	blx     0x20c00b4
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f96
@ 0x21d0f38

.thumb
branch_21d0f38: @ 21d0f38 :thumb
	bl      Function_21d10bc
	cmp     r0, #0x0
	beq     branch_21d0f96
	mov     r0, #0x0
	bl      0x200f32c
	mov     r0, #0x1
	bl      0x200f32c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f96
@ 0x21d0f54

.thumb
branch_21d0f54: @ 21d0f54 :thumb
	mov     r1, #0x2f
	bl      Function_21d1978
	mov     r5, r0
	mov     r0, r6
	mov     r1, #0x2f
	bl      Function_21d19d4
	cmp     r5, #0x1
	bne     branch_21d0f96
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f96
@ 0x21d0f70

.thumb
branch_21d0f70: @ 21d0f70 :thumb
	bl      Function_21d109c
	ldr     r0, [r4, #0x0]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x0]
	b       branch_21d0f96
@ 0x21d0f7c

.thumb
branch_21d0f7c: @ 21d0f7c :thumb
	bl      Function_21d10bc
	cmp     r0, #0x0
	beq     branch_21d0f96
	mov     r0, #0x0
	bl      0x200f32c
	mov     r0, #0x1
	bl      0x200f32c
	add     sp, #0x4
	mov     r0, #0x1
	pop     {r3-r6,pc}
@ 0x21d0f96

.thumb
branch_21d0f96: @ 21d0f96 :thumb
	mov     r0, r6
	bl      Function_21d1aac
	mov     r0, #0x0
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d0fa2


.align 2


.word 0x8c3 @ 0x21d0fa4
.thumb
Function_21d0fa8: @ 21d0fa8 :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	bl      0x200682c
	mov     r4, r0
	mov     r0, r5
	bl      0x2006840
	mov     r6, r0
	mov     r0, #0x0
	mov     r1, r0
	bl      SetMainLoopFunctionCall
	ldr     r0, [r4, #0x54]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_21d291c
	str     r0, [r6, #0x0]
	bl      0x201e530
	cmp     r0, #0x1
	beq     branch_21d0fda
	bl      0x2022974
.thumb
branch_21d0fda: @ 21d0fda :thumb
	mov     r0, #0x65
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d24e4
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_21d2350
	mov     r1, #0x6
	lsl     r1, r1, #8
	mov     r0, r4
	add     r1, r4, r1
	bl      Function_21d2290
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r4, r0
	bl      Function_21d241c
	mov     r0, r4
	bl      Function_21d1b90
	mov     r0, r4
	bl      Function_21d1908
	mov     r0, r4
	bl      Function_21d1594
	mov     r0, r4
	bl      Function_21d14bc
	mov     r0, r4
	bl      Function_21d1518
	mov     r0, r4
	bl      Function_21d13a0
	mov     r0, r4
	bl      Function_21d2884
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      Function_21d12ec
	add     r4, #0x94
	ldr     r0, [r4, #0x0]
	bl      free
	bl      Function_21d10dc
	bl      0x201dc3c
	mov     r0, r5
	bl      0x2006830
	mov     r0, #0x2f
	bl      0x201807c
	mov     r0, #0x1
	pop     {r4-r6,pc}
@ 0x21d1058

.thumb
Function_21d1058: @ 21d1058 :thumb
	push    {r4,lr}
	mov     r4, r0
	bl      0x200a858
	mov     r0, r4
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	bl      0x201c2b8
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	bl      0x2008a94
	bl      0x201dcac
	pop     {r4,pc}
@ 0x21d107a


.align 2, 0


.thumb
Function_21d107c: @ 21d107c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r1, #0x1
	str     r1, [sp, #0x4]
	mov     r0, #0x2f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, r1
	mov     r3, r0
	bl      0x200f174
	add     sp, #0xc
	pop     {pc}
@ 0x21d109a


.align 2, 0


.thumb
Function_21d109c: @ 21d109c :thumb
	push    {lr}
	add     sp, #-0xc
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x2f
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r1, r0
	mov     r2, r0
	mov     r3, r0
	bl      0x200f174
	add     sp, #0xc
	pop     {pc}
@ 0x21d10bc

.thumb
Function_21d10bc: @ 21d10bc :thumb
	ldr     r3, [pc, #0x0] @ 0x21d10c0, (=0x200f2ad)
	bx      r3
@ 0x21d10c0

.word 0x200f2ad @ 0x21d10c0
.thumb
Function_21d10c4: @ 21d10c4 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	bl      Function_21d10f0
	mov     r0, r4
	bl      Function_21d1110
	mov     r0, r5
	bl      Function_21d1168
	pop     {r3-r5,pc}
@ 0x21d10dc

.thumb
Function_21d10dc: @ 21d10dc :thumb
	push    {r3,lr}
	bl      0x200a878
	bl      0x201e958
	bl      0x201f8b4
	bl      Function_21d1218
	pop     {r3,pc}
@ 0x21d10f0

.thumb
Function_21d10f0: @ 21d10f0 :thumb
	push    {r4,lr}
	add     sp, #-0x28
	ldr     r4, [pc, #0x14] @ 0x21d110c, (=0x21d29c0)
	add     r3, sp, #0x0
	mov     r2, #0x5
.thumb
branch_21d10fa: @ 21d10fa :thumb
	ldmia   r4!, {r0,r1}
	stmia   r3!, {r0,r1}
	.hword  0x1e52 @ sub r2, r2, #0x1
	bne     branch_21d10fa
	add     r0, sp, #0x0
	bl      0x201fe94
	add     sp, #0x28
	pop     {r4,pc}
@ 0x21d110c

.word 0x21d29c0 @ 0x21d110c
.thumb
Function_21d1110: @ 21d1110 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x24
	mov     r4, r0
	blx     0x20a7944
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	mov     r1, #0x80
	str     r1, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r3, #0x20
	str     r3, [sp, #0xc]
	mov     r2, r0
	str     r4, [sp, #0x10]
	bl      0x200a784
	ldr     r5, [pc, #0x2c] @ 0x21d1160, (=Unknown_21d294c)
	add     r3, sp, #0x14
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	ldr     r1, [pc, #0x20] @ 0x21d1164, (=0x200010)
	mov     r2, #0x10
	str     r4, [sp, #0x20]
	bl      0x201e88c
	mov     r0, #0x20
	mov     r1, r4
	bl      0x201f834
	bl      0x201e994
	bl      0x201f8e4
	add     sp, #0x24
	pop     {r4,r5,pc}
@ 0x21d115e

.align 2
.word Unknown_21d294c @ 0x21d1160
.word 0x200010 @ 0x21d1164



.thumb
Function_21d1168: @ 21d1168 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r4, r0
	blx     0x20b28cc
	blx     0x20bfb4c
	ldr     r0, [pc, #0x7c] @ 0x21d11f4, (=0x4000060)
	ldr     r1, [pc, #0x7c] @ 0x21d11f8, (=0xffffcffd)
	ldrh    r2, [r0, #0x0]
	and     r2, r1
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	add     r2, r1, #0x2
	and     r3, r2
	mov     r2, #0x10
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r3, [r0, #0x0]
	ldr     r2, [pc, #0x6c] @ 0x21d11fc, (=0xcffb)
	and     r2, r3
	strh    r2, [r0, #0x0]
	add     r2, r1, #0x2
	ldrh    r3, [r0, #0x0]
	.hword  0x1c89 @ add r1, r1, #0x2
	and     r3, r2
	mov     r2, #0x8
	orr     r2, r3
	strh    r2, [r0, #0x0]
	ldrh    r2, [r0, #0x0]
	mov     r3, r4
	and     r2, r1
	mov     r1, #0x20
	orr     r1, r2
	strh    r1, [r0, #0x0]
	ldr     r1, [pc, #0x50] @ 0x21d1200, (=0x1084)
	ldr     r0, [pc, #0x50] @ 0x21d1204, (=0x63c)
	mov     r2, #0x0
.thumb
branch_21d11b4: @ 21d11b4 :thumb
	.hword  0x1c52 @ add r2, r2, #0x1
	strh    r1, [r3, r0]
	.hword  0x1c9b @ add r3, r3, #0x2
	cmp     r2, #0x8
	blt     branch_21d11b4
	ldr     r0, [pc, #0x44] @ 0x21d1204, (=0x63c)
	add     r0, r4, r0
	blx     0x20bfd2c
	mov     r1, #0x0
	ldr     r0, [pc, #0x3c] @ 0x21d1208, (=0x43ff)
	ldr     r2, [pc, #0x40] @ 0x21d120c, (=0x7fff)
	mov     r3, #0x3f
	str     r1, [sp, #0x0]
	blx     0x20bfd58
	ldr     r1, [pc, #0x38] @ 0x21d1210, (=0x4000540)
	mov     r0, #0x2
	str     r0, [r1, #0x0]
	ldr     r0, [pc, #0x38] @ 0x21d1214, (=0xbfff0000)
	str     r0, [r1, #0x40]
	mov     r0, #0x1
	mov     r1, r0
	blx     0x20a5a94
	mov     r0, #0x1
	lsl     r0, r0, #14
	mov     r1, #0x1
	blx     0x20a5d88
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d11f4

.word 0x4000060 @ 0x21d11f4
.word 0xffffcffd @ 0x21d11f8
.word 0xcffb @ 0x21d11fc
.word 0x1084 @ 0x21d1200
.word 0x63c @ 0x21d1204
.word 0x43ff @ 0x21d1208
.word 0x7fff @ 0x21d120c
.word 0x4000540 @ 0x21d1210
.word 0xbfff0000 @ 0x21d1214
.thumb
Function_21d1218: @ 21d1218 :thumb
	push    {r3,lr}
	blx     0x20a5b1c
	blx     0x20a5f50
	pop     {r3,pc}
@ 0x21d1224

.thumb
Function_21d1224: @ 21d1224 :thumb
	push    {r4-r7,lr}
	add     sp, #-0x54
	mov     r4, r1
	ldr     r1, [pc, #0xb0] @ 0x21d12dc, (=0x4000008)
	mov     r5, r0
	ldrh    r2, [r1, #0x0]
	mov     r0, #0x3
	mov     r7, #0x1
	bic     r2, r0
	mov     r0, r2
	orr     r0, r7
	add     r3, sp, #0x38
	ldr     r6, [pc, #0xa0] @ 0x21d12e0, (=0x21d2988)
	strh    r0, [r1, #0x0]
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, r7
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, r7
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      0x2019690
	mov     r0, r5
	mov     r1, r7
	bl      0x2019ebc
	ldr     r6, [pc, #0x70] @ 0x21d12e4, (=0x21d296c)
	add     r3, sp, #0x1c
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x2
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x2
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      0x2019690
	mov     r0, r5
	mov     r1, #0x2
	bl      0x2019ebc
	ldr     r6, [pc, #0x40] @ 0x21d12e8, (=0x21d29a4)
	add     r3, sp, #0x0
	ldmia   r6!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r6!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldr     r0, [r6, #0x0]
	mov     r1, #0x3
	str     r0, [r3, #0x0]
	mov     r0, r5
	mov     r3, #0x0
	bl      0x20183c4
	mov     r0, #0x3
	mov     r1, #0x20
	mov     r2, #0x0
	mov     r3, r4
	bl      0x2019690
	mov     r0, r5
	mov     r1, #0x3
	bl      0x2019ebc
	add     sp, #0x54
	pop     {r4-r7,pc}
@ 0x21d12dc

.word 0x4000008 @ 0x21d12dc
.word 0x21d2988 @ 0x21d12e0
.word 0x21d296c @ 0x21d12e4
.word 0x21d29a4 @ 0x21d12e8
.thumb
Function_21d12ec: @ 21d12ec :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r1, #0x1
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x2
	bl      0x2019044
	mov     r0, r4
	mov     r1, #0x3
	bl      0x2019044
	pop     {r4,pc}
@ 0x21d1308

.thumb
Function_21d1308: @ 21d1308 :thumb
	push    {r4,r5,lr}
	add     sp, #-0x14
	mov     r4, r1
	mov     r5, r0
	mov     r0, r4
	mov     r1, #0x1
	bl      0x201a778
	mov     r1, r5
	add     r1, #0x98
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      0x201a7a0
	mov     r0, #0x13
	str     r0, [sp, #0x0]
	mov     r0, #0x17
	str     r0, [sp, #0x4]
	mov     r3, #0x4
	mov     r1, r5
	str     r3, [sp, #0x8]
	mov     r0, #0x2
	str     r0, [sp, #0xc]
	mov     r0, #0x1f
	str     r0, [sp, #0x10]
	mov     r0, r5
	add     r0, #0x94
	add     r1, #0x98
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x1
	bl      0x201a7e8
	mov     r0, r5
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, #0xf
	bl      Function_201ada4
	ldr     r0, [pc, #0x40] @ 0x21d139c, (=0x6a8)
	mov     r1, #0x1
	ldr     r0, [r5, r0]
	lsl     r2, r1, #9
	lsl     r0, r0, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, r5
	str     r4, [sp, #0x4]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	mov     r3, #0x0
	bl      0x200dd0c
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, #0x52
	mov     r1, #0x10
	mov     r2, #0x0
	mov     r3, #0x40
	str     r4, [sp, #0x4]
	bl      0x2006e84
	add     r5, #0x98
	mov     r1, #0x0
	mov     r2, #0x2
	ldr     r0, [r5, #0x0]
	lsl     r2, r2, #8
	mov     r3, r1
	bl      0x200e060
	add     sp, #0x14
	pop     {r4,r5,pc}
@ 0x21d139c

.word 0x6a8 @ 0x21d139c
.thumb
Function_21d13a0: @ 21d13a0 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_201a8fc
	add     r4, #0x98
	ldr     r0, [r4, #0x0]
	bl      free
	pop     {r4,pc}
@ 0x21d13b6


.align 2, 0


.thumb
Function_21d13b8: @ 21d13b8 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, r1
	bl      0x200762c
	mov     r1, #0x2
	lsl     r1, r1, #8
	str     r0, [r5, r1]
	ldr     r3, [pc, #0x8c] @ 0x21d1458, (=0x2100dec)
	lsl     r0, r1, #6
	mov     r1, #0x0
	ldr     r3, [r3, #0x0]
	mov     r2, r1
	blx     r3
	ldr     r3, [pc, #0x84] @ 0x21d145c, (=0x2100df4)
	mov     r4, r0
	ldr     r3, [r3, #0x0]
	mov     r0, #0x80
	mov     r1, #0x0
	mov     r2, #0x1
	blx     r3
	ldr     r2, [pc, #0x7c] @ 0x21d1460, (=0x7fff0000)
	mov     r6, r0
	mov     r0, #0x2
	lsl     r0, r0, #8
	and     r2, r4
	lsl     r1, r4, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #13
	lsl     r2, r2, #4
	bl      0x2008a78
	ldr     r2, [pc, #0x68] @ 0x21d1464, (=0xffff0000)
	mov     r0, #0x2
	lsl     r0, r0, #8
	and     r2, r6
	lsl     r1, r6, #16
	lsr     r2, r2, #16
	ldr     r0, [r5, r0]
	lsr     r1, r1, #13
	lsl     r2, r2, #3
	bl      0x2008a84
	mov     r2, #0x81
	lsl     r2, r2, #2
	add     r0, r5, r2
	mov     r1, r5
	sub     r2, #0x81
	bl      Function_21d1468
	mov     r2, #0x82
	lsl     r2, r2, #2
	add     r0, r5, r2
	mov     r1, r5
	sub     r2, #0x82
	bl      Function_21d1468
	mov     r2, #0x83
	lsl     r2, r2, #2
	add     r0, r5, r2
	mov     r1, r5
	sub     r2, #0x83
	bl      Function_21d1468
	mov     r6, #0x81
	mov     r4, #0x0
	mov     r7, #0x6
	lsl     r6, r6, #2
.thumb
branch_21d1442: @ 21d1442 :thumb
	ldr     r0, [r5, r6]
	mov     r1, r7
	mov     r2, #0x1
	bl      0x2007dec
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d1442
	pop     {r3-r7,pc}
@ 0x21d1456


.align 2


.word 0x2100dec @ 0x21d1458
.word 0x2100df4 @ 0x21d145c
.word 0x7fff0000 @ 0x21d1460
.word 0xffff0000 @ 0x21d1464
.thumb
Function_21d1468: @ 21d1468 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x20
	mov     r6, r2
	mov     r5, r0
	lsl     r0, r6, #16
	mov     r4, r1
	lsr     r0, r0, #16
	mov     r1, #0x0
	bl      Function_2075dac
	mov     r2, r0
	mov     r0, #0x0
	str     r0, [sp, #0x0]
	str     r0, [sp, #0x4]
	lsl     r1, r6, #16
	lsl     r2, r2, #24
	str     r0, [sp, #0x8]
	add     r0, sp, #0x10
	lsr     r1, r1, #16
	lsr     r2, r2, #24
	mov     r3, #0x2
	bl      Function_2075fb4
	ldr     r0, [pc, #0x20] @ 0x21d14b8, (=0x3ff)
	add     r1, sp, #0x10
	str     r0, [sp, #0x0]
	mov     r0, #0x0
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	str     r0, [sp, #0xc]
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	mov     r2, #0x80
	mov     r3, #0x60
	bl      0x2007c34
	str     r0, [r5, #0x0]
	add     sp, #0x20
	pop     {r4-r6,pc}
@ 0x21d14b8

.word 0x3ff @ 0x21d14b8
.thumb
Function_21d14bc: @ 21d14bc :thumb
	push    {r3-r7,lr}
	mov     r7, r0
	mov     r6, #0x81
	mov     r4, #0x0
	mov     r5, r7
	lsl     r6, r6, #2
.thumb
branch_21d14c8: @ 21d14c8 :thumb
	ldr     r0, [r5, r6]
	cmp     r0, #0x0
	beq     branch_21d14d2
	bl      0x2007dc8
.thumb
branch_21d14d2: @ 21d14d2 :thumb
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d14c8
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r0, [r7, r0]
	bl      0x2007b6c
	pop     {r3-r7,pc}
@ 0x21d14e6


.align 2, 0


.thumb
Function_21d14e8: @ 21d14e8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	ldr     r5, [pc, #0x20] @ 0x21d1510, (=0x21d295c)
	add     r3, sp, #0x0
	mov     r4, r0
	mov     r6, r1
	mov     r2, r3
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	ldmia   r5!, {r0,r1}
	stmia   r3!, {r0,r1}
	mov     r0, r2
	str     r6, [sp, #0xc]
	bl      0x2015064
	ldr     r1, [pc, #0xc] @ 0x21d1514, (=0x64c)
	str     r0, [r4, r1]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d150e


.align 2


.word 0x21d295c @ 0x21d1510
.word 0x64c @ 0x21d1514
.thumb
Function_21d1518: @ 21d1518 :thumb
	ldr     r1, [pc, #0x4] @ 0x21d1520, (=0x64c)
	ldr     r3, [pc, #0x8] @ 0x21d1524, (=0x20150a9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d1520

.word 0x64c @ 0x21d1520
.word 0x20150a9 @ 0x21d1524
.thumb
Function_21d1528: @ 21d1528 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, r1
	mov     r1, r5
	mov     r0, #0x2
	add     r1, #0xbc
	mov     r2, r4
	bl      0x20095c4
	mov     r1, #0x79
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, #0x0
	mov     r2, r4
	bl      0x2009714
	mov     r1, #0x7a
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, #0x1
	mov     r2, r4
	bl      0x2009714
	mov     r1, #0x7b
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, r0
	mov     r2, r4
	bl      0x2009714
	mov     r1, #0x1f
	lsl     r1, r1, #4
	str     r0, [r5, r1]
	mov     r0, #0x2
	mov     r1, #0x3
	mov     r2, r4
	bl      0x2009714
	mov     r1, #0x7d
	lsl     r1, r1, #2
	str     r0, [r5, r1]
	mov     r0, #0x10
	mov     r1, #0x1
	bl      Function_201ff0c
	mov     r0, #0x10
	mov     r1, #0x1
	bl      0x201ff74
	pop     {r3-r5,pc}
@ 0x21d1592


.align 2, 0


.thumb
Function_21d1594: @ 21d1594 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2021964
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2009754
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2009754
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r4, r0]
	bl      0x2009754
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x2009754
	pop     {r4,pc}
@ 0x21d15cc

.thumb
Function_21d15cc: @ 21d15cc :thumb
	push    {r3-r7,lr}
	mov     r6, r1
	mov     r7, r2
	mov     r5, r0
	mov     r4, r3
	mov     r1, #0x0
	mov     r2, #0x98
	blx     0x20d5124
	mov     r0, r5
	mov     r1, r6
	mov     r2, r4
	bl      Function_21d1630
	ldr     r3, [sp, #0x18]
	mov     r0, r5
	mov     r1, r7
	mov     r2, r4
	bl      Function_21d1694
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d17b4
	pop     {r3-r7,pc}
@ 0x21d1604

.thumb
Function_21d1604: @ 21d1604 :thumb
	push    {r4-r6,lr}
	mov     r4, r1
	mov     r6, r2
	mov     r5, r0
	mov     r1, #0x0
	mov     r2, #0x98
	blx     0x20d5124
	mov     r0, r5
	mov     r1, r4
	mov     r2, r6
	bl      Function_21d1630
	mov     r1, #0x1
	lsl     r1, r1, #12
	mov     r0, r5
	mov     r2, r1
	mov     r3, r1
	bl      Function_21d17b4
	pop     {r4-r6,pc}
@ 0x21d162e


.align 2, 0


.thumb
Function_21d1630: @ 21d1630 :thumb
	push    {r3,r4,lr}
	add     sp, #-0x4
	mov     r3, r2
	mov     r2, #0x0
	mov     r4, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x52
	bl      0x2006fe8
	str     r0, [r4, #0x54]
	blx     0x20b3c0c
	str     r0, [r4, #0x58]
	cmp     r0, #0x0
	beq     branch_21d166e
	mov     r2, r0
	add     r2, #0x8
	beq     branch_21d1662
	ldrb    r1, [r0, #0x9]
	cmp     r1, #0x0
	bls     branch_21d1662
	ldrh    r1, [r0, #0xe]
	add     r1, r2, r1
	.hword  0x1d09 @ add r1, r1, #0x4
	b       branch_21d1664
@ 0x21d1662

.thumb
branch_21d1662: @ 21d1662 :thumb
	mov     r1, #0x0
.thumb
branch_21d1664: @ 21d1664 :thumb
	cmp     r1, #0x0
	beq     branch_21d166e
	ldr     r1, [r1, #0x0]
	add     r0, r0, r1
	b       branch_21d1670
@ 0x21d166e

.thumb
branch_21d166e: @ 21d166e :thumb
	mov     r0, #0x0
.thumb
branch_21d1670: @ 21d1670 :thumb
	str     r0, [r4, #0x5c]
	ldr     r0, [r4, #0x54]
	blx     0x20b3c1c
	str     r0, [r4, #0x60]
	bl      0x201cbcc
	ldr     r0, [r4, #0x54]
	ldr     r1, [r4, #0x60]
	bl      0x201cbb0
	ldr     r1, [r4, #0x5c]
	mov     r0, r4
	blx     0x20ae608
	add     sp, #0x4
	pop     {r3,r4,pc}
@ 0x21d1692


.align 2, 0


.thumb
Function_21d1694: @ 21d1694 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x4
	mov     r6, r2
	mov     r2, #0x0
	mov     r4, r0
	mov     r5, r3
	str     r2, [sp, #0x0]
	mov     r0, #0x52
	mov     r3, r6
	bl      0x2006fe8
	str     r0, [r4, #0x64]
	mov     r1, #0x0
	blx     0x20b3c5c
	str     r0, [r4, #0x68]
	ldr     r1, [r4, #0x68]
	ldr     r2, [r4, #0x5c]
	mov     r0, r5
	blx     0x20b2cb4
	str     r0, [r4, #0x6c]
	ldr     r1, [r4, #0x68]
	ldr     r2, [r4, #0x5c]
	ldr     r3, [r4, #0x60]
	blx     0x20ae4f0
	ldr     r1, [r4, #0x6c]
	mov     r0, r4
	blx     0x20ae77c
	add     sp, #0x4
	pop     {r3-r6,pc}
@ 0x21d16d6


.align 2, 0


.thumb
Function_21d16d8: @ 21d16d8 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r4, r1
	cmp     r0, #0x0
	beq     branch_21d16e8
	bl      free
.thumb
branch_21d16e8: @ 21d16e8 :thumb
	ldr     r0, [r5, #0x64]
	cmp     r0, #0x0
	beq     branch_21d16fc
	ldr     r1, [r5, #0x6c]
	mov     r0, r4
	blx     0x20b2cd8
	ldr     r0, [r5, #0x64]
	bl      free
.thumb
branch_21d16fc: @ 21d16fc :thumb
	mov     r0, r5
	mov     r1, #0x0
	mov     r2, #0x98
	blx     0x20d5124
	pop     {r3-r5,pc}
@ 0x21d1708

.thumb
Function_21d1708: @ 21d1708 :thumb
	push    {r4,lr}
	add     sp, #-0x48
	mov     r4, r0
	add     r0, sp, #0x24
	blx     0x20bb4c8
	mov     r0, r4
	add     r0, #0x90
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x84] @ 0x21d17a0, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5ac
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x92
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x5c] @ 0x21d17a0, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5c8
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     0x20bb8ec
	mov     r0, r4
	add     r0, #0x94
	ldrh    r0, [r0, #0x0]
	ldr     r3, [pc, #0x38] @ 0x21d17a0, (=0x20f983c)
	asr     r0, r0, #4
	lsl     r2, r0, #1
	lsl     r1, r2, #1
	.hword  0x1c52 @ add r2, r2, #0x1
	lsl     r2, r2, #1
	ldsh    r1, [r3, r1]
	ldsh    r2, [r3, r2]
	add     r0, sp, #0x0
	bl      0x20bb5e4
	add     r1, sp, #0x24
	add     r0, sp, #0x0
	mov     r2, r1
	blx     0x20bb8ec
	ldr     r0, [r4, #0x74]
	cmp     r0, #0x0
	beq     branch_21d179c
	mov     r1, r4
	mov     r0, r4
	add     r4, #0x84
	add     r1, #0x78
	add     r2, sp, #0x24
	mov     r3, r4
	bl      0x201ca74
.thumb
branch_21d179c: @ 21d179c :thumb
	add     sp, #0x48
	pop     {r4,pc}
@ 0x21d17a0

.word 0x20f983c @ 0x21d17a0
.thumb
Function_21d17a4: @ 21d17a4 :thumb
	str     r1, [r0, #0x74]
	bx      lr
@ 0x21d17a8

.thumb
Function_21d17a8: @ 21d17a8 :thumb
	str     r1, [r0, #0x78]
	str     r2, [r0, #0x7c]
	add     r0, #0x80
	str     r3, [r0, #0x0]
	bx      lr
@ 0x21d17b2


.align 2, 0


.thumb
Function_21d17b4: @ 21d17b4 :thumb
	push    {r3,r4}
	mov     r4, r0
	add     r4, #0x84
	str     r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x88
	str     r2, [r1, #0x0]
	add     r0, #0x8c
	str     r3, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x21d17ca


.align 2, 0


.thumb
Function_21d17cc: @ 21d17cc :thumb
	push    {r3,r4}
	mov     r4, r0
	add     r4, #0x90
	strh    r1, [r4, #0x0]
	mov     r1, r0
	add     r1, #0x92
	strh    r2, [r1, #0x0]
	add     r0, #0x94
	strh    r3, [r0, #0x0]
	pop     {r3,r4}
	bx      lr
@ 0x21d17e2


.align 2, 0


.thumb
Function_21d17e4: @ 21d17e4 :thumb
	ldr     r1, [r0, #0x6c]
	ldr     r2, [r0, #0x70]
	ldr     r1, [r1, #0x8]
	ldrh    r1, [r1, #0x4]
	lsl     r3, r1, #12
	mov     r1, #0x1
	lsl     r1, r1, #12
	add     r1, r2, r1
	cmp     r1, r3
	bge     branch_21d17fe
	str     r1, [r0, #0x70]
	mov     r2, #0x0
	b       branch_21d1802
@ 0x21d17fe

.thumb
branch_21d17fe: @ 21d17fe :thumb
	str     r3, [r0, #0x70]
	mov     r2, #0x1
.thumb
branch_21d1802: @ 21d1802 :thumb
	ldr     r1, [r0, #0x70]
	ldr     r0, [r0, #0x6c]
	str     r1, [r0, #0x0]
	mov     r0, r2
	bx      lr
@ 0x21d180c

.thumb
Function_21d180c: @ 21d180c :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x1
	ldr     r1, [r4, #0x70]
	lsl     r0, r0, #12
	add     r0, r1, r0
	ldr     r1, [r4, #0x6c]
	ldr     r1, [r1, #0x8]
	ldrh    r1, [r1, #0x4]
	lsl     r1, r1, #12
	blx     0x20e1f6c
	str     r1, [r4, #0x70]
	ldr     r0, [r4, #0x6c]
	str     r1, [r0, #0x0]
	pop     {r4,pc}
@ 0x21d182c

.thumb
Function_21d182c: @ 21d182c :thumb
	str     r1, [r0, #0x70]
	ldr     r0, [r0, #0x6c]
	str     r1, [r0, #0x0]
	bx      lr
@ 0x21d1834

.thumb
Function_21d1834: @ 21d1834 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x8
	mov     r6, r0
	mov     r0, #0x25
	mov     r7, r1
	lsl     r0, r0, #4
	add     r1, r6, r0
	add     r0, #0x10
	str     r1, [sp, #0x0]
	add     r0, r6, r0
	mov     r1, #0x1
	mov     r2, #0x0
	mov     r3, r7
	bl      Function_21d15cc
	mov     r0, #0x26
	lsl     r0, r0, #4
	add     r0, r6, r0
	mov     r1, #0x1
	bl      Function_21d17a4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r6, r0
	mov     r1, #0x8
	mov     r2, r7
	bl      Function_21d1604
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r6, r0
	mov     r1, #0x0
	bl      Function_21d17a4
	mov     r0, #0x26
	lsl     r0, r0, #4
	add     r1, r6, r0
	lsr     r0, r0, #1
	add     r5, r1, r0
	mov     r0, #0x25
	lsl     r0, r0, #4
	add     r0, r6, r0
	mov     r4, #0x2
	str     r0, [sp, #0x4]
.thumb
branch_21d188c: @ 21d188c :thumb
	.hword  0x1ea0 @ sub r0, r4, #0x2
	lsl     r2, r0, #1
	ldr     r0, [sp, #0x4]
	add     r1, r2, #0x3
	str     r0, [sp, #0x0]
	mov     r0, r5
	.hword  0x1c92 @ add r2, r2, #0x2
	mov     r3, r7
	bl      Function_21d15cc
	mov     r0, r5
	mov     r1, #0x0
	bl      Function_21d17a4
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x98
	cmp     r4, #0x4
	ble     branch_21d188c
	ldr     r0, [pc, #0x48] @ 0x21d18fc, (=0x558)
	mov     r1, #0x9
	add     r0, r6, r0
	mov     r2, r7
	bl      Function_21d1604
	ldr     r0, [pc, #0x3c] @ 0x21d18fc, (=0x558)
	mov     r1, #0x1
	add     r0, r6, r0
	bl      Function_21d17a4
	ldr     r0, [pc, #0x34] @ 0x21d18fc, (=0x558)
	mov     r3, #0xa
	ldr     r2, [pc, #0x34] @ 0x21d1900, (=0xfffe4000)
	add     r0, r6, r0
	mov     r1, #0x0
	lsl     r3, r3, #14
	bl      Function_21d17a8
	ldr     r0, [pc, #0x24] @ 0x21d18fc, (=0x558)
	mov     r1, #0xe
	lsl     r1, r1, #10
	mov     r2, #0x1
	add     r0, r6, r0
	lsl     r2, r2, #12
	mov     r3, r1
	bl      Function_21d17b4
	ldr     r0, [pc, #0x10] @ 0x21d18fc, (=0x558)
	mov     r1, #0x0
	ldr     r2, [pc, #0x14] @ 0x21d1904, (=0x7fff)
	add     r0, r6, r0
	mov     r3, r1
	bl      Function_21d17cc
	add     sp, #0x8
	pop     {r3-r7,pc}
@ 0x21d18fa


.align 2


.word 0x558 @ 0x21d18fc
.word 0xfffe4000 @ 0x21d1900
.word 0x7fff @ 0x21d1904
.thumb
Function_21d1908: @ 21d1908 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x26
	lsl     r0, r0, #4
	mov     r7, r0
	mov     r4, #0x0
	add     r5, r6, r0
	sub     r7, #0x10
.thumb
branch_21d1918: @ 21d1918 :thumb
	mov     r0, r5
	add     r1, r6, r7
	bl      Function_21d16d8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x98
	cmp     r4, #0x6
	blt     branch_21d1918
	pop     {r3-r7,pc}
@ 0x21d192a


.align 2, 0


.thumb
Function_21d192c: @ 21d192c :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r0, #0x0
	ldr     r2, [pc, #0x3c] @ 0x21d1970, (=0xfffff000)
	mov     r1, r0
	mov     r3, r0
	blx     0x20af51c
	ldr     r1, [pc, #0x34] @ 0x21d1974, (=0x7fff)
	mov     r0, #0x0
	blx     0x20af558
	ldr     r0, [pc, #0x2c] @ 0x21d1974, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af56c
	ldr     r0, [pc, #0x24] @ 0x21d1974, (=0x7fff)
	mov     r2, #0x0
	mov     r1, r0
	blx     0x20af590
	mov     r0, #0x26
	lsl     r0, r0, #4
	mov     r4, #0x0
	add     r5, r5, r0
.thumb
branch_21d1960: @ 21d1960 :thumb
	mov     r0, r5
	bl      Function_21d1708
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0x98
	cmp     r4, #0x6
	blt     branch_21d1960
	pop     {r3-r5,pc}
@ 0x21d1970

.word 0xfffff000 @ 0x21d1970
.word 0x7fff @ 0x21d1974
.thumb
Function_21d1978: @ 21d1978 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0x8]
	cmp     r1, #0x1
	bne     branch_21d1986
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d1986

.thumb
branch_21d1986: @ 21d1986 :thumb
	bl      Function_21d1ca4
	cmp     r0, #0x5
	bhi     branch_21d19c8
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d199a

Jumppoints_21d199a:
.hword branch_21d19c8 - Jumppoints_21d199a - 2
.hword branch_21d19c8 - Jumppoints_21d199a - 2
.hword branch_21d19c8 - Jumppoints_21d199a - 2
.hword branch_21d19a6 - Jumppoints_21d199a - 2
.hword branch_21d19c8 - Jumppoints_21d199a - 2
.hword branch_21d19c4 - Jumppoints_21d199a - 2
.thumb
branch_21d19a6: @ 21d19a6 :thumb
	mov     r0, r4
	bl      Function_21d1c58
	ldr     r0, [pc, #0x1c] @ 0x21d19cc, (=0x21bf67c)
	mov     r1, #0x1
	ldr     r0, [r0, #0x48]
	tst     r0, r1
	beq     branch_21d19c8
	mov     r0, r4
	bl      Function_21d1c98
	ldr     r0, [pc, #0x10] @ 0x21d19d0, (=0x5dc)
	bl      Function_2005748
	b       branch_21d19c8
@ 0x21d19c4

.thumb
branch_21d19c4: @ 21d19c4 :thumb
	mov     r0, #0x1
	pop     {r4,pc}
@ 0x21d19c8

.thumb
branch_21d19c8: @ 21d19c8 :thumb
	mov     r0, #0x0
	pop     {r4,pc}
@ 0x21d19cc

.word 0x21bf67c @ 0x21d19cc
.word 0x5dc @ 0x21d19d0
.thumb
Function_21d19d4: @ 21d19d4 :thumb
	push    {r3-r5,lr}
	mov     r4, r0
	mov     r5, r1
	bl      Function_21d1ca4
	cmp     r0, #0x5
	bhi     branch_21d1a9e
	add     r0, r0, r0
	add     r0, pc
	ldrh    r0, [r0, #0x6]
	lsl     r0, r0, #16
	asr     r0, r0, #16
	add     pc, r0
@ 0x21d19ee

Jumppoints_21d19ee:
.hword branch_21d19fa - Jumppoints_21d19ee - 2
.hword branch_21d1a1a - Jumppoints_21d19ee - 2
.hword branch_21d1a32 - Jumppoints_21d19ee - 2
.hword branch_21d1a84 - Jumppoints_21d19ee - 2
.hword branch_21d1a8e - Jumppoints_21d19ee - 2
.hword branch_21d1a98 - Jumppoints_21d19ee - 2
.thumb
branch_21d19fa: @ 21d19fa :thumb
	mov     r1, #0x1
	str     r1, [r4, #0x8]
	mov     r0, #0x24
	str     r0, [r4, #0xc]
	mov     r0, r4
	bl      Function_21d1c98
	mov     r0, #0x6
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x90] @ 0x21d1aa0, (=0x4000050)
	mov     r1, #0x8
	mov     r2, #0x15
	mov     r3, #0xa
	blx     G2x_SetBlendAlpha_
	pop     {r3-r5,pc}
@ 0x21d1a1a

.thumb
branch_21d1a1a: @ 21d1a1a :thumb
	ldr     r0, [r4, #0xc]
	.hword  0x1e40 @ sub r0, r0, #0x1
	str     r0, [r4, #0xc]
	bpl     branch_21d1a9e
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1c98
	ldr     r0, [pc, #0x78] @ 0x21d1aa4, (=0x6ca)
	bl      Function_2005748
	pop     {r3-r5,pc}
@ 0x21d1a32

.thumb
branch_21d1a32: @ 21d1a32 :thumb
	mov     r0, #0x26
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d17e4
	cmp     r0, #0x0
	beq     branch_21d1a9e
	mov     r0, #0x26
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d17a4
	mov     r0, #0xbe
	lsl     r0, r0, #2
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_21d17a4
	mov     r0, #0x39
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_21d17a4
	ldr     r0, [pc, #0x40] @ 0x21d1aa8, (=0x428)
	mov     r1, #0x1
	add     r0, r4, r0
	bl      Function_21d17a4
	mov     r0, #0x13
	lsl     r0, r0, #6
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_21d17a4
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1c98
	pop     {r3-r5,pc}
@ 0x21d1a84

.thumb
branch_21d1a84: @ 21d1a84 :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d1ca8
	pop     {r3-r5,pc}
@ 0x21d1a8e

.thumb
branch_21d1a8e: @ 21d1a8e :thumb
	mov     r0, r4
	mov     r1, r5
	bl      Function_21d1e44
	pop     {r3-r5,pc}
@ 0x21d1a98

.thumb
branch_21d1a98: @ 21d1a98 :thumb
	ldr     r0, [pc, #0x4] @ 0x21d1aa0, (=0x4000050)
	mov     r1, #0x0
	strh    r1, [r0, #0x0]
.thumb
branch_21d1a9e: @ 21d1a9e :thumb
	pop     {r3-r5,pc}
@ 0x21d1aa0

.word 0x4000050 @ 0x21d1aa0
.word 0x6ca @ 0x21d1aa4
.word 0x428 @ 0x21d1aa8
.thumb
Function_21d1aac: @ 21d1aac :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r4, r0
	bl      Call_G3X_Reset
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	blx     0x20b2628
	blx     0x20a73c0
	mov     r0, #0x2
	lsl     r0, r0, #8
	ldr     r0, [r4, r0]
	bl      0x2007768
	ldr     r0, [pc, #0x48] @ 0x21d1b1c, (=0x64c)
	ldr     r0, [r4, r0]
	bl      0x20150ec
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x4
	str     r2, [sp, #0x4]
	blx     0x20b275c
	mov     r1, #0x0
	mov     r0, #0x11
	mov     r2, r1
	blx     0x20b275c
	bl      0x20203ec
	mov     r0, r4
	bl      Function_21d192c
	mov     r2, #0x1
	mov     r0, #0x12
	add     r1, sp, #0x0
	str     r2, [sp, #0x0]
	blx     0x20b275c
	mov     r0, #0x0
	mov     r1, r0
	bl      0x20241bc
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r4, r0]
	bl      0x20219f8
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d1b1c

.word 0x64c @ 0x21d1b1c
.thumb
Function_21d1b20: @ 21d1b20 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, r1
	bl      0x20203ac
	mov     r1, #0x5f
	lsl     r1, r1, #4
	str     r0, [r4, r1]
	ldr     r0, [r4, r1]
	.hword  0x1d09 @ add r1, r1, #0x4
	add     r1, r4, r1
	bl      Function_21d1b3c
	pop     {r4,pc}
@ 0x21d1b3c

.thumb
Function_21d1b3c: @ 21d1b3c :thumb
	push    {r4,lr}
	add     sp, #-0x20
	mov     r3, #0x0
	str     r3, [r1, #0x0]
	str     r3, [r1, #0x4]
	mov     r4, r0
	ldr     r2, [pc, #0x3c] @ 0x21d1b88, (=0xeaab)
	str     r3, [r1, #0x8]
	add     r0, sp, #0xc
	strh    r2, [r0, #0x0]
	strh    r3, [r0, #0x2]
	strh    r3, [r0, #0x4]
	str     r3, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, r1
	mov     r1, #0x4b
	ldr     r3, [pc, #0x2c] @ 0x21d1b8c, (=0xfa4)
	lsl     r1, r1, #14
	add     r2, sp, #0xc
	str     r4, [sp, #0x8]
	bl      0x20206d0
	mov     r1, #0x0
	mov     r0, #0x1
	lsl     r0, r0, #12
	str     r0, [sp, #0x18]
	str     r1, [sp, #0x14]
	str     r1, [sp, #0x1c]
	add     r0, sp, #0x14
	mov     r1, r4
	bl      0x2020680
	mov     r0, r4
	bl      0x20203d4
	add     sp, #0x20
	pop     {r4,pc}
@ 0x21d1b88

.word 0xeaab @ 0x21d1b88
.word 0xfa4 @ 0x21d1b8c
.thumb
Function_21d1b90: @ 21d1b90 :thumb
	mov     r1, #0x5f
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d1b9c, (=0x20203b9)
	ldr     r0, [r0, r1]
	bx      r3
@ 0x21d1b9a


.align 2


.word 0x20203b9 @ 0x21d1b9c
.thumb
Function_21d1ba0: @ 21d1ba0 :thumb
	push    {r4-r7}
	mov     r5, #0x0
	mov     r4, r5
	mov     r6, r0
	.hword  0x1f2b @ sub r3, r5, #0x4
	mov     r1, r5
	sub     r4, #0x2c
	mov     r2, #0x20
.thumb
branch_21d1bb0: @ 21d1bb0 :thumb
	cmp     r5, #0x0
	beq     branch_21d1bbe
	cmp     r5, #0x1
	beq     branch_21d1bc6
	cmp     r5, #0x2
	beq     branch_21d1bd0
	b       branch_21d1bda
@ 0x21d1bbe

.thumb
branch_21d1bbe: @ 21d1bbe :thumb
	str     r4, [r6, #0x58]
	str     r3, [r6, #0x5c]
	str     r2, [r6, #0x60]
	b       branch_21d1bda
@ 0x21d1bc6

.thumb
branch_21d1bc6: @ 21d1bc6 :thumb
	str     r1, [r6, #0x58]
	str     r3, [r6, #0x5c]
	mov     r7, #0x3e
	str     r7, [r6, #0x60]
	b       branch_21d1bda
@ 0x21d1bd0

.thumb
branch_21d1bd0: @ 21d1bd0 :thumb
	mov     r7, #0x26
	str     r7, [r6, #0x58]
	str     r3, [r6, #0x5c]
	mov     r7, #0x1a
	str     r7, [r6, #0x60]
.thumb
branch_21d1bda: @ 21d1bda :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r6, #0xc
	cmp     r5, #0x3
	blt     branch_21d1bb0
	mov     r5, #0x0
	mov     r2, #0x82
	mov     r1, #0x52
	mov     r4, #0x4e
	mov     r3, #0x37
.thumb
branch_21d1bec: @ 21d1bec :thumb
	cmp     r5, #0x0
	beq     branch_21d1bfa
	cmp     r5, #0x1
	beq     branch_21d1c04
	cmp     r5, #0x2
	beq     branch_21d1c0e
	b       branch_21d1c1a
@ 0x21d1bfa

.thumb
branch_21d1bfa: @ 21d1bfa :thumb
	mov     r6, r0
	str     r4, [r0, #0x7c]
	add     r6, #0x80
	str     r3, [r6, #0x0]
	b       branch_21d1c1a
@ 0x21d1c04

.thumb
branch_21d1c04: @ 21d1c04 :thumb
	mov     r6, r0
	str     r2, [r0, #0x7c]
	add     r6, #0x80
	str     r1, [r6, #0x0]
	b       branch_21d1c1a
@ 0x21d1c0e

.thumb
branch_21d1c0e: @ 21d1c0e :thumb
	mov     r6, #0xac
	mov     r7, r0
	str     r6, [r0, #0x7c]
	add     r7, #0x80
	mov     r6, #0x32
	str     r6, [r7, #0x0]
.thumb
branch_21d1c1a: @ 21d1c1a :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	add     r0, #0x8
	cmp     r5, #0x3
	blt     branch_21d1bec
	pop     {r4-r7}
	bx      lr
@ 0x21d1c26


.align 2, 0


.thumb
Function_21d1c28: @ 21d1c28 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	mov     r0, #0x26
	lsl     r0, r0, #4
	mov     r4, #0x0
	add     r6, r5, r0
	mov     r7, #0x98
.thumb
branch_21d1c36: @ 21d1c36 :thumb
	add     r0, r4, #0x2
	mov     r1, r0
	mul     r1, r7
	add     r0, r6, r1
	ldr     r1, [r5, #0x58]
	ldr     r2, [r5, #0x5c]
	ldr     r3, [r5, #0x60]
	lsl     r1, r1, #12
	lsl     r2, r2, #12
	lsl     r3, r3, #12
	bl      Function_21d17a8
	.hword  0x1c64 @ add r4, r4, #0x1
	add     r5, #0xc
	cmp     r4, #0x3
	blt     branch_21d1c36
	pop     {r3-r7,pc}
@ 0x21d1c58

.thumb
Function_21d1c58: @ 21d1c58 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [pc, #0x30] @ 0x21d1c90, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x20
	tst     r0, r1
	beq     branch_21d1c74
	ldr     r0, [r4, #0x54]
	.hword  0x1e40 @ sub r0, r0, #0x1
	bmi     branch_21d1c74
	str     r0, [r4, #0x54]
	ldr     r0, [pc, #0x24] @ 0x21d1c94, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1c74: @ 21d1c74 :thumb
	ldr     r0, [pc, #0x18] @ 0x21d1c90, (=0x21bf67c)
	ldr     r1, [r0, #0x48]
	mov     r0, #0x10
	tst     r0, r1
	beq     branch_21d1c8e
	ldr     r0, [r4, #0x54]
	.hword  0x1c40 @ add r0, r0, #0x1
	cmp     r0, #0x3
	bge     branch_21d1c8e
	str     r0, [r4, #0x54]
	ldr     r0, [pc, #0x8] @ 0x21d1c94, (=0x5dc)
	bl      Function_2005748
.thumb
branch_21d1c8e: @ 21d1c8e :thumb
	pop     {r4,pc}
@ 0x21d1c90

.word 0x21bf67c @ 0x21d1c90
.word 0x5dc @ 0x21d1c94
.thumb
Function_21d1c98: @ 21d1c98 :thumb
	ldr     r2, [r0, #0x0]
	add     r1, r2, r1
	str     r1, [r0, #0x0]
	mov     r1, #0x0
	str     r1, [r0, #0x4]
	bx      lr
@ 0x21d1ca4

.thumb
Function_21d1ca4: @ 21d1ca4 :thumb
	ldr     r0, [r0, #0x0]
	bx      lr
@ 0x21d1ca8

.thumb
Function_21d1ca8: @ 21d1ca8 :thumb
	push    {r3,r4,lr}
	add     sp, #-0xc
	mov     r4, r0
	ldr     r2, [r4, #0x4]
	cmp     r2, #0x8
	bls     branch_21d1cb6
	b       branch_21d1de4
@ 0x21d1cb6

.thumb
branch_21d1cb6: @ 21d1cb6 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d1cc2

Jumppoints_21d1cc2:
.hword branch_21d1cd4 - Jumppoints_21d1cc2 - 2
.hword branch_21d1cf6 - Jumppoints_21d1cc2 - 2
.hword branch_21d1d0e - Jumppoints_21d1cc2 - 2
.hword branch_21d1d24 - Jumppoints_21d1cc2 - 2
.hword branch_21d1d54 - Jumppoints_21d1cc2 - 2
.hword branch_21d1d72 - Jumppoints_21d1cc2 - 2
.hword branch_21d1da2 - Jumppoints_21d1cc2 - 2
.hword branch_21d1dc0 - Jumppoints_21d1cc2 - 2
.hword branch_21d1dda - Jumppoints_21d1cc2 - 2
.thumb
branch_21d1cd4: @ 21d1cd4 :thumb
	mov     r2, #0x5f
	lsl     r2, r2, #4
	ldr     r1, [r4, r2]
	.hword  0x1d12 @ add r2, r2, #0x4
	add     r0, #0x10
	add     r2, r4, r2
	bl      Function_21d213c
	mov     r0, #0x2
	mov     r1, #0x1
	bl      Function_201ff0c
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1cf6

.thumb
branch_21d1cf6: @ 21d1cf6 :thumb
	add     r0, #0x10
	bl      Function_21d2200
	cmp     r0, #0x0
	beq     branch_21d1de4
	mov     r0, #0x6
	str     r0, [r4, #0xc]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1d0e

.thumb
branch_21d1d0e: @ 21d1d0e :thumb
	ldr     r1, [r4, #0xc]
	.hword  0x1e49 @ sub r1, r1, #0x1
	str     r1, [r4, #0xc]
	bpl     branch_21d1de4
	bl      Function_21d1e28
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1d24

.thumb
branch_21d1d24: @ 21d1d24 :thumb
	ldr     r0, [pc, #0xc0] @ 0x21d1de8, (=0x1020f)
	mov     r2, #0x5a
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0xc0] @ 0x21d1dec, (=0x6ac)
	lsl     r2, r2, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x0
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xac
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_21d201c
	mov     r1, #0x6b
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1d54

.thumb
branch_21d1d54: @ 21d1d54 :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d1de4
	mov     r0, r4
	bl      Function_21d2090
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1d72

.thumb
branch_21d1d72: @ 21d1d72 :thumb
	ldr     r0, [pc, #0x74] @ 0x21d1de8, (=0x1020f)
	mov     r2, #0x5a
	str     r0, [sp, #0x0]
	ldr     r0, [pc, #0x70] @ 0x21d1dec, (=0x6ac)
	lsl     r2, r2, #2
	ldr     r0, [r4, r0]
	mov     r3, #0x7
	str     r0, [sp, #0x4]
	mov     r0, r4
	add     r0, #0xac
	str     r0, [sp, #0x8]
	mov     r0, r4
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	bl      Function_21d201c
	mov     r1, #0x6b
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1da2

.thumb
branch_21d1da2: @ 21d1da2 :thumb
	mov     r0, #0x6b
	lsl     r0, r0, #4
	ldrb    r0, [r4, r0]
	bl      0x201d724
	cmp     r0, #0x0
	bne     branch_21d1de4
	mov     r0, r4
	bl      Function_21d2090
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1dc0

.thumb
branch_21d1dc0: @ 21d1dc0 :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_21d2430
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	add     sp, #0xc
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3,r4,pc}
@ 0x21d1dda

.thumb
branch_21d1dda: @ 21d1dda :thumb
	bl      Function_21d1df0
	mov     r0, r4
	bl      Function_21d1e28
.thumb
branch_21d1de4: @ 21d1de4 :thumb
	add     sp, #0xc
	pop     {r3,r4,pc}
@ 0x21d1de8

.word 0x1020f @ 0x21d1de8
.word 0x6ac @ 0x21d1dec
.thumb
Function_21d1df0: @ 21d1df0 :thumb
	push    {r3-r7,lr}
	mov     r6, r0
	mov     r0, #0x26
	lsl     r0, r0, #4
	mov     r5, #0x0
	add     r4, r6, r0
	mov     r7, #0x98
.thumb
branch_21d1dfe: @ 21d1dfe :thumb
	ldr     r0, [r6, #0x54]
	cmp     r0, r5
	bne     branch_21d1e12
	add     r0, r5, #0x2
	mov     r1, r0
	mul     r1, r7
	add     r0, r4, r1
	bl      Function_21d180c
	b       branch_21d1e20
@ 0x21d1e12

.thumb
branch_21d1e12: @ 21d1e12 :thumb
	add     r1, r5, #0x2
	mov     r0, #0x98
	mul     r0, r1
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d182c
.thumb
branch_21d1e20: @ 21d1e20 :thumb
	.hword  0x1c6d @ add r5, r5, #0x1
	cmp     r5, #0x3
	blt     branch_21d1dfe
	pop     {r3-r7,pc}
@ 0x21d1e28

.thumb
Function_21d1e28: @ 21d1e28 :thumb
	mov     r2, r0
	ldr     r0, [r2, #0x54]
	ldr     r3, [pc, #0x10] @ 0x21d1e40, (=0x21d243d)
	lsl     r1, r0, #3
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r2, r0
	add     r2, r2, r1
	ldr     r1, [r2, #0x7c]
	add     r2, #0x80
	ldr     r2, [r2, #0x0]
	bx      r3
@ 0x21d1e40

.word Function_21d243c+1 @ =0x21d243d, 0x21d1e40
.thumb
Function_21d1e44: @ 21d1e44 :thumb
	push    {r3-r5,lr}
	add     sp, #-0x8
	mov     r4, r0
	ldr     r2, [r4, #0x4]
	mov     r5, r1
	cmp     r2, #0x4
	bls     branch_21d1e54
	b       branch_21d1fa6
@ 0x21d1e54

.thumb
branch_21d1e54: @ 21d1e54 :thumb
	add     r2, r2, r2
	add     r2, pc
	ldrh    r2, [r2, #0x6]
	lsl     r2, r2, #16
	asr     r2, r2, #16
	add     pc, r2
@ 0x21d1e60

Jumppoints_21d1e60:
.hword branch_21d1e6a - Jumppoints_21d1e60 - 2
.hword branch_21d1e96 - Jumppoints_21d1e60 - 2
.hword branch_21d1eda - Jumppoints_21d1e60 - 2
.hword branch_21d1f1a - Jumppoints_21d1e60 - 2
.hword branch_21d1f52 - Jumppoints_21d1e60 - 2
.thumb
branch_21d1e6a: @ 21d1e6a :thumb
	mov     r0, #0x6
	lsl     r0, r0, #8
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d2430
	mov     r0, r4
	bl      Function_21d1e28
	mov     r0, r4
	bl      Function_21d2904
	mov     r0, r4
	bl      Function_21d2618
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, #0x1
	str     r0, [r4, #0x8]
	pop     {r3-r5,pc}
@ 0x21d1e96

.thumb
branch_21d1e96: @ 21d1e96 :thumb
	mov     r0, #0x65
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x1
	bl      Function_21d2508
	ldr     r0, [r4, #0x54]
	mov     r2, #0x0
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x81
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      0x2007dec
	mov     r0, r4
	bl      Function_21d26a4
	cmp     r0, #0x0
	beq     branch_21d1fa6
	ldr     r0, [r4, #0x54]
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	bl      Function_21d291c
	mov     r1, #0x0
	bl      0x2005844
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21d1eda

.thumb
branch_21d1eda: @ 21d1eda :thumb
	ldr     r0, [pc, #0xd0] @ 0x21d1fac, (=0x1020f)
	mov     r2, #0xff
	str     r0, [sp, #0x0]
	str     r2, [sp, #0x4]
	mov     r0, r4
	add     r0, #0x98
	ldr     r3, [r4, #0x54]
	ldr     r0, [r0, #0x0]
	add     r2, #0x69
	.hword  0x1c5b @ add r3, r3, #0x1
	bl      Function_21d1fb4
	mov     r0, r4
	mov     r1, r4
	str     r5, [sp, #0x0]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0xb0] @ 0x21d1fb0, (=0x29e)
	add     r1, #0xb0
	mov     r3, #0x1
	bl      0x2002100
	mov     r1, r4
	add     r1, #0xb8
	str     r0, [r1, #0x0]
	mov     r0, #0x0
	str     r0, [r4, #0x8]
	ldr     r0, [r4, #0x4]
	add     sp, #0x8
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	pop     {r3-r5,pc}
@ 0x21d1f1a

.thumb
branch_21d1f1a: @ 21d1f1a :thumb
	add     r0, #0xb8
	ldr     r0, [r0, #0x0]
	bl      0x2002114
	cmp     r0, #0x0
	beq     branch_21d1f36
	mov     r1, #0x1
	mvn     r1, r1
	cmp     r0, r1
	beq     branch_21d1f42
	.hword  0x1c49 @ add r1, r1, #0x1
	add     sp, #0x8
	cmp     r0, r1
	pop     {r3-r5,pc}
@ 0x21d1f36

.thumb
branch_21d1f36: @ 21d1f36 :thumb
	mov     r0, r4
	mov     r1, #0x1
	bl      Function_21d1c98
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1f42

.thumb
branch_21d1f42: @ 21d1f42 :thumb
	ldr     r0, [r4, #0x4]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r4, #0x4]
	mov     r0, r4
	bl      Function_21d2688
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1f52

.thumb
branch_21d1f52: @ 21d1f52 :thumb
	bl      Function_21d26a4
	cmp     r0, #0x0
	beq     branch_21d1fa6
	mov     r1, #0x0
	mov     r0, r4
	mvn     r1, r1
	bl      Function_21d1c98
	mov     r0, #0x7
	str     r0, [r4, #0x4]
	mov     r0, #0x65
	lsl     r0, r0, #4
	add     r0, r4, r0
	mov     r1, #0x0
	bl      Function_21d2508
	ldr     r0, [r4, #0x54]
	mov     r2, #0x1
	lsl     r0, r0, #2
	add     r1, r4, r0
	mov     r0, #0x81
	lsl     r0, r0, #2
	ldr     r0, [r1, r0]
	mov     r1, #0x6
	bl      0x2007dec
	ldr     r0, [pc, #0x20] @ 0x21d1fac, (=0x1020f)
	mov     r2, #0xff
	str     r0, [sp, #0x0]
	mov     r0, r4
	str     r2, [sp, #0x4]
	add     r0, #0x98
	ldr     r0, [r0, #0x0]
	mov     r1, r5
	add     r2, #0x69
	mov     r3, #0x7
	bl      Function_21d1fb4
	mov     r1, #0x6b
	lsl     r1, r1, #4
	strb    r0, [r4, r1]
.thumb
branch_21d1fa6: @ 21d1fa6 :thumb
	add     sp, #0x8
	pop     {r3-r5,pc}
@ 0x21d1faa


.align 2


.word 0x1020f @ 0x21d1fac
.word 0x29e @ 0x21d1fb0
.thumb
Function_21d1fb4: @ 21d1fb4 :thumb
	push    {r3-r7,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r6, r3
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	mov     r4, r0
	bne     branch_21d1fd0
	bl      0x2022974
.thumb
branch_21d1fd0: @ 21d1fd0 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_200b1ec
	mov     r6, r0
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r3, #0x0
	ldr     r0, [sp, #0x2c]
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r2, r6
	str     r3, [sp, #0xc]
	bl      0x201d78c
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r7, r0
	mov     r0, r5
	lsl     r2, r2, #8
	mov     r3, r1
	bl      0x200e060
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_200b190
	mov     r0, r7
	add     sp, #0x10
	pop     {r3-r7,pc}
@ 0x21d201c

.thumb
Function_21d201c: @ 21d201c :thumb
	push    {r4-r7,lr}
	add     sp, #-0x14
	ldr     r4, [sp, #0x30]
	mov     r5, r0
	ldr     r0, [r4, #0x0]
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x10]
	cmp     r0, #0x0
	beq     branch_21d2034
	bl      0x2022974
.thumb
branch_21d2034: @ 21d2034 :thumb
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r2, r7
	mov     r3, r6
	bl      Function_200b144
	mov     r6, r0
	bne     branch_21d2048
	bl      0x2022974
.thumb
branch_21d2048: @ 21d2048 :thumb
	ldr     r1, [sp, #0x10]
	mov     r0, r6
	bl      Function_200b1ec
	str     r0, [r4, #0x0]
	mov     r0, r5
	mov     r1, #0xf
	bl      Function_201ada4
	mov     r3, #0x0
	ldr     r0, [sp, #0x2c]
	str     r3, [sp, #0x0]
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x28]
	mov     r1, #0x1
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	ldr     r2, [r4, #0x0]
	mov     r0, r5
	bl      0x201d78c
	mov     r1, #0x0
	mov     r2, #0x2
	mov     r4, r0
	mov     r0, r5
	lsl     r2, r2, #8
	mov     r3, r1
	bl      0x200e060
	mov     r0, r6
	bl      Function_200b190
	mov     r0, r4
	add     sp, #0x14
	pop     {r4-r7,pc}
@ 0x21d208e


.align 2, 0


.thumb
Function_21d2090: @ 21d2090 :thumb
	push    {r4,lr}
	mov     r4, r0
	add     r0, #0xac
	ldr     r0, [r0, #0x0]
	bl      Function_20237bc
	mov     r0, #0x0
	add     r4, #0xac
	str     r0, [r4, #0x0]
	pop     {r4,pc}
@ 0x21d20a4

.thumb
Function_21d20a4: @ 21d20a4 :thumb
	push    {r4,lr}
	add     sp, #-0x8
	mov     r2, r0
	mov     r4, r1
	mov     r1, #0x1
	add     r2, #0xb0
	strb    r1, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0x17
	add     r2, #0xb1
	strb    r3, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0xc
	add     r2, #0xb2
	strb    r3, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0x5
	add     r2, #0xb3
	strb    r3, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0x4
	add     r2, #0xb4
	strb    r3, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0x3
	add     r2, #0xb5
	strb    r3, [r2, #0x0]
	mov     r2, r0
	mov     r3, #0xa7
	add     r2, #0xb6
	strh    r3, [r2, #0x0]
	mov     r2, #0x0
	str     r2, [sp, #0x0]
	str     r4, [sp, #0x4]
	add     r0, #0x94
	ldr     r0, [r0, #0x0]
	ldr     r2, [pc, #0x14] @ 0x21d2104, (=0x29e)
	mov     r3, r1
	bl      0x200daa4
	mov     r0, #0x0
	mov     r1, #0x60
	mov     r2, r4
	bl      0x2002e7c
	add     sp, #0x8
	pop     {r4,pc}
@ 0x21d2102


.align 2


.word 0x29e @ 0x21d2104
.thumb
Function_21d2108: @ 21d2108 :thumb
	str     r1, [r0, #0x0]
	str     r1, [r0, #0x4]
	sub     r1, r2, r1
	str     r1, [r0, #0x8]
	str     r3, [r0, #0xc]
	bx      lr
@ 0x21d2114

.thumb
Function_21d2114: @ 21d2114 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	ldr     r3, [r5, #0xc]
	cmp     r1, r3
	blt     branch_21d2122
	mov     r4, #0x1
	b       branch_21d2124
@ 0x21d2122

.thumb
branch_21d2122: @ 21d2122 :thumb
	mov     r4, #0x0
.thumb
branch_21d2124: @ 21d2124 :thumb
	ldr     r2, [r5, #0x8]
	mov     r0, r2
	mul     r0, r1
	mov     r1, r3
	blx     0x20e1f6c
	ldr     r1, [r5, #0x4]
	add     r0, r0, r1
	str     r0, [r5, #0x0]
	mov     r0, r4
	pop     {r3-r5,pc}
@ 0x21d213a


.align 2, 0


.thumb
Function_21d213c: @ 21d213c :thumb
	push    {r4-r6,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x40]
	mov     r4, r1
	mov     r6, r2
	cmp     r0, #0x0
	beq     branch_21d214e
	bl      0x2022974
.thumb
branch_21d214e: @ 21d214e :thumb
	ldr     r1, [pc, #0x40] @ 0x21d2190, (=0xffffeaab)
	ldr     r2, [pc, #0x40] @ 0x21d2194, (=0xffffdc72)
	mov     r0, r5
	mov     r3, #0x6
	bl      Function_21d2108
	mov     r0, r5
	mov     r1, #0x4b
	mov     r2, #0x32
	add     r0, #0x10
	lsl     r1, r1, #14
	lsl     r2, r2, #14
	mov     r3, #0x6
	bl      Function_21d2108
	mov     r0, r5
	mov     r2, #0x9
	add     r0, #0x20
	mov     r1, #0x0
	lsl     r2, r2, #14
	mov     r3, #0x6
	bl      Function_21d2108
	mov     r2, #0x0
	str     r2, [r5, #0x3c]
	str     r4, [r5, #0x30]
	str     r6, [r5, #0x34]
	ldr     r0, [pc, #0x10] @ 0x21d2198, (=0x21d219d)
	mov     r1, r5
	str     r2, [r5, #0x38]
	bl      0x200d9e8
	pop     {r4-r6,pc}
@ 0x21d2190

.word 0xffffeaab @ 0x21d2190
.word 0xffffdc72 @ 0x21d2194
.word 0x21d219d @ 0x21d2198
.thumb
Function_21d219c: @ 21d219c :thumb
	push    {r4-r6,lr}
	add     sp, #-0x8
	mov     r5, r1
	ldr     r1, [r5, #0x38]
	mov     r6, r0
	mov     r0, r5
	bl      Function_21d2114
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r5, #0x38]
	add     r0, #0x10
	bl      Function_21d2114
	mov     r0, r5
	ldr     r1, [r5, #0x38]
	add     r0, #0x20
	bl      Function_21d2114
	ldr     r1, [r5, #0x0]
	add     r0, sp, #0x0
	strh    r1, [r0, #0x0]
	mov     r1, #0x0
	strh    r1, [r0, #0x2]
	strh    r1, [r0, #0x4]
	ldr     r1, [r5, #0x30]
	add     r0, sp, #0x0
	bl      0x20209d4
	ldr     r0, [r5, #0x10]
	ldr     r1, [r5, #0x30]
	bl      0x2020a50
	ldr     r1, [r5, #0x20]
	ldr     r0, [r5, #0x34]
	str     r1, [r0, #0x8]
	ldr     r0, [r5, #0x38]
	.hword  0x1c40 @ add r0, r0, #0x1
	str     r0, [r5, #0x38]
	cmp     r4, #0x1
	bne     branch_21d21fc
	mov     r0, r6
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r5, #0x40]
	mov     r0, #0x1
	str     r0, [r5, #0x3c]
.thumb
branch_21d21fc: @ 21d21fc :thumb
	add     sp, #0x8
	pop     {r4-r6,pc}
@ 0x21d2200

.thumb
Function_21d2200: @ 21d2200 :thumb
	ldr     r0, [r0, #0x3c]
	bx      lr
@ 0x21d2204

.thumb
Function_21d2204: @ 21d2204 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r6, r2
	mov     r2, #0xa
	mov     r5, r0
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	mov     r0, #0x7a
	mov     r4, r1
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x52
	mov     r3, #0x0
	bl      0x200985c
	str     r0, [r4, #0x4]
	bl      0x200a3dc
	ldr     r0, [r4, #0x4]
	bl      0x2009d4c
	mov     r2, #0xb
	str     r2, [sp, #0x0]
	mov     r0, #0x1
	str     r0, [sp, #0x4]
	str     r0, [sp, #0x8]
	mov     r0, #0x7b
	str     r6, [sp, #0xc]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x52
	mov     r3, #0x0
	bl      0x20098b8
	str     r0, [r4, #0x8]
	bl      0x200a640
	ldr     r0, [r4, #0x8]
	bl      0x2009d4c
	mov     r2, #0xc
	str     r2, [sp, #0x0]
	mov     r0, #0x2
	str     r0, [sp, #0x4]
	mov     r0, #0x1f
	str     r6, [sp, #0x8]
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	mov     r1, #0x52
	mov     r3, #0x0
	bl      0x2009918
	str     r0, [r4, #0xc]
	mov     r2, #0xd
	str     r2, [sp, #0x0]
	mov     r0, #0x3
	str     r0, [sp, #0x4]
	mov     r0, #0x7d
	str     r6, [sp, #0x8]
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	mov     r1, #0x52
	mov     r3, #0x0
	bl      0x2009918
	str     r0, [r4, #0x10]
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2290

.thumb
Function_21d2290: @ 21d2290 :thumb
	push    {r3-r5,lr}
	mov     r4, r1
	mov     r5, r0
	ldr     r0, [r4, #0x4]
	bl      0x200a4e4
	ldr     r0, [r4, #0x8]
	bl      0x200a6dc
	mov     r0, #0x7a
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x4]
	bl      0x2009d68
	mov     r0, #0x7b
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x8]
	bl      0x2009d68
	mov     r0, #0x1f
	lsl     r0, r0, #4
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0xc]
	bl      0x2009d68
	mov     r0, #0x7d
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	ldr     r1, [r4, #0x10]
	bl      0x2009d68
	pop     {r3-r5,pc}
@ 0x21d22d4

.thumb
Function_21d22d4: @ 21d22d4 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x70
	mov     r5, r0
	mov     r0, #0xd
	str     r0, [sp, #0x0]
	sub     r0, #0xe
	str     r0, [sp, #0x4]
	mov     r6, r2
	str     r0, [sp, #0x8]
	mov     r0, #0x0
	mov     r2, #0x7a
	mov     r4, r1
	str     r0, [sp, #0xc]
	mov     r1, #0x1
	lsl     r2, r2, #2
	str     r1, [sp, #0x10]
	ldr     r1, [r5, r2]
	mov     r3, #0xc
	str     r1, [sp, #0x14]
	add     r1, r2, #0x4
	ldr     r1, [r5, r1]
	str     r1, [sp, #0x18]
	mov     r1, r2
	add     r1, #0x8
	ldr     r1, [r5, r1]
	add     r2, #0xc
	str     r1, [sp, #0x1c]
	ldr     r1, [r5, r2]
	mov     r2, #0xb
	str     r1, [sp, #0x20]
	str     r0, [sp, #0x24]
	str     r0, [sp, #0x28]
	add     r0, sp, #0x4c
	mov     r1, #0xa
	bl      0x20093b4
	mov     r0, #0x79
	lsl     r0, r0, #2
	ldr     r0, [r5, r0]
	str     r0, [sp, #0x2c]
	add     r0, sp, #0x4c
	str     r0, [sp, #0x30]
	mov     r0, #0x20
	str     r0, [sp, #0x40]
	mov     r0, #0x1
	str     r0, [sp, #0x44]
	mov     r0, #0x0
	str     r0, [sp, #0x34]
	str     r0, [sp, #0x38]
	add     r0, sp, #0x2c
	str     r6, [sp, #0x48]
	bl      0x2021b90
	mov     r1, #0x0
	str     r0, [r4, #0x0]
	bl      0x2021cac
	mov     r0, #0x0
	str     r0, [r4, #0x1c]
	str     r0, [r4, #0x20]
	add     sp, #0x70
	pop     {r4-r6,pc}
@ 0x21d2350

.thumb
Function_21d2350: @ 21d2350 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2358, (=0x2021bd5)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d2356


.align 2


.word 0x2021bd5 @ 0x21d2358
.thumb
Function_21d235c: @ 21d235c :thumb
	mov     r3, #0x0
	str     r3, [r0, #0x0]
	str     r1, [r0, #0x4]
	str     r2, [r0, #0x8]
	str     r3, [r0, #0xc]
	bx      lr
@ 0x21d2368

.thumb
Function_21d2368: @ 21d2368 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r1, [r4, #0xc]
	ldr     r0, [pc, #0x40] @ 0x21d23b0, (=0xffff)
	mul     r0, r1
	ldr     r1, [r4, #0x8]
	blx     0x20e1f6c
	lsl     r0, r0, #16
	lsr     r0, r0, #16
	asr     r0, r0, #4
	lsl     r1, r0, #2
	ldr     r0, [pc, #0x30] @ 0x21d23b4, (=0x20f983c)
	ldr     r2, [r4, #0x4]
	ldsh    r0, [r0, r1]
	asr     r3, r2, #31
	asr     r1, r0, #31
	blx     _ll_mul
	mov     r2, #0x2
	mov     r3, #0x0
	lsl     r2, r2, #10
	add     r2, r0, r2
	adc     r1, r3
	lsl     r0, r1, #20
	lsr     r1, r2, #12
	orr     r1, r0
	str     r1, [r4, #0x0]
	ldr     r0, [r4, #0xc]
	ldr     r1, [r4, #0x8]
	.hword  0x1c40 @ add r0, r0, #0x1
	blx     0x20e1f6c
	str     r1, [r4, #0xc]
	pop     {r4,pc}
@ 0x21d23ae


.align 2


.word 0xffff @ 0x21d23b0
.word 0x20f983c @ 0x21d23b4
.thumb
Function_21d23b8: @ 21d23b8 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_21d23c6
	bl      0x2022974
.thumb
branch_21d23c6: @ 21d23c6 :thumb
	mov     r0, r4
	mov     r1, #0x2
	add     r0, #0x2c
	lsl     r1, r1, #14
	mov     r2, #0x20
	bl      Function_21d235c
	ldr     r0, [pc, #0xc] @ 0x21d23e4, (=0x21d23e9)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x28]
	pop     {r4,pc}
@ 0x21d23e2


.align 2


.word 0x21d23e9 @ 0x21d23e4
.thumb
Function_21d23e8: @ 21d23e8 :thumb
	push    {r4,r5,lr}
	add     sp, #-0xc
	mov     r4, r1
	mov     r0, r4
	add     r0, #0x2c
	bl      Function_21d2368
	mov     r5, r4
	add     r5, #0x1c
	add     r3, sp, #0x0
	ldmia   r5!, {r0,r1}
	mov     r2, r3
	stmia   r3!, {r0,r1}
	ldr     r0, [r5, #0x0]
	str     r0, [r3, #0x0]
	ldr     r1, [sp, #0x4]
	ldr     r0, [r4, #0x2c]
	add     r0, r1, r0
	str     r0, [sp, #0x4]
	ldr     r0, [r4, #0x0]
	mov     r1, r2
	bl      0x2021c50
	add     sp, #0xc
	pop     {r4,r5,pc}
@ 0x21d241a


.align 2, 0


.thumb
Function_21d241c: @ 21d241c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x28]
	cmp     r0, #0x0
	beq     branch_21d242e
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r4, #0x28]
.thumb
branch_21d242e: @ 21d242e :thumb
	pop     {r4,pc}
@ 0x21d2430

.thumb
Function_21d2430: @ 21d2430 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2438, (=0x2021cad)
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d2436


.align 2


.word 0x2021cad @ 0x21d2438
.thumb
Function_21d243c: @ 21d243c :thumb
	lsl     r1, r1, #12
	str     r1, [r0, #0x1c]
	lsl     r1, r2, #12
	str     r1, [r0, #0x20]
	bx      lr
@ 0x21d2446


.align 2, 0


.thumb
Function_21d2448: @ 21d2448 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x38
	mov     r5, r0
	mov     r3, r5
	mov     r6, r2
	mov     r4, r1
	mov     r0, #0x52
	mov     r1, #0xe
	mov     r2, #0x0
	add     r3, #0x14
	str     r6, [sp, #0x0]
	bl      0x2006f50
	mov     r2, r5
	str     r0, [r5, #0xc]
	mov     r0, #0x52
	mov     r1, #0xf
	add     r2, #0x18
	mov     r3, r6
	bl      0x2006f88
	str     r0, [r5, #0x10]
	ldr     r0, [pc, #0x64] @ 0x21d24dc, (=0x64c)
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x4]
	ldr     r0, [r5, #0x14]
	str     r0, [sp, #0x8]
	add     r0, sp, #0x4
	bl      0x2015128
	str     r0, [r5, #0x0]
	ldr     r0, [pc, #0x54] @ 0x21d24dc, (=0x64c)
	ldr     r0, [r4, r0]
	str     r0, [sp, #0x2c]
	ldr     r0, [r5, #0x18]
	str     r0, [sp, #0x30]
	mov     r0, #0x1
	str     r0, [sp, #0x34]
	add     r0, sp, #0x2c
	bl      0x20151a4
	str     r0, [r5, #0x4]
	ldr     r0, [pc, #0x3c] @ 0x21d24dc, (=0x64c)
	mov     r2, #0x0
	ldr     r0, [r4, r0]
	mov     r1, #0x1f
	str     r0, [sp, #0xc]
	ldr     r0, [r5, #0x0]
	str     r0, [sp, #0x10]
	ldr     r0, [r5, #0x4]
	str     r0, [sp, #0x14]
	add     r0, sp, #0x4
	strh    r2, [r0, #0x14]
	strh    r2, [r0, #0x16]
	strh    r2, [r0, #0x18]
	str     r1, [sp, #0x20]
	ldr     r1, [pc, #0x24] @ 0x21d24e0, (=0x3fe)
	str     r1, [sp, #0x24]
	strh    r2, [r0, #0x24]
	add     r0, sp, #0xc
	bl      0x2015214
	str     r0, [r5, #0x8]
	mov     r1, #0x0
	bl      0x2015240
	mov     r1, #0x40
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	bl      0x2015268
	add     sp, #0x38
	pop     {r4-r6,pc}
@ 0x21d24da


.align 2


.word 0x64c @ 0x21d24dc
.word 0x3fe @ 0x21d24e0
.thumb
Function_21d24e4: @ 21d24e4 :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x8]
	bl      0x2015238
	ldr     r0, [r4, #0x0]
	bl      0x2015164
	ldr     r0, [r4, #0x4]
	bl      0x20151d4
	ldr     r0, [r4, #0xc]
	bl      free
	ldr     r0, [r4, #0x10]
	bl      free
	pop     {r4,pc}
@ 0x21d2508

.thumb
Function_21d2508: @ 21d2508 :thumb
	ldr     r3, [pc, #0x4] @ 0x21d2510, (=0x2015241)
	ldr     r0, [r0, #0x8]
	bx      r3
@ 0x21d250e


.align 2


.word 0x2015241 @ 0x21d2510
.thumb
Function_21d2514: @ 21d2514 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_21d2528
	bl      0x2022974
.thumb
branch_21d2528: @ 21d2528 :thumb
	ldr     r4, [sp, #0x24]
	mov     r0, r5
	add     r0, #0x1c
	mov     r1, r6
	mov     r2, r7
	mov     r3, r4
	bl      Function_21d2108
	mov     r0, r5
	ldr     r1, [sp, #0x0]
	ldr     r2, [sp, #0x18]
	add     r0, #0x2c
	mov     r3, r4
	bl      Function_21d2108
	mov     r0, r5
	ldr     r1, [sp, #0x1c]
	ldr     r2, [sp, #0x20]
	add     r0, #0x3c
	mov     r3, r4
	bl      Function_21d2108
	mov     r2, #0x0
	str     r2, [r5, #0x4c]
	mov     r0, #0x1
	str     r0, [r5, #0x50]
	ldr     r0, [pc, #0x8] @ 0x21d2568, (=0x21d25a1)
	mov     r1, r5
	bl      0x200d9e8
	str     r0, [r5, #0x54]
	pop     {r3-r7,pc}
@ 0x21d2568

.word 0x21d25a1 @ 0x21d2568
.thumb
Function_21d256c: @ 21d256c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x54]
	cmp     r0, #0x0
	beq     branch_21d257a
	bl      0x2022974
.thumb
branch_21d257a: @ 21d257a :thumb
	mov     r0, #0x1
	mvn     r0, r0
	str     r0, [r4, #0x50]
	ldr     r1, [r4, #0x28]
	ldr     r0, [r4, #0x4c]
	cmp     r0, r1
	blt     branch_21d258e
	ldr     r0, [r4, #0x50]
	add     r0, r1, r0
	str     r0, [r4, #0x4c]
.thumb
branch_21d258e: @ 21d258e :thumb
	ldr     r0, [pc, #0xc] @ 0x21d259c, (=0x21d25a1)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x54]
	pop     {r4,pc}
@ 0x21d259c

.word 0x21d25a1 @ 0x21d259c
.thumb
Function_21d25a0: @ 21d25a0 :thumb
	push    {r4-r6,lr}
	mov     r5, r1
	mov     r6, r0
	mov     r0, r5
	ldr     r1, [r5, #0x4c]
	add     r0, #0x1c
	bl      Function_21d2114
	mov     r4, r0
	mov     r0, r5
	ldr     r1, [r5, #0x4c]
	add     r0, #0x2c
	bl      Function_21d2114
	mov     r0, r5
	ldr     r1, [r5, #0x4c]
	add     r0, #0x3c
	bl      Function_21d2114
	mov     r2, #0x1
	ldr     r1, [r5, #0x1c]
	lsl     r2, r2, #18
	sub     r1, r1, r2
	ldr     r3, [r5, #0x2c]
	lsl     r1, r1, #4
	sub     r2, r3, r2
	lsl     r2, r2, #4
	ldr     r0, [r5, #0x8]
	asr     r1, r1, #16
	asr     r2, r2, #16
	bl      0x2015254
	ldr     r1, [r5, #0x3c]
	ldr     r0, [r5, #0x8]
	mov     r2, r1
	bl      0x2015270
	cmp     r4, #0x1
	beq     branch_21d25f4
	ldr     r0, [r5, #0x4c]
	cmp     r0, #0x0
	bge     branch_21d25fe
.thumb
branch_21d25f4: @ 21d25f4 :thumb
	mov     r0, r6
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r5, #0x54]
.thumb
branch_21d25fe: @ 21d25fe :thumb
	ldr     r1, [r5, #0x4c]
	ldr     r0, [r5, #0x50]
	add     r0, r1, r0
	str     r0, [r5, #0x4c]
	pop     {r4-r6,pc}
@ 0x21d2608

.thumb
Function_21d2608: @ 21d2608 :thumb
	ldr     r0, [r0, #0x54]
	cmp     r0, #0x0
	bne     branch_21d2612
	mov     r0, #0x1
	bx      lr
@ 0x21d2612

.thumb
branch_21d2612: @ 21d2612 :thumb
	mov     r0, #0x0
	bx      lr
@ 0x21d2616


.align 2, 0


.thumb
Function_21d2618: @ 21d2618 :thumb
	push    {r3-r6,lr}
	add     sp, #-0x14
	mov     r5, r0
	ldr     r0, [r5, #0x54]
	mov     r2, #0x1
	lsl     r0, r0, #3
	add     r1, r5, r0
	ldr     r0, [r1, #0x7c]
	add     r1, #0x80
	lsl     r6, r0, #12
	ldr     r0, [r1, #0x0]
	ldr     r1, [pc, #0x54] @ 0x21d2684, (=0x666)
	add     r0, #0x30
	lsl     r4, r0, #12
	mov     r0, #0x6
	lsl     r0, r0, #16
	str     r0, [sp, #0x0]
	str     r1, [sp, #0x4]
	lsl     r2, r2, #12
	str     r2, [sp, #0x8]
	mov     r0, #0x6
	sub     r1, #0x16
	str     r0, [sp, #0xc]
	add     r0, r5, r1
	mov     r1, r6
	lsl     r2, r2, #7
	mov     r3, r4
	bl      Function_21d2514
	mov     r0, #0x6
	mov     r3, #0x1
	mov     r1, #0x21
	str     r4, [sp, #0x0]
	lsl     r0, r0, #16
	str     r0, [sp, #0x4]
	ldr     r0, [pc, #0x24] @ 0x21d2684, (=0x666)
	lsl     r3, r3, #12
	str     r0, [sp, #0x8]
	str     r3, [sp, #0xc]
	mov     r0, #0x6
	str     r0, [sp, #0x10]
	ldr     r2, [r5, #0x54]
	lsl     r1, r1, #4
	lsl     r2, r2, #2
	add     r0, r5, r1
	add     r2, r5, r2
	sub     r1, #0xc
	ldr     r1, [r2, r1]
	mov     r2, r6
	lsl     r3, r3, #7
	bl      Function_21d26b4
	add     sp, #0x14
	pop     {r3-r6,pc}
@ 0x21d2684

.word 0x666 @ 0x21d2684
.thumb
Function_21d2688: @ 21d2688 :thumb
	push    {r4,lr}
	mov     r4, r0
	mov     r0, #0x65
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d256c
	mov     r0, #0x21
	lsl     r0, r0, #4
	add     r0, r4, r0
	bl      Function_21d270c
	pop     {r4,pc}
@ 0x21d26a2


.align 2, 0


.thumb
Function_21d26a4: @ 21d26a4 :thumb
	mov     r1, #0x65
	lsl     r1, r1, #4
	ldr     r3, [pc, #0x4] @ 0x21d26b0, (=0x21d2609)
	add     r0, r0, r1
	bx      r3
@ 0x21d26ae


.align 2


.word Function_21d2608+1 @ =0x21d2609, 0x21d26b0
.thumb
Function_21d26b4: @ 21d26b4 :thumb
	push    {r3-r7,lr}
	mov     r5, r0
	ldr     r0, [r5, #0x3c]
	mov     r6, r1
	mov     r7, r2
	str     r3, [sp, #0x0]
	cmp     r0, #0x0
	beq     branch_21d26c8
	bl      0x2022974
.thumb
branch_21d26c8: @ 21d26c8 :thumb
	ldr     r4, [sp, #0x28]
	ldr     r2, [sp, #0x0]
	add     r0, r5, #0x4
	mov     r1, r7
	mov     r3, r4
	bl      Function_21d2108
	mov     r0, r5
	ldr     r1, [sp, #0x18]
	ldr     r2, [sp, #0x1c]
	add     r0, #0x14
	mov     r3, r4
	bl      Function_21d2108
	mov     r0, r5
	ldr     r1, [sp, #0x20]
	ldr     r2, [sp, #0x24]
	add     r0, #0x24
	mov     r3, r4
	bl      Function_21d2108
	str     r6, [r5, #0x0]
	mov     r2, #0x0
	str     r2, [r5, #0x34]
	mov     r0, #0x1
	str     r0, [r5, #0x38]
	ldr     r0, [pc, #0x8] @ 0x21d2708, (=0x21d2741)
	mov     r1, r5
	bl      0x200d9e8
	str     r0, [r5, #0x3c]
	pop     {r3-r7,pc}
@ 0x21d2708

.word 0x21d2741 @ 0x21d2708
.thumb
Function_21d270c: @ 21d270c :thumb
	push    {r4,lr}
	mov     r4, r0
	ldr     r0, [r4, #0x3c]
	cmp     r0, #0x0
	beq     branch_21d271a
	bl      0x2022974
.thumb
branch_21d271a: @ 21d271a :thumb
	mov     r0, #0x1
	mvn     r0, r0
	str     r0, [r4, #0x38]
	ldr     r1, [r4, #0x10]
	ldr     r0, [r4, #0x34]
	cmp     r0, r1
	blt     branch_21d272e
	ldr     r0, [r4, #0x38]
	add     r0, r1, r0
	str     r0, [r4, #0x34]
.thumb
branch_21d272e: @ 21d272e :thumb
	ldr     r0, [pc, #0xc] @ 0x21d273c, (=0x21d2741)
	mov     r1, r4
	mov     r2, #0x0
	bl      0x200d9e8
	str     r0, [r4, #0x3c]
	pop     {r4,pc}
@ 0x21d273c

.word 0x21d2741 @ 0x21d273c
.thumb
Function_21d2740: @ 21d2740 :thumb
	push    {r3-r7,lr}
	mov     r5, r1
	ldr     r1, [r5, #0x34]
	mov     r7, r0
	add     r0, r5, #0x4
	bl      Function_21d2114
	mov     r6, r0
	mov     r0, r5
	ldr     r1, [r5, #0x34]
	add     r0, #0x14
	bl      Function_21d2114
	mov     r0, r5
	ldr     r1, [r5, #0x34]
	add     r0, #0x24
	bl      Function_21d2114
	ldr     r2, [r5, #0x24]
	asr     r0, r2, #31
	lsr     r1, r2, #12
	lsl     r0, r0, #20
	lsl     r3, r2, #20
	mov     r2, #0x2
	orr     r0, r1
	mov     r1, #0x0
	lsl     r2, r2, #10
	add     r2, r3, r2
	adc     r0, r1
	lsl     r0, r0, #20
	lsr     r2, r2, #12
	orr     r2, r0
	asr     r4, r2, #12
	ldr     r2, [r5, #0x4]
	ldr     r0, [r5, #0x0]
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r2, [r5, #0x14]
	ldr     r0, [r5, #0x0]
	mov     r1, #0x1
	asr     r2, r2, #12
	bl      0x2007dec
	ldr     r0, [r5, #0x0]
	mov     r1, #0xc
	mov     r2, r4
	bl      0x2007dec
	ldr     r0, [r5, #0x0]
	mov     r1, #0xd
	mov     r2, r4
	bl      0x2007dec
	cmp     r6, #0x1
	beq     branch_21d27b6
	ldr     r0, [r5, #0x34]
	cmp     r0, #0x0
	bge     branch_21d27c0
.thumb
branch_21d27b6: @ 21d27b6 :thumb
	mov     r0, r7
	bl      Function_200da58
	mov     r0, #0x0
	str     r0, [r5, #0x3c]
.thumb
branch_21d27c0: @ 21d27c0 :thumb
	ldr     r1, [r5, #0x34]
	ldr     r0, [r5, #0x38]
	add     r0, r1, r0
	str     r0, [r5, #0x34]
	pop     {r3-r7,pc}
@ 0x21d27ca


.align 2, 0


.thumb
Function_21d27cc: @ 21d27cc :thumb
	push    {r3-r7,lr}
	add     sp, #-0x20
	str     r0, [sp, #0x14]
	mov     r0, #0x20
	str     r0, [sp, #0x0]
	mov     r0, r1
	str     r1, [sp, #0x18]
	str     r0, [sp, #0x4]
	mov     r0, #0x52
	mov     r1, #0x11
	mov     r2, #0x0
	mov     r3, #0xa0
	bl      0x2006e84
	ldr     r5, [sp, #0x14]
	mov     r4, #0x0
	mov     r6, #0x1
.thumb
branch_21d27ee: @ 21d27ee :thumb
	ldr     r0, [sp, #0x18]
	mov     r1, #0x1
	bl      0x201a778
	mov     r1, r5
	add     r1, #0x9c
	str     r0, [r1, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      0x201a7a0
	cmp     r4, #0x0
	beq     branch_21d2814
	cmp     r4, #0x1
	beq     branch_21d281c
	cmp     r4, #0x2
	beq     branch_21d2824
	b       branch_21d282a
@ 0x21d2814

.thumb
branch_21d2814: @ 21d2814 :thumb
	mov     r0, #0xc
	str     r0, [sp, #0x1c]
	mov     r7, #0x4
	b       branch_21d282a
@ 0x21d281c

.thumb
branch_21d281c: @ 21d281c :thumb
	mov     r0, #0x4
	str     r0, [sp, #0x1c]
	mov     r7, #0xe
	b       branch_21d282a
@ 0x21d2824

.thumb
branch_21d2824: @ 21d2824 :thumb
	mov     r0, #0x14
	str     r0, [sp, #0x1c]
	mov     r7, #0xd
.thumb
branch_21d282a: @ 21d282a :thumb
	lsl     r0, r7, #24
	lsr     r0, r0, #24
	str     r0, [sp, #0x0]
	mov     r0, #0xb
	str     r0, [sp, #0x4]
	mov     r0, #0x4
	str     r0, [sp, #0x8]
	mov     r0, #0x5
	str     r0, [sp, #0xc]
	lsl     r0, r6, #16
	lsr     r0, r0, #16
	str     r0, [sp, #0x10]
	ldr     r0, [sp, #0x14]
	mov     r1, r5
	ldr     r3, [sp, #0x1c]
	add     r0, #0x94
	add     r1, #0x9c
	lsl     r3, r3, #24
	ldr     r0, [r0, #0x0]
	ldr     r1, [r1, #0x0]
	mov     r2, #0x3
	lsr     r3, r3, #24
	bl      0x201a7e8
	ldr     r0, [pc, #0x24] @ 0x21d2880, (=0x1020a)
	mov     r2, #0x5a
	str     r0, [sp, #0x0]
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	ldr     r1, [sp, #0x18]
	lsl     r2, r2, #2
	add     r3, r4, #0x4
	bl      Function_21d28a8
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	add     r6, #0x40
	cmp     r4, #0x3
	blt     branch_21d27ee
	add     sp, #0x20
	pop     {r3-r7,pc}
@ 0x21d287e


.align 2


.word 0x1020a @ 0x21d2880
.thumb
Function_21d2884: @ 21d2884 :thumb
	push    {r3-r5,lr}
	mov     r5, r0
	mov     r4, #0x0
.thumb
branch_21d288a: @ 21d288a :thumb
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      Function_201a8fc
	mov     r0, r5
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bl      free
	.hword  0x1c64 @ add r4, r4, #0x1
	.hword  0x1d2d @ add r5, r5, #0x4
	cmp     r4, #0x3
	blt     branch_21d288a
	pop     {r3-r5,pc}
@ 0x21d28a8

.thumb
Function_21d28a8: @ 21d28a8 :thumb
	push    {r4-r6,lr}
	add     sp, #-0x10
	mov     r4, r1
	mov     r5, r0
	mov     r6, r3
	mov     r0, #0x0
	mov     r1, #0x1a
	mov     r3, r4
	bl      Function_200b144
	mov     r4, r0
	bne     branch_21d28c4
	bl      0x2022974
.thumb
branch_21d28c4: @ 21d28c4 :thumb
	mov     r0, r4
	mov     r1, r6
	bl      Function_200b1ec
	ldr     r1, [sp, #0x20]
	mov     r6, r0
	lsl     r1, r1, #24
	mov     r0, r5
	lsr     r1, r1, #24
	bl      Function_201ada4
	mov     r1, #0x0
	str     r1, [sp, #0x0]
	mov     r0, #0xff
	str     r0, [sp, #0x4]
	ldr     r0, [sp, #0x20]
	mov     r2, r6
	str     r0, [sp, #0x8]
	mov     r0, r5
	mov     r3, #0x1
	str     r1, [sp, #0xc]
	bl      0x201d78c
	mov     r0, r6
	bl      Function_20237bc
	mov     r0, r4
	bl      Function_200b190
	add     sp, #0x10
	pop     {r4-r6,pc}
@ 0x21d2902


.align 2, 0


.thumb
Function_21d2904: @ 21d2904 :thumb
	mov     r1, r0
	add     r1, #0xa8
	ldr     r1, [r1, #0x0]
	ldr     r3, [pc, #0xc] @ 0x21d2918, (=0x201acf5)
	lsl     r1, r1, #2
	add     r0, r0, r1
	add     r0, #0x9c
	ldr     r0, [r0, #0x0]
	bx      r3
@ 0x21d2916


.align 2


.word 0x201acf5 @ 0x21d2918
.thumb
Function_21d291c: @ 21d291c :thumb
	push    {r3,lr}
	cmp     r0, #0x0
	beq     branch_21d292c
	cmp     r0, #0x1
	beq     branch_21d2930
	cmp     r0, #0x2
	beq     branch_21d2934
	b       branch_21d2938
@ 0x21d292c

.thumb
branch_21d292c: @ 21d292c :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2940, (=0x183)
	pop     {r3,pc}
@ 0x21d2930

.thumb
branch_21d2930: @ 21d2930 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2944, (=0x186)
	pop     {r3,pc}
@ 0x21d2934

.thumb
branch_21d2934: @ 21d2934 :thumb
	ldr     r0, [pc, #0x10] @ 0x21d2948, (=0x189)
	pop     {r3,pc}

branch_21d2938: @ 21d2938 :thumb
	bl      0x2022974
	mov     r0, #0x0
	pop     {r3,pc}
@ 0x21d2940

.word 0x183 @ 0x21d2940
.word 0x186 @ 0x21d2944
.word 0x189 @ 0x21d2948



Unknown_21d294c: @ 0x21d294c
.incbin "./baserom/overlay/overlay_0078.bin", 0x1bcc, 0x21d2a00 - 0x21d294c


@end 0x21d2a00




